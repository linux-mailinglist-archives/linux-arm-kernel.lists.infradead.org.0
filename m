Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6766C1E6F18
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 00:32:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sp2R7e37jUXI5D8ydm5Uj2uOk9vwQVAA1QVutBnh7VA=; b=Pae0I5DbP7apTO
	MRGZzDwn8vWkXTfnnx4Pbs3TPB/kEBvg9+u+F6UgmTOgCpWPoXPeErT3U4k3HbYokNSQ6BG91ZGxf
	AvAWbfq6paSkZrUprrEAWIeBk58Xg93K6ShtyGV+Cbag3pF2WTcIJYOJF/660xYEPUiTnj+Nr24XV
	NRjQ6I1VtefDACMA9hkDcBQfNvcRYCxeRQX7YrZzlQMK8v7piHz1jUJmCWgkCypHcsbsVDE9xYNnQ
	MPCyZ8FGheNyhCqlu/qFQy/AGX+4wMrHxDlf6clv/mtN1zjXsDTAVCT7dBg8/c/n3ylifhfd33R4/
	IrSRXr/3unLrbuhRAEAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeR4p-0003WJ-JE; Thu, 28 May 2020 22:32:39 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeR4h-0003Vg-4s
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 22:32:33 +0000
Received: by mail-io1-f68.google.com with SMTP id r2so276128ioo.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 15:32:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=2iWkmtIIPdkQ7s2OlH5ICkwWkQE9JDegAoIkBuC4Mh8=;
 b=mFFGAgURWwm8UbkvK2LTpjVOie8vuH0pbGq03/dNvR1I0gvgsUOywza6VynW2AKNBU
 OdYUqYYY211adComMQ61SX1BacWaki+aAozLVMtQrW7eOIMrZzAxNO8K7jp/nnpxKK6r
 BZJglhgm0hw5UwF5A08YtCuJdFgS9Ew/nX/YNRqRtQALpQu0KyDTJoo2tx5yTg2ZsCPu
 N7nUJnGlWueAxepbDyZBJYcrOl8JF/jXSiEEqZB3dlY9i4ZMpQaU0V46zQaorssNy+bg
 LVLPXfFtKAvI67ZR+VQ6tx1fLQ3iFVHw/yO0iIGOxz3EfOT0sAcuOf5tuUY3UToR5SNr
 b2Yw==
X-Gm-Message-State: AOAM530eQ8dkY8c9ZwBNeV8sawbLQVET5pDuf/NUMeqK0b07m6sGThve
 uu/w1KDA16eyMnLWjkUm8w==
X-Google-Smtp-Source: ABdhPJwgO1mB4nZ0UFl0QlAt68U8U2JNLntupIY0/f1e3wwkTyNZyAnbKB9gbovv/3kUpAWC6z7GTw==
X-Received: by 2002:a5e:de03:: with SMTP id e3mr4247972iok.0.1590705150063;
 Thu, 28 May 2020 15:32:30 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id 4sm3980244ilc.34.2020.05.28.15.32.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 15:32:29 -0700 (PDT)
Received: (nullmailer pid 801318 invoked by uid 1000);
 Thu, 28 May 2020 22:32:28 -0000
Date: Thu, 28 May 2020 16:32:28 -0600
From: Rob Herring <robh@kernel.org>
To: Suman Anna <s-anna@ti.com>
Subject: Re: [PATCH v2 2/4] dt-bindings: remoteproc: Add bindings for C66x
 DSPs on TI K3 SoCs
Message-ID: <20200528223228.GA785633@bogus>
References: <20200521001006.2725-1-s-anna@ti.com>
 <20200521001006.2725-3-s-anna@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200521001006.2725-3-s-anna@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_153231_187267_513223C3 
