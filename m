Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B88A51A2CC8
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 02:16:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OJegBFCuqKxwcB2o3sKs6soqPLytptrO3jswN98J9F8=; b=anHw7UYgInACL4
	gCw1dI1SoV2OOoH5UWzwItlDMWpZd/Yxs9Xav7rFKNolDd5ajFzHZaBir+eZzQ68Uhf6WZGSkhkpG
	mCqynMAT+QEq/xZJSn3iPtvg3drRF58kaKtAS7Dt10El65LkSX2bkArIctRUTVZyNk2VSMDs6lDSv
	4PC9pMNBv/ipDtvDK/eUHQkVIq3WdRZO3+g65dVHP24CPrMY+SG2WdIIk+FEOECm+Og1UV3KyugJH
	pUrRccPZOaI5guMglfZvCQN3myFNIbziCsDY6zr4Vrk2R+38ywDt1WCY6lTGMJ0njvPayfL2CywMm
	tobffFr2x/OMs8d3SG2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMKrJ-0008Ju-Nh; Thu, 09 Apr 2020 00:15:53 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMKrB-0008JM-Em
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 00:15:48 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0390FeoI041864;
 Wed, 8 Apr 2020 19:15:40 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1586391340;
 bh=O9jHcIjiuicPqN1HiJHDzL+rxwArL5XQ9Qch3rV/CSM=;
 h=Subject:From:To:CC:References:Date:In-Reply-To;
 b=of3WizabyWZ8LQjisp9SFrtourc/dSXJKn9VuPmp0TDa0E6n1UoZMjM45BvoY79gh
 gWcQnDGLXj8CrXjfWgkaaD7bUQSYn/69kW4Ynxl9Y5xx+5OcZhVLDpPhMG/Qn2OQbw
 r7KNcp9FyhJEm2UL61iiGsd54NzhrIPo5A0c713s=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0390FeSi100289
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 8 Apr 2020 19:15:40 -0500
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 8 Apr
 2020 19:15:40 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 8 Apr 2020 19:15:40 -0500
Received: from [10.250.86.212] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0390FeAX101187;
 Wed, 8 Apr 2020 19:15:40 -0500
Subject: Re: [PATCH 3/7] dt-bindings: remoteproc: Add bindings for R5F
 subsystem on TI K3 SoCs
From: Suman Anna <s-anna@ti.com>
To: Rob Herring <robh+dt@kernel.org>
References: <20200324201819.23095-1-s-anna@ti.com>
 <20200324201819.23095-4-s-anna@ti.com>
 <CAL_JsqKpC=W-y3OdeqSROhiKLbQKf3sGyCXzQH__Wr-O=QS4Tg@mail.gmail.com>
 <30cb4bee-fe79-8683-8225-fad174e0d630@ti.com>
