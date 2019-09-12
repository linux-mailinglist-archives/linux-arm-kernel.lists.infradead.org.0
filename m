Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BE55B1253
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 17:37:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=X7LbfQxqKV+LGbNXW+fIoa8CwMBqdhuxklozVyGzyxM=; b=uEMJFDP7bWdum+psVzSf7qAV7
	exN31QK1u3d71a+b+bXbCnwjYlHE5utp+++Ycp3hR40kHeC0PUcc82fWK4UlBr0QW7hnBiv2bhaPy
	G1liQ+iwoYD5wAzO8aQdWU/UZetawJs/oghpfJNRCSZ6YR3Zv5ayOuz0gEXBRawUbxnw4qdPlnQxF
	hHQ4PYsk5/k8RW+397mrWT6ibgwG4wk5ybt6LMwrJCtJRnY1J7vr4B88xKy7ct6jX2ZIyh+ftvpPu
	WldeE0MqRWC9xYQGPhWnj3HACypvZYTYM9r14GxKTbfp2Wu11uznR25Krn7jWcdTCbw2ry8sw/Vks
	XBRN42n/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8RA1-0002yB-DG; Thu, 12 Sep 2019 15:37:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8R80-0001NI-FI
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 15:35:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 94A8E337;
 Thu, 12 Sep 2019 08:35:22 -0700 (PDT)
Received: from dawn-kernel.cambridge.arm.com (unknown [10.1.197.116])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 75BB73F71F;
 Thu, 12 Sep 2019 08:35:21 -0700 (PDT)
Subject: Re: [PATCH v5 3/3] coresight: etm4x: save/restore state for external
 agents
To: andrew.murray@arm.com, mathieu.poirier@linaro.org,
 alexander.shishkin@linux.intel.com
References: <20190816154615.39854-1-andrew.murray@arm.com>
 <20190816154615.39854-4-andrew.murray@arm.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <4b34efe9-7266-30b6-6a8a-8a85bacfe5a3@arm.com>
Date: Thu, 12 Sep 2019 16:35:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190816154615.39854-4-andrew.murray@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_083525_172377_1287FD75 
X-CRM114-Status: GOOD (  30.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Al.Grant@arm.com, coresight@lists.linaro.org, leo.yan@linaro.org,
 Sudeep.Holla@arm.com, linux-arm-kernel@lists.infradead.org,
 mike.leach@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrew

On 16/08/2019 16:46, Andrew Murray wrote:
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

This looks fine to me. Some minor comments below.

> Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> ---
>   drivers/hwtracing/coresight/coresight-etm4x.c | 27 ++++++++++++++++---
>   drivers/hwtracing/coresight/coresight.c       |  2 +-
>   include/linux/coresight.h                     |  7 +++++
>   3 files changed, 31 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
> index 35a524eec36d..c5d527f7cbd5 100644
> --- a/drivers/hwtracing/coresight/coresight-etm4x.c
> +++ b/drivers/hwtracing/coresight/coresight-etm4x.c
> @@ -42,11 +42,12 @@ MODULE_PARM_DESC(boot_enable, "Enable tracing on boot");
>   #define PARAM_PM_SAVE_FIRMWARE	  0 /* save self-hosted state as per firmware */
>   #define PARAM_PM_SAVE_NEVER	  1 /* never save any state */
>   #define PARAM_PM_SAVE_SELF_HOSTED 2 /* save self-hosted state only */
> +#define PARAM_PM_SAVE_EXTERNAL	  3 /* save all state (keeps power on) */

Should we say PARAM_PM_SAVE_ALWAYS instead ?

>   
>   static int pm_save_enable = PARAM_PM_SAVE_FIRMWARE;
>   module_param(pm_save_enable, int, 0444);
>   MODULE_PARM_DESC(pm_save_enable,
> -	"Save/restore state on power down: 1 = never, 2 = self-hosted");
> +	"Save/restore state on power down: 1 = never, 2 = self-hosted, 3 = self-hosted/external");

similarly here and also mention that the power/clocks are not dropped in that
case ? I see the comment above, but please could we make it more explicit ?

>   
>   /* The number of ETMv4 currently registered */
>   static int etm4_count;
> @@ -1331,6 +1332,22 @@ static void etm4_cpu_restore(struct etmv4_drvdata *drvdata)
>   	CS_LOCK(drvdata->base);
>   }
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
> +	if (drvdata->csdev && pm_runtime_active(drvdata->csdev->dev.parent))
> +		if (coresight_is_claimed_any(drvdata->base))
> +			return true;
> +
> +	return false;
> +}
> +
>   static int etm4_cpu_pm_notify(struct notifier_block *nb, unsigned long cmd,
>   			      void *v)
>   {
> @@ -1350,8 +1367,8 @@ static int etm4_cpu_pm_notify(struct notifier_block *nb, unsigned long cmd,
>   
>   	switch (cmd) {
>   	case CPU_PM_ENTER:
> -		/* save the state if self-hosted coresight is in use */
> -		if (local_read(&drvdata->mode))
> +		/* Save the state if coresight is in use */
> +		if (etm4_coresight_in_use(drvdata))
>   			if (etm4_cpu_save(drvdata))
>   				return NOTIFY_BAD;
>   		break;
> @@ -1488,7 +1505,9 @@ static int etm4_probe(struct amba_device *adev, const struct amba_id *id)
>   		goto err_arch_supported;
>   	}
>   
> -	pm_runtime_put(&adev->dev);
> +	if (pm_save_enable != PARAM_PM_SAVE_EXTERNAL)
> +		pm_runtime_put(&adev->dev);
> +

It may be a good idea to explain why we don't drop the power here
in a comment to help people reading the code. You could paste what
is in the commit description in here to avoid another lookup.

>   	dev_info(&drvdata->csdev->dev, "CPU%d: ETM v%d.%d initialized\n",
>   		 drvdata->cpu, drvdata->arch >> 4, drvdata->arch & 0xf);
>   
> diff --git a/drivers/hwtracing/coresight/coresight.c b/drivers/hwtracing/coresight/coresight.c
> index e6ca899fea4e..474b7372864e 100644
> --- a/drivers/hwtracing/coresight/coresight.c
> +++ b/drivers/hwtracing/coresight/coresight.c
> @@ -140,7 +140,7 @@ static inline bool coresight_is_claimed_self_hosted(void __iomem *base)
>   	return coresight_read_claim_tags(base) == CORESIGHT_CLAIM_SELF_HOSTED;
>   }
>   
> -static inline bool coresight_is_claimed_any(void __iomem *base)
> +bool coresight_is_claimed_any(void __iomem *base)
>   {
>   	return coresight_read_claim_tags(base) != 0;
>   }

minor nit: We may retain this as static inline and move this to the header file.

Kind regards
Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
