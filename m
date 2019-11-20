Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13BD11042A1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 18:55:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Tp031kji93YklbptUxJGXe6PainBASSX7TAQM84Tq0=; b=EESJ7Lz2SnOBjX
	pnPJnqk6n5ddk///CVr08escSyBeEHYcAe0Qs+Lme2zTNslxw9k8X7vcMYc3unbhrWL/oKwzUFHni
	h4LGYLrO0Bn3pj+HJ4y3A4Fsdpc1MoSyz6zdn6dFWdrepkDt1F09IJiuHSy/cZuzuzZTaumDFTVyY
	V6wEDkmTNYeO0Zqpo4BzQxXb34AZKoUI/zmU49K3r+AZyLlPrXgoSVBjaFAmz0vcylp9K1sajPhr8
	dlE22fnGppLV+qlt3+b5+LG894s5jcN7ve03HL0M7CxrmqAF89dU1lIu2B8E1pvTuVRELcbG5ZP5I
	CTsJHEzyIKcLReYITSrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXUCJ-0004DA-7w; Wed, 20 Nov 2019 17:55:23 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXUC7-0004Ax-O7
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 17:55:13 +0000
Received: by mail-qt1-x844.google.com with SMTP id 14so475648qtf.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 09:55:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=e+ZEqM4U0hb71CEMqf1nFIm53ZSrIz954VQBBJKLMsM=;
 b=dfOoR313WSCYc81J3ox0MXo50N+i3i8s5K2LLQPIbtxpvW2DegMOhscU+ppwZikl5l
 ZaOw1rSALSABaqdD/umrvRrJ/BjHFNxj4mqrljdhNlB9XkRWWcEAvoumVndiKB+nG4g+
 XbnLEAloR3VZmFCLshw4fnfiBTwl+PFzKZC3RDscve1l1FzFj0PqA9adRPQ10K9HGtfu
 vs469GrLgkPg5H8O8y/WGJgxl/viIo3vv1DhVwCM22NDkaLizHPA8nRwUiTvcbHcMoaU
 cKr4uOvYSyVuGpA9cnnzSIj7h+c0Q84AQzxxABAo0hllbiW7CVtFjKuSPJRX9N7y2G1/
 oC/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=e+ZEqM4U0hb71CEMqf1nFIm53ZSrIz954VQBBJKLMsM=;
 b=VD4VHHQACPlvZhZw9DtDcQw8O5ymh1zGf3kQ/JTQSEmu+oH24ocZ0IQ7W/scQraEtL
 bXs3Rv7mzLWLot9+5SnBdJDn2XAqWtTAV4Mn80NTRerp41m0R6K/BZzD4z2MO4VHDyGf
 7IkkMnpQPeH0nxeLowmDWghI58RTuoHRPpGyHPd77WCeGRK6EHIwOAuCyrZC/H4uuoZU
 /7TEU200HLvME8NP4n97rix1+LTwH3Hr+860+FVIAtEPpG0loFklk0WfQnesXjIo+EK6
 V/sTIN+8CS8WsJfpftpAGLK6pAqFUsF75+LmCXOyN7lud+QjN1pvs76sxw6Koc30G7Zp
 HwlA==
X-Gm-Message-State: APjAAAVY6UWHe3HZekZDXQmGMtpF2vbQpL+qHG3WvHuk+MZFcRtY7+Af
 Q6oJ08fNEX57PmycKeavL1morMuTti0YYjhl1KI=
X-Google-Smtp-Source: APXvYqw8mDnC2HpSMcKVbzhz/c6PQCm6McgIBD7dJPYbAwhvPvwQfD+vxKVYDw+XZyXq4m73XDgXAjZxwUFInC/fHSE=
X-Received: by 2002:ac8:7a92:: with SMTP id x18mr3883961qtr.123.1574272510190; 
 Wed, 20 Nov 2019 09:55:10 -0800 (PST)
MIME-Version: 1.0
References: <CAPaFbat4MM0=iVB-VazTK9=2qRebAgEN4euYCTESRo3yfx75Kw@mail.gmail.com>
 <20191119233633.GG25745@shell.armlinux.org.uk>
 <CAPaFbatG+ePwjCnBva1tfmzmvpHZv9xW3nM4gj2DTpFn=D+9Vg@mail.gmail.com>
 <2cd3e872-57d5-5cbb-78d7-98da6447dc59@arm.com>
 <CAPaFbasJGxV=mEGHAOWdt31vapCfV_RyD1Ptz6aa_WTp6htPKg@mail.gmail.com>
 <20191120105017.GN25745@shell.armlinux.org.uk>
 <CAPaFbasKH_BRARMtQYqxWR6koQB=cF_Ln5n=-7uCqdbjqmu9Rg@mail.gmail.com>
 <11daeee6-8dca-96fa-b6ee-a25ad3e815a9@arm.com>
 <20191120135852.GR25745@shell.armlinux.org.uk>
 <CAPaFbat=TXqGYx5KrQaO0x_r7wYQ9sno1j07Je437n8+P1Gi6g@mail.gmail.com>
 <20191120171350.GS25745@shell.armlinux.org.uk>
