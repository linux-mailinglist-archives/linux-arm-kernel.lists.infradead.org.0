Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F7D5125788
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 00:13:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DN0PG7gzOUdYpyJ1NQbvuAmH0Ubjc7rYxD125NsvDMo=; b=pefU5l6htrRwsiaDSTmbhg8to
	clWNYGMtiVQs8LUm1pAvSN1GAzd/Y7gd7y+1QnsdW4ci5Z4xq9Oh6ResQYuk3GK2xv0t4SyjUdPDp
	E+HZJ30CRp9QHVVjALt/vgsxXd/ejMn7A+UVDhWskXzUV5tQJkyvCNjxKTD/QZGW6wEnYQUDPAmaE
	cNdJnuC5loUOEaZWTPmevcCpsdWWVJAA+44NIKfNW9pSuEsNIWdLa0+OwWmPj2wNJUrxKcs15GMvU
	/TE3soNaZ/nmyAjqSN/itl3qnJQa/BTP+xRPltRnCgez3rtyJcfrraIJMqQNMuRKuvi3Flj+UQPy+
	EJUHLfyxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihiV4-0004up-Ny; Wed, 18 Dec 2019 23:13:02 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihiUq-0004uF-UQ
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 23:12:51 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Dec 2019 15:12:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,330,1571727600"; d="scan'208";a="365887756"
Received: from yoojae-mobl1.amr.corp.intel.com (HELO [10.7.153.143])
 ([10.7.153.143])
 by orsmga004.jf.intel.com with ESMTP; 18 Dec 2019 15:12:47 -0800
Subject: Re: [PATCH v11 01/14] dt-bindings: Add PECI subsystem document
To: Rob Herring <robh@kernel.org>
References: <20191211194624.2872-1-jae.hyun.yoo@linux.intel.com>
 <20191211194624.2872-2-jae.hyun.yoo@linux.intel.com>
 <20191218025240.GA6601@bogus>
