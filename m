Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A08528CF1E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 11:12:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x+h6eRBjYX3f56a8oSBw4hYfxQdWgB1Nk/UXmp7OHIY=; b=RoR8eLXAI/cHjJ
	ML1Fz5Wm25Pr/WB4ay2rHYIlw7u6bfWcETGXZz5GytZkpgObzv//dsIjm9HmHO93CHW050CqqHwbs
	6Lf06K+VRAaDk5rF9tsQC+ClpenV4M2/FF8pb+dNeiDxN4aQCsAfoMj9PTh2j76QG5vLlfsDDnRbT
	05171SwKRLvg/vlRKiQWJ2sKNWu/pE7qg2QgixJvafMiQJukO5HCNawHaRhv3YZb1LMei9aGQm0tw
	bHIQaYNyFInW7B57DucXORGohqqAzRL4VhqPAReXDQ6U1JFujdfNWe8bDGReAVpP6FoKXmcKFHniI
	2aggpS1PIw8+CsD+DtIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxpKh-0005QS-Vo; Wed, 14 Aug 2019 09:12:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxpKQ-0005Pl-FX
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 09:12:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1758F344;
 Wed, 14 Aug 2019 02:12:19 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AD5863F694;
 Wed, 14 Aug 2019 02:12:18 -0700 (PDT)
Date: Wed, 14 Aug 2019 10:12:17 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH v4 5/6] coresight: etm4x: save/restore state across CPU
 low power states
Message-ID: <20190814091216.GA43882@e119886-lin.cambridge.arm.com>
References: <20190730125157.884-1-andrew.murray@arm.com>
 <20190730125157.884-6-andrew.murray@arm.com>
 <3bbc2a3c-03e3-7c8d-8f44-939f172bd1a0@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3bbc2a3c-03e3-7c8d-8f44-939f172bd1a0@arm.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_021222_606650_C7A36A56 
X-CRM114-Status: GOOD (  26.93  )
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

On Fri, Aug 02, 2019 at 11:54:12AM +0100, Suzuki K Poulose wrote:
> 
> 
> On 30/07/2019 13:51, Andrew Murray wrote:
> > Some hardware will ignore bit TRCPDCR.PU which is used to signal
> > to hardware that power should not be removed from the trace unit.
> > Let's mitigate against this by conditionally saving and restoring
> > the trace unit state when the CPU enters low power states.
> > 
> > This patchset introduces a firmware property named
> > 'arm,coresight-needs-save-restore' - when this is present the
> > hardware state will be conditionally saved and restored.
> > 
> > A module parameter 'pm_save_enable' is also introduced which can
> > be configured to override the firmware property. This can be set
> > to never allow save/restore, to conditionally allow it, or to
> > do as the firmware indicates (default).
> > 
> > We avoid saving the hardware state when coresight isn't in use
> > to reduce PM latency - we can't determine this by reading the
> > claim tags (TRCCLAIMCLR) as these are 'trace' registers which need
> > power and clocking, something we can't easily provide in the PM
> > context. Therefore we rely on the existing drvdata->mode internal
> > state that is set when self-hosted coresight is used (and powered).
> > 
> > As we do not have a simple way of determining if an external agent
> > is using coresight, we don't save/restore for this use case.
> > 
> > Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> > ---
> >   drivers/hwtracing/coresight/coresight-etm4x.c | 322 ++++++++++++++++++
> >   drivers/hwtracing/coresight/coresight-etm4x.h |  64 ++++
> >   2 files changed, 386 insertions(+)
> > 
> > diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
> > index a128b5063f46..30f118792289 100644
> > --- a/drivers/hwtracing/coresight/coresight-etm4x.c
> > +++ b/drivers/hwtracing/coresight/coresight-etm4x.c
> 
> 
> > +static int etm4_cpu_pm_notify(struct notifier_block *nb, unsigned long cmd,
> > +			      void *v)
> > +{
> > +	struct etmv4_drvdata *drvdata;
> > +	unsigned int cpu = smp_processor_id();
> > +
> > +	if (!etmdrvdata[cpu])
> > +		return 0;
> > +
> > +	drvdata = etmdrvdata[cpu];
> > +
> > +	if (!drvdata->save_state)
> > +		return NOTIFY_OK;
> > +
> > +	if (WARN_ON_ONCE(drvdata->cpu != smp_processor_id()))
> > +		return NOTIFY_BAD;
> 
> minor nit: you may skip the second call to smp_processor_id() as this is called
> on from non-preemptible context.
> 
> > +
> > +	switch (cmd) {
> > +	case CPU_PM_ENTER:
> > +		/* save the state if self-hosted coresight is in use */
> > +		if (local_read(&drvdata->mode))
> > +			if (etm4_cpu_save(drvdata))
> > +				return NOTIFY_BAD;
> > +		break;
> > +	case CPU_PM_EXIT:
> > +	case CPU_PM_ENTER_FAILED:
> > +		/* trcclaimset is set when there is state to restore */
> > +		if (drvdata->state_needs_restore)
> > +			etm4_cpu_restore(drvdata);
> > +		break;
> > +	default:
> > +		return NOTIFY_DONE;
> > +	}
> > +
> > +	return NOTIFY_OK;
> > +}
> > +
> 
> 
> > +static void etm4_cpu_pm_unregister(void)
> > +{
> > +	cpu_pm_unregister_notifier(&etm4_cpu_pm_nb);
> > +}
> > +#else
> > +static int etm4_cpu_pm_register(void) { return 0; }
> > +static void etm4_cpu_pm_unregister(void) { }
> > +#endif
> > +
> > +static inline bool etm4_needs_save_restore(struct device *dev)
> > +{
> > +	return fwnode_property_present(dev->fwnode,
> 
> nit: It may be safe to use dev_fwnode(dev), instead of dev->fwnode. But I
> see a lot of existing users of dev->fwnode. Not sure it does have an impact.
> 
> Looks fine to me ,
> 
> Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

Thanks - I'll make these changes.

Andrew Murray
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
