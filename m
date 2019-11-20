Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A8F51037D4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 11:45:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NHYhriv3SpFZPh4gGnD8YhwsE47w9QIe+WDmaX2vHrw=; b=I+wsYHoUwJ3P/n
	gS4vuRuDn/Px4lvDhRsIZCMvgQEi692xnIDwSS68+9zQGQNsmuNniAOtdzhCU/utqTh7qzdMm6T2v
	6xmq6I5nbxOn+VngW1udWKh/YX9GNYXHAubRmB6zL9M1WI07f8wpMt1lLmVljKUyJU4d4mZLOeW8O
	++XpKDzCoRdvcfG1FPWGeCFWUM2cW+hk37fRD68XZrrfHRJiKMQEop+kTTcviheecCiYLZ3wlPrGn
	XbBrNgu1PFVpRvsQoIrzI+GgCYaq3AYyCZUvgtjPQ5BFBS4mfM/C8ydbudeuzokjGzMqXAOT9Xyei
	yWYvFAcHsEZCIuWZbbyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXNTr-0004KC-GN; Wed, 20 Nov 2019 10:45:03 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXNTg-0004Je-3O
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 10:44:54 +0000
Received: by mail-qt1-x842.google.com with SMTP id t20so28383715qtn.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 02:44:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=y5cEfPb/kJYjIIKYwc+QiOTQ8L3iK8K2yVzQ+bQlIw8=;
 b=CjNbGmtCgdTydQJNCJNxhatJ9ThjFgj9LXK8NnLD3K882l+TgYIsLd1I7GpYKCHS79
 +lvVs85wOUWMhu6FTvrqkWfpmMwIrEQIAWXiqEO9EDDp6rinYTI04FGT7Fke2Zis3zdn
 J/wmHUTLg72gXVBj9uOKjFuFL3QGHWnNYRUPvqzdzYmv6BJ8eshuhfgSfLIS/uqswEDP
 GAyLOpQo+0dmwR9o2P1jXhZtaEjLLV+4vMrCvecuj+avZKibPl6Me29XNN74u9HXYU5k
 CSfG+XlTcwbt2nHjLCl/obTBv4F0oovzDTwG2VhgM1cX21bDz1xlufIeHztnsNkc+ggR
 HdPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=y5cEfPb/kJYjIIKYwc+QiOTQ8L3iK8K2yVzQ+bQlIw8=;
 b=CUbvxKw1vyPfJYelYVXE7a7Dv05ECVN/YWnIRvDJX3f4GHHDqxRr/DenbOZoWUdml5
 YJwz2wNoDI8mGXF86fWdqGi1IsglQdHJbQadlGx2EeUtOUdYilxWOFDapkDXIIInr5xS
 Ht0SsimiUOL1xTjG5mtxcO+JDpGKOncv1CNlH5d6HN2YAebjqphTIVEURbtJ59Kt8w8u
 iiun9ngA2MurM+MkV1s4+lnY4UOtpAOQ2v/x4oFTwxdxcILAI834JZ6uV/gf2gzM6Smh
 ZG3CQ5jkcCsuwN+vyrq9jKF5I19iqNdmLx+9L7FiDElO2KU6khlUSP+AkogOsUbaaOWw
 xiUg==
X-Gm-Message-State: APjAAAVxyqJrC3dpIh6iNFrMHWZk47Wzngbdaa5WQkf5U2pHVWeqIZB5
 pE+oeL/oHxQqoTCveHZzkXEuc/NC3LkfmUfEElI=
X-Google-Smtp-Source: APXvYqy0RjZwX8jTrC/dxo9baXwy+/yOBIYyLrxPj0vu1pU0IiTTlJLhnSkj/OugZY9rthi2NPDJ7rV7+K/ElDaC7K4=
X-Received: by 2002:ac8:7b91:: with SMTP id p17mr1828301qtu.318.1574246690819; 
 Wed, 20 Nov 2019 02:44:50 -0800 (PST)
MIME-Version: 1.0
References: <CAPaFbat4MM0=iVB-VazTK9=2qRebAgEN4euYCTESRo3yfx75Kw@mail.gmail.com>
 <20191119233633.GG25745@shell.armlinux.org.uk>
 <CAPaFbatG+ePwjCnBva1tfmzmvpHZv9xW3nM4gj2DTpFn=D+9Vg@mail.gmail.com>
 <2cd3e872-57d5-5cbb-78d7-98da6447dc59@arm.com>
