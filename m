Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEE0CF459C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 12:22:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+RXs4fAQrgFqZhA4SopA4mbCnCGpaIMu9ST8LUfsr/I=; b=PKwQuaZo5+lV0r
	84qIfcRUyOSy26v0YiGyU94jLFUFP+abywVYBgoAuLAMLv3YbjR/wUmeLBdUm1195bUmPsFVZZS4e
	WpRxnYb23JM21RUciSnSyU9PvnV05pIMXl1j/u7wcgE+rp4ep5eXk8QtkTAUl+vyqdCg/6Si+ggDz
	iQwqYnEe8ac453I8YjclP/tCkgEoNaObVXz+Po89MiHtnSH1GTPqr0bCjxoFq0gRNo3Et2DShVMRt
	vB0CxD+DXH4o+eDiKCRqth2AHnSiUzGxpOurp6bGw2gxeAgEcqjzeY4MfDPieUdbHIFgv+QUyjOfc
	qwiJ3pcqPITzP+kJ3oQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT2LC-0000Bt-7k; Fri, 08 Nov 2019 11:22:10 +0000
Received: from mout02.posteo.de ([185.67.36.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT2Kc-0008Cx-4x
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 11:21:36 +0000
Received: from submission (posteo.de [89.146.220.130]) 
 by mout02.posteo.de (Postfix) with ESMTPS id CC34F24010F
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  8 Nov 2019 12:21:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.de; s=2017;
 t=1573212087; bh=VoXL/9896K29OpL9IQ/3c9tZGN1drmXz3H2Ffc4occE=;
 h=Subject:To:Cc:From:Openpgp:Autocrypt:Date:From;
 b=J1ydvvtH4IdGUc8bvdbKAs3XV2XXBgQxtW9aqk18ev79zdwFR1C8gXXLRjUYGXbuD
 ETkHGut3dFoGRgFV93+T+ZFscnKEmmC2+4P1lb/SAdeW4UwJaBNSonQJBaBeaZCCuj
 AxYkDjCSgx49PrJxq9YFbb4OqlGC+1iN0cnBlZzaeK0zR9mbH5rmEAvt3hyDKbOmtc
 FZ5d7kblDcdB3M+fVnLZ/0RjHDK17vnV+B9VkEas0fBaNpQDetAxt0yskRRzMPV3iD
 15CJs0VcKvt8ItEsj/ppGNI2uON7rKU2qxxVvgtkbUZmnK3g71W0b2bKYwJ7HmFCCJ
 DlTsLo2eAFobg==
Received: from customer (localhost [127.0.0.1])
 by submission (posteo.de) with ESMTPSA id 478dBV0SkPz9rxW;
 Fri,  8 Nov 2019 12:21:21 +0100 (CET)
Subject: Re: [RFC 0/2] Add workaround for core wake-up on IPI for i.MX8MQ
To: Leonard Crestez <leonard.crestez@nxp.com>, Abel Vesa <abel.vesa@nxp.com>, 
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
References: <20190610121346.15779-1-abel.vesa@nxp.com>
 <d217a9d2-fc60-e057-6775-116542e39e8d@posteo.de>
 <7d3a868a-768c-3cb1-c6d8-bf5fcd1ddd1c@posteo.de>
 <20191030080727.7pcvhd4466dproy4@fsr-ub1664-175>
 <523f92bd-7e89-b48a-afd0-0a9a8bca8344@posteo.de>
 <20191104103525.qjkxh2zhhgaaectk@fsr-ub1664-175>
 <433f3f03-f780-c327-f1e8-fbf046a8374c@posteo.de>
 <VI1PR04MB70231EA80BB20C9A84B1B799EE790@VI1PR04MB7023.eurprd04.prod.outlook.com>
From: Martin Kepplinger <martink@posteo.de>
Openpgp: preference=signencrypt
Autocrypt: addr=martink@posteo.de; keydata=
 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
Message-ID: <c3519156-9769-980b-d9e7-af372ced8797@posteo.de>
Date: Fri, 8 Nov 2019 12:21:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <VI1PR04MB70231EA80BB20C9A84B1B799EE790@VI1PR04MB7023.eurprd04.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_032134_534650_5B89FBC1 
X-CRM114-Status: GOOD (  33.96  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.67.36.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Jacky Bai <ping.bai@nxp.com>, Carlo Caione <ccaione@baylibre.com>,
 Marc Zyngier <marc.zyngier@arm.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Thomas Gleixner <tglx@linutronix.de>, Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 06.11.19 23:36, Leonard Crestez wrote:
> On 06.11.2019 13:59, Martin Kepplinger wrote:
>> On 04.11.19 11:35, Abel Vesa wrote:
>>> On 19-11-04 09:49:18, Martin Kepplinger wrote:
>>>> On 30.10.19 09:08, Abel Vesa wrote:
>>>>> On 19-10-30 07:11:37, Martin Kepplinger wrote:
>>>>>> On 23.06.19 13:47, Martin Kepplinger wrote:
>>>>>>> On 10.06.19 14:13, Abel Vesa wrote:
>>>>>>>> This is another alternative for the RFC:
>>>>>>>> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flkml.org%2Flkml%2F2019%2F3%2F27%2F545&amp;data=02%7C01%7Cleonard.crestez%40nxp.com%7C6ca438b3b9e44d70ac7608d762b0c030%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C1%7C637086383589318475&amp;sdata=NyFLkQ8PUfC7PGejDK7NBJoQu36ZfaYvg9yuJvHedzo%3D&amp;reserved=0
>>>>>>>>
>>>>>>>> This new workaround proposal is a little bit more hacky but more contained
>>>>>>>> since everything is done within the irq-imx-gpcv2 driver.
>>>>>>>>
>>>>>>>> Basically, it 'hijacks' the registered gic_raise_softirq __smp_cross_call
>>>>>>>> handler and registers instead a wrapper which calls in the 'hijacked'
>>>>>>>> handler, after that calling into EL3 which will take care of the actual
>>>>>>>> wake up. This time, instead of expanding the PSCI ABI, we use a new vendor SIP.
>>>>>>>>
>>>>>>>> I also have the patches ready for TF-A but I'll hold on to them until I see if
>>>>>>>> this has a chance of getting in.
>>>>>>>
>>>>>>
>>>>>> Hi Abel,
>>>>>>
>>>>>> Running this workaround doesn't seem to work anymore on 5.4-rcX. Linux
>>>>>> doesn't boot, with ATF unchanged (includes your workaround changes). I
>>>>>> can try to add more details to this...
>>>>>>
>>>>>
>>>>> This is happening because the system counter is now enabled on 8mq.
>>>>> And since the irq-imx-gpcv2 is using as irq_set_affinity the
>>>>> irq_chip_set_affinity_parent. This is because the actual implementation
>>>>> of the driver relies on GIC to set the right affinity. On a SoC
>>>>> that has the wake_request signales linked to the power controller this
>>>>> works fine. Since the system counter is actually the tick broadcast
>>>>> device and the set affinity relies only on GIC, the cores can't be
>>>>> woken up by the broadcast interrupt.
>>>>>
>>>>>> Have you tested this for 5.4? Could you update this workaround? Please
>>>>>> let me know if I missed any earlier update on this (having a cpu-sleep
>>>>>> idle state).
>>>>>>
>>>>>
>>>>> The solution is to implement the set affinity in the irq-imx-gpcv2 driver
>>>>> which would allow the gpc to wake up the target core when the broadcast
>>>>> irq arrives.
>>>>>
>>>>> I have a patch for this. I just need to clean it up a little bit.
>>>>> Unfortunately, it won't go upstream since everuone thinks the gic
>>>>> should be the one to control the affinity. This obviously doesn't work
>>>>> on 8mq.
>>>>>
>>>>> Currently, I'm at ELCE in Lyon. Will get back at the office tomorrow
>>>>> and sned you what I have.
>>>>>
>>>>
>>>> Hi Abel,
>>>>
>>>> Do you have any news on said patch for testing? That'd be great for my
>>>> plannings.
>>>>
>>>
>>> Sorry for the late answer.
>>>
>>> I'm dropping here the diff.
>>>
>>> Please keep in mind that this is _not_ an official solution.
>>>
>>> ---
>>>   drivers/irqchip/irq-imx-gpcv2.c | 42 ++++++++++++++++++++++++++++++++++++++++-
>>>   1 file changed, 41 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/irqchip/irq-imx-gpcv2.c b/drivers/irqchip/irq-imx-gpcv2.c
>>> index 01ce6f4..3150588 100644
>>> --- a/drivers/irqchip/irq-imx-gpcv2.c
>>> +++ b/drivers/irqchip/irq-imx-gpcv2.c
>>> @@ -41,6 +41,24 @@ static void __iomem *gpcv2_idx_to_reg(struct gpcv2_irqchip_data *cd, int i)
>>>   	return cd->gpc_base + cd->cpu2wakeup + i * 4;
>>>   }
>>>   
>>> +static void __iomem *gpcv2_idx_to_reg_cpu(struct gpcv2_irqchip_data *cd,
>>> +					int i, int cpu)
>>> +{
>>> +	u32 offset =  GPC_IMR1_CORE0;
>>> +	switch(cpu) {
>>> +	case 1:
>>> +		offset = GPC_IMR1_CORE1;
>>> +		break;
>>> +	case 2:
>>> +		offset = GPC_IMR1_CORE2;
>>> +		break;
>>> +	case 3:
>>> +		offset = GPC_IMR1_CORE3;
>>> +		break;
>>> +	}
>>> +	return cd->gpc_base + offset + i * 4;
>>> +}
>>> +
>>>   static int gpcv2_wakeup_source_save(void)
>>>   {
>>>   	struct gpcv2_irqchip_data *cd;
>>> @@ -163,6 +181,28 @@ static void imx_gpcv2_irq_mask(struct irq_data *d)
>>>   	irq_chip_mask_parent(d);
>>>   }
>>>   
>>> +static int imx_gpcv2_irq_set_affinity(struct irq_data *d,
>>> +				 const struct cpumask *dest, bool force)
>>> +{
>>> +	struct gpcv2_irqchip_data *cd = d->chip_data;
>>> +	void __iomem *reg;
>>> +	u32 val;
>>> +	int cpu;
>>> +
>>> +	for_each_possible_cpu(cpu) {
>>> +		raw_spin_lock(&cd->rlock);
>>> +		reg = gpcv2_idx_to_reg_cpu(cd, d->hwirq / 32, cpu);
>>> +		val = readl_relaxed(reg);
>>> +		val |= BIT(d->hwirq % 32);
>>> +		if (cpumask_test_cpu(cpu, dest))
>>> +			val &= ~BIT(d->hwirq % 32);
>>> +		writel_relaxed(val, reg);
>>> +		raw_spin_unlock(&cd->rlock);
>>> +	}
>>> +
>>> +	return irq_chip_set_affinity_parent(d, dest, force);
>>> +}
>>> +
>>>   static struct irq_chip gpcv2_irqchip_data_chip = {
>>>   	.name			= "GPCv2",
>>>   	.irq_eoi		= irq_chip_eoi_parent,
>>> @@ -172,7 +212,7 @@ static struct irq_chip gpcv2_irqchip_data_chip = {
>>>   	.irq_retrigger		= irq_chip_retrigger_hierarchy,
>>>   	.irq_set_type		= irq_chip_set_type_parent,
>>>   #ifdef CONFIG_SMP
>>> -	.irq_set_affinity	= irq_chip_set_affinity_parent,
>>> +	.irq_set_affinity	= imx_gpcv2_irq_set_affinity,
>>>   #endif
>>>   };
> 
> This is prone to race conditions.
> 
> In NXP tree there is different gpcv2 irqchip driver which does all GPC 
> IMR register manipulation in TF-A through SMC calls. The cpuidle 
> workaround also manipulates the same registers and does so safely under 
> a lock.>
> If OS also writes to same IMR register then set_affinity for SPIs 1-31 
> can potentially race with one those cores being woken up. This is very 
> unlikely (set_affinity calls are rare) but in the worst case the system 
> could still hang on lost IPI.
> 
>> I guess this diff does not apply when using this reworked change:
>> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fsource.puri.sm%2FLibrem5%2Flinux-next%2Fcommit%2Fe59807ae0e236512761b751abc84a9b129d7fcda&amp;data=02%7C01%7Cleonard.crestez%40nxp.com%7C6ca438b3b9e44d70ac7608d762b0c030%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C1%7C637086383589318475&amp;sdata=Mf%2BFtqFSG4xHL3IGPrD%2FOweR8qoJHV0IKuziPIUK%2Bsw%3D&amp;reserved=0
>> which has worked for me when running 5.3.
>>
>> At least on 5.4-rc5, using your change, I still get
>>
>> cat /sys/devices/system/cpu/cpuidle/current_driver
>> none
> 
> This reads "psci_idle" for me in linux-next on imx8mm. Your problem 
> seems to be related to probing the cpuidle driver, not related to any 
> hardware workarounds.
> 
>> But also when trying to rewrite your patch against irq-gic-v3.c at least
>> nothing changes for me (I might have done that wrong as well though).
>>
>> What needs to change (in order to have the cpu-sleep state / idle
>> driver) based on the above "reworked" workaround?
>>
>> Could the config have changed? CONFIG_ARM_CPUIDLE should be the only
>> needed path, or did things change there in 5.4?
> 
> It seems there were some recent cleanups in the cpuidle psci core code, 
> maybe you need config updates?
> 
> https://patchwork.kernel.org/cover/11052723/
> 
>> I know all this is no real solution, but currently the only way to have
>> said sleep state on top of mainline. so be it for now.
> Can you use the gpcv2 driver from NXP tree?

hm. what driver do you mean? at least
https://source.codeaurora.org/external/imx/linux-imx/tree/drivers/irqchip/irq-imx-gpcv2.c?h=imx_4.19.35_1.0.0
seems not support imx8mq yet.

> 
> --
> Regards,
> Leonard
> 

Hi Leonard, hi Abel,

Thanks for having a look! To sum up this problem and not to get confused:

We have the workaround that changes irq-imx-gpcv2 from this very email
thread, to be used with mainline ATF. when applying Abel's recent diff,
Linux 5.4 boots but I still don't have a cpuidle driver.

When I enable CONFIG_ARM_PSCI_CPUIDLE, the kernel hangs during boot
(after probing mmc, but that doesn't tell much)

What do I miss?


Then (in parallel) we have NXP's ATF:
https://source.codeaurora.org/external/imx/imx-atf/log/?h=imx_4.19.35_1.0.0
that I test in parallel (and will actually want to have cpuidle right
now too). The workaround in Linux in that case looks like so:
https://source.codeaurora.org/external/imx/linux-imx/commit/?h=imx_4.19.35_1.0.0&id=26a59057f88997dfe48ab7f81898ddd6b6d3903e
which changes irq-gic-v3 only.

Since 5.4, also no cpu-sleep state anymore. What would need to change in
that "NXP" case, for 5.4 to have cpuidle again?

When I enable ARM_PSCI_CPUIDLE here, right now Linux hangs during boot
(during probing sdhci but again that seems random).

I'm still happy for hints :)

Thanks,

                              martin


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
