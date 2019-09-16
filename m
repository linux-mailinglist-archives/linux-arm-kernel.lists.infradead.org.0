Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A45B4B3BA2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 15:44:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f8DRP8xlGXHdFhNSKc2fq0sbbXBsjBqRWKF+/MbJ//8=; b=hvtThIwoiCs5wH
	rey4GQZ76yuIcVZb6sVFR2BhrMb2dMRHBFrXmwoqm9PNO5cvJv1l3Ge9XAH2fKs35qAHgb7nl11TW
	jk0cDGjeL/PlPJGW9sFw+X3Rxr3Y10/heOnoGolO7iC7u16nc8JWtE/9ENMr00wJbxzIsG2YLkvUh
	YL0LHCD2H5Hba7clFLKtkildBY0KvTr6zmdFHpXwfho2Uo1KvloEQ3w4HrEGSDVybXjdT3W1g30yr
	0eMlfJxi6lb3IXkk0bBKxnYLq0KHxccvurEKkVTEPBg2cvBGV4hjrQ+WJrzGd6BIVozZl6lOdGl8r
	F3iNZSLEdwu7QnWKD82g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9rIZ-0000TW-PT; Mon, 16 Sep 2019 13:44:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9rHE-0000Ha-3h; Mon, 16 Sep 2019 13:42:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B21AD337;
 Mon, 16 Sep 2019 06:42:44 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 288663F67D;
 Mon, 16 Sep 2019 06:42:43 -0700 (PDT)
Date: Mon, 16 Sep 2019 14:42:42 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH v2 5/6] arm64: dts: meson-g12a: Add PCIe node
Message-ID: <20190916134241.GR9720@e119886-lin.cambridge.arm.com>
References: <20190916125022.10754-1-narmstrong@baylibre.com>
 <20190916125022.10754-6-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190916125022.10754-6-narmstrong@baylibre.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_064248_476704_FB58C129 
X-CRM114-Status: GOOD (  15.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: maz@kernel.org, lorenzo.pieralisi@arm.com, gouwa@khadas.com,
 khilman@baylibre.com, nick@khadas.com, linux-kernel@vger.kernel.org,
 kishon@ti.com, repk@triplefau.lt, linux-pci@vger.kernel.org,
 bhelgaas@google.com, linux-amlogic@lists.infradead.org, yue.wang@Amlogic.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 16, 2019 at 02:50:21PM +0200, Neil Armstrong wrote:
> This adds the Amlogic G12A PCI Express controller node, also
> using the USB3+PCIe Combo PHY.
> 
> The PHY mode selection is static, thus the USB3+PCIe Combo PHY
> phandle would need to be removed from the USB control node if the
> shared differential lines are used for PCIe instead of USB3.
> 
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>

Reviewed-by: Andrew Murray <andrew.murray@arm.com>

> ---
>  .../boot/dts/amlogic/meson-g12-common.dtsi    | 33 +++++++++++++++++++
>  arch/arm64/boot/dts/amlogic/meson-sm1.dtsi    |  4 +++
>  2 files changed, 37 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
> index 852cf9cf121b..7330dc37b7a6 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
> @@ -95,6 +95,39 @@
>  		#size-cells = <2>;
>  		ranges;
>  
> +		pcie: pcie@fc000000 {
> +			compatible = "amlogic,g12a-pcie", "snps,dw-pcie";
> +			reg = <0x0 0xfc000000 0x0 0x400000
> +			       0x0 0xff648000 0x0 0x2000
> +			       0x0 0xfc400000 0x0 0x200000>;
> +			reg-names = "elbi", "cfg", "config";
> +			interrupts = <GIC_SPI 221 IRQ_TYPE_LEVEL_HIGH>;
> +			#interrupt-cells = <1>;
> +			interrupt-map-mask = <0 0 0 0>;
> +			interrupt-map = <0 0 0 0 &gic GIC_SPI 223 IRQ_TYPE_LEVEL_HIGH>;
> +			bus-range = <0x0 0xff>;
> +			#address-cells = <3>;
> +			#size-cells = <2>;
> +			device_type = "pci";
> +			ranges = <0x81000000 0 0 0x0 0xfc600000 0 0x00100000
> +				  0x82000000 0 0xfc700000 0x0 0xfc700000 0 0x1900000>;
> +
> +			clocks = <&clkc CLKID_PCIE_PHY
> +				  &clkc CLKID_PCIE_COMB
> +				  &clkc CLKID_PCIE_PLL>;
> +			clock-names = "general",
> +				      "pclk",
> +				      "port";
> +			resets = <&reset RESET_PCIE_CTRL_A>,
> +				 <&reset RESET_PCIE_APB>;
> +			reset-names = "port",
> +				      "apb";
> +			num-lanes = <1>;
> +			phys = <&usb3_pcie_phy PHY_TYPE_PCIE>;
> +			phy-names = "pcie";
> +			status = "disabled";
> +		};
> +
>  		ethmac: ethernet@ff3f0000 {
>  			compatible = "amlogic,meson-axg-dwmac",
>  				     "snps,dwmac-3.70a",
> diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1.dtsi b/arch/arm64/boot/dts/amlogic/meson-sm1.dtsi
> index 91492819d0d8..ee9ea3c69433 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-sm1.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-sm1.dtsi
> @@ -135,6 +135,10 @@
>  	power-domains = <&pwrc PWRC_SM1_ETH_ID>;
>  };
>  
> +&pcie {
> +	power-domains = <&pwrc PWRC_SM1_PCIE_ID>;
> +};
> +
>  &pwrc {
>  	compatible = "amlogic,meson-sm1-pwrc";
>  };
> -- 
> 2.22.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
