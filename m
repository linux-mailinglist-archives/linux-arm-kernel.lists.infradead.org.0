Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DDB5103050
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 00:36:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=659UFlMU3chPlKiysRsay0Rlyk1PJrrnRYM1w5j7xVM=; b=WQWl0XCVLHl+uo
	NJmucY3WJTJglYvL2aRy7IiDczbxqL4jA+xxzsC5BB4srrcBUTol/ZUmZLR6sFE1xmLSJ1ypZI53M
	9pxT12073MQPDotPAH4KaHTyPlcBMm6JrYIaExpq8BWYihNUFwayA7Uy43kOhN0cV6Vs3m+xfeyFv
	Y+OKOpQ+A9vX35zXwl2WQqJ1tG339EEO3y28B/S+hS2Iu8cH8223S8IArJG7rdQLb31Tyu//7sshA
	+kD3cj7iuuNM5TYtGGusSVTLhISJTjtnWANz34iY2iKW0JALsY8lrih1YiHacDdgRwnuecwWVSzfj
	4lKlkZgJ7AaVp822ENng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXD3A-00018Q-SP; Tue, 19 Nov 2019 23:36:48 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXD33-00017f-7T
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 23:36:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VTW7d29NLruiJwrGFQ0o5hiJ/Uv0UK51S3yYHnxz7zw=; b=ZRQMvt5toF4XNlqlizTCiv1Nv
 HX8OpRoXt55NPSiwk5kJsuXztwmcBKhAeTiTfoRFzodBNpOIPOBOUB4qajhXVSH44FiR3Sm43rRhp
 L4njDKDcSuWjMw+CKiBePxqF0pI3xJ/lErT4yhcaW/3aVXfWnjZmOUsjSo8el3LBoSsCIlnsAnipP
 nRG6KIUgW/A3ZUkcwj0PTxG82XPZrSBKvzELm/JyVTajHba3wAJv4oGhfg4fYhZLpM1MlX2AvVJCf
 EG1jM5crMNVKJAjdbB+soKFeIx2rqJOiH2CRVbh2EZ81lA3vBWGECK0li6aUTE+sT3eit+JNq483f
 PiF2Y8Edg==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:58496)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iXD2w-0004WR-7g; Tue, 19 Nov 2019 23:36:34 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iXD2v-00017q-EG; Tue, 19 Nov 2019 23:36:33 +0000
Date: Tue, 19 Nov 2019 23:36:33 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: event <event.riga@gmail.com>
Subject: Re: [PATCH] irq-gic: select all CPU's selected in interrupt affinity
 settings
Message-ID: <20191119233633.GG25745@shell.armlinux.org.uk>
References: <CAPaFbat4MM0=iVB-VazTK9=2qRebAgEN4euYCTESRo3yfx75Kw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPaFbat4MM0=iVB-VazTK9=2qRebAgEN4euYCTESRo3yfx75Kw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_153641_267117_3D3C70DC 
X-CRM114-Status: GOOD (  16.55  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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

On Tue, Nov 19, 2019 at 11:12:26PM +0000, event wrote:
> So far only a CPU selected with top affinity bit was selected. This
> resulted in all interrupts
> being processed by CPU0 by default despite "FF" default affinity
> setting for all interrupts

Have you checked whether this causes _ALL_ CPUs in the mask to be
delivered a single interrupt, thereby causing _ALL_ CPUs to be
slowed down and hit the same locks at the same time.

> ---
>  drivers/irqchip/irq-gic.c | 27 ++++++++++++++++-----------
>  1 file changed, 16 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/irqchip/irq-gic.c b/drivers/irqchip/irq-gic.c
> index 30ab62334..e6c6451ea 100644
> --- a/drivers/irqchip/irq-gic.c
> +++ b/drivers/irqchip/irq-gic.c
> @@ -331,25 +331,30 @@ static int gic_set_affinity(struct irq_data *d,
> const struct cpumask *mask_val,
>  {
>   void __iomem *reg = gic_dist_base(d) + GIC_DIST_TARGET + (gic_irq(d) & ~3);
>   unsigned int cpu, shift = (gic_irq(d) % 4) * 8;
> - u32 val, mask, bit;
> + u32 val, reg_mask, bits = 0;
>   unsigned long flags;
> + const struct cpumask* cpu_mask;
> 
> - if (!force)
> - cpu = cpumask_any_and(mask_val, cpu_online_mask);
> + if (force)
> + cpu_mask = mask_val;
>   else
> - cpu = cpumask_first(mask_val);
> + cpu_mask = cpu_online_mask;
> 
> - if (cpu >= NR_GIC_CPU_IF || cpu >= nr_cpu_ids)
> - return -EINVAL;
> + for_each_cpu_and(cpu, mask_val, cpu_mask) {
> + if (cpu >= NR_GIC_CPU_IF || cpu >= nr_cpu_ids) {
> + return -EINVAL;
> + }
> + bits |= gic_cpu_map[cpu];
> + }
> 
>   gic_lock_irqsave(flags);
> - mask = 0xff << shift;
> - bit = gic_cpu_map[cpu] << shift;
> - val = readl_relaxed(reg) & ~mask;
> - writel_relaxed(val | bit, reg);
> + reg_mask = 0xff << shift;
> + bits <<= shift;
> + val = readl_relaxed(reg) & ~reg_mask;
> + writel_relaxed(val | bits, reg);
>   gic_unlock_irqrestore(flags);
> 
> - irq_data_update_effective_affinity(d, cpumask_of(cpu));
> + irq_data_update_effective_affinity(d, cpu_mask);
> 
>   return IRQ_SET_MASK_OK_DONE;
>  }
> --
> 2.17.1
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
