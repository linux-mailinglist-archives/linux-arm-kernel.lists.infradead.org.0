Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36F6B28146
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 17:33:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SVAlKc8idQgCv+1YZlghtuzcfM8po1T1yi/XQLf1VsM=; b=HGwsnDz7H0fy3Y
	3xu32QQ4Ux4UpmpboRDljEuu6A9yD6+4bOdIYzhGkZhsUB5105EMnvR4H6NzFQ64iZoEKBMi97pbY
	wVLBli7mIxi9HjkhvZUCdFirx1JjqSpg816+Ig7ONBlgJemt5CI3fDaAw3mgXbysd0J2EbIum6rbQ
	lhm0M/xvJVl0ksLeoxDWv2CkcYhWlHRtAcJx7MKqMaZYCwZ/ZuudMcTZCfuAToo/YeaSQGgjfdZBt
	5ISwGCY3+eO/US8dlnw/uKgQuWtGSxyxIaMbZ9u4pElsbKeQac41gjYzzQ5hJKXcwwQmT1eYj4fLj
	CaMmbzOthWpi+xJjDEJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTpih-00084E-Ba; Thu, 23 May 2019 15:33:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTpia-00083q-78
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 15:33:22 +0000
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com
 [209.85.160.180])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A806D2175B
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 May 2019 15:33:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558625599;
 bh=pK06W6Khp2A9bS7hg6zfOWq3NEPsPlOiVm2sNd9iGio=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=gsEB9Nce/T7GG5lcg1h2gtjs+DVAlmPaqOvq1CoqNGWmE71Gqv5QALi85dSXfLvIY
 IFaBpxyzk9PDoWVaTG9M65ZCF2392DSRkuW04PyW5yoyPyiF9f3/KrEsubnQokdBXZ
 KX9yibdwIoJ4zD6LvgT3lhYfaftoZHVxyF9VV4Kc=
Received: by mail-qt1-f180.google.com with SMTP id y42so7224297qtk.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 May 2019 08:33:19 -0700 (PDT)
X-Gm-Message-State: APjAAAWX4Sw8JCbYfJhmiWOOZIDan84oxJGyZ8IMd77Ap8VKJwTXrHK5
 ZygUNlw08QXzOSUQoyVTYsqUFfcmznLoPghpjQ==
X-Google-Smtp-Source: APXvYqxmk9tWHMyXlxe8R8ZEm/PUBeh0QKQIBKhY6eDTBLlwjNLbp3m7nS0qIQK5B/jyVvom8wzhQUmUttjAex3hjvU=
X-Received: by 2002:a0c:8aad:: with SMTP id 42mr78400305qvv.200.1558625598868; 
 Thu, 23 May 2019 08:33:18 -0700 (PDT)
MIME-Version: 1.0
References: <74d98cc3c744d53710c841381efd41cf5f15e656.1558605170.git-series.maxime.ripard@bootlin.com>
 <ba1a5d8ad34a8c9ab99f504c04fbe65bde42081b.1558605170.git-series.maxime.ripard@bootlin.com>
In-Reply-To: <ba1a5d8ad34a8c9ab99f504c04fbe65bde42081b.1558605170.git-series.maxime.ripard@bootlin.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 23 May 2019 10:33:05 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLrE31vWVhApGgr8JU56sDc1TWWm9HiH=Z-tn5C1GwXQA@mail.gmail.com>
Message-ID: <CAL_JsqLrE31vWVhApGgr8JU56sDc1TWWm9HiH=Z-tn5C1GwXQA@mail.gmail.com>
Subject: Re: [PATCH 6/8] dt-bindings: net: stmmac: Convert the binding to a
 schemas
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_083320_296502_48B3C53B 
X-CRM114-Status: GOOD (  32.30  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Alexandre Torgue <alexandre.torgue@st.com>,
 =?UTF-8?Q?Antoine_T=C3=A9nart?= <antoine.tenart@bootlin.com>,
 netdev <netdev@vger.kernel.org>, linux-stm32@st-md-mailman.stormreply.com,
 Chen-Yu Tsai <wens@csie.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Frank Rowand <frowand.list@gmail.com>,
 "David S . Miller" <davem@davemloft.net>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 4:57 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> Switch the STMMAC / Synopsys DesignWare MAC controller binding to a YAML
> schema to enable the DT validation.

You picked an easy one. ;)

