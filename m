Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02D837E231
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 20:32:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mmRAtbKqT5ICRnVlNF/zXZLKJj0AqLVfBA8C7qzYJ5k=; b=ebrYAvaYjtFnK+u/lfgUP1DkE
	uhSExy3122VrtTEerwIiBUNjc0it11En8tu6sh1M8HyG6ociAsFsvNWpzzbM2I50eqHtLuvQ9wBON
	KEEvVBmAfmvGHLj89IEnjnGK+r/gQUH3jgfryt+TG8hyk2olAK4M3kqCzJCMhr4nKPVqpis3aPOwp
	DdvdOcJ2TldxPa1mF+PpMueGzGaSNFs9yy+ZbD71dGaioFIDSrgCSGVhSMT77/W8gNyjSHJyKT8EG
	kWRecJzBKdQg5rbHrmUFFBQN0vD7jqpRJhSmIDsiQhidRCpU3RTMsjpvOMWfK9BEJoX/Ok4uVB2Gx
	sU0EFYv5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htFs7-00030x-B6; Thu, 01 Aug 2019 18:32:15 +0000
Received: from vern.gendns.com ([98.142.107.122])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htFrz-0002yx-C1
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 18:32:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lechnology.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=j2rqkj6fKOcFw4YgdxMmf3Df9LvJozpqX6r8uPeieAM=; b=DtyVtg4O1cvn+mYLIOHIGYh2kP
 22DuG8+ELPFmBrwUpCItig1Ww5U8ebZmVLvS/RYeBGAqLReTnd3JveQ1J8xDrc07pgo5ft5+RHn68
 X4NAe+pE17fR/x3jv2HErgsbshYRWGC0OHsHuNy1APDhRHeJpNzR4pLTI+m1ZpQ3N8NXb2nevMrH8
 NJjvgxtZoBo2gttY4kvccuLU77dIyj6XGa50tQPQYkSJcUlY6qLGJPL7EgOKVePBox+nXTBbGUimX
 wXh+5024tHKajZglmrWEkMEu8Tj4I89DL/PHlxjbwEwBZm8eHw5HScfGw65s3PGu8Y3MLm8J46zNq
 /0jcCX8Q==;
Received: from 108-198-5-147.lightspeed.okcbok.sbcglobal.net
 ([108.198.5.147]:44394 helo=[192.168.0.134])
 by vern.gendns.com with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <david@lechnology.com>)
 id 1htFrB-0023Vv-Qn; Thu, 01 Aug 2019 14:31:17 -0400
Subject: Re: [PATCH v2 4/6] irqchip/irq-pruss-intc: Add helper functions to
 configure internal mapping
To: Suman Anna <s-anna@ti.com>, Marc Zyngier <maz@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>
References: <20190731224149.11153-1-s-anna@ti.com>
 <20190731224149.11153-5-s-anna@ti.com>
 <1a63eb50-7c5c-eb3d-3cbe-bd1cc59ce3fe@kernel.org>
 <89abc27f-5d02-a8ce-df0e-b185c2a647cd@ti.com>
From: David Lechner <david@lechnology.com>
Message-ID: <1ac233f6-f3a3-6cec-9ad2-49e985fdfaca@lechnology.com>
Date: Thu, 1 Aug 2019 13:31:16 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <89abc27f-5d02-a8ce-df0e-b185c2a647cd@ti.com>
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - vern.gendns.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lechnology.com
X-Get-Message-Sender-Via: vern.gendns.com: authenticated_id:
 davidmain+lechnology.com/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: vern.gendns.com: davidmain@lechnology.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_113207_494724_338D1092 
