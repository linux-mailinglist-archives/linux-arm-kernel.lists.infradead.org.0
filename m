Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 296C21CD91A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 13:57:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+PZXaGe/4Bl2D9RkgdO0L78JsbD3BVCZ5IB6T547E9M=; b=jCCQRko6e/R77a
	VGDYyh15cI9PWpCD46v7ZIYQdra88PRSrdrdLF1v6UicFAnzFXZ0KnneZTfk1OlxjfPFhhqJFECVs
	knYrt+oUgdgxPOz8Vhz0xETgHwNd3iW8gMMy22DZJTR3Y+ZubZqtHmDjvEyk721GfFmwtAYJUiFD4
	yLtUTcYK7ZVt0xe5F2hsySIJXLQYSapCkwx7mtDaIehVOna69WWxhjHii1wgEj0GJBlF2647itCox
	5zOgdGXeUHSm67U+ury12yMzkJBH3QEUiUI3/B/g6QjRdEutTHNdkCQeIuYSG83ZJus7GplJZMZkb
	ctBSM0E3vwjfEgq4w1bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY73w-0006ra-RE; Mon, 11 May 2020 11:57:36 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY73o-0006on-Kt
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 11:57:30 +0000
Received: by mail-wm1-x341.google.com with SMTP id y24so18920730wma.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 04:57:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=ETEJzrILDWcEXSuqI8CJBLVfITRJvsWlV8DeIS56yUg=;
 b=TYCFULo2Suie8IQQbYjij0fXBQIVOUeI8xv90SKGhM5ONz2C0tOD+JZgJvXZWV8rj1
 hVyNLva1zf1dfngbRmXj5nWT2LYLmXJYm7Vc5N0WBGJoZUG4D4sPk5K0DqdkpXUKs68N
 yNDAJiHCn8A02TXqcQ9lyTuTFNdWzUQNC3me3u/1RYQdyg8ABZSWn/yXuzOWlOc3IBmW
 kL+9ZFtfe+DRrR5ZQYEZqeLUyuRzdG+R/pYtfjhI/9bYEanyw2jau41e8wJJxf9efG+h
 7MEwuIBDRDzZqwEk16N8f4DzETeYRYp8/8fZ1m1afV8wanrkOItDXwjd39jiUMqFuWRK
 U3+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ETEJzrILDWcEXSuqI8CJBLVfITRJvsWlV8DeIS56yUg=;
 b=jlKx9B3DzqqOFP4JYfQR/OfBpVqUcDJt/p9KSj9Ks2YPG51z+LAwjy/qKPn4LIiK3v
 bSWwmzkmaZM6kumnpvgwvIvubU24VD7pmPgQneIAx/2eydPgLwL/KSx4mlVahl8qC5IQ
 wvDG3etnaLuKwJUf7jskMraMJFiQzP1p1oOD/99va0kLza5+GPDJLDywlExGrOSkShT+
 gEvk6nJydEy+J8Qa7Mw+CCdx8xR7QZ0FthnmZv/Ch2xOpVBGZbPawQ4geLWvOtQ1JT6i
 lqCxBM4VWHwtPLxCMZ5AgVAUCjIABI//MbDKP8JUcMidGsqvEviG7FJcaxb2QhCs5AdE
 qHTg==
X-Gm-Message-State: AGi0Puas2hMCDNjWnSk256vBUBJi7vwpMbLL/j/44sPjfp4YzMh+wqVL
 AdlI19jtPYNzMsoeBWxziD6tTg==
X-Google-Smtp-Source: APiQypIA/BhPOSlxxVRft/M3ndyAAD/wbrIqEL1T+jhl+AK/cIZYzzYwO39nyIGbtRrwMvdTRb8hHw==
X-Received: by 2002:a7b:c755:: with SMTP id w21mr30469520wmk.120.1589198246663; 
 Mon, 11 May 2020 04:57:26 -0700 (PDT)
