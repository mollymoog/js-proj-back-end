#js-project back end

- [Front End](https://github.com/mollymoog/js-proj-front-end.git)

structure:

family has_many free_trials
free_trial belongs_to family

family
-name
-email
-phone

free_trial
-service
-URL
-username
-password
-expiration date (- 48hrs)
-active?
-family_id