X-CRM114-Status: GOOD (  24.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Lokesh Vutla <lokeshvutla@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Murali Karicheri <m-karicheri2@ti.com>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 8/1/19 12:10 PM, Suman Anna wrote:
> Hi Marc,
> 
> On 8/1/19 3:45 AM, Marc Zyngier wrote:
>> On 31/07/2019 23:41, Suman Anna wrote:
>>> The PRUSS INTC receives a number of system input interrupt source events
>>> and supports individual control configuration and hardware prioritization.
>>> These input events can be mapped to some output interrupt lines through 2
>>> levels of many-to-one mapping i.e. events to channel mapping and channels
>>> to output interrupts.
>>>
>>> This mapping information is provided through the PRU firmware that is
>>> loaded onto a PRU core/s or through the device tree node of the PRU
>>> application. The mapping is configured by the PRU remoteproc driver, and
>>> is setup before the PRU core is started and cleaned up after the PRU core
>>> is stopped. This event mapping configuration logic programs the Channel
>>> Map Registers (CMRx) and Host-Interrupt Map Registers (HMRx) only when a
>>> new program is being loaded/started and the same events and interrupt
>>> channels are reset to zero when stopping a PRU.
>>>
>>> Add two helper functions: pruss_intc_configure() & pruss_intc_unconfigure()
>>> that the PRU remoteproc driver can use to configure the PRUSS INTC.
>>
>> So let me see if I correctly understand this: this adds yet another
>> firmware description parser, with a private interface to another
>> (undisclosed?) driver, bypassing the standard irqchip configuration
>> mechanism. It sounds great, doesn't it?
>>
>> What I cannot really infer from this message (-ETOOMUCHJARGON) is what
>> interrupts this affects:
>>
>> - Interrupts from random devices to the PRUSS?
>> - Interrupts from the PRUSS to the host?
>> - Something else?
> 
> The interrupt sources (called system events) can be from internal PRUSS
> peripherals, SoC-level peripherals or just software triggering (limited
> to some events).
> 
> So, the PRUSS INTC behaves as a funnel and is both an interrupt router
> and multiplexer. The INTC itself is part of the PRUSS, and all PRU
> application related interrupts/events that need to trigger an interrupt
> to either the PRU cores or other host processors (like DSP, ARM) have to
> go through this INTC, and routed out to a limited number of output
> interrupts that are then connected to different processors.
> 
> The split of interrupt handling between a PRU and its peer host
> processor will be a application design choice (We can implement soft IPs
> like UARTs, ADCs, I2Cs etc using PRUs). Some of the input events
> themselves are multiplexed and controlled by a single MMR (outside of
> INTC) that feeds different sets of events into the INTC. The MMR
> configuration is outside of scope of this driver and will depend on the
> application/client driver being run.
> 
>>
>> When does this happen? Under control of what? It isn't even clear why
>> this is part of this irqchip driver.
> 
> The mapping configuration is per PRU application and firmware, and is
> done in line with acquiring and release a PRU which is treated as an
> exclusive resource. We establish the mapping for all events through this
> driver including the events that are to be routed to PRUs. This is done
> to save the tiny/limited Instruction RAM space that PRUs have.
> 
> We have designed this as an irqchip driver (instead of some custom SoC
> driver exporting custom functions) to use standard Linux semantics/irq
> API and better integrate with Linux DT, but we need some semantics for
> establishing the routing at runtime depending on the PRU client driver
> we are running. The exported functions will be called only by the PRU
> remoteproc driver during a pru_rproc_get()/pru_rproc_put(), and are
> transparent to PRU client drivers.
> 
> Please also see the discussion from v1 [1] on why we can't use an
> extended number of interrupt-cells infrastructure for achieving this.
> 
> [1] https://patchwork.kernel.org/patch/11034563/
> 
> 
>> Depending what this does, there may be ways to fit it into the standard
>> interrupt configuration framework. After all, we already have standard
>> interfaces to route interrupts to virtual CPUs, effectively passing full
>> control of an interrupt to another entity. If you squint hard enough,
>> your PRUSS can fit that description.
> 
> Yeah, I am open to suggestions if there is a better way of doing this.

Hi Suman,

Can you explain more about the use case where one PRU system event is
mapped to multiple host events?

I have an idea that we can use multiple struct irq_domains to make this
work in the existing IRQ framework, but it would be helpful to know more
about the bigger picture first.

> 
> regards
> Suman
> 
>>
>> If that doesn't work, then we need to make the IRQ framework grok that
>> kind of requirement (hence my request for clarification). But I'm
>> strongly opposed to inventing a SoC-private way of configuring
>> interrupts behind the kernel's back.
>>
>> Thanks,
>>
>> 	M.
>>
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
