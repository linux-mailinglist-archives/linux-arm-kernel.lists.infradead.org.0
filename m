Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C027828088
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 17:06:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ae7BT5q2fMrKjj71QkKrCqq6oibRNh0+1pCSv5qci4w=; b=Yot7gA0Ze5nFp+/5ei408mhu8
	lW4uAECl3PSapElQ8NKSITK+9iHH7kOPhQ0wVMiQEq7sLfUCFmZisqv7nzVDS6y/ynn1Jk2Lb91xr
	DrJ7reFD9lpAqOsMKgtV9cygn5RfVri5d6EXLHewfZLigR3tre3lxzvYeDa9FbtsMzj1joYJ/kC0z
	BDlM1d3W5HQD1WNxlYWocJkwXzmWuynlm8sOSYdM/fIyGmKWtr1g5k57/qofMuHnpzP1Nejo8cpm7
	EoGnbhGEBoVJQPXr3bk4H5wLah5P+eyQN16yql3ReR+ZYvzeDWIzIvaMcO8VQ0LUiRVbqcHS9SCzO
	hdxola9Cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTpIU-0004V0-Pu; Thu, 23 May 2019 15:06:22 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTpIL-0004Uc-6o
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 15:06:15 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4NF1gUL015469; Thu, 23 May 2019 17:05:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=h7OSY8B4dK5iSIbELxyjbV1vqwOSDTJy33ZuJ573DGw=;
 b=f1QjiHlHj7o/V6vHmmUrjdSd+Qps5znZ0ZgFXxVctefgC2O6KREP3g+HVTzlnnjPcZw1
 sCCStdjBBYFpeccSvwsMHotx8Q+F1KGubzpRuQ1nRQ0JISvwwkplj5bmc2l3MT8Tr6lJ
 7k+NQ3Ad4Al+zzafgz5Ac3AwVz57Qexsgz67XhziueKson7/2usGSg3osI0Czj3zmOIr
 r4pXvmDxY9SQ+cGh0YCbzEKSf8G155LmkaSxW5VGOPkgwH1Yhq/l/p3AnjeGkNtjEcNi
 SQSZYHHH2SaGbS6amuk3VzXvUpIVw/eRyvcpakKOo4xQyjCkO2Ij6qCkv2rIsWcZ/gyT Bg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2snrve1xsp-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Thu, 23 May 2019 17:05:54 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 78D8838;
 Thu, 23 May 2019 15:05:53 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 168EE2D58;
 Thu, 23 May 2019 15:05:53 +0000 (GMT)
Received: from [10.48.0.204] (10.75.127.48) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 23 May
 2019 17:05:52 +0200
Subject: Re: [PATCH 6/8] dt-bindings: net: stmmac: Convert the binding to a
 schemas
To: Maxime Ripard <maxime.ripard@bootlin.com>, Mark Rutland
 <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>, Frank Rowand
 <frowand.list@gmail.com>, "David S . Miller" <davem@davemloft.net>, Chen-Yu
 Tsai <wens@csie.org>
References: <74d98cc3c744d53710c841381efd41cf5f15e656.1558605170.git-series.maxime.ripard@bootlin.com>
 <ba1a5d8ad34a8c9ab99f504c04fbe65bde42081b.1558605170.git-series.maxime.ripard@bootlin.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <9094f39f-0e26-55dd-9b47-9a55089400da@st.com>
