Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6A23103DFD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 16:07:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lc9vLrvO0csrQLJUUvuomCLcarPC2O2OMhdTpWlvtEU=; b=KlowW6L6C443Gq
	+n7Vpz1X8b2VG1buGHUmD3Apnzj5Aj1pLTuil0eJeuprM0vuaPUUnFD4WzR9n9O2vKkQ3e0EqHllG
	7b/GXKawb2Nkw6cSQlh+ZdcNt7gfkO9yEHdqrUYsV1P6zjFaRBhEPQQ3QpparzkUd3JXodfQyJlbA
	pr3Jb72jCEYvFYOclrBDy96tAlXq68qTX3WkH6HKIu4l/PlQ3lVy/+oAoOpQMyMrBQ5WkR5MvNFGD
	Kh3jlQyEU2wso1jQ5CqVIPkio6+MAIeALuq9wZSElcdImH17WxSZWJgjC8H1Y4hIl1/BJwH+7ISKU
	gzEJU2+4vny2E8ueYZ3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXRZx-0000vO-Av; Wed, 20 Nov 2019 15:07:37 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXRZp-0000v2-9u
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 15:07:31 +0000
Received: by mail-qk1-x744.google.com with SMTP id i19so71782qki.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 07:07:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zl4j/2+Wpub6sUToRpM79buRr8SjPfCwuUiAjMK14jU=;
 b=rT8mmIG6Pcowc98W/inkZtuyRSaQwDQWl7jtpGjey1FuBb7nmoKaMMXLNzmh7cjYnh
 euq5KUtLxNWabzlvaOk5ryr34lbk1cJMxNJd6mKd9nCy/SY1M5BDVPd2Sd2nb/ECzbrP
 wMe6EnaTuzWSE29KECWGgtYauSRW2fq5Y6oYpnJqAYFD/42GKujFt7S/jqoTNmSTRkCj
 5+B4+4tSEjAhBF8jzOAPACvPN+fT08nIBQmeYmOlX0a/u6ENYYIOg4EvDWdJNPA23n/b
 hEcL3Ox2l4B27p9x3KVDe0uRjR43ET56WkMHS+ivH1mB1m39k2lQpq4yM5jJY+M9Zw6o
 QdzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zl4j/2+Wpub6sUToRpM79buRr8SjPfCwuUiAjMK14jU=;
 b=aIwklBHGNcv/xQDJGrJeCQsjkzoC5BITZxyTmsByXIsVnUXxJlZKZyRoiGP1s0Y61x
 Y2Ap0Zwy7opjfWGPnzGPYW1s1f/8+nftWvcJg+ZmC74MisZR+e9yzvMhEPJPLTVk/MVi
 LErvCsTs+ljTr5SSp/Cp6tmta9aQejuR/JTPA+G1bvi4VZFdhGNTN0wxhuw9sAdUfwV0
 Y6S0y6cNQo1m8Rxx+2f9UqVFMAJZGnEq0iniKniexOVaH2jJd0fbD6ROYuww8EVqBa53
 QCwh0aWO2C4IRhpsRqEz+4VeAouqn+Rz0CwyxeclhzJFsBFhBFZEEBtu88gplijx4kZm
 vjDA==
X-Gm-Message-State: APjAAAUSsx1vEiGeDSRe4vKHKPFUttsDQjYsUf2aCqXHZHrZfwP77J9e
 vc2xpHOjcIddtKh0sgDhVRCuVro317ydb430ZXMDtohL
