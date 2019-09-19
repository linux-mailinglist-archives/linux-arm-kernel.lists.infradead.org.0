Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4C7DB813B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 21:13:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xe4V2SqTYoPo8coWU+PepRtc1Yd5EKnjfPIFMnpocfQ=; b=rwGcvNmC/j7kxz
	kpVflBjUtCe7ByXTDf/T/Y99yXmbAy4rNWxY7eKBAU0Cr1XYbWlccKbYgn31TpdxmvKngUaQtJ8N0
	9Gs6+S6W/EJc5LIoWCWfJbq7I2QBXavuuSSWUUlaHGkjXE9tNmjgZ7kQ3nRBw4OCwrNljO0a5FYTp
	6pKGeMERiBC49lWN/jx1r6cllvZUKrB1eT67o2RDbsAtuLwKMozuhBKWsl0V6y4kkA8qN2KoiYt+O
	bAvvbuQM1cKdAEwKqLY2YeRI/QrQ3iKK4ScvUb3dTeASlu2r8+rpeHYIV9sqJx5o+YmrDXjMFw5GI
	5b6oTs8ThxFMMoM7e0Ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB1rs-0003Ho-1M; Thu, 19 Sep 2019 19:13:28 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB1rR-0003HM-K5
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 19:13:03 +0000
Received: by mail-pg1-x544.google.com with SMTP id u72so2405500pgb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 12:13:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=fsOi0SFfSN2yoIxCUiiprAv5GXxCTBdV5Rjzv/QvUC4=;
 b=Ygfi5PLgvOdlLEUfSsLPZjXG42DiRLdkLAvpYnycAmGDmrUr/TIXlWJAcIxsfn79Bs
 YBh/r0Wba9QRQLdw5gxXI5Pltq2MPJ+fvVPdlXtvGRtMYKgmz+DmXdqNDUq1ZbxsfYxB
 W+0CLUNYBHYIdtx1phNl/6TFF/PDM/vFDeWxs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=fsOi0SFfSN2yoIxCUiiprAv5GXxCTBdV5Rjzv/QvUC4=;
 b=WF/w+GbWIlUI3OKIPQK65cBhMmG6COriKQbPQALomZxtye+VEwUIvo/QyAZ095CiZI
 KuLzcCR2FPuBCqCXbyqIIgYj6G9pcUHP0fHvIqCYpJFLGyC4csHUs3oQTZUyvIJUfwZN
 jjE+O/8B5AtzzTq/p39ALMIGa5gL4hAAqYr1r48TqpZ2NcmIpTS+2+LffwZ76/QgUdOU
 YoJgAExuhv7ExI3BlbDW2ZWWnywQyWemgYuTssyYB4tyz4SuzjzT/ZerQKrvZMeauum0
 +QJRlT4JzQ7klzbs/OvtfauK23BU0HQdZDnDxzY1b1xnBLKPW5RNpyPs14EjGLPUp9Ln
 /tbA==
X-Gm-Message-State: APjAAAVurL5AmzmJjPL7gqGfOA9vvKpZK8k/SMuNGwKaJ+CzVBkzRcXd
 9w+PWBiWLzUMsT9Tc6BGcvSshQ==
X-Google-Smtp-Source: APXvYqzCGWxfh2CHzGuU/6Ulwz6TII5MmWjYtAf1Fq1mgvskK7rVHoYdtG5FhPUFjK9ZNIeMNLYA7Q==
X-Received: by 2002:a63:9557:: with SMTP id t23mr10546733pgn.236.1568920380569; 
 Thu, 19 Sep 2019 12:13:00 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id 22sm11354771pfo.131.2019.09.19.12.12.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 19 Sep 2019 12:12:59 -0700 (PDT)
Date: Thu, 19 Sep 2019 12:12:58 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH 6/8] PM / devfreq: Add dev_pm_qos support
Message-ID: <20190919191258.GU133864@google.com>
References: <cover.1568764439.git.leonard.crestez@nxp.com>
 <feab364d702ba62102f212b7d415d9f768159163.1568764439.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <feab364d702ba62102f212b7d415d9f768159163.1568764439.git.leonard.crestez@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_121301_682689_AA650055 
X-CRM114-Status: GOOD (  23.35  )
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

On Wed, Sep 18, 2019 at 03:18:25AM +0300, Leonard Crestez wrote:
> Register notifiers with the pm_qos framework in order to respond to
> requests for MIN_FREQUENCY and MAX_FREQUENCY.

To make it clear that this change on it's own is a NOP maybe add
something like "No constraints are added for now though.", as in
67d874c3b2c6 ("cpufreq: Register notifiers with the PM QoS framework")

> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> ---
>  drivers/devfreq/devfreq.c | 71 +++++++++++++++++++++++++++++++++++++++
>  include/linux/devfreq.h   |  5 +++
>  2 files changed, 76 insertions(+)
> 
> diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
> index 51a4179e2c69..d8d57318b12c 100644
> --- a/drivers/devfreq/devfreq.c
> +++ b/drivers/devfreq/devfreq.c
> @@ -22,17 +22,20 @@
>  #include <linux/platform_device.h>
>  #include <linux/list.h>
>  #include <linux/printk.h>
>  #include <linux/hrtimer.h>
>  #include <linux/of.h>
> +#include <linux/pm_qos.h>
>  #include "governor.h"
>  
>  #define HZ_PER_KHZ 1000
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
> @@ -123,10 +126,16 @@ static void devfreq_get_freq_range(struct devfreq *devfreq,
>  	} else {
>  		*min_freq = freq_table[devfreq->profile->max_state - 1];
>  		*max_freq = freq_table[0];
>  	}
>  
> +	/* constraints from dev_pm_qos: */