Date: Thu, 23 May 2019 17:05:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <ba1a5d8ad34a8c9ab99f504c04fbe65bde42081b.1558605170.git-series.maxime.ripard@bootlin.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.48]
X-ClientProxiedBy: SFHDAG7NODE2.st.com (10.75.127.20) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-23_12:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_080613_597468_894C45A4 
X-CRM114-Status: GOOD (  32.13  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org,
 =?UTF-8?Q?Antoine_T=c3=a9nart?= <antoine.tenart@bootlin.com>,
 netdev@vger.kernel.org, Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Maxime

On 5/23/19 11:56 AM, Maxime Ripard wrote:
> Switch the STMMAC / Synopsys DesignWare MAC controller binding to a YAML
> schema to enable the DT validation.
> 
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---

First, thanks a lot for this patch. Just one question:
We could add ranges for some properties in order to avoid "bad value" 
for a property. If I understand correctly you do it only for 
snps,dwxgmac, snps,dwxgmac-2.10 and st,spear600-gmac. Why not do it for 
all supported IPs ? (Maybe it is something that we could add later)



>   Documentation/devicetree/bindings/net/snps,dwmac.yaml | 344 +++++++++++-
>   Documentation/devicetree/bindings/net/stmmac.txt      | 179 +------
>   2 files changed, 345 insertions(+), 178 deletions(-)
>   create mode 100644 Documentation/devicetree/bindings/net/snps,dwmac.yaml
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
> +
> +  snps,reset-active-low:
> +    $ref: /schemas/types.yaml#definitions/flag
> +    description:
> +      Indicates that the PHY Reset is active low
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

TSO is also available for snps,dwmac-4.00 and snps,dwmac-4.10a


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
> diff --git a/Documentation/devicetree/bindings/net/stmmac.txt b/Documentation/devicetree/bindings/net/stmmac.txt
> index cb694062afff..7d48782767cb 100644
> --- a/Documentation/devicetree/bindings/net/stmmac.txt
> +++ b/Documentation/devicetree/bindings/net/stmmac.txt
> @@ -1,178 +1 @@
> -* STMicroelectronics 10/100/1000/2500/10000 Ethernet (GMAC/XGMAC)
> -
> -Required properties:
> -- compatible: Should be "snps,dwmac-<ip_version>", "snps,dwmac" or
> -	"snps,dwxgmac-<ip_version>", "snps,dwxgmac".
> -	For backwards compatibility: "st,spear600-gmac" is also supported.
> -- reg: Address and length of the register set for the device
> -- interrupts: Should contain the STMMAC interrupts
> -- interrupt-names: Should contain a list of interrupt names corresponding to
> -	the interrupts in the interrupts property, if available.
> -	Valid interrupt names are:
> -  - "macirq" (combined signal for various interrupt events)
> -  - "eth_wake_irq" (the interrupt to manage the remote wake-up packet detection)
> -  - "eth_lpi" (the interrupt that occurs when Rx exits the LPI state)
> -- phy-mode: See ethernet.txt file in the same directory.
> -- snps,reset-gpio 	gpio number for phy reset.
> -- snps,reset-active-low boolean flag to indicate if phy reset is active low.
> -- snps,reset-delays-us  is triplet of delays
> -	The 1st cell is reset pre-delay in micro seconds.
> -	The 2nd cell is reset pulse in micro seconds.
> -	The 3rd cell is reset post-delay in micro seconds.
> -
> -Optional properties:
> -- resets: Should contain a phandle to the STMMAC reset signal, if any
> -- reset-names: Should contain the reset signal name "stmmaceth", if a
> -	reset phandle is given
> -- max-frame-size: See ethernet.txt file in the same directory
> -- clocks: If present, the first clock should be the GMAC main clock and
> -  the second clock should be peripheral's register interface clock. Further
> -  clocks may be specified in derived bindings.
> -- clock-names: One name for each entry in the clocks property, the
> -  first one should be "stmmaceth" and the second one should be "pclk".
> -- ptp_ref: this is the PTP reference clock; in case of the PTP is available
> -  this clock is used for programming the Timestamp Addend Register. If not
> -  passed then the system clock will be used and this is fine on some
> -  platforms.
> -- tx-fifo-depth: See ethernet.txt file in the same directory
> -- rx-fifo-depth: See ethernet.txt file in the same directory
> -- snps,pbl		Programmable Burst Length (tx and rx)
> -- snps,txpbl		Tx Programmable Burst Length. Only for GMAC and newer.
> -			If set, DMA tx will use this value rather than snps,pbl.
> -- snps,rxpbl		Rx Programmable Burst Length. Only for GMAC and newer.
> -			If set, DMA rx will use this value rather than snps,pbl.
> -- snps,no-pbl-x8	Don't multiply the pbl/txpbl/rxpbl values by 8.
> -			For core rev < 3.50, don't multiply the values by 4.
> -- snps,aal		Address-Aligned Beats
> -- snps,fixed-burst	Program the DMA to use the fixed burst mode
> -- snps,mixed-burst	Program the DMA to use the mixed burst mode
> -- snps,force_thresh_dma_mode	Force DMA to use the threshold mode for
> -				both tx and rx
> -- snps,force_sf_dma_mode	Force DMA to use the Store and Forward
> -				mode for both tx and rx. This flag is
> -				ignored if force_thresh_dma_mode is set.
> -- snps,en-tx-lpi-clockgating	Enable gating of the MAC TX clock during
> -				TX low-power mode
> -- snps,multicast-filter-bins:	Number of multicast filter hash bins
> -				supported by this device instance
> -- snps,perfect-filter-entries:	Number of perfect filter entries supported
> -				by this device instance
> -- snps,ps-speed: port selection speed that can be passed to the core when
> -		 PCS is supported. For example, this is used in case of SGMII
> -		 and MAC2MAC connection.
> -- snps,tso: this enables the TSO feature otherwise it will be managed by
> -		 MAC HW capability register. Only for GMAC4 and newer.
> -- AXI BUS Mode parameters: below the list of all the parameters to program the
> -			   AXI register inside the DMA module:
> -	- snps,lpi_en: enable Low Power Interface
> -	- snps,xit_frm: unlock on WoL
> -	- snps,wr_osr_lmt: max write outstanding req. limit
> -	- snps,rd_osr_lmt: max read outstanding req. limit
> -	- snps,kbbe: do not cross 1KiB boundary.
> -	- snps,blen: this is a vector of supported burst length.
> -	- snps,fb: fixed-burst
> -	- snps,mb: mixed-burst
> -	- snps,rb: rebuild INCRx Burst
> -- mdio: with compatible = "snps,dwmac-mdio", create and register mdio bus.
> -- Multiple RX Queues parameters: below the list of all the parameters to
> -				 configure the multiple RX queues:
> -	- snps,rx-queues-to-use: number of RX queues to be used in the driver
> -	- Choose one of these RX scheduling algorithms:
> -		- snps,rx-sched-sp: Strict priority
> -		- snps,rx-sched-wsp: Weighted Strict priority
> -	- For each RX queue
> -		- Choose one of these modes:
> -			- snps,dcb-algorithm: Queue to be enabled as DCB
> -			- snps,avb-algorithm: Queue to be enabled as AVB
> -		- snps,map-to-dma-channel: Channel to map
> -		- Specifiy specific packet routing:
> -			- snps,route-avcp: AV Untagged Control packets
> -			- snps,route-ptp: PTP Packets
> -			- snps,route-dcbcp: DCB Control Packets
> -			- snps,route-up: Untagged Packets
> -			- snps,route-multi-broad: Multicast & Broadcast Packets
> -		- snps,priority: RX queue priority (Range: 0x0 to 0xF)
> -- Multiple TX Queues parameters: below the list of all the parameters to
> -				 configure the multiple TX queues:
> -	- snps,tx-queues-to-use: number of TX queues to be used in the driver
> -	- Choose one of these TX scheduling algorithms:
> -		- snps,tx-sched-wrr: Weighted Round Robin
> -		- snps,tx-sched-wfq: Weighted Fair Queuing
> -		- snps,tx-sched-dwrr: Deficit Weighted Round Robin
> -		- snps,tx-sched-sp: Strict priority
> -	- For each TX queue
> -		- snps,weight: TX queue weight (if using a DCB weight algorithm)
> -		- Choose one of these modes:
> -			- snps,dcb-algorithm: TX queue will be working in DCB
> -			- snps,avb-algorithm: TX queue will be working in AVB
> -			  [Attention] Queue 0 is reserved for legacy traffic
> -			  and so no AVB is available in this queue.
> -		- Configure Credit Base Shaper (if AVB Mode selected):
> -			- snps,send_slope: enable Low Power Interface
> -			- snps,idle_slope: unlock on WoL
> -			- snps,high_credit: max write outstanding req. limit
> -			- snps,low_credit: max read outstanding req. limit
> -		- snps,priority: TX queue priority (Range: 0x0 to 0xF)
> -Examples:
> -
> -	stmmac_axi_setup: stmmac-axi-config {
> -		snps,wr_osr_lmt = <0xf>;
> -		snps,rd_osr_lmt = <0xf>;
> -		snps,blen = <256 128 64 32 0 0 0>;
> -	};
> -
> -	mtl_rx_setup: rx-queues-config {
> -		snps,rx-queues-to-use = <1>;
> -		snps,rx-sched-sp;
> -		queue0 {
> -			snps,dcb-algorithm;
> -			snps,map-to-dma-channel = <0x0>;
> -			snps,priority = <0x0>;
> -		};
> -	};
> -
> -	mtl_tx_setup: tx-queues-config {
> -		snps,tx-queues-to-use = <2>;
> -		snps,tx-sched-wrr;
> -		queue0 {
> -			snps,weight = <0x10>;
> -			snps,dcb-algorithm;
> -			snps,priority = <0x0>;
> -		};
> -
> -		queue1 {
> -			snps,avb-algorithm;
> -			snps,send_slope = <0x1000>;
> -			snps,idle_slope = <0x1000>;
> -			snps,high_credit = <0x3E800>;
> -			snps,low_credit = <0xFFC18000>;
> -			snps,priority = <0x1>;
> -		};
> -	};
> -
> -	gmac0: ethernet@e0800000 {
> -		compatible = "st,spear600-gmac";
> -		reg = <0xe0800000 0x8000>;
> -		interrupt-parent = <&vic1>;
> -		interrupts = <24 23 22>;
> -		interrupt-names = "macirq", "eth_wake_irq", "eth_lpi";
> -		mac-address = [000000000000]; /* Filled in by U-Boot */
> -		max-frame-size = <3800>;
> -		phy-mode = "gmii";
> -		snps,multicast-filter-bins = <256>;
> -		snps,perfect-filter-entries = <128>;
> -		rx-fifo-depth = <16384>;
> -		tx-fifo-depth = <16384>;
> -		clocks = <&clock>;
> -		clock-names = "stmmaceth";
> -		snps,axi-config = <&stmmac_axi_setup>;
> -		mdio0 {
> -			#address-cells = <1>;
> -			#size-cells = <0>;
> -			compatible = "snps,dwmac-mdio";
> -			phy1: ethernet-phy@0 {
> -			};
> -		};
> -		snps,mtl-rx-config = <&mtl_rx_setup>;
> -		snps,mtl-tx-config = <&mtl_tx_setup>;
> -	};
> +This file has moved to snps,dwmac.yaml.
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
