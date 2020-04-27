Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9AF81BAE6F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 21:49:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jTQFhKo3BA4lsCxrI7juQlLTHEfDWE3A8FrunRoYBfY=; b=RSCI7KVcLhSrvH
	bxPJu3NVrtBOysqF7EQGG1DqPXLIdqk7iuabAbcJ1FItYqD5QxGHNfVrgJlxxTK8mZGd0gZqbwecE
	8S9YE590e1v8nTnnx84b2epB+2JBSfv6wHEiWprhtxL6BOwyoh3tQllqJg9we9OYQRIBCBq+p/Scx
	qfWHFWiMQGLwW1k2LpH5pNlYCywB1bk13f+HeMyLr2aCuW9skiNI0atLasCaZKAv9Bl3Y9o8rtHTv
	KXsU0+EzHrmG5jhu6F948oXxFAtv9zSqpMudQzgBF4HDY/JSgc0SrVTlC+vW/C4y8ViMiafO3hl8b
	iRrHG4qAmbT+LpBZvHcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT9l3-0002PF-7L; Mon, 27 Apr 2020 19:49:37 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT9kk-0002Nr-Ua
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 19:49:29 +0000
Received: by mail-pj1-x1041.google.com with SMTP id hi11so81611pjb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 12:49:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=jEerkCT9TzKSUHSlKdk8mBv+MQGjDxFrB8vo7AAG6JU=;
 b=aDNtRS5fEYc2xcdaMDa/QNBMD/BsPucouNMYbVlDpQONpV26D2tuBVwj6JPoc5/Pry
 KdGXM5xJoeKU5AMeIf3ENbpBb8KlonA9Xry72AnuALLKcto9mCZt2tnNRy4aGMsPWfNF
 jsOjGNOUiCnrmVh84ellq+Ju3o4+oa2iq0N4+NjBbrMsXHrJOZAJpYV6MLNtGPDq4ltU
 rZ0asxAM31wIIcsGC+b9xDyy47396WcXJRwX++XBx09cQgLMGOEzQNMSVSkz5Z0+v/vH
 6nn8y0dpauXUafz/9wvckLtOiO2Jas7HuErUVTf0Tao6GHYUB8h2BTtrojmEr9etkanl
 TLhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=jEerkCT9TzKSUHSlKdk8mBv+MQGjDxFrB8vo7AAG6JU=;
 b=qnEpljS5xOTWDU9nOTenxMCq/ibm2DDZ+GhAW7sb5DgGxXpDm3nvc3wTdX2+Av1j5X
 8Wu87HIITgywwX6BGKtqFzbLsp5H/DgN7MH9AYyNh5X7RLf9hCNSYkxb2/HIHsuhRuys
 SFOAZy9bFWvqyRHZzucWQlXRkL3aNQlFH8WgY4iGOgx68FYSUmTgoJjvL66UWVF995j2
 n2IVb6WadZechI3YvrL9Avq8QhcSamiqkRRFvaApITBRe3t0UnuaGaBKIUSP1OhTDFY+
 zqx08Ddg0ZcUUel3hK2tmT12tDwhf7JGfQmOXHxXxu+YdN7vLe3v6vo7j+F4gODZXPYb
 zQBQ==
X-Gm-Message-State: AGi0PuarwcRP3PNMtxIUexdA9FIMQAOxZmHUx2QjzFurnWmGM2NcTMMW
 oIOYv1nuHhEnhS7fA82PoZqWuQ==
X-Google-Smtp-Source: APiQypKoHMXhC7ldZltP3zeeHiihA+8rUs3muVExUWi1iQdL4LAmPnhL/gnjMXhSDCVSdoydpXLszw==
X-Received: by 2002:a17:90a:d703:: with SMTP id y3mr375417pju.75.1588016958305; 
 Mon, 27 Apr 2020 12:49:18 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id 184sm13502817pfy.144.2020.04.27.12.49.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Apr 2020 12:49:17 -0700 (PDT)
Date: Mon, 27 Apr 2020 13:49:15 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Suman Anna <s-anna@ti.com>
Subject: Re: [PATCH 1/3] dt-bindings: remoteproc: Add bindings for C66x DSPs
 on TI K3 SoCs
Message-ID: <20200427194915.GA10552@xps15>
References: <20200325201839.15896-1-s-anna@ti.com>
 <20200325201839.15896-2-s-anna@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200325201839.15896-2-s-anna@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_124927_351535_1E4F5434 
