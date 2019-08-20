Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9847A96BE3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 00:02:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5ZRfqCxvwG2BZZFwymcreDCSK9mcLZ3loOCXCaRRxS4=; b=FPWxtvWO+RRntz
	CLk0gcE+su1oB61a6geOr5FyB9YEcLpyrRBJQyqh6sTPC9UFsTDR/m1/A/by2yfaAv+lY2XOJ/3Ox
	LbEiTSmo5T1lvVsGIEI2EdKQXMuVYtb2OHh0uIVjQcnkvx6H83VQw8JkjqW8UgTO4ZGE9M3/c2VsP
	i6tNIjttGmjeGnvFZPjmTAEfiXRGtAI+ggJ4W2mSY2fT/I6UhAgnrplNJ3hj+hO6j6W4QcVMRcRU0
	hL4Ubh7QApHnMZGdCjzHAXInBNfIAlYxiu4xOhHhrl4Nev9riifZkYL0dqKVKH1nA0N/mjQ2wjrCK
	o0OOotzYs6d5kFYWNVJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0CCg-0001hU-5w; Tue, 20 Aug 2019 22:02:10 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0CCY-0001h1-27
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 22:02:03 +0000
Received: by mail-pg1-x543.google.com with SMTP id n190so93607pgn.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 15:02:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=9ZQLsyzqhVh7Zfzosb44Ff7U07lUOT5Bfuz7ROwvMZQ=;
 b=XLKoGX+CtJORubMV+kvl9nHgto5ldAvIs4Ijejfji2OZSGMu7Co5Dhi6zXH3JPPriR
 Dq2ZargQHaB1KugK9SHxalOuqQXeHE/D+QgcJqoGidFJfZYgo87cAu4WIXDtICkgqauU
 rVBuIX5QO7BlSuNyuM6TK0bH1LeOMo/JlgLX7geBqrodhDrgNRXyaTO8FsVCaD8lq1G/
 ywt2VdNElwdLi5Llr9t4hTUHUfX0Lg6KPZAPF/QwgjVwZjzu/H+qCcTeGOCyAVYX3l/K
 1Ouq9C/OZu5CNnglyPZRlsxfK5TkupZEEJ8KsEyF2zlCBD3NCve4Ns8vVlubXCJfN+1d
 r3KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=9ZQLsyzqhVh7Zfzosb44Ff7U07lUOT5Bfuz7ROwvMZQ=;
 b=rMpivXQ0Sf24aJcE8q8G3deMv0mgyTrqAWIRk10w2ypVTo57txAiHLzyVoeawhHnF0
 425A8us3lCI+Xb54taBBFHAj5loShMThQnE2FVQd7cufbmR42Fh6IOrOe8QXIQXoCBex
 +YTwTm7+kk4jjW5Vi2zCzfqnUga1SccwbL7fmT1e96RF9Joee83vQoDNhnoaHGLkUlaS
 3xV+vv3fNRgd2zvql4dBKFvUGpliERKMJwproXMSrpaGKNgQRnDkC+L4TNP8nybg+x2D
 tC6iMiKqcSdFoZpeiTGAkwHEBHm01NfOhgRt6rtrJuMbLAPftuDPCehZ2OINM8YH77mN
 qz8w==
X-Gm-Message-State: APjAAAV/EN/+s+dktxGVW6pbzmH7u1a4bRPzV3+Cist8twCI56SBitLT
 FRHQjmbOfo5kJ/HRj/H5ou5I/w==
X-Google-Smtp-Source: APXvYqypmolewDugC0x50fGpw+LvJHL2m0lzm3bIUvvE39zLof3cdCZsxERD+TWXovYjQyHJ7EIgqQ==
X-Received: by 2002:aa7:8d88:: with SMTP id i8mr32877510pfr.28.1566338520646; 
 Tue, 20 Aug 2019 15:02:00 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id y8sm28981432pfr.140.2019.08.20.15.01.59
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 20 Aug 2019 15:02:00 -0700 (PDT)
Date: Tue, 20 Aug 2019 16:01:58 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Andrew Murray <andrew.murray@arm.com>
Subject: Re: [PATCH v5 3/3] coresight: etm4x: save/restore state for external
 agents
Message-ID: <20190820220158.GC12159@xps15>
References: <20190816154615.39854-1-andrew.murray@arm.com>
 <20190816154615.39854-4-andrew.murray@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190816154615.39854-4-andrew.murray@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_150202_111755_F0355243 
