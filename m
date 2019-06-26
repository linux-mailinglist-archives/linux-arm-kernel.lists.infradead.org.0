Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FEDB56F33
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 18:57:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j6fDpRMR1GSoV8+Wqmn2jGoinHJ2HT0Rwm8vPO7Hrx0=; b=FXiD0E8Aq2NCB0
	7FAcdOKuyZCkWRS6xHI7q9lj1QObFVFAv0haZsggSdfT3UJMQrRB6+lK+gtTej/AleKBaFL3r45Ln
	CaA6cVpE+mP7ZSs4HVz+hTAzinx0pNcpCKZ9t5gH2xAiy9Bo2XKjRzsxdxsLCPI9TIgd02cO288JJ
	6n8sMh/omzhFY7eG7H3bwreH4XxbZJS61m3ftW6cL2c36Eg1p9t4q9fn6mPNt3xTFCxsAZLK5LMsr
	kggzg4gwo6xPlLiV+Pk1lxexAPvZXHot3LN1Tr1G3PyWVQDOIRhm8fqBq6iBIXX6KadmaRYC4nEGG
	Rr2O9aucLH9o2LevYnbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgBEs-00073z-OI; Wed, 26 Jun 2019 16:57:42 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgBEf-00073I-QZ
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 16:57:31 +0000
Received: by mail-io1-xd42.google.com with SMTP id e5so3502822iok.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 09:57:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LLUb2kXSRE/ulvwgy/3X0U+FgO6kxJcPPA79Ae9V34g=;
 b=kqOeImeuBTosh56ScGpjFaOTaS2BK/vBf4qyEJGvSsygEtUUpwGBEcqTVRmquQqwjp
 jIviOUgKYqq3GJK1GM+GMQdIaqqzpjIJaJHqComKjma+jk9BQUdwgLypshVykQqJJTOF
 RFqjNS7GlS2HZK93VYXy42OvIvEVQF7eAXt63I6GYUtIbMgvk+FxJF9HIcryAVJKIMOI
 bBnsQZc+PzrA3djy6MXB8TvXzWamzrOxFAvoEpq3RahecO2mdr6HJN2H2dN9pxowFBnm
 HsrGyLdqAJKMux3KuPoctU25H9a+j5ApnIMWXhm9uRn1HZhWELUMt/E+HIMroe+V/Vsy
 EEBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LLUb2kXSRE/ulvwgy/3X0U+FgO6kxJcPPA79Ae9V34g=;
 b=oYx9MS6mECBdwnud1X6hRPlE1+3O/TPLXzEyx032JsstYKFC1Fs48G+9FB4Gga0T4/
 rs+abAFGgZYJdNtGN85PwleOIPmPJ3IgErwS0AYJO64zlHADI2PdKfBhSP9bSRkzxhEX
 DHApA49CAdqSWNL5QRXMjk/p5Y3ZYUdSVYzWNd9W0DoxH1gXBT7YPgHBPsuXOXDS5r7m
 XZBw9okK6ZDbobR4ex7T3ZXNLSgT7dRf2GoLkBIn2ne2+ZkjbBUB516nXp9uBoVK0B80
 AzND68BPjaJ1dv8gln2jgxMQ7izIZpiNKLehaEemuXi2NMTolGyRKg222an75WyTiw8T
 E3/w==
X-Gm-Message-State: APjAAAXf+cMORfyyt9FK/RsiS1QYQLWttviB1je6RUwJ08ZxQaa2C0Qq
 iXc+Jz+gbzT9PkkUizekolZ3K+/r8rP3AgQkmNuRyw==
X-Google-Smtp-Source: APXvYqwqqTDtZsK7TdtzD6zYR5wU1IaVgTNtne6mvhxQi2tkKzV7sy0vHZCjaodY7DUbrcJUoBN1DTw9ecMc++6ikmU=
X-Received: by 2002:a5e:c241:: with SMTP id w1mr5846861iop.58.1561568248791;
 Wed, 26 Jun 2019 09:57:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190618125433.9739-1-andrew.murray@arm.com>
 <20190618125433.9739-6-andrew.murray@arm.com>
 <20190618225549.GB24894@xps15> <494e131a-0fcf-a4b0-6112-cb5861756004@arm.com>
 <CANLsYkwnCMNnMM+H4+iXJv3AJADvW7V09fi+s1nVbYvvOLpuwg@mail.gmail.com>
 <CAJ9a7VjaXqx2moWB8JGyfHxzPEdvpuKcDXwobER9PN2GdrgfQA@mail.gmail.com>
In-Reply-To: <CAJ9a7VjaXqx2moWB8JGyfHxzPEdvpuKcDXwobER9PN2GdrgfQA@mail.gmail.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Wed, 26 Jun 2019 10:57:17 -0600
Message-ID: <CANLsYkwMO8Bq1Hz6gtaTDLcsWrTzkKfTkkDjvEpAYe2guANUhA@mail.gmail.com>
Subject: Re: [PATCH v1 5/5] coresight: etm4x: save/restore state across CPU
 low power states
