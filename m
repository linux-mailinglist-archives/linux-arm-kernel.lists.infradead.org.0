Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E7B7C943C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 00:22:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WmZymRGDlPkgelJXklKXvKwJevb8CpvfwZEturPdgPU=; b=h065hO3ZXwwSiD
	SVNcOVml49bRZnHkXn5MHDauhi1KYxQ3UrqtOuiZhTVpEDrILlIY8GyGoq5bZPoevXTDkcVGgM0Ve
	8Vwz4CtMqfoB3hjGL8FjNmf0W0lYfSYMcbesWIvuDFcQReJ0iWwlIOIx5zTSRcHiGMrdutPW7bbYu
	YZqiPZMqxnJcOgGE6Ft8hVzPCO0exL+EOkXOtsdD01rDniXevq7qBzokOUDUyDG0PIvyrlSZy3rEi
	v+DgbT4JlzIazGvvl54O1ANB7AuOMViO/S/QNwv5KCSp8wj8QOyJ3zMcNG/PlzaJEnbi5nqYfRFx2
	h3PFboZwgiHV5Lr/E4Yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFn0l-00068J-46; Wed, 02 Oct 2019 22:22:19 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFn0a-00063Y-U8
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 22:22:10 +0000
Received: by mail-pf1-x443.google.com with SMTP id x127so382496pfb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 02 Oct 2019 15:22:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=3x/uZ2v71nKiHuA1l2DLcOV85Xrl9imqXxC2tU0hDMw=;
 b=hR9aWMd5pKusA+wHVRJNRRWVzPz+qr4HunnVe91cwtFPelEbZktHUtr5+vSPPcfDsu
 PYmDHm41tnPVdQi28Uklr56atWOpQyADGJlAFczs/pYzdnGVDVIxqH8Ecm4acVq32DeV
 fSph0hl0nRPQVYiN6lpYroFTsxw323ud+3/PY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=3x/uZ2v71nKiHuA1l2DLcOV85Xrl9imqXxC2tU0hDMw=;
 b=lFNv2TgiL1GWT+x2zit3cmZYUhcjXNIb2lJC3pF8uElHT8oW9Yl3ImHmz1pDxmlbsi
 5zdBoZn1FZDWddycQ+DoyIrN0svg7/bkIVtvzd4W4/1LlxQtHmntN8T+SSTmtgb8act/
 j1tbwhNEnTI6F1RGiZU/ntTfcW1b2N//NfbNf6kqQGOhxsfOueezBq0uAM9YJR6BZlKH
 7b3md4n7leyBUD0kF9sLK41M+DbIAlNmvNH+jX75xHwXSbGGWdjaHBcKFV3oXC0FuJGI
 E3dgQfM+S8zo0PUFmogMqLFI5GBDpydRZMusrH4RTFUHzEzKkLuW+jDAyhULK3lgq3YV
 e+ug==
X-Gm-Message-State: APjAAAVBzYxuSA/rdDmzbnaXtLGGgNYaHEIyLRgRxmlWIJOwK4yB4K25
 OVWrPbUVt4QnGihYOfzig7fC3w==
X-Google-Smtp-Source: APXvYqyapDZF1vl7OezgrPQxbYLRW5ZBT4xBGiXszd9TZ689nKIydgzuV820CjSU+L1nBVKs3AHKSw==
X-Received: by 2002:a63:c306:: with SMTP id c6mr3863239pgd.253.1570054927673; 
 Wed, 02 Oct 2019 15:22:07 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:4fff:7a6b:a335:8fde])
 by smtp.gmail.com with ESMTPSA id z29sm447812pff.23.2019.10.02.15.22.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 02 Oct 2019 15:22:06 -0700 (PDT)
Date: Wed, 2 Oct 2019 15:22:04 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH v9 7/8] PM / devfreq: Add PM QoS support
Message-ID: <20191002222204.GH87296@google.com>
References: <cover.1570044052.git.leonard.crestez@nxp.com>
 <f538324afaeaef3256b3ea997e67562e940c2e3c.1570044052.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f538324afaeaef3256b3ea997e67562e940c2e3c.1570044052.git.leonard.crestez@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_152209_033126_CFA884BF 