X-CRM114-Status: GOOD (  27.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Lokesh Vutla <lokeshvutla@ti.com>,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Suman,

I have started to review this set - comments will come over the next few days.

On Wed, Mar 25, 2020 at 03:18:37PM -0500, Suman Anna wrote:
> Some Texas Instruments K3 family of SoCs have one of more Digital Signal
> Processor (DSP) subsystems that are comprised of either a TMS320C66x
> CorePac and/or a next-generation TMS320C71x CorePac processor subsystem.
> Add the device tree bindings document for the C66x DSP devices on these
> SoCs. The added example illustrates the DT nodes for the first C66x DSP
> device present on the K3 J721E family of SoCs.
> 
> Signed-off-by: Suman Anna <s-anna@ti.com>
> ---
>  .../bindings/remoteproc/ti,k3-dsp-rproc.yaml  | 180 ++++++++++++++++++
>  1 file changed, 180 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml
> 
> diff --git a/Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml b/Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml
> new file mode 100644
> index 000000000000..416e3abe7937
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml
> @@ -0,0 +1,180 @@
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
> +
> +  reg:
> +    description: |
> +      Should contain an entry for each value in 'reg-names'.
> +      Each entry should have the memory region's start address
> +      and the size of the region, the representation matching
> +      the parent node's '#address-cells' and '#size-cells' values.
> +    minItems: 3
> +    maxItems: 3
> +
> +  reg-names:
> +    description: |
> +      Should contain strings with the names of the specific internal
> +      internal memory regions, and should be defined in this order

The word "internal" is found twice in a row.

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
> +      - $ref: /schemas/types.yaml#/definitions/uint32-matrix
> +      - maxItems: 1
> +        items:
> +          items:
> +            - description: TI-SCI processor id for the DSP core device
> +            - description: TI-SCI host id to which processor control
> +                           ownership should be transferred to
> +
> +  resets:
> +    description: |
> +      Should contain the phandle to the reset controller node
> +      managing the resets for this device, and a reset
> +      specifier. Please refer to the following reset bindings
> +      for the reset argument specifier,
> +      Documentation/devicetree/bindings/reset/ti,sci-reset.txt
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
> +
> +  memory-region:
> +    minItems: 2
> +    description: |
> +      phandle to the reserved memory nodes to be associated with the remoteproc
> +      device. There should be atleast two reserved memory nodes defined - the
> +      first one would be used for dynamic DMA allocations like vrings and vring
> +      buffers, and the remaining ones used for the firmware image sections. The
> +      reserved memory nodes should be carveout nodes, and should be defined as
> +      per the bindings in
> +      Documentation/devicetree/bindings/reserved-memory/reserved-memory.txt
> +
> +# Optional properties:
> +# --------------------
> +
> +  sram:
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +    minItems: 1
> +    description: |
> +      pHandles to one or more reserved on-chip SRAM regions. The regions

s/pHandle/phandle

Thanks,
Mathieu

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
> +
> +    //Example: J721E SoC
> +    /* DSP Carveout reserved memory nodes */
> +    reserved-memory {
> +        #address-cells = <2>;
> +        #size-cells = <2>;
> +        ranges;
> +
> +        c66_0_dma_memory_region: c66-dma-memory@a6000000 {
> +            compatible = "shared-dma-pool";
> +            reg = <0x00 0xa6000000 0x00 0x100000>;
> +            no-map;
> +        };
> +
> +        c66_0_memory_region: c66-memory@a6100000 {
> +            compatible = "shared-dma-pool";
> +            reg = <0x00 0xa6100000 0x00 0xf00000>;
> +            no-map;
> +        };
> +    };
> +
> +    cbass_main: interconnect@100000 {
> +        compatible = "simple-bus";
> +        #address-cells = <2>;
> +        #size-cells = <2>;
> +        ranges = <0x4d 0x80800000 0x4d 0x80800000 0x00 0x00800000>, /* C66_0 */
> +                 <0x4d 0x81800000 0x4d 0x81800000 0x00 0x00800000>; /* C66_1 */
> +
> +        /* J721E C66_0 DSP node */
> +        c66_0: dsp@4d80800000 {
> +            compatible = "ti,j721e-c66-dsp";
> +            reg = <0x4d 0x80800000 0x00 0x00048000>,
> +                  <0x4d 0x80e00000 0x00 0x00008000>,
> +                  <0x4d 0x80f00000 0x00 0x00008000>;
> +            reg-names = "l2sram", "l1pram", "l1dram";
> +            ti,sci = <&dmsc>;
> +            ti,sci-dev-id = <142>;
> +            ti,sci-proc-ids = <0x03 0xFF>;
> +            resets = <&k3_reset 142 1>;
> +            firmware-name = "j7-c66_0-fw";
> +            memory-region = <&c66_0_dma_memory_region>,
> +                            <&c66_0_memory_region>;
> +            mboxes = <&mailbox0_cluster3 &mbox_c66_0>;
> +        };
> +    };
> -- 
> 2.23.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
