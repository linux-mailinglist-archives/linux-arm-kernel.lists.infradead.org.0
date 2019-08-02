Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DA0E7F586
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 12:54:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=csxkY1NMnd2TQU/FPjBxZa5AvMbELFshG/paPf45nXQ=; b=PDK+ApEslgh3tx8s+vckj9h3A
	nlZnDaseUBBg5cMVjUTq9Kqmv6GES3wlkelpIpoqqqxVaw4Dme8L1FX+B6VhkDBtWWUeUAkwkrog7
	OC/0OVgaj6efZx0ubbUQEV8TuRo9CMXiaa0k7V47OdUoe3rnxovY1xA1wJNIPIsHhDyxAiXwV9b7F
	Hr3rlSqo8f1yI6jfPapG9AK5XGWXo9tBFLWSTZgm2N2Xtg3HE/gZEbm6qmJ5K4G+TiPDGQVjozmFC
	WFjT5jUEJe99APAUgapVuZX8bQ35KGzprendGkdL7QdLhnyZ8w3Co4XkSlgyTdSDXYv4DN5nkg1kb
	SnVym5cJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htVCX-0001nG-Cn; Fri, 02 Aug 2019 10:54:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1htVCR-0001mw-Ip
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 10:54:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D03BF344;
 Fri,  2 Aug 2019 03:54:14 -0700 (PDT)
Received: from dawn-kernel.cambridge.arm.com (unknown [10.1.197.116])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B12BC3F71F;
 Fri,  2 Aug 2019 03:54:13 -0700 (PDT)
Subject: Re: [PATCH v4 5/6] coresight: etm4x: save/restore state across CPU
 low power states
To: andrew.murray@arm.com, mathieu.poirier@linaro.org,
 alexander.shishkin@linux.intel.com
References: <20190730125157.884-1-andrew.murray@arm.com>
 <20190730125157.884-6-andrew.murray@arm.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <3bbc2a3c-03e3-7c8d-8f44-939f172bd1a0@arm.com>
Date: Fri, 2 Aug 2019 11:54:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190730125157.884-6-andrew.murray@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_035415_713261_1AE3F5FE 
X-CRM114-Status: GOOD (  25.85  )
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



On 30/07/2019 13:51, Andrew Murray wrote:
> Some hardware will ignore bit TRCPDCR.PU which is used to signal
> to hardware that power should not be removed from the trace unit.
> Let's mitigate against this by conditionally saving and restoring
> the trace unit state when the CPU enters low power states.
> 
> This patchset introduces a firmware property named
> 'arm,coresight-needs-save-restore' - when this is present the
> hardware state will be conditionally saved and restored.
> 
> A module parameter 'pm_save_enable' is also introduced which can
> be configured to override the firmware property. This can be set
> to never allow save/restore, to conditionally allow it, or to
> do as the firmware indicates (default).
> 
> We avoid saving the hardware state when coresight isn't in use
> to reduce PM latency - we can't determine this by reading the
> claim tags (TRCCLAIMCLR) as these are 'trace' registers which need
> power and clocking, something we can't easily provide in the PM
> context. Therefore we rely on the existing drvdata->mode internal
> state that is set when self-hosted coresight is used (and powered).
> 
> As we do not have a simple way of determining if an external agent
> is using coresight, we don't save/restore for this use case.
> 
> Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> ---
>   drivers/hwtracing/coresight/coresight-etm4x.c | 322 ++++++++++++++++++
>   drivers/hwtracing/coresight/coresight-etm4x.h |  64 ++++
>   2 files changed, 386 insertions(+)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
> index a128b5063f46..30f118792289 100644
> --- a/drivers/hwtracing/coresight/coresight-etm4x.c
> +++ b/drivers/hwtracing/coresight/coresight-etm4x.c


> +static int etm4_cpu_pm_notify(struct notifier_block *nb, unsigned long cmd,
> +			      void *v)
> +{
> +	struct etmv4_drvdata *drvdata;
> +	unsigned int cpu = smp_processor_id();
> +
> +	if (!etmdrvdata[cpu])
> +		return 0;
> +
> +	drvdata = etmdrvdata[cpu];
> +
> +	if (!drvdata->save_state)
> +		return NOTIFY_OK;
> +
> +	if (WARN_ON_ONCE(drvdata->cpu != smp_processor_id()))
> +		return NOTIFY_BAD;

minor nit: you may skip the second call to smp_processor_id() as this is called
on from non-preemptible context.

> +
> +	switch (cmd) {
> +	case CPU_PM_ENTER:
> +		/* save the state if self-hosted coresight is in use */
> +		if (local_read(&drvdata->mode))
> +			if (etm4_cpu_save(drvdata))
> +				return NOTIFY_BAD;
> +		break;
> +	case CPU_PM_EXIT:
> +	case CPU_PM_ENTER_FAILED:
> +		/* trcclaimset is set when there is state to restore */
> +		if (drvdata->state_needs_restore)
> +			etm4_cpu_restore(drvdata);
> +		break;
> +	default:
> +		return NOTIFY_DONE;
> +	}
> +
> +	return NOTIFY_OK;
> +}
> +


> +static void etm4_cpu_pm_unregister(void)
> +{
> +	cpu_pm_unregister_notifier(&etm4_cpu_pm_nb);
> +}
> +#else
> +static int etm4_cpu_pm_register(void) { return 0; }
> +static void etm4_cpu_pm_unregister(void) { }
> +#endif
> +
> +static inline bool etm4_needs_save_restore(struct device *dev)
> +{
> +	return fwnode_property_present(dev->fwnode,

nit: It may be safe to use dev_fwnode(dev), instead of dev->fwnode. But I
see a lot of existing users of dev->fwnode. Not sure it does have an impact.

Looks fine to me ,

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
