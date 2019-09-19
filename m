Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD938B8096
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 20:08:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZmcwWG2H4HCcqfPu0B8a7j88siAzXHupQjYn+wqsyDg=; b=qziGqmPPfjSrWQ
	C83GB8s6cKZ8cPiaseu7tcRlGXTXdieviRXv5HEv3dZRf6SxJCGl1N18IrbnhtOjWzFpfeogBF5v4
	tPU48RU7utemFz9dsoiF6W1kLoKsRwSwKj69YlGZjPkGCNdvoJjxuaSeFUfiZ4LLetEsMsF5uXjJT
	W1XL1YlT2jIvyv+E5eQGNLqT8uz3DG+uxGQHHB5pbcyBxsdKmRJMJzcItIFjaKnEUCQdArNYEjlNV
	g+7HIlTZI8xHedohUpEZDBUMC+ag75pQpRNaQeO/9TRQ/jPF+fdbrXC9AIx0eZ3DbwbpnM/NoM64U
	r/zJYUsWYLo7iNPxJCgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB0qM-0005Jb-47; Thu, 19 Sep 2019 18:07:50 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB0pz-0005Is-5L
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 18:07:29 +0000
Received: by mail-pg1-x542.google.com with SMTP id c17so2336811pgg.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 11:07:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=6zOXFEBSPDZErMe9LV7l8EKhi6rWrhgSCyFAiesvqHY=;
 b=Dr2/UNlNG3sv0cx7PB+rSh4YJYAyZuRnRj20BMJkFtIVY13eSorTbe31N66kTu2+rL
 ivGfQuS8py4c7wiZLTrme+D2Ln2F5DvEhuk1N/mDeECEyc8E7Emb/awKK8T7ajiiB9ui
 qIpewSGPBDXuBhdcAkJAYnXcyi9XA4KQW9LWc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=6zOXFEBSPDZErMe9LV7l8EKhi6rWrhgSCyFAiesvqHY=;
 b=X0O3c+8jmeB5WNljcPZZddaEdj0HcLPB6T9B1t2QerLGatuHidFIygfje74lRx7bEw
 Y9LTO7QxQmr9IL9civH7V1trsvVvDLs/a70Yv46Qi7geL/yV/VG6qN2wxPN9sRjf/Cbr
 ul2uGE9Lt5mmuxT+363RoB+zv7zEZ7cCoGlGQfKNCTIB76o9VDmzly1z5ao+wJS9ZIOC
 /W02YoFFq/baTITxanoD39y6BMeNowTuZ6ofTpdMOuCyzWfv2u2W0iw+u5pEqltY5RoQ
 Per/qTEPmBhcnoik1oS0LS9kSTRit0oBtDnbQwaaMphpK3WNYYX1NEXiIgYQV84f2ZtO
 d5YQ==
X-Gm-Message-State: APjAAAX6ql2jIt4Ni5X4BF6ojGa0BoIGcF5/afbUpY9nd4f88JeUGRjw
 GyDuw3r4Qf54Swt+YGlnI6B48w==
X-Google-Smtp-Source: APXvYqwxu4qKbBsqkCVgsollebgqQKv9fNb34P5+qEIWvXb5p2z0UPMn14XUI3+rXP6gBriLWKt2FA==
X-Received: by 2002:a63:4c5c:: with SMTP id m28mr10896199pgl.333.1568916445963; 
 Thu, 19 Sep 2019 11:07:25 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id l23sm8059715pgj.53.2019.09.19.11.07.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 19 Sep 2019 11:07:24 -0700 (PDT)
Date: Thu, 19 Sep 2019 11:07:22 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH 5/8] PM / devfreq: Introduce devfreq_get_freq_range
Message-ID: <20190919180722.GT133864@google.com>
References: <cover.1568764439.git.leonard.crestez@nxp.com>
 <730613d6f7182c6a6784fd509d6324f28be2cac3.1568764439.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <730613d6f7182c6a6784fd509d6324f28be2cac3.1568764439.git.leonard.crestez@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_110727_368135_4D4D18B4 
