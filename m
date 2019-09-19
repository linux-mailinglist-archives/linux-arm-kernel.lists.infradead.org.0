Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E58CB8214
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 22:01:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xHrojtvGG/mw5Kyu75qr55f2zc6Ag43yPtMxgoL1i/Q=; b=P2V1WKgQnqOrQb
	CCpPyKoV6RnKfwXUgQ4wftQcdWLuTJhxk+im8vmVM6hPy/Ci7Avbiq2L+he2nYlakwa53rFts8He0
	yadJvXjGw/E0OtbGKMMRVvcVHCZ0rmrJBnxEtr+yk/WpTfTkDHt0ygWIPCqELD9GTK3Mh3DDyTJ/x
	CNyQouofETTW4+D/Y2q7/zMjMq8LnvNQu0XFQPUmdUMFgF9OQaa2NW9CTFIOJjWjMcnlPcjd48Djo
	TRyLZBp3qeT+QFO4XZh6MeIOnMn7OeaJ+CU7h+FDPKUWX/3k6Q03ktHYJcLNSvS/9+dx3CjHGo3ls
	8R4mir17xVI2Xr3ifgsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB2c5-0006gS-IV; Thu, 19 Sep 2019 20:01:13 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB2a3-00044G-54
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 19:59:10 +0000
Received: by mail-pf1-x443.google.com with SMTP id y72so2968210pfb.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 12:59:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=hhfYGawXnW6uZYoOjBbGCOHapRV4NV4Ipk+mhG/LMb4=;
 b=cMPAoE2CVW4AHsyImxaghCHK23cQoodnjiTjkJtwnGtLNE2+IHxFvKJ9H04OIAyo2S
 4/nNZzIBT1UIoxQVEGfj+dfnHnOBETTXEjCXbrxMDswzMk8cBD3rBOUkvUDgZLiRRuF7
 HCfQaDrV6cM/MdqhbD36FvXKfn+XsMM+BYuB8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=hhfYGawXnW6uZYoOjBbGCOHapRV4NV4Ipk+mhG/LMb4=;
 b=qN2PAayXv6OoFmtnYN17lt0FNEMldk40FCgovIgZPAagsclz+3rkIx1r/lqnuXOoH6
 mr9xVZnLHKEnq/beE31hOvs9bqxACQQkqt+BgI22ZyD7CCmf4NTy4+rXuk4gn6YMus6x
 m6efY2viNvrBFE2OB8v3XCl7YLEEiujbG1dAVGGWPdSLUvDFD3/BZR1ZiufbfXEmuoQ6
 Llkc2UU4IybiV6evSTMU6d0V8qOTXyNBtZNCVs00IsePxZMSVL8Nh3IsheI7Ppiwozxt
 1yJvs0dSlWm8DI64FMzsMRk7D+PLduYqIUpLOeXOHsNaPjA/NyofsSawkoONU6goY6zY
 GUyA==
X-Gm-Message-State: APjAAAXz/n+kgkKn7rqBJPzDNPXCAL87pL6dd8rD5fB5/Bmsg31xEFVc
 45pgCeZ1bRz0e+Bx3KhzdAbVdg==
X-Google-Smtp-Source: APXvYqzHI02bCChGq61Le1kggMWELJvMhyYhBSfPs7Bhm47tqwyAWhdAowbHugKpU4p0XwGvghPeJQ==
X-Received: by 2002:a63:ba47:: with SMTP id l7mr10690493pgu.201.1568923144882; 
 Thu, 19 Sep 2019 12:59:04 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id j4sm11101737pfn.29.2019.09.19.12.59.03
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 19 Sep 2019 12:59:04 -0700 (PDT)
Date: Thu, 19 Sep 2019 12:59:02 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH 7/8] PM / devfreq: Use dev_pm_qos for sysfs min/max_freq
Message-ID: <20190919195902.GX133864@google.com>
References: <cover.1568764439.git.leonard.crestez@nxp.com>
 <a80dae0a1aec9932689aaadff68bcabc94a816be.1568764439.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a80dae0a1aec9932689aaadff68bcabc94a816be.1568764439.git.leonard.crestez@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_125907_732536_20F17CE6 
