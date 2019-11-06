Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4DABF21CF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 23:37:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=8KYuXsr6JStGYKzwTB4kF6q346L1YF362MQQzYqO10k=; b=onE/yMbtLNfhBj
	tG+GOACu0rHIaInJvgAGcUvRC+TgSSzNH0Vow9MZ6zbqIhnoS4pxeEh25RBZA9zJrLisAa/OeqDWV
	1q9U36GZGSf3aVg9qt1+r/wB9EZhurZ7Z+hkxEzeMvMx6ITJLvkYX7fJvYyHoDBK6y/O9FnoFmWIZ
	9ehQGoN/QhACPI/iX8/9DEEyMAeAAk4n5IxCJEeVdjTrJdxpwMa4jb7cyxetL2B3a44e9M1wAHeV+
	nGOMwqbr8nl9exb2qrZSzcBqgVdIFxS+ao7qeolRjsFR2dnWnyT9K3DuuLSTAg/30lQGFG2m5GHsJ
	cMYEWamufGDCnaOIbH6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSTvN-0000bb-7n; Wed, 06 Nov 2019 22:37:13 +0000
Received: from mail-eopbgr150052.outbound.protection.outlook.com
 ([40.107.15.52] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSTvE-0000Ze-3N
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 22:37:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QDItSdGZH0thH44GN51UHkRGoO+IFfIm9a4VkGa5mZ7Flqt8XCsE1XtEMuXeTDKAEIBWYPfaxCLRILMHe7ycbuzTJDHakJFJDYF1U3npOunjJAczdtYW/3+BrYel0oE0WhIjQgl3kzBVjTdiXaNvyaxsfEpdmOxBmQQ5DszKr/nDG/IMF0Qkd0p6x65l++dw4fPvjvqitqgHbZS2EoVYdGMYU/WRNxtEzRBZbRIMTrkenVNiwKi8w6taTdevin62LzAa5lFyjUWbIGpGXwnWYxNleMdkXCu3KuLizi+TusEj16quZZArIon+gGFyLlu7npAawmbSGM+eh7R8ZcKibA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4g9r0GR99hiBNGlK/KwDC1PLB9GapFW/c6dcT+5kiWg=;
 b=KXRvLwN+gQypnEgSLiHnni/cHmKZNPGPp+HC8xhwFYSvtleor27pDbiYyIgsf6ZXbRiu1O8mS45zZauha+QANOxoapVzYUI7JikhXbApjje56JucnooN0jBAU/mhIcikWkwsQZEVq8lhXtTf2wDgajAPB48ziBQMJ7ek0VakrBZnn63kuZvMD3v3vEz78ayMHGBDrSYP1sOr9Dpf5gvuv5+QhTPf1uOKFKpu+VhVALVLO2d32UTdzONrFJJZ3TEuMX6DhwmwyrXC61kqYbCljZC3TmmoojYVWUyGMmHpG99vDWpwMJEvVgXrFNISOiYBXDXqeVYL6c6+1J9Mr+ER/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4g9r0GR99hiBNGlK/KwDC1PLB9GapFW/c6dcT+5kiWg=;
 b=HeDLa81X+BWJdcPEAdxWkX7ibqvUX0MGyvZ5PBCBrhdNiynOrOwi8wr3DvmYv3Lj5GNcGEFsYDvytcyG+pIIeV4d5ZHSYV2cyvlSF4dAapASskc4MvuLrCFSmK2zNol38q7hFo3zBprUUMR7dN7hwCjOgJVbmPPf033ge9HfSwY=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB4096.eurprd04.prod.outlook.com (52.133.14.32) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.24; Wed, 6 Nov 2019 22:36:59 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::dd0c:72dc:e462:16b3]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::dd0c:72dc:e462:16b3%5]) with mapi id 15.20.2430.023; Wed, 6 Nov 2019
 22:36:59 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Martin Kepplinger <martink@posteo.de>, Abel Vesa <abel.vesa@nxp.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: Re: [RFC 0/2] Add workaround for core wake-up on IPI for i.MX8MQ
