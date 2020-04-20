Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 987921B142A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 20:16:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6wYKLblAI1y6gdWY6p3s/VwEGmVPaxtzoojKMYAjiGY=; b=AlH1pTSDDCLJoJ
	usUNwboqkei9MLNjj58ixcMB8sAot/3UZjD+sIBvI8HyyBVObAG+SQ+miS8ehBcR8qRUzUREjNzVM
	UGgsyvF63sJ3XNn6QYCEQU67P5D1iSpwh/2bjdS0uE6yEoLSECvKH+QCOa75YOLShNd+3oWzXkJ3h
	Ua0vuhqj5xyULqwEijrk6OBajs0rVyxkRBpg2+jIZXYQui27YaDAVEz6jC5dHW8mjfGT3crQjVDd+
	XvN2ZmM172VnEYQ95Nn8YnIxKDvn/LNCXnbNDIbV+mJs7ttAlPxIS25vYVoUjSX7V1DAirjRBjBQK
	ew3M/xmazJ7VPfjq1ILg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQay6-0000ru-0G; Mon, 20 Apr 2020 18:16:30 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQaxq-0000q9-Mw
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 18:16:16 +0000
Received: by mail-pl1-x644.google.com with SMTP id h11so4238668plr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 11:16:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=EiuXHkrk0vsfWG/qt3hSHaym5zGT7h2UROgYXWGq9eo=;
 b=hBTdDntvpVg0IIqGsUj9cxbjK4Qg55shR27nA5vdqHAiSM+74YJQurUEAdatqZ9NLO
 6jDb9ut2UzyNLrtI6J2Go61vmdxRsPi0wOocRBOP3ATe0pTun1goJQx/elhijFdKB58o
 vr0oAsqTcAB6WCJILZCrrU1SKyVXSGD0KTxUgcSf8HvfbWdCVGloeNXD8nZukYc7F8oD
 otIxKYfUIcw8VfhHy0tSZMc1Kejs+bvfBBwMkwLOH+WHSxRE+KV/aQIGDgKcYJt4930I
 pTl1zBxEysjCwv+/hFvtqEeasXxTfds3gFwIUzEwbXVzBkrC2BrnX/5N9nHYv+ZweTGI
 6pSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=EiuXHkrk0vsfWG/qt3hSHaym5zGT7h2UROgYXWGq9eo=;
 b=pHMlYmCrI1YIH/BCsfTze/KXAD4qp3IbI2EZj1gJkt+tS9JSgq7gkh+I5RC89nimFm
 NyiParCFbPp+IzM6RUVIXqWYLNQh4RilBQ2dScjVtkrUJuDsyHS5O/X2vtQyYoCxfOHF
 iE7bcdmzZd0eEhETz3lp45ECG5/REsmKtjth0HOuCa5GnadsQ/M/KVi97ZXNBs5wVT2e
 mUJ4eU8Jx1j+N1ANFeTHf2aAhksj52eXc2yuy+pCdsqCchlwX6tJRZ/D3+MdxhJ2utQc
 DNVvDPPcH0XD8v+thlFWlRqnR6MmKkROwb2FdWW2LP/rFvlu/Q0iVMZZa3d54uF6yHXJ
 q23A==
X-Gm-Message-State: AGi0PuZn6sS/UOOq6JI0i/4N9VeYEAVYWBUuZPyyNXFJJjQJLv/FmBII
 28Jky8FTjvBqqURwQEKQDSPXxQ==
X-Google-Smtp-Source: APiQypIUqKTu+RkEQuSP9Va6FrnJzr5Ynm5ut3wNKkFsCTRfBxpNrQwQhHPlD9C2X1sA5hbgqzPxGA==
X-Received: by 2002:a17:902:8345:: with SMTP id
 z5mr14272589pln.97.1587406574133; 
 Mon, 20 Apr 2020 11:16:14 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id t103sm14709pjb.46.2020.04.20.11.16.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Apr 2020 11:16:13 -0700 (PDT)
Date: Mon, 20 Apr 2020 12:16:11 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Mike Leach <mike.leach@linaro.org>
Subject: Re: [PATCH] coresight: etmv4: Update default filter and
 initialisation.
