Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7509C1038AD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 12:25:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jdS3eMH1b2dqLFYEwM6TrM+5+8UdiUOEaQB4Qk0ye+Q=; b=YhDPX3cy0vwnnf
	9TyTcPA8kHXfb7z+6rs2j/kAW7vfYFtTuqmmmRXCAPbu9QjY40MhkNF3ytXes2fZJbhO6M02523yN
	VF0CEz+ZBlnI9BQyXpjS75eqTqZjj1m9hGx9PZAzbcX5lSL/WqMNWZ07veOz8/BZqCDqy64qUsoTl
	dyokxveGsI6hTo/wYGCDLEpnVY6dsQktO2lULDM50+kdy3AuVeb+66LhNohizEkCgEcdUnnI4udzB
	9ueUP0nuxhY2B9f44DirDmv5QuxZooP6nkZGayHPQf/AGNZm2oVi5vml3Tu17CUYOPYectBOfKVxL
	nRNMJ+7oOCT+wMHPbbqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXO7I-000563-7K; Wed, 20 Nov 2019 11:25:48 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXO79-00055R-Dg
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 11:25:41 +0000
Received: by mail-qk1-x742.google.com with SMTP id i19so20893619qki.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 03:25:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=K2vlzwkH3xPGplOD4IOfDSG89pWUYSjiQixXpfQOQgc=;
 b=uSFwraRDBPCTQCGors7ri7zx133ZRyPzvMGo4KnENV0t2LVqacgW1gf9EadxSUYPwz
 z0nHJzr1M7LFc+wfMoE4iK96psBqS4rJl1VkpoyUXO3eznqhW+BOsiXc+AKwzjuQcyux
 9mKuFhyES+ZF3DDqBU+Y3NeLcHl0uvHSamLxEWetQ2+Lh2o1x9NnR2GpGC2a/+UM7zin
 Eie07M7qB6IzAc5YLKP31L5/Jivg0e+Pr7I2nv9CDx3sCxVDr5WJKpN2PRaUOnxn1SKw
 RelerYAyk+eCNltOdv2kgaFeFSVF7TgbV/SSM8+4vm+EGecwiWwUczpfR712kHrxEi81
 ZlTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=K2vlzwkH3xPGplOD4IOfDSG89pWUYSjiQixXpfQOQgc=;
 b=sTrLo8PUOYHYIQNZ1e60pBtX3gRDOda5VgdpkT9s8gtycR0IxYlzYKp64CWJroQRJ8
 pdKsGJp6tQFw1h07o6ysvOt3aybyZ3kS+rmlWYdXJHb9DWbNnPyjrTpohAKkDvczJ+wW
 gudnwhOfNVcne8uXNGMQSn7suBg/kdH9g5C78Fa/NYMTaWv6BhGQHoomqoRLWvIwNn6e
 Swwla8LTneYzFoGudSmirBnDE2QjxHyxAVBHSEWnoQ6LIjRQ2cITi1AigQ2ov1rx+5hV
 +B0s36QE6MTQzVm6zM8rdM55cVhLYewN6fSxdaLgvuhJcdc4vqGp4Vd7B/Kme1VifAH4
 s5Jw==
X-Gm-Message-State: APjAAAX2BKmk6Z0SRzHauWTZWHd5uGOhmQUJUAsTkpXi7dMEXm0hDBS3
 yFn+GOi9upRi3k6p8+9/oKs9ez/GahEprjtyYPBlwB66
X-Google-Smtp-Source: APXvYqxWm7Kn3AAgG6Zveo9NYqmCiw47G+cBSX24efHLb0gk822yh8e2F+H0rslp1Ncpl8/5wBs6/+zAtNkbrMX6D/M=
X-Received: by 2002:a37:4549:: with SMTP id s70mr1796440qka.259.1574249137739; 
 Wed, 20 Nov 2019 03:25:37 -0800 (PST)
MIME-Version: 1.0
References: <CAPaFbat4MM0=iVB-VazTK9=2qRebAgEN4euYCTESRo3yfx75Kw@mail.gmail.com>
 <20191119233633.GG25745@shell.armlinux.org.uk>
 <CAPaFbatG+ePwjCnBva1tfmzmvpHZv9xW3nM4gj2DTpFn=D+9Vg@mail.gmail.com>
 <2cd3e872-57d5-5cbb-78d7-98da6447dc59@arm.com>
 <CAPaFbasJGxV=mEGHAOWdt31vapCfV_RyD1Ptz6aa_WTp6htPKg@mail.gmail.com>
 <20191120105017.GN25745@shell.armlinux.org.uk>
