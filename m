Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E847CC15B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 19:05:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FfbZ2jfW9xk6GpRipfmgM00ByLLu8JSAvCBkopqW5G8=; b=UmSlCUk5tulOsj
	8lvFCTtYs/kGkejx/3LR8gSgAZr3DzBsA84DuremBWCtQkIWtne7WtBTzjGdNFS3azR3a68zuUStw
	D57eoDTYR7LevLHVwBX/w0V6DInJUutH1YNxOK5NHJE9kssE+Q21y4i6phmSStL3c3w2MhRBwbNUN
	jUwWdwXdZ9h7P9qAVjbQLA4DlZX4B8G28TSDG6IUwGKmIxsDHAfhWp33lifgC99a69w8VgTOTl5k1
	qddzaKTIazACohSg3v4tzlECEWzUHsbVDTpMkWE6Zqe/waiaofQpKvIOsHAE0NokP78FkumSShQP+
	KSLXCzMiHFu/86WndbmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGR1J-0004EM-JK; Fri, 04 Oct 2019 17:05:33 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGR11-00049R-TP
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 17:05:18 +0000
Received: by mail-pf1-x444.google.com with SMTP id b128so4287641pfa.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 04 Oct 2019 10:05:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=7WcSZZeD+MKzcdOOdX6Ec/KkIbWWrsXycEBp6qCNW+Q=;
 b=WQlg5gH4TvsQj9MdH4CAkIkHVJMDvTHUa1YRY+efOo3XiTfU6eTv2KLfpwnZYiAnbh
 jsXNgUsvXEB2E9vHUz2xCUS2XUKcvEkrCkmEdyApnsA387upCYAadenA2X35WNE+fTAy
 bBsDLobadqgjfr43OVSLRRI70rCdpJO/95hiY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=7WcSZZeD+MKzcdOOdX6Ec/KkIbWWrsXycEBp6qCNW+Q=;
 b=ibyFP6ZIWvCr8em7OqaJmSjV3jaak42M1ll6kRHROXS9xxUahES5i6knFGgp2H8RA2
 de7+0wlDJp1hP2wNvUBUTsyX6b/HjZGEEWFbk9VVdyDvq+b75f4D0Uh2HO+TnROOlgbi
 cbXCLic50t9wC+UsBxMrOhQoUK2JT83rGMxESwqEXa0AOaXlwjudfsRwp3RM4nZyFw6m
 WFicLk40dYSNfzju9P3LrYufqVbmH0hmh7OJMI+60VNuPlowB/+EO5GjEcsc0jPXEErL
 0FydTy3oo9oZs4q6JMqc2JpMfrJ10ayvMEnsprLpGhDTOEjbkExlWlaSu9axrcEXlsQI
 HmOg==
X-Gm-Message-State: APjAAAUCRwx1fp3LVEJ+E8EPSHrh+ha1M5RReSwVYshUf0hoK8YdFtNh
 Ubnn7fi4wUoo84wEJ7QKzz6iXw==
X-Google-Smtp-Source: APXvYqy+j0NZduXbdpAQagE8KCfWd4oDirEpNCra7THfxwooAIXXxa3Zu96+oAGzHo6st6ZVEDRlvw==
X-Received: by 2002:a62:8142:: with SMTP id t63mr18450323pfd.246.1570208714816; 
 Fri, 04 Oct 2019 10:05:14 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:4fff:7a6b:a335:8fde])
 by smtp.gmail.com with ESMTPSA id 196sm12053609pfz.99.2019.10.04.10.05.13
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 04 Oct 2019 10:05:14 -0700 (PDT)
Date: Fri, 4 Oct 2019 10:05:12 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH v9 8/8] PM / devfreq: Use PM QoS for sysfs min/max_freq
Message-ID: <20191004170512.GM87296@google.com>
References: <cover.1570044052.git.leonard.crestez@nxp.com>
 <62584a1e5c08d0f9254df505883fb220ba53d57b.1570044052.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <62584a1e5c08d0f9254df505883fb220ba53d57b.1570044052.git.leonard.crestez@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_100516_002286_4405A709 