From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
Message-ID: <f6ff2cc5-a906-88ac-2b47-351a8a0770bf@linux.intel.com>
Date: Wed, 18 Dec 2019 15:12:47 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191218025240.GA6601@bogus>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_151249_033953_786DA3BD 
X-CRM114-Status: GOOD (  25.36  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.20 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>, Randy Dunlap <rdunlap@infradead.org>,
 Tomer Maimon <tmaimon77@gmail.com>, devicetree@vger.kernel.org,
 Frederic Barrat <fbarrat@linux.vnet.ibm.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Lee Jones <lee.jones@linaro.org>, Eric Sandeen <sandeen@redhat.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Jonathan Corbet <corbet@lwn.net>, openbmc@lists.ozlabs.org,
 linux-doc@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Joel Stanley <joel@jms.id.au>, "Bryant G . Ly" <bryantly@linux.vnet.ibm.com>,
 Uwe Kleine-Konig <u.kleine-koenig@pengutronix.de>,
 David Kershner <david.kershner@unisys.com>, Guenter Roeck <linux@roeck-us.net>,
 Wu Hao <hao.wu@intel.com>, linux-hwmon@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>, Arnd Bergmann <arnd@arndb.de>,
 Philippe Ombredanne <pombredanne@nexb.com>, Johan Hovold <johan@kernel.org>,
 Tomohiro Kusumi <kusumi.tomohiro@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Sagar Dharia <sdharia@codeaurora.org>,
 linux-arm-kernel@lists.infradead.org, Juergen Gross <jgross@suse.com>,
 Cyrille Pitchen <cyrille.pitchen@wedev4u.fr>, Andrew Jeffery <andrew@aj.id.au>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Darrick J . Wong" <darrick.wong@oracle.com>,
 Stephen Boyd <sboyd@codeaurora.org>, Vinod Koul <vkoul@kernel.org>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

On 12/17/2019 6:52 PM, Rob Herring wrote:
> On Wed, Dec 11, 2019 at 11:46:11AM -0800, Jae Hyun Yoo wrote:
>> This commit adds PECI subsystem document.
>>
>> Cc: Rob Herring <robh+dt@kernel.org>
>> Cc: Mark Rutland <mark.rutland@arm.com>
>> Cc: Andrew Jeffery <andrew@aj.id.au>
>> Cc: Joel Stanley <joel@jms.id.au>
>> Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
>> ---
>> Changes since v10:
>> - Changed documents format to DT schema format so I dropped all review tags.
>>    Please review it again.
>>
>>   .../devicetree/bindings/peci/peci-bus.yaml    | 129 ++++++++++++++++++
>>   .../devicetree/bindings/peci/peci-client.yaml |  54 ++++++++
>>   2 files changed, 183 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/peci/peci-bus.yaml
>>   create mode 100644 Documentation/devicetree/bindings/peci/peci-client.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/peci/peci-bus.yaml b/Documentation/devicetree/bindings/peci/peci-bus.yaml
>> new file mode 100644
>> index 000000000000..b085e67089cf
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/peci/peci-bus.yaml
>> @@ -0,0 +1,129 @@
>> +# SPDX-License-Identifier: GPL-2.0
> 
> Dual license new bindings please:
> 
> (GPL-2.0-only OR BSD-2-Clause)

I see. I'll replace that with it for all new bindings in this patch set.

>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/peci/peci-bus.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Generic Device Tree Bindings for PECI bus
>> +
>> +maintainers:
>> +  - Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
>> +
>> +description: |
>> +  PECI (Platform Environment Control Interface) is a one-wire bus interface that
>> +  provides a communication channel from Intel processors and chipset components
>> +  to external monitoring or control devices. PECI is designed to support the
>> +  following sideband functions:
>> +
>> +  * Processor and DRAM thermal management
>> +    - Processor fan speed control is managed by comparing Digital Thermal
>> +      Sensor (DTS) thermal readings acquired via PECI against the
>> +      processor-specific fan speed control reference point, or TCONTROL. Both
>> +      TCONTROL and DTS thermal readings are accessible via the processor PECI
>> +      client. These variables are referenced to a common temperature, the TCC
>> +      activation point, and are both defined as negative offsets from that
>> +      reference.
>> +    - PECI based access to the processor package configuration space provides
>> +      a means for Baseboard Management Controllers (BMC) or other platform
>> +      management devices to actively manage the processor and memory power
>> +      and thermal features.
>> +
>> +  * Platform Manageability
>> +    - Platform manageability functions including thermal, power, and error
>> +      monitoring. Note that platform 'power' management includes monitoring
>> +      and control for both the processor and DRAM subsystem to assist with
>> +      data center power limiting.
>> +    - PECI allows read access to certain error registers in the processor MSR
>> +      space and status monitoring registers in the PCI configuration space
>> +      within the processor and downstream devices.
>> +    - PECI permits writes to certain registers in the processor PCI
>> +      configuration space.
>> +
>> +  * Processor Interface Tuning and Diagnostics
>> +    - Processor interface tuning and diagnostics capabilities
>> +      (Intel Interconnect BIST). The processors Intel Interconnect Built In
>> +      Self Test (Intel IBIST) allows for infield diagnostic capabilities in
>> +      the Intel UPI and memory controller interfaces. PECI provides a port to
>> +      execute these diagnostics via its PCI Configuration read and write
>> +      capabilities.
>> +
>> +  * Failure Analysis
>> +    - Output the state of the processor after a failure for analysis via
>> +      Crashdump.
>> +
>> +  PECI uses a single wire for self-clocking and data transfer. The bus
>> +  requires no additional control lines. The physical layer is a self-clocked
>> +  one-wire bus that begins each bit with a driven, rising edge from an idle
>> +  level near zero volts. The duration of the signal driven high depends on
>> +  whether the bit value is a logic '0' or logic '1'. PECI also includes
>> +  variable data transfer rate established with every message. In this way, it
>> +  is highly flexible even though underlying logic is simple.
>> +
>> +  The interface design was optimized for interfacing between an Intel
>> +  processor and chipset components in both single processor and multiple
>> +  processor environments. The single wire interface provides low board
>> +  routing overhead for the multiple load connections in the congested routing
>> +  area near the processor and chipset components. Bus speed, error checking,
>> +  and low protocol overhead provides adequate link bandwidth and reliability
>> +  to transfer critical device operating conditions and configuration
>> +  information.
>> +
>> +  PECI subsystem provides single or multiple bus nodes support so each bus can
>> +  have one adapter node and multiple device specific client nodes that can be
>> +  attached to the PECI bus so each processor client's features can be supported
>> +  by the client node through an adapter connection in the bus.
>> +
>> +properties:
>> +  compatible:
>> +    const: simple-bus
> 
> This is wrong. We already have a schema for this.
> 
> What's needed is a peci-bus schema that defines the bus node structure
> and then schemas for the specific controllers and child devices. See
> i2c-controller.yaml for an example.

Oh, I see. I'll fix and submit it as '/schema/peci-bus.yaml' into
dt-schema tree.

>> +
>> +  "#address-cells":
>> +    # Required to define bus device control resource address.
>> +    const: 1
>> +
>> +  "#size-cells":
>> +    # Required to define bus device control resource address.
>> +    const: 1
>> +
>> +  ranges: true
>> +
>> +required:
>> +  - compatible
>> +  - "#address-cells"
>> +  - "#size-cells"
>> +  - ranges
>> +
>> +examples:
>> +  - |
>> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
>> +    #include <dt-bindings/clock/ast2600-clock.h>
>> +    peci: bus@1e78b000 {
>> +        compatible = "simple-bus";
>> +        #address-cells = <1>;
>> +        #size-cells = <1>;
>> +        ranges = <0x0 0x1e78b000 0x200>;
>> +
>> +        peci0: peci-bus@0 {
>> +            compatible = "aspeed,ast2600-peci";
>> +            reg = <0x0 0x100>;
>> +            #address-cells = <1>;
>> +            #size-cells = <0>;
>> +            interrupts = <GIC_SPI 38 IRQ_TYPE_LEVEL_HIGH>;
>> +            clocks = <&syscon ASPEED_CLK_GATE_REF0CLK>;
>> +            resets = <&syscon ASPEED_RESET_PECI>;
>> +            clock-frequency = <24000000>;
>> +        };
>> +
>> +        // Just an example. ast2600 doesn't have a second PECI module actually.
>> +        peci1: peci-bus@100 {
>> +            compatible = "aspeed,ast2600-peci";
>> +            reg = <0x100 0x100>;
>> +            #address-cells = <1>;
>> +            #size-cells = <0>;
>> +            interrupts = <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>;
>> +            clocks = <&syscon ASPEED_CLK_GATE_REF0CLK>;
>> +            resets = <&syscon ASPEED_RESET_PECI>;
>> +            clock-frequency = <24000000>;
>> +        };
>> +    };
>> +...
>> diff --git a/Documentation/devicetree/bindings/peci/peci-client.yaml b/Documentation/devicetree/bindings/peci/peci-client.yaml
>> new file mode 100644
>> index 000000000000..fc7c4110e929
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/peci/peci-client.yaml
>> @@ -0,0 +1,54 @@
>> +# SPDX-License-Identifier: GPL-2.0
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/peci/peci-client.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Generic Device Tree Bindings for PECI clients
>> +
>> +maintainers:
>> +  - Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
>> +
>> +properties:
>> +  compatible:
>> +    enum:
>> +      - intel,peci-client
>> +
>> +  reg:
>> +    description: |
>> +      Address of a client CPU. According to the PECI specification, client
>> +      addresses start from 0x30.
> 
> 0x30 being the min should be a constraint in the bus schema.

Right. Will add that.

Thanks a lot for your review!

-Jae

>> +    maxItems: 1
>> +
>> +examples:
>> +  - |
>> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
>> +    #include <dt-bindings/clock/ast2600-clock.h>
>> +    peci: bus@1e78b000 {
>> +        compatible = "simple-bus";
>> +        #address-cells = <1>;
>> +        #size-cells = <1>;
>> +        ranges = <0x0 0x1e78b000 0x60>;
>> +
>> +        peci0: peci-bus@0 {
>> +            compatible = "aspeed,ast2600-peci";
>> +            reg = <0x0 0x100>;
>> +            #address-cells = <1>;
>> +            #size-cells = <0>;
>> +            interrupts = <GIC_SPI 38 IRQ_TYPE_LEVEL_HIGH>;
>> +            clocks = <&syscon ASPEED_CLK_GATE_REF0CLK>;
>> +            resets = <&syscon ASPEED_RESET_PECI>;
>> +            clock-frequency = <24000000>;
>> +
>> +            peci-client@30 {
>> +                compatible = "intel,peci-client";
>> +                reg = <0x30>;
>> +            };
>> +
>> +            peci-client@31 {
>> +                compatible = "intel,peci-client";
>> +                reg = <0x31>;
>> +            };
>> +        };
>> +    };
>> +...
>> -- 
>> 2.17.1
>>
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
