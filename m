Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A66AC1043E8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 20:06:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yYuqLYkoaesV9FoOKHeAJw1wZ8TiU/dg6yGaIKd1MrI=; b=m85YJ3scrfkVhN
	jEm1Ok/0XLgfZ5f3yuWw0neyhBmtXhw5aVAC3HMc7GQM1RvJ6MGhQvsVTcWkZDCL9FL1LXNbaf7l6
	SzMa9bSWh4ULlxQAXGQnFxFPNUQBMps3m9WCzD4DUW4FIGupBA2sAJADHf94d1BRgUv61TnzQIlgC
	hyi8E4STGz21GtJ8wxxHE6HsAVClXfewYZRzJwgR4vE0yLrjyF//6OIwc3x6+RAQ6DcxXpq3OhHOm
	G8Dt74nCVKFgTZBsJSiRiAhQRTJZuhLsAsT1Kwg4WKr2EMvUstOKSRCKSAqtiBkT/vtinXDP5eWEw
	7NezN3FZ1r4cfiSFl/Rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXVIw-0001M4-4B; Wed, 20 Nov 2019 19:06:18 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXVIm-0001LU-U3
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 19:06:11 +0000
Received: by mail-pl1-x641.google.com with SMTP id a18so197540plm.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 11:06:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=qwR4Co8lks4LmUuTtS/YJva159JyBWXY4vIpJdbdmYA=;
 b=pEc1x0Fj8sd1WC+KL3Y9if0NczV5SRGeag1DH7pKpWVjrAMVmk672UwUNUVTZCG5hA
 GCMaPZzpMBr3HBuZsjBU3m1SSRigySRzHbrQmWvaCiQK7gkp1FKkTmvwcVneB1Z7q0n6
 GnTD8nbNCOCTxBf1r09vEjY5l7/fdk9xgoKu9CUWyxCLtZKjRaSxcyz8/IWqiGpfuROz
 0fnWFST7W4cM1rMjbnYHZVbRrzFFkMd0rPj3ruCAl8ycnumoIiLtsZ/H/igl2CZcwccb
 WZxitwITYmyPmvaCQ7WQKWu9d2JpkYE9ms0f/KrLakX5eZQzjNM6OzxAoG9XZOJ+n2mi
 obuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=qwR4Co8lks4LmUuTtS/YJva159JyBWXY4vIpJdbdmYA=;
 b=Ez/rSK8U0lOy5ipHYV/74z3J2+hma/GcErrN8CtfTMLtwXRyJs+o/RmH6AFnEuE9gV
 /2j8uXfVaeBBiqX6MUZWcHk5JPp6XxpaImox5eNL9QBE0xkiwRT2Ykv8WWVF/aQCFGa8
 Xvc7ZHmk1CM+giGBACBNTYGgozKTnLj6oOkrsHFGVzXSwoco6qNZngmYAVAg+A4ObF+c
 aH7lsn3Tm5W35x2t+qiRXbLS8Amoo7xqxaSQ0eKU1QzVqp/ayzfpGQUz1wuc33m2oYfS
 Nn7MoWI1952yCxakKxhePFKsK6DgoL7mNh6hHiPLWDO10BCdyU9FnhadmyRzW1GSEV7R
 bcGQ==
X-Gm-Message-State: APjAAAWam6DbLJfDYbAAUs20Q0jAO6OJwKrHYn5r6ec9J3rApCG0BBWh
 fp8Omb7mnkRNAaBbimKJ4BA5MWuPUe0=
X-Google-Smtp-Source: APXvYqyEc+6De2q68uTlsPOsEUwaOjWAJ7PUsTcNg0xXyfeQceGV4aBErgivl0U/RNnwj6s9g1oJPA==
X-Received: by 2002:a17:90a:bb82:: with SMTP id
 v2mr6145982pjr.62.1574276767298; 
 Wed, 20 Nov 2019 11:06:07 -0800 (PST)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id ay16sm7751700pjb.2.2019.11.20.11.06.06
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 20 Nov 2019 11:06:06 -0800 (PST)
Date: Wed, 20 Nov 2019 12:06:04 -0700
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Mike Leach <mike.leach@linaro.org>
Subject: Re: [PATCH v5 05/14] dt-bindings: arm: Adds CoreSight CTI hardware
 definitions.