To: Mike Leach <mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_095729_874915_4465830C 
X-CRM114-Status: GOOD (  31.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Andrew Murray <andrew.murray@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 26 Jun 2019 at 04:21, Mike Leach <mike.leach@linaro.org> wrote:
>
> Hi,
>
> Sorry, a bit late on this set as it didn't appear in the Coresight
> mailing list as expected per suzukis suggestion.
>
> On Tue, 25 Jun 2019 at 20:57, Mathieu Poirier
> <mathieu.poirier@linaro.org> wrote:
> >
> > Hi,
> >
> > On Tue, 25 Jun 2019 at 04:07, Suzuki K Poulose <suzuki.poulose@arm.com> wrote:
> > >
> > > Hi Mathieu,
> > >
> > > On 18/06/2019 23:55, Mathieu Poirier wrote:
> > > > On Tue, Jun 18, 2019 at 01:54:33PM +0100, Andrew Murray wrote:
> > > >> Some hardware will ignore bit TRCPDCR.PU which is used to signal
> > > >> to hardware that power should not be removed from the trace unit.
> > > >> Let's mitigate against this by saving and restoring the trace
> > > >> unit state when the CPU enters low power states.
> > > >>
> > > >> To provide the benefit to both self-hosted and external debuggers
> > > >> we save/restore the entire state which includes etmv4_config data
> > > >> and dynamic data such as inflight counter values, sequencer
> > > >> states, etc.
> > > >>
> > > >> To reduce CPU suspend/resume latency the state is only saved or
> > > >> restored if coresight is in use as determined by the claimset
> > > >> registers.
> > > >>
> > > >> To aid debug of CPU suspend/resume a disable_pm_save parameter
> > > >> is provided to disable this feature.
> > > >>
> > > >> Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> > >
> > >
> > > >> +static int etm4_cpu_pm_notify(struct notifier_block *nb, unsigned long cmd,
> > > >> +                          void *v)
> > > >> +{
> > > >> +    struct etmv4_drvdata *drvdata = container_of(nb,
> > > >> +                                    struct etmv4_drvdata, nb);
> > > >> +
> > > >> +    if (disable_pm_save)
> > > >> +            return NOTIFY_OK;
> > > >> +
> > > >> +    switch (cmd) {
> > > >> +    case CPU_PM_ENTER:
> > > >> +            /* save the state if coresight is in use */
> > > >> +            if (coresight_is_claimed_any(drvdata->base))
> > > >
> > > > claimed_any()? At this point if coresight_is_claimed_self_hosted() == false an
> > > > external agent is competing with the framework and we should abdicate.
> > >
> > > I think claimed_any() is correct check. As per PSCI, ARM DEN 0022D, section
> > > 6.8.1 Debug and Trace save and restore,  the OS software is
> > > in charge of save/restoring the context of Debug/Trace. The claim tags
> > > are a mechanism to indicate who is consuming the components. Also, given
> > > the OS software doesn't have a reliable way to communicate back to the
> > > the External debugger about its decision to power down the CPU, that
> > > makes sense to save/restore it.
> >
> > What I understand from section 6.8.1 is that supervisory and OS power
> > management SW are responsible to save the debug context when operating
> > in their respective mode, which reflects my comment above.
> >
> > I also see that two options are available to an external agent, i.e
> > either use the DBGNOPWRDWN and DBGPWRUPREQ bits to request powerdown
> > emulation or use the "OS Unlock Catch" debug event (which probably
> > relates to the lost of context bit) to restore the debug context.
> > From where I stand there is no provision for OS power management code
> > to take care of the debug context of an external agent.  Am I missing
> > something here?
> >
>
> OS lock is precisely the provision designed for an OS to handle
> save/restore on behalf of an external debug agent. OS lock blocks the
> external debugger from accessing the coresight when it is powered but
> being updated by the OS
>
> A scenario may be:-
> a) external debug halts core(s) & programs Coresight subsystem -
> likely extracting trace via TPIU.
> b) external debug agent restarts cores - linux (continues) running /
> booting - collecting the trace we want.
> c) Some event happens and the external debug agent regains control.
> (breakpoint / halt request).
>
> During b) cores may be powering up and down. When this happens we need
> the state to be saved and restored so that trace continues. (assuming
> that the various debug power requests above are either not supported
> in the fw/hardware or not asserted by the external agent).
> The external debug agent cannot safely manipulate coresight during
> this period - it can never know if a register is going to be available
> - a classic race condition.
>
> Irrespective of whoever "owns" the ETM programming - if the CPUidle
> notification is required due to implementation issues, then in both
> cases the save and restore is required.
>
> For the external agent owner I agree that everything needs to be saved
>  - but for self hosted, just the dynamic values should be read back,
> much of the remainder of the information is already held in the driver
> in etmv4_config. This should help reduce at least the power down
> latency.
>
>

Many thanks for shedding light on the expectations of external agents.

Andrew, from Mike's explanation the original implementation of
checking any of the claimtag bits to trigger a save/restore was valid.
It also means that contrary to one of my previous comment, context
save restore should always be performed regardless of whether the
framework is being used for self hosted debugging or not.

Thanks,
Mathieu

>
>
> Regards
>
> Mike
>
>
> > >
> > > Cheers
> > > Suzuki
> >
> > _______________________________________________
> > linux-arm-kernel mailing list
> > linux-arm-kernel@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
>
>
>
> --
> Mike Leach
> Principal Engineer, ARM Ltd.
> Manchester Design Centre. UK

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
