Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 333DF10CE9A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 19:39:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=r6BkxdJ9b4J2yzh+0YDbvkFgGO1GkFIet74erjUym9U=; b=UzKq7+m+YDu5E0wur2ewr57h+
	MXdB94iXwaf6G7OHWvn4koeVyQEC/UKyRn0HGyO0FqA/hrazOYulTTM1vnQdXdyqaB9a7EyxW64cY
	0d2s6PD+zpCbcUzuopCPJOq73vH7u04NQcyjnswHZRui1E3RCWjYpe0VE6j8Oc8I7LC3FJFsLaUU8
	DRQ1gmXB8OM0CMBe/UzXHpnOB0Jp7lM3rrXtHb3U5ElsNYOjoCaWERUPkiXtnTvGPO88b8cb9WVly
	1sTuc8+H02SHa4g4F9OcPd9nXserJbtFvaxn53qsox4w0HhZvwjCtjKfXylZaFPhmZhGbvIrppQ89
	/yP0quQ2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaOh6-00088V-1c; Thu, 28 Nov 2019 18:39:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaOgt-00087m-4g
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 18:39:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 29B521FB;
 Thu, 28 Nov 2019 10:38:55 -0800 (PST)
Received: from [10.1.197.1] (ewhatever.cambridge.arm.com [10.1.197.1])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 439083F6C4;
 Thu, 28 Nov 2019 10:38:54 -0800 (PST)
Subject: Re: [PATCH v5 05/14] dt-bindings: arm: Adds CoreSight CTI hardware
 definitions.
To: Mike Leach <mike.leach@linaro.org>, coresight@lists.linaro.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-doc@vger.kernel.org
References: <20191119231912.12768-1-mike.leach@linaro.org>
 <20191119231912.12768-6-mike.leach@linaro.org>
From: Suzuki Kuruppassery Poulose <suzuki.poulose@arm.com>
Message-ID: <f2150b39-c662-4eea-a556-27d8ebb51735@arm.com>
Date: Thu, 28 Nov 2019 18:38:53 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191119231912.12768-6-mike.leach@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_103859_275184_8D6ED402 
X-CRM114-Status: GOOD (  38.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mathieu.poirier@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mike,

On 19/11/2019 23:19, Mike Leach wrote:
> Adds new coresight-cti.yaml file describing the bindings required to define
> CTI in the device trees.
> 
> Adds an include file to dt-bindings/arm to define constants describing
> common signal functionality used in CoreSight and generic usage.

The documentation looks really nice and helpful. Some very minor nits
below.

> 
> Signed-off-by: Mike Leach <mike.leach@linaro.org>

> ---
>   .../bindings/arm/coresight-cti.yaml           | 303 ++++++++++++++++++
>   .../devicetree/bindings/arm/coresight.txt     |   7 +
>   MAINTAINERS                                   |   2 +
>   include/dt-bindings/arm/coresight-cti-dt.h    |  37 +++
>   4 files changed, 349 insertions(+)
>   create mode 100644 Documentation/devicetree/bindings/arm/coresight-cti.yaml
>   create mode 100644 include/dt-bindings/arm/coresight-cti-dt.h
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

nit: CTM is not expanded anywhere here. For the sake of completeness, 
you may do that here.

i.e, s/"a start topology via the CTM"/"a start topology via the Cross 
Trigger Matrix (CTM)"/


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

nit: "programmable channels, usually 4, but..." ?

> +  described in the DEVID register. The star topology is not required to be
> +  described in the bindings as the actual connections are software
> +  programmable.
> +
> +  In general the connections between CTI and components via the trigger signals
> +  are implementation defined, other than when v8 core and ETM is present.

nite: are implementation defined, *except when they are connected to an 
Arm v8 compatible CPU or an ETM* ?


> +  The v8 architecture defines the required signal connections between CPU core

nit: "The Arm v8"

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

How about "When the CTI trigger connection information is unavailable,
the driver detects the number of triggers and channels from the DEVID
register and makes them available. The Integration Control registers
can be then used to discover the connections for this CTI device
to other CoreSight components".

Since we recommend the use of the "Integration Control registers", which
is not normally available unless you play around the code, it will be a
good idea to metion, what the user needs to do to make the registers
available. (One more reason to use the CONFIG symbol, makes that
easier.)


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

If possible, please could we make this :

"arm,cti-arm-v8-architected"

to be more meaning ful ?

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

I understand these bindings have been around for quite long and is too
late to make any changes. So, feel free to ignore this suggestion below
and I am perfectly fine with it.

--- Begin silly comments Or Skip to DONE ----

Could we make the property names a bit more obvious ? Since they are 
supposed to be written by other people (unlike our variable names), it
always makes sense to have expanded, meaningful names:

s/trig_conns@/triggers@ ?

s/arm,trig-{in,out}-sigs/arm,cti-{in,out}-triggers
s/arm,trig-{in,out}-types/arm,cti-{in,out}-trigger-types

"arm,trig-xxx" property name doesn't really imply that it is for cti.
So, the above changes makes it explicit and more reader friendly.

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

arm,cti-trigger-filters ?

> +        allOf:
> +          - $ref: /schemas/types.yaml#/definitions/uint32-array
> +        minItems: 1
> +        maxItems: 32
> +        description:
> +          List of CTI trigger out signals that will be blocked from becoming
> +          active, unless filtering is disabled on the driver.
> +
> +      arm,trig-conn-name:

arm,cti-trigger-name ?


--- DONE or End of silly comments ---

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

nit: s/none/non ?

Rest looks fine to me.

Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
