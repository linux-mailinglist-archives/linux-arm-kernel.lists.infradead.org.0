Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B1EF1E6F87
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 00:48:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zKjz7hnH99SJIdZhXnxs8TjfYvMb9oeCRBpQdoy1334=; b=Xy7UTtUMzcG/VlUME40zsJgOM
	tQPEDhn7SDa/AhiP7Wde6Herkig9klx8fFlUpxIRKhb7R2bypU8QfG7Hn7bXSYrlxoG4tRfomB+VX
	1s5475rQnS6gZUVYmGRuWRKBxQJRLdXhAoUpXAI9I4YvdNATl6wdWfrka6DKt9oYqxUb5ZCF7bRF7
	Hb2qSYRFVUlCF9cBmQycZZYC20/YR3k+givS40pnaEI3OwIcb8wnLFjOl5vhTQIey6Md0iHbbk6il
	Etf/V2QmdNtOzCnoK1ZQCaKoPBduy9V29KD11/nujRF9tpsvn+pw3QaJu9Om7/3jZ7dCmXP0K7X4w
	mtcYCFXTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeRJw-0004Pj-3r; Thu, 28 May 2020 22:48:16 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeRJo-0004Ow-Pe
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 22:48:10 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04SMm1Ia005754;
 Thu, 28 May 2020 17:48:01 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1590706081;
 bh=x39oPaJDl+ZUFHxrbMEevXYzU0cRrJYQpFZWOXtqJZA=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=iPjFXLNYNCLSHYs0sfS5iGoy3U/WdjtL1/cWcIgNdPdAm9C2X+/l0L7hYc6Qtr4cr
 YgaZAxrq/323O4FWs6Q1S0CHgE7cpJQoc8qztf85xlpsAeLCtHdLc9bCLyI07lbnzF
 UGS60tmDjzIYUL+NLCXzsXSvqDQB4XvWsLuBfsAo=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04SMm1fN033075
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 28 May 2020 17:48:01 -0500
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 28
 May 2020 17:48:01 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 28 May 2020 17:48:01 -0500
Received: from [10.250.48.148] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04SMm0Qe064457;
 Thu, 28 May 2020 17:48:00 -0500
Subject: Re: [PATCH v2 2/4] dt-bindings: remoteproc: Add bindings for C66x
 DSPs on TI K3 SoCs
To: Rob Herring <robh@kernel.org>
References: <20200521001006.2725-1-s-anna@ti.com>
 <20200521001006.2725-3-s-anna@ti.com> <20200528223228.GA785633@bogus>