X-CRM114-Status: GOOD (  25.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Al.Grant@arm.com, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 coresight@lists.linaro.org, Sudeep Holla <sudeep.holla@arm.com>,
 Leo Yan <leo.yan@linaro.org>, linux-arm-kernel@lists.infradead.org,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 16, 2019 at 04:46:15PM +0100, Andrew Murray wrote:
> Some hardware will ignore bit TRCPDCR.PU which is used to signal
> to hardware that power should not be removed from the trace unit. Much like
> self-hosted debug, we should also save/restore the trace unit state when
> it is in use by external agents.
> 
> We wish to avoid saving the hardware state when coresight isn't in use
> to reduce PM latency - However as external trace/debug is designed to be
> unintrusive to the CPU, the only way of determining that an external agent is
> present is to read the claim tags (TRCCLAIMCLR). Unfortunately this register
> needs power and clocking - something it won't have when coresight isn't in use.
> We also don't want to temporarily enable it due to the latency and PM context.
> 
> Let's compromise by adding a module parameter that will keep the trace unit
> powered and clocked, thus allowing us to only save/restore state when external
> trace (or self-hosted) is in use. Though please note that this doesn't allow
> for tracing from boot on hardware that needs save/restore as the CPU may idle
> prior to the ETMv4 driver starting and adding PM hooks to save/restore.
> 
> Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> ---
>  drivers/hwtracing/coresight/coresight-etm4x.c | 27 ++++++++++++++++---
>  drivers/hwtracing/coresight/coresight.c       |  2 +-
>  include/linux/coresight.h                     |  7 +++++
>  3 files changed, 31 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
> index 35a524eec36d..c5d527f7cbd5 100644
> --- a/drivers/hwtracing/coresight/coresight-etm4x.c
> +++ b/drivers/hwtracing/coresight/coresight-etm4x.c
> @@ -42,11 +42,12 @@ MODULE_PARM_DESC(boot_enable, "Enable tracing on boot");
>  #define PARAM_PM_SAVE_FIRMWARE	  0 /* save self-hosted state as per firmware */
>  #define PARAM_PM_SAVE_NEVER	  1 /* never save any state */
>  #define PARAM_PM_SAVE_SELF_HOSTED 2 /* save self-hosted state only */
> +#define PARAM_PM_SAVE_EXTERNAL	  3 /* save all state (keeps power on) */
>  
>  static int pm_save_enable = PARAM_PM_SAVE_FIRMWARE;
>  module_param(pm_save_enable, int, 0444);
>  MODULE_PARM_DESC(pm_save_enable,
> -	"Save/restore state on power down: 1 = never, 2 = self-hosted");
> +	"Save/restore state on power down: 1 = never, 2 = self-hosted, 3 = self-hosted/external");
>  
>  /* The number of ETMv4 currently registered */
>  static int etm4_count;
> @@ -1331,6 +1332,22 @@ static void etm4_cpu_restore(struct etmv4_drvdata *drvdata)
>  	CS_LOCK(drvdata->base);
>  }
>  
> +static bool etm4_coresight_in_use(struct etmv4_drvdata *drvdata)
> +{
> +	/* Self-hosted session in progress? */
> +	if (local_read(&drvdata->mode))
> +		return true;
> +
> +	/* External agents can be detected through claim tags however we
> +	 * only read these tags if the trace unit is powered.
> +	 */

Multi-line comment format error

> +	if (drvdata->csdev && pm_runtime_active(drvdata->csdev->dev.parent))
> +		if (coresight_is_claimed_any(drvdata->base))
> +			return true;
> +
> +	return false;
> +}
> +
>  static int etm4_cpu_pm_notify(struct notifier_block *nb, unsigned long cmd,
>  			      void *v)
>  {
> @@ -1350,8 +1367,8 @@ static int etm4_cpu_pm_notify(struct notifier_block *nb, unsigned long cmd,
>  
>  	switch (cmd) {
>  	case CPU_PM_ENTER:
> -		/* save the state if self-hosted coresight is in use */
> -		if (local_read(&drvdata->mode))
> +		/* Save the state if coresight is in use */
> +		if (etm4_coresight_in_use(drvdata))
>  			if (etm4_cpu_save(drvdata))
>  				return NOTIFY_BAD;
>  		break;
> @@ -1488,7 +1505,9 @@ static int etm4_probe(struct amba_device *adev, const struct amba_id *id)
>  		goto err_arch_supported;
>  	}
>  
> -	pm_runtime_put(&adev->dev);
> +	if (pm_save_enable != PARAM_PM_SAVE_EXTERNAL)
> +		pm_runtime_put(&adev->dev);
> +
>  	dev_info(&drvdata->csdev->dev, "CPU%d: ETM v%d.%d initialized\n",
>  		 drvdata->cpu, drvdata->arch >> 4, drvdata->arch & 0xf);
>  
> diff --git a/drivers/hwtracing/coresight/coresight.c b/drivers/hwtracing/coresight/coresight.c
> index e6ca899fea4e..474b7372864e 100644
> --- a/drivers/hwtracing/coresight/coresight.c
> +++ b/drivers/hwtracing/coresight/coresight.c
> @@ -140,7 +140,7 @@ static inline bool coresight_is_claimed_self_hosted(void __iomem *base)
>  	return coresight_read_claim_tags(base) == CORESIGHT_CLAIM_SELF_HOSTED;
>  }
>  
> -static inline bool coresight_is_claimed_any(void __iomem *base)
> +bool coresight_is_claimed_any(void __iomem *base)
>  {
>  	return coresight_read_claim_tags(base) != 0;
>  }
> diff --git a/include/linux/coresight.h b/include/linux/coresight.h
> index 44e552de419c..65bfd2cb0283 100644
> --- a/include/linux/coresight.h
> +++ b/include/linux/coresight.h
> @@ -286,6 +286,8 @@ extern void coresight_disclaim_device_unlocked(void __iomem *base);
>  extern char *coresight_alloc_device_name(struct coresight_dev_list *devs,
>  					 struct device *dev);
>  
> +extern bool coresight_is_claimed_any(void __iomem *base);
> +
>  extern bool coresight_loses_context_with_cpu(struct device *dev);
>  #else
>  static inline struct coresight_device *
> @@ -309,6 +311,11 @@ static inline int coresight_claim_device(void __iomem *base)
>  static inline void coresight_disclaim_device(void __iomem *base) {}
>  static inline void coresight_disclaim_device_unlocked(void __iomem *base) {}
>  
> +static inline bool coresight_is_claimed_any(void __iomem *base)
> +{
> +	return false;
> +}
> +
>  static inline bool coresight_loses_context_with_cpu(struct device *dev)
>  {
>  	return false;
> -- 
> 2.21.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
