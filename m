Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 992A411467A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 19:03:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZdlpmdJcEyfGxbSsD+2rJ/8FlzSe7cgVQ61P9YFHiJE=; b=aUTGJ5sjS8h0Gd
	rVPLwQYJF4Xuu0l1t2sfDmQvpfzQxMh/GN6+XKhCpM51pTRF6rTwq/yY4oMPhqqCo+dp3mqzTa0T6
	ZL+GDglxD4WDAAZPHiSl20MotbTInumhPqlqJ3MThsLhpGBcG83qhNGKTmfZMJh7saCBAJKlFva4T
	o9oII7Cai6ktzyHq+dEV+mlK/kuUGkf4FNzH4Dp7zVUzSuErIt1vwNh5P+ha5t5JMh/h6EmYaKpi5
	Exy9IHhHf95Vej8yWx4j8/qBlcRmnwdq0LJFFk8goTcWdaWtiX5SoMhEeV4ZRJGgaUQUBYsvxG7Er
	OjFVfe1yo3lSDKl/fWug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icvSy-0000Rd-TL; Thu, 05 Dec 2019 18:03:04 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icvSq-0000R7-G7
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 18:02:58 +0000
Received: by mail-pg1-x544.google.com with SMTP id x8so1949125pgk.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Dec 2019 10:02:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=NntSUoTKX+q7nGQOHdsVUrXLAyg3WVr9iYiJ9osLXaU=;
 b=QaH9pSXa0aFHDT/rdpGomSfvyEcjfPzyM1IESGhiv0uXXJNybSdQv2rdA3gSC+gl6A
 R/WS5UokvUczEkcQnWoJ3I67VSPi7IZJs2FNE6YNYzH1C46pRANxKz19t3Z6qn7EP3I4
 J4fi0BqApaI7+Cz3QjSEVzI8b2u2ezbiR2BJA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=NntSUoTKX+q7nGQOHdsVUrXLAyg3WVr9iYiJ9osLXaU=;
 b=mZUlcXnWrlRJoPz/17W+r02I49PU6AgIkYk4SRNi7rKXq7DXlChXMkwApNB67xYtxL
 1IBJeyTD5yItIzu0KZxsUB9cXKoZe/bBT1Z2qPa0BoDGAuxXKFIwz3QXdTuOO+6o42HH
 gBYHc0q71NwmI2w2NnHwo48Tae+4MJU0yfXhvoSnFiz72MV1I2OS8+SS+vH+nwIM4qWA
 M8v2dcvMdT1p0pPumY03ggWJj71kdKl6cg4HuHHcvn+2+TE5E0YaqLLTt2m2K+DUHmhN
 I+THy7lHiP+hOgsx1d7uhplnlBPSRgwupX6a/qKOsJiX2I0ZmBl+5B+tyVncXNJEcu6H
 8nWw==
X-Gm-Message-State: APjAAAUTYL2qqpluz6flXdmaAbyZUeXnUOw3LshJx8GnpPbbBBAyEX3x
 e/5LrZgd2FqiT984UxGv016ilg==
X-Google-Smtp-Source: APXvYqx7PiemGSUQeZz4xakKD7Li6c726xm7L7hqG1m4RJTC1fjYw1mSg4p1ltuzy6c835BWLfMdWg==
X-Received: by 2002:a63:5056:: with SMTP id q22mr10570932pgl.20.1575568975339; 
 Thu, 05 Dec 2019 10:02:55 -0800 (PST)
Received: from localhost ([2620:15c:202:1:4fff:7a6b:a335:8fde])
 by smtp.gmail.com with ESMTPSA id p16sm12368615pgm.8.2019.12.05.10.02.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 05 Dec 2019 10:02:54 -0800 (PST)
Date: Thu, 5 Dec 2019 10:02:53 -0800
From: Matthias Kaehlcke <mka@chromium.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH v2 2/2] PM / devfreq: Use PM QoS for sysfs min/max_freq
Message-ID: <20191205180253.GN228856@google.com>
References: <cover.1575540224.git.leonard.crestez@nxp.com>
 <2b9eeb4e576c45269c01826f13c7811b876faa57.1575540224.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2b9eeb4e576c45269c01826f13c7811b876faa57.1575540224.git.leonard.crestez@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_100256_563165_706A57D1 
X-CRM114-Status: GOOD (  19.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Jacky Bai <ping.bai@nxp.com>, linux-pm@vger.kernel.org,
 Viresh Kumar <viresh.kumar@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, NXP Linux Team <linux-imx@nxp.com>,
 Georgi Djakov <georgi.djakov@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 05, 2019 at 12:05:07PM +0200, Leonard Crestez wrote:
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
> Acked-by: Chanwoo Choi <cw00.choi@samsung.com>
> ---
>  drivers/devfreq/devfreq.c | 76 ++++++++++++++++++++++++++++++---------
>  include/linux/devfreq.h   |  9 ++---
>  2 files changed, 64 insertions(+), 21 deletions(-)
> 
> diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
> index e8b943fc4259..bcb286509547 100644
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
> @@ -703,10 +699,23 @@ static void devfreq_dev_release(struct device *dev)
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
> @@ -776,19 +785,17 @@ struct devfreq *devfreq_add_device(struct device *dev,
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
> @@ -825,10 +832,20 @@ struct devfreq *devfreq_add_device(struct device *dev,
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
> @@ -1418,18 +1435,26 @@ static ssize_t min_freq_store(struct device *dev, struct device_attribute *attr,
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

The error code -EINVAL is a bit misleading. I guess it's not super
important, especially since this is a very rare case. In case you
re-spin you could consider returning -EAGAIN ('Resource temporarily
unavailable') in this case from min/max_freq_store/show()

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
Tested-by: Matthias Kaehlcke <mka@chromium.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
