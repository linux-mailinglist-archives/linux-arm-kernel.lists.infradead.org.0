Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DA67BBB17
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 20:16:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JanZ814T4Z57JDa7cu4SowVRwlJLVOJ2Clq4GzWfuIc=; b=b25s/743nLL4dN
	FGbQMUDJwuVH/A2qWLs13NYWTIH7UCooQp52XIXnB236vsEJg5U+JTd6/1dDIbk5asNRzTasdY+UX
	oCCevqLrY0htvMME1z/mHtBvu4eS1KcgiDLuMJSqOs6k7HgssuH5NR/upA4EQrzsZMLjauabnaf5l
	ypehlgCpAPiUFOvcqom+rLkiHupnegT5eStQn7gBa2HDke7Xg1DxNLGfO2uqQGplMqWGPFEV9sEbG
	R0/Bio74jL47ztUHduIn37pEIrLclySZnI9+04Pv43HPWvrvMiTwnP5uiwIfOVPeWIN7wlpOXhU5N
	9XXhZ8MKTCcGUQTPC8sA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCSt5-0006s3-Hr; Mon, 23 Sep 2019 18:16:39 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCSsu-0006rN-TJ
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 18:16:30 +0000
Received: by mail-pl1-x642.google.com with SMTP id d3so6860183plr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 11:16:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Vw7ucBLn0ZbzDzhmmxoraRDIIubl19a+e3bBuBAnE2o=;
 b=M8np/UJlBo7tVJWtpIt1PcoXWyVTeDHBWbtFCVw56+7tMv+17h1Us/NOYFli+Q770u
 x223+PMH/1POgLy3EfqXqH4i/uYEbwfwqKF5ml4s7zpCsoF0Eq+E828aPAHwxR/2KF74
 ZVgKl6wMHlLivZMwUYrFnOC1zqmJTahQrbznc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Vw7ucBLn0ZbzDzhmmxoraRDIIubl19a+e3bBuBAnE2o=;
 b=pzHRV0ALyUGHeRRCASk6HogDVH6YZ827wHp0QBmg8y8ZcsX/ebqTM4NXJCpyxbjVgd
 EjYiZ+si2XDurfqQA7DTyMHwzzVaimOW1JvQkGUVHtlNQ2vQh8eLdnHb5OeFgJdxjq5X
 37WnCAiJCva7TmZHr1qWS54XBLAHgvc1dZJ7vMqKMndEGXM24Gkyjrqxdku+j4E3142v
 tVbQblpmNp5qnZtGEc3SDF+ql8nqkWRCEflDp1hVNi5gPN4ZO6aZJksvVfs2hbBdcjtv
 055+CBkcM0dg9PT82fGetEDiugI3Z7dqVLtii4hyN4px6qX8oSKNPfsErC6ThNbbEDQy
 BE3Q==
X-Gm-Message-State: APjAAAUuE+cc1dVjv41uWm3oJ/MZwjkhh/jt5UdaBircrTB0ZbP4z+EL
 C1ebXw7K1sk3K3zyQes+jKCqDg==
X-Google-Smtp-Source: APXvYqzxaKiS4VMFgo0T1NX5al8ob1EuWBc3Mno/vG+KmJKLuitifLrCXvQifoB2KoAgAMHn6TjESg==
X-Received: by 2002:a17:902:d891:: with SMTP id
 b17mr1023058plz.119.1569262587256; 
 Mon, 23 Sep 2019 11:16:27 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id q2sm14639650pfg.144.2019.09.23.11.16.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 23 Sep 2019 11:16:26 -0700 (PDT)
Date: Mon, 23 Sep 2019 11:16:24 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH v6 4/6] PM / devfreq: Introduce devfreq_get_freq_range
Message-ID: <20190923181624.GZ133864@google.com>
References: <cover.1569252537.git.leonard.crestez@nxp.com>
 <4e274855585940ec6fb0e219c7539d4cf600d9f1.1569252537.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4e274855585940ec6fb0e219c7539d4cf600d9f1.1569252537.git.leonard.crestez@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_111628_975739_2BD99D3F 
X-CRM114-Status: GOOD (  22.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 NXP Linux Team <linux-imx@nxp.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Lukasz Luba <l.luba@partner.samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>,
 Georgi Djakov <georgi.djakov@linaro.org>, linux-arm-kernel@lists.infradead.org,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 23, 2019 at 06:51:07PM +0300, Leonard Crestez wrote:
> Moving handling of min/max freq to a single function and call it from
> update_devfreq and for printing min/max freq values in sysfs.
> 
> This changes the behavior of out-of-range min_freq/max_freq: clamping
> is now done at evaluation time. This means that if an out-of-range
> constraint is imposed by sysfs and it later becomes valid then it will
> be enforced.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
> ---
>  drivers/devfreq/devfreq.c | 111 +++++++++++++++++++++-----------------
>  1 file changed, 63 insertions(+), 48 deletions(-)
> 
> diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
> index 0eee4dd79fbb..b6acb827fee5 100644
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

one more nit if you are respinning anyway: remove colon

> +	*min_freq = max(*min_freq, devfreq->min_freq);
> +	*max_freq = min(*max_freq, devfreq->max_freq);
> +
> +	/* constraints from OPP interface: */

ditto

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
> @@ -348,21 +390,13 @@ int update_devfreq(struct devfreq *devfreq)
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
> @@ -1297,40 +1331,28 @@ static ssize_t min_freq_store(struct device *dev, struct device_attribute *attr,
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
> @@ -1342,40 +1364,33 @@ static ssize_t max_freq_store(struct device *dev, struct device_attribute *attr,
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

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
