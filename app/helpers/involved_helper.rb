module InvolvedHelper 
    # Returns the full title on a per-page basis.
    def full_title(page_title = '')
        base_title = "INvolved | Be heard!"
        if page_title.empty?
            base_title
        else
            if page_title == "Signup! | Be heard!"
                page_title
            else
                
                page_title + " | " + "INvolved"
            end    
        end
    end
end
