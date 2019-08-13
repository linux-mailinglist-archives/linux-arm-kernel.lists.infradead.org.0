Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 597818BB85
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 16:29:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=K/NYqjbcc/vBmTLY9b95dw3bTzDNvkF7H0jwytljB50=; b=nXsIy2TpZsVQZceAYGP+gC2ZC
	gqSqxg+v5QfMMnq63otRd2iUIChQJVpyQ9R9m2tVF4Mhqj4H/J/veSYK9DOzP2gseqGWf/Wbpd1y+
	wT6iJHhoIAV0SZA48/AQm5dMeEtiQZAuOHUHq/qh1+nmoYBBroL5j5oOoGJZVwo/0CaXJdWxFzWjt
	hcWVBUqhggmdB6/rEDog8JERcGMFaaO49vh9CljVMMD3AYLB0i89gPdvw+ef7fHvh8PpOkrJcxcOI
	WbkVyTA8Z46GuS4aBmSyWnpbgJ5O84LZBtoFIJqTUAVJaQkPvnbmfZAhFc8HTdlhmYnz6qkQPF4O7
	FA+QbX9OQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxXn3-0001PT-5H; Tue, 13 Aug 2019 14:28:45 +0000
Received: from vern.gendns.com ([98.142.107.122])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxXly-0001HE-BW
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 14:27:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lechnology.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eyW2kvR5Exa0mfMjjExkFPqx97Nxe7382YhDJSTHDSY=; b=WIvsweW4CHtS7NPHBlwgjR5qyZ
 BLAWjVlCim78VGWE+OVOgkj7X4012/CwOo7R4sOnMlHQlp3dGIa/eaS83RV6JmlKyBFOJcvXID2IU
 PxeOrvyXddNCO2ifG/d60a5azAH4aavM5AKJuW1UlxRE1zbTkFYl8J+xcAEfrGQ3SByeq2ajwoMnY
 8Nw6l/VpqotyhHTSHK96jnCtEUmhDIli1KZjj9fs2KPZktu1KJrH0kPjlyHSC+WuAQqNp6/5WOL17
 JJ7GuFj1jvapRuzNC07ThzuEEXp+o4ppxAcxyvGbEuVgkgPR1vLNoSLa93+qtzJcpnSPhfiqvIhsR
 fEUQqabQ==;
Received: from 108-198-5-147.lightspeed.okcbok.sbcglobal.net
 ([108.198.5.147]:38866 helo=[192.168.0.134])
 by vern.gendns.com with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <david@lechnology.com>)
 id 1hxXlD-0007l4-9e; Tue, 13 Aug 2019 10:26:51 -0400
Subject: Re: [PATCH v2 4/6] irqchip/irq-pruss-intc: Add helper functions to
 configure internal mapping
To: Suman Anna <s-anna@ti.com>, Marc Zyngier <maz@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>
References: <20190731224149.11153-1-s-anna@ti.com>
 <20190731224149.11153-5-s-anna@ti.com>
 <1a63eb50-7c5c-eb3d-3cbe-bd1cc59ce3fe@kernel.org>
 <89abc27f-5d02-a8ce-df0e-b185c2a647cd@ti.com>
 <1ac233f6-f3a3-6cec-9ad2-49e985fdfaca@lechnology.com>
 <6c17875e-496d-1277-278f-239d3a9d8ca2@ti.com>
 <124b03b8-f8e7-682b-8767-13a739329da2@lechnology.com>
 <fed95ae1-86a5-af75-c017-08b19e8e743b@ti.com>
