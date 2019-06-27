Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3FED57DF6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 10:12:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BbdOW8cW/pGJ0cEgjH5Uq+rqyvGxclJ9Oilt3Wh7Sww=; b=JGFoY/Du76dEk3
	UarB3tyVmUOqhMWKDLlOm/qfCCvcyP9acwfSH/1SpuHM94p4kYSq4DVpNPDJ7l2HSqi/VFUrcGnPX
	uFPG9+bnB6KKJ8/rOcrDEAkxbC2W08yvilNPRzeUsXCsOsNf6XrVVb+I+HfGANRHT4F8jV4KDu9UZ
	GiLmWgQSCeMOrGRl3i+78YQKKAj8eAGQYvrQpMfI9DXdaOpqPJVfNDQy3ckmc09p5NN+t1P/+Ggd4
	JY+PhMllG0cKFmYV7Ps2nTOT2YYmLBR9+B0VysqK5b/6LBH/gdfL8uxNGQ16qj1DdGSb5ds9GRYZS
	FmINCdVAU7uUG5z9JFAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgPW6-0003q8-Aq; Thu, 27 Jun 2019 08:12:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hgPVm-0003oU-3T
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 08:12:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C2246360;
 Thu, 27 Jun 2019 01:12:03 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4273D3F706;
 Thu, 27 Jun 2019 01:12:03 -0700 (PDT)
Date: Thu, 27 Jun 2019 09:12:01 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH v1 5/5] coresight: etm4x: save/restore state across CPU
 low power states
Message-ID: <20190627081201.GA34530@e119886-lin.cambridge.arm.com>
References: <20190618125433.9739-1-andrew.murray@arm.com>
 <20190618125433.9739-6-andrew.murray@arm.com>
 <20190618225549.GB24894@xps15>
 <494e131a-0fcf-a4b0-6112-cb5861756004@arm.com>
 <CANLsYkwnCMNnMM+H4+iXJv3AJADvW7V09fi+s1nVbYvvOLpuwg@mail.gmail.com>
 <CAJ9a7VjaXqx2moWB8JGyfHxzPEdvpuKcDXwobER9PN2GdrgfQA@mail.gmail.com>
 <CANLsYkwMO8Bq1Hz6gtaTDLcsWrTzkKfTkkDjvEpAYe2guANUhA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANLsYkwMO8Bq1Hz6gtaTDLcsWrTzkKfTkkDjvEpAYe2guANUhA@mail.gmail.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_011206_261068_78976312 