X-Google-Smtp-Source: APXvYqyrVEBXsUsVIRqV+UcJW7AQxFHsSttKJ2oAAKbvocSD4xfGpdGIjW9x9aqkafwIk1BtLbxIveaYvjzgzy70bc0=
X-Received: by 2002:a37:9b54:: with SMTP id d81mr2669935qke.299.1574262447832; 
 Wed, 20 Nov 2019 07:07:27 -0800 (PST)
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
In-Reply-To: <20191120135852.GR25745@shell.armlinux.org.uk>
From: Leonid Movshovich <event.riga@gmail.com>
Date: Wed, 20 Nov 2019 15:07:16 +0000
Message-ID: <CAPaFbat=TXqGYx5KrQaO0x_r7wYQ9sno1j07Je437n8+P1Gi6g@mail.gmail.com>
Subject: Re: [PATCH] irq-gic: select all CPU's selected in interrupt affinity
 settings
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_070729_372790_B2F43E76 
X-CRM114-Status: GOOD (  33.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
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

On Wed, 20 Nov 2019 at 13:58, Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Wed, Nov 20, 2019 at 01:33:11PM +0000, Robin Murphy wrote:
> > On 20/11/2019 11:25 am, Leonid Movshovich wrote:
> > > On Wed, 20 Nov 2019 at 10:50, Russell King - ARM Linux admin
> > > <linux@armlinux.org.uk> wrote:
> > > >
> > > > On Wed, Nov 20, 2019 at 10:44:39AM +0000, Leonid Movshovich wrote:
> > > > > On Wed, 20 Nov 2019 at 01:15, Robin Murphy <robin.murphy@arm.com> wrote:
> > > > > >
> > > > > > On 2019-11-20 12:24 am, Leonid Movshovich wrote:
> > > > > > > On Tue, 19 Nov 2019 at 23:36, Russell King - ARM Linux admin
> > > > > > > <linux@armlinux.org.uk> wrote:
> > > > > > > >
> > > > > > > > On Tue, Nov 19, 2019 at 11:12:26PM +0000, event wrote:
> > > > > > > > > So far only a CPU selected with top affinity bit was selected. This
> > > > > > > > > resulted in all interrupts
> > > > > > > > > being processed by CPU0 by default despite "FF" default affinity
> > > > > > > > > setting for all interrupts
> > > > > > > >
> > > > > > > > Have you checked whether this causes _ALL_ CPUs in the mask to be
> > > > > > > > delivered a single interrupt, thereby causing _ALL_ CPUs to be
> > > > > > > > slowed down and hit the same locks at the same time.
> > > > > > > >
> > > > > > >
> > > > > > > Yes, I've checked this. No, interrupt is delivered to only one CPU.
> > > > > > > Also ARM GIC architecture specification specifically states in chapter
> > > > > > > 3.1.1 that hardware interrupts are delivered to a single CPU in
> > > > > > > multiprocessor system ("1-N model").
> > > > > >
> > > > > > But see also section 3.2.3 - just because only one CPU actually runs the
> > > > > > given ISR doesn't necessarily guarantee that the others *weren't*
> > > > > > interrupted. I'd also hesitate to make any assumptions that all GIC
> > > > > > implementations behave exactly the same way.
> > > > > >
> > > > > > Robin.
> > > > >
> > > > > Yes, that's right, however:
> > > > > 1. They are only interrupted for a split-second, since interrupt is
> > > > > immediately ACKed in gic_handle_irq
> > > >
> > > > Even that is detrimental - consider cpuidle where a CPU is placed in
> > > > a low power state waiting for an interrupt, and it keeps getting woken
> > > > for interrupts that it isn't able to handle.  The effect will be to
> > > > stop the CPU hitting the lower power states, which would be a regression
> > > > over how the kernel behaves today.
> > > >
> > > > > 2. More important that smp_affinity in procfs is defined to allow user
> > > > > to configure multiple CPU's to handle interrupts (see
> > > > > Documentation/IRQ-affinity.txt) which is effectively prohibited in
> > > > > current implementation. I mean, when user sets it to FF, she expects
> > > > > all CPUs to process interrupts, not CPU0 only
> >
> > I have to say, my interaction with the IRQ layer is far more as a "user"
> > than as a "developer", yet I've always assumed that the affinity mask
> > represents the set of CPUs that *may* handle an interrupt and have never
> > felt particularly surprised by the naive implementation of "just pick the
> > first one".

