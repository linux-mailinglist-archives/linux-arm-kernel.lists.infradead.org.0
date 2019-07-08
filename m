Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7684A62586
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 18:01:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w6PPCk4GZzqRY5MtuCqya3y/ce8b8ch7k0dM/bSD8uo=; b=YWLP1/o2MYJ/gr
	aBM/EAkSzdWa2dNiHKioaCwTdpKtO7Da0MZWebxxxkic625mxsNyOVqLJiLTnH/Wti1ebs1SvN7Hb
	7Pc9ZU6/65zmCGaB7nR6OFpjQi6Q7rTQUdkpVFF7ACDdGTb6PLFksAh6DB5f9c7V0GgiNgn8tviVG
	C0DEFH7c03/Klv2w+yurRKtDkYuiaf3j+C8FV4FzLs4S9Dc+6UMpmhEqgXDppK2Tw1RceErgxhofh
	zog8BHz7+C9byVhGH5PEa+MtDzYLcv29wGEQQbGVUvd9EmVoFZaZ67JHDuVLWEIqK1LBtre3pSj7c
	s1XC8Vk1cAn8HlRq7meA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkW4g-000469-5F; Mon, 08 Jul 2019 16:01:06 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkW47-0003w0-7S
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 16:00:33 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x68FxVoL125385;
 Mon, 8 Jul 2019 10:59:31 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1562601571;
 bh=WYMtImaCxAOoIyA7/35xcxJIjFE/oBu67J2Df3jze4w=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=BwqSOM3NdjWVOMhRyEoDP0f5NuJ8YLHB9C1WL6enHdk2sGL2ro7MUrskBFCG3kosc
 nHo18CpXHmQMlCUW/Fezva/pbGSCKu1p1Jy5piFwr6vm6buVyPEVHGgRXVW9PMD+V6
 zH6+l/naVaNO1yciCFl47hQL0dMKyIftVbj4CLQc=
Received: from DFLE115.ent.ti.com (dfle115.ent.ti.com [10.64.6.36])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x68FxV3A100427
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 8 Jul 2019 10:59:31 -0500
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 8 Jul
 2019 10:59:30 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 8 Jul 2019 10:59:30 -0500
Received: from [128.247.58.153] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x68FxUrw088409;
 Mon, 8 Jul 2019 10:59:30 -0500
Subject: Re: [PATCH 1/6] dt-bindings: irqchip: Add PRUSS interrupt controller
 bindings
To: "Andrew F. Davis" <afd@ti.com>, Marc Zyngier <marc.zyngier@arm.com>, Rob
 Herring <robh+dt@kernel.org>, Thomas Gleixner <tglx@linutronix.de>, Jason
 Cooper <jason@lakedaemon.net>
References: <20190708035243.12170-1-s-anna@ti.com>
 <20190708035243.12170-2-s-anna@ti.com>
 <b67e8ce6-a291-ce4c-9972-b7fc7cd08bb4@ti.com>