From: Suman Anna <s-anna@ti.com>
Message-ID: <594b649d-eca6-1cd4-3621-c8297a6a9492@ti.com>
Date: Thu, 28 May 2020 17:47:55 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200528223228.GA785633@bogus>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_154808_911686_28548D52 
X-CRM114-Status: GOOD (  30.85  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Lokesh Vutla <lokeshvutla@ti.com>, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

On 5/28/20 5:32 PM, Rob Herring wrote:
> On Wed, May 20, 2020 at 07:10:04PM -0500, Suman Anna wrote:
>> Some Texas Instruments K3 family of SoCs have one of more Digital Signal
>> Processor (DSP) subsystems that are comprised of either a TMS320C66x
>> CorePac and/or a next-generation TMS320C71x CorePac processor subsystem.
>> Add the device tree bindings document for the C66x DSP devices on these
>> SoCs. The added example illustrates the DT nodes for the first C66x DSP
>> device present on the K3 J721E family of SoCs.
>>
>> Signed-off-by: Suman Anna <s-anna@ti.com>
>> ---
>> v2:
>>   - Updated the example to include the root-node to fix the bot errors from v1
> 
> Pretty sure that was not why you had errors.

It is because of the default values used for #address-cells and 
#size-cells in the example_template and example_start variables used in 
the dt-extract-example script. They are 1 by default, so the generated 
template ended up with the root-node using 1, and the actual example 
using 2 resulting in the mismatch.

When I updated the script to use 2 for both #address-cells and 
#size-cells, then the warnings go away. This is the reason, dtbs_check 
on my actual dts files goes through fine.

> 
>>   - Added maxItems to resets, mboxes, memory-region, sram properties
>>   - Changed the ti,sci-proc-ids $ref to uint-array from uint-matrix
>>   - Addressed the minor review comments from Mathieu
>> v1: https://patchwork.kernel.org/patch/11458571/
>>
>>   .../bindings/remoteproc/ti,k3-dsp-rproc.yaml  | 190 ++++++++++++++++++
>>   1 file changed, 190 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml b/Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml
>> new file mode 100644
>> index 000000000000..cdf649655838
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml
>> @@ -0,0 +1,190 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only or BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/remoteproc/ti,k3-dsp-rproc.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: TI K3 DSP devices
>> +
>> +maintainers:
>> +  - Suman Anna <s-anna@ti.com>
>> +
>> +description: |
>> +  The TI K3 family of SoCs usually have one or more TI DSP Core sub-systems
>> +  that are used to offload some of the processor-intensive tasks or algorithms,
>> +  for achieving various system level goals.
>> +
>> +  These processor sub-systems usually contain additional sub-modules like
>> +  L1 and/or L2 caches/SRAMs, an Interrupt Controller, an external memory
>> +  controller, a dedicated local power/sleep controller etc. The DSP processor
>> +  cores in the K3 SoCs are usually either a TMS320C66x CorePac processor or a
>> +  TMS320C71x CorePac processor.
>> +
>> +  Each DSP Core sub-system is represented as a single DT node. Each node has a
>> +  number of required or optional properties that enable the OS running on the
>> +  host processor (Arm CorePac) to perform the device management of the remote
>> +  processor and to communicate with the remote processor.
>> +
>> +properties:
>> +  compatible:
>> +    const: ti,j721e-c66-dsp
>> +    description:
>> +      Use "ti,j721e-c66-dsp" for C66x DSPs on K3 J721E SoCs
> 
> What else are you going to use? There's only one compatible string. Drop
> description.

Is updated in a subsequent binding update where I added the C71 support.

> 
>> +
>> +  reg:
>> +    description: |
>> +      Should contain an entry for each value in 'reg-names'.
>> +      Each entry should have the memory region's start address
>> +      and the size of the region, the representation matching
>> +      the parent node's '#address-cells' and '#size-cells' values.
> 
> Don't need generic descriptions. That's every 'reg'.
> 
> What you can do is an 'items' list describing what each region is.

OK, I am bit confused here. I have listed the items under the reg-names, 
while using just the minItems or maxItems here. What is the convention, 
aren't reg and reg-names associative.

> 
>> +    minItems: 3
>> +    maxItems: 3
>> +
>> +  reg-names:
>> +    description: |
>> +      Should contain strings with the names of the specific internal
>> +      memory regions, and should be defined in this order
> 
> Again, drop.

OK

> 
>> +    maxItems: 3
>> +    items:
>> +      - const: l2sram
>> +      - const: l1pram
>> +      - const: l1dram
>> +
>> +  ti,sci:
>> +    $ref: /schemas/types.yaml#/definitions/phandle
>> +    description:
>> +      Should be a phandle to the TI-SCI System Controller node
>> +
>> +  ti,sci-dev-id:
>> +    $ref: /schemas/types.yaml#/definitions/uint32
>> +    description: |
>> +      Should contain the TI-SCI device id corresponding to the DSP core.
>> +      Please refer to the corresponding System Controller documentation
>> +      for valid values for the DSP cores.
>> +
>> +  ti,sci-proc-ids:
>> +    description: Should contain a single tuple of <proc_id host_id>.
>> +    allOf:
>> +      - $ref: /schemas/types.yaml#/definitions/uint32-array
>> +      - maxItems: 1
>> +        items:
>> +          items:
>> +            - description: TI-SCI processor id for the DSP core device
>> +            - description: TI-SCI host id to which processor control
>> +                           ownership should be transferred to
> 
> I assume these properties appear in multiple TI nodes? We don't need
> them defined multiple times. Create a schema for them that you can
> include here.

Only the remoteprocs, so they are limited to this binding and one more 
R5F remoteproc binding.

> 
>> +
>> +  resets:
>> +    description: |
>> +      Should contain the phandle to the reset controller node
>> +      managing the local resets for this device, and a reset
>> +      specifier. Please refer to the following reset bindings
>> +      for the reset argument specifier,
>> +      Documentation/devicetree/bindings/reset/ti,sci-reset.txt
> 
> Drop.

Entire description or just the reference to the reset bindings file?

> 
>> +    maxItems: 1
>> +
>> +  firmware-name:
>> +    description: |
>> +      Should contain the name of the default firmware image
>> +      file located on the firmware search path
>> +
>> +  mboxes:
>> +    description: |
>> +      OMAP Mailbox specifier denoting the sub-mailbox, to be used for
>> +      communication with the remote processor. This property should match
>> +      with the sub-mailbox node used in the firmware image. The specifier
>> +      format is as per the bindings,
>> +      Documentation/devicetree/bindings/mailbox/omap-mailbox.txt
> 
> Drop. What mailbox provider is used is outside the scope of this
> binding.

OK.

> 
>> +    maxItems: 1
>> +
>> +  memory-region:
>> +    minItems: 2
>> +    maxItems: 8
>> +    description: |
>> +      phandle to the reserved memory nodes to be associated with the remoteproc
>> +      device. There should be at least two reserved memory nodes defined - the
>> +      first one would be used for dynamic DMA allocations like vrings and vring
>> +      buffers, and the remaining ones used for the firmware image sections. The
>> +      reserved memory nodes should be carveout nodes, and should be defined as
>> +      per the bindings in
>> +      Documentation/devicetree/bindings/reserved-memory/reserved-memory.txt
> 
> items:
>    - description: dynamic DMA allocations like vrings and vring buffers
>    - description: firmware image section ???
>    - description: firmware image section ???

Yeah, this is scalable if we will have multiple separate DDR regions. I 
had to choose a decent maxItems value, so I chose 8. Wouldn't listing 
the individual items override the number of minItems/maxItems?

> 
>> +
>> +# Optional properties:
>> +# --------------------
>> +
>> +  sram:
>> +    $ref: /schemas/types.yaml#/definitions/phandle-array
>> +    minItems: 1
>> +    maxItems: 4
>> +    description: |
>> +      phandles to one or more reserved on-chip SRAM regions. The regions
>> +      should be defined as child nodes of the respective SRAM node, and
>> +      should be defined as per the generic bindings in,
>> +      Documentation/devicetree/bindings/sram/sram.yaml
>> +
>> +required:
>> + - compatible
>> + - reg
>> + - reg-names
>> + - ti,sci
>> + - ti,sci-dev-id
>> + - ti,sci-proc-ids
>> + - resets
>> + - firmware-name
>> + - mboxes
>> + - memory-region
>> +
>> +additionalProperties: false
>> +
>> +examples:
>> +  - |
>> +    / {
>> +        model = "Texas Instruments K3 J721E SoC";
>> +        compatible = "ti,j721e";
>> +        #address-cells = <2>;
>> +        #size-cells = <2>;
>> +
>> +        /* DSP Carveout reserved memory nodes */
>> +        reserved-memory {
>> +            #address-cells = <2>;
>> +            #size-cells = <2>;
>> +            ranges;
>> +
>> +            c66_0_dma_memory_region: c66-dma-memory@a6000000 {
>> +                compatible = "shared-dma-pool";
>> +                reg = <0x00 0xa6000000 0x00 0x100000>;
>> +                no-map;
>> +            };
>> +
>> +            c66_0_memory_region: c66-memory@a6100000 {
>> +                compatible = "shared-dma-pool";
>> +                reg = <0x00 0xa6100000 0x00 0xf00000>;
>> +                no-map;
>> +            };
>> +        };
> 
> Drop all of this. Outside the scope of this binding. And will likely
> start failing validation as schemas become more complete.

This is a complete example because of the memory-region references below.

> 
>> +
>> +        cbass_main: bus@100000 {
> 
> Drop unused labels.

OK.

regards
Suman

> 
>> +            compatible = "simple-bus";
>> +            #address-cells = <2>;
>> +            #size-cells = <2>;
>> +            ranges = <0x00 0x00100000 0x00 0x00100000 0x00 0x00020000>, /* ctrl mmr */
>> +                     <0x4d 0x80800000 0x4d 0x80800000 0x00 0x00800000>, /* C66_0 */
>> +                     <0x4d 0x81800000 0x4d 0x81800000 0x00 0x00800000>; /* C66_1 */
>> +
>> +            /* J721E C66_0 DSP node */
>> +            c66_0: dsp@4d80800000 {
>> +                compatible = "ti,j721e-c66-dsp";
>> +                reg = <0x4d 0x80800000 0x00 0x00048000>,
>> +                      <0x4d 0x80e00000 0x00 0x00008000>,
>> +                      <0x4d 0x80f00000 0x00 0x00008000>;
>> +                reg-names = "l2sram", "l1pram", "l1dram";
>> +                ti,sci = <&dmsc>;
>> +                ti,sci-dev-id = <142>;
>> +                ti,sci-proc-ids = <0x03 0xFF>;
>> +                resets = <&k3_reset 142 1>;
>> +                firmware-name = "j7-c66_0-fw";
>> +                memory-region = <&c66_0_dma_memory_region>,
>> +                                <&c66_0_memory_region>;
>> +                mboxes = <&mailbox0_cluster3 &mbox_c66_0>;
>> +            };
>> +        };
>> +    };
>> -- 
>> 2.26.0
>>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
