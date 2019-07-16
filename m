Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CB4F6A7B5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 13:53:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ru31Y2zLs2WBrpVQBaIpqf+gGn/EjT7CtLPXKJCdcH0=; b=BrrK1T+VSnwHW0
	abz5yEllh0OIegjIDEf3OapQVaLYV+wguMlTdc59f9WbGCZVyZV5I7lBUDBneZosrzMR/ZU/PKF8H
	AflutAYtR6haL2QqdMGd0zAJwwS/fr3Off6Qjr4xuDj41AsQoxpq8i2240XtoEMOJHxyte7nFfc3A
	Zb2WSSpdFpKyufjzRSIz5CnhMiEv1bzlsNvge2332Eg04W1PefppDP9zvgAkXRSRwCKkP9snYWCCe
	EF2W3EgMusDV5sxbA2bt+wT0If9OicUDLcQ6pvQ4SXtDH75BNLVzYK4sccrfs+HoXijGCk2JuhIIm
	tOl/l7yXmB02FUVwCWWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnM12-0000wC-HZ; Tue, 16 Jul 2019 11:53:04 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hnM0m-0000vR-Iz
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 11:52:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 982B82B;
 Tue, 16 Jul 2019 04:52:47 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9B6CE3F71A;
 Tue, 16 Jul 2019 04:52:46 -0700 (PDT)
Date: Tue, 16 Jul 2019 12:52:44 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH v3 5/6] coresight: etm4x: save/restore state across CPU
 low power states
Message-ID: <20190716115244.GS7227@e119886-lin.cambridge.arm.com>
References: <20190711160114.634-1-andrew.murray@arm.com>
 <20190711160114.634-6-andrew.murray@arm.com>
 <20190715230430.GA9613@xps15>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190715230430.GA9613@xps15>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_045248_724298_339D99FB 
