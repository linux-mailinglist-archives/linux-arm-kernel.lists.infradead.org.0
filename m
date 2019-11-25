Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A3691092B6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 18:23:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hlJGeDCulCvfdJVm965SOsiCdECbXER2qTEgEIC7DVM=; b=Zl1uFcw8p6Siji
	PAOvibINHWEA5rb/bfuMicIp5z+66ts1+dsYSEhOwwr1sQPciclxRug5NKsNXiI7vsx7lsVd8tzAC
	hMMh6IrR6IiFMWq+MPAxWq4LmtUSJJ4qRnFDnF37+20LYOx1AdO0AfwyQ6WQ6AhE1coR6D0GYU/Q3
	6b5TDP1UsTvq1YS5tbmp1a78A9MRT4EqWejy4QtZrSqX7VC+I/5xP5RBeBGZdNf4pN/iiSMiedDu6
	bFzkpXsAx+ea2OO+wGtfA+z+PoTb5OTebXU7IcNJKYWbRWryEQfNBb1mxZ9c3iFaVZ2BdSkme6hOP
	/28lpJ4vL7OggNuvzgaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZI5W-0003I9-0Q; Mon, 25 Nov 2019 17:23:50 +0000
Received: from mout02.posteo.de ([185.67.36.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZI5K-0003H7-28
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 17:23:40 +0000
Received: from submission (posteo.de [89.146.220.130]) 
 by mout02.posteo.de (Postfix) with ESMTPS id F14702400FE
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 25 Nov 2019 18:23:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.de; s=2017;
 t=1574702612; bh=2HjmFWpZ+0l+x8HZViT8Fla+/G2kvMdnqVYLJ6X0Pmo=;
 h=Subject:To:Cc:From:Autocrypt:Date:From;
 b=g7hp7AzzS2uZxoa6iyqJ0T1PBioFsrJ4MuJRucKUkxwJa7xHWHhH/qJPZCcMQYI+N
 rnqBP8l1WMsm+KjhsI/AZAzRBswAkJENW1OX72NgGhG/fNH9Mcv1y8ygCwHKAuW7dr
 AQgQFRTTH0qpAbHsvzsDQp3aduOvOwevKBNIg8QWzX3SoP9+KF56hJxYV802HWl4lo
 7Pf70QJG3kEZIbhnJlM0quxWxM1UZe/cDxCSxjDX2+Wsfb9O97LNguqU7PgWlBbHHw
 NZC7FUAr/6H7BCCPP6fCo1nouAsWdVBBKhQqG8ODOj7yC4jWIDFPRhW8x7BJBc79pj
 CPdCoAAwYAOgQ==
Received: from customer (localhost [127.0.0.1])
 by submission (posteo.de) with ESMTPSA id 47MDQT3PFMz9rxQ;
 Mon, 25 Nov 2019 18:23:29 +0100 (CET)
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
Autocrypt: addr=martink@posteo.de; keydata=
 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
Message-ID: <77761485-888c-eeaf-6970-84720eaac46e@posteo.de>
Date: Mon, 25 Nov 2019 18:23:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <VI1PR04MB70231EA80BB20C9A84B1B799EE790@VI1PR04MB7023.eurprd04.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_092338_540148_5D18AD8C 
X-CRM114-Status: GOOD (  32.59  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.67.36.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
> a lock.
> 
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

thanks,

I see the "psci_idle" driver too, but I'm not able to boot from flashed
emmc when having `ARM_PSCI_CPUIDLE` enabled!

The logs below are both the last logs that get printed when startup hangs:

```
[    1.638207] imx-cpufreq-dt imx-cpufreq-dt: cpu speed grade 3 mkt
segment 0 supported-hw 0x8 0x1
[    1.683487] mmc1: SDHCI controller on 30b50000.mmc [30b50000.mmc]
using ADMA
[    1.695528] input: gpio-keys as /devices/platform/gpio-keys/input/input0
[    1.708037] input: bd718xx-pwrkey as
/devices/platform/soc@0/soc@0:bus@30800000/30a20000.i2c/i2c-0/0-004b/gpio-keys.0.auto/input/input1
[    1.721939] snvs_rtc 30370000.snvs:snvs-rtc-lp: setting system clock
to 1970-01-01T00:00:00 UTC (0)
[    1.723543] mmc1: new high speed SDIO card at address fffd
```

but the psci checker (when configured-in) seems to be ok:

```
[    1.717281] imx-cpufreq-dt imx-cpufreq-dt: cpu speed grade 3 mkt
segment 0 supported-hw 0x8 0x1
[    1.763172] mmc1: SDHCI controller on 30b50000.mmc [30b50000.mmc]
using ADMA
[    1.775368] input: gpio-keys as /devices/platform/gpio-keys/input/input1
[    1.784397] input: bd718xx-pwrkey as
/devices/platform/soc@0/soc@0:bus@30800000/30a20000.i2c/i2c-0/0-004b/gpio-keys.0.auto/input/input2
[    1.798160] snvs_rtc 30370000.snvs:snvs-rtc-lp: setting system clock
to 1970-01-01T00:00:00 UTC (0)
[    1.807668] psci_checker: PSCI checker started using 4 CPUs
[    1.813500] psci_checker: Starting hotplug tests
[    1.818351] psci_checker: Trying to turn off and on again all CPUs
[    1.826388] IRQ 6: no longer affine to CPU0
[    1.826805] CPU0: shutdown
[    1.834060] psci: CPU0 killed.
[    1.840096] CPU1: shutdown
[    1.842938] psci: CPU1 killed.
[    1.848633] CPU2: shutdown
[    1.851500] psci: CPU2 killed.
[    1.856376] Detected VIPT I-cache on CPU0
[    1.856407] GICv3: CPU0: found redistributor 0 region
0:0x0000000038880000
[    1.856459] CPU0: Booted secondary processor 0x0000000000 [0x410fd034]
[    1.862897] mmc1: new high speed SDIO card at address fffd
[    1.882136] Detected VIPT I-cache on CPU1
[    1.882155] GICv3: CPU1: found redistributor 1 region
0:0x00000000388a0000
[    1.882186] CPU1: Booted secondary processor 0x0000000001 [0x410fd034]
[    1.902604] Detected VIPT I-cache on CPU2
[    1.902624] GICv3: CPU2: found redistributor 2 region
0:0x00000000388c0000
[    1.902653] CPU2: Booted secondary processor 0x0000000002 [0x410fd034]
[    1.921604] psci_checker: Trying to turn off and on again group 0
(CPUs 0-3)
[    1.930565] IRQ 6: no longer affine to CPU0
[    1.930691] CPU0: shutdown
[    1.937961] psci: CPU0 killed.
[    1.942402] IRQ 6: no longer affine to CPU1
[    1.942518] CPU1: shutdown
[    1.949759] psci: CPU1 killed.
[    1.954370] CPU2: shutdown
[    1.957249] psci: CPU2 killed.
[    1.961582] Detected VIPT I-cache on CPU0
[    1.961600] GICv3: CPU0: found redistributor 0 region
0:0x0000000038880000
[    1.961632] CPU0: Booted secondary processor 0x0000000000 [0x410fd034]
[    1.981892] Detected VIPT I-cache on CPU1
[    1.981910] GICv3: CPU1: found redistributor 1 region
0:0x00000000388a0000
[    1.981941] CPU1: Booted secondary processor 0x0000000001 [0x410fd034]
[    2.002301] Detected VIPT I-cache on CPU2
[    2.002319] GICv3: CPU2: found redistributor 2 region
0:0x00000000388c0000
[    2.002348] CPU2: Booted secondary processor 0x0000000002 [0x410fd034]
[    2.021288] psci_checker: Hotplug tests passed OK
[    2.026241] psci_checker: Starting suspend tests (10 cycles per state)
[    2.033683] psci_checker: CPU 1 entering suspend cycles, states 1
through 1
[    2.033685] psci_checker: CPU 3 entering suspend cycles, states 1
through 1
[    2.033687] psci_checker: CPU 0 entering suspend cycles, states 1
through 1
[    2.033689] psci_checker: CPU 2 entering suspend cycles, states 1
through 1
[    2.091607] psci_checker: CPU 0 suspend test results: success 10,
shallow states 0, errors 0
[    2.100497] psci_checker: CPU 1 suspend test results: success 10,
shallow states 0, errors 0
[    2.109361] psci_checker: CPU 2 suspend test results: success 10,
shallow states 0, errors 0
[    2.118227] psci_checker: CPU 3 suspend test results: success 10,
shallow states 0, errors 0
[    2.127106] psci_checker: Suspend tests passed OK
[    2.132030] psci_checker: PSCI checker completed
```

(also when booted (via SDP) , I can't wake up from S3 or reboot.)

All the above worked with v5.3. Do you know what I could be doing wrong
on 5.4?

thanks!

                                martin


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

ARM_CPUIDLE is basically replaced with ARM_PSCI_CPUIDLE

> 
>> I know all this is no real solution, but currently the only way to have
>> said sleep state on top of mainline. so be it for now.
> Can you use the gpcv2 driver from NXP tree?
> 
> --
> Regards,
> Leonard
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
