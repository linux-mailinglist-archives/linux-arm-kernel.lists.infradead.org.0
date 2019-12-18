Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3ABA123D7E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 03:52:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2fQkMaUcNj034bLkvORsCSbNwz8cLj+LHRWaqwunWAY=; b=jmHF2AqYZ+RCVI
	5w+vUtYWEFPL20GTSOjMvk/Bw/tVfrLXyxN+LuwyP1KCD+DznFbVR9qt+YKbvaHtUiecoSM/jc7J2
	Lpnf6quMsTrlqRXK/lTBpB++e3/vrgeygQ+nQngFPnBoKyCJ1OLlr5WVFwkf1U0wCS6XNaegJGKzy
	JggXQ6mp2DQsleCL0ybGtS66X5MrxizLnym10MwTxMzkizzvyjpd9tjsNn/W0BgEkwhUxXbsLCMLL
	dtRUYR8K6ccggudXjDgiESy3/Ph6c3MCBY0WpNNASeSfRvovUVpswVl6ATnPRiPtjtBM5oWID3iNn
	ggb5rT1n4lLohsMAY0Mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihPSK-000464-Ru; Wed, 18 Dec 2019 02:52:56 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihPS7-00045O-G8
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 02:52:45 +0000
Received: by mail-ot1-f65.google.com with SMTP id f71so513941otf.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Dec 2019 18:52:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=sakYv7BHYRv9Zt+Z2j2doXtLovgAGwFnnV7hzjdze40=;
 b=I/nhJuzW4nWW8x0Vprgg+6qqKTZZyKUIUmnzZ/zvZ2RhY2IaYJGrSIjjx/FVio2Btf
 cW4Ui5XnAfhHk2jFfOmKpPkHDkrKb84awaFvTTNcdmWp6iCWz6Koh2vfO4PSiJrL7SCA
 82TAKYSPSeclMLlvU8LqSEtW5bpApERiXiV2qpo1xfhWqNtjN28fnvHHYRwE80sJ2Kw7
 /l1eomyghBbcHecjcsdvqUgliQqzJTBlq9K30+BdKksJpXyOJ0KTO0OgcM1PNcnW3eZw
 MtmbrQ2wI1ErKzlT02jnyXg5F4OjJilNV3WeSdHhIVIAva2ZzCOKpA8cb+KDJDHWsHfk
 tyGQ==
X-Gm-Message-State: APjAAAWMGFZx5UJ7M3LSufCNyyQi1BLmUb3yuAG5t1r/MDfz8LsBdI0O
 eUoKICObEzrgx5lXP3hJD7T1nN8=
X-Google-Smtp-Source: APXvYqxfxhhIzHwdJZry8Ru7K7JGWxVQ5hecBIvtj7j8AmbBTKCq3Uq+fMuOL/X20DJuaPkTBziq6w==
X-Received: by 2002:a9d:6c06:: with SMTP id f6mr19195otq.318.1576637561893;
 Tue, 17 Dec 2019 18:52:41 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id s83sm327757oif.33.2019.12.17.18.52.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Dec 2019 18:52:41 -0800 (PST)
Date: Tue, 17 Dec 2019 20:52:40 -0600
From: Rob Herring <robh@kernel.org>
To: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
Subject: Re: [PATCH v11 01/14] dt-bindings: Add PECI subsystem document
Message-ID: <20191218025240.GA6601@bogus>
References: <20191211194624.2872-1-jae.hyun.yoo@linux.intel.com>
 <20191211194624.2872-2-jae.hyun.yoo@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191211194624.2872-2-jae.hyun.yoo@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_185243_544236_C308D5EC 
