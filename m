Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2E884D1C2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 17:11:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=90NcPcwL4rLPvX95Yg7KZx5qh2uD1b6eNthXoV5IIxk=; b=dUTCYUzxnO3uSM
	Pi46+zoewJBaAmYYSRxhoTjqn+fvrGGGJ27Uv9ImLc1tjD2Knv7pctQKsQ3iDrob9BYbcnWMC8wUP
	aIq2vDxE54KGBAOZiQGut3jOmNsFSvWx0tMVSLF9FfRIDzMvlY5fzIvRK7ctG4lB64T0Zro8iu8aM
	jUAmlmiF2v0cx7v8nEj8QfbDFU7caVwuPXdCsl2k8brRVTT7CP0jqfGFHujz1INMjALS5wwIHIi82
	Rqsz5QD164Y07+yPYxagF+gkmAFgZxaIAR252nBJaFkRQSbHkZsFEjI5qUBCEflhbz3RAke69GsV0
	+c567UsnJv+w2Nku94Gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdyjC-0004cR-7I; Thu, 20 Jun 2019 15:11:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdyix-0004bx-L4
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 15:11:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 629A528;
 Thu, 20 Jun 2019 08:11:36 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A369C3F246;
 Thu, 20 Jun 2019 08:11:35 -0700 (PDT)
Date: Thu, 20 Jun 2019 16:11:34 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH v1 5/5] coresight: etm4x: save/restore state across CPU
 low power states
Message-ID: <20190620151133.GG20984@e119886-lin.cambridge.arm.com>
References: <20190618125433.9739-1-andrew.murray@arm.com>
 <20190618125433.9739-6-andrew.murray@arm.com>
 <20190618225549.GB24894@xps15>
 <20190620110721.GD20984@e119886-lin.cambridge.arm.com>
 <CANLsYkx0LNg+Ld7D4_9d_ng8s3eVWbxaBKCMPpMFR9hrD7ny6A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANLsYkx0LNg+Ld7D4_9d_ng8s3eVWbxaBKCMPpMFR9hrD7ny6A@mail.gmail.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_081139_789800_B33D8368 
