Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 008A6114639
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 18:49:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1lR2Cj/90G21fnTaPFojJpD6bKzpa3WU9SMkamMKb1o=; b=LTDu7jl3AnVDAu
	zvkkDX65c8WQSrS2PFeQNoQpEmCCObhxB1vdS6+Ibz5CAOoaVTIUb15QydzU+cGLImMmTioeuOLgz
	aKleghPw9UaD3VpIk0eJNb/rvlmvxe7z8UBI98Z0Ez24Yjjtr7pKBgJ90ATiwePMYwt5kxguN3pPP
	bGoBcOo8t6UYQUrn3C0Fhz1ClSUVHYeU0k+rAQ7XKvt4Nkqxj0WOPO3MUhuaaI4GT4IkJXolspFXj
	H5LZ1ruD5NTyBKirCk4L3BVH/KiaV3rEgMa2r+My4/B/sqqkPnygPLTTxI5Bf6UZbQTHXccY1jqyW
	Rq6Shjagce/gPQ2BQezw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icvFN-0003Iq-V8; Thu, 05 Dec 2019 17:49:01 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icvFD-0003Fu-F6
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 17:48:52 +0000
Received: by mail-pj1-x1043.google.com with SMTP id w23so1587141pjd.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Dec 2019 09:48:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=I5d912MYAJV7WOySMZ2inDSLRZhcHr5jXA7MY3FsoXI=;
 b=X38JZEgX7yfJlOpqTqHrPssrpwQQEh60or9o8EzRxMIWmQHCiLCJ/zhQC/8L0EpNTV
 ICORf+RLfQiZPwWN/rPPp5/hRe8w4ASX5HAk1fiDUHIjKSwXkRvgOPD6N9EllVXDRXnX
 w7MRzx/XyYwKIDE5gzOLSHapHXI8zW4PP0btM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=I5d912MYAJV7WOySMZ2inDSLRZhcHr5jXA7MY3FsoXI=;
 b=S2TmN09kGv997ZuqO+Rvpyvt4oVmHT2SwaeLm7XmQP/R3l+ADfASAv+SxDWMYV5G7/
 Ir1IZIvkQJKG3O/J4cda2PjoJeA7wdAKBqYc8gv4LtRU+0pALkWhnpzVtfNa6YgrHf48
 L5WEfQtEIhki3fcZhJ+AgbT3/1Mjbh92kjKcuTgOHjnfxPzYnuslum+6ULx+/56EAr2v
 CmypcsanqxA5eKVKJAV58XTYmY3tW1h+ilehXr0LBEUQPEqgnQ2kokdRo2hEv+wDuyZY
 zVCPvzl2lmg1zhTvUrUmEbdJDmvM4pvYL62n9vQ0RVq+I2jvxNgUiGqxi5GgkgJMfLFE
 z8uA==
X-Gm-Message-State: APjAAAXGmrSriapMVLTcSUTz1PlmY/4WtkJ56DxGB6UpZcB9GtCns4oT
 aiUnJPqNXBsX0GZfZjbsAbfq9Q==
X-Google-Smtp-Source: APXvYqxfMUKZGT6P0TUfMuyW8oAlxX+Wy1kXyKhkiDjIudTd/T2t0aiQ+3RAHYm9wAj/+7FicLF9Iw==
X-Received: by 2002:a17:902:8201:: with SMTP id
 x1mr10263704pln.193.1575568127950; 
 Thu, 05 Dec 2019 09:48:47 -0800 (PST)
Received: from localhost ([2620:15c:202:1:4fff:7a6b:a335:8fde])
 by smtp.gmail.com with ESMTPSA id a13sm2259865pfc.40.2019.12.05.09.48.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 05 Dec 2019 09:48:47 -0800 (PST)
Date: Thu, 5 Dec 2019 09:48:46 -0800
From: Matthias Kaehlcke <mka@chromium.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH v2 1/2] PM / devfreq: Add PM QoS support
Message-ID: <20191205174846.GM228856@google.com>
References: <cover.1575540224.git.leonard.crestez@nxp.com>
 <eaef2de34fed598a1b6ffecc9010e281c6f36318.1575540224.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <eaef2de34fed598a1b6ffecc9010e281c6f36318.1575540224.git.leonard.crestez@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_094851_529468_9B504BA3 
X-CRM114-Status: GOOD (  17.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

On Thu, Dec 05, 2019 at 12:05:06PM +0200, Leonard Crestez wrote:
> Register notifiers with the PM QoS framework in order to respond to
> requests for DEV_PM_QOS_MIN_FREQUENCY and DEV_PM_QOS_MAX_FREQUENCY.
> 
> No notifiers are added by this patch but PM QoS constraints can be
> imposed externally (for example from other devices).
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> Acked-by: Chanwoo Choi <cw00.choi@samsung.com>
> ---
>  drivers/devfreq/devfreq.c | 77 +++++++++++++++++++++++++++++++++++++++
>  include/linux/devfreq.h   |  5 +++
>  2 files changed, 82 insertions(+)
> 
> diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
> index bdeb4189c978..e8b943fc4259 100644
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

The condition shouldn't be needed anymore now that
PM_QOS_MAX_FREQUENCY_DEFAULT_VALUE is S32_MAX and not -1.

> +		*max_freq = min(*max_freq,
> +				(unsigned long)HZ_PER_KHZ * qos_max_freq);
> +

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
Tested-by: Matthias Kaehlcke <mka@chromium.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