In-Reply-To: <2cd3e872-57d5-5cbb-78d7-98da6447dc59@arm.com>
From: Leonid Movshovich <event.riga@gmail.com>
Date: Wed, 20 Nov 2019 10:44:39 +0000
Message-ID: <CAPaFbasJGxV=mEGHAOWdt31vapCfV_RyD1Ptz6aa_WTp6htPKg@mail.gmail.com>
Subject: Re: [PATCH] irq-gic: select all CPU's selected in interrupt affinity
 settings
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_024452_147748_CAC7CD12 
X-CRM114-Status: GOOD (  24.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
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
Cc: Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 20 Nov 2019 at 01:15, Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 2019-11-20 12:24 am, Leonid Movshovich wrote:
> > On Tue, 19 Nov 2019 at 23:36, Russell King - ARM Linux admin
> > <linux@armlinux.org.uk> wrote:
> >>
> >> On Tue, Nov 19, 2019 at 11:12:26PM +0000, event wrote:
> >>> So far only a CPU selected with top affinity bit was selected. This
> >>> resulted in all interrupts
> >>> being processed by CPU0 by default despite "FF" default affinity
> >>> setting for all interrupts
> >>
> >> Have you checked whether this causes _ALL_ CPUs in the mask to be
> >> delivered a single interrupt, thereby causing _ALL_ CPUs to be
> >> slowed down and hit the same locks at the same time.
> >>
> >
> > Yes, I've checked this. No, interrupt is delivered to only one CPU.
> > Also ARM GIC architecture specification specifically states in chapter
> > 3.1.1 that hardware interrupts are delivered to a single CPU in
> > multiprocessor system ("1-N model").
>
> But see also section 3.2.3 - just because only one CPU actually runs the
> given ISR doesn't necessarily guarantee that the others *weren't*
> interrupted. I'd also hesitate to make any assumptions that all GIC
> implementations behave exactly the same way.
>
> Robin.

Yes, that's right, however:
1. They are only interrupted for a split-second, since interrupt is
immediately ACKed in gic_handle_irq
2. More important that smp_affinity in procfs is defined to allow user
to configure multiple CPU's to handle interrupts (see
Documentation/IRQ-affinity.txt) which is effectively prohibited in
current implementation. I mean, when user sets it to FF, she expects
all CPUs to process interrupts, not CPU0 only

Leo.

