Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80609B1B94
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 12:33:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FeARvQuOZVwWHqqq6SShjVx99k+iitkhU6qkDA8gUM0=; b=X9C31efi/kcI3y
	9yGAkcoGu+99n3xL3CrKBDbBQ6MYIHMh84aODlgVtUfreMlqDq0u1P2sYc6psghhj/h6+hCUroLIg
	QI0PQQk8d9G9UXUUQkk03isUHvv6PfqLRghmkzeB1ngFryc8+7ckbIeg7dDQQoPOs1GxB8+Rz5Zyy
	1cuJrm1ATw+OfVhMIjZaVT19MEwQTYKet4Ass3V9U5fOCw8VvBTCnZoNz1U7oQ+FPPCE27TRh6sdF
	XsR/JIEq0aKMmpPsvhnVYGJCd+oQeuzenWWdp/HxLQTNzhRPyIKkuoGrPT3EOLMPcYbwNBDjSUcYK
	1UjksjgVo3UF6su0irgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8it3-00088n-VN; Fri, 13 Sep 2019 10:33:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8isp-00088U-VG
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Sep 2019 10:32:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 614E928;
 Fri, 13 Sep 2019 03:32:55 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CB3613F59C;
 Fri, 13 Sep 2019 03:32:54 -0700 (PDT)
Date: Fri, 13 Sep 2019 11:32:53 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH v5 3/3] coresight: etm4x: save/restore state for external
 agents
Message-ID: <20190913103252.GL9720@e119886-lin.cambridge.arm.com>
References: <20190816154615.39854-1-andrew.murray@arm.com>
 <20190816154615.39854-4-andrew.murray@arm.com>
 <4b34efe9-7266-30b6-6a8a-8a85bacfe5a3@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4b34efe9-7266-30b6-6a8a-8a85bacfe5a3@arm.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_033256_054301_57776B8F 
X-CRM114-Status: GOOD (  31.08  )
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
Cc: Al.Grant@arm.com, mathieu.poirier@linaro.org,
 alexander.shishkin@linux.intel.com, coresight@lists.linaro.org,
 leo.yan@linaro.org, Sudeep.Holla@arm.com, linux-arm-kernel@lists.infradead.org,
 mike.leach@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 12, 2019 at 04:35:20PM +0100, Suzuki K Poulose wrote:
> Hi Andrew
> 
> On 16/08/2019 16:46, Andrew Murray wrote:
> > Some hardware will ignore bit TRCPDCR.PU which is used to signal
> > to hardware that power should not be removed from the trace unit. Much like
> > self-hosted debug, we should also save/restore the trace unit state when
> > it is in use by external agents.
> > 
> > We wish to avoid saving the hardware state when coresight isn't in use
> > to reduce PM latency - However as external trace/debug is designed to be
> > unintrusive to the CPU, the only way of determining that an external agent is
> > present is to read the claim tags (TRCCLAIMCLR). Unfortunately this register
> > needs power and clocking - something it won't have when coresight isn't in use.
> > We also don't want to temporarily enable it due to the latency and PM context.
> > 
> > Let's compromise by adding a module parameter that will keep the trace unit
> > powered and clocked, thus allowing us to only save/restore state when external
> > trace (or self-hosted) is in use. Though please note that this doesn't allow
> > for tracing from boot on hardware that needs save/restore as the CPU may idle
> > prior to the ETMv4 driver starting and adding PM hooks to save/restore.
> > 
> 
> This looks fine to me. Some minor comments below.
> 
> > Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> > ---
> >   drivers/hwtracing/coresight/coresight-etm4x.c | 27 ++++++++++++++++---
> >   drivers/hwtracing/coresight/coresight.c       |  2 +-
> >   include/linux/coresight.h                     |  7 +++++
> >   3 files changed, 31 insertions(+), 5 deletions(-)
> > 
> > diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
> > index 35a524eec36d..c5d527f7cbd5 100644
> > --- a/drivers/hwtracing/coresight/coresight-etm4x.c
> > +++ b/drivers/hwtracing/coresight/coresight-etm4x.c
> > @@ -42,11 +42,12 @@ MODULE_PARM_DESC(boot_enable, "Enable tracing on boot");
> >   #define PARAM_PM_SAVE_FIRMWARE	  0 /* save self-hosted state as per firmware */
> >   #define PARAM_PM_SAVE_NEVER	  1 /* never save any state */
> >   #define PARAM_PM_SAVE_SELF_HOSTED 2 /* save self-hosted state only */
> > +#define PARAM_PM_SAVE_EXTERNAL	  3 /* save all state (keeps power on) */
> 
> Should we say PARAM_PM_SAVE_ALWAYS instead ?
> 