X-CRM114-Status: GOOD (  24.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 linux-pm@vger.kernel.org, Viresh Kumar <viresh.kumar@linaro.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>,
 Georgi Djakov <georgi.djakov@linaro.org>, linux-arm-kernel@lists.infradead.org,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 18, 2019 at 03:18:26AM +0300, Leonard Crestez wrote:
> Switch the handling of min_freq and max_freq from sysfs to use the
> dev_pm_qos interface.

nit: PM QoS?

if you agree please change all instances in comments.

> Since dev_pm_qos handles frequencies as kHz this change reduces the
> precision of min_freq and max_freq. This shouldn't introduce problems
> because frequencies which are not an integer number of kHz are likely
> not an integer number of Hz either.
> 
> Try to ensure compatibilitity by rounding min values down and rounding
> max values up.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> ---
>  drivers/devfreq/devfreq.c | 51 +++++++++++++++++++++++++--------------
>  include/linux/devfreq.h   |  9 ++++---
>  2 files changed, 38 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
> index d8d57318b12c..7977bad93949 100644
> --- a/drivers/devfreq/devfreq.c
> +++ b/drivers/devfreq/devfreq.c
> @@ -132,14 +132,10 @@ static void devfreq_get_freq_range(struct devfreq *devfreq,
>  	*min_freq = max(*min_freq, HZ_PER_KHZ * (unsigned long)dev_pm_qos_read_value(
>  				devfreq->dev.parent, DEV_PM_QOS_MIN_FREQUENCY));
>  	*max_freq = min(*max_freq, HZ_PER_KHZ * (unsigned long)dev_pm_qos_read_value(
>  				devfreq->dev.parent, DEV_PM_QOS_MAX_FREQUENCY));
>  
> -	/* constraints from sysfs: */
> -	*min_freq = max(*min_freq, devfreq->min_freq);
> -	*max_freq = min(*max_freq, devfreq->max_freq);
> -
>  	/* constraints from opp interface: */
>  	*min_freq = max(*min_freq, devfreq->scaling_min_freq);
>  	/* scaling_max_freq can be zero on error */
>  	if (devfreq->scaling_max_freq)
>  		*max_freq = min(*max_freq, devfreq->scaling_max_freq);
> @@ -675,10 +671,12 @@ static void devfreq_dev_release(struct device *dev)
>  			DEV_PM_QOS_MIN_FREQUENCY);
>  
>  	if (devfreq->profile->exit)
>  		devfreq->profile->exit(devfreq->dev.parent);
>  
> +	dev_pm_qos_remove_request(&devfreq->max_freq_req);
> +	dev_pm_qos_remove_request(&devfreq->min_freq_req);

mega-nit: keep common mix/max order since it doesn't really matter here?

>  	mutex_destroy(&devfreq->lock);
>  	kfree(devfreq->time_in_state);
>  	kfree(devfreq->trans_table);
>  	kfree(devfreq);
>  }
> @@ -743,18 +741,28 @@ struct devfreq *devfreq_add_device(struct device *dev,
>  	devfreq->scaling_min_freq = find_available_min_freq(devfreq);
>  	if (!devfreq->scaling_min_freq) {
>  		err = -EINVAL;
>  		goto err_dev;
>  	}
> -	devfreq->min_freq = devfreq->scaling_min_freq;
>  
>  	devfreq->scaling_max_freq = find_available_max_freq(devfreq);
>  	if (!devfreq->scaling_max_freq) {
>  		err = -EINVAL;
>  		goto err_dev;
>  	}
> -	devfreq->max_freq = devfreq->scaling_max_freq;
> +
> +	/* dev_pm_qos requests for min/max freq from sysfs */
> +	err = dev_pm_qos_add_request(dev, &devfreq->min_freq_req,
> +				     DEV_PM_QOS_MIN_FREQUENCY, 0);
> +	if (err < 0) {
> +		goto err_dev;
> +	}

no curly braces needed for single line.

> +	err = dev_pm_qos_add_request(dev, &devfreq->max_freq_req,
> +				     DEV_PM_QOS_MAX_FREQUENCY, S32_MAX);
> +	if (err < 0) {
> +		goto err_dev;
> +	}

ditto

>  	devfreq->suspend_freq = dev_pm_opp_get_suspend_opp_freq(dev);
>  	atomic_set(&devfreq->suspend_count, 0);
>  
>  	devfreq->trans_table = kzalloc(
> @@ -833,10 +841,14 @@ struct devfreq *devfreq_add_device(struct device *dev,
>  	mutex_unlock(&devfreq_list_lock);
>  err_devfreq:
>  	devfreq_remove_device(devfreq);
>  	return ERR_PTR(err);
>  err_dev:
> +	if (dev_pm_qos_request_active(&devfreq->max_freq_req))
> +		dev_pm_qos_remove_request(&devfreq->max_freq_req);
> +	if (dev_pm_qos_request_active(&devfreq->min_freq_req))
> +		dev_pm_qos_remove_request(&devfreq->min_freq_req);
>  	kfree(devfreq->time_in_state);
>  	kfree(devfreq->trans_table);
>  	kfree(devfreq);
>  err_out:
>  	return ERR_PTR(err);
> @@ -1397,14 +1409,17 @@ static ssize_t min_freq_store(struct device *dev, struct device_attribute *attr,
>  
>  	ret = sscanf(buf, "%lu", &value);
>  	if (ret != 1)
>  		return -EINVAL;
>  
> -	mutex_lock(&df->lock);
> -	df->min_freq = value;
> -	update_devfreq(df);
> -	mutex_unlock(&df->lock);
> +	/* round down to kHz for dev_pm_qos */
> +	if (value)
> +		value = value / HZ_PER_KHZ;
> +
> +	ret = dev_pm_qos_update_request(&df->min_freq_req, value);
> +	if (ret < 0)
> +		return ret;
>  
>  	return count;
>  }
>  
>  static ssize_t min_freq_show(struct device *dev, struct device_attribute *attr,
> @@ -1429,19 +1444,19 @@ static ssize_t max_freq_store(struct device *dev, struct device_attribute *attr,
>  
>  	ret = sscanf(buf, "%lu", &value);
>  	if (ret != 1)
>  		return -EINVAL;
>  
> -	mutex_lock(&df->lock);
> -
> -	/* Interpret zero as "don't care" */
> -	if (!value)
> -		value = ULONG_MAX;
> +	/* round up to kHz for dev_pm_qos and interpret zero as "don't care" */
> +	if (value)
> +		value = DIV_ROUND_UP(value, HZ_PER_KHZ);
> +	else
> +		value = S32_MAX;
>  
> -	df->max_freq = value;
> -	update_devfreq(df);
> -	mutex_unlock(&df->lock);
> +	ret = dev_pm_qos_update_request(&df->max_freq_req, value);
> +	if (ret < 0)
> +		return ret;
>  
>  	return count;
>  }
>  static DEVICE_ATTR_RW(min_freq);
>  
> diff --git a/include/linux/devfreq.h b/include/linux/devfreq.h
> index dac0dffeabb4..4b5cc80abbe3 100644
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
> + * @min_freq_req:	Limit minimum frequency requested by user (0: none)

'(0: none)' is not correct anymore.

Maybe also say that it's a PM QoS request?

Since you are already changing the variable name it could be a good
opportunity to make it more specific, i.e. make clear that it's the
userspace constraint.

e.g.

min_freq_req_user
user_min_freq_req
min_freq_user_req

or

struct {
       struct {
       	      min;
	      max;
       } user;

       struct {
       	      min;
       	      max;
       } scaling; // not a great name, but that's what it is currently ...
} freq_constraints;

> + * @max_freq_req:	Limit maximum frequency requested by user (0: none)
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
> +	struct dev_pm_qos_request min_freq_req;
> +	struct dev_pm_qos_request max_freq_req;
>  	unsigned long scaling_min_freq;
>  	unsigned long scaling_max_freq;
>  	bool stop_polling;
>  
>  	unsigned long suspend_freq;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