Message-ID: <20191120190604.GA5641@xps15>
References: <20191119231912.12768-1-mike.leach@linaro.org>
 <20191119231912.12768-6-mike.leach@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191119231912.12768-6-mike.leach@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_110608_987787_47F04DEA 
X-CRM114-Status: GOOD (  36.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, coresight@lists.linaro.org,
 suzuki.poulose@arm.com, linux-arm-kernel@lists.infradead.org,
 linux-doc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 19, 2019 at 11:19:03PM +0000, Mike Leach wrote:
> Adds new coresight-cti.yaml file describing the bindings required to define
> CTI in the device trees.
> 
> Adds an include file to dt-bindings/arm to define constants describing
> common signal functionality used in CoreSight and generic usage.
> 
> Signed-off-by: Mike Leach <mike.leach@linaro.org>
> ---
>  .../bindings/arm/coresight-cti.yaml           | 303 ++++++++++++++++++
>  .../devicetree/bindings/arm/coresight.txt     |   7 +
>  MAINTAINERS                                   |   2 +
>  include/dt-bindings/arm/coresight-cti-dt.h    |  37 +++
>  4 files changed, 349 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/arm/coresight-cti.yaml
>  create mode 100644 include/dt-bindings/arm/coresight-cti-dt.h
> 
> diff --git a/Documentation/devicetree/bindings/arm/coresight-cti.yaml b/Documentation/devicetree/bindings/arm/coresight-cti.yaml
> new file mode 100644
> index 000000000000..882c72f1c798
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/coresight-cti.yaml
> @@ -0,0 +1,303 @@
> +# SPDX-License-Identifier: GPL-2.0
> +# Copyright 2019 Linaro Ltd.
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/arm/coresight-cti.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: ARM Coresight Cross Trigger Interface (CTI) device.
> +
> +description: |
> +  The CoreSight Embedded Cross Trigger (ECT) consists of CTI devices connected
> +  to one or more CoreSight components and/or a CPU, with CTIs interconnected in
> +  a star topology via the CTM (which is not programmable). The ECT components
> +  are not part of the trace generation data path and are thus not part of the
> +  CoreSight graph described in the general CoreSight bindings file
> +  coresight.txt.
> +
> +  The CTI component properties define the connections between the individual
> +  CTI and the components it is directly connected to, consisting of input and
> +  output hardware trigger signals. CTIs can have a maximum number of input and
> +  output hardware trigger signals (8 each for v1 CTI, 32 each for v2 CTI). The
> +  number is defined at design time, the maximum of each defined in the DEVID
> +  register.
> +
> +  CTIs are interconnected in a star topology via the CTM, using a number of
> +  programmable channels usually 4, but again implementation defined and
> +  described in the DEVID register. The star topology is not required to be
> +  described in the bindings as the actual connections are software
> +  programmable.
> +
> +  In general the connections between CTI and components via the trigger signals
> +  are implementation defined, other than when v8 core and ETM is present.
> +  The v8 architecture defines the required signal connections between CPU core
> +  and CTI, and ETM and CTI, if the ETM if present.
> +
> +  When only minimal information is available for the CTI trigger connections,
> +  then a minimal driver binding can be declare with no explicit trigger
> +  signals. This will result in the using the DEVID register to set the
> +  input and output triggers and channels in use. Any user / client
> +  application will require additional information on the connections
> +  between the CTI and other components for correct operation. This minimal
> +  binding may be used when using the Integration Control registers to
> +  discover connections between CTI and other CoreSight components,
> +
> +  Certain triggers between CoreSight devices and the CTI have specific types
> +  and usages. These can be defined along with the signal indexes with the
> +  constants defined in <dt-bindings/arm/coresight-cti-dt.h>
> +
> +  For example a CTI connected to a core will usually have a DBGREQ signal. This
> +  is defined in the binding as type PE_EDBGREQ. These types will appear in an
> +  optional array alongside the signal indexes. Omitting types will default all
> +  signals to GEN_IO.
> +
> +  Note that some hardware trigger signals can be connected to non-CoreSight
> +  components (e.g. UART etc) depending on hardware implementation.
> +
> +maintainers:
> +  - Mike Leach <mike.leach@linaro.org>
> +
> +allOf:
> +  - $ref: /schemas/arm/primecell.yaml#
> +
> +# Need a custom select here or 'arm,primecell' will match on lots of nodes
> +select:
> +  properties:
> +    compatible:
> +      contains:
> +        enum:
> +          - arm,coresight-cti
> +  required:
> +    - compatible
> +
> +properties:
> +  $nodename:
> +    pattern: "^cti(@[0-9a-f,]+)*$"
> +  compatible:
> +    items:
> +      - const: arm,coresight-cti
> +      - const: arm,primecell
> +
> +  reg:
> +    items:
> +      - description: device programming registers
> +
> +  arm,cti-v8-arch:
> +    type: boolean
> +    description:
> +      This CTI follows the v8 architecturally mandated layout for a CTI.
> +      Bindings declaring this must declare a cpu, and optionally a single
> +      arm,cs-dev-assoc may be present to define an attached ETM. No additional
> +      trig-conns nodes are permitted. The driver will build a connection model
> +      according to architectural requirements. This will include a filter on
> +      the CPU dbgreq signal as described above.
> +
> +  cpu:
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/phandle
> +    description: Handle to cpu this device is associated with.
> +
> +  arm,cti-ctm-id:
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      Defines the CTM this CTI is connected to, in large systems with multiple
> +      separate CTI/CTM nets. Typically multi-socket systems where the CTM is
> +      propagated between sockets.
> +
> +  arm,cs-dev-assoc:
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      defines a phandle reference to an associated CoreSight trace device.
> +      When the associated trace device is enabled, then the respective CTI
> +      will be enabled. Use in a trig-conns node, or in CTI base node when
> +      arm,cti-v8-arch present. If the associated device has not been registered
> +      then the node name will be stored as the connection name for later
> +      resolution. If the associated device is not a CoreSight device or not
> +      registered then the node name will remain the connection name and
> +      automatic enabling will not occur.
> +
> +patternProperties:
> +  '^trig_conns@[0-9]+$':
> +    type: object
> +    description:
> +      A trigger connections child node which describes the trigger signals
> +      between this CTI and another hardware device. This device may be a CPU,
> +      CoreSight device, any other hardware device or simple external IO lines.
> +      The connection may have both input and output triggers, or only one or the
> +      other.
> +
> +    properties:
> +
> +      arm,trig-in-sigs:
> +        allOf:
> +          - $ref: /schemas/types.yaml#/definitions/uint32-array
> +        minItems: 1
> +        maxItems: 32
> +        description:
> +          List of CTI trigger in signal numbers in use by a trig-conns node.
> +
> +      arm,trig-in-types:
> +        allOf:
> +          - $ref: /schemas/types.yaml#/definitions/uint32-array
> +        minItems: 1
> +        maxItems: 32
> +        description:
> +          List of constants representing the types for the CTI trigger in
> +          signals. Types in this array match to the corresponding signal in the
> +          arm,trig-in-sigs array. If the -types array is smaller, or omitted
> +          completely, then the types will default to GEN_IO.
> +
> +      arm,trig-out-sigs:
> +        allOf:
> +          - $ref: /schemas/types.yaml#/definitions/uint32-array
> +        minItems: 1
> +        maxItems: 32
> +        description:
> +          List of CTI trigger out signal numbers in use by a trig-conns node.
> +
> +      arm,trig-out-types:
> +        allOf:
> +          - $ref: /schemas/types.yaml#/definitions/uint32-array
> +        minItems: 1
> +        maxItems: 32
> +        description:
> +          List of constants representing the types for the CTI trigger out
> +          signals. Types in this array match to the corresponding signal
> +          in the arm,trig-out-sigs array. If the "-types" array is smaller,
> +          or omitted completely, then the types will default to GEN_IO.
> +
> +      arm,trig-filters:
> +        allOf:
> +          - $ref: /schemas/types.yaml#/definitions/uint32-array
> +        minItems: 1
> +        maxItems: 32
> +        description:
> +          List of CTI trigger out signals that will be blocked from becoming
> +          active, unless filtering is disabled on the driver.
> +
> +      arm,trig-conn-name:
> +        allOf:
> +          - $ref: /schemas/types.yaml#/definitions/string
> +        description:
> +          Defines a connection name that will be displayed, if the cpu or
> +          arm,cs-dev-assoc properties are not being used in this connection.
> +          Principle use for CTI that are connected to non-CoreSight devices, or
> +          external IO.
> +
> +    anyOf:
> +      - required:
> +        - arm,trig-in-sigs
> +      - required:
> +        - arm,trig-out-sigs
> +    oneOf:
> +      - required:
> +        - arm,trig-conn-name
> +      - required:
> +        - cpu
> +      - required:
> +        - arm,cs-dev-assoc
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +
> +examples:
> +  # minimum CTI definition. DEVID register used to set number of triggers.
> +  - |
> +    cti@20020000 {
> +      compatible = "arm,coresight-cti", "arm,primecell";
> +      reg = <0x20020000 0x1000>;
> +
> +      clocks = <&soc_smc50mhz>;
> +      clock-names = "apb_pclk";
> +    };
> +  #  v8 architecturally defined CTI - CPU + ETM connections generated by the
> +  #  driver according to the v8 architecture specification.
> +  - |
> +    cti@859000 {
> +      compatible = "arm,coresight-cti", "arm,primecell";
> +      reg = <0x859000 0x1000>;
> +
> +      clocks = <&soc_smc50mhz>;
> +      clock-names = "apb_pclk";
> +
> +      arm,cti-v8-arch;
> +      cpu = <&CPU1>;
> +      arm,cs-dev-assoc = <&etm1>;
> +    };
> +  # Implementation defined CTI - CPU + ETM connections explicitly defined..
> +  # Shows use of type constants from dt-bindings/arm/coresight-cti-dt.h
> +  - |
> +    #include <dt-bindings/arm/coresight-cti-dt.h>
> +
> +    cti@858000 {
> +      compatible = "arm,coresight-cti", "arm,primecell";
> +      reg = <0x858000 0x1000>;
> +
> +      clocks = <&soc_smc50mhz>;
> +      clock-names = "apb_pclk";
> +
> +      arm,cti-ctm-id = <1>;
> +
> +      trig-conns@0 {
> +            arm,trig-in-sigs = <4 5 6 7>;
> +            arm,trig-in-types = <ETM_EXTOUT
> +                                 ETM_EXTOUT
> +                                 ETM_EXTOUT
> +                                 ETM_EXTOUT>;
> +            arm,trig-out-sigs = <4 5 6 7>;
> +            arm,trig-out-types = <ETM_EXTIN
> +                                  ETM_EXTIN
> +                                  ETM_EXTIN
> +                                  ETM_EXTIN>;
> +            arm,cs-dev-assoc = <&etm0>;
> +      };
> +
> +      trig-conns@1 {
> +            cpu = <&CPU0>;
> +            arm,trig-in-sigs = <0 1>;
> +            arm,trig-in-types = <PE_DBGTRIGGER
> +                                 PE_PMUIRQ>;
> +            arm,trig-out-sigs=<0 1 2 >;
> +            arm,trig-out-types = <PE_EDBGREQ
> +                                  PE_DBGRESTART
> +                                  PE_CTIIRQ>;
> +
> +            arm,trig-filters = <0>;
> +      };
> +    };
> +  # Implementation defined CTI - none CoreSight component connections.
> +  - |
> +    cti@20110000 {
> +      compatible = "arm,coresight-cti", "arm,primecell";
> +      reg = <0 0x20110000 0 0x1000>;
> +
> +      clocks = <&soc_smc50mhz>;
> +      clock-names = "apb_pclk";
> +
> +      trig-conns@0 {
> +        arm,trig-in-sigs=<0>;
> +        arm,trig-in-types=<GEN_INTREQ>;
> +        arm,trig-out-sigs=<0>;
> +        arm,trig-out-types=<GEN_HALTREQ>;
> +        arm,trig-conn-name = "sys_profiler";
> +      };
> +
> +      trig-conns@1 {
> +        arm,trig-out-sigs=<2 3>;
> +        arm,trig-out-types=<GEN_HALTREQ GEN_RESTARTREQ>;
> +        arm,trig-conn-name = "watchdog";
> +      };
> +
> +      trig-conns@2 {
> +        arm,trig-in-sigs=<1 6>;
> +        arm,trig-in-types=<GEN_HALTREQ GEN_RESTARTREQ>;
> +        arm,trig-conn-name = "g_counter";
> +      };
> +    };
> +
> +...

I'm not sure what the "..." is there for.  It is not present in the example
schema[1] but I can find the patter in other .yaml files.  As such I will let
Rob decide on that part.

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>

[1]. Documentation/devicetree/bindings/example-schema.yaml

> \ No newline at end of file
> diff --git a/Documentation/devicetree/bindings/arm/coresight.txt b/Documentation/devicetree/bindings/arm/coresight.txt
> index d02c42d21f2f..846f6daae71b 100644
> --- a/Documentation/devicetree/bindings/arm/coresight.txt
> +++ b/Documentation/devicetree/bindings/arm/coresight.txt
> @@ -45,6 +45,10 @@ its hardware characteristcs.
>  		- Coresight Address Translation Unit (CATU)
>  			"arm,coresight-catu", "arm,primecell";
>  
> +		- Coresight Cross Trigger Interface (CTI):
> +			"arm,coresight-cti", "arm,primecell";
> +			See coresight-cti.yaml for full CTI definitions.
> +
>  	* reg: physical base address and length of the register
>  	  set(s) of the component.
>  
> @@ -72,6 +76,9 @@ its hardware characteristcs.
>  	* reg-names: the only acceptable values are "stm-base" and
>  	  "stm-stimulus-base", each corresponding to the areas defined in "reg".
>  
> +* Required properties for Coresight Cross Trigger Interface (CTI)
> +	See coresight-cti.yaml for full CTI definitions.
> +
>  * Required properties for devices that don't show up on the AMBA bus, such as
>    non-configurable replicators and non-configurable funnels:
>  
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 9de89d75dbcc..8d01a74068f7 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -1608,9 +1608,11 @@ R:	Suzuki K Poulose <suzuki.poulose@arm.com>
>  L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
>  S:	Maintained
>  F:	drivers/hwtracing/coresight/*
> +F:	include/dt-bindings/arm/coresight-cti-dt.h
>  F:	Documentation/trace/coresight/*
>  F:	Documentation/devicetree/bindings/arm/coresight.txt
>  F:	Documentation/devicetree/bindings/arm/coresight-cpu-debug.txt
> +F:	Documentation/devicetree/bindings/arm/coresight-cti.yaml
>  F:	Documentation/ABI/testing/sysfs-bus-coresight-devices-*
>  F:	tools/perf/arch/arm/util/pmu.c
>  F:	tools/perf/arch/arm/util/auxtrace.c
> diff --git a/include/dt-bindings/arm/coresight-cti-dt.h b/include/dt-bindings/arm/coresight-cti-dt.h
> new file mode 100644
> index 000000000000..61e7bdf8ea6e
> --- /dev/null
> +++ b/include/dt-bindings/arm/coresight-cti-dt.h
> @@ -0,0 +1,37 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * This header provides constants for the defined trigger signal
> + * types on CoreSight CTI.
> + */
> +
> +#ifndef _DT_BINDINGS_ARM_CORESIGHT_CTI_DT_H
> +#define _DT_BINDINGS_ARM_CORESIGHT_CTI_DT_H
> +
> +#define GEN_IO		0
> +#define GEN_INTREQ	1
> +#define GEN_INTACK	2
> +#define GEN_HALTREQ	3
> +#define GEN_RESTARTREQ	4
> +#define PE_EDBGREQ	5
> +#define PE_DBGRESTART	6
> +#define PE_CTIIRQ	7
> +#define PE_PMUIRQ	8
> +#define PE_DBGTRIGGER	9
> +#define ETM_EXTOUT	10
> +#define ETM_EXTIN	11
> +#define SNK_FULL	12
> +#define SNK_ACQCOMP	13
> +#define SNK_FLUSHCOMP	14
> +#define SNK_FLUSHIN	15
> +#define SNK_TRIGIN	16
> +#define STM_ASYNCOUT	17
> +#define STM_TOUT_SPTE	18
> +#define STM_TOUT_SW	19
> +#define STM_TOUT_HETE	20
> +#define STM_HWEVENT	21
> +#define ELA_TSTART	22
> +#define ELA_TSTOP	23
> +#define ELA_DBGREQ	24
> +#define CTI_TRIG_MAX	25
> +
> +#endif /*_DT_BINDINGS_ARM_CORESIGHT_CTI_DT_H */
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