From: Suman Anna <s-anna@ti.com>
Message-ID: <53868885-a78d-448a-1f2a-03a16251d028@ti.com>
Date: Mon, 8 Jul 2019 10:59:30 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <b67e8ce6-a291-ce4c-9972-b7fc7cd08bb4@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_090031_394590_8E071BA3 
X-CRM114-Status: GOOD (  28.77  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Lokesh Vutla <lokeshvutla@ti.com>, Murali Karicheri <m-karicheri2@ti.com>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrew,

On 7/8/19 9:34 AM, Andrew F. Davis wrote:
> On 7/7/19 11:52 PM, Suman Anna wrote:
>> The Programmable Real-Time Unit Subsystem (PRUSS) contains an interrupt
>> controller (INTC) that can handle various system input events and post
>> interrupts back to the device-level initiators. The INTC can support
>> upto 64 input events on most SoCs with individual control configuration
>> and hardware prioritization. These events are mapped onto 10 interrupt
>> lines through two levels of many-to-one mapping support. Different
>> interrupt lines are routed to the individual PRU cores or to the
>> host CPU or to other PRUSS instances.
>>
>> The K3 AM65x and J721E SoCs have the next generation of the PRU-ICSS IP,
>> commonly called ICSSG. The ICSSG interrupt controller on K3 SoCs provide
>> a higher number of host interrupts (20 vs 10) and can handle an increased
>> number of input events (160 vs 64) from various SoC interrupt sources.
>>
>> Add the bindings document for these interrupt controllers on all the
>> applicable SoCs. It covers the OMAP architecture SoCs - AM33xx, AM437x
>> and AM57xx; the Keystone 2 architecture based 66AK2G SoC; the Davinci
>> architecture based OMAPL138 SoCs, and the K3 architecture based AM65x
>> and J721E SoCs.
>>
>> Signed-off-by: Suman Anna <s-anna@ti.com>
>> Signed-off-by: Andrew F. Davis <afd@ti.com>
>> Signed-off-by: Roger Quadros <rogerq@ti.com>
>> ---
>> Prior version: https://patchwork.kernel.org/patch/10795771/
>>
>>  .../interrupt-controller/ti,pruss-intc.txt    | 92 +++++++++++++++++++
>>  1 file changed, 92 insertions(+)
>>  create mode 100644 Documentation/devicetree/bindings/interrupt-controller/ti,pruss-intc.txt
>>
>> diff --git a/Documentation/devicetree/bindings/interrupt-controller/ti,pruss-intc.txt b/Documentation/devicetree/bindings/interrupt-controller/ti,pruss-intc.txt
>> new file mode 100644
>> index 000000000000..020073c07a92
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/interrupt-controller/ti,pruss-intc.txt
>> @@ -0,0 +1,92 @@
>> +PRU ICSS INTC on TI SoCs
>> +========================
>> +
>> +Each PRUSS has a single interrupt controller instance that is common to both
>> +the PRU cores. Most interrupt controllers can route 64 input events which are
>> +then mapped to 10 possible output interrupts through two levels of mapping.
>> +The input events can be triggered by either the PRUs and/or various other
>> +PRUSS internal and external peripherals. The first 2 output interrupts are
>> +fed exclusively to the internal PRU cores, with the remaining 8 (2 through 9)
>> +connected to external interrupt controllers including the MPU and/or other
>> +PRUSS instances, DSPs or devices.
>> +
>> +The K3 family of SoCs can handle 160 input events that can be mapped to 20
>> +different possible output interrupts. The additional output interrupts (10
>> +through 19) are connected to new sub-modules within the ICSSG instances.
>> +
>> +This interrupt-controller node should be defined as a child node of the
>> +corresponding PRUSS node. The node should be named "interrupt-controller".
>> +Please see the overall PRUSS bindings document for additional details
>> +including a complete example,
>> +    Documentation/devicetree/bindings/soc/ti/ti,pruss.txt
>> +
>> +Required Properties:
>> +--------------------
>> +- compatible           : should be one of the following,
>> +                             "ti,pruss-intc" for OMAP-L13x/AM18x/DA850 SoCs,
>> +                                                 AM335x family of SoCs,
>> +                                                 AM437x family of SoCs,
>> +                                                 AM57xx family of SoCs
>> +                                                 66AK2G family of SoCs
>> +                             "ti,icssg-intc" for K3 AM65x & J721E family of SoCs
>> +- reg                  : base address and size for the PRUSS INTC sub-module
>> +- interrupts           : all the interrupts generated towards the main host
>> +                         processor in the SoC. The format depends on the
>> +                         interrupt specifier for the particular SoC's ARM GIC
>> +                         parent interrupt controller. A shared interrupt can
>> +                         be skipped if the desired destination and usage is by
>> +                         a different processor/device.
>> +- interrupt-names      : should use one of the following names for each valid
>> +                         interrupt connected to ARM GIC, the name should match
>> +                         the corresponding host interrupt number,
>> +                             "host0", "host1", "host2", "host3", "host4",
>> +                             "host5", "host6" or "host7"
>> +- interrupt-controller : mark this node as an interrupt controller
>> +- #interrupt-cells     : should be 1. Client users shall use the PRU System
>> +                         event number (the interrupt source that the client
>> +                         is interested in) as the value of the interrupts
>> +                         property in their node
>> +
>> +Optional Properties:
>> +--------------------
>> +The following properties are _required_ only for some SoCs. If none of the below
>> +properties are defined, it implies that all the host interrupts 2 through 9 are
>> +connected exclusively to the ARM GIC.
>> +
>> +- ti,irqs-reserved     : an array of 8-bit elements of host interrupts between
>> +                         0 and 7 (corresponding to PRUSS INTC output interrupts
>> +                         2 through 9) that are not connected to the ARM GIC.
> 
> The reason for 0-7 mapping to 2-9 is not instantly clear to someone
> reading this. If you respin this could you note that reason is
> interrupts 0 and 1 are always routed back into the PRUSS. 

Yeah, this is always going to be somewhat confusing since the driver has
to deal with all hosts from channel-mapping perspective, but only the 8
interrupts at most that reach MPU for handling interrupts. TRM has

Anyway, I have already mentioned the first 2 interrupt routing in the
first paragraph above.

Thinking more
> on that, the same is true for interrupt 7 ("host5") on AM437x/66AK2G yet
> we don't skip that in the naming.. now that we have the reserved IRQ
> mechanism above, why not leave the one-to-one interrupt to name mapping,
> but always have at least the first two marked as reserved for all the
> current devices:
> 
> ti,irqs-reserved = /bits/ 8 <0 1>;
> 
> Then any "hostx" listed as reserved need not be present in the host
> interrupts property array. To me that would solve the "managing
> interrupts not targeting the Linux running core" problem and keep the
> names consistent, e.g.:

I had actually used the interrupt-names always starting from "host2"
through "host9" (names from PRU perspective) previously, and I have
changed this to start indexing from 0 in this series to address an
internal review comment from Grygorii and to align with TRM. All the
TRMs (except for AM572x) actually use the names/signals "host_intr0",
"host_intr1".."host_intr7" etc for the interrupts going towards MPU.
Maybe I should actually rename the interrupt-names to be host_intrX
instead of hostX to avoid confusion and be exactly aligned with the TRM
names. I will file a bug against AM57xx TRM to align the names with all
other SoC TRMs.

I am using "output interrupt lines" to imply names w.r.t PRU vs "host
interrupt" to imply ARM GIC names.

regards
Suman

> 
> /* AM437x PRU-ICSS */
> pruss_intc: interrupt-controller@20000 {
> 	compatible = "ti,pruss-intc";
> 	reg = <0x20000 0x2000>;
> 	interrupts = <                       20       21       22
> 	                   23       24                25       26>;
> 	interrupt-names =                   "host2", "host3", "host4",
> 	                  "host5", "host6",          "host8", "host9";
> 	interrupt-controller;
> 	#interrupt-cells = <1>;
> 	ti,irqs-reserved = /bits/ 8 <0 1 7>;
> };
> 
> Instantly clear which are missing and which "hostx" maps to which host
> interrupt number.
> 
> Andrew
> 
>> +                           Eg: AM437x and 66AK2G SoCs do not have "host5"
>> +                               interrupt connected to MPU
>> +- ti,irqs-shared       : an array of 8-bit elements of host interrupts between
>> +                         0 and 7 (corresponding to PRUSS INTC output interrupts
>> +                         2 through 9) that are also connected to other devices
>> +                         or processors in the SoC.
>> +                           Eg: AM65x and J721E SoCs have "host5", "host6" and
>> +                               "host7" interrupts connected to MPU, and other
>> +                               ICSSG instances
>> +
>> +
>> +Example:
>> +--------
>> +
>> +1.	/* AM33xx PRU-ICSS */
>> +	pruss: pruss@0 {
>> +		compatible = "ti,am3356-pruss";
>> +		reg = <0x0 0x80000>;
>> +		#address-cells = <1>;
>> +		#size-cells = <1>;
>> +		...
>> +
>> +		pruss_intc: interrupt-controller@20000 {
>> +			compatible = "ti,pruss-intc";
>> +			reg = <0x20000 0x2000>;
>> +			interrupts = <20 21 22 23 24 25 26 27>;
>> +			interrupt-names = "host0", "host1", "host2",
>> +					  "host3", "host4", "host5",
>> +					  "host6", "host7";
>> +			interrupt-controller;
>> +			#interrupt-cells = <1>;
>> +			ti,irqs-shared = /bits/ 8 <0 6 7>;
>> +		};
>> +	};
>>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