X-CRM114-Status: GOOD (  30.07  )
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
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 20, 2019 at 08:49:47AM -0600, Mathieu Poirier wrote:
> Hi Andrew,
> 
> On Thu, 20 Jun 2019 at 05:07, Andrew Murray <andrew.murray@arm.com> wrote:
> >
> > On Tue, Jun 18, 2019 at 04:55:49PM -0600, Mathieu Poirier wrote:
> > > On Tue, Jun 18, 2019 at 01:54:33PM +0100, Andrew Murray wrote:
> > > > Some hardware will ignore bit TRCPDCR.PU which is used to signal
> > > > to hardware that power should not be removed from the trace unit.
> > > > Let's mitigate against this by saving and restoring the trace
> > > > unit state when the CPU enters low power states.
> > > >
> > > > To provide the benefit to both self-hosted and external debuggers
> > > > we save/restore the entire state which includes etmv4_config data
> > > > and dynamic data such as inflight counter values, sequencer
> > > > states, etc.
> > > >
> > > > To reduce CPU suspend/resume latency the state is only saved or
> > > > restored if coresight is in use as determined by the claimset
> > > > registers.
> > > >
> > > > To aid debug of CPU suspend/resume a disable_pm_save parameter
> > > > is provided to disable this feature.
> > > >
> > > > Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> > > > ---
> > > >  drivers/hwtracing/coresight/coresight-etm4x.c | 245 ++++++++++++++++++
> > > >  drivers/hwtracing/coresight/coresight-etm4x.h |  66 ++++-
> > > >  drivers/hwtracing/coresight/coresight.c       |   2 +-
> > > >  include/linux/coresight.h                     |   7 +
> > > >  4 files changed, 318 insertions(+), 2 deletions(-)
> > > >
> > > > diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
> > > > index bda90d4cd62b..d27c5e0d9aec 100644
> > > > --- a/drivers/hwtracing/coresight/coresight-etm4x.c
> > > > +++ b/drivers/hwtracing/coresight/coresight-etm4x.c
> > > > @@ -18,6 +18,7 @@
> > > >  #include <linux/stat.h>
> > > >  #include <linux/clk.h>
> > > >  #include <linux/cpu.h>
> > > > +#include <linux/cpu_pm.h>
> > > >  #include <linux/coresight.h>
> > > >  #include <linux/coresight-pmu.h>
> > > >  #include <linux/pm_wakeup.h>
> > > > @@ -36,6 +37,9 @@
> > > >  static int boot_enable;
> > > >  module_param_named(boot_enable, boot_enable, int, 0444);
> > > >
> > > > +static int disable_pm_save;
> > > > +module_param_named(disable_pm_save, disable_pm_save, int, 0444);
> > > > +
> > > >  /* The number of ETMv4 currently registered */
> > > >  static int etm4_count;
> > > >  static struct etmv4_drvdata *etmdrvdata[NR_CPUS];
> > > > @@ -53,6 +57,14 @@ static void etm4_os_unlock(struct etmv4_drvdata *drvdata)
> > > >     isb();
> > > >  }
> > > >
> > > > +static void etm4_os_lock(struct etmv4_drvdata *drvdata)
> > > > +{
> > > > +   /* Writing 0x1 to TRCOSLAR unlocks the trace registers */
> > > > +   writel_relaxed(0x1, drvdata->base + TRCOSLAR);
> > > > +   drvdata->os_unlock = false;
> > > > +   isb();
> > > > +}
> > > > +
> > > >  static bool etm4_arch_supported(u8 arch)
> > > >  {
> > > >     /* Mask out the minor version number */
> > > > @@ -1076,6 +1088,235 @@ static void etm4_init_trace_id(struct etmv4_drvdata *drvdata)
> > > >     drvdata->trcid = coresight_get_trace_id(drvdata->cpu);
> > > >  }
> > > >
> > > > +#ifdef CONFIG_CPU_PM
> > > > +static void etm4_cpu_save(struct etmv4_drvdata *drvdata)
> > > > +{
> > > > +   int i;
> > > > +   u32 control;
> > > > +   struct etmv4_save_state *state;
> > >
> > > Before going any further I would make sure the CPU this is running on it equal
> > > to drvdata->cpu.  Otherwise something very wrong happened.
> > >
> >
> > Sure I'll add that.
> >
> > > > +
> > > > +   /* As recommended by 3.4.1 of ARM IHI 0064D */
> > > > +   dsb(sy);
> > > > +   isb();
> > > > +
> > > > +   CS_UNLOCK(drvdata->base);
> > > > +   etm4_os_lock(drvdata);
> > >
> > > Please add a comment to explain that you are using the OS lock to disable
> > > external debugger access to the trace registers while the unit is powered down.
> > > Otherwise people will get confused and will submit patches that changes
> > > etm4_os_lock() to etm4_os_unlock().
> >
> > Yes sure, it deserves a comment.
> >
> > >
> > > > +
> > > > +   /* wait for TRCSTATR.PMSTABLE to go up */
> > > > +   if (coresight_timeout(drvdata->base, TRCSTATR,
> > > > +                                   TRCSTATR_PMSTABLE_BIT, 1))
> > > > +           dev_err(drvdata->dev,
> > > > +                   "timeout while waiting for Idle Trace Status\n");
> > >
> > > The above comment is not accurate since we are waiting for the PMSTABLE bit.
> >
> > I'll change that.
> >
> > >
> > > > +
> > > > +   state = &drvdata->save_state;
> > > > +
> > > > +   state->trcprgctlr = readl(drvdata->base + TRCPRGCTLR);
> > > > +   state->trcprocselr = readl(drvdata->base + TRCPROCSELR);
> > > > +   state->trcconfigr = readl(drvdata->base + TRCCONFIGR);
> > > > +   state->trcauxctlr = readl(drvdata->base + TRCAUXCTLR);
> > > > +   state->trceventctl0r = readl(drvdata->base + TRCEVENTCTL0R);
> > > > +   state->trceventctl1r = readl(drvdata->base + TRCEVENTCTL1R);
> > > > +   state->trcstallctlr = readl(drvdata->base + TRCSTALLCTLR);
> > > > +   state->trctsctlr = readl(drvdata->base + TRCTSCTLR);
> > > > +   state->trcsyncpr = readl(drvdata->base + TRCSYNCPR);
> > > > +   state->trcccctlr = readl(drvdata->base + TRCCCCTLR);
> > > > +   state->trcbbctlr = readl(drvdata->base + TRCBBCTLR);
> > > > +   state->trctraceidr = readl(drvdata->base + TRCTRACEIDR);
> > > > +   state->trcqctlr = readl(drvdata->base + TRCQCTLR);
> > > > +
> > > > +   state->trcvictlr = readl(drvdata->base + TRCVICTLR);
> > > > +   state->trcviiectlr = readl(drvdata->base + TRCVIIECTLR);
> > > > +   state->trcvissctlr = readl(drvdata->base + TRCVISSCTLR);
> > > > +   state->trcvipcssctlr = readl(drvdata->base + TRCVIPCSSCTLR);
> > > > +   state->trcvdctlr = readl(drvdata->base + TRCVDCTLR);
> > > > +   state->trcvdsacctlr = readl(drvdata->base + TRCVDSACCTLR);
> > > > +   state->trcvdarcctlr = readl(drvdata->base + TRCVDARCCTLR);
> > > > +
> > > > +   for (i = 0; i < drvdata->nrseqstate; i++)
> > > > +           state->trcseqevr[i] = readl(drvdata->base + TRCSEQEVRn(i));
> > > > +
> > > > +   state->trcseqrstevr = readl(drvdata->base + TRCSEQRSTEVR);
> > > > +   state->trcseqstr = readl(drvdata->base + TRCSEQSTR);
> > > > +   state->trcextinselr = readl(drvdata->base + TRCEXTINSELR);
> > > > +
> > > > +   for (i = 0; i < drvdata->nr_cntr; i++) {
> > > > +           state->trccntrldvr[i] = readl(drvdata->base + TRCCNTRLDVRn(i));
> > > > +           state->trccntctlr[i] = readl(drvdata->base + TRCCNTCTLRn(i));
> > > > +           state->trccntvr[i] = readl(drvdata->base + TRCCNTVRn(i));
> > > > +   }
> > > > +
> > > > +   for (i = 0; i < drvdata->nr_resource * 2; i++)
> > > > +           state->trcrsctlr[i] = readl(drvdata->base + TRCRSCTLRn(i));
> > > > +
> > > > +   for (i = 0; i < drvdata->nr_ss_cmp; i++) {
> > > > +           state->trcssccr[i] = readl(drvdata->base + TRCSSCCRn(i));
> > > > +           state->trcsscsr[i] = readl(drvdata->base + TRCSSCSRn(i));
> > > > +           state->trcsspcicr[i] = readl(drvdata->base + TRCSSPCICRn(i));
> > > > +   }
> > > > +
> > > > +   for (i = 0; i < drvdata->nr_addr_cmp * 2; i++) {
> > > > +           state->trcacvr[i] = readl(drvdata->base + TRCACVRn(i));
> > > > +           state->trcacatr[i] = readl(drvdata->base + TRCACATRn(i));
> > > > +   }
> > > > +
> > > > +   for (i = 0; i < drvdata->numcidc; i++)
> > > > +           state->trccidcvr[i] = readl(drvdata->base + TRCCIDCVRn(i));
> > > > +
> > > > +   for (i = 0; i < drvdata->numvmidc; i++)
> > > > +           state->trcvmidcvr[i] = readl(drvdata->base + TRCVMIDCVRn(i));
> > > > +
> > > > +   state->trccidcctlr0 = readl(drvdata->base + TRCCIDCCTLR0);
> > > > +   state->trccidcctlr1 = readl(drvdata->base + TRCCIDCCTLR1);
> > > > +
> > > > +   state->trcvmidcctlr0 = readl(drvdata->base + TRCVMIDCCTLR0);
> > > > +   state->trcvmidcctlr0 = readl(drvdata->base + TRCVMIDCCTLR1);
> > > > +
> > > > +   state->trcclaimset = readl(drvdata->base + TRCCLAIMCLR);
> > > > +
> > > > +   /* wait for TRCSTATR.IDLE to go up */
> > > > +   if (coresight_timeout(drvdata->base, TRCSTATR, TRCSTATR_IDLE_BIT, 1))
> > > > +           dev_err(drvdata->dev,
> > > > +                   "timeout while waiting for Idle Trace Status\n");
> > > > +
> > > > +   /* power can be removed from the trace unit now */
> > > > +   control = readl_relaxed(drvdata->base + TRCPDCR);
> > > > +   control &= ~TRCPDCR_PU;
> > > > +   writel_relaxed(control, drvdata->base + TRCPDCR);
> > > > +
> > > > +   CS_LOCK(drvdata->base);
> > > > +}
> > > > +
> > > > +static void etm4_cpu_restore(struct etmv4_drvdata *drvdata)
> > > > +{
> > > > +   int i;
> > > > +   struct etmv4_save_state *state;
> > > > +
> > > > +   state = &drvdata->save_state;
> > >
> > > Same comment as above about the running CPU.
> > >
> > > > +
> > > > +   CS_UNLOCK(drvdata->base);
> > > > +
> > > > +   writel_relaxed(state->trcclaimset, drvdata->base + TRCCLAIMSET);
> > > > +
> > > > +   writel_relaxed(state->trcprgctlr, drvdata->base + TRCPRGCTLR);
> > > > +   writel_relaxed(state->trcprocselr, drvdata->base + TRCPROCSELR);
> > > > +   writel_relaxed(state->trcconfigr, drvdata->base + TRCCONFIGR);
> > > > +   writel_relaxed(state->trcauxctlr, drvdata->base + TRCAUXCTLR);
> > > > +   writel_relaxed(state->trceventctl0r, drvdata->base + TRCEVENTCTL0R);
> > > > +   writel_relaxed(state->trceventctl1r, drvdata->base + TRCEVENTCTL1R);
> > > > +   writel_relaxed(state->trcstallctlr, drvdata->base + TRCSTALLCTLR);
> > > > +   writel_relaxed(state->trctsctlr, drvdata->base + TRCTSCTLR);
> > > > +   writel_relaxed(state->trcsyncpr, drvdata->base + TRCSYNCPR);
> > > > +   writel_relaxed(state->trcccctlr, drvdata->base + TRCCCCTLR);
> > > > +   writel_relaxed(state->trcbbctlr, drvdata->base + TRCBBCTLR);
> > > > +   writel_relaxed(state->trctraceidr, drvdata->base + TRCTRACEIDR);
> > > > +   writel_relaxed(state->trcqctlr, drvdata->base + TRCQCTLR);
> > > > +
> > > > +   writel_relaxed(state->trcvictlr, drvdata->base + TRCVICTLR);
> > > > +   writel_relaxed(state->trcviiectlr, drvdata->base + TRCVIIECTLR);
> > > > +   writel_relaxed(state->trcvissctlr, drvdata->base + TRCVISSCTLR);
> > > > +   writel_relaxed(state->trcvipcssctlr, drvdata->base + TRCVIPCSSCTLR);
> > > > +   writel_relaxed(state->trcvdctlr, drvdata->base + TRCVDCTLR);
> > > > +   writel_relaxed(state->trcvdsacctlr, drvdata->base + TRCVDSACCTLR);
> > > > +   writel_relaxed(state->trcvdarcctlr, drvdata->base + TRCVDARCCTLR);
> > > > +
> > > > +   for (i = 0; i < drvdata->nrseqstate; i++)
> > > > +           writel_relaxed(state->trcseqevr[i],
> > > > +                                   drvdata->base + TRCSEQEVRn(i));
> > > > +
> > > > +   writel_relaxed(state->trcseqrstevr, drvdata->base + TRCSEQRSTEVR);
> > > > +   writel_relaxed(state->trcseqstr, drvdata->base + TRCSEQSTR);
> > > > +   writel_relaxed(state->trcextinselr, drvdata->base + TRCEXTINSELR);
> > > > +
> > > > +   for (i = 0; i < drvdata->nr_cntr; i++) {
> > > > +           writel_relaxed(state->trccntrldvr[i],
> > > > +                                   drvdata->base + TRCCNTRLDVRn(i));
> > > > +           writel_relaxed(state->trccntctlr[i],
> > > > +                                   drvdata->base + TRCCNTCTLRn(i));
> > > > +           writel_relaxed(state->trccntvr[i],
> > > > +                                   drvdata->base + TRCCNTVRn(i));
> > > > +   }
> > > > +
> > > > +   for (i = 0; i < drvdata->nr_resource * 2; i++)
> > > > +           writel_relaxed(state->trcrsctlr[i],
> > > > +                                   drvdata->base + TRCRSCTLRn(i));
> > > > +
> > > > +   for (i = 0; i < drvdata->nr_ss_cmp; i++) {
> > > > +           writel_relaxed(state->trcssccr[i],
> > > > +                                   drvdata->base + TRCSSCCRn(i));
> > > > +           writel_relaxed(state->trcsscsr[i],
> > > > +                                   drvdata->base + TRCSSCSRn(i));
> > > > +           writel_relaxed(state->trcsspcicr[i],
> > > > +                                   drvdata->base + TRCSSPCICRn(i));
> > > > +   }
> > > > +
> > > > +   for (i = 0; i < drvdata->nr_addr_cmp * 2; i++) {
> > > > +           writel_relaxed(state->trcacvr[i],
> > > > +                                   drvdata->base + TRCACVRn(i));
> > > > +           writel_relaxed(state->trcacatr[i],
> > > > +                                   drvdata->base + TRCACATRn(i));
> > > > +   }
> > > > +
> > > > +   for (i = 0; i < drvdata->numcidc; i++)
> > > > +           writel_relaxed(state->trccidcvr[i],
> > > > +                                   drvdata->base + TRCCIDCVRn(i));
> > > > +
> > > > +   for (i = 0; i < drvdata->numvmidc; i++)
> > > > +           writel_relaxed(state->trcvmidcvr[i],
> > > > +                                   drvdata->base + TRCVMIDCVRn(i));
> > > > +
> > > > +   writel_relaxed(state->trccidcctlr0, drvdata->base + TRCCIDCCTLR0);
> > > > +   writel_relaxed(state->trccidcctlr1, drvdata->base + TRCCIDCCTLR1);
> > > > +
> > > > +   writel_relaxed(state->trcvmidcctlr0, drvdata->base + TRCVMIDCCTLR0);
> > > > +   writel_relaxed(state->trcvmidcctlr0, drvdata->base + TRCVMIDCCTLR1);
> > > > +
> > > > +   writel_relaxed(state->trcclaimset, drvdata->base + TRCCLAIMSET);
> > > > +
> > > > +   /* As recommended by 4.3.7 of ARM IHI 0064D */
> > > > +   dsb(sy);
> > > > +   isb();
> > > > +
> > > > +   etm4_os_unlock(drvdata);
> > >
> > > Same comment as above.
> > >
> > > > +   CS_LOCK(drvdata->base);
> > > > +}
> > > > +
> > > > +static int etm4_cpu_pm_notify(struct notifier_block *nb, unsigned long cmd,
> > > > +                         void *v)
> > > > +{
> > > > +   struct etmv4_drvdata *drvdata = container_of(nb,
> > > > +                                   struct etmv4_drvdata, nb);
> > > > +
> > > > +   if (disable_pm_save)
> > > > +           return NOTIFY_OK;
> > > > +
> > > > +   switch (cmd) {
> > > > +   case CPU_PM_ENTER:
> > > > +           /* save the state if coresight is in use */
> > > > +           if (coresight_is_claimed_any(drvdata->base))
> > >
> > > claimed_any()? At this point if coresight_is_claimed_self_hosted() == false an
> > > external agent is competing with the framework and we should abdicate.
> >
> > If we only support save/restore for self-hosted, then we don't actually need
> > to store as much state as much of it is in the etmv4_config structure.
> >
> > My thinking here was that if an external agent is being used and we power down
> > then we'd also potentially suffer the same issue where state is lost. So
> > saving/restoring may be helpful for external agents as well (or at least
> > wouldn't do harm)...
> 
> There is no point in trying to cover cases where external agents are
> involved - we will always get it wrong.

OK, given that I don't know of any particular cases where this is an issue
I'm happy to change this to !coresight_is_claimed_self_hosted().

>  And the notifiers shouldn't
> return immediately if a tracer is not being used.

What should they do? We only need to save/restore when there is an active
session don't we? Have I misunderstood?

Thanks,

Andrew Murray

> 
> >
> > However I don't know if this is a real issue.
> >
> > >
> > > > +                   etm4_cpu_save(drvdata);
> > > > +           break;
> > > > +   case CPU_PM_EXIT:
> > > > +   case CPU_PM_ENTER_FAILED:
> > > > +           /* trcclaimset is set when there is state to restore */
> > > > +           if (drvdata->save_state.trcclaimset)
> > > > +                   etm4_cpu_restore(drvdata);
> > > > +           break;
> > > > +   default:
> > > > +           return NOTIFY_DONE;
> > > > +   }
> > > > +
> > > > +   return NOTIFY_OK;
> > > > +}
> > > > +
> > > > +static int etm4_cpu_pm_register(struct etmv4_drvdata *drvdata)
> > > > +{
> > > > +   drvdata->nb.notifier_call = etm4_cpu_pm_notify;
> > > > +   return cpu_pm_register_notifier(&drvdata->nb);
> > > > +}
> > > > +#else
> > > > +static int etm4_cpu_pm_register(struct etmv4_drvdata *drvdata) { return 0; }
> > > > +#endif
> > > > +
> > > >  static int etm4_probe(struct amba_device *adev, const struct amba_id *id)
> > > >  {
> > > >     int ret;
> > > > @@ -1141,6 +1382,10 @@ static int etm4_probe(struct amba_device *adev, const struct amba_id *id)
> > > >     etm4_init_trace_id(drvdata);
> > > >     etm4_set_default(&drvdata->config);
> > > >
> > > > +   ret = etm4_cpu_pm_register(drvdata);
> > > > +   if (ret)
> > > > +           goto err_arch_supported;
> > > > +
> > > >     desc.type = CORESIGHT_DEV_TYPE_SOURCE;
> > > >     desc.subtype.source_subtype = CORESIGHT_DEV_SUBTYPE_SOURCE_PROC;
> > > >     desc.ops = &etm4_cs_ops;
> > > > diff --git a/drivers/hwtracing/coresight/coresight-etm4x.h b/drivers/hwtracing/coresight/coresight-etm4x.h
> > > > index 52786e9d8926..f4cff447c8a1 100644
> > > > --- a/drivers/hwtracing/coresight/coresight-etm4x.h
> > > > +++ b/drivers/hwtracing/coresight/coresight-etm4x.h
> > > > @@ -174,7 +174,8 @@
> > > >                                      ETM_MODE_EXCL_KERN | \
> > > >                                      ETM_MODE_EXCL_USER)
> > > >
> > > > -#define TRCSTATR_IDLE_BIT          0
> > > > +#define TRCSTATR_IDLE_BIT          BIT(0)
> > > > +#define TRCSTATR_PMSTABLE_BIT              BIT(1)
> > > >  #define ETM_DEFAULT_ADDR_COMP              0
> > > >
> > > >  /* PowerDown Control Register bits */
> > > > @@ -281,6 +282,65 @@ struct etmv4_config {
> > > >     u32                             ext_inp;
> > > >  };
> > > >
> > > > +/**
> > > > + * struct etm4_save_state - state to be preserved when ETM is without power
> > > > + */
> > > > +struct etmv4_save_state {
> > > > +   u32     trcprgctlr;
> > > > +   u32     trcprocselr;
> > > > +   u32     trcconfigr;
> > > > +   u32     trcauxctlr;
> > > > +   u32     trceventctl0r;
> > > > +   u32     trceventctl1r;
> > > > +   u32     trcstallctlr;
> > > > +   u32     trctsctlr;
> > > > +   u32     trcsyncpr;
> > > > +   u32     trcccctlr;
> > > > +   u32     trcbbctlr;
> > > > +   u32     trctraceidr;
> > > > +   u32     trcqctlr;
> > > > +
> > > > +   u32     trcvictlr;
> > > > +   u32     trcviiectlr;
> > > > +   u32     trcvissctlr;
> > > > +   u32     trcvipcssctlr;
> > > > +   u32     trcvdctlr;
> > > > +   u32     trcvdsacctlr;
> > > > +   u32     trcvdarcctlr;
> > > > +
> > > > +   u32     trcseqevr[ETM_MAX_SEQ_STATES];
> > > > +   u32     trcseqrstevr;
> > > > +   u32     trcseqstr;
> > > > +   u32     trcextinselr;
> > > > +   u32     trccntrldvr[ETMv4_MAX_CNTR];
> > > > +   u32     trccntctlr[ETMv4_MAX_CNTR];
> > > > +   u32     trccntvr[ETMv4_MAX_CNTR];
> > > > +
> > > > +   u32     trcrsctlr[ETM_MAX_RES_SEL * 2];
> > > > +
> > > > +   u32     trcssccr[ETM_MAX_SS_CMP];
> > > > +   u32     trcsscsr[ETM_MAX_SS_CMP];
> > > > +   u32     trcsspcicr[ETM_MAX_SS_CMP];
> > > > +
> > > > +   u64     trcacvr[ETM_MAX_SINGLE_ADDR_CMP];
> > > > +   u64     trcacatr[ETM_MAX_SINGLE_ADDR_CMP];
> > > > +   u64     trcdvcvr[ETM_MAX_DATA_VAL_CMP];
> > > > +   u64     trcdvcmr[ETM_MAX_DATA_VAL_CMP];
> > > > +   u64     trccidcvr[ETMv4_MAX_CTXID_CMP];
> > > > +   u32     trcvmidcvr[ETM_MAX_VMID_CMP];
> > > > +   u32     trccidcctlr0;
> > > > +   u32     trccidcctlr1;
> > > > +   u32     trcvmidcctlr0;
> > > > +   u32     trcvmidcctlr1;
> > > > +
> > > > +   u32     trcclaimset;
> > > > +
> > > > +   u32     cntr_val[ETMv4_MAX_CNTR];
> > > > +   u32     seq_state;
> > > > +   u32     vinst_ctrl;
> > > > +   u32     ss_status[ETM_MAX_SS_CMP];
> > > > +};
> > > > +
> > > >  /**
> > > >   * struct etm4_drvdata - specifics associated to an ETM component
> > > >   * @base:       Memory mapped base address for this component.
> > > > @@ -337,6 +397,8 @@ struct etmv4_config {
> > > >   * @atbtrig:       If the implementation can support ATB triggers
> > > >   * @lpoverride:    If the implementation can support low-power state over.
> > > >   * @config:        structure holding configuration parameters.
> > > > + * @save_state:    State to be preserved across power loss
> > > > + * @nb:            CPU PM notifier
> > > >   */
> > > >  struct etmv4_drvdata {
> > > >     void __iomem                    *base;
> > > > @@ -383,6 +445,8 @@ struct etmv4_drvdata {
> > > >     bool                            atbtrig;
> > > >     bool                            lpoverride;
> > > >     struct etmv4_config             config;
> > > > +   struct etmv4_save_state         save_state;
> > > > +   struct notifier_block           nb;
> > > >  };
> > > >
> > > >  /* Address comparator access types */
> > > > diff --git a/drivers/hwtracing/coresight/coresight.c b/drivers/hwtracing/coresight/coresight.c
> > > > index 4b130281236a..e85d09e597a0 100644
> > > > --- a/drivers/hwtracing/coresight/coresight.c
> > > > +++ b/drivers/hwtracing/coresight/coresight.c
> > > > @@ -140,7 +140,7 @@ static inline bool coresight_is_claimed_self_hosted(void __iomem *base)
> > > >     return coresight_read_claim_tags(base) == CORESIGHT_CLAIM_SELF_HOSTED;
> > > >  }
> > > >
> > > > -static inline bool coresight_is_claimed_any(void __iomem *base)
> > > > +bool coresight_is_claimed_any(void __iomem *base)
> > > >  {
> > > >     return coresight_read_claim_tags(base) != 0;
> > > >  }
> > > > diff --git a/include/linux/coresight.h b/include/linux/coresight.h
> > > > index 62a520df8add..4f7ba923ffc4 100644
> > > > --- a/include/linux/coresight.h
> > > > +++ b/include/linux/coresight.h
> > > > @@ -268,6 +268,8 @@ extern int coresight_claim_device_unlocked(void __iomem *base);
> > > >  extern void coresight_disclaim_device(void __iomem *base);
> > > >  extern void coresight_disclaim_device_unlocked(void __iomem *base);
> > > >
> > > > +extern bool coresight_is_claimed_any(void __iomem *base);
> > > > +
> > > >  #else
> > > >  static inline struct coresight_device *
> > > >  coresight_register(struct coresight_desc *desc) { return NULL; }
> > > > @@ -290,6 +292,11 @@ static inline int coresight_claim_device(void __iomem *base)
> > > >  static inline void coresight_disclaim_device(void __iomem *base) {}
> > > >  static inline void coresight_disclaim_device_unlocked(void __iomem *base) {}
> > > >
> > > > +static inline bool coresight_is_claimed_any(void __iomem *base)
> > > > +{
> > > > +   return false;
> > > > +}
> > > > +
> > >
> > > I wanted to test your code but it doesn't apply on the CS next branch:
> > >
> > > https://git.linaro.org/kernel/coresight.git/log/?h=next
> >
> > Oh sorry about that, this was ontop of v5.2-rc5, I'll rebase to the CS branch
> > on the next iteration.
> >
> > Thanks for the responsive feedback.
> >
> > Andrew Murray
> >
> > >
> > > Thanks,
> > > Mathieu
> > >
> > > >  #endif
> > > >
> > > >  #ifdef CONFIG_OF
> > > > --
> > > > 2.21.0
> > > >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