Received: from google.com ([2a00:79e0:d:110:d6cc:2030:37c1:9964])
 by smtp.gmail.com with ESMTPSA id y70sm27811096wmc.36.2020.05.11.04.57.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 04:57:25 -0700 (PDT)
Date: Mon, 11 May 2020 12:57:22 +0100
From: Quentin Perret <qperret@google.com>
To: Lukasz Luba <lukasz.luba@arm.com>
Subject: Re: [PATCH v7 03/15] PM / EM: update callback structure and add
 device pointer
Message-ID: <20200511115722.GA13741@google.com>
References: <20200511111912.3001-1-lukasz.luba@arm.com>
 <20200511111912.3001-4-lukasz.luba@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200511111912.3001-4-lukasz.luba@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_045728_713033_6FA8D967 
X-CRM114-Status: GOOD (  11.85  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: nm@ti.com, juri.lelli@redhat.com, peterz@infradead.org,
 viresh.kumar@linaro.org, liviu.dudau@arm.com, dri-devel@lists.freedesktop.org,
 bjorn.andersson@linaro.org, bsegall@google.com,
 alyssa.rosenzweig@collabora.com, festevam@gmail.com, mka@chromium.org,
 robh@kernel.org, amit.kucheria@verdurent.com, lorenzo.pieralisi@arm.com,
 khilman@kernel.org, agross@kernel.org, daniel.lezcano@linaro.org,
 steven.price@arm.com, cw00.choi@samsung.com, mingo@redhat.com,
 linux-imx@nxp.com, rui.zhang@intel.com, mgorman@suse.de, orjan.eide@arm.com,
 daniel@ffwll.ch, linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 s.hauer@pengutronix.de, rostedt@goodmis.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 linux-omap@vger.kernel.org, Dietmar.Eggemann@arm.com,
 linux-arm-kernel@lists.infradead.org, airlied@linux.ie,
 tomeu.vizoso@collabora.com, sboyd@kernel.org, rdunlap@infradead.org,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, b.zolnierkie@samsung.com,
 kernel@pengutronix.de, sudeep.holla@arm.com, patrick.bellasi@matbug.net,
 shawnguo@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Monday 11 May 2020 at 12:19:00 (+0100), Lukasz Luba wrote:
> diff --git a/drivers/cpufreq/scmi-cpufreq.c b/drivers/cpufreq/scmi-cpufreq.c
> index 61623e2ff149..11ee24e06d12 100644
> --- a/drivers/cpufreq/scmi-cpufreq.c
> +++ b/drivers/cpufreq/scmi-cpufreq.c
> @@ -103,17 +103,12 @@ scmi_get_sharing_cpus(struct device *cpu_dev, struct cpumask *cpumask)
>  }
>  
>  static int __maybe_unused
> -scmi_get_cpu_power(unsigned long *power, unsigned long *KHz, int cpu)
> +scmi_get_cpu_power(unsigned long *power, unsigned long *KHz,
> +		   struct device *cpu_dev)
>  {
> -	struct device *cpu_dev = get_cpu_device(cpu);
>  	unsigned long Hz;
>  	int ret, domain;
>  
> -	if (!cpu_dev) {
> -		pr_err("failed to get cpu%d device\n", cpu);
> -		return -ENODEV;
> -	}
> -
>  	domain = handle->perf_ops->device_domain_id(cpu_dev);
>  	if (domain < 0)
>  		return domain;
> @@ -200,7 +195,7 @@ static int scmi_cpufreq_init(struct cpufreq_policy *policy)
>  
>  	policy->fast_switch_possible = true;
>  
> -	em_register_perf_domain(policy->cpus, nr_opp, &em_cb);

So this one has no users after this patch right? I suppose you could
squash patch 05 in this one. But no big deal.

Acked-by: Quentin Perret <qperret@google.com>

> +	em_dev_register_perf_domain(cpu_dev, nr_opp, &em_cb, policy->cpus);
>  
>  	return 0;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
