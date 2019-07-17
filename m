Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 174246C14E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 21:05:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qbPQC7ZkUz0ZxXeGX87BMEBZpd4DNPonYEPlYUkWuqQ=; b=s7hhiPTjVBTULA
	JBlAoCvmDB2IX6AJ9oCmOS4WjhVFWxsxjjrfYpJNlXeg95ORCeLN4IKhR3jmP1zjQT2cWFvssZOt0
	5tQj2ZNgVg2B5aCOczFsBKsMjDdzbEu/DfZrWK/6yn544MigwpXYelMCkGCY776XpwsFQ7Iptn+Pf
	G1h9K4XIYrZx0YMVACVxJDBu0vWPijdZ6lNFw8yVY5pUCrToH2e9wkmE5KziD1BrVXWYmpGno//yK
	MrOblATrzvxIQQJYC2sFLEsi0TOVr6scs5FpqG+dCrpDVOyMOXstmnDjByrEpHL+L+wZCUrwJLVZ6
	FMA749hXhTR9XDmVZ/vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnpFR-0005gH-FM; Wed, 17 Jul 2019 19:05:53 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnpF6-0005fx-Ue
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 19:05:34 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6HJ4Yp4107033;
 Wed, 17 Jul 2019 14:04:34 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1563390274;
 bh=cKjpTi+qr5+DtTcVUPXCxDEH24Hpo9wYFkLl96rVLR0=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=ZmeK99JI3DppkZOFL4MpPQd/ahfSGj1YnyHtfxJD43RhfY+exbAI+iqIsMQjlMBtk
 yeoQNtRbG22+j+01s3kHMVMgM8oxSQl6LyQ+L963l7gE7wQy1CJQBk/QS8K85i5bNh
 jMdT6YYV6ZgLXEG4kPVOc1jhMFuRZuiyf4u851QE=
Received: from DLEE111.ent.ti.com (dlee111.ent.ti.com [157.170.170.22])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6HJ4YIw110220
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 17 Jul 2019 14:04:34 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 17
 Jul 2019 14:04:34 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 17 Jul 2019 14:04:34 -0500
Received: from [128.247.58.153] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6HJ4XN0102793;
 Wed, 17 Jul 2019 14:04:33 -0500
Subject: Re: [PATCH 4/6] irqchip/irq-pruss-intc: Add helper functions to
 configure internal mapping
To: David Lechner <david@lechnology.com>, Marc Zyngier <marc.zyngier@arm.com>, 
 Rob Herring <robh+dt@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Jason Cooper <jason@lakedaemon.net>
References: <20190708035243.12170-1-s-anna@ti.com>
 <20190708035243.12170-5-s-anna@ti.com>
 <9aa5acd8-81bf-10dc-5a86-cea2acd1132b@lechnology.com>
 <23ae1767-3531-ea57-2c82-f2657baa123f@ti.com>
 <22825f06-d968-03a7-585b-8cbf4123915c@lechnology.com>
From: Suman Anna <s-anna@ti.com>
Message-ID: <a9162fd9-dc3c-57a9-8390-d92362674178@ti.com>
Date: Wed, 17 Jul 2019 14:04:33 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <22825f06-d968-03a7-585b-8cbf4123915c@lechnology.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_120533_073220_3F42B8FD 
X-CRM114-Status: GOOD (  19.74  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Grygorii Strashko <grygorii.strashko@ti.com>,
 Tony Lindgren <tony@atomide.com>, Sekhar Nori <nsekhar@ti.com>,
 linux-kernel@vger.kernel.org, "Andrew F. Davis" <afd@ti.com>,
 Lokesh Vutla <lokeshvutla@ti.com>, Murali Karicheri <m-karicheri2@ti.com>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 7/17/19 12:57 PM, David Lechner wrote:
> On 7/16/19 6:29 PM, Suman Anna wrote:
>> Hi David,
>>
>> On 7/10/19 10:10 PM, David Lechner wrote:
>>> On 7/7/19 10:52 PM, Suman Anna wrote:
>>>> The PRUSS INTC receives a number of system input interrupt source
>>>> events
>>>> and supports individual control configuration and hardware
>>>> prioritization.
>>>> These input events can be mapped to some output host interrupts
>>>> through 2
>>>> levels of many-to-one mapping i.e. events to channel mapping and
>>>> channels
>>>> to host interrupts.
>>>>
>>>> This mapping information is provided through the PRU firmware that is
>>>> loaded onto a PRU core/s or through the device tree node of the PRU
>>>
>>
>> Thanks for the thorough review and alternate solutions/suggestions.
>>
>>> What will the device tree bindings for this look like?
>>
>> They would be as in the below patch you already figured.
> 
> Ah, makes sense now: the mapping is defined in the remoteproc node
> rather than in the interrupt controller node.

Actually in the PRU consumer/application node, but the client driver
need not deal with invoking any special API. The functions are called
transparently by the PRU remoteproc driver when the PRU client driver
acquires a PRU. The 4th cell was used to identify the PRU from the list
of prus in the client node.

regards
Suman

> 
>>
>>>
>>> Looking back at Rob's comment on the initial series [1], I still think
>>> that increasing the #interrupt-cells sounds like a reasonable solution.
>>>
>>> [1]: https://patchwork.kernel.org/patch/10697705/#22375155
>>
>> So, there are couple of reasons why I did not use an extended
>> #interrupt-cells:
>>
>> 1. There is only one irq descriptor associated with each event, and the
>> usage of events is typically per application. And the descriptor mapping
>> is done once. We can have two different applications use the same event
>> with different mappings. So we want this programming done at
>> application's usage of PRU (so done when a consumer driver acquires a
>> PRU processor(s) which are treated as an exclusive resource). All the
>> different application properties that you saw in [1] are configured at
>> the time of acquiring a PRU and reset when they release a PRU.
>>
>> 2. The configuration is performed by Linux for all host interrupts and
>> channels, and this was primarily done to save the very limited IRAM
>> space for those needed by the PRUs. From firmware's point of view, this
>> was offloaded to the ARM OS driver/infrastructure, but in general it is
>> a design by contract between a PRU client driver and its firmware. Also,
>> the DT binding semantics using interrupts property and request_irq()
>> typically limits these to interrupts only being requested by MPU, and so
>> will leave out those needed by PRUs.
>>
> 
> Hmm... case 1. is a tricky one indeed. If there are going to be times where
> an event requires multiple mappings, I agree that this doesn't seem to fit
> into any existing device tree bindings.
> 
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
