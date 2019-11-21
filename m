Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 047BE105D17
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 00:16:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UotIEss0PkYD6qI74+S9AxytdtZYZ3ZAHvVJtMRoGh4=; b=B7UTje64ObAb8J
	c8pAxjMlXveglNXwo/xn5WXXEcBU8LoW/x0i6j7mDxO4L4DfypysL9779rgRl2Ywq75I9c9+aYeOK
	biKG8FwSJM6PDCYv/2iH9/xcqODkYT9DcPoNnyJbB0o1AK4aTpG/ZdMS9u265G80Mm8eo2JCSdXVH
	d1wBu7oNG0Hzo2aYAdsbGyPwsuEp6Z/nDvoET3RVPfBLTo5wVS0nG6hL2ht72EPIWu/JWREosWKji
	+uWV4/djhnnaFWGeLpl1Dhhv80j6xLq+2b9PTxXTQt1qecIaj6tWfIZAZeMVyN4cHwYyvl2zFktgC
	tANXAtCwPUPcSJjlnR2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXvgj-0005HM-I4; Thu, 21 Nov 2019 23:16:37 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXvgZ-0005Gx-2W
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 23:16:29 +0000
Received: by mail-pf1-x442.google.com with SMTP id 193so2505908pfc.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 Nov 2019 15:16:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=8sWPzcCwJjLfWeGoew09hehB2qcRrNVbdZlAGvSzZ/4=;
 b=RLW2Z2ol/mCAxqaWtd7Zi/Y7HonJe7Yg/sTnXVvWkTPLtR8+wdOhbP+fQkwEJxMM5q
 wZCt7iop3j3b6nUvhpyEqnnXI3O3XJyNgnqqS7t0oYwfD6bLjKyKFZkqcn1lU7ayyAbw
 dDtWqpj4bGgUJmvodg9wj3KF6DbUERwcU22wM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=8sWPzcCwJjLfWeGoew09hehB2qcRrNVbdZlAGvSzZ/4=;
 b=E4hh4oGbiYjqknb8N4Vp2uLO0qQEDBgd75VM4SzVoVoD7LOo7vU0VkH1An/o0tbUtK
 ABESpmtfV1r/UG8Qls87q+0QdqCVRnyvZfNTZHQfHYFognAgcrdfqeJ+NFSpEayX8cPz
 3JbgGh4mXhLTrLwfaG++XeucewnyTwJtr9w51/k0qpEYM50Qn2bc9IlaJ+DUGGQkhuFB
 cNXz4UqpJQmbHsgC7FULIuhReJznOFVrhCLHnbV9BldTs7fti98jDLQig8GJ0fKNhjtV
 /M9Uaobp1UhqJC+M80tpu1TUK3LfoJydr3CAULeRWPzvtDUAugkC4sc0LxK6T3ka9wLo
 ryhA==
X-Gm-Message-State: APjAAAUY1+JD9QECB1czenvZfZyuwsSHGiQnEEDQbS2GCIjHxvjy0LZV
 NRspUBoj44GUgAiB1baPFl6u/w==
X-Google-Smtp-Source: APXvYqzDaN/gUHbALcy0iPAeUp0twk7ht0phtka4mb2z5ujRvgii3zwCv6/WBeA1/7RLRW3MF/Y5AA==
X-Received: by 2002:a62:7553:: with SMTP id q80mr14378924pfc.203.1574378185361; 
 Thu, 21 Nov 2019 15:16:25 -0800 (PST)
Received: from localhost ([2620:15c:202:1:4fff:7a6b:a335:8fde])
 by smtp.gmail.com with ESMTPSA id f10sm4713293pfd.28.2019.11.21.15.16.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 21 Nov 2019 15:16:24 -0800 (PST)
Date: Thu, 21 Nov 2019 15:16:22 -0800
From: Matthias Kaehlcke <mka@chromium.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH RFC 2/2] PM / devfreq: Use PM QoS for sysfs min/max_freq
Message-ID: <20191121231622.GK27773@google.com>
References: <cover.1574179738.git.leonard.crestez@nxp.com>
 <1f567d6478b1782f7f4afc27cb6d3f896d77ac9f.1574179738.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1f567d6478b1782f7f4afc27cb6d3f896d77ac9f.1574179738.git.leonard.crestez@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_151627_119296_1258B203 