>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---
>  Documentation/devicetree/bindings/net/snps,dwmac.yaml | 344 +++++++++++-
>  Documentation/devicetree/bindings/net/stmmac.txt      | 179 +------
>  2 files changed, 345 insertions(+), 178 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/net/snps,dwmac.yaml
>
> diff --git a/Documentation/devicetree/bindings/net/snps,dwmac.yaml b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
> new file mode 100644
> index 000000000000..be3ada5121e1
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
> @@ -0,0 +1,344 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/net/snps,dwmac.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Synopsys DesignWare MAC Device Tree Bindings
> +
> +maintainers:
> +  - Alexandre Torgue <alexandre.torgue@st.com>
> +  - Giuseppe Cavallaro <peppe.cavallaro@st.com>
> +  - Jose Abreu <joabreu@synopsys.com>
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - const: snps,dwmac
> +      - const: snps,dwmac-3.50a
> +      - const: snps,dwmac-3.610
> +      - const: snps,dwmac-3.70a
> +      - const: snps,dwmac-3.710
> +      - const: snps,dwmac-4.00
> +      - const: snps,dwmac-4.10a
> +      - const: snps,dwxgmac
> +      - const: snps,dwxgmac-2.10
> +      - const: st,spear600-gmac
> +        description: Deprecated

Like the other, just make this an enum.

