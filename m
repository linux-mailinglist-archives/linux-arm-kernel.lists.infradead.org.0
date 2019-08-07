Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBEFE84B1E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 13:59:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FIHKiY/HBM39wiKChO3nROQoQamLjdxV0WSr5PQsNAA=; b=g5+Dgi2hq+YlwPq+eOe660gRf
	M58YPEnh1O8gMyO2PqHj+xldNtZti7ERpoKCYSTnmwGo6sGCnqCl2y6K/OEuwVdlb3Nn3otMjxnId
	H7xAXZYU/wkXj7NBzkIj78UuNHwtj1WO9wD4P9sMHBXoHtPYy7ZxgSyGsmsE3vwpIvq+GiHHO9Gpu
	uuhv95KlPla+qNv7rsc/okvcJvFg3jbXxxsXjjjxNAc3tA8ZsTlP6Vfu1IIx7MhGiSSJMFuKM8URt
	g1SNNKJcbeYXT3ioyK0w1gZ9cwZ/S+7ysSe6082CiiLEYEvwp84STQFOAoPxznSWpoxNW1829mct8
	LICu1GF6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvKbT-0002fk-RE; Wed, 07 Aug 2019 11:59:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hvKbF-0002fH-T2
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 11:59:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 55D0728;
 Wed,  7 Aug 2019 04:59:24 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2A92F3F575;
 Wed,  7 Aug 2019 04:59:23 -0700 (PDT)
Subject: Re: [PATCH] arm64: dts: allwinner: a64: Drop PMU node
To: Vasily Khoruzhick <anarsoul@gmail.com>
References: <20190806140135.4739-1-anarsoul@gmail.com>
 <89402d22-d432-9551-e787-c8ede16dbe5f@arm.com>
 <CA+E=qVfh7mirJhRsDTeuAVgG55ia936uFSFVKR0N5Pn4GCF1UA@mail.gmail.com>
 <E1hv5vZ-0000jN-M8@stardust.g4.wien.funkfeuer.at>
 <CA+E=qVdHOtebR6xjpwTY_Whp0cHLtv82YULmxLPSEzdLN9TnVg@mail.gmail.com>
 <36e60078-7dd5-9c07-ffa1-6092d8c70fa8@arm.com>
 <CA+E=qVeAR4AFN99ZVy8EZLW6p_8ucTewOdMis37wnpV3DObaGg@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <b8f47c20-4b19-6fa4-54cf-99c4d2358da3@arm.com>
Date: Wed, 7 Aug 2019 12:59:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CA+E=qVeAR4AFN99ZVy8EZLW6p_8ucTewOdMis37wnpV3DObaGg@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_045925_985976_D0576E15 
X-CRM114-Status: GOOD (  21.13  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 "Jared D . McNeill" <jmcneill@netbsd.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Harald Geyer <harald@ccbib.org>,
 arm-linux <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 07/08/2019 03:39, Vasily Khoruzhick wrote:
> On Tue, Aug 6, 2019 at 2:14 PM Robin Murphy <robin.murphy@arm.com> wrote:
>>
>> On 2019-08-06 9:52 pm, Vasily Khoruzhick wrote:
>>> On Tue, Aug 6, 2019 at 1:19 PM Harald Geyer <harald@ccbib.org> wrote:
>>>>
>>>> Vasily Khoruzhick writes:
>>>>> On Tue, Aug 6, 2019 at 7:35 AM Robin Murphy <robin.murphy@arm.com> wrote:
>>>>>>
>>>>>> On 06/08/2019 15:01, Vasily Khoruzhick wrote:
>>>>>>> Looks like PMU in A64 is broken, it generates no interrupts at all and
>>>>>>> as result 'perf top' shows no events.
>>>>>>
>>>>>> Does something like 'perf stat sleep 1' at least count cycles correctly?
>>>>>> It could well just be that the interrupt numbers are wrong...
>>>>>
>>>>> Looks like it does, at least result looks plausible:
>>>>
>>>> I'm using perf stat regularly (cache benchmarks) and it works fine.
>>>>
>>>> Unfortunately I wasn't aware that perf stat is a poor test for
>>>> the interrupts part of the node, when I added it. So I'm not too
>>>> surprised I got it wrong.
>>>>
>>>> However, it would be unfortunate if the node got removed completely,
>>>> because perf stat would not work anymore. Maybe we can only remove
>>>> the interrupts or just fix them even if the HW doesn't work?
>>>
>>> I'm not familiar with PMU driver. Is it possible to get it working
>>> without interrupts?
>>
>> Yup - you get a grumpy message from the driver, it will refuse sampling
>> events (the ones which weren't working anyway), and if you measure
>> anything for long enough that a counter overflows you'll get wonky
>> results. But for counting hardware events over relatively short periods
>> it'll still do the job.
> 
> I tried to drop interrupts completely from the node but 'perf top' is
> still broken. Though now in different way: it complains "cycles: PMU
> Hardware doesn't support sampling/overflow-interrupts. Try 'perf
> stat'"
> 
> Is there any way to make it working?

As the message implies, 'perf top' can't work because it uses sampling 
events, which are based on periodic interrupts. If the IRQs aren't 
there, then too bad, as there's no alternative.

One other possibility is that the IRQs really are wired up, but the 
firmware is somehow leaving them configured as Secure group 0, such that 
Linux has no visibility of them.

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