In-Reply-To: <20191120171350.GS25745@shell.armlinux.org.uk>
From: Leonid Movshovich <event.riga@gmail.com>
Date: Wed, 20 Nov 2019 17:54:59 +0000
Message-ID: <CAPaFbasOmQkWSdsyxGfbHO19g9UL3mRKLp0we3szSoa1xCPEdg@mail.gmail.com>
Subject: Re: [PATCH] irq-gic: select all CPU's selected in interrupt affinity
 settings
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_095511_790580_42B816CD 
X-CRM114-Status: GOOD (  36.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (event.riga[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 20 Nov 2019 at 17:13, Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Wed, Nov 20, 2019 at 03:07:16PM +0000, Leonid Movshovich wrote:
> > On Wed, 20 Nov 2019 at 13:58, Russell King - ARM Linux admin
> > <linux@armlinux.org.uk> wrote:
> > >
> > > On Wed, Nov 20, 2019 at 01:33:11PM +0000, Robin Murphy wrote:
> > > > On 20/11/2019 11:25 am, Leonid Movshovich wrote:
> > > > > On Wed, 20 Nov 2019 at 10:50, Russell King - ARM Linux admin
> > > > > <linux@armlinux.org.uk> wrote:
> > > > > >
> > > > > > On Wed, Nov 20, 2019 at 10:44:39AM +0000, Leonid Movshovich wrote:
> > > > > > > On Wed, 20 Nov 2019 at 01:15, Robin Murphy <robin.murphy@arm.com> wrote:
> > > > > > > >
> > > > > > > > On 2019-11-20 12:24 am, Leonid Movshovich wrote:
> > > > > > > > > On Tue, 19 Nov 2019 at 23:36, Russell King - ARM Linux admin
> > > > > > > > > <linux@armlinux.org.uk> wrote:
> > > > > > > > > >
> > > > > > > > > > On Tue, Nov 19, 2019 at 11:12:26PM +0000, event wrote:
> > > > > > > > > > > So far only a CPU selected with top affinity bit was selected. This
> > > > > > > > > > > resulted in all interrupts
> > > > > > > > > > > being processed by CPU0 by default despite "FF" default affinity
> > > > > > > > > > > setting for all interrupts
> > > > > > > > > >
> > > > > > > > > > Have you checked whether this causes _ALL_ CPUs in the mask to be
> > > > > > > > > > delivered a single interrupt, thereby causing _ALL_ CPUs to be
> > > > > > > > > > slowed down and hit the same locks at the same time.
> > > > > > > > > >
> > > > > > > > >
> > > > > > > > > Yes, I've checked this. No, interrupt is delivered to only one CPU.
> > > > > > > > > Also ARM GIC architecture specification specifically states in chapter
> > > > > > > > > 3.1.1 that hardware interrupts are delivered to a single CPU in
> > > > > > > > > multiprocessor system ("1-N model").
> > > > > > > >
> > > > > > > > But see also section 3.2.3 - just because only one CPU actually runs the
> > > > > > > > given ISR doesn't necessarily guarantee that the others *weren't*
> > > > > > > > interrupted. I'd also hesitate to make any assumptions that all GIC
> > > > > > > > implementations behave exactly the same way.
> > > > > > > >
> > > > > > > > Robin.
> > > > > > >
> > > > > > > Yes, that's right, however:
> > > > > > > 1. They are only interrupted for a split-second, since interrupt is
> > > > > > > immediately ACKed in gic_handle_irq
> > > > > >
> > > > > > Even that is detrimental - consider cpuidle where a CPU is placed in
> > > > > > a low power state waiting for an interrupt, and it keeps getting woken
> > > > > > for interrupts that it isn't able to handle.  The effect will be to
> > > > > > stop the CPU hitting the lower power states, which would be a regression
> > > > > > over how the kernel behaves today.
> > > > > >
> > > > > > > 2. More important that smp_affinity in procfs is defined to allow user
> > > > > > > to configure multiple CPU's to handle interrupts (see
> > > > > > > Documentation/IRQ-affinity.txt) which is effectively prohibited in
> > > > > > > current implementation. I mean, when user sets it to FF, she expects
> > > > > > > all CPUs to process interrupts, not CPU0 only
> > > >
> > > > I have to say, my interaction with the IRQ layer is far more as a "user"
> > > > than as a "developer", yet I've always assumed that the affinity mask
> > > > represents the set of CPUs that *may* handle an interrupt and have never
> > > > felt particularly surprised by the naive implementation of "just pick the
> > > > first one".
> >
> > Kernel documentation in Documentation/IRQ-affinity.txt sets an
> > expectation that IRQs would be spread between CPUs evenly in case
> > multiple CPUs are selected in smp_affinity. It also seems to be quite
> > a common practice (in consumer devices at least) to have interrupts
> > spread between CPUs. At least that's what happens on my PC and phone
> > according to /proc/interrupts
> >
> > > >
> > > > Do these users also expect the scheduler to constantly context-switch a
> > > > single active task all over the place just because the default thread
> > > > affinity mask says it can?
> > >
> > > It is my understanding that the scheduler will try to keep tasks on
> > > the CPU they are already running on, unless there's a benefit to
> > > migrating it to a different CPU - because if you're constantly
> > > migrating code between different CPUs, you're having to bounce
> > > cache lines around the system.
> > >
> > > > > > The reason we've ended up with that on ARM is precisely because it
> > > > > > wasted CPU resources, and my attempts at writing code to distribute
> > > > > > the interrupt between CPU cores did not have a successful outcome.
> > > > > > So, the best thing that could be done was to route interrupts to the
> > > > > > first core, and run irqbalance to distribute the interrupts in a
> > > > > > sensible, cache friendly way between CPU cores.
> > > > > >
> > > > > > And no, the current implementation is *NOT* prohibited.  You can't
> > > > > > prohibit something that hardware hasn't been able to provide.
> > > > > >
> > > > >
> > > > > Hardware allows delivering interrupt to random CPU from selected
> > > > > bitmask and current implementation doesn't allow to configure this.
> > > > > While this may be an issue for power-concerned systems, there are also
> > > > > systems with plenty of electricity where using all CPUs for e.g.
> > > > > network packet handling is more important.
> > > >
> > > > It's not just about batteries - more and more SoCs these days have
> > > > internally constrained power/thermal budgets too. Think of Intel's turbo
> > > > boost, or those Amlogic TV box chips that can only hit their advertised top
> > > > frequencies with one or two cores active - on systems like that, yanking all
> > > > the cores out of standby every time could be actively detrimental to
> > > > single-thread performance and actually end up *increasing*
> > > > interrupt-handling latency.
> > > >
> > > > If you want to optimise a particular system for a particular use-case,
> > > > you're almost certainly better off manually tuning affinities anyway
> > > > (certain distros already do this). If you mostly just want /proc/interrupts
> > > > to look pretty, there's irqbalance.
> > >
> > > The conclusion I came to when I did the initial 32-bit ARM SMP support
> > > was:
> > >
> > > 1) it is policy, and userspace deals with policy
> > > 2) routing the IRQ in to distribute it between CPUs is difficult
> >
> > Yes, but current implementation of smp_affinity does not allow to set
> > multiple CPUs to handle same interrupt. Neither hardware nor software
> > seem to have any issues with distribution. In any case, I suggest to
> > keep default behaviour as is, so only those who know what are they
> > doing would be playing around with this.
> >
> > > 3) the problem is already solved by userspace (irqbalance)
> >
> > irqbalance sets smp_affinity. If one wants to dedicate a subset of
> > CPUs to a certain interrupt with current implementation of
> > set_affinity, irqbalance have to sit there and switch affinities all
> > the time. Constantly read /proc/interrupts and change smp_affinity.
> > That doesn't sound like a great solution at all.
> > Not even mentioning that irqbalance pulls glib which won't make many
> > embedded developers happy.
>
> This discussion is going nowhere.
>
> I've stated my position based on experience as 32-bit ARM maintainer
> trying to make it work.  It may not conform to the documentation, but
> it's what has been used for decades on 32-bit ARM, and what most
> people have been perfectly happy with.
>
> If you think you have a solution to the stated problem that solves
> it for hardware that doesn't automatically distribute interrupts,
> then go off and code it and provide a patch.  Otherwise, no amount
> of emails stating "but the documentation says X" is going to change
> anything.

So would it be good enough if I change default affinity value for
irq-gic on top of current patch?


Reference to kernel docs was regarding Robin's expectations and nothing else.

>
> --
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
> According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
