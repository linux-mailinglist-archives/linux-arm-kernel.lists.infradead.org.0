Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 401B16C0AD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 19:57:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WAJSAmO7+Tsjmauv1KEcXBGy+HRwhLHVoJqy8+kE62c=; b=u2sqBbq9BGoU8rs+X1Yq0iRqa
	VNKvtfEe5Bkhj7qn39788fxNtPUVjYmjKsQlqbL7wpt7cDyw0EDwOdWd0Y6m26Gvo6WHIcMu6ByG+
	vE67+An6wfU9ce3ijgrH12F09iEDJMz1Or6djGfabks1OgBUzCh34QauitEqv4W35g26aUcpB1EL/
	H6fSNpFBXHO5ZlApMOF9kg0htRg7wycItlATpMKd53Uj6Ff7ei66nFUhYJc7n/hQjsGkggVr8OKkH
	qYEkTivSFQ5kyZafTLKe2gqXUKuRi/ILp84yZLHoMzoseqUcTYTetjPSEvPb1T86vX1OfRuJ0U60Q
	G2/z0Fc5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnoBb-0004W7-KU; Wed, 17 Jul 2019 17:57:51 +0000
Received: from vern.gendns.com ([98.142.107.122])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnoBJ-0004Vf-EZ
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 17:57:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lechnology.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kBCqv/tlrCEB7BtFXFOJV8+OGPJGlXhO5dquLsunvpA=; b=JUQJVM1vwnZ1tOfW05WU4K8sS2
 nnbTCmMPTP6+9fc5yWMZ2iP7WFyv+sU+yUiKL1DeKN/yCiRIE+Oto8digXX58a8eUQcBIUjgvV5ua
 UUEToaMClhulA2UtFibfORrN/XoiIcY5QyuGKr4nURytgYQdCx1zHnUwobNvlsf4rYZtKS8eLKntU
 0ae9SntXkf+cQxpG/F5LwfkqQUhKWFbuOjJ1CaXASbnjl7ETaDflMcn00WrHPcJDN6Mkqgvl98ftq
 vrDMN8nLWRDAkIxmQSEwZcQKwNYHitsoXyA5TWcLf+IJp3Qye49SsOvgyhEeOzOC8pjnmAiBXx067
 t3rfX8Dg==;
Received: from 108-198-5-147.lightspeed.okcbok.sbcglobal.net
 ([108.198.5.147]:48454 helo=[192.168.0.134])
 by vern.gendns.com with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <david@lechnology.com>)
 id 1hnoBG-007dWK-Hb; Wed, 17 Jul 2019 13:57:30 -0400
Subject: Re: [PATCH 4/6] irqchip/irq-pruss-intc: Add helper functions to
 configure internal mapping
To: Suman Anna <s-anna@ti.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Rob Herring <robh+dt@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Jason Cooper <jason@lakedaemon.net>
References: <20190708035243.12170-1-s-anna@ti.com>
 <20190708035243.12170-5-s-anna@ti.com>
 <9aa5acd8-81bf-10dc-5a86-cea2acd1132b@lechnology.com>
 <23ae1767-3531-ea57-2c82-f2657baa123f@ti.com>
From: David Lechner <david@lechnology.com>
Message-ID: <22825f06-d968-03a7-585b-8cbf4123915c@lechnology.com>
Date: Wed, 17 Jul 2019 12:57:29 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <23ae1767-3531-ea57-2c82-f2657baa123f@ti.com>
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
X-CRM114-CacheID: sfid-20190717_105733_651329_457E1453 
X-CRM114-Status: GOOD (  18.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Lokesh Vutla <lokeshvutla@ti.com>, Murali Karicheri <m-karicheri2@ti.com>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Roger Quadros <rogerq@ti.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 7/16/19 6:29 PM, Suman Anna wrote:
> Hi David,
> 
> On 7/10/19 10:10 PM, David Lechner wrote:
>> On 7/7/19 10:52 PM, Suman Anna wrote:
>>> The PRUSS INTC receives a number of system input interrupt source events
>>> and supports individual control configuration and hardware
>>> prioritization.
>>> These input events can be mapped to some output host interrupts through 2
>>> levels of many-to-one mapping i.e. events to channel mapping and channels
>>> to host interrupts.
>>>
>>> This mapping information is provided through the PRU firmware that is
>>> loaded onto a PRU core/s or through the device tree node of the PRU
>>
> 
> Thanks for the thorough review and alternate solutions/suggestions.
> 
>> What will the device tree bindings for this look like?
> 
> They would be as in the below patch you already figured.

Ah, makes sense now: the mapping is defined in the remoteproc node
rather than in the interrupt controller node.

> 
>>
>> Looking back at Rob's comment on the initial series [1], I still think
>> that increasing the #interrupt-cells sounds like a reasonable solution.
>>
>> [1]: https://patchwork.kernel.org/patch/10697705/#22375155
> 
> So, there are couple of reasons why I did not use an extended
> #interrupt-cells:
> 
> 1. There is only one irq descriptor associated with each event, and the
> usage of events is typically per application. And the descriptor mapping
> is done once. We can have two different applications use the same event
> with different mappings. So we want this programming done at
> application's usage of PRU (so done when a consumer driver acquires a
> PRU processor(s) which are treated as an exclusive resource). All the
> different application properties that you saw in [1] are configured at
> the time of acquiring a PRU and reset when they release a PRU.
> 
> 2. The configuration is performed by Linux for all host interrupts and
> channels, and this was primarily done to save the very limited IRAM
> space for those needed by the PRUs. From firmware's point of view, this
> was offloaded to the ARM OS driver/infrastructure, but in general it is
> a design by contract between a PRU client driver and its firmware. Also,
> the DT binding semantics using interrupts property and request_irq()
> typically limits these to interrupts only being requested by MPU, and so
> will leave out those needed by PRUs.
> 

Hmm... case 1. is a tricky one indeed. If there are going to be times where
an event requires multiple mappings, I agree that this doesn't seem to fit
into any existing device tree bindings.



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