X-CRM114-Status: GOOD (  30.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 coresight@lists.linaro.org, Leo Yan <leo.yan@linaro.org>,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 15, 2019 at 05:04:30PM -0600, Mathieu Poirier wrote:
> Hi Andrew,
> 
> Please see comments below.
> 
> On Thu, Jul 11, 2019 at 05:01:13PM +0100, Andrew Murray wrote:
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
> > The hardware state is only ever saved and restored when the claim
> > tags indicate that coresight is in use.
> > 
> > Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> > ---
> >  drivers/hwtracing/coresight/coresight-etm4x.c | 324 ++++++++++++++++++
> >  drivers/hwtracing/coresight/coresight-etm4x.h |  62 ++++
> >  drivers/hwtracing/coresight/coresight.c       |   2 +-
> >  include/linux/coresight.h                     |   8 +
> >  4 files changed, 395 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
> > index d993359e2117..b0bd8158bf13 100644
> > --- a/drivers/hwtracing/coresight/coresight-etm4x.c
> > +++ b/drivers/hwtracing/coresight/coresight-etm4x.c
> > @@ -18,6 +18,7 @@
> >  #include <linux/stat.h>
> >  #include <linux/clk.h>
> >  #include <linux/cpu.h>
> > +#include <linux/cpu_pm.h>
> >  #include <linux/coresight.h>
> >  #include <linux/coresight-pmu.h>
> >  #include <linux/pm_wakeup.h>
> > @@ -26,6 +27,7 @@
> >  #include <linux/uaccess.h>
> >  #include <linux/perf_event.h>
> >  #include <linux/pm_runtime.h>
> > +#include <linux/property.h>
> >  #include <asm/sections.h>
> >  #include <asm/local.h>
> >  #include <asm/virt.h>
> > @@ -37,6 +39,15 @@ static int boot_enable;
> >  module_param(boot_enable, int, 0444);
> >  MODULE_PARM_DESC(boot_enable, "Enable tracing on boot");
> >  
> > +#define PARAM_PM_SAVE_NEVER	0 /* never save/restore state */
> > +#define PARAM_PM_SAVE_ALWAYS	1 /* always save/restore state */
> > +#define PARAM_PM_SAVE_FIRMWARE	2 /* only save/restore if firmware flag set */
> > +
> > +static int pm_save_enable = PARAM_PM_SAVE_FIRMWARE;
> > +module_param(pm_save_enable, int, 0644);
> > +MODULE_PARM_DESC(pm_save_enable,
> > +	"Save/restore state on power down: 0 = never, 1 = always, 2 = firmware");
> > +
> >  /* The number of ETMv4 currently registered */
> >  static int etm4_count;
> >  static struct etmv4_drvdata *etmdrvdata[NR_CPUS];
> > @@ -54,6 +65,14 @@ static void etm4_os_unlock(struct etmv4_drvdata *drvdata)
> >  	isb();
> >  }
> >  
> > +static void etm4_os_lock(struct etmv4_drvdata *drvdata)
> > +{
> > +	/* Writing 0x1 to TRCOSLAR locks the trace registers */
> > +	writel_relaxed(0x1, drvdata->base + TRCOSLAR);
> > +	drvdata->os_unlock = false;
> > +	isb();
> > +}
> > +
> >  static bool etm4_arch_supported(u8 arch)
> >  {
> >  	/* Mask out the minor version number */
> > @@ -1085,6 +1104,303 @@ static void etm4_init_trace_id(struct etmv4_drvdata *drvdata)
> >  	drvdata->trcid = coresight_get_trace_id(drvdata->cpu);
> >  }
> >  
> > +#ifdef CONFIG_CPU_PM
> > +static int etm4_cpu_save(struct etmv4_drvdata *drvdata)
> > +{
> > +	int i, ret = 0;
> > +	u32 control;
> > +	struct etmv4_save_state *state;
> > +	struct device *etm_dev = &drvdata->csdev->dev;
> > +
> > +	/*
> > +	 * As recommended by 3.4.1 ("The procedure when powering down the PE")
> > +	 * of ARM IHI 0064D
> > +	 */
> > +	dsb(sy);
> > +	isb();
> > +
> > +	CS_UNLOCK(drvdata->base);
> > +
> > +	/* Lock the OS lock to disable trace and external debugger access */
> > +	etm4_os_lock(drvdata);
> > +
> > +	/* wait for TRCSTATR.PMSTABLE to go up */
> > +	if (coresight_timeout(drvdata->base, TRCSTATR,
> > +					TRCSTATR_PMSTABLE_BIT, 1)) {
> > +		dev_err(etm_dev,
> > +			"timeout while waiting for PM Stable Status\n");
> > +		etm4_os_unlock(drvdata);
> > +		ret = -EBUSY;
> > +		goto out;
> > +	}
> > +
> > +	state = &drvdata->save_state;
> > +
> > +	state->trcprgctlr = readl(drvdata->base + TRCPRGCTLR);
> > +	state->trcprocselr = readl(drvdata->base + TRCPROCSELR);
> > +	state->trcconfigr = readl(drvdata->base + TRCCONFIGR);
> > +	state->trcauxctlr = readl(drvdata->base + TRCAUXCTLR);
> > +	state->trceventctl0r = readl(drvdata->base + TRCEVENTCTL0R);
> > +	state->trceventctl1r = readl(drvdata->base + TRCEVENTCTL1R);
> > +	state->trcstallctlr = readl(drvdata->base + TRCSTALLCTLR);
> > +	state->trctsctlr = readl(drvdata->base + TRCTSCTLR);
> > +	state->trcsyncpr = readl(drvdata->base + TRCSYNCPR);
> > +	state->trcccctlr = readl(drvdata->base + TRCCCCTLR);
> > +	state->trcbbctlr = readl(drvdata->base + TRCBBCTLR);
> > +	state->trctraceidr = readl(drvdata->base + TRCTRACEIDR);
> > +	state->trcqctlr = readl(drvdata->base + TRCQCTLR);
> > +
> > +	state->trcvictlr = readl(drvdata->base + TRCVICTLR);
> > +	state->trcviiectlr = readl(drvdata->base + TRCVIIECTLR);
> > +	state->trcvissctlr = readl(drvdata->base + TRCVISSCTLR);
> > +	state->trcvipcssctlr = readl(drvdata->base + TRCVIPCSSCTLR);
> > +	state->trcvdctlr = readl(drvdata->base + TRCVDCTLR);
> > +	state->trcvdsacctlr = readl(drvdata->base + TRCVDSACCTLR);
> > +	state->trcvdarcctlr = readl(drvdata->base + TRCVDARCCTLR);
> > +
> > +	for (i = 0; i < drvdata->nrseqstate; i++)
> > +		state->trcseqevr[i] = readl(drvdata->base + TRCSEQEVRn(i));
> > +
> > +	state->trcseqrstevr = readl(drvdata->base + TRCSEQRSTEVR);
> > +	state->trcseqstr = readl(drvdata->base + TRCSEQSTR);
> > +	state->trcextinselr = readl(drvdata->base + TRCEXTINSELR);
> > +
> > +	for (i = 0; i < drvdata->nr_cntr; i++) {
> > +		state->trccntrldvr[i] = readl(drvdata->base + TRCCNTRLDVRn(i));
> > +		state->trccntctlr[i] = readl(drvdata->base + TRCCNTCTLRn(i));
> > +		state->trccntvr[i] = readl(drvdata->base + TRCCNTVRn(i));
> > +	}
> > +
> > +	for (i = 0; i < drvdata->nr_resource * 2; i++)
> > +		state->trcrsctlr[i] = readl(drvdata->base + TRCRSCTLRn(i));
> > +
> > +	for (i = 0; i < drvdata->nr_ss_cmp; i++) {
> > +		state->trcssccr[i] = readl(drvdata->base + TRCSSCCRn(i));
> > +		state->trcsscsr[i] = readl(drvdata->base + TRCSSCSRn(i));
> > +		state->trcsspcicr[i] = readl(drvdata->base + TRCSSPCICRn(i));
> > +	}
> > +
> > +	for (i = 0; i < drvdata->nr_addr_cmp * 2; i++) {
> > +		state->trcacvr[i] = readl(drvdata->base + TRCACVRn(i));
> > +		state->trcacatr[i] = readl(drvdata->base + TRCACATRn(i));
> > +	}
> > +
> > +	/*
> > +	 * Data trace stream is architecturally prohibited for A profile cores
> > +	 * so we don't save (or later restore) trcdvcvr and trcdvcmr - As per
> > +	 * section 1.3.4 ("Possible functional configurations of an ETMv4 trace
> > +	 * unit") of ARM IHI 0064D.
> > +	 */
> > +
> > +	for (i = 0; i < drvdata->numcidc; i++)
> > +		state->trccidcvr[i] = readl(drvdata->base + TRCCIDCVRn(i));
> > +
> > +	for (i = 0; i < drvdata->numvmidc; i++)
> > +		state->trcvmidcvr[i] = readl(drvdata->base + TRCVMIDCVRn(i));
> > +
> > +	state->trccidcctlr0 = readl(drvdata->base + TRCCIDCCTLR0);
> > +	state->trccidcctlr1 = readl(drvdata->base + TRCCIDCCTLR1);
> > +
> > +	state->trcvmidcctlr0 = readl(drvdata->base + TRCVMIDCCTLR0);
> > +	state->trcvmidcctlr0 = readl(drvdata->base + TRCVMIDCCTLR1);
> > +
> > +	state->trcclaimset = readl(drvdata->base + TRCCLAIMCLR);
> > +
> > +	/* wait for TRCSTATR.IDLE to go up */
> > +	if (coresight_timeout(drvdata->base, TRCSTATR, TRCSTATR_IDLE_BIT, 1)) {
> > +		dev_err(etm_dev,
> > +			"timeout while waiting for Idle Trace Status\n");
> > +		etm4_os_unlock(drvdata);
> > +		ret = -EBUSY;
> > +		goto out;
> > +	}
> > +
> > +	drvdata->state_needs_restore = true;
> > +
> > +	/*
> > +	 * Power can be removed from the trace unit now. We do this to
> > +	 * potentially save power on systems that respect the TRCPDCR_PU
> > +	 * despite requesting software to save/restore state.
> > +	 */
> > +	control = readl_relaxed(drvdata->base + TRCPDCR);
> > +	control &= ~TRCPDCR_PU;
> > +	writel_relaxed(control, drvdata->base + TRCPDCR);
> > +
> > +out:
> > +	CS_LOCK(drvdata->base);
> > +	return ret;
> > +}
> > +
> > +static void etm4_cpu_restore(struct etmv4_drvdata *drvdata)
> > +{
> > +	int i;
> > +	struct etmv4_save_state *state;
> > +
> > +	state = &drvdata->save_state;
> > +
> > +	CS_UNLOCK(drvdata->base);
> > +
> > +	writel_relaxed(state->trcclaimset, drvdata->base + TRCCLAIMSET);
> > +
> > +	writel_relaxed(state->trcprgctlr, drvdata->base + TRCPRGCTLR);
> > +	writel_relaxed(state->trcprocselr, drvdata->base + TRCPROCSELR);
> > +	writel_relaxed(state->trcconfigr, drvdata->base + TRCCONFIGR);
> > +	writel_relaxed(state->trcauxctlr, drvdata->base + TRCAUXCTLR);
> > +	writel_relaxed(state->trceventctl0r, drvdata->base + TRCEVENTCTL0R);
> > +	writel_relaxed(state->trceventctl1r, drvdata->base + TRCEVENTCTL1R);
> > +	writel_relaxed(state->trcstallctlr, drvdata->base + TRCSTALLCTLR);
> > +	writel_relaxed(state->trctsctlr, drvdata->base + TRCTSCTLR);
> > +	writel_relaxed(state->trcsyncpr, drvdata->base + TRCSYNCPR);
> > +	writel_relaxed(state->trcccctlr, drvdata->base + TRCCCCTLR);
> > +	writel_relaxed(state->trcbbctlr, drvdata->base + TRCBBCTLR);
> > +	writel_relaxed(state->trctraceidr, drvdata->base + TRCTRACEIDR);
> > +	writel_relaxed(state->trcqctlr, drvdata->base + TRCQCTLR);
> > +
> > +	writel_relaxed(state->trcvictlr, drvdata->base + TRCVICTLR);
> > +	writel_relaxed(state->trcviiectlr, drvdata->base + TRCVIIECTLR);
> > +	writel_relaxed(state->trcvissctlr, drvdata->base + TRCVISSCTLR);
> > +	writel_relaxed(state->trcvipcssctlr, drvdata->base + TRCVIPCSSCTLR);
> > +	writel_relaxed(state->trcvdctlr, drvdata->base + TRCVDCTLR);
> > +	writel_relaxed(state->trcvdsacctlr, drvdata->base + TRCVDSACCTLR);
> > +	writel_relaxed(state->trcvdarcctlr, drvdata->base + TRCVDARCCTLR);
> > +
> > +	for (i = 0; i < drvdata->nrseqstate; i++)
> > +		writel_relaxed(state->trcseqevr[i],
> > +					drvdata->base + TRCSEQEVRn(i));
> > +
> > +	writel_relaxed(state->trcseqrstevr, drvdata->base + TRCSEQRSTEVR);
> > +	writel_relaxed(state->trcseqstr, drvdata->base + TRCSEQSTR);
> > +	writel_relaxed(state->trcextinselr, drvdata->base + TRCEXTINSELR);
> > +
> > +	for (i = 0; i < drvdata->nr_cntr; i++) {
> > +		writel_relaxed(state->trccntrldvr[i],
> > +					drvdata->base + TRCCNTRLDVRn(i));
> > +		writel_relaxed(state->trccntctlr[i],
> > +					drvdata->base + TRCCNTCTLRn(i));
> > +		writel_relaxed(state->trccntvr[i],
> > +					drvdata->base + TRCCNTVRn(i));
> > +	}
> > +
> > +	for (i = 0; i < drvdata->nr_resource * 2; i++)
> > +		writel_relaxed(state->trcrsctlr[i],
> > +					drvdata->base + TRCRSCTLRn(i));
> > +
> > +	for (i = 0; i < drvdata->nr_ss_cmp; i++) {
> > +		writel_relaxed(state->trcssccr[i],
> > +					drvdata->base + TRCSSCCRn(i));
> > +		writel_relaxed(state->trcsscsr[i],
> > +					drvdata->base + TRCSSCSRn(i));
> > +		writel_relaxed(state->trcsspcicr[i],
> > +					drvdata->base + TRCSSPCICRn(i));
> > +	}
> > +
> > +	for (i = 0; i < drvdata->nr_addr_cmp * 2; i++) {
> > +		writel_relaxed(state->trcacvr[i],
> > +					drvdata->base + TRCACVRn(i));
> > +		writel_relaxed(state->trcacatr[i],
> > +					drvdata->base + TRCACATRn(i));
> > +	}
> > +
> > +	for (i = 0; i < drvdata->numcidc; i++)
> > +		writel_relaxed(state->trccidcvr[i],
> > +					drvdata->base + TRCCIDCVRn(i));
> > +
> > +	for (i = 0; i < drvdata->numvmidc; i++)
> > +		writel_relaxed(state->trcvmidcvr[i],
> > +					drvdata->base + TRCVMIDCVRn(i));
> > +
> > +	writel_relaxed(state->trccidcctlr0, drvdata->base + TRCCIDCCTLR0);
> > +	writel_relaxed(state->trccidcctlr1, drvdata->base + TRCCIDCCTLR1);
> > +
> > +	writel_relaxed(state->trcvmidcctlr0, drvdata->base + TRCVMIDCCTLR0);
> > +	writel_relaxed(state->trcvmidcctlr0, drvdata->base + TRCVMIDCCTLR1);
> > +
> > +	writel_relaxed(state->trcclaimset, drvdata->base + TRCCLAIMSET);
> > +
> > +	drvdata->state_needs_restore = false;
> > +
> > +	/*
> > +	 * Request to keep the trace unit powered and also
> > +	 * emulation of powerdown
> > +	 */
> > +	writel_relaxed(readl_relaxed(drvdata->base + TRCPDCR) | TRCPDCR_PU,
> > +		       drvdata->base + TRCPDCR);
> > +
> > +	/*
> > +	 * As recommended by section 4.3.7 ("Synchronization when using the
> > +	 * memory-mapped interface") of ARM IHI 0064D
> > +	 */
> > +	dsb(sy);
> > +	isb();
> > +
> > +	/* Unlock the OS lock to re-enable trace and external debug access */
> > +	etm4_os_unlock(drvdata);
> > +	CS_LOCK(drvdata->base);
> > +}
> > +
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
> > +	if (pm_save_enable == PARAM_PM_SAVE_NEVER ||
> > +	    (pm_save_enable == PARAM_PM_SAVE_FIRMWARE &&
> > +	     !drvdata->pm_save_enable))
> > +		return NOTIFY_OK;
> > +
> > +	if (WARN_ON_ONCE(drvdata->cpu != smp_processor_id()))
> > +		return NOTIFY_BAD;
> > +
> > +	switch (cmd) {
> > +	case CPU_PM_ENTER:
> > +		/* save the state if coresight is in use */
> > +		if (coresight_is_claimed_any(drvdata->base))
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
> > +static struct notifier_block etm4_cpu_pm_nb = {
> > +	.notifier_call = etm4_cpu_pm_notify,
> > +};
> > +
> > +static int etm4_cpu_pm_register(void)
> > +{
> > +	return cpu_pm_register_notifier(&etm4_cpu_pm_nb);
> > +}
> > +
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
> > +				       "arm,coresight-needs-save-restore");
> > +}
> > +
> >  static int etm4_probe(struct amba_device *adev, const struct amba_id *id)
> >  {
> >  	int ret;
> > @@ -1101,6 +1417,8 @@ static int etm4_probe(struct amba_device *adev, const struct amba_id *id)
> >  
> >  	dev_set_drvdata(dev, drvdata);
> >  
> > +	drvdata->pm_save_enable = etm4_needs_save_restore(dev);
> > +
> >  	/* Validity for the resource is already checked by the AMBA core */
> >  	base = devm_ioremap_resource(dev, res);
> >  	if (IS_ERR(base))
> > @@ -1132,6 +1450,10 @@ static int etm4_probe(struct amba_device *adev, const struct amba_id *id)
> >  		if (ret < 0)
> >  			goto err_arch_supported;
> >  		hp_online = ret;
> > +
> > +		ret = etm4_cpu_pm_register();
> > +		if (ret)
> > +			goto err_arch_supported;
> >  	}
> >  
> >  	cpus_read_unlock();
> > @@ -1182,6 +1504,8 @@ static int etm4_probe(struct amba_device *adev, const struct amba_id *id)
> >  
> >  err_arch_supported:
> >  	if (--etm4_count == 0) {
> > +		etm4_cpu_pm_unregister();
> > +
> >  		cpuhp_remove_state_nocalls(CPUHP_AP_ARM_CORESIGHT_STARTING);
> >  		if (hp_online)
> >  			cpuhp_remove_state_nocalls(hp_online);
> > diff --git a/drivers/hwtracing/coresight/coresight-etm4x.h b/drivers/hwtracing/coresight/coresight-etm4x.h
> > index 4523f10ddd0f..c31634c64f87 100644
> > --- a/drivers/hwtracing/coresight/coresight-etm4x.h
> > +++ b/drivers/hwtracing/coresight/coresight-etm4x.h
> > @@ -175,6 +175,7 @@
> >  					 ETM_MODE_EXCL_USER)
> >  
> >  #define TRCSTATR_IDLE_BIT		0
> > +#define TRCSTATR_PMSTABLE_BIT		1
> >  #define ETM_DEFAULT_ADDR_COMP		0
> >  
> >  /* PowerDown Control Register bits */
> > @@ -281,6 +282,63 @@ struct etmv4_config {
> >  	u32				ext_inp;
> >  };
> >  
> > +/**
> > + * struct etm4_save_state - state to be preserved when ETM is without power
> > + */
> > +struct etmv4_save_state {
> > +	u32	trcprgctlr;
> > +	u32	trcprocselr;
> > +	u32	trcconfigr;
> > +	u32	trcauxctlr;
> > +	u32	trceventctl0r;
> > +	u32	trceventctl1r;
> > +	u32	trcstallctlr;
> > +	u32	trctsctlr;
> > +	u32	trcsyncpr;
> > +	u32	trcccctlr;
> > +	u32	trcbbctlr;
> > +	u32	trctraceidr;
> > +	u32	trcqctlr;
> > +
> > +	u32	trcvictlr;
> > +	u32	trcviiectlr;
> > +	u32	trcvissctlr;
> > +	u32	trcvipcssctlr;
> > +	u32	trcvdctlr;
> > +	u32	trcvdsacctlr;
> > +	u32	trcvdarcctlr;
> > +
> > +	u32	trcseqevr[ETM_MAX_SEQ_STATES];
> > +	u32	trcseqrstevr;
> > +	u32	trcseqstr;
> > +	u32	trcextinselr;
> > +	u32	trccntrldvr[ETMv4_MAX_CNTR];
> > +	u32	trccntctlr[ETMv4_MAX_CNTR];
> > +	u32	trccntvr[ETMv4_MAX_CNTR];
> > +
> > +	u32	trcrsctlr[ETM_MAX_RES_SEL * 2];
> > +
> > +	u32	trcssccr[ETM_MAX_SS_CMP];
> > +	u32	trcsscsr[ETM_MAX_SS_CMP];
> > +	u32	trcsspcicr[ETM_MAX_SS_CMP];
> > +
> > +	u64	trcacvr[ETM_MAX_SINGLE_ADDR_CMP];
> > +	u64	trcacatr[ETM_MAX_SINGLE_ADDR_CMP];
> > +	u64	trccidcvr[ETMv4_MAX_CTXID_CMP];
> > +	u32	trcvmidcvr[ETM_MAX_VMID_CMP];
> > +	u32	trccidcctlr0;
> > +	u32	trccidcctlr1;
> > +	u32	trcvmidcctlr0;
> > +	u32	trcvmidcctlr1;
> > +
> > +	u32	trcclaimset;
> > +
> > +	u32	cntr_val[ETMv4_MAX_CNTR];
> > +	u32	seq_state;
> > +	u32	vinst_ctrl;
> > +	u32	ss_status[ETM_MAX_SS_CMP];
> > +};
> > +
> >  /**
> >   * struct etm4_drvdata - specifics associated to an ETM component
> >   * @base:       Memory mapped base address for this component.
> > @@ -336,6 +394,7 @@ struct etmv4_config {
> >   * @atbtrig:	If the implementation can support ATB triggers
> >   * @lpoverride:	If the implementation can support low-power state over.
> >   * @config:	structure holding configuration parameters.
> > + * @save_state:	State to be preserved across power loss
> >   */
> >  struct etmv4_drvdata {
> >  	void __iomem			*base;
> > @@ -367,6 +426,7 @@ struct etmv4_drvdata {
> >  	u8				q_support;
> >  	bool				sticky_enable;
> >  	bool				boot_enable;
> > +	bool				pm_save_enable;
> 
> Please document - otherwise we have to guess what this is for.

Ah yes I've missed these. I'll add the missing doc in the documentation
block before the struct.

> 
> >  	bool				os_unlock;
> >  	bool				instrp0;
> >  	bool				trcbb;
> > @@ -381,6 +441,8 @@ struct etmv4_drvdata {
> >  	bool				atbtrig;
> >  	bool				lpoverride;
> >  	struct etmv4_config		config;
> > +	struct etmv4_save_state		save_state;
> > +	bool				state_needs_restore;
> 
> Same as above.
> 
> Did you get a chance to test your code on something else than Juno?  I gave it a
> spin on my dragonboard and I can't get the kernel to finish booting - my board
> resets just after the ETMv4 have initialized.  I'll try to debug this futher tomorrow.

No I've only tested this on Juno.

Thanks for testing this, feel free to contact me on IRC, or share any debug,
I'll be happy to assist.

Thanks,

Andrew Murray

> 
> Thanks,
> Mathieu
> 
> >  };
> >  
> >  /* Address comparator access types */
> > diff --git a/drivers/hwtracing/coresight/coresight.c b/drivers/hwtracing/coresight/coresight.c
> > index 86d1fc2c1bd4..aba71a5a025f 100644
> > --- a/drivers/hwtracing/coresight/coresight.c
> > +++ b/drivers/hwtracing/coresight/coresight.c
> > @@ -140,7 +140,7 @@ static inline bool coresight_is_claimed_self_hosted(void __iomem *base)
> >  	return coresight_read_claim_tags(base) == CORESIGHT_CLAIM_SELF_HOSTED;
> >  }
> >  
> > -static inline bool coresight_is_claimed_any(void __iomem *base)
> > +bool coresight_is_claimed_any(void __iomem *base)
> >  {
> >  	return coresight_read_claim_tags(base) != 0;
> >  }
> > diff --git a/include/linux/coresight.h b/include/linux/coresight.h
> > index a2b68823717b..c3a875dffe65 100644
> > --- a/include/linux/coresight.h
> > +++ b/include/linux/coresight.h
> > @@ -285,6 +285,9 @@ extern void coresight_disclaim_device(void __iomem *base);
> >  extern void coresight_disclaim_device_unlocked(void __iomem *base);
> >  extern char *coresight_alloc_device_name(struct coresight_dev_list *devs,
> >  					 struct device *dev);
> > +
> > +extern bool coresight_is_claimed_any(void __iomem *base);
> > +
> >  #else
> >  static inline struct coresight_device *
> >  coresight_register(struct coresight_desc *desc) { return NULL; }
> > @@ -307,6 +310,11 @@ static inline int coresight_claim_device(void __iomem *base)
> >  static inline void coresight_disclaim_device(void __iomem *base) {}
> >  static inline void coresight_disclaim_device_unlocked(void __iomem *base) {}
> >  
> > +static inline bool coresight_is_claimed_any(void __iomem *base)
> > +{
> > +	return false;
> > +}
> > +
> >  #endif
> >  
> >  extern int coresight_get_cpu(struct device *dev);
> > -- 
> > 2.21.0
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