From: David Lechner <david@lechnology.com>
Message-ID: <de94d398-4768-17b0-b9ef-a66d43d34ae3@lechnology.com>
Date: Tue, 13 Aug 2019 09:26:50 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <fed95ae1-86a5-af75-c017-08b19e8e743b@ti.com>
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
X-CRM114-CacheID: sfid-20190813_072738_563928_09A3EB14 
X-CRM114-Status: GOOD (  28.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On 8/12/19 2:39 PM, Suman Anna wrote:
> Hi David,
> 
> On 8/8/19 12:09 PM, David Lechner wrote:
>> On 8/2/19 4:26 PM, Suman Anna wrote:
>>> Point is different applications might use mapping differently as per
>>> their firmware and driver/application design and their split across one
>>> or more PRUs (design by contract). And we need to set this up at runtime
>>> when the application driver is getting run. We will have either the Soft
>>> UART or the Ethernet running at a time depending on the end goal desired
>>>
>>>> I have an idea that we can use multiple struct irq_domains to make
>>>> this work in the existing IRQ framework, but it would be helpful to
>>>> know more about the bigger picture first.
>>>
>>> Yeah, would be great if there is a way this can be solved without having
>>> to introduce additional API.
>>>
>>
>>
>> Here is what I came up with to use existing IRQ APIs to implement event
>> mapping.
>> Basically it is the same as my previous suggestion [1], with the
>> addition of
>> multiple IRQ domains.
> 
> First of all, many thanks for looking into the problem and providing
> patches for the alternate solutions. If we were to not use any exported
> functions, this approach does seem to be a viable solution. I am going
> to play around with both [1] and this patch with all our existing
> usecases and see if I run into any issues.
> 
> So, w.r.t this patch compared to [1], is the multiple IRQ domain solving
> anything specifically? Our main issue is the re-purposing of a event
> (and its mapping depending on the application), and the same issue will
> remain whether we have multiple domains or not. Also, now we would
> expect an event to migrate between different domains based on its usage.

The only thing using multiple IRQ domains gets us is that it allows us to
have multiple IRQ descriptors (virq) for a single PRU event. In other
words, if we needed to map a single system event to both a PRU core and
the MCU interrupt controller at the same time, then we would need separate
IRQ domains to do this. I we would never need to do something like this,
then we don't the IRQ domains.

Previously, you said "We can have two different applications use the same
event with different mappings." So I took this to mean that the events
would actually be mapped in hardware at the same time, but now I
understand it to just mean that a single firmware blob could contain
multiple mappings that contain the same events, but won't actually be used
at the same time. So if this is the case, then we probably don't need to
mess with IRQ domains.


> 
>>
>> The idea is that each external interrupt controller (or DMA controller,
>> etc.)
>> that is connected to the PRUSS interrupt controller is considered an
>> interrupt
>> domain. One of the objections to my previous patch was that we could
>> only have
>> one IRQ descriptor per event. Now we can have one descriptor per event per
>> domain.
>>
>> I am still proposing that we use the interrupt-cells and identical vendor
>> resource data structures in the PRU firmware be used to provide the mapping
>> information. (As a side note, I still think it is important to include
>> EVTSEL
>> on AM18xx in order to fully describe the event.)
> 
> W.r.t EVTSEL, it is a global value and applies to a range of events. I
> have another equivalent register/functionality on most of the other SoCs
> as well (a register in PRUSS_CFG space) that muxes standard events vs
> MII_RT events. Again, that is limited to only a subset of all the system
> events. So, should this continue to be a per event specifier, it will be
> yet another mapping configuration data item (my idea was to manage this
> once per application within the PRU remoteproc driver along with the
> fwspec mapping).

I guess it just seems a bit fragile to me to specify EVTSEL elsewhere. My
thinking is that the first event registered that requires a specific EVTSEL
value "wins" and if any other events are registered with a different EVTSEL
value, then we will get an error. Likewise, if all users of a specific
EVTSEL value are unmapped, then it is up for grabs for any value again.

On the other hand, with a global value as you have proposed, we can just
leave comments in the device tree and the firmware about which EVTSEL value
is required for a specific event number. We won't be able to catch mistakes
at runtime, but at least there will be something to remind us what we did
wrong. So, I suppose that is good enough.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