X-CRM114-Status: GOOD (  27.68  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 11, 2019 at 11:46:11AM -0800, Jae Hyun Yoo wrote:
> This commit adds PECI subsystem document.
> 
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Andrew Jeffery <andrew@aj.id.au>
> Cc: Joel Stanley <joel@jms.id.au>
> Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
> ---
> Changes since v10:
> - Changed documents format to DT schema format so I dropped all review tags.
>   Please review it again.
> 
>  .../devicetree/bindings/peci/peci-bus.yaml    | 129 ++++++++++++++++++
>  .../devicetree/bindings/peci/peci-client.yaml |  54 ++++++++
>  2 files changed, 183 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/peci/peci-bus.yaml
>  create mode 100644 Documentation/devicetree/bindings/peci/peci-client.yaml
> 
> diff --git a/Documentation/devicetree/bindings/peci/peci-bus.yaml b/Documentation/devicetree/bindings/peci/peci-bus.yaml
> new file mode 100644
> index 000000000000..b085e67089cf
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/peci/peci-bus.yaml
> @@ -0,0 +1,129 @@
> +# SPDX-License-Identifier: GPL-2.0

Dual license new bindings please:

(GPL-2.0-only OR BSD-2-Clause)

> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/peci/peci-bus.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Generic Device Tree Bindings for PECI bus
> +
> +maintainers:
> +  - Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
> +
> +description: |
> +  PECI (Platform Environment Control Interface) is a one-wire bus interface that
> +  provides a communication channel from Intel processors and chipset components
> +  to external monitoring or control devices. PECI is designed to support the
> +  following sideband functions:
> +
> +  * Processor and DRAM thermal management
> +    - Processor fan speed control is managed by comparing Digital Thermal
> +      Sensor (DTS) thermal readings acquired via PECI against the
> +      processor-specific fan speed control reference point, or TCONTROL. Both
> +      TCONTROL and DTS thermal readings are accessible via the processor PECI
> +      client. These variables are referenced to a common temperature, the TCC
> +      activation point, and are both defined as negative offsets from that
> +      reference.
> +    - PECI based access to the processor package configuration space provides
> +      a means for Baseboard Management Controllers (BMC) or other platform
> +      management devices to actively manage the processor and memory power
> +      and thermal features.
> +
> +  * Platform Manageability
> +    - Platform manageability functions including thermal, power, and error
> +      monitoring. Note that platform 'power' management includes monitoring
> +      and control for both the processor and DRAM subsystem to assist with
> +      data center power limiting.
> +    - PECI allows read access to certain error registers in the processor MSR
> +      space and status monitoring registers in the PCI configuration space
> +      within the processor and downstream devices.
> +    - PECI permits writes to certain registers in the processor PCI
> +      configuration space.
> +
> +  * Processor Interface Tuning and Diagnostics
> +    - Processor interface tuning and diagnostics capabilities
> +      (Intel Interconnect BIST). The processors Intel Interconnect Built In
> +      Self Test (Intel IBIST) allows for infield diagnostic capabilities in
> +      the Intel UPI and memory controller interfaces. PECI provides a port to
> +      execute these diagnostics via its PCI Configuration read and write
> +      capabilities.
> +
> +  * Failure Analysis
> +    - Output the state of the processor after a failure for analysis via
> +      Crashdump.
> +
> +  PECI uses a single wire for self-clocking and data transfer. The bus
> +  requires no additional control lines. The physical layer is a self-clocked
> +  one-wire bus that begins each bit with a driven, rising edge from an idle
> +  level near zero volts. The duration of the signal driven high depends on
> +  whether the bit value is a logic '0' or logic '1'. PECI also includes
> +  variable data transfer rate established with every message. In this way, it
> +  is highly flexible even though underlying logic is simple.
> +
> +  The interface design was optimized for interfacing between an Intel
> +  processor and chipset components in both single processor and multiple
> +  processor environments. The single wire interface provides low board
> +  routing overhead for the multiple load connections in the congested routing
> +  area near the processor and chipset components. Bus speed, error checking,
> +  and low protocol overhead provides adequate link bandwidth and reliability
> +  to transfer critical device operating conditions and configuration
> +  information.
> +
> +  PECI subsystem provides single or multiple bus nodes support so each bus can
> +  have one adapter node and multiple device specific client nodes that can be
> +  attached to the PECI bus so each processor client's features can be supported
> +  by the client node through an adapter connection in the bus.
> +
> +properties:
> +  compatible:
> +    const: simple-bus

This is wrong. We already have a schema for this.

What's needed is a peci-bus schema that defines the bus node structure 
and then schemas for the specific controllers and child devices. See 
i2c-controller.yaml for an example.

> +
> +  "#address-cells":
> +    # Required to define bus device control resource address.
> +    const: 1
> +
> +  "#size-cells":
> +    # Required to define bus device control resource address.
> +    const: 1
> +
> +  ranges: true
> +
> +required:
> +  - compatible
> +  - "#address-cells"
> +  - "#size-cells"
> +  - ranges
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/clock/ast2600-clock.h>
> +    peci: bus@1e78b000 {
> +        compatible = "simple-bus";
> +        #address-cells = <1>;
> +        #size-cells = <1>;
> +        ranges = <0x0 0x1e78b000 0x200>;
> +
> +        peci0: peci-bus@0 {
> +            compatible = "aspeed,ast2600-peci";
> +            reg = <0x0 0x100>;
> +            #address-cells = <1>;
> +            #size-cells = <0>;
> +            interrupts = <GIC_SPI 38 IRQ_TYPE_LEVEL_HIGH>;
> +            clocks = <&syscon ASPEED_CLK_GATE_REF0CLK>;
> +            resets = <&syscon ASPEED_RESET_PECI>;
> +            clock-frequency = <24000000>;
> +        };
> +
> +        // Just an example. ast2600 doesn't have a second PECI module actually.
> +        peci1: peci-bus@100 {
> +            compatible = "aspeed,ast2600-peci";
> +            reg = <0x100 0x100>;
> +            #address-cells = <1>;
> +            #size-cells = <0>;
> +            interrupts = <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>;
> +            clocks = <&syscon ASPEED_CLK_GATE_REF0CLK>;
> +            resets = <&syscon ASPEED_RESET_PECI>;
> +            clock-frequency = <24000000>;
> +        };
> +    };
> +...
> diff --git a/Documentation/devicetree/bindings/peci/peci-client.yaml b/Documentation/devicetree/bindings/peci/peci-client.yaml
> new file mode 100644
> index 000000000000..fc7c4110e929
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/peci/peci-client.yaml
> @@ -0,0 +1,54 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/peci/peci-client.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Generic Device Tree Bindings for PECI clients
> +
> +maintainers:
> +  - Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - intel,peci-client
> +
> +  reg:
> +    description: |
> +      Address of a client CPU. According to the PECI specification, client
> +      addresses start from 0x30.

0x30 being the min should be a constraint in the bus schema.

> +    maxItems: 1
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/clock/ast2600-clock.h>
> +    peci: bus@1e78b000 {
> +        compatible = "simple-bus";
> +        #address-cells = <1>;
> +        #size-cells = <1>;
> +        ranges = <0x0 0x1e78b000 0x60>;
> +
> +        peci0: peci-bus@0 {
> +            compatible = "aspeed,ast2600-peci";
> +            reg = <0x0 0x100>;
> +            #address-cells = <1>;
> +            #size-cells = <0>;
> +            interrupts = <GIC_SPI 38 IRQ_TYPE_LEVEL_HIGH>;
> +            clocks = <&syscon ASPEED_CLK_GATE_REF0CLK>;
> +            resets = <&syscon ASPEED_RESET_PECI>;
> +            clock-frequency = <24000000>;
> +
> +            peci-client@30 {
> +                compatible = "intel,peci-client";
> +                reg = <0x30>;
> +            };
> +
> +            peci-client@31 {
> +                compatible = "intel,peci-client";
> +                reg = <0x31>;
> +            };
> +        };
> +    };
> +...
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
