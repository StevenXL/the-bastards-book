# The Bastards Book of Ruby
Source: [The Bastards Book of Ruby](ruby.bastardsbook.com)

## The Fundamentals
### Installation
#### Troubleshooting

When I get coding errors, the best thing to try is to enter the **non-specific errors terms** into [Google](www.google.com).

### Tweet Fetching
If coding is not going to be my full-time job, then it is very important to start thinking about what I want to **make or do**. Coding is not supposed to be an intellectual excercise. It is supposed to serve my real-life goals. 

**Note:** Look at code in `intro_tweet_fetch.rb` file.

#### Writing and Reading to Files
For the examples below, I need to make sure to include the *open-uri* library through `require 'open-uri'`.

* **Reading a Remote Webpage**: `open(remote_full_url).read`
* **Creating a New File on Disk**: `local_file = open(file_name, "w")`
  * Note that that the second argument to the Kernel#open method determines which *mode* the file is opened in. 
  * The most common modes are "r" for *reading*, "w" for *writing* (this will delete an existing file with the same name), "a" for *append*, which will write to the end of an existing file, or create a new file if an existing file is not present.  
* **Writing to a File on Disk**: `local_file.write(data)`
* **Closing / Saving to a File on Disk**: `local_file.close`

Note that *whitespaace* in Ruby *almost never* has an effect on the code.

#### Batch Downloader
Please look at the file `batch_download.rb` - it contains the source code for the batch downloader. 

#### Gemsets
In this part of the tutorial, I am going to download a gem called **crack**. 
I want to install this gem into a project-specific gemset, so I took the following steps:
* **Create a New Gemset**: Use `rvm use ruby-2.2.0@bastards_book --create` as an example
* **Create Hidden Files**: These hidden files (`.ruby-gemset` and `.ruby-version`) will allow me to automatically switch to the appropriate gemset when I enter the directory
* **Install the gem**: `gem install crack`

#### The Crack Gem
What the **crack** gem does is convert XML into a hash. 
For example, the XML code:

```
<?xml version="1.0" encoding="UTF-8"?>
<person>
  <first_name>Tim</first_name>
  <last_name>Berners-Lee</last_name>  
</person>
```

Becomes:

```
{"person"=> {
    "last_name"=>"Berners-Lee", "first_name"=>"Tim"}
}
```

The one intricacy to the crack gem is that it also converts XML into arrays. This happens when there is more than one "item" with the same tags at the same level. For example, the following XML has two "person" tags at the same level. 

```
<?xml version="1.0" encoding="UTF-8"?>
<people>
    <person>
      <first_name>Tim</first_name>
      <last_name>Berners-Lee</last_name>  
    </person>  
    <person>
      <first_name>Robert</first_name>
      <last_name>Cailliau</last_name>  
    </person>  
</people>
```

The **crack** gem will create an array to hold each person, and I will need to specify which person I want to access: `puts parsed_xml['people']['person'][0]['first_name']`

# CURRENTLY AT  http://ruby.bastardsbook.com/chapters/intro_tweet_fetch/
# INTRODUCTION TO THE ARRAY