In-Reply-To: <20191120105017.GN25745@shell.armlinux.org.uk>
From: Leonid Movshovich <event.riga@gmail.com>
Date: Wed, 20 Nov 2019 11:25:26 +0000
Message-ID: <CAPaFbasKH_BRARMtQYqxWR6koQB=cF_Ln5n=-7uCqdbjqmu9Rg@mail.gmail.com>
Subject: Re: [PATCH] irq-gic: select all CPU's selected in interrupt affinity
 settings
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_032539_487472_FCC0EAD7 
X-CRM114-Status: GOOD (  23.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
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

On Wed, 20 Nov 2019 at 10:50, Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Wed, Nov 20, 2019 at 10:44:39AM +0000, Leonid Movshovich wrote:
> > On Wed, 20 Nov 2019 at 01:15, Robin Murphy <robin.murphy@arm.com> wrote:
> > >
> > > On 2019-11-20 12:24 am, Leonid Movshovich wrote:
> > > > On Tue, 19 Nov 2019 at 23:36, Russell King - ARM Linux admin
> > > > <linux@armlinux.org.uk> wrote:
> > > >>
> > > >> On Tue, Nov 19, 2019 at 11:12:26PM +0000, event wrote:
> > > >>> So far only a CPU selected with top affinity bit was selected. This
> > > >>> resulted in all interrupts
> > > >>> being processed by CPU0 by default despite "FF" default affinity
> > > >>> setting for all interrupts
> > > >>
> > > >> Have you checked whether this causes _ALL_ CPUs in the mask to be
> > > >> delivered a single interrupt, thereby causing _ALL_ CPUs to be
> > > >> slowed down and hit the same locks at the same time.
> > > >>
> > > >
> > > > Yes, I've checked this. No, interrupt is delivered to only one CPU.
> > > > Also ARM GIC architecture specification specifically states in chapter
> > > > 3.1.1 that hardware interrupts are delivered to a single CPU in
> > > > multiprocessor system ("1-N model").
> > >
> > > But see also section 3.2.3 - just because only one CPU actually runs the
> > > given ISR doesn't necessarily guarantee that the others *weren't*
> > > interrupted. I'd also hesitate to make any assumptions that all GIC
> > > implementations behave exactly the same way.
> > >
> > > Robin.
> >
> > Yes, that's right, however:
> > 1. They are only interrupted for a split-second, since interrupt is
> > immediately ACKed in gic_handle_irq
>
> Even that is detrimental - consider cpuidle where a CPU is placed in
> a low power state waiting for an interrupt, and it keeps getting woken
> for interrupts that it isn't able to handle.  The effect will be to
> stop the CPU hitting the lower power states, which would be a regression
> over how the kernel behaves today.
>
> > 2. More important that smp_affinity in procfs is defined to allow user
> > to configure multiple CPU's to handle interrupts (see
> > Documentation/IRQ-affinity.txt) which is effectively prohibited in
> > current implementation. I mean, when user sets it to FF, she expects
> > all CPUs to process interrupts, not CPU0 only
>
> The reason we've ended up with that on ARM is precisely because it
> wasted CPU resources, and my attempts at writing code to distribute
> the interrupt between CPU cores did not have a successful outcome.
> So, the best thing that could be done was to route interrupts to the
> first core, and run irqbalance to distribute the interrupts in a
> sensible, cache friendly way between CPU cores.
>
> And no, the current implementation is *NOT* prohibited.  You can't
> prohibit something that hardware hasn't been able to provide.
>

Hardware allows delivering interrupt to random CPU from selected
bitmask and current implementation doesn't allow to configure this.
While this may be an issue for power-concerned systems, there are also
systems with plenty of electricity where using all CPUs for e.g.
network packet handling is more important.
Anyway, I see your point of keeping default behaviour unchanged. I'd
suggest to set irq_default_affinity for arm/arm64 architectures to
keep default behaviour as is (i.e. deliver everything to CPU0).

> --
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
> According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