nit: QoS constraints?

> +	*min_freq = max(*min_freq, HZ_PER_KHZ * (unsigned long)dev_pm_qos_read_value(
> +				devfreq->dev.parent, DEV_PM_QOS_MIN_FREQUENCY));
> +	*max_freq = min(*max_freq, HZ_PER_KHZ * (unsigned long)dev_pm_qos_read_value(
> +				devfreq->dev.parent, DEV_PM_QOS_MAX_FREQUENCY));
> +
>  	/* constraints from sysfs: */
>  	*min_freq = max(*min_freq, devfreq->min_freq);
>  	*max_freq = min(*max_freq, devfreq->max_freq);
>  
>  	/* constraints from opp interface: */
> @@ -605,10 +614,49 @@ static int devfreq_notifier_call(struct notifier_block *nb, unsigned long type,
>  	mutex_unlock(&devfreq->lock);
>  
>  	return ret;
>  }
>  
> +/**
> + * devfreq_qos_notifier_call() - Common handler for qos freq changes.

nit: QoS

s/freq/constraint/ ?

> + * @devfreq:    the devfreq instance.
> + */
> +static int devfreq_qos_notifier_call(struct devfreq *devfreq)
> +{
> +	int ret;
> +
> +	mutex_lock(&devfreq->lock);
> +	ret = update_devfreq(devfreq);
> +	mutex_unlock(&devfreq->lock);
> +
> +	return ret;
> +}
> +
> +/**
> + * devfreq_qos_min_notifier_call() - Callback for qos min_freq changes.

nit: QoS

> + * @nb:		Should to be devfreq->nb_min

s/to//

> + */
> +static int devfreq_qos_min_notifier_call(struct notifier_block *nb,
> +					 unsigned long val, void *ptr)
> +{
> +	struct devfreq *devfreq = container_of(nb, struct devfreq, nb_min);
> +
> +	return devfreq_qos_notifier_call(devfreq);
> +}
> +
> +/**
> + * devfreq_qos_max_notifier_call() - Callback for qos min_freq changes.

nit: QoS

s/min/max/

> + * @nb:		Should to be devfreq->nb_max

s/to//

> + */
> +static int devfreq_qos_max_notifier_call(struct notifier_block *nb,
> +					 unsigned long val, void *ptr)
> +{
> +	struct devfreq *devfreq = container_of(nb, struct devfreq, nb_max);
> +
> +	return devfreq_qos_notifier_call(devfreq);
> +}
> +
>  /**
>   * devfreq_dev_release() - Callback for struct device to release the device.
>   * @dev:	the devfreq device
>   *
>   * Remove devfreq from the list and release its resources.
> @@ -619,10 +667,15 @@ static void devfreq_dev_release(struct device *dev)
>  
>  	mutex_lock(&devfreq_list_lock);
>  	list_del(&devfreq->node);
>  	mutex_unlock(&devfreq_list_lock);
>  
> +	dev_pm_qos_remove_notifier(devfreq->dev.parent, &devfreq->nb_max,
> +			DEV_PM_QOS_MAX_FREQUENCY);
> +	dev_pm_qos_remove_notifier(devfreq->dev.parent, &devfreq->nb_min,
> +			DEV_PM_QOS_MIN_FREQUENCY);
> +

mega-nit: removing 'max' then 'min' does things in reverse order as
during initialization, which is common practice. But since the order
here doesn't really matter I'd stick to the common min/max order,
might readers save a few milli-seconds wondering why 'max' comes first.

>  	if (devfreq->profile->exit)
>  		devfreq->profile->exit(devfreq->dev.parent);
>  
>  	mutex_destroy(&devfreq->lock);
>  	kfree(devfreq->time_in_state);
> @@ -732,10 +785,27 @@ struct devfreq *devfreq_add_device(struct device *dev,
>  	if (err) {
>  		put_device(&devfreq->dev);
>  		goto err_out;
>  	}
>  
> +	/*
> +	 * Register notifiers for updates to min_freq/max_freq after device is

nit: min/max_freq?

> +	 * initialized (and we can handle notifications) but before the governor
> +	 * is started (which should do an initial enforcement of constraints)
> +	 */
> +	devfreq->nb_min.notifier_call = devfreq_qos_min_notifier_call;
> +	err = dev_pm_qos_add_notifier(devfreq->dev.parent, &devfreq->nb_min,
> +				      DEV_PM_QOS_MIN_FREQUENCY);
> +	if (err)
> +		goto err_devfreq;

IIUC you rely on the notifiers being removed by
devfreq_dev_release(). Does dev_pm_qos_remove_notifier() behave
gracefully if the notifier is not initialized/added or do we need
to use BLOCKING_NOTIFIER_INIT() or similar?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