Though, what to do on deprecated things? If we expect dts files to be
updated, then we should remove or disallow in the schema (e.g. 'prop:
false' for properties). The issue with updating dts files, is it may
break old kernels with new dtbs.

> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    minItems: 1
> +    maxItems: 3
> +    items:
> +      - description: Combined signal for various interrupt events
> +      - description: The interrupt to manage the remote wake-up packet detection
> +      - description: The interrupt that occurs when Rx exits the LPI state
> +
> +  interrupt-names:
> +    minItems: 1
> +    maxItems: 3
> +    items:
> +      - const: macirq
> +      - const: eth_wake_irq
> +      - const: eth_lpi
> +
> +  clocks:
> +    minItems: 1
> +    maxItems: 3
> +    items:
> +      - description: GMAC main clock
> +      - description: Peripheral registers interface clock
> +      - description:
> +          PTP reference clock. This clock is used for programming the
> +          Timestamp Addend Register. If not passed then the system
> +          clock will be used and this is fine on some platforms.
> +
> +  clock-names:
> +    additionalItems: true

That's not ideal, but what I'd expect on this one.

> +    contains:
> +      enum:
> +        - stmmaceth
> +        - pclk
> +        - ptp_ref
> +
> +  resets:
> +    maxItems: 1
> +    description:
> +      MAC Reset signal.
> +
> +  reset-names:
> +    const: stmmaceth
> +
> +  snps,axi-config:
> +    $ref: /schemas/types.yaml#definitions/phandle
> +    description:
> +      AXI BUS Mode parameters. Phandle to a node that can contain the
> +      following properties
> +        * snps,lpi_en, enable Low Power Interface
> +        * snps,xit_frm, unlock on WoL
> +        * snps,wr_osr_lmt, max write outstanding req. limit
> +        * snps,rd_osr_lmt, max read outstanding req. limit
> +        * snps,kbbe, do not cross 1KiB boundary.
> +        * snps,blen, this is a vector of supported burst length.
> +        * snps,fb, fixed-burst
> +        * snps,mb, mixed-burst
> +        * snps,rb, rebuild INCRx Burst

This obviously needs its own schema, but that can come latter.

> +
> +  snps,mtl-rx-config:
> +    $ref: /schemas/types.yaml#definitions/phandle
> +    description:
> +      Multiple RX Queues parameters. Phandle to a node that can
> +      contain the following properties
> +        * snps,rx-queues-to-use, number of RX queues to be used in the
> +          driver
> +        * Choose one of these RX scheduling algorithms
> +          * snps,rx-sched-sp, Strict priority
> +          * snps,rx-sched-wsp, Weighted Strict priority
> +        * For each RX queue
> +          * Choose one of these modes
> +            * snps,dcb-algorithm, Queue to be enabled as DCB
> +            * snps,avb-algorithm, Queue to be enabled as AVB
> +          * snps,map-to-dma-channel, Channel to map
> +          * Specifiy specific packet routing
> +            * snps,route-avcp, AV Untagged Control packets
> +            * snps,route-ptp, PTP Packets
> +            * snps,route-dcbcp, DCB Control Packets
> +            * snps,route-up, Untagged Packets
> +            * snps,route-multi-broad, Multicast & Broadcast Packets
> +          * snps,priority, RX queue priority (Range 0x0 to 0xF)

This too.

> +
> +  snps,mtl-tx-config:
> +    $ref: /schemas/types.yaml#definitions/phandle
> +    description:
> +      Multiple TX Queues parameters. Phandle to a node that can
> +      contain the following properties
> +        * snps,tx-queues-to-use, number of TX queues to be used in the
> +          driver
> +        * Choose one of these TX scheduling algorithms
> +          * snps,tx-sched-wrr, Weighted Round Robin
> +          * snps,tx-sched-wfq, Weighted Fair Queuing
> +          * snps,tx-sched-dwrr, Deficit Weighted Round Robin
> +          * snps,tx-sched-sp, Strict priority
> +        * For each TX queue
> +          * snps,weight, TX queue weight (if using a DCB weight
> +            algorithm)
> +          * Choose one of these modes
> +            * snps,dcb-algorithm, TX queue will be working in DCB
> +            * snps,avb-algorithm, TX queue will be working in AVB
> +              [Attention] Queue 0 is reserved for legacy traffic
> +                          and so no AVB is available in this queue.
> +          * Configure Credit Base Shaper (if AVB Mode selected)
> +            * snps,send_slope, enable Low Power Interface
> +            * snps,idle_slope, unlock on WoL
> +            * snps,high_credit, max write outstanding req. limit
> +            * snps,low_credit, max read outstanding req. limit
> +          * snps,priority, TX queue priority (Range 0x0 to 0xF)
> +
> +  snps,reset-gpio:
> +    description:
> +      PHY Reset GPIO

maxItems: 1

> +
> +  snps,reset-active-low:
> +    $ref: /schemas/types.yaml#definitions/flag
> +    description:
> +      Indicates that the PHY Reset is active low

Would be nice to deprecate these 2 properties for just 'reset-gpios'.
Though really, this should be in the phy node as this is a phy reset.

> +
> +  snps,reset-delay-us:
> +    allOf:
> +      - $ref: /schemas/types.yaml#definitions/uint32-array
> +      - minItems: 3
> +        maxItems: 3
> +    description:
> +      Triplet of delays. The 1st cell is reset pre-delay in micro
> +      seconds. The 2nd cell is reset pulse in micro seconds. The 3rd
> +      cell is reset post-delay in micro seconds.
> +
> +  snps,aal:
> +    $ref: /schemas/types.yaml#definitions/flag
> +    description:
> +      Use Address-Aligned Beats
> +
> +  snps,fixed-burst:
> +    $ref: /schemas/types.yaml#definitions/flag
> +    description:
> +      Program the DMA to use the fixed burst mode
> +
> +  snps,mixed-burst:
> +    $ref: /schemas/types.yaml#definitions/flag
> +    description:
> +      Program the DMA to use the mixed burst mode
> +
> +  snps,force_thresh_dma_mode:
> +    $ref: /schemas/types.yaml#definitions/flag
> +    description:
> +      Force DMA to use the threshold mode for both tx and rx
> +
> +  snps,force_sf_dma_mode:
> +    $ref: /schemas/types.yaml#definitions/flag
> +    description:
> +      Force DMA to use the Store and Forward mode for both tx and
> +      rx. This flag is ignored if force_thresh_dma_mode is set.
> +
> +  snps,en-tx-lpi-clockgating:
> +    $ref: /schemas/types.yaml#definitions/flag
> +    description:
> +      Enable gating of the MAC TX clock during TX low-power mode
> +
> +  snps,multicast-filter-bins:
> +    $ref: /schemas/types.yaml#definitions/uint32
> +    description:
> +      Number of multicast filter hash bins supported by this device
> +      instance
> +
> +  snps,perfect-filter-entries:
> +    $ref: /schemas/types.yaml#definitions/uint32
> +    description:
> +      Number of perfect filter entries supported by this device
> +      instance
> +
> +  snps,ps-speed:
> +    $ref: /schemas/types.yaml#definitions/uint32
> +    description:
> +      Port selection speed that can be passed to the core when PCS
> +      is supported. For example, this is used in case of SGMII and
> +      MAC2MAC connection.
> +
> +  mdio:
> +    type: object
> +    description:
> +      Creates and registers an MDIO bus.
> +
> +    properties:
> +      compatible:
> +        const: snps,dwmac-mdio

required?

> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - interrupt-names
> +  - phy-mode
> +
> +dependencies:
> +  snps,reset-active-low: ["snps,reset-gpio"]
> +  snps,reset-delay-us: ["snps,reset-gpio"]
> +
> +allOf:
> +  - $ref: "ethernet-controller.yaml#"
> +  - if:
> +      properties:
> +        compatible:
> +          enum:
> +            - snps,dwxgmac
> +            - snps,dwxgmac-2.10
> +            - st,spear600-gmac
> +
> +    then:
> +      properties:
> +        snps,pbl:
> +          allOf:
> +            - $ref: /schemas/types.yaml#definitions/uint32-array
> +            - enum: [2, 4, 8]
> +          description:
> +            Programmable Burst Length (tx and rx)
> +
> +        snps,txpbl:
> +          allOf:
> +            - $ref: /schemas/types.yaml#definitions/uint32-array
> +            - enum: [2, 4, 8]
> +          description:
> +            Tx Programmable Burst Length. If set, DMA tx will use this
> +            value rather than snps,pbl.
> +
> +        snps,rxpbl:
> +          allOf:
> +            - $ref: /schemas/types.yaml#definitions/uint32-array
> +            - enum: [2, 4, 8]
> +          description:
> +            Rx Programmable Burst Length. If set, DMA rx will use this
> +            value rather than snps,pbl.
> +
> +        snps,no-pbl-x8:
> +          $ref: /schemas/types.yaml#definitions/flag
> +          description:
> +            Don\'t multiply the pbl/txpbl/rxpbl values by 8. For core
> +            rev < 3.50, don\'t multiply the values by 4.
> +
> +        snps,tso:
> +          $ref: /schemas/types.yaml#definitions/flag
> +          description:
> +            Enables the TSO feature otherwise it will be managed by
> +            MAC HW capability register. Only for GMAC4 and newer.
> +
> +examples:
> +  - |
> +    stmmac_axi_setup: stmmac-axi-config {
> +        snps,wr_osr_lmt = <0xf>;
> +        snps,rd_osr_lmt = <0xf>;
> +        snps,blen = <256 128 64 32 0 0 0>;
> +    };
> +
> +    mtl_rx_setup: rx-queues-config {
> +        snps,rx-queues-to-use = <1>;
> +        snps,rx-sched-sp;
> +        queue0 {
> +            snps,dcb-algorithm;
> +            snps,map-to-dma-channel = <0x0>;
> +            snps,priority = <0x0>;
> +        };
> +    };
> +
> +    mtl_tx_setup: tx-queues-config {
> +        snps,tx-queues-to-use = <2>;
> +        snps,tx-sched-wrr;
> +        queue0 {
> +            snps,weight = <0x10>;
> +            snps,dcb-algorithm;
> +            snps,priority = <0x0>;
> +        };
> +
> +        queue1 {
> +            snps,avb-algorithm;
> +            snps,send_slope = <0x1000>;
> +            snps,idle_slope = <0x1000>;
> +            snps,high_credit = <0x3E800>;
> +            snps,low_credit = <0xFFC18000>;
> +            snps,priority = <0x1>;
> +        };
> +    };
> +
> +    gmac0: ethernet@e0800000 {
> +        compatible = "st,spear600-gmac";
> +        reg = <0xe0800000 0x8000>;
> +        interrupt-parent = <&vic1>;
> +        interrupts = <24 23 22>;
> +        interrupt-names = "macirq", "eth_wake_irq", "eth_lpi";
> +        mac-address = [000000000000]; /* Filled in by U-Boot */
> +        max-frame-size = <3800>;
> +        phy-mode = "gmii";
> +        snps,multicast-filter-bins = <256>;
> +        snps,perfect-filter-entries = <128>;
> +        rx-fifo-depth = <16384>;
> +        tx-fifo-depth = <16384>;
> +        clocks = <&clock>;
> +        clock-names = "stmmaceth";
> +        snps,axi-config = <&stmmac_axi_setup>;
> +        snps,mtl-rx-config = <&mtl_rx_setup>;
> +        snps,mtl-tx-config = <&mtl_tx_setup>;
> +        mdio0 {
> +            #address-cells = <1>;
> +            #size-cells = <0>;
> +            compatible = "snps,dwmac-mdio";
> +            phy1: ethernet-phy@0 {
> +            };
> +        };
> +    };
> +
> +# FIXME: We should set it, but it would report all the generic
> +# properties as additional properties.
> +# additionalProperties: false
> +
> +...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
