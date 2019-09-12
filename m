Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B79EB108D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 16:00:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HbTen84rfxfg0XUTWJtwC1ob11WSfqzDqQD/ivqcELY=; b=K+VHdqEniNZU6DlZYySNxfy6k
	QKo9fRIRnF9mOyM5aBblFl5qjigA/Z46WcuTwnr7LtwxT1zrHb9JGK3iYmgVduqZ4TyMeMkV/8n2x
	twbRcmOkg64nA+1Hcex5walKn1isbsjM8aXXplT6/QQLq1EdF/5yH0eLpCrRd3XRanJOdx+USqv7l
	dl3UFg3Gc0KnNVcQzMvVofDtTAsFG2X5LU+RsV3o56IQ9VWaslvqHXgvKV5cPyTXDopgl2NHYcCyf
	fXR5yoDhZxX5gpvkGwonpagJfg/sX939HOWWiKpPmJVu90Jf+sk4zKOmyzjmRKDBPz9YIJiuH0MaZ
	tk+UH1rLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8PeI-0008Cq-Jp; Thu, 12 Sep 2019 14:00:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8Pe6-0008CR-7r
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 14:00:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5805028;
 Thu, 12 Sep 2019 07:00:23 -0700 (PDT)
Received: from [10.249.163.245] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 92C7A3F71F;
 Thu, 12 Sep 2019 07:00:21 -0700 (PDT)
Subject: Re: [PATCH v5 1/3] coresight: etm4x: save/restore state across CPU
 low power states
To: andrew.murray@arm.com, mathieu.poirier@linaro.org,
 alexander.shishkin@linux.intel.com
References: <20190816154615.39854-1-andrew.murray@arm.com>
 <20190816154615.39854-2-andrew.murray@arm.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <3e3f7e86-c62b-e9d6-9d42-f4897b47847d@arm.com>
Date: Thu, 12 Sep 2019 15:03:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <20190816154615.39854-2-andrew.murray@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_070026_371939_4E895794 
X-CRM114-Status: GOOD (  21.74  )
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
 sudeep.holla@arm.com, linux-arm-kernel@lists.infradead.org,
 mike.leach@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrew,

On 08/16/2019 04:46 PM, Andrew Murray wrote:
> Some hardware will ignore bit TRCPDCR.PU which is used to signal
> to hardware that power should not be removed from the trace unit.
> Let's mitigate against this by conditionally saving and restoring
> the trace unit state when the CPU enters low power states.
> 
> This patchset introduces a firmware property named
> 'arm,coresight-loses-context-with-cpu' - when this is present the
> hardware state will be conditionally saved and restored.
> 
> A module parameter 'pm_save_enable' is also introduced which can
> be configured to override the firmware property. This can be set
> to never allow save/restore or to conditionally allow it (only for
> self-hosted). The default value is determined by firmware.
> 
> We avoid saving the hardware state when self-hosted coresight isn't
> in use to reduce PM latency - we can't determine this by reading the
> claim tags (TRCCLAIMCLR) as these are 'trace' registers which need
> power and clocking, something we can't easily provide in the PM
> context. Therefore we rely on the existing drvdata->mode internal
> state that is set when self-hosted coresight is used (and powered).

The patch looks good to me. Some very minor comments below.

> 
> Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> ---
>   drivers/hwtracing/coresight/coresight-etm4x.c | 318 ++++++++++++++++++
>   drivers/hwtracing/coresight/coresight-etm4x.h |  64 ++++
>   drivers/hwtracing/coresight/coresight.c       |   6 +
>   include/linux/coresight.h                     |   6 +
>   4 files changed, 394 insertions(+)
> 


> +static void etm4_cpu_restore(struct etmv4_drvdata *drvdata)
> +{
> +	int i;
> +	struct etmv4_save_state *state = drvdata->save_state;
> +
> +	CS_UNLOCK(drvdata->base);
> +
> +	writel_relaxed(state->trcclaimset, drvdata->base + TRCCLAIMSET);
> +
> +	writel_relaxed(state->trcprgctlr, drvdata->base + TRCPRGCTLR);
> +	writel_relaxed(state->trcprocselr, drvdata->base + TRCPROCSELR);
> +	writel_relaxed(state->trcconfigr, drvdata->base + TRCCONFIGR);
> +	writel_relaxed(state->trcauxctlr, drvdata->base + TRCAUXCTLR);
> +	writel_relaxed(state->trceventctl0r, drvdata->base + TRCEVENTCTL0R);
> +	writel_relaxed(state->trceventctl1r, drvdata->base + TRCEVENTCTL1R);
> +	writel_relaxed(state->trcstallctlr, drvdata->base + TRCSTALLCTLR);
> +	writel_relaxed(state->trctsctlr, drvdata->base + TRCTSCTLR);
> +	writel_relaxed(state->trcsyncpr, drvdata->base + TRCSYNCPR);
> +	writel_relaxed(state->trcccctlr, drvdata->base + TRCCCCTLR);
> +	writel_relaxed(state->trcbbctlr, drvdata->base + TRCBBCTLR);
> +	writel_relaxed(state->trctraceidr, drvdata->base + TRCTRACEIDR);
> +	writel_relaxed(state->trcqctlr, drvdata->base + TRCQCTLR);
> +
> +	writel_relaxed(state->trcvictlr, drvdata->base + TRCVICTLR);
> +	writel_relaxed(state->trcviiectlr, drvdata->base + TRCVIIECTLR);
> +	writel_relaxed(state->trcvissctlr, drvdata->base + TRCVISSCTLR);
> +	writel_relaxed(state->trcvipcssctlr, drvdata->base + TRCVIPCSSCTLR);
> +	writel_relaxed(state->trcvdctlr, drvdata->base + TRCVDCTLR);
> +	writel_relaxed(state->trcvdsacctlr, drvdata->base + TRCVDSACCTLR);
> +	writel_relaxed(state->trcvdarcctlr, drvdata->base + TRCVDARCCTLR);
> +
> +	for (i = 0; i < drvdata->nrseqstate; i++)
> +		writel_relaxed(state->trcseqevr[i],
> +					drvdata->base + TRCSEQEVRn(i));

minor nit: alignment issues here and below for the multi-line
write_relaxed() invocations.
...


> +static int etm4_cpu_pm_notify(struct notifier_block *nb, unsigned long cmd,
> +			      void *v)
> +{
> +	struct etmv4_drvdata *drvdata;
> +	unsigned int cpu = smp_processor_id();
> +
> +	if (!etmdrvdata[cpu])
> +		return 0;


Please could we be consistent with the return value. i.e, use something
in line with NOTIFY_*. NOTIFY_OK ?

With the above fixed:

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