X-CRM114-Status: GOOD (  24.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Wed, Oct 02, 2019 at 10:25:10PM +0300, Leonard Crestez wrote:
> Register notifiers with the PM QoS framework in order to respond to
> requests for DEV_PM_QOS_MIN_FREQUENCY and DEV_PM_QOS_MAX_FREQUENCY.
> 
> No notifiers are added by this patch but PM QoS constraints can be
> imposed externally (for example from other devices).
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> ---
>  drivers/devfreq/devfreq.c | 78 +++++++++++++++++++++++++++++++++++++++
>  include/linux/devfreq.h   |  5 +++
>  2 files changed, 83 insertions(+)
> 
> diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
> index 2d63692903ff..46f699b84a22 100644
> --- a/drivers/devfreq/devfreq.c
> +++ b/drivers/devfreq/devfreq.c
> @@ -22,15 +22,18 @@
>  #include <linux/platform_device.h>
>  #include <linux/list.h>
>  #include <linux/printk.h>
>  #include <linux/hrtimer.h>
>  #include <linux/of.h>
> +#include <linux/pm_qos.h>
>  #include "governor.h"
>  
>  #define CREATE_TRACE_POINTS
>  #include <trace/events/devfreq.h>
>  
> +#define HZ_PER_KHZ	1000
> +
>  static struct class *devfreq_class;
>  
>  /*
>   * devfreq core provides delayed work based load monitoring helper
>   * functions. Governors can use these or can implement their own
> @@ -109,10 +112,11 @@ static unsigned long find_available_max_freq(struct devfreq *devfreq)
>  static void get_freq_range(struct devfreq *devfreq,
>  			   unsigned long *min_freq,
>  			   unsigned long *max_freq)
>  {
>  	unsigned long *freq_table = devfreq->profile->freq_table;
> +	s32 qos_min_freq, qos_max_freq;
>  
>  	lockdep_assert_held(&devfreq->lock);
>  
>  	/*
>  	 * Initialize minimum/maximum frequency from freq table.
> @@ -125,10 +129,20 @@ static void get_freq_range(struct devfreq *devfreq,
>  	} else {
>  		*min_freq = freq_table[devfreq->profile->max_state - 1];
>  		*max_freq = freq_table[0];
>  	}
>  
> +	/* Apply constraints from PM QoS */
> +	qos_min_freq = dev_pm_qos_read_value(devfreq->dev.parent,
> +					     DEV_PM_QOS_MIN_FREQUENCY);
> +	qos_max_freq = dev_pm_qos_read_value(devfreq->dev.parent,
> +					     DEV_PM_QOS_MAX_FREQUENCY);
> +	*min_freq = max(*min_freq, (unsigned long)HZ_PER_KHZ * qos_min_freq);
> +	if (qos_max_freq != PM_QOS_MAX_FREQUENCY_DEFAULT_VALUE)
> +		*max_freq = min(*max_freq,
> +				(unsigned long)HZ_PER_KHZ * qos_max_freq);
> +
>  	/* Apply constraints from sysfs */
>  	*min_freq = max(*min_freq, devfreq->min_freq);
>  	*max_freq = min(*max_freq, devfreq->max_freq);
>  
>  	/* Apply constraints from OPP interface */
> @@ -608,24 +622,75 @@ static int devfreq_notifier_call(struct notifier_block *nb, unsigned long type,
>  			err);
>  
>  	return NOTIFY_OK;
>  }
>  
> +/**
> + * qos_notifier_call() - Common handler for QoS constraints.
> + * @devfreq:    the devfreq instance.
> + */
> +static int qos_notifier_call(struct devfreq *devfreq)
> +{
> +	int err;
> +
> +	mutex_lock(&devfreq->lock);
> +	err = update_devfreq(devfreq);
> +	mutex_unlock(&devfreq->lock);
> +	if (err)
> +		dev_err(devfreq->dev.parent,
> +			"failed to update frequency from PM QoS (%d)\n",
> +			err);
> +
> +	return NOTIFY_OK;
> +}
> +
> +/**
> + * qos_min_notifier_call() - Callback for QoS min_freq changes.
> + * @nb:		Should be devfreq->nb_min
> + */
> +static int qos_min_notifier_call(struct notifier_block *nb,
> +					 unsigned long val, void *ptr)
> +{
> +	return qos_notifier_call(container_of(nb, struct devfreq, nb_min));
> +}
> +
> +/**
> + * qos_max_notifier_call() - Callback for QoS max_freq changes.
> + * @nb:		Should be devfreq->nb_max
> + */
> +static int qos_max_notifier_call(struct notifier_block *nb,
> +					 unsigned long val, void *ptr)
> +{
> +	return qos_notifier_call(container_of(nb, struct devfreq, nb_max));
> +}
> +
>  /**
>   * devfreq_dev_release() - Callback for struct device to release the device.
>   * @dev:	the devfreq device
>   *
>   * Remove devfreq from the list and release its resources.
>   */
>  static void devfreq_dev_release(struct device *dev)
>  {
>  	struct devfreq *devfreq = to_devfreq(dev);
> +	int err;
>  
>  	mutex_lock(&devfreq_list_lock);
>  	list_del(&devfreq->node);
>  	mutex_unlock(&devfreq_list_lock);
>  
> +	err = dev_pm_qos_remove_notifier(devfreq->dev.parent, &devfreq->nb_max,
> +					 DEV_PM_QOS_MAX_FREQUENCY);
> +	if (err)
> +		dev_warn(dev->parent, "Failed to remove DEV_PM_QOS_MAX_FREQUENCY notifier: %d\n",
> +			 err);
> +	err = dev_pm_qos_remove_notifier(devfreq->dev.parent, &devfreq->nb_min,
> +			DEV_PM_QOS_MIN_FREQUENCY);
> +	if (err)
> +		dev_warn(dev->parent, "Failed to remove DEV_PM_QOS_MIN_FREQUENCY notifier: %d\n",
> +			 err);
> +
>  	if (devfreq->profile->exit)
>  		devfreq->profile->exit(devfreq->dev.parent);
>

I was concerned there might be a race where the notifier is still
running, but I confirmed that dev_pm_qos_mtx is held by
dev_pm_qos_remove_notifier() and also when the notifiers are called.

>  	kfree(devfreq->time_in_state);
>  	kfree(devfreq->trans_table);
> @@ -735,10 +800,22 @@ struct devfreq *devfreq_add_device(struct device *dev,
>  	if (err) {
>  		put_device(&devfreq->dev);
>  		goto err_out;
>  	}
>  
> +	devfreq->nb_min.notifier_call = qos_min_notifier_call;
> +	err = dev_pm_qos_add_notifier(devfreq->dev.parent, &devfreq->nb_min,
> +				      DEV_PM_QOS_MIN_FREQUENCY);
> +	if (err)
> +		goto err_devfreq;
> +
> +	devfreq->nb_max.notifier_call = qos_max_notifier_call;
> +	err = dev_pm_qos_add_notifier(devfreq->dev.parent, &devfreq->nb_max,
> +				      DEV_PM_QOS_MAX_FREQUENCY);
> +	if (err)
> +		goto err_devfreq;
> +
>  	mutex_lock(&devfreq_list_lock);
>  
>  	governor = try_then_request_governor(devfreq->governor_name);
>  	if (IS_ERR(governor)) {
>  		dev_err(dev, "%s: Unable to find governor for the device\n",
> @@ -762,10 +839,11 @@ struct devfreq *devfreq_add_device(struct device *dev,
>  
>  	return devfreq;
>  
>  err_init:
>  	mutex_unlock(&devfreq_list_lock);
> +err_devfreq:
>  	devfreq_remove_device(devfreq);
>  	return ERR_PTR(err);
>  
>  err_dev:
>  	/*
> diff --git a/include/linux/devfreq.h b/include/linux/devfreq.h
> index 2bae9ed3c783..8b92ccbd1962 100644
> --- a/include/linux/devfreq.h
> +++ b/include/linux/devfreq.h
> @@ -134,10 +134,12 @@ struct devfreq_dev_profile {
>   * @total_trans:	Number of devfreq transitions
>   * @trans_table:	Statistics of devfreq transitions
>   * @time_in_state:	Statistics of devfreq states
>   * @last_stat_updated:	The last time stat updated
>   * @transition_notifier_list: list head of DEVFREQ_TRANSITION_NOTIFIER notifier
> + * @nb_min:		Notifier block for DEV_PM_QOS_MIN_FREQUENCY
> + * @nb_max:		Notifier block for DEV_PM_QOS_MAX_FREQUENCY
>   *
>   * This structure stores the devfreq information for a give device.
>   *
>   * Note that when a governor accesses entries in struct devfreq in its
>   * functions except for the context of callbacks defined in struct
> @@ -176,10 +178,13 @@ struct devfreq {
>  	unsigned int *trans_table;
>  	unsigned long *time_in_state;
>  	unsigned long last_stat_updated;
>  
>  	struct srcu_notifier_head transition_notifier_list;
> +
> +	struct notifier_block nb_min;
> +	struct notifier_block nb_max;
>  };
>  
>  struct devfreq_freqs {
>  	unsigned long old;
>  	unsigned long new;
> -- 
> 2.17.1
> 

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