Kernel documentation in Documentation/IRQ-affinity.txt sets an
expectation that IRQs would be spread between CPUs evenly in case
multiple CPUs are selected in smp_affinity. It also seems to be quite
a common practice (in consumer devices at least) to have interrupts
spread between CPUs. At least that's what happens on my PC and phone
according to /proc/interrupts

> >
> > Do these users also expect the scheduler to constantly context-switch a
> > single active task all over the place just because the default thread
> > affinity mask says it can?
>
> It is my understanding that the scheduler will try to keep tasks on
> the CPU they are already running on, unless there's a benefit to
> migrating it to a different CPU - because if you're constantly
> migrating code between different CPUs, you're having to bounce
> cache lines around the system.
>
> > > > The reason we've ended up with that on ARM is precisely because it
> > > > wasted CPU resources, and my attempts at writing code to distribute
> > > > the interrupt between CPU cores did not have a successful outcome.
> > > > So, the best thing that could be done was to route interrupts to the
> > > > first core, and run irqbalance to distribute the interrupts in a
> > > > sensible, cache friendly way between CPU cores.
> > > >
> > > > And no, the current implementation is *NOT* prohibited.  You can't
> > > > prohibit something that hardware hasn't been able to provide.
> > > >
> > >
> > > Hardware allows delivering interrupt to random CPU from selected
> > > bitmask and current implementation doesn't allow to configure this.
> > > While this may be an issue for power-concerned systems, there are also
> > > systems with plenty of electricity where using all CPUs for e.g.
> > > network packet handling is more important.
> >
> > It's not just about batteries - more and more SoCs these days have
> > internally constrained power/thermal budgets too. Think of Intel's turbo
> > boost, or those Amlogic TV box chips that can only hit their advertised top
> > frequencies with one or two cores active - on systems like that, yanking all
> > the cores out of standby every time could be actively detrimental to
> > single-thread performance and actually end up *increasing*
> > interrupt-handling latency.
> >
> > If you want to optimise a particular system for a particular use-case,
> > you're almost certainly better off manually tuning affinities anyway
> > (certain distros already do this). If you mostly just want /proc/interrupts
> > to look pretty, there's irqbalance.
>
> The conclusion I came to when I did the initial 32-bit ARM SMP support
> was:
>
> 1) it is policy, and userspace deals with policy
> 2) routing the IRQ in to distribute it between CPUs is difficult

Yes, but current implementation of smp_affinity does not allow to set
multiple CPUs to handle same interrupt. Neither hardware nor software
seem to have any issues with distribution. In any case, I suggest to
keep default behaviour as is, so only those who know what are they
doing would be playing around with this.

> 3) the problem is already solved by userspace (irqbalance)

irqbalance sets smp_affinity. If one wants to dedicate a subset of
CPUs to a certain interrupt with current implementation of
set_affinity, irqbalance have to sit there and switch affinities all
the time. Constantly read /proc/interrupts and change smp_affinity.
That doesn't sound like a great solution at all.
Not even mentioning that irqbalance pulls glib which won't make many
embedded developers happy.

>
> (2) is difficult because you don't want to do something naieve like
> route the first interrupt to CPU0, second to CPU1, third to CPU2
> etc, because that totally destroys cache locality and therefore
> performance.  Your network card goes faster if its IRQ is always
> processed by the same CPU (benefiting from hot cache) rather than
> spreading it around the CPUs.

Imagine my network card receives traffic at 100Mbps, but my single CPU
can only handle 33 Mbps. I would like to dedicate 3 CPUs to
networking, but it's not possible at the moment without patching
kernel or adding a usespace application which would sit and switch
interrupts' smp_affinity few times a second and keep another CPU busy.


So if new set_affinity implementation is done together with default
affinity change in arm/arm64, it would be business-as-usual for users
of default setup and those "lucky" owners of strange setups (like
myself) would be able to configure the system.

>
> > And given the earlier argument, it's probably worth noting that there are
> > precious few networking/infrastructure/server SoCs using GICv2 anyway.
>
> Networking is just one specific example where it's beneficial.
> Other examples are available.
>
> --
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
> According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
