Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4DE87E0CA
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 19:12:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0W5bj/kiZwo+A8SD7eWqs1LwNarrRThtEiDCm/7j3ZA=; b=XoaCM2s/DRBrd3
	11gA2PKq3VceDQnsjjc149Bv2wkNQD7fy4XAOVxe65fh2u3BmAttARn7ibkwxlCzZjPqCqQv7kWgu
	BEC3364YKSTpV8gRcKCf+SPWXuG4+HI+ujYOYGIBU2pYbuVICMDg2cN9Q463YExGBzLeGkLZNH3vb
	IOateonuk8+HScSsM3mZtbvnT8JUUjihCl2CT8r2KCqCR5S8ITnu2BdTRZn0xaT37+JoVKqj1qZuO
	+4d5CFi/hHrg/Au6hSdj3RnHdh69P6H+7zkW4AMUftuS9gTu+yUCfP6PqyU+qZ2c39ecWoPr2ZZSj
	rRFyorOnziOf2Gr686dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htEcX-0000qL-Cx; Thu, 01 Aug 2019 17:12:05 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htEcQ-0000q1-Gn
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 17:12:00 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x71HApN7050476;
 Thu, 1 Aug 2019 12:10:51 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1564679451;
 bh=dD7/0WiXM2Fbz3i5RnKq7tf9bBDBOzFjHTRPalRBNpA=;
 h=From:Subject:To:CC:References:Date:In-Reply-To;
 b=oBd0jXTOv/5HQvQL5K495vveI1xDKf6GAIpKLZ4aaNqvmJoEo8n2ggyiUCIYn+dFB
 4gKPpUscvp/7CGwsGnnMT0sielgkG/7uR/LJcp7YOA+7swNDLKykShjFXUaZwSd10k
 8ed5eKO/42a6xa+nf0FBReMSm9mkomjzfbsXpPxw=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x71HApVF085880
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 1 Aug 2019 12:10:51 -0500
Received: from DLEE111.ent.ti.com (157.170.170.22) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 1 Aug
 2019 12:10:50 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 1 Aug 2019 12:10:50 -0500
Received: from [128.247.58.153] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x71HAowW070786;
 Thu, 1 Aug 2019 12:10:50 -0500
From: Suman Anna <s-anna@ti.com>
Subject: Re: [PATCH v2 4/6] irqchip/irq-pruss-intc: Add helper functions to
 configure internal mapping
To: Marc Zyngier <maz@kernel.org>, Thomas Gleixner <tglx@linutronix.de>, Jason
 Cooper <jason@lakedaemon.net>
References: <20190731224149.11153-1-s-anna@ti.com>
 <20190731224149.11153-5-s-anna@ti.com>
 <1a63eb50-7c5c-eb3d-3cbe-bd1cc59ce3fe@kernel.org>
Message-ID: <89abc27f-5d02-a8ce-df0e-b185c2a647cd@ti.com>
Date: Thu, 1 Aug 2019 12:10:50 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1a63eb50-7c5c-eb3d-3cbe-bd1cc59ce3fe@kernel.org>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_101158_644586_371D2907 
X-CRM114-Status: GOOD (  22.24  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 David Lechner <david@lechnology.com>, Tony Lindgren <tony@atomide.com>,
 Sekhar Nori <nsekhar@ti.com>, linux-kernel@vger.kernel.org,
 "Andrew F. Davis" <afd@ti.com>, Lokesh Vutla <lokeshvutla@ti.com>,
 Rob Herring <robh+dt@kernel.org>, Murali Karicheri <m-karicheri2@ti.com>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 8/1/19 3:45 AM, Marc Zyngier wrote:
> On 31/07/2019 23:41, Suman Anna wrote:
>> The PRUSS INTC receives a number of system input interrupt source events
>> and supports individual control configuration and hardware prioritization.
>> These input events can be mapped to some output interrupt lines through 2
>> levels of many-to-one mapping i.e. events to channel mapping and channels
>> to output interrupts.
>>
>> This mapping information is provided through the PRU firmware that is
>> loaded onto a PRU core/s or through the device tree node of the PRU
>> application. The mapping is configured by the PRU remoteproc driver, and
>> is setup before the PRU core is started and cleaned up after the PRU core
>> is stopped. This event mapping configuration logic programs the Channel
>> Map Registers (CMRx) and Host-Interrupt Map Registers (HMRx) only when a
>> new program is being loaded/started and the same events and interrupt
>> channels are reset to zero when stopping a PRU.
>>
>> Add two helper functions: pruss_intc_configure() & pruss_intc_unconfigure()
>> that the PRU remoteproc driver can use to configure the PRUSS INTC.
> 
> So let me see if I correctly understand this: this adds yet another
> firmware description parser, with a private interface to another
> (undisclosed?) driver, bypassing the standard irqchip configuration
> mechanism. It sounds great, doesn't it?
> 
> What I cannot really infer from this message (-ETOOMUCHJARGON) is what
> interrupts this affects:
> 
> - Interrupts from random devices to the PRUSS?
> - Interrupts from the PRUSS to the host?
> - Something else?

The interrupt sources (called system events) can be from internal PRUSS
peripherals, SoC-level peripherals or just software triggering (limited
to some events).

So, the PRUSS INTC behaves as a funnel and is both an interrupt router
and multiplexer. The INTC itself is part of the PRUSS, and all PRU
application related interrupts/events that need to trigger an interrupt
to either the PRU cores or other host processors (like DSP, ARM) have to
go through this INTC, and routed out to a limited number of output
interrupts that are then connected to different processors.

The split of interrupt handling between a PRU and its peer host
processor will be a application design choice (We can implement soft IPs
like UARTs, ADCs, I2Cs etc using PRUs). Some of the input events
themselves are multiplexed and controlled by a single MMR (outside of
INTC) that feeds different sets of events into the INTC. The MMR
configuration is outside of scope of this driver and will depend on the
application/client driver being run.

> 
> When does this happen? Under control of what? It isn't even clear why
> this is part of this irqchip driver.

The mapping configuration is per PRU application and firmware, and is
done in line with acquiring and release a PRU which is treated as an
exclusive resource. We establish the mapping for all events through this
driver including the events that are to be routed to PRUs. This is done
to save the tiny/limited Instruction RAM space that PRUs have.

We have designed this as an irqchip driver (instead of some custom SoC
driver exporting custom functions) to use standard Linux semantics/irq
API and better integrate with Linux DT, but we need some semantics for
establishing the routing at runtime depending on the PRU client driver
we are running. The exported functions will be called only by the PRU
remoteproc driver during a pru_rproc_get()/pru_rproc_put(), and are
transparent to PRU client drivers.

Please also see the discussion from v1 [1] on why we can't use an
extended number of interrupt-cells infrastructure for achieving this.

[1] https://patchwork.kernel.org/patch/11034563/


> Depending what this does, there may be ways to fit it into the standard
> interrupt configuration framework. After all, we already have standard
> interfaces to route interrupts to virtual CPUs, effectively passing full
> control of an interrupt to another entity. If you squint hard enough,
> your PRUSS can fit that description.

Yeah, I am open to suggestions if there is a better way of doing this.

regards
Suman

> 
> If that doesn't work, then we need to make the IRQ framework grok that
> kind of requirement (hence my request for clarification). But I'm
> strongly opposed to inventing a SoC-private way of configuring
> interrupts behind the kernel's back.
> 
> Thanks,
> 
> 	M.
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