X-CRM114-Status: GOOD (  24.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Artur =?utf-8?B?xZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>,
 Jacky Bai <ping.bai@nxp.com>, Saravana Kannan <saravanak@google.com>,
 linux-pm@vger.kernel.org, Viresh Kumar <viresh.kumar@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Krzysztof Kozlowski <krzk@kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>,
 Georgi Djakov <georgi.djakov@linaro.org>, linux-arm-kernel@lists.infradead.org,
 NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Leonard,

this seems to work ok as long as there are no other ('external') PM QoS
requests, however the aggregate max_freq can be incorrect when there are
multiple requests.

I intended to test with devfreq_cooling using PM QoS, but this didn't work
out due to limitations on my development platform. Instead I added another
set of requests and sysfs attributes to devfreq (see patch below).

With this we get:

cat available_frequencies
  180000000 267000000 355000000 430000000 565000000 650000000 800000000

# ok
cat max_freq
  800000000

# wtf???
echo 650000000 > max_freq
cat max_freq
  800000000

# this looks better
echo 800000000 > test_max_freq
cat max_freq
  650000000


The problem appears to be:

#define PM_QOS_MAX_FREQUENCY_DEFAULT_VALUE      (-1)

in include/linux/pm_qos.h (added by "PM / QoS: Restore
DEV_PM_QOS_MIN/MAX_FREQUENCY")

The aggregate value returned by
dev_pm_qos_read_value(dev, DEV_PM_QOS_MAX_FREQUENCY) is the
smallest of all requests, which is PM_QOS_MAX_FREQUENCY_DEFAULT_VALUE
unless all requests have set an actual constraint.

You probably want to change the constant to resolve to S32_MAX or some
other big value.

Cheers

Matthias


diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
index 4e6b3c05b3706f..935098bfadf944 100644
--- a/drivers/devfreq/devfreq.c
+++ b/drivers/devfreq/devfreq.c
@@ -659,6 +659,18 @@ static void devfreq_dev_release(struct device *dev)
                        dev_warn(dev->parent,
                                "Failed to remove min_freq request: %d\n", err);
        }
+       if (dev_pm_qos_request_active(&devfreq->test_max_freq_req)) {
+               err = dev_pm_qos_remove_request(&devfreq->test_max_freq_req);
+               if (err)
+                       dev_warn(dev->parent,
+                               "Failed to remove test_max_freq request: %d\n", err);
+       }
+       if (dev_pm_qos_request_active(&devfreq->test_min_freq_req)) {
+               err = dev_pm_qos_remove_request(&devfreq->test_min_freq_req);
+               if (err)
+                       dev_warn(dev->parent,
+                               "Failed to remove test_min_freq request: %d\n", err);
+       }

        if (devfreq->profile->exit)
                devfreq->profile->exit(devfreq->dev.parent);
@@ -738,6 +750,16 @@ struct devfreq *devfreq_add_device(struct device *dev,
        if (err < 0)
                goto err_dev;

+       err = dev_pm_qos_add_request(dev, &devfreq->test_min_freq_req,
+                                    DEV_PM_QOS_MIN_FREQUENCY, 0);
+       if (err < 0)
+               goto err_dev;
+       err = dev_pm_qos_add_request(dev, &devfreq->test_max_freq_req,
+                                    DEV_PM_QOS_MAX_FREQUENCY,
+                                    PM_QOS_MAX_FREQUENCY_DEFAULT_VALUE);
+       if (err < 0)
+               goto err_dev;
+
        devfreq->suspend_freq = dev_pm_opp_get_suspend_opp_freq(dev);
        devfreq->opp_table = dev_pm_opp_get_opp_table(dev);
        if (IS_ERR(devfreq->opp_table))
@@ -1454,6 +1476,101 @@ static ssize_t max_freq_show(struct device *dev, struct device_attribute *attr,
 }
 static DEVICE_ATTR_RW(max_freq);

+static ssize_t test_min_freq_store(struct device *dev, struct device_attribute *attr,
+                             const char *buf, size_t count)
+{
+       struct devfreq *df = to_devfreq(dev);
+       unsigned long value;
+       int ret;
+
+       /*
+        * Protect against theoretical sysfs writes between
+        * device_add and dev_pm_qos_add_request
+        */
+       if (!dev_pm_qos_request_active(&df->test_min_freq_req))
+               return -EINVAL;
+
+       ret = sscanf(buf, "%lu", &value);
+       if (ret != 1)
+               return -EINVAL;
+
+       /* Round down to kHz for PM QoS */
+       ret = dev_pm_qos_update_request(&df->test_min_freq_req,
+                                       value / HZ_PER_KHZ);
+       if (ret < 0)
+               return ret;
+
+       return count;
+}
+
+static ssize_t test_min_freq_show(struct device *dev, struct device_attribute *attr,
+                            char *buf)
+{
+       struct devfreq *df = to_devfreq(dev);
+       unsigned long min_freq, max_freq;
+
+       mutex_lock(&df->lock);
+       get_freq_range(df, &min_freq, &max_freq);
+       mutex_unlock(&df->lock);
+
+       return sprintf(buf, "%lu\n", min_freq);
+}
+
+static ssize_t test_max_freq_store(struct device *dev, struct device_attribute *attr,
+                             const char *buf, size_t count)
+{
+       struct devfreq *df = to_devfreq(dev);
+       unsigned long value;
+       int ret;
+
+       /*
+        * Protect against theoretical sysfs writes between
+        * device_add and dev_pm_qos_add_request
+        */
+       if (!dev_pm_qos_request_active(&df->test_max_freq_req))
+               return -EINVAL;
+
+       ret = sscanf(buf, "%lu", &value);
+       if (ret != 1)
+               return -EINVAL;
+
+       /*
+        * PM QoS frequencies are in kHz so we need to convert. Convert by
+        * rounding upwards so that the acceptable interval never shrinks.
+        *
+        * For example if the user writes "666666666" to sysfs this value will
+        * be converted to 666667 kHz and back to 666667000 Hz before an OPP
+        * lookup, this ensures that an OPP of 666666666Hz is still accepted.
+        *
+        * A value of zero means "no limit".
+        */
+       if (value)
+               value = DIV_ROUND_UP(value, HZ_PER_KHZ);
+       else
+               value = PM_QOS_MAX_FREQUENCY_DEFAULT_VALUE;
+
+       ret = dev_pm_qos_update_request(&df->test_max_freq_req, value);
+       if (ret < 0)
+               return ret;
+
+       return count;
+}
+static DEVICE_ATTR_RW(test_min_freq);
+
+static ssize_t test_max_freq_show(struct device *dev, struct device_attribute *attr,
+                            char *buf)
+{
+       struct devfreq *df = to_devfreq(dev);
+       unsigned long min_freq, max_freq;
+
+       mutex_lock(&df->lock);
+       get_freq_range(df, &min_freq, &max_freq);
+       mutex_unlock(&df->lock);
+
+       return sprintf(buf, "%lu\n", max_freq);
+}
+static DEVICE_ATTR_RW(test_max_freq);
+
 static ssize_t available_frequencies_show(struct device *d,
                                          struct device_attribute *attr,
                                          char *buf)
@@ -1532,6 +1649,8 @@ static struct attribute *devfreq_attrs[] = {
        &dev_attr_polling_interval.attr,
        &dev_attr_min_freq.attr,
        &dev_attr_max_freq.attr,
+       &dev_attr_test_min_freq.attr,
+       &dev_attr_test_max_freq.attr,
        &dev_attr_trans_stat.attr,
        NULL,
 };
diff --git a/include/linux/devfreq.h b/include/linux/devfreq.h
index 6cdd070d59c1f2..8f97c1efaacca5 100644
--- a/include/linux/devfreq.h
+++ b/include/linux/devfreq.h
@@ -166,6 +166,8 @@ struct devfreq {

        struct dev_pm_qos_request user_min_freq_req;
        struct dev_pm_qos_request user_max_freq_req;
+
+static ssize_t test_max_freq_show(struct device *dev, struct device_attribute *attr,
+                            char *buf)
+{
+       struct devfreq *df = to_devfreq(dev);
+       unsigned long min_freq, max_freq;
+
+       mutex_lock(&df->lock);
+       get_freq_range(df, &min_freq, &max_freq);
+       mutex_unlock(&df->lock);
+
+       return sprintf(buf, "%lu\n", max_freq);
+}
+static DEVICE_ATTR_RW(test_max_freq);
+
 static ssize_t available_frequencies_show(struct device *d,
                                          struct device_attribute *attr,
                                          char *buf)
@@ -1532,6 +1649,8 @@ static struct attribute *devfreq_attrs[] = {
        &dev_attr_polling_interval.attr,
        &dev_attr_min_freq.attr,
        &dev_attr_max_freq.attr,
+       &dev_attr_test_min_freq.attr,
+       &dev_attr_test_max_freq.attr,
        &dev_attr_trans_stat.attr,
        NULL,
 };
diff --git a/include/linux/devfreq.h b/include/linux/devfreq.h
index 6cdd070d59c1f2..8f97c1efaacca5 100644
--- a/include/linux/devfreq.h
+++ b/include/linux/devfreq.h
@@ -166,6 +166,8 @@ struct devfreq {

        struct dev_pm_qos_request user_min_freq_req;
        struct dev_pm_qos_request user_max_freq_req;
+       struct dev_pm_qos_request test_min_freq_req;
+       struct dev_pm_qos_request test_max_freq_req;
        bool stop_polling;

        unsigned long suspend_freq;


On Tue, Nov 19, 2019 at 06:12:14PM +0200, Leonard Crestez wrote:
> Switch the handling of min_freq and max_freq from sysfs to use the
> dev_pm_qos_request interface.
> 
> Since PM QoS handles frequencies as kHz this change reduces the
> precision of min_freq and max_freq. This shouldn't introduce problems
> because frequencies which are not an integer number of kHz are likely
> not an integer number of Hz either.
> 
> Try to ensure compatibility by rounding min values down and rounding
> max values up.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> ---
>  drivers/devfreq/devfreq.c | 76 ++++++++++++++++++++++++++++++---------
>  include/linux/devfreq.h   |  9 ++---
>  2 files changed, 64 insertions(+), 21 deletions(-)
> 
> diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
> index 34bbaac6ea7e..518dd2745d06 100644
> --- a/drivers/devfreq/devfreq.c
> +++ b/drivers/devfreq/devfreq.c
> @@ -139,14 +139,10 @@ static void get_freq_range(struct devfreq *devfreq,
>  	*min_freq = max(*min_freq, (unsigned long)HZ_PER_KHZ * qos_min_freq);
>  	if (qos_max_freq != PM_QOS_MAX_FREQUENCY_DEFAULT_VALUE)
>  		*max_freq = min(*max_freq,
>  				(unsigned long)HZ_PER_KHZ * qos_max_freq);
>  
> -	/* Apply constraints from sysfs */
> -	*min_freq = max(*min_freq, devfreq->min_freq);
> -	*max_freq = min(*max_freq, devfreq->max_freq);
> -
>  	/* Apply constraints from OPP interface */
>  	*min_freq = max(*min_freq, devfreq->scaling_min_freq);
>  	*max_freq = min(*max_freq, devfreq->scaling_max_freq);
>  
>  	if (*min_freq > *max_freq)
> @@ -708,10 +704,23 @@ static void devfreq_dev_release(struct device *dev)
>  					 DEV_PM_QOS_MIN_FREQUENCY);
>  	if (err && err != -ENOENT)
>  		dev_warn(dev->parent,
>  			"Failed to remove min_freq notifier: %d\n", err);
>  
> +	if (dev_pm_qos_request_active(&devfreq->user_max_freq_req)) {
> +		err = dev_pm_qos_remove_request(&devfreq->user_max_freq_req);
> +		if (err)
> +			dev_warn(dev->parent,
> +				"Failed to remove max_freq request: %d\n", err);
> +	}
> +	if (dev_pm_qos_request_active(&devfreq->user_min_freq_req)) {
> +		err = dev_pm_qos_remove_request(&devfreq->user_min_freq_req);
> +		if (err)
> +			dev_warn(dev->parent,
> +				"Failed to remove min_freq request: %d\n", err);
> +	}
> +
>  	if (devfreq->profile->exit)
>  		devfreq->profile->exit(devfreq->dev.parent);
>  
>  	mutex_destroy(&devfreq->lock);
>  	kfree(devfreq);
> @@ -780,19 +789,17 @@ struct devfreq *devfreq_add_device(struct device *dev,
>  	if (!devfreq->scaling_min_freq) {
>  		mutex_unlock(&devfreq->lock);
>  		err = -EINVAL;
>  		goto err_dev;
>  	}
> -	devfreq->min_freq = devfreq->scaling_min_freq;
>  
>  	devfreq->scaling_max_freq = find_available_max_freq(devfreq);
>  	if (!devfreq->scaling_max_freq) {
>  		mutex_unlock(&devfreq->lock);
>  		err = -EINVAL;
>  		goto err_dev;
>  	}
> -	devfreq->max_freq = devfreq->scaling_max_freq;
>  
>  	devfreq->suspend_freq = dev_pm_opp_get_suspend_opp_freq(dev);
>  	atomic_set(&devfreq->suspend_count, 0);
>  
>  	dev_set_name(&devfreq->dev, "devfreq%d",
> @@ -829,10 +836,20 @@ struct devfreq *devfreq_add_device(struct device *dev,
>  
>  	srcu_init_notifier_head(&devfreq->transition_notifier_list);
>  
>  	mutex_unlock(&devfreq->lock);
>  
> +	err = dev_pm_qos_add_request(dev, &devfreq->user_min_freq_req,
> +				     DEV_PM_QOS_MIN_FREQUENCY, 0);
> +	if (err < 0)
> +		goto err_devfreq;
> +	err = dev_pm_qos_add_request(dev, &devfreq->user_max_freq_req,
> +				     DEV_PM_QOS_MAX_FREQUENCY,
> +				     PM_QOS_MAX_FREQUENCY_DEFAULT_VALUE);
> +	if (err < 0)
> +		goto err_devfreq;
> +
>  	devfreq->nb_min.notifier_call = qos_min_notifier_call;
>  	err = dev_pm_qos_add_notifier(devfreq->dev.parent, &devfreq->nb_min,
>  				      DEV_PM_QOS_MIN_FREQUENCY);
>  	if (err)
>  		goto err_devfreq;
> @@ -1414,18 +1431,26 @@ static ssize_t min_freq_store(struct device *dev, struct device_attribute *attr,
>  {
>  	struct devfreq *df = to_devfreq(dev);
>  	unsigned long value;
>  	int ret;
>  
> +	/*
> +	 * Protect against theoretical sysfs writes between
> +	 * device_add and dev_pm_qos_add_request
> +	 */
> +	if (!dev_pm_qos_request_active(&df->user_min_freq_req))
> +		return -EINVAL;
> +
>  	ret = sscanf(buf, "%lu", &value);
>  	if (ret != 1)
>  		return -EINVAL;
>  
> -	mutex_lock(&df->lock);
> -	df->min_freq = value;
> -	update_devfreq(df);
> -	mutex_unlock(&df->lock);
> +	/* Round down to kHz for PM QoS */
> +	ret = dev_pm_qos_update_request(&df->user_min_freq_req,
> +					value / HZ_PER_KHZ);
> +	if (ret < 0)
> +		return ret;
>  
>  	return count;
>  }
>  
>  static ssize_t min_freq_show(struct device *dev, struct device_attribute *attr,
> @@ -1446,22 +1471,39 @@ static ssize_t max_freq_store(struct device *dev, struct device_attribute *attr,
>  {
>  	struct devfreq *df = to_devfreq(dev);
>  	unsigned long value;
>  	int ret;
>  
> +	/*
> +	 * Protect against theoretical sysfs writes between
> +	 * device_add and dev_pm_qos_add_request
> +	 */
> +	if (!dev_pm_qos_request_active(&df->user_max_freq_req))
> +		return -EINVAL;
> +
>  	ret = sscanf(buf, "%lu", &value);
>  	if (ret != 1)
>  		return -EINVAL;
>  
> -	mutex_lock(&df->lock);
> -
> -	if (!value)
> -		value = ULONG_MAX;
> +	/*
> +	 * PM QoS frequencies are in kHz so we need to convert. Convert by
> +	 * rounding upwards so that the acceptable interval never shrinks.
> +	 *
> +	 * For example if the user writes "666666666" to sysfs this value will
> +	 * be converted to 666667 kHz and back to 666667000 Hz before an OPP
> +	 * lookup, this ensures that an OPP of 666666666Hz is still accepted.
> +	 *
> +	 * A value of zero means "no limit".
> +	 */
> +	if (value)
> +		value = DIV_ROUND_UP(value, HZ_PER_KHZ);
> +	else
> +		value = PM_QOS_MAX_FREQUENCY_DEFAULT_VALUE;
>  
> -	df->max_freq = value;
> -	update_devfreq(df);
> -	mutex_unlock(&df->lock);
> +	ret = dev_pm_qos_update_request(&df->user_max_freq_req, value);
> +	if (ret < 0)
> +		return ret;
>  
>  	return count;
>  }
>  static DEVICE_ATTR_RW(min_freq);
>  
> diff --git a/include/linux/devfreq.h b/include/linux/devfreq.h
> index 8b92ccbd1962..fb376b5b7281 100644
> --- a/include/linux/devfreq.h
> +++ b/include/linux/devfreq.h
> @@ -11,10 +11,11 @@
>  #define __LINUX_DEVFREQ_H__
>  
>  #include <linux/device.h>
>  #include <linux/notifier.h>
>  #include <linux/pm_opp.h>
> +#include <linux/pm_qos.h>
>  
>  #define DEVFREQ_NAME_LEN 16
>  
>  /* DEVFREQ governor name */
>  #define DEVFREQ_GOV_SIMPLE_ONDEMAND	"simple_ondemand"
> @@ -121,12 +122,12 @@ struct devfreq_dev_profile {
>   *		devfreq.nb to the corresponding register notifier call chain.
>   * @work:	delayed work for load monitoring.
>   * @previous_freq:	previously configured frequency value.
>   * @data:	Private data of the governor. The devfreq framework does not
>   *		touch this.
> - * @min_freq:	Limit minimum frequency requested by user (0: none)
> - * @max_freq:	Limit maximum frequency requested by user (0: none)
> + * @user_min_freq_req:	PM QoS minimum frequency request from user (via sysfs)
> + * @user_max_freq_req:	PM QoS maximum frequency request from user (via sysfs)
>   * @scaling_min_freq:	Limit minimum frequency requested by OPP interface
>   * @scaling_max_freq:	Limit maximum frequency requested by OPP interface
>   * @stop_polling:	 devfreq polling status of a device.
>   * @suspend_freq:	 frequency of a device set during suspend phase.
>   * @resume_freq:	 frequency of a device set in resume phase.
> @@ -161,12 +162,12 @@ struct devfreq {
>  	unsigned long previous_freq;
>  	struct devfreq_dev_status last_status;
>  
>  	void *data; /* private data for governors */
>  
> -	unsigned long min_freq;
> -	unsigned long max_freq;
> +	struct dev_pm_qos_request user_min_freq_req;
> +	struct dev_pm_qos_request user_max_freq_req;
>  	unsigned long scaling_min_freq;
>  	unsigned long scaling_max_freq;
>  	bool stop_polling;
>  
>  	unsigned long suspend_freq;
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