X-CRM114-Status: GOOD (  23.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Wed, Oct 02, 2019 at 10:25:11PM +0300, Leonard Crestez wrote:
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
> Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
> ---
>  drivers/devfreq/devfreq.c | 63 ++++++++++++++++++++++++++++-----------
>  include/linux/devfreq.h   |  9 +++---
>  2 files changed, 51 insertions(+), 21 deletions(-)
> 
> diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
> index 46f699b84a22..4ff5fbc4ee85 100644
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
>  	/* scaling_max_freq can be zero on error */
>  	if (devfreq->scaling_max_freq)
>  		*max_freq = min(*max_freq, devfreq->scaling_max_freq);
> @@ -690,10 +686,18 @@ static void devfreq_dev_release(struct device *dev)
>  			 err);
>  
>  	if (devfreq->profile->exit)
>  		devfreq->profile->exit(devfreq->dev.parent);
>  
> +	err = dev_pm_qos_remove_request(&devfreq->user_max_freq_req);
> +	if (err)
> +		dev_warn(dev->parent, "Failed to remove DEV_PM_QOS_MAX_FREQUENCY request: %d\n",
> +			 err);
> +	err = dev_pm_qos_remove_request(&devfreq->user_min_freq_req);
> +	if (err)
> +		dev_warn(dev->parent, "Failed to remove DEV_PM_QOS_MIN_FREQUENCY request: %d\n",
> +			 err);
>  	kfree(devfreq->time_in_state);
>  	kfree(devfreq->trans_table);
>  	mutex_destroy(&devfreq->lock);
>  	kfree(devfreq);
>  }
> @@ -758,18 +762,26 @@ struct devfreq *devfreq_add_device(struct device *dev,
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
> +	err = dev_pm_qos_add_request(dev, &devfreq->user_min_freq_req,
> +				     DEV_PM_QOS_MIN_FREQUENCY, 0);
> +	if (err < 0)
> +		goto err_dev;
> +	err = dev_pm_qos_add_request(dev, &devfreq->user_max_freq_req,
> +				     DEV_PM_QOS_MAX_FREQUENCY,
> +				     PM_QOS_MAX_FREQUENCY_DEFAULT_VALUE);
> +	if (err < 0)
> +		goto err_dev;
>  
>  	devfreq->suspend_freq = dev_pm_opp_get_suspend_opp_freq(dev);
>  	atomic_set(&devfreq->suspend_count, 0);
>  
>  	devfreq->trans_table = kzalloc(
> @@ -848,10 +860,16 @@ struct devfreq *devfreq_add_device(struct device *dev,
>  err_dev:
>  	/*
>  	 * Cleanup path for errors that happen before registration.
>  	 * Otherwise we rely on devfreq_dev_release.
>  	 */
> +	if (dev_pm_qos_request_active(&devfreq->user_max_freq_req))
> +		if (dev_pm_qos_remove_request(&devfreq->user_max_freq_req))
> +			dev_warn(dev, "Failed to remove DEV_PM_QOS_MAX_FREQUENCY request\n");
> +	if (dev_pm_qos_request_active(&devfreq->user_min_freq_req))
> +		if (dev_pm_qos_remove_request(&devfreq->user_min_freq_req))
> +			dev_warn(dev, "Failed to remove DEV_PM_QOS_MIN_FREQUENCY request\n");
>  	kfree(devfreq->time_in_state);
>  	kfree(devfreq->trans_table);
>  	kfree(devfreq);
>  err_out:
>  	return ERR_PTR(err);
> @@ -1392,14 +1410,15 @@ static ssize_t min_freq_store(struct device *dev, struct device_attribute *attr,
>  
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
> @@ -1424,18 +1443,28 @@ static ssize_t max_freq_store(struct device *dev, struct device_attribute *attr,
>  
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

Tested-by: Matthias Kaehlcke <mka@chromium.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
