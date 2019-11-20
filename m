Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D02D1103109
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 02:15:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8DNIPbgYr4PRizcA7TGSAcb9/QSfpLqf0A8AF7tYU84=; b=LEUJj24oRjour7+RK+SZ5XMyX
	bGUKoMM9fjZMPYsQpuAdjMc3S2986ADYx3zAQH0UL/z6ToLfwlQt4Q+HKiXTvaD6VD0PuLTSP1Lnt
	QJAmRHB9myBvpGVdC5X8YBs0xVYJOSFsUeN141OckaXh94CqxVxJnBKZ3tXet6P50p4wP6kgUhhlp
	0R47nevxQ91xtIlQQ/9jmaNNJ5TXh/FBgz32navnXpo/rmcVNiWn2vcQhMZUMmAmEyTyESgrZhlt5
	Cx/djLaPYSGRWYLafJnWVrgi4tOUtzoKJTf58BVQXcmGXxZJDdW30Z41jSCB0NOO6SqXEzl0w4MHb
	gbeKiJktQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXEb0-00075L-6G; Wed, 20 Nov 2019 01:15:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXEas-00074d-7D
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 01:15:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1134E1FB;
 Tue, 19 Nov 2019 17:15:33 -0800 (PST)
Received: from [192.168.1.124] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 359C43F703;
 Tue, 19 Nov 2019 17:15:32 -0800 (PST)
Subject: Re: [PATCH] irq-gic: select all CPU's selected in interrupt affinity
 settings
To: Leonid Movshovich <event.riga@gmail.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>
References: <CAPaFbat4MM0=iVB-VazTK9=2qRebAgEN4euYCTESRo3yfx75Kw@mail.gmail.com>
 <20191119233633.GG25745@shell.armlinux.org.uk>
 <CAPaFbatG+ePwjCnBva1tfmzmvpHZv9xW3nM4gj2DTpFn=D+9Vg@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <2cd3e872-57d5-5cbb-78d7-98da6447dc59@arm.com>
Date: Wed, 20 Nov 2019 01:15:16 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <CAPaFbatG+ePwjCnBva1tfmzmvpHZv9xW3nM4gj2DTpFn=D+9Vg@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_171542_381432_C3AEE451 
X-CRM114-Status: GOOD (  19.78  )
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-11-20 12:24 am, Leonid Movshovich wrote:
> On Tue, 19 Nov 2019 at 23:36, Russell King - ARM Linux admin
> <linux@armlinux.org.uk> wrote:
>>
>> On Tue, Nov 19, 2019 at 11:12:26PM +0000, event wrote:
>>> So far only a CPU selected with top affinity bit was selected. This
>>> resulted in all interrupts
>>> being processed by CPU0 by default despite "FF" default affinity
>>> setting for all interrupts
>>
>> Have you checked whether this causes _ALL_ CPUs in the mask to be
>> delivered a single interrupt, thereby causing _ALL_ CPUs to be
>> slowed down and hit the same locks at the same time.
>>
> 
> Yes, I've checked this. No, interrupt is delivered to only one CPU.
> Also ARM GIC architecture specification specifically states in chapter
> 3.1.1 that hardware interrupts are delivered to a single CPU in
> multiprocessor system ("1-N model").

But see also section 3.2.3 - just because only one CPU actually runs the 
given ISR doesn't necessarily guarantee that the others *weren't* 
interrupted. I'd also hesitate to make any assumptions that all GIC 
implementations behave exactly the same way.

Robin.