Thread-Topic: [RFC 0/2] Add workaround for core wake-up on IPI for i.MX8MQ
Thread-Index: AQHVH4Y/fXLWCNQC3kGmFNlizRWSbQ==
Date: Wed, 6 Nov 2019 22:36:59 +0000
Message-ID: <VI1PR04MB70231EA80BB20C9A84B1B799EE790@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <20190610121346.15779-1-abel.vesa@nxp.com>
 <d217a9d2-fc60-e057-6775-116542e39e8d@posteo.de>
 <7d3a868a-768c-3cb1-c6d8-bf5fcd1ddd1c@posteo.de>
 <20191030080727.7pcvhd4466dproy4@fsr-ub1664-175>
 <523f92bd-7e89-b48a-afd0-0a9a8bca8344@posteo.de>
 <20191104103525.qjkxh2zhhgaaectk@fsr-ub1664-175>
 <433f3f03-f780-c327-f1e8-fbf046a8374c@posteo.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: cccedd4d-50b4-4fee-5070-08d76309d603
x-ms-traffictypediagnostic: VI1PR04MB4096:|VI1PR04MB4096:
x-ms-exchange-purlcount: 3
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB40965C472C2822D5F2BFE77AEE790@VI1PR04MB4096.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 02135EB356
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(396003)(376002)(39860400002)(136003)(346002)(189003)(199004)(54014002)(43544003)(102836004)(446003)(6246003)(55016002)(256004)(14444005)(99286004)(2906002)(76176011)(5660300002)(7696005)(476003)(6436002)(54906003)(561944003)(71190400001)(71200400001)(8936002)(6306002)(86362001)(53546011)(110136005)(9686003)(14454004)(4326008)(6506007)(966005)(316002)(81156014)(52536014)(74316002)(305945005)(81166006)(66946007)(33656002)(26005)(8676002)(7416002)(3846002)(6116002)(186003)(45080400002)(66446008)(64756008)(66556008)(66476007)(478600001)(25786009)(7736002)(76116006)(66066001)(91956017)(44832011)(229853002)(486006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4096;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pBVez4nMyFrzgmUFk2DdZp5omAI6FV0qHGntOrStPA4t8u3o9GeOMk+WeAmAHcqCSvdhg2M4XgeBqkDXcwOzTvCbr59WvMxKexMWJEBXnIHmxuniKCHsZjqCgXjtWom4gL/6WuR2XKRb6j1N3BFkYeqxdPt4yNtynAZ6m2ifa1R5Y0TCsmK9TyTjujr0XgxjflJFzBD5wTIgJ0+FeysY7uAEOY7K9JUBqXG/IV1nRMZpCb1o1/IDM59baiCcYiWKRHQ5f4IQNLi5zHybfVD2nnbS9baT+lZQtZixtZQEKY7C4bM0k83QppfSW4ZjsioQirV9feMQD38CEpGQiuHzDbDG2MxCwwJ2lOucKU5pS89nHCswNZ8K2mPrg1217lrRG+nTq1pUUWVcHC9ew7rDXJUs1gbezkgtGCciMTwInRdi3DCpLOm/dj8cfk1xwUhGoZBD+od8hwfqM5DsV37ogyrMEkJxKavauKGAs8sB1cM=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cccedd4d-50b4-4fee-5070-08d76309d603
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Nov 2019 22:36:59.1536 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ntQZvTMwfGr0Bhu5M0DO6wzfAO107mUhFv8clNVINPagL5vgkzFD1lzXfVZMABPAUlNIi8NdS/rzu+CP4o0Uhw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4096
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_143704_315261_A6880781 
X-CRM114-Status: GOOD (  25.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.52 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On 06.11.2019 13:59, Martin Kepplinger wrote:
> On 04.11.19 11:35, Abel Vesa wrote:
>> On 19-11-04 09:49:18, Martin Kepplinger wrote:
>>> On 30.10.19 09:08, Abel Vesa wrote:
>>>> On 19-10-30 07:11:37, Martin Kepplinger wrote:
>>>>> On 23.06.19 13:47, Martin Kepplinger wrote:
>>>>>> On 10.06.19 14:13, Abel Vesa wrote:
>>>>>>> This is another alternative for the RFC:
>>>>>>> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flkml.org%2Flkml%2F2019%2F3%2F27%2F545&amp;data=02%7C01%7Cleonard.crestez%40nxp.com%7C6ca438b3b9e44d70ac7608d762b0c030%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C1%7C637086383589318475&amp;sdata=NyFLkQ8PUfC7PGejDK7NBJoQu36ZfaYvg9yuJvHedzo%3D&amp;reserved=0
>>>>>>>
>>>>>>> This new workaround proposal is a little bit more hacky but more contained
>>>>>>> since everything is done within the irq-imx-gpcv2 driver.
>>>>>>>
>>>>>>> Basically, it 'hijacks' the registered gic_raise_softirq __smp_cross_call
>>>>>>> handler and registers instead a wrapper which calls in the 'hijacked'
>>>>>>> handler, after that calling into EL3 which will take care of the actual
>>>>>>> wake up. This time, instead of expanding the PSCI ABI, we use a new vendor SIP.
>>>>>>>
>>>>>>> I also have the patches ready for TF-A but I'll hold on to them until I see if
>>>>>>> this has a chance of getting in.
>>>>>>
>>>>>
>>>>> Hi Abel,
>>>>>
>>>>> Running this workaround doesn't seem to work anymore on 5.4-rcX. Linux
>>>>> doesn't boot, with ATF unchanged (includes your workaround changes). I
>>>>> can try to add more details to this...
>>>>>
>>>>
>>>> This is happening because the system counter is now enabled on 8mq.
>>>> And since the irq-imx-gpcv2 is using as irq_set_affinity the
>>>> irq_chip_set_affinity_parent. This is because the actual implementation
>>>> of the driver relies on GIC to set the right affinity. On a SoC
>>>> that has the wake_request signales linked to the power controller this
>>>> works fine. Since the system counter is actually the tick broadcast
>>>> device and the set affinity relies only on GIC, the cores can't be
>>>> woken up by the broadcast interrupt.
>>>>
>>>>> Have you tested this for 5.4? Could you update this workaround? Please
>>>>> let me know if I missed any earlier update on this (having a cpu-sleep
>>>>> idle state).
>>>>>
>>>>
>>>> The solution is to implement the set affinity in the irq-imx-gpcv2 driver
>>>> which would allow the gpc to wake up the target core when the broadcast
>>>> irq arrives.
>>>>
>>>> I have a patch for this. I just need to clean it up a little bit.
>>>> Unfortunately, it won't go upstream since everuone thinks the gic
>>>> should be the one to control the affinity. This obviously doesn't work
>>>> on 8mq.
>>>>
>>>> Currently, I'm at ELCE in Lyon. Will get back at the office tomorrow
>>>> and sned you what I have.
>>>>
>>>
>>> Hi Abel,
>>>
>>> Do you have any news on said patch for testing? That'd be great for my
>>> plannings.
>>>
>>
>> Sorry for the late answer.
>>
>> I'm dropping here the diff.
>>
>> Please keep in mind that this is _not_ an official solution.
>>
>> ---
>>   drivers/irqchip/irq-imx-gpcv2.c | 42 ++++++++++++++++++++++++++++++++++++++++-
>>   1 file changed, 41 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/irqchip/irq-imx-gpcv2.c b/drivers/irqchip/irq-imx-gpcv2.c
>> index 01ce6f4..3150588 100644
>> --- a/drivers/irqchip/irq-imx-gpcv2.c
>> +++ b/drivers/irqchip/irq-imx-gpcv2.c
>> @@ -41,6 +41,24 @@ static void __iomem *gpcv2_idx_to_reg(struct gpcv2_irqchip_data *cd, int i)
>>   	return cd->gpc_base + cd->cpu2wakeup + i * 4;
>>   }
>>   
>> +static void __iomem *gpcv2_idx_to_reg_cpu(struct gpcv2_irqchip_data *cd,
>> +					int i, int cpu)
>> +{
>> +	u32 offset =  GPC_IMR1_CORE0;
>> +	switch(cpu) {
>> +	case 1:
>> +		offset = GPC_IMR1_CORE1;
>> +		break;
>> +	case 2:
>> +		offset = GPC_IMR1_CORE2;
>> +		break;
>> +	case 3:
>> +		offset = GPC_IMR1_CORE3;
>> +		break;
>> +	}
>> +	return cd->gpc_base + offset + i * 4;
>> +}
>> +
>>   static int gpcv2_wakeup_source_save(void)
>>   {
>>   	struct gpcv2_irqchip_data *cd;
>> @@ -163,6 +181,28 @@ static void imx_gpcv2_irq_mask(struct irq_data *d)
>>   	irq_chip_mask_parent(d);
>>   }
>>   
>> +static int imx_gpcv2_irq_set_affinity(struct irq_data *d,
>> +				 const struct cpumask *dest, bool force)
>> +{
>> +	struct gpcv2_irqchip_data *cd = d->chip_data;
>> +	void __iomem *reg;
>> +	u32 val;
>> +	int cpu;
>> +
>> +	for_each_possible_cpu(cpu) {
>> +		raw_spin_lock(&cd->rlock);
>> +		reg = gpcv2_idx_to_reg_cpu(cd, d->hwirq / 32, cpu);
>> +		val = readl_relaxed(reg);
>> +		val |= BIT(d->hwirq % 32);
>> +		if (cpumask_test_cpu(cpu, dest))
>> +			val &= ~BIT(d->hwirq % 32);
>> +		writel_relaxed(val, reg);
>> +		raw_spin_unlock(&cd->rlock);
>> +	}
>> +
>> +	return irq_chip_set_affinity_parent(d, dest, force);
>> +}
>> +
>>   static struct irq_chip gpcv2_irqchip_data_chip = {
>>   	.name			= "GPCv2",
>>   	.irq_eoi		= irq_chip_eoi_parent,
>> @@ -172,7 +212,7 @@ static struct irq_chip gpcv2_irqchip_data_chip = {
>>   	.irq_retrigger		= irq_chip_retrigger_hierarchy,
>>   	.irq_set_type		= irq_chip_set_type_parent,
>>   #ifdef CONFIG_SMP
>> -	.irq_set_affinity	= irq_chip_set_affinity_parent,
>> +	.irq_set_affinity	= imx_gpcv2_irq_set_affinity,
>>   #endif
>>   };

This is prone to race conditions.

In NXP tree there is different gpcv2 irqchip driver which does all GPC 
IMR register manipulation in TF-A through SMC calls. The cpuidle 
workaround also manipulates the same registers and does so safely under 
a lock.

If OS also writes to same IMR register then set_affinity for SPIs 1-31 
can potentially race with one those cores being woken up. This is very 
unlikely (set_affinity calls are rare) but in the worst case the system 
could still hang on lost IPI.

> I guess this diff does not apply when using this reworked change:
> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fsource.puri.sm%2FLibrem5%2Flinux-next%2Fcommit%2Fe59807ae0e236512761b751abc84a9b129d7fcda&amp;data=02%7C01%7Cleonard.crestez%40nxp.com%7C6ca438b3b9e44d70ac7608d762b0c030%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C1%7C637086383589318475&amp;sdata=Mf%2BFtqFSG4xHL3IGPrD%2FOweR8qoJHV0IKuziPIUK%2Bsw%3D&amp;reserved=0
> which has worked for me when running 5.3.
> 
> At least on 5.4-rc5, using your change, I still get
> 
> cat /sys/devices/system/cpu/cpuidle/current_driver
> none

This reads "psci_idle" for me in linux-next on imx8mm. Your problem 
seems to be related to probing the cpuidle driver, not related to any 
hardware workarounds.

> But also when trying to rewrite your patch against irq-gic-v3.c at least
> nothing changes for me (I might have done that wrong as well though).
> 
> What needs to change (in order to have the cpu-sleep state / idle
> driver) based on the above "reworked" workaround?
> 
> Could the config have changed? CONFIG_ARM_CPUIDLE should be the only
> needed path, or did things change there in 5.4?

It seems there were some recent cleanups in the cpuidle psci core code, 
maybe you need config updates?

https://patchwork.kernel.org/cover/11052723/

> I know all this is no real solution, but currently the only way to have
> said sleep state on top of mainline. so be it for now.
Can you use the gpcv2 driver from NXP tree?

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
