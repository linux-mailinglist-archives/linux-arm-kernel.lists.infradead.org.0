Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00C54349C5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 16:08:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NUyjcrCmNHTnkwGUMCWHsrO22qjR8JLZPSyrUbF1HS8=; b=QOPznzyO4kFc0J
	rx0QMonW8ZlmBvDt693Vi8EsP3PoybRlJZUvCoTzk/EcTqWEWfEZmUXhHsd+RQ7OAWQzWDYu+dTes
	uWhCErs9h1ZOEOC4kUtEDKs3d/0AZbEM7rdfMblNInBf+jL9eMdMORaCxak7N7C/md2cP+kP1bJma
	WMxVb/aglfuF4I4S4IQTmcMlL7F64+4XDfp4b6f2Jkpqv77q73VZgnRU3HyTnLwdz3pgnJ07xFiSp
	FtPcupYInfVWuXjrPHxPrqIqLJRtzgdmrYln1AoHLcyPgbZTSdSVJtR2fOAb8Ce0lWZ30tGtOQcp1
	GfGLkLy+Df/lbvVEJPhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYA74-0006GK-6C; Tue, 04 Jun 2019 14:08:30 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYA6y-0006Ft-0n; Tue, 04 Jun 2019 14:08:25 +0000
Received: from we0305.dip.tu-dresden.de ([141.76.177.49] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hYA6v-0001Xj-6y; Tue, 04 Jun 2019 16:08:21 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: xieqinick@gmail.com
Subject: Re: [PATCH] arm64: dts: rockchip: Add support for Khadas
 Edge/Edge-V/Captain boards
Date: Tue, 04 Jun 2019 16:08:20 +0200
Message-ID: <2074921.iWOsiWxYGh@phil>
In-Reply-To: <1559035267-1884-1-git-send-email-xieqinick@gmail.com>
References: <1559035267-1884-1-git-send-email-xieqinick@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_070824_214393_F7D1EADA 
X-CRM114-Status: GOOD (  19.50  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, robh@kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, nick@khadas.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nick,

devicetrees look mostly good, with a bit of "bookkeeping" issues and
some small nits below.

Am Dienstag, 28. Mai 2019, 11:21:07 CEST schrieb xieqinick@gmail.com:
> From: Nick <nick@khadas.com>

Can you provide a full name (first-+surename) for patch from and Signed-off
lines please?


> Add devicetree support for Khadas Edge/Edge-V/Captain boards.
> Khadas Edge is an expandable Rockchip RK3399 board with goldfinger.
> Khadas Captain is the carrier board for Khadas Edge.
> Khadas Edge-V is a Khadas VIM form factor Rockchip RK3399 board.
> 
> Signed-off-by: Nick <nick@khadas.com>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile              |   3 +
>  .../boot/dts/rockchip/rk3399-khadas-captain.dts    |  27 +
>  .../boot/dts/rockchip/rk3399-khadas-edge-v.dts     |  28 +

when adding boards, please also make sure to add entries to
	Documentation/devicetree/bindings/arm/rockchip.yaml

Take a look at the "FriendlyElec NanoPi4 series boards" for an
example on how to add a family of boards like your Edge/Captain.


> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-khadas-captain.dts b/arch/arm64/boot/dts/rockchip/rk3399-khadas-captain.dts
> new file mode 100644
> index 0000000..85eb51c
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-khadas-captain.dts
> @@ -0,0 +1,27 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2019 Shenzhen Wesion Technology Co., Ltd.
> + * (https://www.khadas.com)
> + */
> +
> +/dts-v1/;
> +#include "rk3399-khadas-edge.dtsi"
> +
> +/ {
> +	model = "Khadas Captain";
> +	compatible = "khadas,captain", "rockchip,rk3399";
> +};
> +
> +&gmac {
> +	status = "okay";
> +};
> +
> +&pcie_phy {
> +	status = "okay";
> +};
> +
> +&pcie0 {
> +	ep-gpios = <&gpio1 RK_PA3 GPIO_ACTIVE_HIGH>;
> +	num-lanes = <4>;
> +	status = "okay";
> +};
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge-v.dts b/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge-v.dts
> new file mode 100644
> index 0000000..396b7f4
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge-v.dts
> @@ -0,0 +1,28 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2019 Shenzhen Wesion Technology Co., Ltd.
> + * (https://www.khadas.com)
> + */
> +
> +/dts-v1/;
> +#include "rk3399-khadas-edge.dtsi"
> +
> +/ {
> +	model = "Khadas Edge-V";
> +	compatible = "khadas,edge-v", "rockchip,rk3399";
> +};
> +
> +&gmac {
> +	status = "okay";
> +};
> +
> +&pcie_phy {
> +	status = "okay";
> +};
> +
> +&pcie0 {
> +	ep-gpios = <&gpio1 RK_PA3 GPIO_ACTIVE_HIGH>;
> +	num-lanes = <4>;
> +	status = "okay";
> +};
> +

Both Captain and Edge-V seem to be identical from a component point
of view, so should likely share the same dts, or is there some major
difference coming later?

For the time being you can represent the individual boards like:

	model = "Khadas Edge-V/Captain";
	compatible = "khadas,edge-v", "khadas,edge-captain", "rockchip,rk3399";

Also to show that it's Edge+Captain baseboard, maybe you want to
change the name like shown above (see rk3399-puma-haikou for a similar
setup).


> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dts b/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dts
> new file mode 100644
> index 0000000..f0d5bae
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dts
> @@ -0,0 +1,17 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2019 Shenzhen Wesion Technology Co., Ltd.
> + * (https://www.khadas.com)
> + */
> +
> +/dts-v1/;
> +#include "rk3399-khadas-edge.dtsi"
> +
> +/ {
> +	model = "Khadas Edge";
> +	compatible = "khadas,edge", "rockchip,rk3399";
> +};
> +
> +&gmac {
> +	status = "disabled";

the Edge-V/Captain boards do enable the gmac, so you shouldn't need
a special disable here. Just keep it disabled in the edge.dtsi
[aka it comes in the disabled state from rk3399.dtsi already].

> +};
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
> new file mode 100644
> index 0000000..872b535
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
> @@ -0,0 +1,795 @@

[...]

> +&gmac {
> +	assigned-clocks = <&cru SCLK_RMII_SRC>;
> +	assigned-clock-parents = <&clkin_gmac>;
> +	clock_in_out = "input";
> +	phy-supply = <&vcc_lan>;
> +	phy-mode = "rgmii";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&rgmii_pins>;
> +	snps,reset-gpio = <&gpio3 RK_PB7 GPIO_ACTIVE_LOW>;
> +	snps,reset-active-low;
> +	snps,reset-delays-us = <0 10000 50000>;
> +	tx_delay = <0x28>;
> +	rx_delay = <0x11>;
> +	status = "disabled";

status is disabled coming from rk3399.dtsi, so there is no need
to "re-disable" it here.

> +};
> +

[...]

> +&sdio0 {
> +	/* WiFi & BT combo module Ampak AP6356S */
> +	bus-width = <4>;
> +	cap-sdio-irq;
> +	cap-sd-highspeed;
> +	keep-power-in-suspend;
> +	mmc-pwrseq = <&sdio_pwrseq>;
> +	non-removable;
> +	num-slots = <1>;

num-slots is not needed anymore

> +	pinctrl-names = "default";
> +	pinctrl-0 = <&sdio0_bus4 &sdio0_cmd &sdio0_clk>;
> +	sd-uhs-sdr104;
> +
> +	/* Power supply */

drop that comment and blank line please. Properties called
*-supply already tell you that they are power supplies :-) .


Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