X-CRM114-Status: GOOD (  29.01  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Mathieu Poirier <mathieu.poirier@linaro.org>,
 Lokesh Vutla <lokeshvutla@ti.com>, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 20, 2020 at 07:10:04PM -0500, Suman Anna wrote:
> Some Texas Instruments K3 family of SoCs have one of more Digital Signal
> Processor (DSP) subsystems that are comprised of either a TMS320C66x
> CorePac and/or a next-generation TMS320C71x CorePac processor subsystem.
> Add the device tree bindings document for the C66x DSP devices on these
> SoCs. The added example illustrates the DT nodes for the first C66x DSP
> device present on the K3 J721E family of SoCs.
> 
> Signed-off-by: Suman Anna <s-anna@ti.com>
> ---
> v2:
>  - Updated the example to include the root-node to fix the bot errors from v1

Pretty sure that was not why you had errors.

>  - Added maxItems to resets, mboxes, memory-region, sram properties
>  - Changed the ti,sci-proc-ids $ref to uint-array from uint-matrix
>  - Addressed the minor review comments from Mathieu
> v1: https://patchwork.kernel.org/patch/11458571/
> 
>  .../bindings/remoteproc/ti,k3-dsp-rproc.yaml  | 190 ++++++++++++++++++
>  1 file changed, 190 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml
> 
> diff --git a/Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml b/Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml
> new file mode 100644
> index 000000000000..cdf649655838
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml
> @@ -0,0 +1,190 @@
> +# SPDX-License-Identifier: (GPL-2.0-only or BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/remoteproc/ti,k3-dsp-rproc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: TI K3 DSP devices
> +
> +maintainers:
> +  - Suman Anna <s-anna@ti.com>
> +
> +description: |
> +  The TI K3 family of SoCs usually have one or more TI DSP Core sub-systems
> +  that are used to offload some of the processor-intensive tasks or algorithms,
> +  for achieving various system level goals.
> +
> +  These processor sub-systems usually contain additional sub-modules like
> +  L1 and/or L2 caches/SRAMs, an Interrupt Controller, an external memory
> +  controller, a dedicated local power/sleep controller etc. The DSP processor
> +  cores in the K3 SoCs are usually either a TMS320C66x CorePac processor or a
> +  TMS320C71x CorePac processor.
> +
> +  Each DSP Core sub-system is represented as a single DT node. Each node has a
> +  number of required or optional properties that enable the OS running on the
> +  host processor (Arm CorePac) to perform the device management of the remote
> +  processor and to communicate with the remote processor.
> +
> +properties:
> +  compatible:
> +    const: ti,j721e-c66-dsp
> +    description:
> +      Use "ti,j721e-c66-dsp" for C66x DSPs on K3 J721E SoCs

What else are you going to use? There's only one compatible string. Drop 
description.

> +
> +  reg:
> +    description: |
> +      Should contain an entry for each value in 'reg-names'.
> +      Each entry should have the memory region's start address
> +      and the size of the region, the representation matching
> +      the parent node's '#address-cells' and '#size-cells' values.

Don't need generic descriptions. That's every 'reg'.

What you can do is an 'items' list describing what each region is.

> +    minItems: 3
> +    maxItems: 3
> +
> +  reg-names:
> +    description: |
> +      Should contain strings with the names of the specific internal
> +      memory regions, and should be defined in this order

Again, drop.

> +    maxItems: 3
> +    items:
> +      - const: l2sram
> +      - const: l1pram
> +      - const: l1dram
> +
> +  ti,sci:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      Should be a phandle to the TI-SCI System Controller node
> +
> +  ti,sci-dev-id:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description: |
> +      Should contain the TI-SCI device id corresponding to the DSP core.
> +      Please refer to the corresponding System Controller documentation
> +      for valid values for the DSP cores.
> +
> +  ti,sci-proc-ids:
> +    description: Should contain a single tuple of <proc_id host_id>.
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32-array
> +      - maxItems: 1
> +        items:
> +          items:
> +            - description: TI-SCI processor id for the DSP core device
> +            - description: TI-SCI host id to which processor control
> +                           ownership should be transferred to

I assume these properties appear in multiple TI nodes? We don't need 
them defined multiple times. Create a schema for them that you can 
include here.

> +
> +  resets:
> +    description: |
> +      Should contain the phandle to the reset controller node
> +      managing the local resets for this device, and a reset
> +      specifier. Please refer to the following reset bindings
> +      for the reset argument specifier,
> +      Documentation/devicetree/bindings/reset/ti,sci-reset.txt

Drop.

> +    maxItems: 1
> +
> +  firmware-name:
> +    description: |
> +      Should contain the name of the default firmware image
> +      file located on the firmware search path
> +
> +  mboxes:
> +    description: |
> +      OMAP Mailbox specifier denoting the sub-mailbox, to be used for
> +      communication with the remote processor. This property should match
> +      with the sub-mailbox node used in the firmware image. The specifier
> +      format is as per the bindings,
> +      Documentation/devicetree/bindings/mailbox/omap-mailbox.txt

Drop. What mailbox provider is used is outside the scope of this 
binding.

> +    maxItems: 1
> +
> +  memory-region:
> +    minItems: 2
> +    maxItems: 8
> +    description: |
> +      phandle to the reserved memory nodes to be associated with the remoteproc
> +      device. There should be at least two reserved memory nodes defined - the
> +      first one would be used for dynamic DMA allocations like vrings and vring
> +      buffers, and the remaining ones used for the firmware image sections. The
> +      reserved memory nodes should be carveout nodes, and should be defined as
> +      per the bindings in
> +      Documentation/devicetree/bindings/reserved-memory/reserved-memory.txt

items:
  - description: dynamic DMA allocations like vrings and vring buffers
  - description: firmware image section ???
  - description: firmware image section ???

> +
> +# Optional properties:
> +# --------------------
> +
> +  sram:
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +    minItems: 1
> +    maxItems: 4
> +    description: |
> +      phandles to one or more reserved on-chip SRAM regions. The regions
> +      should be defined as child nodes of the respective SRAM node, and
> +      should be defined as per the generic bindings in,
> +      Documentation/devicetree/bindings/sram/sram.yaml
> +
> +required:
> + - compatible
> + - reg
> + - reg-names
> + - ti,sci
> + - ti,sci-dev-id
> + - ti,sci-proc-ids
> + - resets
> + - firmware-name
> + - mboxes
> + - memory-region
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    / {
> +        model = "Texas Instruments K3 J721E SoC";
> +        compatible = "ti,j721e";
> +        #address-cells = <2>;
> +        #size-cells = <2>;
> +
> +        /* DSP Carveout reserved memory nodes */
> +        reserved-memory {
> +            #address-cells = <2>;
> +            #size-cells = <2>;
> +            ranges;
> +
> +            c66_0_dma_memory_region: c66-dma-memory@a6000000 {
> +                compatible = "shared-dma-pool";
> +                reg = <0x00 0xa6000000 0x00 0x100000>;
> +                no-map;
> +            };
> +
> +            c66_0_memory_region: c66-memory@a6100000 {
> +                compatible = "shared-dma-pool";
> +                reg = <0x00 0xa6100000 0x00 0xf00000>;
> +                no-map;
> +            };
> +        };

Drop all of this. Outside the scope of this binding. And will likely 
start failing validation as schemas become more complete.

> +
> +        cbass_main: bus@100000 {

Drop unused labels.

> +            compatible = "simple-bus";
> +            #address-cells = <2>;
> +            #size-cells = <2>;
> +            ranges = <0x00 0x00100000 0x00 0x00100000 0x00 0x00020000>, /* ctrl mmr */
> +                     <0x4d 0x80800000 0x4d 0x80800000 0x00 0x00800000>, /* C66_0 */
> +                     <0x4d 0x81800000 0x4d 0x81800000 0x00 0x00800000>; /* C66_1 */
> +
> +            /* J721E C66_0 DSP node */
> +            c66_0: dsp@4d80800000 {
> +                compatible = "ti,j721e-c66-dsp";
> +                reg = <0x4d 0x80800000 0x00 0x00048000>,
> +                      <0x4d 0x80e00000 0x00 0x00008000>,
> +                      <0x4d 0x80f00000 0x00 0x00008000>;
> +                reg-names = "l2sram", "l1pram", "l1dram";
> +                ti,sci = <&dmsc>;
> +                ti,sci-dev-id = <142>;
> +                ti,sci-proc-ids = <0x03 0xFF>;
> +                resets = <&k3_reset 142 1>;
> +                firmware-name = "j7-c66_0-fw";
> +                memory-region = <&c66_0_dma_memory_region>,
> +                                <&c66_0_memory_region>;
> +                mboxes = <&mailbox0_cluster3 &mbox_c66_0>;
> +            };
> +        };
> +    };
> -- 
> 2.26.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
