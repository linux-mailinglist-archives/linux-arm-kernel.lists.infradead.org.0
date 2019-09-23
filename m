Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D52D5BBE15
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 23:42:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gzC73LpikYE5hykfkLWOHxfWQTHGiyxxur3gZ6v6mMQ=; b=JcHYjjnKct0e/X
	sqNYCAanc3Wiw/8Mdz0vAjB7IQuzmzY+uidLAktnRNVYE/rI8drRSHmlrIGEHPqLFg+J5A24RD1Pi
	di7H+OoRVCUPKbddxIlTdTMJIXacZnFBO04Y+eGxwL3qNgv3E9EfZ1CeaGQjnSDpWpQJuCIrDkwz7
	driSSmG0gfe6kADDdG/Juc8AemK1mGhGlpvSnniRWbioeZXmsma45hOICdUs95Vp2U2iEO3N2aIQ4
	34kS5WO9mGcuJtXGoYTnJIqs4cWiEO9eqVuomYYPf3/kmiP+IkJl6xydXqSK+pH0qgfevMmefptFE
	dadFiB8pisy4smVOOPfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCW6C-0007IH-Cd; Mon, 23 Sep 2019 21:42:24 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCW63-0007HM-Se
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 21:42:17 +0000
Received: by mail-pl1-x642.google.com with SMTP id e5so7086751pls.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 14:42:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=LN2jcukuPHy9o4Jb1zZq4UGAS0V2HgpSfI+T3t4oJ94=;
 b=Ps6OG8v5rRsTroOwDDLZ4nW8gYvFsQQGX4I82xbw3H2OZQIfJNPNUW9kRrR4dvQzzj
 Y9CW4mV1mP9FL5g4ZkahEmOdq6uuUoHnIwQkOL3FDp9REe3837X6bLaZZVSTN0vuK/F1
 DrA7GS2LGLQaBYQdhBMYzZG0r9mTckUwbSJ30=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=LN2jcukuPHy9o4Jb1zZq4UGAS0V2HgpSfI+T3t4oJ94=;
 b=QO/TCn/NMLlYSHgOWTUsUqDqRM5q/aCbrn+3LFuRAvBE+qI1JZeXjIWNpcGt1RZG/1
 CZAP4tlRIEPddijtgoSmOitS2auCyeaRgjmWBFiUvQOlRzYKReIM7b7WkJX1D8AbZ+c2
 as5hZ1TwsFc2NelwM9le3BPjSle1fbuOO6M61KQxqwmoTXubi/IXU6yZmNr9FmyeIRF/
 3X1Y7e/5HtbD2Q/wFo0vEJnwwr6yiocjMdhDqoYIQQkYOktbmH2KTlSGHq1nfg7SXx7d
 uFIzh3jBMHGMuzu1HL7Sp2ZIQUjz22WWS/+vK2d4vkAMj8SnaLZjn8mXRFbZTW3iOU00
 LPKg==
X-Gm-Message-State: APjAAAXtsr8tOgFHZ9jgw9EDm+ji1X4lcv/n5A+1eOLerF8PIV0haqxk
 GS1kklsTUeMkcpYCx/dYR/6wWQ==
X-Google-Smtp-Source: APXvYqwUgQI62mHf0qjDK4hdTJErmArRYu2PmE5qeBv5kbgiK8V+DnhYLpDqt6ga3PV3FxYn+pWvdw==
X-Received: by 2002:a17:902:8484:: with SMTP id
 c4mr1879668plo.223.1569274930403; 
 Mon, 23 Sep 2019 14:42:10 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id k31sm18848493pjb.14.2019.09.23.14.42.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 23 Sep 2019 14:42:09 -0700 (PDT)
Date: Mon, 23 Sep 2019 14:42:07 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH v7 5/6] PM / devfreq: Add PM QoS support
Message-ID: <20190923214207.GG133864@google.com>
References: <cover.1569272883.git.leonard.crestez@nxp.com>
 <e9868310f9543b4f4a6c7bbe5d4d015da9a0e71d.1569272883.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e9868310f9543b4f4a6c7bbe5d4d015da9a0e71d.1569272883.git.leonard.crestez@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_144215_929513_7C589048 
X-CRM114-Status: GOOD (  19.05  )
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
 Alexandre Bailon <abailon@baylibre.com>, Martin Kepplinger <martink@posteo.de>,
 Georgi Djakov <georgi.djakov@linaro.org>, linux-arm-kernel@lists.infradead.org,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 24, 2019 at 12:10:33AM +0300, Leonard Crestez wrote:
> Register notifiers with the PM QoS framework in order to respond to
> requests for DEV_PM_QOS_MIN_FREQUENCY and DEV_PM_QOS_MAX_FREQUENCY.
> 
> No notifiers are added by this patch but PM QoS constraints can be
> imposed externally (for example from other devices).
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> ---
>  drivers/devfreq/devfreq.c | 76 +++++++++++++++++++++++++++++++++++++++
>  include/linux/devfreq.h   |  5 +++
>  2 files changed, 81 insertions(+)
> 
> diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
> index 7f152a582e78..9887408f23bb 100644
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
> +	/* constraints from PM QoS */
> +	*min_freq = max(*min_freq, HZ_PER_KHZ * (unsigned long)dev_pm_qos_read_value(
> +				devfreq->dev.parent, DEV_PM_QOS_MIN_FREQUENCY));
> +	*max_freq = min(*max_freq, HZ_PER_KHZ * (unsigned long)dev_pm_qos_read_value(
> +				devfreq->dev.parent, DEV_PM_QOS_MAX_FREQUENCY));
> +
>  	/* constraints from sysfs */
>  	*min_freq = max(*min_freq, devfreq->min_freq);
>  	*max_freq = min(*max_freq, devfreq->max_freq);
>  
>  	/* constraints from OPP interface */
> @@ -605,10 +614,53 @@ static int devfreq_notifier_call(struct notifier_block *nb, unsigned long type,
>  	mutex_unlock(&devfreq->lock);
>  
>  	return ret;
>  }
>  
> +/**
> + * devfreq_qos_notifier_call() - Common handler for QoS constraints.
> + * @devfreq:    the devfreq instance.
> + */
> +static int devfreq_qos_notifier_call(struct devfreq *devfreq)
> +{
> +	int err;
> +
> +	mutex_lock(&devfreq->lock);
> +	err = update_devfreq(devfreq);
> +	mutex_unlock(&devfreq->lock);
> +	if (err)
> +		dev_err(&devfreq->dev, "dvfs for QoS constraints"
> +				" failed with (%d) error\n", err);

nit: DVFS. devfreq_monitor() also uses the lower-case acronym though, so
you can claim this is consistent :)

I'd prefer to spare you another trivial re-spin, but unfortunately
breaking the log message into multiple lines is a coding style
violation:

Documentation/process/coding-style.rst
  2) Breaking long lines and strings

  However, never break user-visible strings such as printk messages,
  because that breaks the ability to grep for them.


With that fixed:

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
