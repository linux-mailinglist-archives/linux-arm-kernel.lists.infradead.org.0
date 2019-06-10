Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2AA93B6BF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 16:08:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DsVp4J+qa7TFT2bWwO9UV/1J9eECO93aJ4q8QsipbrU=; b=BTUrYVV/bmEK7/
	/psaR83fHD4K4Cj4IrNHvp2sraVT1G4VWeUgigM/klMM79C2+Pr1bNLg+PDonRqUpSaZr9WivD0uq
	AEzfOm6qXVxd3NTgi4kOpLYOFf6Fq7tD6Fo8UNhT8i5Y9nky8ENWxt5zTMIAUMEgPX+jI7IAD3ACm
	JNtiHnr+R6/Q69E4MkGTvtnBUhSzDEkoeTjUHOhzCajGuKxqGG1dj4wjgRM7ONTBpZ7L4fCJO4HkT
	m+3ea0wjUyvYQKKvtuAj+I9eM5Ypiz/KZNjDfvXnJqrFvQaFB3YpEKPgnuYmeU8OARn1O+ZAbmq4I
	3wwbFfN+Shd7WwzHZIvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haKxy-0007yZ-3I; Mon, 10 Jun 2019 14:08:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1haKxn-0007y9-W6
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 14:07:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5058E344;
 Mon, 10 Jun 2019 07:07:55 -0700 (PDT)
Received: from [10.1.197.61] (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 2FC0E3F557; Mon, 10 Jun 2019 07:07:53 -0700 (PDT)
Subject: Re: [RFC 0/2] Add workaround for core wake-up on IPI for i.MX8MQ
To: Abel Vesa <abel.vesa@nxp.com>
References: <20190610121346.15779-1-abel.vesa@nxp.com>
 <20190610131921.GB14647@lakrids.cambridge.arm.com>
 <20190610132910.srd4j2gtidjeppdx@fsr-ub1664-175>
 <6f1052ea-623a-b2e8-9aa8-22aef5fab4ca@arm.com>
 <20190610135514.xd5myavjsloos2y3@fsr-ub1664-175>
From: Marc Zyngier <marc.zyngier@arm.com>
Openpgp: preference=signencrypt
Autocrypt: addr=marc.zyngier@arm.com; prefer-encrypt=mutual; keydata=
 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
 Z46HaNmN2hZS/oJ69c1DI5Rcww==
Organization: ARM Ltd
Message-ID: <7b86aa90-6d64-589c-f11e-d2ee6ab3fd54@arm.com>
Date: Mon, 10 Jun 2019 15:07:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190610135514.xd5myavjsloos2y3@fsr-ub1664-175>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_070756_122255_B31728EA 
X-CRM114-Status: GOOD (  19.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Jacky Bai <ping.bai@nxp.com>,
 Carlo Caione <ccaione@baylibre.com>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Abel Vesa <abelvesa@gmail.com>, Thomas Gleixner <tglx@linutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/06/2019 14:55, Abel Vesa wrote:
> On 19-06-10 14:39:02, Marc Zyngier wrote:
>> On 10/06/2019 14:29, Abel Vesa wrote:
>>> On 19-06-10 14:19:21, Mark Rutland wrote:
>>>> On Mon, Jun 10, 2019 at 03:13:44PM +0300, Abel Vesa wrote:
>>>>> This is another alternative for the RFC:
>>>>> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flkml.org%2Flkml%2F2019%2F3%2F27%2F545&amp;data=02%7C01%7Cabel.vesa%40nxp.com%7C7cb2bda286214541bd1e08d6eda903e0%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C636957707535314247&amp;sdata=guYqyq5ND6HzW6doFyWrR1Ry4ffWpGwtm0xDZ2ufFSg%3D&amp;reserved=0
>>>>>
>>>>> This new workaround proposal is a little bit more hacky but more contained
>>>>> since everything is done within the irq-imx-gpcv2 driver.
>>>>>
>>>>> Basically, it 'hijacks' the registered gic_raise_softirq __smp_cross_call
>>>>> handler and registers instead a wrapper which calls in the 'hijacked' 
>>>>> handler, after that calling into EL3 which will take care of the actual
>>>>> wake up. This time, instead of expanding the PSCI ABI, we use a new vendor SIP.
>>>>
>>>> IIUC from last time [1,2], this erratum affects all interrupts
>>>> targetting teh idle CPU, not just IPIs, so even if the bodge is more
>>>> self-contained, it doesn't really solve the issue, and there are still
>>>> cases where a CPU will not be woken from idle when it should be (e.g.
>>>> upon receipt of an LPI).
>>>>
>>>
>>> Wrong, this erratum does not affect any other type of interrupts, other
>>> than IPIs. That is because all the other interrupts go through GPC,
>>> which means the cores will wake up on any other type (again, other than IPI).
>>
>> Huh... Are you saying that LPIs and PPIs are going through the GPC, and
>> will trigger the wake-up of the core? That's not the conclusion we
>> reached last time.
>>
> 
> Hmm, I don't think that was the conclusion. Yes, Lucas was saying (IIRC)
> that if you terminate the IRQs at GIC then all the other interrupts will be
> in the same situation. But the performance improvement given by terminating
> them at GIC might not be worth it when compared to the cpuidle support.

https://lkml.org/lkml/2019/3/27/1124 clearly says that PPIs are broken,
relying on some other terrible hack for the timer (and only the timer,
leaving other PPIs dead as a nail). It also implies that LPIs have never
been looked into, and given that they aren't routed through the GPC, the
conclusion is pretty easy to draw.

Nobody is talking about performance here. It is strictly about
correctness, and what I read about this system is that it cannot
reliably use cpuidle.

Thanks,

	M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
