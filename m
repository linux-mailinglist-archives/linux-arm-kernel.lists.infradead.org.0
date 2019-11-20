Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C85351030AE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 01:24:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JQSbHbeu+x4cACaAgw1mETtK55x7sEmVxqdpYhjnmW0=; b=pzb5WAnbmuRE//
	MGD4KfELlvRp4ZLuyc/s41JAjV5FAcRXHu2VROOr5PDhppzbQ/XAmkoM1rHYDyFtJwCe46TjdaVxE
	Xgzr7tcYdNE0z2moRHC70VKnTRAihERw2qXourHjFIYYGAkk1aL3JhxTgCe5GPM/KSrQqRqyJdZQz
	DErjin28qyuLs6I5FQhNeqFSQuz7wKODEbrXvlOKfy938rnA2qvXwj9x+fuirnCwN4bV6KiY3DRyJ
	SRzy58UGm1pQRR6KQTVO4t7KMsmeggoT8mcLZKdod2+ZLyquGteEfB/m/NJJOKp8DPzuvZRTjXVxg
	ZQJqLDPvlNGyA05ek4/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXDnb-00072o-Km; Wed, 20 Nov 2019 00:24:47 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXDnR-00072N-OG
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 00:24:39 +0000
Received: by mail-qk1-x744.google.com with SMTP id m16so19703194qki.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 Nov 2019 16:24:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wgct44ACmtkq0bMZc4JXeuMNIPDKY3+s1n7l0p0iocU=;
 b=YJWYhxj8K1BrGl3K6X1pD2W0gEp35eIP1AmMxjAc2ZT1AoT73pPoyplfOUit+ZYhMT
 3mSW4d5rukcpN48zX9v6F5miVN+NXDDBg88oeLik7zlzAl6KYT5J9p94pPOQQxn26Np1
 QItNeMfeO9ISgp7DFanfCz6voJtHLe9IoiUFuJHIu9uWo8jvlRi2hl8+kXvAUOhPcBeM
 ceVcmWmVjKrcIn7Sat+E9BlnhiOA1VFJU0RNG7nZD+hhfxxHR+Ym4nzemHQQNypKtmFH
 5zzhfdK1cKKnws/n7LLWN1uvMgVI+sKS22IQztzFe4P7GUN4egPzAa9xKZzMdPC71YEI
 DjJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wgct44ACmtkq0bMZc4JXeuMNIPDKY3+s1n7l0p0iocU=;
 b=Z2A1D4efuzQk3dVK0bGtH0a+Ccv8UEz6UwKhi61GNsIOimWvhwLG5eOvsPiqvCHQyg
 GYsQ3zhfO09MHG62DYBoYvwGst8UQ+hcL1YOIfXBwEm4b1MqbkioFfiIileZNRScCq9+
 GVjkgMhc2c+36OhNILOtLlHy7QFuAXDueipsC7zDCqodWqiuQ3/eDnU34aEVRvQXDh5H
 NQAyzVLxLc89vdGMqskKV513y4dj+Md4ahUsFQ5sck5D9oFHVJvMv6XGfmgKGhfXagmp
 B4SfiYZ52RvyDyPzaFlpBXjoX+m+e41WtMvjMKs3ieFZ3n0GZYAJcvi7l3pJtNCJn4h/
 ewjw==
X-Gm-Message-State: APjAAAXx9CCbM6NvhqE4RxG2UwHlF+GpRullB7FRQxVw1MpWoOiF0fxT
 +nlf/QiPQc0UeYsXJtDcgRhDHyzq2N4idt6XOOmg4ss6
X-Google-Smtp-Source: APXvYqyl7lfm6TGyt16p5c81NTpdhafwpVZX7Um3ClEkqOu/VuxuOq1ayJsEsWyS/X0vHVMiFTr/+sKtxvGGecA/2CE=
X-Received: by 2002:a05:620a:a85:: with SMTP id
 v5mr338875qkg.471.1574209476132; 
 Tue, 19 Nov 2019 16:24:36 -0800 (PST)
MIME-Version: 1.0
References: <CAPaFbat4MM0=iVB-VazTK9=2qRebAgEN4euYCTESRo3yfx75Kw@mail.gmail.com>
 <20191119233633.GG25745@shell.armlinux.org.uk>
In-Reply-To: <20191119233633.GG25745@shell.armlinux.org.uk>
From: Leonid Movshovich <event.riga@gmail.com>
Date: Wed, 20 Nov 2019 00:24:24 +0000
Message-ID: <CAPaFbatG+ePwjCnBva1tfmzmvpHZv9xW3nM4gj2DTpFn=D+9Vg@mail.gmail.com>
Subject: Re: [PATCH] irq-gic: select all CPU's selected in interrupt affinity
 settings
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_162437_816096_B9F5AAD6 
X-CRM114-Status: GOOD (  19.93  )
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 19 Nov 2019 at 23:36, Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Tue, Nov 19, 2019 at 11:12:26PM +0000, event wrote:
> > So far only a CPU selected with top affinity bit was selected. This
> > resulted in all interrupts
> > being processed by CPU0 by default despite "FF" default affinity
> > setting for all interrupts
>
> Have you checked whether this causes _ALL_ CPUs in the mask to be
> delivered a single interrupt, thereby causing _ALL_ CPUs to be
> slowed down and hit the same locks at the same time.
>

