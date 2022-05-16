Deface::Override.new(
  virtual_path:  'spree/checkout/edit',
  name:          'checkout_edit_accept_terms',
  insert_before: 'div.checkout-summary-container.position-sticky div[data-hook=buttons]',
  text: <<-HTML

            <% if @order.state == 'payment' %>
              <div style="width: 80%; margin: 0 auto">
                <%= label_tag 'accept_terms' do %>
                  <%= check_box_tag 'accept_terms' %>
                  <%= Spree.t(:payment_terms_label) %>
                  <% if payment_terms_page = current_store.cms_pages.find_by(code: 'terms-and-conditions', locale: I18n.locale) %>
                    <%= link_to Spree.t(:payment_terms_link_text), page_path(payment_terms_page.slug, locale: I18n.locale), target: '_blank' %>.
                  <% end %>
                <% end %>
                
                <div id="accept_terms_error" class="alert alert-danger justify-content-center mb-0 d-none">
                  <%= Spree.t(:must_accept_terms) %>
                </div>
              </div>
            <% end %>

        HTML
)
