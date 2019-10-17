Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80E8FDBA2C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 01:30:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RVlWqjz64a7FfE8koqCxBYPkRKjum5mB0125cu2tZbk=; b=W5yRO3H6DpHwOa
	7a52dFv96t4AqkQtjj42X6IXvUJAmcDGsndJpSVWR+Bw2EdVB38nBwM1auaH5M9MbQi51OMttOQqc
	LuVYtN8v/sL2MfWeHgjfyUUyU0vk6HKma7Xcc8khZMWB4phMBZ/47Yc+aquiZgCC4ck8os/Jc4GRe
	ka9/wfu0RvX8p8H8b2MqBkQa/aF6c/xSxTUAQpjUCN35HnzsrN5MZl7N6fmqg5Wm2/TPDxPDI+NYF
	brx6KZydfs3ia4yZOuE3xbNPWxoAAb5EzMhiiS2jxatbVBfFygWUwvQ2KsIfrKw3xfwxfbl0JIFwA
	tSWollBd5/x7XIHqsT8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLFEE-0000tp-Cl; Thu, 17 Oct 2019 23:30:46 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLFE3-0000sc-5Y; Thu, 17 Oct 2019 23:30:36 +0000
Received: from remote.shanghaihotelholland.com ([46.44.148.63]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iLFDw-0004Li-P4; Fri, 18 Oct 2019 01:30:28 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: Add core dts for RK3308 SOC
Date: Fri, 18 Oct 2019 01:30:22 +0200
Message-ID: <5242916.cCMrPAA6xQ@phil>
In-Reply-To: <20191017030449.32289-1-andy.yan@rock-chips.com>
References: <20191017030242.32219-1-andy.yan@rock-chips.com>
 <20191017030449.32289-1-andy.yan@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_163035_362990_40481B02 
X-CRM114-Status: GOOD (  18.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, kever.yang@rock-chips.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andy,

Am Donnerstag, 17. Oktober 2019, 05:04:49 CEST schrieb Andy Yan:

> +	psci {
> +		compatible = "arm,psci-1.0";
> +		method = "smc";
> +	};

Please also provide a ATF implementation for the rk3308 :-)
[Not a requirement for getting this merged, but it would be
really cool to have sources for the full stack]

> +
> +	ramoops_mem: ramoops_mem {
> +		reg = <0x0 0x110000 0x0 0xf0000>;
> +		reg-names = "ramoops_mem";
> +	};
> +
> +	ramoops: ramoops {
> +		compatible = "ramoops";
> +		record-size = <0x0 0x30000>;
> +		console-size = <0x0 0xc0000>;
> +		ftrace-size = <0x0 0x00000>;
> +		pmsg-size = <0x0 0x00000>;
> +		memory-region = <&ramoops_mem>;
> +	};

I think ramoops are more a per-board thing, like for the evb.
As they'll require cooperation with bootloaders to not mangle that
memory area. For this please also coordinate with Kever because
I somehow remember we have u-boot sometimes at 0x100000.


> +	grf: grf@ff000000 {
> +		compatible = "rockchip,rk3308-grf", "syscon", "simple-mfd";

Please add a patch adding the rockchip,rk3308-grf compatible to
Documentation/devicetree/bindings/soc/rockchip/grf.txt

> +		reg = <0x0 0xff000000 0x0 0x10000>;
> +
> +		reboot-mode {
> +			compatible = "syscon-reboot-mode";
> +			offset = <0x500>;
> +			mode-bootloader = <BOOT_BL_DOWNLOAD>;
> +			mode-loader = <BOOT_BL_DOWNLOAD>;
> +			mode-normal = <BOOT_NORMAL>;
> +			mode-recovery = <BOOT_RECOVERY>;
> +			mode-fastboot = <BOOT_FASTBOOT>;
> +		};
> +	};
> +
> +	detect_grf: syscon@ff00b000 {
> +		compatible = "syscon", "simple-mfd";

	compatible = "rockchip,rk3308-detect-grf", "syscon"
+ add the rk3308-detect-grf to the binding

> +		reg = <0x0 0xff00b000 0x0 0x1000>;
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +	};
> +
> +	core_grf: syscon@ff00c000 {
> +		compatible = "syscon", "simple-mfd";

same as detect_grf

> +		reg = <0x0 0xff00c000 0x0 0x1000>;
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +
> +	};
> +
> +	i2c0: i2c@ff040000 {
> +		compatible = "rockchip,rk3399-i2c";

	compatible = "rockchip,rk3308-i2c", "rockchip,rk3399-i2c";
Same for all i2c controllers.

> +		reg = <0x0 0xff040000 0x0 0x1000>;
> +		clocks = <&cru SCLK_I2C0>, <&cru PCLK_I2C0>;
> +		clock-names = "i2c", "pclk";
> +		interrupts = <GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&i2c0_xfer>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		status = "disabled";
> +	};


> +	spi0: spi@ff120000 {
> +		compatible = "rockchip,rk3308-spi", "rockchip,rk3066-spi";
> +		reg = <0x0 0xff120000 0x0 0x1000>;
> +		interrupts = <GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		clocks = <&cru SCLK_SPI0>, <&cru PCLK_SPI0>;
> +		clock-names = "spiclk", "apb_pclk";
> +		dmas = <&dmac0 0>, <&dmac0 1>;
> +		dma-names = "tx", "rx";
> +		pinctrl-names = "default", "high_speed";

there is no high_speed pinctrl defined for the Rockchip spi driver
in mainline, so this part should go away in a first step.
Same for the other spi controllers.

> +		pinctrl-0 = <&spi0_clk &spi0_csn0 &spi0_miso &spi0_mosi>;
> +		pinctrl-1 = <&spi0_clk_hs &spi0_csn0 &spi0_miso_hs &spi0_mosi_hs>;
> +		status = "disabled";
> +	};


> +	rktimer: rktimer@ff1a0000 {
> +		compatible = "rockchip,rk3288-timer";

	compatible = "rockchip,rk3308-timer", "rockchip,rk3288-timer";

> +		reg = <0x0 0xff1a0000 0x0 0x20>;
> +		interrupts = <GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>;
> +		clocks = <&cru PCLK_TIMER>, <&cru SCLK_TIMER0>;
> +		clock-names = "pclk", "timer";
> +	};



> +	amba {
> +		compatible = "arm,amba-bus";

compatible = "simple-bus";

> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges;
> +
> +		dmac0: dma-controller@ff2c0000 {
> +			compatible = "arm,pl330", "arm,primecell";
> +			reg = <0x0 0xff2c0000 0x0 0x4000>;
> +			interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 1 IRQ_TYPE_LEVEL_HIGH>;
> +			#dma-cells = <1>;
> +			clocks = <&cru ACLK_DMAC0>;
> +			clock-names = "apb_pclk";
> +			peripherals-req-type-burst;

peripherals-req-type-burst is undocumented so likely some change to the
dma driver not yet upstream?

> +		};
> +
> +		dmac1: dma-controller@ff2d0000 {
> +			compatible = "arm,pl330", "arm,primecell";
> +			reg = <0x0 0xff2d0000 0x0 0x4000>;
> +			interrupts = <GIC_SPI 2 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>;
> +			#dma-cells = <1>;
> +			clocks = <&cru ACLK_DMAC1>;
> +			clock-names = "apb_pclk";
> +			peripherals-req-type-burst;
> +		};
> +	};
> +
> +	i2s_2ch_0: i2s@ff350000 {
> +		compatible = "rockchip,rk3308-i2s", "rockchip,rk3066-i2s";
> +		reg = <0x0 0xff350000 0x0 0x1000>;
> +		interrupts = <GIC_SPI 52 IRQ_TYPE_LEVEL_HIGH>;
> +		clocks = <&cru SCLK_I2S0_2CH>, <&cru HCLK_I2S0_2CH>;
> +		clock-names = "i2s_clk", "i2s_hclk";
> +		dmas = <&dmac1 8>, <&dmac1 9>;
> +		dma-names = "tx", "rx";
> +		resets = <&cru SRST_I2S0_2CH_M>, <&cru SRST_I2S0_2CH_H>;
> +		reset-names = "reset-m", "reset-h";

These resets don't seem to be defined in driver or binding?
Same for other i2s

> +		pinctrl-names = "default";
> +		pinctrl-0 = <&i2s_2ch_0_sclk
> +			     &i2s_2ch_0_lrck
> +			     &i2s_2ch_0_sdi
> +			     &i2s_2ch_0_sdo>;
> +		status = "disabled";
> +	};


> +
> +	mac: ethernet@ff4e0000 {
> +		compatible = "rockchip,rk3308-mac";

Was this support to the network driver already submitted?
Because I wasn't able to find it in the gmac driver.

> +		reg = <0x0 0xff4e0000 0x0 0x10000>;
> +		rockchip,grf = <&grf>;
> +		interrupts = <GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>;
> +		interrupt-names = "macirq";
> +		clocks = <&cru SCLK_MAC>, <&cru SCLK_MAC_RX_TX>,
> +			 <&cru SCLK_MAC_RX_TX>, <&cru SCLK_MAC_REF>,
> +			 <&cru SCLK_MAC>, <&cru ACLK_MAC>,
> +			 <&cru PCLK_MAC>, <&cru SCLK_MAC_RMII>;
> +		clock-names = "stmmaceth", "mac_clk_rx",
> +			      "mac_clk_tx", "clk_mac_ref",
> +			      "clk_mac_refout", "aclk_mac",
> +			      "pclk_mac", "clk_mac_speed";
> +		phy-mode = "rmii";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&rmii_pins &mac_refclk_12ma>;
> +		resets = <&cru SRST_MAC_A>;
> +		reset-names = "stmmaceth";
> +		status = "disabled";
> +	};


Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