Yes, I've checked this. No, interrupt is delivered to only one CPU.
Also ARM GIC architecture specification specifically states in chapter
3.1.1 that hardware interrupts are delivered to a single CPU in
multiprocessor system ("1-N model"). Here is output of
/proc/interrupts from my rk3328 with patch applied:
root@host:~ # cat /proc/interrupts
           CPU0       CPU1       CPU2       CPU3
  1:          0          0          0          0     GICv2  29 Edge
  arch_timer
  2:      16615      17538      17932      18593     GICv2  30 Edge
  arch_timer
 12:          0          0          0          0     GICv2  90 Level
  rockchip_thermal
 15:          0          0          0          0     GICv2  68 Level
  ff150000.i2c
 16:        557        526        181        479     GICv2  69 Level
  ff160000.i2c
 19:          0        325          0          0     GICv2  82 Level
  rk_pwm_irq
 20:        401        315        328        294     GICv2  32 Level
  ff1f0000.dmac
 21:          0          0          0          0     GICv2  33 Level
  ff1f0000.dmac
 22:        537        430        557        378     GICv2 122 Level     Mali_GP
 23:          0          0          0          0     GICv2 119 Level
  Mali_GP_MMU
 24:        257        236        257        201     GICv2 125 Level
  Mali_PP_Broadcast
 25:          0          0          0          0     GICv2 120 Level
  Mali_PP0
 26:          0          0          0          0     GICv2 121 Level
  Mali_PP0_MMU
 27:          0          0          0          0     GICv2 123 Level
  Mali_PP1
 28:          0          0          0          0     GICv2 124 Level
  Mali_PP1_MMU
 29:          0          0          0          0     GICv2  41 Level
  ff350000.vpu_service, ff351000.avsd
 31:          0          0          0          0     GICv2  39 Level
  ff360000.rkvdec
 33:          0          0          0          0     GICv2 127 Level
  ff330000.h265e
 35:          0          0          0          0     GICv2 129 Level
  ff340000.vepu
 37:       1140        832        902        789     GICv2  64 Level
  ff370000.vop, ff370000.vop
 38:          0          0          0          0     GICv2  63 Level
  ff3a0000.iep
 39:        983        759        959        741     GICv2  67 Level
  ff3c0000.hdmi, dw-hdmi-cec
 41:          0          0          0          0     GICv2 115 Level
  ff430000.hdmiphy
 42:          0          0          0          0     GICv2 109 Level
  rockchip_u3phy
 43:          7          0          5          3     GICv2  46 Level     dw-mci
 44:      52394       1141      50331      21990     GICv2  44 Level     dw-mci
 45:         71         44         68         63     GICv2  56 Level     eth0
 46:          0          0          0          0     GICv2  55 Level
  ff580000.usb, dwc2_hsotg:usb1
 47:          0          0          0          0     GICv2  48 Level
  ehci_hcd:usb2
 48:          0          0          0          0     GICv2  49 Level
  ohci_hcd:usb3
124:          0          0          0          0     gpio2   6 Level     rk805
182:          0          0          0          0     GICv2  94 Level
  rockchip_usb2phy
183:          0          0          0          0     GICv2  93 Level
  rockchip_usb2phy
184:          0          0          0          0     GICv2  99 Level
  xhci-hcd:usb4

Interrupt counts would be the same for all CPUs if all interrupts
would be delivered to all CPU

> > ---
> >  drivers/irqchip/irq-gic.c | 27 ++++++++++++++++-----------
> >  1 file changed, 16 insertions(+), 11 deletions(-)
> >
> > diff --git a/drivers/irqchip/irq-gic.c b/drivers/irqchip/irq-gic.c
> > index 30ab62334..e6c6451ea 100644
> > --- a/drivers/irqchip/irq-gic.c
> > +++ b/drivers/irqchip/irq-gic.c
> > @@ -331,25 +331,30 @@ static int gic_set_affinity(struct irq_data *d,
> > const struct cpumask *mask_val,
> >  {
> >   void __iomem *reg = gic_dist_base(d) + GIC_DIST_TARGET + (gic_irq(d) & ~3);
> >   unsigned int cpu, shift = (gic_irq(d) % 4) * 8;
> > - u32 val, mask, bit;
> > + u32 val, reg_mask, bits = 0;
> >   unsigned long flags;
> > + const struct cpumask* cpu_mask;
> >
> > - if (!force)
> > - cpu = cpumask_any_and(mask_val, cpu_online_mask);
> > + if (force)
> > + cpu_mask = mask_val;
> >   else
> > - cpu = cpumask_first(mask_val);
> > + cpu_mask = cpu_online_mask;
> >
> > - if (cpu >= NR_GIC_CPU_IF || cpu >= nr_cpu_ids)
> > - return -EINVAL;
> > + for_each_cpu_and(cpu, mask_val, cpu_mask) {
> > + if (cpu >= NR_GIC_CPU_IF || cpu >= nr_cpu_ids) {
> > + return -EINVAL;
> > + }
> > + bits |= gic_cpu_map[cpu];
> > + }
> >
> >   gic_lock_irqsave(flags);
> > - mask = 0xff << shift;
> > - bit = gic_cpu_map[cpu] << shift;
> > - val = readl_relaxed(reg) & ~mask;
> > - writel_relaxed(val | bit, reg);
> > + reg_mask = 0xff << shift;
> > + bits <<= shift;
> > + val = readl_relaxed(reg) & ~reg_mask;
> > + writel_relaxed(val | bits, reg);
> >   gic_unlock_irqrestore(flags);
> >
> > - irq_data_update_effective_affinity(d, cpumask_of(cpu));
> > + irq_data_update_effective_affinity(d, cpu_mask);
> >
> >   return IRQ_SET_MASK_OK_DONE;
> >  }
> > --
> > 2.17.1
> >
> > _______________________________________________
> > linux-arm-kernel mailing list
> > linux-arm-kernel@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> >
>
> --
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
> According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
