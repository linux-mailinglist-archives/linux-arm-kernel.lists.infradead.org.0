Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D8847D7FC
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 10:45:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wNsiB0O2YZu6tMK11VcL78WO6S8bNsYuOnm7lAxTQ5I=; b=Q+ytqStLbgrpRX
	eNm30QQ82w5yrnOGQFfXIoy205WlcIM9VMlQZ691L2U1LwU+qFPAFeJNRYnam34UlfcOL9J2m0c4z
	HPkUh+55N9j3b8GRhvwJL2zKn19torrzDfm4YlKfTj8TnUfrBV7WX57xVqSQAqHSHTU/RQUSz9AjL
	SIVaW3HsWiMddwfdK0Z2A+/K/EvwEgigYYxWsobHKG7XwcWDJavhfQ/l/6ZREM8dmiGExemJ84em/
	Or2fX5iW3R1BNlaKlU9D+4jo8w9aVN746MvJehPWzKrVEZedXrCxr9M9njjs7maNPk7I2SmE7sbgj
	P8Xg7Bvp1xZ49hirtqQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht6if-0007UR-L3; Thu, 01 Aug 2019 08:45:53 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1ht6ia-0007U4-3z
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 08:45:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8F1B3337;
 Thu,  1 Aug 2019 01:45:47 -0700 (PDT)
Received: from [10.1.197.61] (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 9012E3F694; Thu,  1 Aug 2019 01:45:45 -0700 (PDT)
Subject: Re: [PATCH v2 4/6] irqchip/irq-pruss-intc: Add helper functions to
 configure internal mapping
To: Suman Anna <s-anna@ti.com>, Thomas Gleixner <tglx@linutronix.de>,
 Jason Cooper <jason@lakedaemon.net>
References: <20190731224149.11153-1-s-anna@ti.com>
 <20190731224149.11153-5-s-anna@ti.com>
From: Marc Zyngier <maz@kernel.org>
Organization: Approximate
Message-ID: <1a63eb50-7c5c-eb3d-3cbe-bd1cc59ce3fe@kernel.org>
Date: Thu, 1 Aug 2019 09:45:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190731224149.11153-5-s-anna@ti.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_014548_203879_B3EE4FA2 
X-CRM114-Status: GOOD (  17.59  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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

On 31/07/2019 23:41, Suman Anna wrote:
> The PRUSS INTC receives a number of system input interrupt source events
> and supports individual control configuration and hardware prioritization.
> These input events can be mapped to some output interrupt lines through 2
> levels of many-to-one mapping i.e. events to channel mapping and channels
> to output interrupts.
> 
> This mapping information is provided through the PRU firmware that is
> loaded onto a PRU core/s or through the device tree node of the PRU
> application. The mapping is configured by the PRU remoteproc driver, and
> is setup before the PRU core is started and cleaned up after the PRU core
> is stopped. This event mapping configuration logic programs the Channel
> Map Registers (CMRx) and Host-Interrupt Map Registers (HMRx) only when a
> new program is being loaded/started and the same events and interrupt
> channels are reset to zero when stopping a PRU.
> 
> Add two helper functions: pruss_intc_configure() & pruss_intc_unconfigure()
> that the PRU remoteproc driver can use to configure the PRUSS INTC.

So let me see if I correctly understand this: this adds yet another
firmware description parser, with a private interface to another
(undisclosed?) driver, bypassing the standard irqchip configuration
mechanism. It sounds great, doesn't it?

What I cannot really infer from this message (-ETOOMUCHJARGON) is what
interrupts this affects:

- Interrupts from random devices to the PRUSS?
- Interrupts from the PRUSS to the host?
- Something else?

When does this happen? Under control of what? It isn't even clear why
this is part of this irqchip driver.

Depending what this does, there may be ways to fit it into the standard
interrupt configuration framework. After all, we already have standard
interfaces to route interrupts to virtual CPUs, effectively passing full
control of an interrupt to another entity. If you squint hard enough,
your PRUSS can fit that description.

If that doesn't work, then we need to make the IRQ framework grok that
kind of requirement (hence my request for clarification). But I'm
strongly opposed to inventing a SoC-private way of configuring
interrupts behind the kernel's back.

Thanks,

	M.
-- 
Jazz is not dead, it just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
