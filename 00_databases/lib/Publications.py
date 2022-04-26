class Publication(object):
    # Class describing the different publications
    def __init__(self, title, authors = None, doi = None, abstract = None, identifyer = None):
        self.title = title
        self.authors = authors
        self.doi = doi
        self.abstract = abstract
        self.identifyer = identifyer
        
    def get_title(self):
        return self.title
    
    def get_abstract(self):
        return self.abstract
    
    def get_doi(self):
        if self.doi != None:
            return self.doi
        else:
            return "No DOI"
    
    def get_identifyer(self):
        if self.identifyer != None:
            return self.identifyer
        elif self.doi != None:
            return self.doi

    def to_html(self):
    # Return information in html-format

        # DOI
        try:
            doi = "<p><a href=\"https://doi.org/" + \
                  self.doi + \
                  "\">" + \
                  "doi:" + \
                  self.doi + \
                  "</a></p>" + \
                  "\n"
        except:
            doi = "<p>No DOI</p>"

        # Identifyer
        try:
            identifyer = f"<p><a href={self.identifyer}>{self.identifyer}</a></p>"
        except:
            identifyer = "<p>No Identifyer</p>"


        return f"<h1>{self.title}</h1>\n{doi}\n{identifyer}\n<p>{self.abstract}</p>"


    def __str__(self):
        return self.title + "\n" + self.get_doi() + "\n" + str(self.identifyer) + "\n" + self.abstract
    
    def __hash__(self):
        return hash(self.title)
    
    def __eq__(self, other):
        return self.title == other.title
    