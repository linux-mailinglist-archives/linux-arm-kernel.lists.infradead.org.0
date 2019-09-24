Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D9B9BD26F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 21:11:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5vnaFxFFeIg455hUQj98FZvzrQv4k0Vx8ShacIS8ufk=; b=nF5Q21W1FrgdSC
	9hE7CQwfuzNwSRuz50p/Q6XLytiXUz9fU5kND82VU92bkfUHX5lnDIQaEc5iJUBf3vpCnXnitjT7w
	rjZqVBqEQpbzOHAujlayBoxC2KsDTY9YKHvrFVAGXt5tUjY0n9bZBc8wun1qleqQZ88AJ8vpUTZw6
	7Uccxve0a8MsdIEgyC4wiG5VOqkax3jJwNZAo5+TLDjVTD/a4UEYHrzPKzTKlnXHNRWPsQsuN01c9
	aMXZFNSzeUZIvjUM+YpdUa6LbsessQcF4uQXCcsyeHueZhUeNX9lgc2Xx9/KYaOjLEb4TH5mh1cG5
	r+qEN1LSA8+exq4ni4PA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCqDv-0005TR-HP; Tue, 24 Sep 2019 19:11:43 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCqDg-0005Sw-DU
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 19:11:31 +0000
Received: by mail-pg1-x543.google.com with SMTP id u17so1817907pgi.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Sep 2019 12:11:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=DR2VitmOL1QcaChutYPiTVC0w58w/UkjdupN/fmWcR4=;
 b=HJNRMaM2N+FZ/gIAOAKQam1gJGnSw9J/vcA+UJZH5iJdYFXdgiTGlvxjT3t3euachh
 juH6Eh+uazNTGHOM2DFeSbwCTgUq74sizZEQi73PaIEj+kTHzmllAUtJ63ABesG2dPRH
 VLG8lM1cJe59PxURS6nBrK6nB9UCwlc7wXYLY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=DR2VitmOL1QcaChutYPiTVC0w58w/UkjdupN/fmWcR4=;
 b=Y3SkGcvm4XfCO1s9fSjJCp1tfy0VBvH2l18ZVVkoEX2NGzV6onUJ2hnRb6mdk4j+YQ
 ZUxOjn/XAIkmVxIvuEkZsjLXaBEI8KMI/KYJo6Ywwp5a9LwPj+Xzl4qKg1K/bMiGjdUL
 C63cGBed03xJCaI0aNVI+2rokNqgx/h858MHtT4SUUPpLC+9eB1zc9RQNar4pymwFHNf
 g6B7fN0UyxCE72UI1JiN/co1uz5UxBRN4XPUA1XVgrT6NSQC5DyfijPIb2SEsKX5afYM
 UIOmsUMZk7Mz48W17MlE0gLyfQN5bbFKPv5Wj3gX6BPVwttj8V/9ok1aqVfs+9nKdcS3
 JupQ==
X-Gm-Message-State: APjAAAVQCYpy5QKVuDatOigFb+GS21Hbyr5bSVR/kYxSGFSTivV39ntS
 FK+E6AkPW+jRA0R+kN7IjGB/bA==
X-Google-Smtp-Source: APXvYqymt/aK7Y4we0b/lvxFn9Qe8uVGQPu8bA3GOe2Lv0/RUV+DaR0eX9nkbfIlmO29Kxnj+WlZog==
X-Received: by 2002:aa7:8b17:: with SMTP id f23mr5180364pfd.143.1569352287524; 
 Tue, 24 Sep 2019 12:11:27 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id 26sm704115pjg.21.2019.09.24.12.11.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 24 Sep 2019 12:11:26 -0700 (PDT)
Date: Tue, 24 Sep 2019 12:11:24 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH v8 5/6] PM / devfreq: Add PM QoS support
Message-ID: <20190924191124.GJ133864@google.com>
References: <cover.1569319738.git.leonard.crestez@nxp.com>
 <58fdd2c226a4e76a3d9427baab7dd5c23af842ab.1569319738.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <58fdd2c226a4e76a3d9427baab7dd5c23af842ab.1569319738.git.leonard.crestez@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_121128_484917_AC202E5B 
X-CRM114-Status: GOOD (  16.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Tue, Sep 24, 2019 at 01:11:29PM +0300, Leonard Crestez wrote:
> Register notifiers with the PM QoS framework in order to respond to
> requests for DEV_PM_QOS_MIN_FREQUENCY and DEV_PM_QOS_MAX_FREQUENCY.
> 
> No notifiers are added by this patch but PM QoS constraints can be
> imposed externally (for example from other devices).
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
> ---
>  drivers/devfreq/devfreq.c | 75 +++++++++++++++++++++++++++++++++++++++
>  include/linux/devfreq.h   |  5 +++
>  2 files changed, 80 insertions(+)
> 
> diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
> index eee403e70c84..784f3e40536a 100644
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
> +	unsigned long qos_min_freq, qos_max_freq;
>  
>  	lockdep_assert_held(&devfreq->lock);
>  
>  	/*
>  	 * Init min/max frequency from freq table.
> @@ -125,10 +129,18 @@ static void get_freq_range(struct devfreq *devfreq,
>  	} else {
>  		*min_freq = freq_table[devfreq->profile->max_state - 1];
>  		*max_freq = freq_table[0];
>  	}
>  
> +	/* constraints from PM QoS */
> +	qos_min_freq = dev_pm_qos_read_value(devfreq->dev.parent,
> +					     DEV_PM_QOS_MIN_FREQUENCY);
> +	qos_max_freq = dev_pm_qos_read_value(devfreq->dev.parent,
> +					     DEV_PM_QOS_MIN_FREQUENCY);

This needs to be DEV_PM_QOS_MAX_FREQUENCY. I missed this in the earlier
reviews, but stumbled across it when testing.

!Reviewed-by: Matthias Kaehlcke <mka@chromium.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
