load("output.rda")

answer <- address

if (identical(digest::sha1(answer), "447b61d4bf45f6d4da6467ffeccd336544538889")) {
  message("The answer is correct!!!")
  quit(status = 0)
} else {
  message("The answer is wrong, try again.")
  message(paste("##", digest::sha1(answer), "##"))
  quit(status = 1)
}