Message-ID: <5eafcf26-edfe-a8a3-f0eb-90def3eafa4c@ti.com>
Date: Wed, 8 Apr 2020 19:15:40 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <30cb4bee-fe79-8683-8225-fad174e0d630@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_171545_582560_D2AC23A0 
X-CRM114-Status: GOOD (  39.07  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Mathieu Poirier <mathieu.poirier@linaro.org>,
 Lokesh Vutla <lokeshvutla@ti.com>, "open
 list:REMOTE PROCESSOR \(REMOTEPROC\) SUBSYSTEM"
 <linux-remoteproc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, "moderated
 list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 4/8/20 7:02 PM, Suman Anna wrote:
> Hi Rob,
> 
> On 3/26/20 11:53 AM, Rob Herring wrote:
>> On Tue, Mar 24, 2020 at 2:18 PM Suman Anna <s-anna@ti.com> wrote:
>>>
>>> The Texas Instruments K3 family of SoCs have one or more dual-core
>>> Arm Cortex R5F processor subsystems/clusters (R5FSS). The clusters
>>> can be split between multiple voltage domains as well. Add the device
>>> tree bindings document for these R5F subsystem devices. These R5F
>>> processors do not have an MMU, and so require fixed memory carveout
>>> regions matching the firmware image addresses. The nodes require more
>>> than one memory region, with the first memory region used for DMA
>>> allocations at runtime. The remaining memory regions are reserved
>>> and are used for the loading and running of the R5F remote processors.
>>> The R5F processors can also optionally use any internal on-chip SRAM
>>> memories either for executing code or using it as fast-access data.
>>
>> I'm inclined to say the system DT stuff should be sorted out before
>> accepting this. Is the system DT stuff going to be useful for your R5
>> cores? Do you really want to be stuck with this binding?
> 
> Hmm, I am not dependent on System DT and prefer to be not gated by that.
> This is still all from the Linux host perspective, and we don't have any
> plans to use DT on the firmware-side.
> 
>>
>>> The added example illustrates the DT nodes for the single R5FSS device
>>> present on K3 AM65x family of SoCs.
>>>
>>> Signed-off-by: Suman Anna <s-anna@ti.com>
>>> ---
>>> Hi Rob,
>>>
>>> The dt_bindings_check seems to throw couple of warnings around the
>>> usage of ranges because the tooling is adding the #address-cells
>>> and #size-cells of 1 by default, whereas our actual code uses 2.
>>
>> Then change the default by specifying what you want. Or change the
>> example to be 1 cell. It is *just* an example.
> 
> OK, was using the actual dts nodes as how they would be added in our dts
> files. The only way to get rid of the warnings is to use 1 cell. I can
> do that for the R5F bindings, but cannot really do that for the DSPs
> since the addresses need 2 cells.
> 
>>
>>> No issues are found with dtbs_check.
>>
>> I doubt that if your dts matches the example.
> 
> The top-level cells value is 2 in our dts files (See either of
> arm64/dts/ti/k3-am65.dtsi or k3-j721e.dtsi).
> 
>>
>>>
>>> regards
>>> Suman
>>>
>>>  .../bindings/remoteproc/ti,k3-r5f-rproc.yaml  | 338 ++++++++++++++++++
>>>  1 file changed, 338 insertions(+)
>>>  create mode 100644 Documentation/devicetree/bindings/remoteproc/ti,k3-r5f-rproc.yaml
>>>
>>> diff --git a/Documentation/devicetree/bindings/remoteproc/ti,k3-r5f-rproc.yaml b/Documentation/devicetree/bindings/remoteproc/ti,k3-r5f-rproc.yaml
>>> new file mode 100644
>>> index 000000000000..bbfc1e6ae884
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/remoteproc/ti,k3-r5f-rproc.yaml
>>> @@ -0,0 +1,338 @@
>>> +# SPDX-License-Identifier: (GPL-2.0-only or BSD-2-Clause)
>>> +%YAML 1.2
>>> +---
>>> +$id: http://devicetree.org/schemas/remoteproc/ti,k3-r5f-rproc.yaml#
>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>>> +
>>> +title: TI K3 R5F processor subsystems
>>> +
>>> +maintainers:
>>> +  - Suman Anna <s-anna@ti.com>
>>> +
>>> +description: |
>>> +  The TI K3 family of SoCs usually have one or more dual-core Arm Cortex R5F
>>> +  processor subsystems/clusters (R5FSS). The dual core cluster can be used
>>> +  either in a LockStep mode providing safety/fault tolerance features or in a
>>> +  Split mode providing two individual compute cores for doubling the compute
>>> +  capacity. These are used together with other processors present on the SoC
>>> +  to achieve various system level goals.
>>> +
>>> +  Each Dual-Core R5F sub-system is represented as a single DTS node
>>> +  representing the cluster, with a pair of child DT nodes representing
>>> +  the individual R5F cores. Each node has a number of required or optional
>>> +  properties that enable the OS running on the host processor to perform
>>> +  the device management of the remote processor and to communicate with the
>>> +  remote processor.
>>> +
>>> +# Required properties:
>>> +# --------------------
>>> +# The following are the mandatory properties:
>>> +
>>> +properties:
>>> +  $nodename:
>>> +    pattern: "^r5fss(@.*)?"
>>> +
>>> +  compatible:
>>> +    enum:
>>> +      - ti,am654-r5fss
>>> +      - ti,j721e-r5fss
>>> +
>>> +  power-domains:
>>> +    description: |
>>> +      Should contain a phandle to a PM domain provider node and an args
>>> +      specifier containing the R5FSS device id value. This property is
>>> +      as per the binding,
>>> +      Documentation/devicetree/bindings/soc/ti/sci-pm-domain.txt
>>
>> What implementation of power domains is used is outside the scope of
>> this binding. I'd just drop the whole description as it is pretty
>> generic.
> 
> OK.
> 
>>
>>> +    maxItems: 1
>>> +
>>> +  "#address-cells":
>>> +    const: 1
>>> +
>>> +  "#size-cells":
>>> +    const: 1
>>> +
>>> +  ranges:
>>> +    description: |
>>> +      Standard ranges definition providing address translations for
>>> +      local R5F TCM address spaces to bus addresses.
>>> +
>>> +# Optional properties:
>>> +# --------------------
>>> +
>>> +  lockstep-mode:
>>
>> Needs a vendor prefix.
> 
> Yep, will fix this one and all the others below.
> 
>>
>>> +    $ref: /schemas/types.yaml#/definitions/uint32
>>> +    enum: [0, 1]
>>> +    description: |
>>> +      Configuration Mode for the Dual R5F cores within the R5F
>>> +      cluster. Should be either a value of 1 (LockStep mode) or
>>> +      0 (Split mode), default is LockStep mode if omitted.
>>> +
>>> +# R5F Processor Child Nodes:
>>> +# ==========================
>>> +
>>> +patternProperties:
>>> +  "^r5f@[a-f0-9]+$":
>>> +    type: object
>>> +    description: |
>>> +        The R5F Sub-System device node should define two R5F child nodes, each
>>> +        node representing a TI instantiation of the Arm Cortex R5F core. There
>>> +        are some specific integration differences for the IP like the usage of
>>> +        a Region Address Translator (RAT) for translating the larger SoC bus
>>> +        addresses into a 32-bit address space for the processor.
>>> +
>>> +# Required properties:
>>> +# --------------------
>>> +# The following are the mandatory properties:
>>> +
>>> +    properties:
>>> +      compatible:
>>> +        enum:
>>> +          - ti,am654-r5f
>>> +          - ti,j721e-r5f
>>> +
>>> +      reg:
>>> +        description: |
>>> +          Should contain an entry for each value in 'reg-names'.
>>> +          Each entry should have the memory region's start address
>>> +          and the size of the region, the representation matching
>>> +          the parent node's '#address-cells' and '#size-cells' values.
>>
>> That's every 'reg' property.
>>
>>> +        maxItems: 2
>>
>> You need to define what each one is:
>>
>> items:
>>   - description: ...
>>   - description: ...
> 
> OK, will fix.
> 
>>
>>> +
>>> +      reg-names:
>>> +        description: |
>>> +          Should contain strings with the names of the specific internal
>>> +          internal memory regions, and should be defined in this order
>>> +        maxItems: 2
>>> +        items:
>>> +          - const: atcm
>>> +          - const: btcm
>>> +
>>> +      ti,sci:
>>> +        $ref: /schemas/types.yaml#/definitions/phandle
>>> +        description:
>>> +          Should be a phandle to the TI-SCI System Controller node
>>> +
>>> +      ti,sci-dev-id:
>>> +        $ref: /schemas/types.yaml#/definitions/uint32
>>> +        description: |
>>> +          Should contain the TI-SCI device id corresponding to the R5F core.
>>> +          Please refer to the corresponding System Controller documentation
>>> +          for valid values for the R5F cores.
>>> +
>>> +      ti,sci-proc-ids:
>>> +        description: Should contain a single tuple of <proc_id host_id>.
>>> +        allOf:
>>> +          - $ref: /schemas/types.yaml#/definitions/uint32-matrix
>>
>> Sounds more like an array.
> 
> OK, I can modify this. Went with this originally to reflect the tuple,
> but guess both translate similarly for my usage.
> 
>>
>>> +          - maxItems: 1
>>> +            items:
>>> +              items:
>>> +                - description: TI-SCI processor id for the R5F core device
>>> +                - description: TI-SCI host id to which processor control
>>> +                               ownership should be transferred to
>>> +
>>> +      resets:
>>> +        description: |
>>> +          Should contain the phandle to the reset controller node
>>> +          managing the resets for this device, and a reset
>>> +          specifier. Please refer to the following reset bindings
>>> +          for the reset argument specifier,
>>> +          Documentation/devicetree/bindings/reset/ti,sci-reset.txt
>>> +            for AM65x and J721E SoCs
>>
>> Drop. How many resets (maxItems or items list)?
> 
> Yeah, this is 1, will update. Do you want me to drop just the specifier
> link or the entire description?
> 
>>
>>> +
>>> +      firmware-name:
>>> +        description: |
>>> +          Should contain the name of the default firmware image
>>> +          file located on the firmware search path
>>> +
>>> +# The following properties are mandatory for R5F Core0 in both LockStep and Split
>>> +# modes, and are mandatory for R5F Core1 _only_ in Split mode. They are unused for
>>> +# R5F Core1 in LockStep mode:

Rob,

If I were to actually encode this in YAML, I need to distinguish Core0
from Core1. I have currently followed the DT generic node name
convention when defining the two nodes and interpret in the driver based
on addresses. What is the preferred mechanism for this - define node
names as r5f0 and r5f1 or introduce a ti,core-id or ti,cpu-id property?

regards
Suman

>>> +
>>> +      mboxes:
>>> +        description: |
>>> +          OMAP Mailbox specifier denoting the sub-mailbox, to be used for
>>> +          communication with the remote processor. This property should match
>>> +          with the sub-mailbox node used in the firmware image. The specifier
>>> +          format is as per the bindings,
>>> +          Documentation/devicetree/bindings/mailbox/omap-mailbox.txt
>>
>> How many?
> 
> OK, will fix.
> 
>>
>>> +
>>> +      memory-region:
>>> +        minItems: 2
>>> +        description: |
>>> +          phandle to the reserved memory nodes to be associated with the remoteproc
>>> +          device. There should be atleast two reserved memory nodes defined - the
>>
>> What's the max number? As is, it will be 2.
> 
> Aah, I misinterpreted that not having would be open-ended. OK, I will
> have to give an arbitrary number here (maybe 4 or 8). Can we update this
> later on if a usecase really needs more?
> 
>>
>>> +          first one would be used for dynamic DMA allocations like vrings and vring
>>> +          buffers, and the remaining ones used for the firmware image sections. The
>>> +          reserved memory nodes should be carveout nodes, and should be defined as
>>> +          per the bindings in
>>> +          Documentation/devicetree/bindings/reserved-memory/reserved-memory.txt
>>> +
>>> +# Optional properties:
>>> +# --------------------
>>> +# The following properties are optional properties for each of the R5F cores:
>>> +
>>> +      atcm-enable:
>>
>> Vendor prefix needed.
>>
>>> +        $ref: /schemas/types.yaml#/definitions/uint32
>>> +        enum: [0, 1]
>>> +        description: |
>>> +          R5F core configuration mode dictating if ATCM should be enabled. R5F
>>> +          view of ATCM dictated by loczrama property. Should be either a value
>>> +          of 1 (enabled) or 0 (disabled), default is disabled if omitted.
>>> +
>>> +      btcm-enable:
>>
>> ditto
>>
>>> +        $ref: /schemas/types.yaml#/definitions/uint32
>>> +        enum: [0, 1]
>>> +        description: |
>>> +          R5F core configuration mode dictating if BTCM should be enabled. R5F
>>> +          view of BTCM dictated by loczrama property. Should be either a value
>>> +          of 1 (enabled) or 0 (disabled), default is enabled if omitted.
>>> +
>>> +      loczrama:
>>
>> ditto
>>
>>> +        $ref: /schemas/types.yaml#/definitions/uint32
>>> +        enum: [0, 1]
>>> +        description: |
>>> +          R5F core configuration mode dictating which TCM should appear at
>>> +          address 0 (from core's view). Should be either a value of 1 (ATCM
>>> +          at 0x0) or 0 (BTCM at 0x0), default value is 1 if omitted.
>>
>> I can't decipher how you came up with 'loczrama' based on the description.
> 
> That's actually the signal name from the Arm R5 specs.
> 
>>
>>> +
>>> +      sram:
>>> +        $ref: /schemas/types.yaml#/definitions/phandle-array
>>> +        minItems: 1
>>> +        description: |
>>> +          pHandles to one or more reserved on-chip SRAM region. The regions
>>> +          should be defined as child nodes of the respective SRAM node, and
>>> +          should be defined as per the generic bindings in,
>>> +          Documentation/devicetree/bindings/sram/sram.yaml
>>> +
>>> +    required:
>>> +     - compatible
>>> +     - reg
>>> +     - reg-names
>>> +     - ti,sci
>>> +     - ti,sci-dev-id
>>> +     - ti,sci-proc-ids
>>> +     - resets
>>> +     - firmware-name
>>> +
>>> +    additionalProperties: false
>>> +
>>> +required:
>>> + - compatible
>>> + - power-domains
>>> + - "#address-cells"
>>> + - "#size-cells"
>>> + - ranges
>>> +
>>> +additionalProperties: false
>>> +
>>> +examples:
>>> +  - |
>>> +
>>> +    //Example: AM654 SoC
>>> +    /* R5F DDR Carveout reserved memory nodes */
>>> +    reserved-memory {
>>> +        #address-cells = <2>;
>>> +        #size-cells = <2>;
>>> +        ranges;
>>> +
>>> +        mcu_r5fss0_core1_dma_memory_region: r5f-dma-memory@9b000000 {
>>> +            compatible = "shared-dma-pool";
>>> +            reg = <0x00 0x9b000000 0x00 0x100000>;
>>> +            no-map;
>>> +        };
>>> +
>>> +        mcu_r5fss0_core1_memory_region: r5f-memory@9b100000 {
>>> +            compatible = "shared-dma-pool";
>>> +            reg = <0x00 0x9b100000 0x00 0xf00000>;
>>> +            no-map;
>>> +        };
>>> +
>>> +        mcu_r5fss0_core0_dma_memory_region: r5f-dma-memory@9c000000 {
>>> +            compatible = "shared-dma-pool";
>>> +            reg = <0x00 0x9c000000 0x00 0x100000>;
>>> +            no-map;
>>> +        };
>>> +
>>> +        mcu_r5fss0_core0_memory_region: r5f-memory@9c100000 {
>>> +            compatible = "shared-dma-pool";
>>> +            reg = <0x00 0x9c100000 0x00 0x700000>;
>>> +            no-map;
>>> +        };
>>> +    };
>>> +
>>> +    cbass_main: interconnect@100000 {
>>
>> bus@...
> 
> Yeah, will update the example to use bus. The DTS nodes in the kernel
> are already using the interconnect name.
> 
>>
>> Doesn't look like the right address either.
> 
> Yeah, I skipped the actual first entry from the ranges, and only
> mentioned the ones that I am using in the nodes. Will fix this.
> 
>>
>>> +        compatible = "simple-bus";
>>> +        #address-cells = <2>;
>>> +        #size-cells = <2>;
>>> +        ranges = <0x00 0x41000000 0x00 0x41000000 0x00 0x00020000>,
>>> +                 <0x00 0x41400000 0x00 0x41400000 0x00 0x00020000>,
>>> +                 <0x00 0x41c00000 0x00 0x41c00000 0x00 0x00080000>;
>>> +
>>> +        cbass_mcu: interconnect@28380000 {
>>
>> Doesn't look like the right address.
> 
> Same as above.
> 
>>
>>> +            compatible = "simple-bus";
>>> +            #address-cells = <2>;
>>> +            #size-cells = <2>;
>>> +            ranges = <0x00 0x41000000 0x00 0x41000000 0x00 0x00020000>, /* MCU R5F Core0 */
>>> +                     <0x00 0x41400000 0x00 0x41400000 0x00 0x00020000>, /* MCU R5F Core1 */
>>> +                     <0x00 0x41c00000 0x00 0x41c00000 0x00 0x00080000>; /* MCU SRAM */
>>> +
>>> +            /* MCU domain SRAM node */
>>> +            mcu_ram: mcu-ram@41c00000 {
>>
>> I would omit this node from the example. Nothing special here really.
> 
> Showcasing the optional sram property usage from the mcu_r5f0 node.
> 
> regards
> Suman
> 
>>
>>> +                compatible = "mmio-sram";
>>> +                reg = <0x00 0x41c00000 0x00 0x80000>;
>>> +                ranges = <0x0 0x00 0x41c00000 0x80000>;
>>> +                #address-cells = <1>;
>>> +                #size-cells = <1>;
>>> +
>>> +                mcu_r5fss0_core0_sram: r5f-sram@0 {
>>> +                    reg = <0x0 0x40000>;
>>> +                };
>>> +            };
>>> +
>>> +            /* AM65x MCU R5FSS node */
>>> +            mcu_r5fss0: r5fss@41000000 {
>>> +                compatible = "ti,am654-r5fss";
>>> +                power-domains = <&k3_pds 129>;
>>> +                lockstep-mode = <1>;
>>> +                #address-cells = <1>;
>>> +                #size-cells = <1>;
>>> +                ranges = <0x41000000 0x00 0x41000000 0x20000>,
>>> +                         <0x41400000 0x00 0x41400000 0x20000>;
>>> +
>>> +                mcu_r5f0: r5f@41000000 {
>>> +                    compatible = "ti,am654-r5f";
>>> +                    reg = <0x41000000 0x00008000>,
>>> +                          <0x41010000 0x00008000>;
>>> +                    reg-names = "atcm", "btcm";
>>> +                    ti,sci = <&dmsc>;
>>> +                    ti,sci-dev-id = <159>;
>>> +                    ti,sci-proc-ids = <0x01 0xFF>;
>>> +                    resets = <&k3_reset 159 1>;
>>> +                    firmware-name = "am65x-mcu-r5f0_0-fw";
>>> +                    atcm-enable = <1>;
>>> +                    btcm-enable = <1>;
>>> +                    loczrama = <1>;
>>> +                    mboxes = <&mailbox0 &mbox_mcu_r5fss0_core0>;
>>> +                    memory-region = <&mcu_r5fss0_core0_dma_memory_region>,
>>> +                                    <&mcu_r5fss0_core0_memory_region>;
>>> +                    sram = <&mcu_r5fss0_core0_sram>;
>>> +                };
>>> +
>>> +                mcu_r5f1: r5f@41400000 {
>>> +                    compatible = "ti,am654-r5f";
>>> +                    reg = <0x41400000 0x00008000>,
>>> +                          <0x41410000 0x00008000>;
>>> +                    reg-names = "atcm", "btcm";
>>> +                    ti,sci = <&dmsc>;
>>> +                    ti,sci-dev-id = <245>;
>>> +                    ti,sci-proc-ids = <0x02 0xFF>;
>>> +                    resets = <&k3_reset 245 1>;
>>> +                    firmware-name = "am65x-mcu-r5f0_1-fw";
>>> +                    atcm-enable = <1>;
>>> +                    btcm-enable = <1>;
>>> +                    loczrama = <1>;
>>> +                    mboxes = <&mailbox1 &mbox_mcu_r5fss0_core1>;
>>> +               };
>>> +           };
>>> +        };
>>> +    };
>>> --
>>> 2.23.0
>>>
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