> Here is output of
> /proc/interrupts from my rk3328 with patch applied:
> root@host:~ # cat /proc/interrupts
>             CPU0       CPU1       CPU2       CPU3
>    1:          0          0          0          0     GICv2  29 Edge
>    arch_timer
>    2:      16615      17538      17932      18593     GICv2  30 Edge
>    arch_timer
>   12:          0          0          0          0     GICv2  90 Level
>    rockchip_thermal
>   15:          0          0          0          0     GICv2  68 Level
>    ff150000.i2c
>   16:        557        526        181        479     GICv2  69 Level
>    ff160000.i2c
>   19:          0        325          0          0     GICv2  82 Level
>    rk_pwm_irq
>   20:        401        315        328        294     GICv2  32 Level
>    ff1f0000.dmac
>   21:          0          0          0          0     GICv2  33 Level
>    ff1f0000.dmac
>   22:        537        430        557        378     GICv2 122 Level     Mali_GP
>   23:          0          0          0          0     GICv2 119 Level
>    Mali_GP_MMU
>   24:        257        236        257        201     GICv2 125 Level
>    Mali_PP_Broadcast
>   25:          0          0          0          0     GICv2 120 Level
>    Mali_PP0
>   26:          0          0          0          0     GICv2 121 Level
>    Mali_PP0_MMU
>   27:          0          0          0          0     GICv2 123 Level
>    Mali_PP1
>   28:          0          0          0          0     GICv2 124 Level
>    Mali_PP1_MMU
>   29:          0          0          0          0     GICv2  41 Level
>    ff350000.vpu_service, ff351000.avsd
>   31:          0          0          0          0     GICv2  39 Level
>    ff360000.rkvdec
>   33:          0          0          0          0     GICv2 127 Level
>    ff330000.h265e
>   35:          0          0          0          0     GICv2 129 Level
>    ff340000.vepu
>   37:       1140        832        902        789     GICv2  64 Level
>    ff370000.vop, ff370000.vop
>   38:          0          0          0          0     GICv2  63 Level
>    ff3a0000.iep
>   39:        983        759        959        741     GICv2  67 Level
>    ff3c0000.hdmi, dw-hdmi-cec
>   41:          0          0          0          0     GICv2 115 Level
>    ff430000.hdmiphy
>   42:          0          0          0          0     GICv2 109 Level
>    rockchip_u3phy
>   43:          7          0          5          3     GICv2  46 Level     dw-mci
>   44:      52394       1141      50331      21990     GICv2  44 Level     dw-mci
>   45:         71         44         68         63     GICv2  56 Level     eth0
>   46:          0          0          0          0     GICv2  55 Level
>    ff580000.usb, dwc2_hsotg:usb1
>   47:          0          0          0          0     GICv2  48 Level
>    ehci_hcd:usb2
>   48:          0          0          0          0     GICv2  49 Level
>    ohci_hcd:usb3
> 124:          0          0          0          0     gpio2   6 Level     rk805
> 182:          0          0          0          0     GICv2  94 Level
>    rockchip_usb2phy
> 183:          0          0          0          0     GICv2  93 Level
>    rockchip_usb2phy
> 184:          0          0          0          0     GICv2  99 Level
>    xhci-hcd:usb4
> 
> Interrupt counts would be the same for all CPUs if all interrupts
> would be delivered to all CPU
> 
>>> ---
>>>   drivers/irqchip/irq-gic.c | 27 ++++++++++++++++-----------
>>>   1 file changed, 16 insertions(+), 11 deletions(-)
>>>
>>> diff --git a/drivers/irqchip/irq-gic.c b/drivers/irqchip/irq-gic.c
>>> index 30ab62334..e6c6451ea 100644
>>> --- a/drivers/irqchip/irq-gic.c
>>> +++ b/drivers/irqchip/irq-gic.c
>>> @@ -331,25 +331,30 @@ static int gic_set_affinity(struct irq_data *d,
>>> const struct cpumask *mask_val,
>>>   {
>>>    void __iomem *reg = gic_dist_base(d) + GIC_DIST_TARGET + (gic_irq(d) & ~3);
>>>    unsigned int cpu, shift = (gic_irq(d) % 4) * 8;
>>> - u32 val, mask, bit;
>>> + u32 val, reg_mask, bits = 0;
>>>    unsigned long flags;
>>> + const struct cpumask* cpu_mask;
>>>
>>> - if (!force)
>>> - cpu = cpumask_any_and(mask_val, cpu_online_mask);
>>> + if (force)
>>> + cpu_mask = mask_val;
>>>    else
>>> - cpu = cpumask_first(mask_val);
>>> + cpu_mask = cpu_online_mask;
>>>
>>> - if (cpu >= NR_GIC_CPU_IF || cpu >= nr_cpu_ids)
>>> - return -EINVAL;
>>> + for_each_cpu_and(cpu, mask_val, cpu_mask) {
>>> + if (cpu >= NR_GIC_CPU_IF || cpu >= nr_cpu_ids) {
>>> + return -EINVAL;
>>> + }
>>> + bits |= gic_cpu_map[cpu];
>>> + }
>>>
>>>    gic_lock_irqsave(flags);
>>> - mask = 0xff << shift;
>>> - bit = gic_cpu_map[cpu] << shift;
>>> - val = readl_relaxed(reg) & ~mask;
>>> - writel_relaxed(val | bit, reg);
>>> + reg_mask = 0xff << shift;
>>> + bits <<= shift;
>>> + val = readl_relaxed(reg) & ~reg_mask;
>>> + writel_relaxed(val | bits, reg);
>>>    gic_unlock_irqrestore(flags);
>>>
>>> - irq_data_update_effective_affinity(d, cpumask_of(cpu));
>>> + irq_data_update_effective_affinity(d, cpu_mask);
>>>
>>>    return IRQ_SET_MASK_OK_DONE;
>>>   }
>>> --
>>> 2.17.1
>>>
>>> _______________________________________________
>>> linux-arm-kernel mailing list
>>> linux-arm-kernel@lists.infradead.org
>>> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
>>>
>>
>> --
>> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
>> FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
>> According to speedtest.net: 11.9Mbps down 500kbps up
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