Yes I think this is OK.

> >   static int pm_save_enable = PARAM_PM_SAVE_FIRMWARE;
> >   module_param(pm_save_enable, int, 0444);
> >   MODULE_PARM_DESC(pm_save_enable,
> > -	"Save/restore state on power down: 1 = never, 2 = self-hosted");
> > +	"Save/restore state on power down: 1 = never, 2 = self-hosted, 3 = self-hosted/external");
> 
> similarly here and also mention that the power/clocks are not dropped in that
> case ? I see the comment above, but please could we make it more explicit ?

I'll change it to ... 3 = self-hosted/external (keeps power on)");

> 
> >   /* The number of ETMv4 currently registered */
> >   static int etm4_count;
> > @@ -1331,6 +1332,22 @@ static void etm4_cpu_restore(struct etmv4_drvdata *drvdata)
> >   	CS_LOCK(drvdata->base);
> >   }
> > +static bool etm4_coresight_in_use(struct etmv4_drvdata *drvdata)
> > +{
> > +	/* Self-hosted session in progress? */
> > +	if (local_read(&drvdata->mode))
> > +		return true;
> > +
> > +	/* External agents can be detected through claim tags however we
> > +	 * only read these tags if the trace unit is powered.
> > +	 */
> > +	if (drvdata->csdev && pm_runtime_active(drvdata->csdev->dev.parent))
> > +		if (coresight_is_claimed_any(drvdata->base))
> > +			return true;
> > +
> > +	return false;
> > +}
> > +
> >   static int etm4_cpu_pm_notify(struct notifier_block *nb, unsigned long cmd,
> >   			      void *v)
> >   {
> > @@ -1350,8 +1367,8 @@ static int etm4_cpu_pm_notify(struct notifier_block *nb, unsigned long cmd,
> >   	switch (cmd) {
> >   	case CPU_PM_ENTER:
> > -		/* save the state if self-hosted coresight is in use */
> > -		if (local_read(&drvdata->mode))
> > +		/* Save the state if coresight is in use */
> > +		if (etm4_coresight_in_use(drvdata))
> >   			if (etm4_cpu_save(drvdata))
> >   				return NOTIFY_BAD;
> >   		break;
> > @@ -1488,7 +1505,9 @@ static int etm4_probe(struct amba_device *adev, const struct amba_id *id)
> >   		goto err_arch_supported;
> >   	}
> > -	pm_runtime_put(&adev->dev);
> > +	if (pm_save_enable != PARAM_PM_SAVE_EXTERNAL)
> > +		pm_runtime_put(&adev->dev);
> > +
> 
> It may be a good idea to explain why we don't drop the power here
> in a comment to help people reading the code. You could paste what
> is in the commit description in here to avoid another lookup.

Good idea. I'll modify it slightly however.

> 
> >   	dev_info(&drvdata->csdev->dev, "CPU%d: ETM v%d.%d initialized\n",
> >   		 drvdata->cpu, drvdata->arch >> 4, drvdata->arch & 0xf);
> > diff --git a/drivers/hwtracing/coresight/coresight.c b/drivers/hwtracing/coresight/coresight.c
> > index e6ca899fea4e..474b7372864e 100644
> > --- a/drivers/hwtracing/coresight/coresight.c
> > +++ b/drivers/hwtracing/coresight/coresight.c
> > @@ -140,7 +140,7 @@ static inline bool coresight_is_claimed_self_hosted(void __iomem *base)
> >   	return coresight_read_claim_tags(base) == CORESIGHT_CLAIM_SELF_HOSTED;
> >   }
> > -static inline bool coresight_is_claimed_any(void __iomem *base)
> > +bool coresight_is_claimed_any(void __iomem *base)
> >   {
> >   	return coresight_read_claim_tags(base) != 0;
> >   }
> 
> minor nit: We may retain this as static inline and move this to the header file.

OK.

Thanks,

Andrew Murray

> 
> Kind regards
> Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