>
> > Here is output of
> > /proc/interrupts from my rk3328 with patch applied:
> > root@host:~ # cat /proc/interrupts
> >             CPU0       CPU1       CPU2       CPU3
> >    1:          0          0          0          0     GICv2  29 Edge
> >    arch_timer
> >    2:      16615      17538      17932      18593     GICv2  30 Edge
> >    arch_timer
> >   12:          0          0          0          0     GICv2  90 Level
> >    rockchip_thermal
> >   15:          0          0          0          0     GICv2  68 Level
> >    ff150000.i2c
> >   16:        557        526        181        479     GICv2  69 Level
> >    ff160000.i2c
> >   19:          0        325          0          0     GICv2  82 Level
> >    rk_pwm_irq
> >   20:        401        315        328        294     GICv2  32 Level
> >    ff1f0000.dmac
> >   21:          0          0          0          0     GICv2  33 Level
> >    ff1f0000.dmac
> >   22:        537        430        557        378     GICv2 122 Level     Mali_GP
> >   23:          0          0          0          0     GICv2 119 Level
> >    Mali_GP_MMU
> >   24:        257        236        257        201     GICv2 125 Level
> >    Mali_PP_Broadcast
> >   25:          0          0          0          0     GICv2 120 Level
> >    Mali_PP0
> >   26:          0          0          0          0     GICv2 121 Level
> >    Mali_PP0_MMU
> >   27:          0          0          0          0     GICv2 123 Level
> >    Mali_PP1
> >   28:          0          0          0          0     GICv2 124 Level
> >    Mali_PP1_MMU
> >   29:          0          0          0          0     GICv2  41 Level
> >    ff350000.vpu_service, ff351000.avsd
> >   31:          0          0          0          0     GICv2  39 Level
> >    ff360000.rkvdec
> >   33:          0          0          0          0     GICv2 127 Level
> >    ff330000.h265e
> >   35:          0          0          0          0     GICv2 129 Level
> >    ff340000.vepu
> >   37:       1140        832        902        789     GICv2  64 Level
> >    ff370000.vop, ff370000.vop
> >   38:          0          0          0          0     GICv2  63 Level
> >    ff3a0000.iep
> >   39:        983        759        959        741     GICv2  67 Level
> >    ff3c0000.hdmi, dw-hdmi-cec
> >   41:          0          0          0          0     GICv2 115 Level
> >    ff430000.hdmiphy
> >   42:          0          0          0          0     GICv2 109 Level
> >    rockchip_u3phy
> >   43:          7          0          5          3     GICv2  46 Level     dw-mci
> >   44:      52394       1141      50331      21990     GICv2  44 Level     dw-mci
> >   45:         71         44         68         63     GICv2  56 Level     eth0
> >   46:          0          0          0          0     GICv2  55 Level
> >    ff580000.usb, dwc2_hsotg:usb1
> >   47:          0          0          0          0     GICv2  48 Level
> >    ehci_hcd:usb2
> >   48:          0          0          0          0     GICv2  49 Level
> >    ohci_hcd:usb3
> > 124:          0          0          0          0     gpio2   6 Level     rk805
> > 182:          0          0          0          0     GICv2  94 Level
> >    rockchip_usb2phy
> > 183:          0          0          0          0     GICv2  93 Level
> >    rockchip_usb2phy
> > 184:          0          0          0          0     GICv2  99 Level
> >    xhci-hcd:usb4
> >
> > Interrupt counts would be the same for all CPUs if all interrupts
> > would be delivered to all CPU
> >
> >>> ---
> >>>   drivers/irqchip/irq-gic.c | 27 ++++++++++++++++-----------
> >>>   1 file changed, 16 insertions(+), 11 deletions(-)
> >>>
> >>> diff --git a/drivers/irqchip/irq-gic.c b/drivers/irqchip/irq-gic.c
> >>> index 30ab62334..e6c6451ea 100644
> >>> --- a/drivers/irqchip/irq-gic.c
> >>> +++ b/drivers/irqchip/irq-gic.c
> >>> @@ -331,25 +331,30 @@ static int gic_set_affinity(struct irq_data *d,
> >>> const struct cpumask *mask_val,
> >>>   {
> >>>    void __iomem *reg = gic_dist_base(d) + GIC_DIST_TARGET + (gic_irq(d) & ~3);
> >>>    unsigned int cpu, shift = (gic_irq(d) % 4) * 8;
> >>> - u32 val, mask, bit;
> >>> + u32 val, reg_mask, bits = 0;
> >>>    unsigned long flags;
> >>> + const struct cpumask* cpu_mask;
> >>>
> >>> - if (!force)
> >>> - cpu = cpumask_any_and(mask_val, cpu_online_mask);
> >>> + if (force)
> >>> + cpu_mask = mask_val;
> >>>    else
> >>> - cpu = cpumask_first(mask_val);
> >>> + cpu_mask = cpu_online_mask;
> >>>
> >>> - if (cpu >= NR_GIC_CPU_IF || cpu >= nr_cpu_ids)
> >>> - return -EINVAL;
> >>> + for_each_cpu_and(cpu, mask_val, cpu_mask) {
> >>> + if (cpu >= NR_GIC_CPU_IF || cpu >= nr_cpu_ids) {
> >>> + return -EINVAL;
> >>> + }
> >>> + bits |= gic_cpu_map[cpu];
> >>> + }
> >>>
> >>>    gic_lock_irqsave(flags);
> >>> - mask = 0xff << shift;
> >>> - bit = gic_cpu_map[cpu] << shift;
> >>> - val = readl_relaxed(reg) & ~mask;
> >>> - writel_relaxed(val | bit, reg);
> >>> + reg_mask = 0xff << shift;
> >>> + bits <<= shift;
> >>> + val = readl_relaxed(reg) & ~reg_mask;
> >>> + writel_relaxed(val | bits, reg);
> >>>    gic_unlock_irqrestore(flags);
> >>>
> >>> - irq_data_update_effective_affinity(d, cpumask_of(cpu));
> >>> + irq_data_update_effective_affinity(d, cpu_mask);
> >>>
> >>>    return IRQ_SET_MASK_OK_DONE;
> >>>   }
> >>> --
> >>> 2.17.1
> >>>
> >>> _______________________________________________
> >>> linux-arm-kernel mailing list
> >>> linux-arm-kernel@lists.infradead.org
> >>> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> >>>
> >>
> >> --
> >> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> >> FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
> >> According to speedtest.net: 11.9Mbps down 500kbps up
> >
> > _______________________________________________
> > linux-arm-kernel mailing list
> > linux-arm-kernel@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
