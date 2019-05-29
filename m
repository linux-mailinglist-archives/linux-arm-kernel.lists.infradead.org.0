Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08F7A2D74E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 10:07:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/CozEueC4ngbg4YhW1qTgWSDnqhAWdKFCOSco5/oIHI=; b=WznxhevDWcneVZ
	SHw1P7oy43WkfgZr7idzwRJHlwN6p0dfjDHmMWBKAS70Bf1l9IXxoyYTD7SuwshR44aWi8Tl8ICAK
	fNN71WYpEZsgnrmUDmr7hnDF2XqAGakmeHoqO6RLGQaRi1OvLeOMLdSn/k8DfbyMHVoArUHm/95+e
	jWZ00P1m+vGnTEU1eR1wVOEoU9bsnWjO6S6vHHu3oG+owjE/zvnRaTKiCjEmRQcMYP5wGAjMcto/M
	WWZS8ql8eaGvMruTmDWNaWWiQ9zIT94NqI4Fjyoc6CV+eW4cw/iFV2YIrHAv+9uPeW8eQ59yq/uey
	jP9jozUORUvgdPdmMEWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVtc4-0001y7-Ph; Wed, 29 May 2019 08:07:08 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVtbu-0001wa-S9; Wed, 29 May 2019 08:07:00 +0000
Received: from ip5f5a6320.dynamic.kabel-deutschland.de ([95.90.99.32]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hVtbm-0002wf-P7; Wed, 29 May 2019 10:06:50 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Jianqun Xu <jay.xu@rock-chips.com>
Subject: Re: [PATCH v2 1/1] arm64: dts: rockchip: add core dtsi file for
 RK3399Pro SoCs
Date: Wed, 29 May 2019 10:06:50 +0200
Message-ID: <5655934.Q7EnKghNLn@diego>
In-Reply-To: <20190529074752.19388-1-jay.xu@rock-chips.com>
References: <20190528044850.23703-1-jay.xu@rock-chips.com>
 <20190529074752.19388-1-jay.xu@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_010659_053925_AAFB1CD0 
X-CRM114-Status: GOOD (  17.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, zhangzj@rock-chips.com,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 manivannan.sadhasivam@linaro.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jay,

Am Mittwoch, 29. Mai 2019, 09:47:52 CEST schrieb Jianqun Xu:
> This patch adds core dtsi file for Rockchip RK3399Pro SoCs,
> include rk3399.dtsi. Also enable these nodes:
> - pcie/pcie_phy
> - sdhci/sdio/emmc/sdmmc
> 
> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
> ---
> changes since v1:
> - remove dfi and dmc
> 
>  arch/arm64/boot/dts/rockchip/rk3399pro.dtsi | 74 +++++++++++++++++++++
>  1 file changed, 74 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3399pro.dtsi
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399pro.dtsi b/arch/arm64/boot/dts/rockchip/rk3399pro.dtsi
> new file mode 100644
> index 000000000000..b6d433ffa67d
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3399pro.dtsi
> @@ -0,0 +1,74 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +// Copyright (c) 2019 Fuzhou Rockchip Electronics Co., Ltd.
> +
> +#include "rk3399.dtsi"
> +
> +/ {
> +	compatible = "rockchip,rk3399pro";
> +
> +	xin32k: xin32k {
> +		compatible = "fixed-clock";
> +		clock-frequency = <32768>;
> +		clock-output-names = "xin32k";
> +		#clock-cells = <0>;
> +	};

Just to clarify, is the x32k clock really part of the soc itself?
Like on older SoCs it was always supplied from the pmic
or a separate rtc chip.


> +};
> +
> +&emmc_phy {
> +	status = "okay";
> +};

Is the emmc used inside the soc? As otherwise emmc / mmc controller
settings would be more a part of the actual board using the soc.


> +&pcie_phy {
> +	status = "okay";
> +};
> +
> +&pcie0 {
> +	ep-gpios = <&gpio0 RK_PB4 GPIO_ACTIVE_HIGH>;
> +	num-lanes = <4>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pcie_clkreqn_cpm>;
> +	status = "okay";
> +};

This is probably needed as it needs to talk the rk1808
part over pcie, so it's really internal to the soc.


> +
> +&sdhci {
> +	bus-width = <8>;
> +	mmc-hs400-1_8v;
> +	supports-emmc;
> +	non-removable;
> +	keep-power-in-suspend;
> +	mmc-hs400-enhanced-strobe;
> +	status = "okay";
> +};

Same comment as for emmc_phy above

> +&sdio0 {
> +	clock-frequency = <150000000>;
> +	clock-freq-min-max = <200000 150000000>;
> +	supports-sdio;
> +	bus-width = <4>;
> +	disable-wp;
> +	cap-sd-highspeed;
> +	cap-sdio-irq;
> +	keep-power-in-suspend;
> +	mmc-pwrseq = <&sdio_pwrseq>;
> +	non-removable;
> +	num-slots = <1>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&sdio0_bus4 &sdio0_cmd &sdio0_clk>;
> +	sd-uhs-sdr104;
> +	status = "okay";
> +};

Same comment as for emmc_phy above

> +&sdmmc {
> +	clock-frequency = <150000000>;
> +	clock-freq-min-max = <400000 150000000>;
> +	supports-sd;
> +	bus-width = <4>;
> +	cap-mmc-highspeed;
> +	cap-sd-highspeed;
> +	disable-wp;
> +	num-slots = <1>;
> +	vqmmc-supply = <&vccio_sd>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_cd &sdmmc_bus4>;
> +	status = "okay";
> +};

Same comment as for emmc_phy above




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