X-CRM114-Status: GOOD (  24.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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

Hi Leonard,

On Wed, Sep 18, 2019 at 03:18:24AM +0300, Leonard Crestez wrote:
> Moving handling of min/max freq to a single function and call it from
> update_devfreq and for printing min/max freq values in sysfs.
> 
> This changes the behavior of out-of-range min_freq/max_freq: clamping
> is now done at evaluation time. This means that if an out-of-range
> constraint is imposed by sysfs and it later becomes valid then it will
> be enforced.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> ---
>  drivers/devfreq/devfreq.c | 111 +++++++++++++++++++++-----------------
>  1 file changed, 63 insertions(+), 48 deletions(-)
> 
> diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
> index 860cbbab476c..51a4179e2c69 100644
> --- a/drivers/devfreq/devfreq.c
> +++ b/drivers/devfreq/devfreq.c
> @@ -24,10 +24,12 @@
>  #include <linux/printk.h>
>  #include <linux/hrtimer.h>
>  #include <linux/of.h>
>  #include "governor.h"
>  
> +#define HZ_PER_KHZ 1000
> +
>  #define CREATE_TRACE_POINTS
>  #include <trace/events/devfreq.h>
>  
>  static struct class *devfreq_class;
>  
> @@ -96,10 +98,50 @@ static unsigned long find_available_max_freq(struct devfreq *devfreq)
>  		dev_pm_opp_put(opp);
>  
>  	return max_freq;
>  }
>  
> +/**
> + * devfreq_get_freq_range() - Get the current freq range
> + * @devfreq:	the devfreq instance
> + * @min_freq:	the min frequency
> + * @max_freq:	the max frequency
> + *
> + * This takes into consideration all constraints.
> + */
> +static void devfreq_get_freq_range(struct devfreq *devfreq,
> +				   unsigned long *min_freq,
> +				   unsigned long *max_freq)
> +{
> +	unsigned long *freq_table = devfreq->profile->freq_table;
> +
> +	lockdep_assert_held(&devfreq->lock);
> +
> +	/* Init min/max frequency from freq table */
> +	if (freq_table[0] < freq_table[devfreq->profile->max_state - 1]) {
> +		*min_freq = freq_table[0];
> +		*max_freq = freq_table[devfreq->profile->max_state - 1];
> +	} else {
> +		*min_freq = freq_table[devfreq->profile->max_state - 1];
> +		*max_freq = freq_table[0];
> +	}
> +
> +	/* constraints from sysfs: */
> +	*min_freq = max(*min_freq, devfreq->min_freq);
> +	*max_freq = min(*max_freq, devfreq->max_freq);
> +
> +	/* constraints from opp interface: */

nit: OPP

> +	*min_freq = max(*min_freq, devfreq->scaling_min_freq);
> +	/* scaling_max_freq can be zero on error */
> +	if (devfreq->scaling_max_freq)
> +		*max_freq = min(*max_freq, devfreq->scaling_max_freq);
> +
> +	/* max_freq takes precedence over min_freq */
> +	if (*min_freq > *max_freq)
> +		*min_freq = *max_freq;
> +}
> +
>  /**
>   * devfreq_get_freq_level() - Lookup freq_table for the frequency
>   * @devfreq:	the devfreq instance
>   * @freq:	the target frequency
>   */
> @@ -349,21 +391,13 @@ int update_devfreq(struct devfreq *devfreq)
>  
>  	/* Reevaluate the proper frequency */
>  	err = devfreq->governor->get_target_freq(devfreq, &freq);
>  	if (err)
>  		return err;
> +	devfreq_get_freq_range(devfreq, &min_freq, &max_freq);
>  
> -	/*
> -	 * Adjust the frequency with user freq, QoS and available freq.
> -	 *
> -	 * List from the highest priority
> -	 * max_freq
> -	 * min_freq
> -	 */
> -	max_freq = min(devfreq->scaling_max_freq, devfreq->max_freq);
> -	min_freq = max(devfreq->scaling_min_freq, devfreq->min_freq);
> -
> +	/* max freq takes priority over min freq */
>  	if (freq < min_freq) {
>  		freq = min_freq;
>  		flags &= ~DEVFREQ_FLAG_LEAST_UPPER_BOUND; /* Use GLB */
>  	}
>  	if (freq > max_freq) {
> @@ -1293,40 +1327,28 @@ static ssize_t min_freq_store(struct device *dev, struct device_attribute *attr,
>  	ret = sscanf(buf, "%lu", &value);
>  	if (ret != 1)
>  		return -EINVAL;
>  
>  	mutex_lock(&df->lock);
> -
> -	if (value) {
> -		if (value > df->max_freq) {
> -			ret = -EINVAL;
> -			goto unlock;
> -		}
> -	} else {
> -		unsigned long *freq_table = df->profile->freq_table;
> -
> -		/* Get minimum frequency according to sorting order */
> -		if (freq_table[0] < freq_table[df->profile->max_state - 1])
> -			value = freq_table[0];
> -		else
> -			value = freq_table[df->profile->max_state - 1];
> -	}
> -
>  	df->min_freq = value;
>  	update_devfreq(df);
> -	ret = count;
> -unlock:
>  	mutex_unlock(&df->lock);
> -	return ret;
> +
> +	return count;
>  }
>  
>  static ssize_t min_freq_show(struct device *dev, struct device_attribute *attr,
>  			     char *buf)
>  {
>  	struct devfreq *df = to_devfreq(dev);
> +	unsigned long min_freq, max_freq;
>  
> -	return sprintf(buf, "%lu\n", max(df->scaling_min_freq, df->min_freq));
> +	mutex_lock(&df->lock);
> +	devfreq_get_freq_range(df, &min_freq, &max_freq);
> +	mutex_unlock(&df->lock);
> +
> +	return sprintf(buf, "%lu\n", min_freq);
>  }
>  
>  static ssize_t max_freq_store(struct device *dev, struct device_attribute *attr,
>  			      const char *buf, size_t count)
>  {
> @@ -1338,40 +1360,33 @@ static ssize_t max_freq_store(struct device *dev, struct device_attribute *attr,
>  	if (ret != 1)
>  		return -EINVAL;
>  
>  	mutex_lock(&df->lock);
>  
> -	if (value) {
> -		if (value < df->min_freq) {
> -			ret = -EINVAL;
> -			goto unlock;
> -		}
> -	} else {
> -		unsigned long *freq_table = df->profile->freq_table;
> -
> -		/* Get maximum frequency according to sorting order */
> -		if (freq_table[0] < freq_table[df->profile->max_state - 1])
> -			value = freq_table[df->profile->max_state - 1];
> -		else
> -			value = freq_table[0];
> -	}
> +	/* Interpret zero as "don't care" */
> +	if (!value)
> +		value = ULONG_MAX;
>  
>  	df->max_freq = value;
>  	update_devfreq(df);
> -	ret = count;
> -unlock:
>  	mutex_unlock(&df->lock);
> -	return ret;
> +
> +	return count;
>  }
>  static DEVICE_ATTR_RW(min_freq);
>  
>  static ssize_t max_freq_show(struct device *dev, struct device_attribute *attr,
>  			     char *buf)
>  {
>  	struct devfreq *df = to_devfreq(dev);
> +	unsigned long min_freq, max_freq;
> +
> +	mutex_lock(&df->lock);
> +	devfreq_get_freq_range(df, &min_freq, &max_freq);
> +	mutex_unlock(&df->lock);
>  
> -	return sprintf(buf, "%lu\n", min(df->scaling_max_freq, df->max_freq));
> +	return sprintf(buf, "%lu\n", max_freq);
>  }
>  static DEVICE_ATTR_RW(max_freq);
>  
>  static ssize_t available_frequencies_show(struct device *d,
>  					  struct device_attribute *attr,

Nice, having the constraint evaluation in a single function makes it
easier to follow the code. Clamping userspace constraints at runtime
makes sense.

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>

I plan to take a look at the rest of the series, but probably won't
find time for all of it before next week.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