Message-ID: <20200420181611.GB25885@xps15>
References: <20200415201030.15617-1-mike.leach@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200415201030.15617-1-mike.leach@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_111614_779311_C196993C 
X-CRM114-Status: GOOD (  19.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
 suzuki.poulose@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 15, 2020 at 09:10:30PM +0100, Mike Leach wrote:
> Differing default states set on driver init / perf init and as a result
> of a sysfs reset.
> 
> The ETMv4 can be programmed to trace the entire instruction address range
> without the need to use address comparator filter resources.
> (Described in the ETMv4.x technical reference manual)
> 
> sysfs reset was using this method, perf and default driver init were setup
> with an address range comparator for the entire address range.
> 
> The perf / driver init has been altered to use the method without needing
> any comparator address hardware.
> 
> Minor adjustment to the vinst_ctrl register initialisation to ensure
> correct zero initialisation.
> 
> Applies to Linux 5.7-rc1, tested on Juno-r1 and DB410c platforms.
> 
> Signed-off-by: Mike Leach <mike.leach@linaro.org>

Applied - thanks,
Mathieu

> ---
>  .../coresight/coresight-etm4x-sysfs.c         |  2 +-
>  drivers/hwtracing/coresight/coresight-etm4x.c | 23 +++++--------------
>  2 files changed, 7 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
> index ce41482431f9..b673e738bc9a 100644
> --- a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
> +++ b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
> @@ -205,7 +205,7 @@ static ssize_t reset_store(struct device *dev,
>  	 * started state. ARM recommends start-stop logic is set before
>  	 * each trace run.
>  	 */
> -	config->vinst_ctrl |= BIT(0);
> +	config->vinst_ctrl = BIT(0);
>  	if (drvdata->nr_addr_cmp == true) {
>  		config->mode |= ETM_MODE_VIEWINST_STARTSTOP;
>  		/* SSSTATUS, bit[9] */
> diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
> index a90d757f7043..58ae5498ecf1 100644
> --- a/drivers/hwtracing/coresight/coresight-etm4x.c
> +++ b/drivers/hwtracing/coresight/coresight-etm4x.c
> @@ -791,7 +791,7 @@ static void etm4_set_default_config(struct etmv4_config *config)
>  	config->ts_ctrl = 0x0;
>  
>  	/* TRCVICTLR::EVENT = 0x01, select the always on logic */
> -	config->vinst_ctrl |= BIT(0);
> +	config->vinst_ctrl = BIT(0);
>  }
>  
>  static u64 etm4_get_ns_access_type(struct etmv4_config *config)
> @@ -894,17 +894,8 @@ static void etm4_set_start_stop_filter(struct etmv4_config *config,
>  
>  static void etm4_set_default_filter(struct etmv4_config *config)
>  {
> -	u64 start, stop;
> -
> -	/*
> -	 * Configure address range comparator '0' to encompass all
> -	 * possible addresses.
> -	 */
> -	start = 0x0;
> -	stop = ~0x0;
> -
> -	etm4_set_comparator_filter(config, start, stop,
> -				   ETM_DEFAULT_ADDR_COMP);
> +	/* Trace everything 'default' filter achieved by no filtering */
> +	config->viiectlr = 0x0;
>  
>  	/*
>  	 * TRCVICTLR::SSSTATUS == 1, the start-stop logic is
> @@ -925,11 +916,9 @@ static void etm4_set_default(struct etmv4_config *config)
>  	/*
>  	 * Make default initialisation trace everything
>  	 *
> -	 * Select the "always true" resource selector on the
> -	 * "Enablign Event" line and configure address range comparator
> -	 * '0' to trace all the possible address range.  From there
> -	 * configure the "include/exclude" engine to include address
> -	 * range comparator '0'.
> +	 * This is done by a minimum default config sufficient to enable
> +	 * full instruction trace - with a default filter for trace all
> +	 * achieved by having no filtering.
>  	 */
>  	etm4_set_default_config(config);
>  	etm4_set_default_filter(config);
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
