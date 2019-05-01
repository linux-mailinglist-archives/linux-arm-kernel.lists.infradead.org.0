Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6CEC1084D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 15:24:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fvwnlTiYuO/IUgzeAsIozCcyk2UsK4lFfLu/4NhK0uA=; b=UcrezN2JfRvX4r
	iIePsltE2CbAyjXUvjPQo3aqTuAOItdP0rRmVFCuV+RCns33zaxid1ktWCi21IDZJXg364isLgOqu
	kwGuP9MfMRdng3TbKTdBsSPeQQeYJ1NZHjqVzmrmTG+1Bwf1nWKVZpEW8qqW5hsqtkXDGZF4Srujo
	+J8jCmGkaHgvCbovxEv3FTrvkDnhES6NOVyM/htETnaWUIpG3JbiZ9CsbQ5TmJ6jxNFHIFdu7w/CG
	ToMFzZtFxvs3+Ez5edPksFIhxpWx8PcfFuOkRF/h/20ubQn7/9YtUZV8sfba2L6XIjSg5TYZn1+6E
	Cjz+pREX9YMuL4D5ZDmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLpE2-0007Go-So; Wed, 01 May 2019 13:24:42 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLpDv-0007GN-9O
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 13:24:37 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x41DODn5122797;
 Wed, 1 May 2019 08:24:13 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1556717053;
 bh=DoqH1vNO7AsfyS0xG3FhuLdkRzV3gYfFQeg3zGj35MQ=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=yVPXkUyF2A7NVafOIMQ3/1Ve8xiuqT+HH3fE4wnx2KQJ8JFdopE89cATxQh7lgml1
 jAM15t5nMES/RiuqCPUaTHsMnM6CUm1ks70bgN+ZB2H6mBpAOPqLjmU6Nl+aQYwysK
 oa8viAgCcpc6q/iNS19xz9J3CxfuyfeYB540n5s0=
Received: from DLEE112.ent.ti.com (dlee112.ent.ti.com [157.170.170.23])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x41DODCt118774
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 1 May 2019 08:24:13 -0500
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 1 May
 2019 08:24:13 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 1 May 2019 08:24:13 -0500
Received: from [172.24.190.117] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x41DO7Wa022405;
 Wed, 1 May 2019 08:24:09 -0500
Subject: Re: [PATCH v8 00/14] Add support for TISCI Interrupt controller
 drivers
To: Marc Zyngier <marc.zyngier@arm.com>, Santosh Shilimkar
 <ssantosh@kernel.org>, Rob Herring <robh+dt@kernel.org>, Nishanth Menon
 <nm@ti.com>, <tglx@linutronix.de>, <jason@lakedaemon.net>
References: <20190430101230.21794-1-lokeshvutla@ti.com>
 <30f5c877-a4dc-8ad9-0ad0-c172a60dc853@arm.com>
From: Lokesh Vutla <lokeshvutla@ti.com>
Message-ID: <7edd8582-ce51-60a0-24e1-c45fe6725705@ti.com>
Date: Wed, 1 May 2019 18:53:41 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <30f5c877-a4dc-8ad9-0ad0-c172a60dc853@arm.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_062435_455390_23ADF569 
X-CRM114-Status: GOOD (  21.04  )
X-Spam-Score: -2.6 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Device Tree Mailing List <devicetree@vger.kernel.org>,
 Tony Lindgren <tony@atomide.com>, linus.walleij@linaro.org,
 Sekhar Nori <nsekhar@ti.com>, linux-kernel@vger.kernel.org,
 Tero Kristo <t-kristo@ti.com>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 01/05/19 5:28 PM, Marc Zyngier wrote:
> On 30/04/2019 11:12, Lokesh Vutla wrote:
>> TI AM65x SoC based on K3 architecture introduced support for Events
>> which are message based interrupts with minimal latency. These events
>> are not compatible with regular interrupts and are valid only through
>> an event transport lane. An Interrupt Aggregator(INTA) is introduced
>> to convert these events to interrupts. INTA can also group 64 events
>> into a single interrupt. Now the SoC has many peripherals and a large
>> number of event sources (time sync or DMA), the use of events is
>> completely dependent on a user's specific application, which drives a
>> need for maximum flexibility in which event sources are used in the
>> system. It is also completely up to software control as to how the
>> events are serviced.
>>
>> Because of the huge flexibility there are certain standard peripherals
>> (like GPIO etc)where all interrupts cannot be directly corrected to host
>> interrupt controller. For this purpose, Interrupt Router(INTR) is
>> introduced in the SoC. INTR just does a classic interrupt redirection.
>>
>> So the SoC has 3 types of interrupt controllers:
>> - GIC500
>> - Interrupt Router
>> - Interrupt Aggregator
>>
>> Below is a diagrammatic view of how SoC integration of these interrupt
>> controllers:(https://pastebin.ubuntu.com/p/9ngV3jdGj2/)
>>
>> Device Index-x               Device Index-y
>>            |                         |
>>            |                         |
>>                       ....
>>             \                       /
>>              \                     /
>>               \  (global events)  /
>>           +---------------------------+   +---------+
>>           |                           |   |         |
>>           |             INTA          |   |  GPIO   |
>>           |                           |   |         |
>>           +---------------------------+   +---------+
>>                          |   (vint)            |
>>                          |                     |
>>                         \|/                    |
>>           +---------------------------+        |
>>           |                           |<-------+
>>           |           INTR            |
>>           |                           |
>>           +---------------------------+
>>                          |
>>                          |
>>                         \|/ (gic irq)
>>           +---------------------------+
>>           |                           |
>>           |             GIC           |
>>           |                           |
>>           +---------------------------+
>>
>> While at it, TISCI abstracts the handling of all above IRQ routes where
>> interrupt sources are not directly connected to host interrupt controller.
>> That would be configuration of Interrupt Aggregator and Interrupt Router.
>>
>> This series adds support for:
>> - TISCI commands needed for IRQ configuration
>> - Interrupt Router(INTR) driver.
>> - Interrupt Aggregator(INTA) driver.
>> - Interrupt Aggregator MSI bus layer.
>>
>> Marc,
>> 	As discussed offline, the firmware changes are going to come within
>> 	a day or so. These changes are tested against local binary which is
>> 	bound to release.
>>
>> Boot Log: https://pastebin.ubuntu.com/p/YwprMKXdg4/
>>
>> Changes since v7:
>> - Rebased on top of latest master.
>> - Each patch has respective changes mentioned.
>>
>> Grygorii Strashko (1):
>>   firmware: ti_sci: Add support to get TISCI handle using of_phandle
>>
>> Lokesh Vutla (12):
>>   firmware: ti_sci: Add support for RM core ops
>>   firmware: ti_sci: Add support for IRQ management
>>   firmware: ti_sci: Add helper apis to manage resources
>>   genirq: Introduce irq_chip_{request,release}_resource_parent() apis
>>   gpio: thunderx: Use the default parent apis for
>>     {request,release}_resources
>>   dt-bindings: irqchip: Introduce TISCI Interrupt router bindings
>>   irqchip: ti-sci-intr: Add support for Interrupt Router driver
>>   dt-bindings: irqchip: Introduce TISCI Interrupt Aggregator bindings
>>   irqchip: ti-sci-inta: Add support for Interrupt Aggregator driver
>>   soc: ti: Add MSI domain bus support for Interrupt Aggregator
>>   irqchip: ti-sci-inta: Add msi domain support
>>   arm64: arch_k3: Enable interrupt controller drivers
>>
>> Peter Ujfalusi (1):
>>   firmware: ti_sci: Add RM mapping table for am654
>>
>>  .../bindings/arm/keystone/ti,sci.txt          |   3 +-
>>  .../interrupt-controller/ti,sci-inta.txt      |  66 ++
>>  .../interrupt-controller/ti,sci-intr.txt      |  82 +++
>>  MAINTAINERS                                   |   6 +
>>  arch/arm64/Kconfig.platforms                  |   5 +
>>  drivers/firmware/ti_sci.c                     | 651 ++++++++++++++++++
>>  drivers/firmware/ti_sci.h                     | 102 +++
>>  drivers/gpio/gpio-thunderx.c                  |  16 +-
>>  drivers/irqchip/Kconfig                       |  23 +
>>  drivers/irqchip/Makefile                      |   2 +
>>  drivers/irqchip/irq-ti-sci-inta.c             | 615 +++++++++++++++++
>>  drivers/irqchip/irq-ti-sci-intr.c             | 275 ++++++++
>>  drivers/soc/ti/Kconfig                        |   6 +
>>  drivers/soc/ti/Makefile                       |   1 +
>>  drivers/soc/ti/ti_sci_inta_msi.c              | 146 ++++
>>  include/linux/irq.h                           |   2 +
>>  include/linux/irqdomain.h                     |   1 +
>>  include/linux/msi.h                           |  10 +
>>  include/linux/soc/ti/ti_sci_inta_msi.h        |  23 +
>>  include/linux/soc/ti/ti_sci_protocol.h        | 124 ++++
>>  kernel/irq/chip.c                             |  27 +
>>  21 files changed, 2173 insertions(+), 13 deletions(-)
>>  create mode 100644 Documentation/devicetree/bindings/interrupt-controller/ti,sci-inta.txt
>>  create mode 100644 Documentation/devicetree/bindings/interrupt-controller/ti,sci-intr.txt
>>  create mode 100644 drivers/irqchip/irq-ti-sci-inta.c
>>  create mode 100644 drivers/irqchip/irq-ti-sci-intr.c
>>  create mode 100644 drivers/soc/ti/ti_sci_inta_msi.c
>>  create mode 100644 include/linux/soc/ti/ti_sci_inta_msi.h
> 
> Lokesh,
> 
> Thanks for having respun this quickly.
> 
> I've applied the first 13 patches to irqchip-next (after tidying up some
> of the commit messages). I've left the last patch for armsoc to take,
> unless you guys insist on me taking it.

I prefer if everything goes as a single bundle, unless arm-soc maintainers
object. Want to start posting DT nodes.

> 
> If nothing horrible appears in -next tomorrow, I'll send the 5.2 PR with
> this series.

Awesome.

> 
> Hopefully we won't see more of this madness any time soon... :-/

IRQCHIP is one part of it. Fun is yet to start with DMA.

Thanks and regards,
Lokesh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