X-CRM114-Status: GOOD (  33.17  )
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
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 26, 2019 at 10:57:17AM -0600, Mathieu Poirier wrote:
> On Wed, 26 Jun 2019 at 04:21, Mike Leach <mike.leach@linaro.org> wrote:
> >
> > Hi,
> >
> > Sorry, a bit late on this set as it didn't appear in the Coresight
> > mailing list as expected per suzukis suggestion.
> >
> > On Tue, 25 Jun 2019 at 20:57, Mathieu Poirier
> > <mathieu.poirier@linaro.org> wrote:
> > >
> > > Hi,
> > >
> > > On Tue, 25 Jun 2019 at 04:07, Suzuki K Poulose <suzuki.poulose@arm.com> wrote:
> > > >
> > > > Hi Mathieu,
> > > >
> > > > On 18/06/2019 23:55, Mathieu Poirier wrote:
> > > > > On Tue, Jun 18, 2019 at 01:54:33PM +0100, Andrew Murray wrote:
> > > > >> Some hardware will ignore bit TRCPDCR.PU which is used to signal
> > > > >> to hardware that power should not be removed from the trace unit.
> > > > >> Let's mitigate against this by saving and restoring the trace
> > > > >> unit state when the CPU enters low power states.
> > > > >>
> > > > >> To provide the benefit to both self-hosted and external debuggers
> > > > >> we save/restore the entire state which includes etmv4_config data
> > > > >> and dynamic data such as inflight counter values, sequencer
> > > > >> states, etc.
> > > > >>
> > > > >> To reduce CPU suspend/resume latency the state is only saved or
> > > > >> restored if coresight is in use as determined by the claimset
> > > > >> registers.
> > > > >>
> > > > >> To aid debug of CPU suspend/resume a disable_pm_save parameter
> > > > >> is provided to disable this feature.
> > > > >>
> > > > >> Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> > > >
> > > >
> > > > >> +static int etm4_cpu_pm_notify(struct notifier_block *nb, unsigned long cmd,
> > > > >> +                          void *v)
> > > > >> +{
> > > > >> +    struct etmv4_drvdata *drvdata = container_of(nb,
> > > > >> +                                    struct etmv4_drvdata, nb);
> > > > >> +
> > > > >> +    if (disable_pm_save)
> > > > >> +            return NOTIFY_OK;
> > > > >> +
> > > > >> +    switch (cmd) {
> > > > >> +    case CPU_PM_ENTER:
> > > > >> +            /* save the state if coresight is in use */
> > > > >> +            if (coresight_is_claimed_any(drvdata->base))
> > > > >
> > > > > claimed_any()? At this point if coresight_is_claimed_self_hosted() == false an
> > > > > external agent is competing with the framework and we should abdicate.
> > > >
> > > > I think claimed_any() is correct check. As per PSCI, ARM DEN 0022D, section
> > > > 6.8.1 Debug and Trace save and restore,  the OS software is
> > > > in charge of save/restoring the context of Debug/Trace. The claim tags
> > > > are a mechanism to indicate who is consuming the components. Also, given
> > > > the OS software doesn't have a reliable way to communicate back to the
> > > > the External debugger about its decision to power down the CPU, that
> > > > makes sense to save/restore it.
> > >
> > > What I understand from section 6.8.1 is that supervisory and OS power
> > > management SW are responsible to save the debug context when operating
> > > in their respective mode, which reflects my comment above.
> > >
> > > I also see that two options are available to an external agent, i.e
> > > either use the DBGNOPWRDWN and DBGPWRUPREQ bits to request powerdown
> > > emulation or use the "OS Unlock Catch" debug event (which probably
> > > relates to the lost of context bit) to restore the debug context.
> > > From where I stand there is no provision for OS power management code
> > > to take care of the debug context of an external agent.  Am I missing
> > > something here?
> > >
> >
> > OS lock is precisely the provision designed for an OS to handle
> > save/restore on behalf of an external debug agent. OS lock blocks the
> > external debugger from accessing the coresight when it is powered but
> > being updated by the OS
> >
> > A scenario may be:-
> > a) external debug halts core(s) & programs Coresight subsystem -
> > likely extracting trace via TPIU.
> > b) external debug agent restarts cores - linux (continues) running /
> > booting - collecting the trace we want.
> > c) Some event happens and the external debug agent regains control.
> > (breakpoint / halt request).
> >
> > During b) cores may be powering up and down. When this happens we need
> > the state to be saved and restored so that trace continues. (assuming
> > that the various debug power requests above are either not supported
> > in the fw/hardware or not asserted by the external agent).
> > The external debug agent cannot safely manipulate coresight during
> > this period - it can never know if a register is going to be available
> > - a classic race condition.
> >
> > Irrespective of whoever "owns" the ETM programming - if the CPUidle
> > notification is required due to implementation issues, then in both
> > cases the save and restore is required.
> >
> > For the external agent owner I agree that everything needs to be saved
> >  - but for self hosted, just the dynamic values should be read back,
> > much of the remainder of the information is already held in the driver
> > in etmv4_config. This should help reduce at least the power down
> > latency.
> >
> >
> 
> Many thanks for shedding light on the expectations of external agents.

Indeed, thanks for the helpful feedback.

> 
> Andrew, from Mike's explanation the original implementation of
> checking any of the claimtag bits to trigger a save/restore was valid.
> It also means that contrary to one of my previous comment, context
> save restore should always be performed regardless of whether the
> framework is being used for self hosted debugging or not.

Thanks for clarifying this for me. I'll share a v2 shortly.

Thanks,

Andrew Murray

> 
> Thanks,
> Mathieu
> 
> >
> >
> > Regards
> >
> > Mike
> >
> >
> > > >
> > > > Cheers
> > > > Suzuki
> > >
> > > _______________________________________________
> > > linux-arm-kernel mailing list
> > > linux-arm-kernel@lists.infradead.org
> > > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> >
> >
> >
> > --
> > Mike Leach
> > Principal Engineer, ARM Ltd.
> > Manchester Design Centre. UK

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
