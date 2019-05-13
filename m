Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABA7A1BBA5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 19:18:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fHq7aFIp3jakSsSM5j6ragz3Adsg2rt9BzskdPe5TpQ=; b=JvREe3lOgV7NSv
	NCzo4SOwKcJZMZe5g+ncBwVR52MnasEpx+lbAFH+DspGxJ2WC9rmWBjMLKi8P/fqoJEpjSNV5D+jE
	Bzg+bmQjO7T7SWTsfwe6QyqpTWSE7/IBfJToN1O+LghrXkbvBCOvUWYp+Oee6KWNOL+Nnyzg5eI2o
	1vIyVaJS6oEGeCxHy2L0kDOwygp+C6EQHpiHVqWiKTgl7Wpgdgu0Ue7ZkRPYOFTDQemrXg0CIrOek
	AgI+uiF2iLrLEUPs60pvQ22BuzmqBqt62TCwNuYEXsJrSzUZYmMIbB8a3HHNt8h/81tV9dpg9VDA8
	PCeXkgydKnYwsW05gObw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQEbF-0001Uh-E4; Mon, 13 May 2019 17:18:53 +0000
Received: from relay1.mentorg.com ([192.94.38.131])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQEb6-0001U5-QK
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 17:18:46 +0000
Received: from svr-orw-mbx-01.mgc.mentorg.com ([147.34.90.201])
 by relay1.mentorg.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-SHA384:256)
 id 1hQEat-0003zZ-7u from George_Davis@mentor.com ;
 Mon, 13 May 2019 10:18:31 -0700
Received: from localhost (147.34.91.1) by svr-orw-mbx-01.mgc.mentorg.com
 (147.34.90.201) with Microsoft SMTP Server (TLS) id 15.0.1320.4; Mon, 13 May
 2019 10:18:28 -0700
Date: Mon, 13 May 2019 13:18:27 -0400
From: "George G. Davis" <george_davis@mentor.com>
To: Fabio Estevam <festevam@gmail.com>, <stable@vger.kernel.org>
Subject: Re: [PATCH v3] ARM: dts: imx: Fix the AR803X phy-mode
Message-ID: <20190513171826.GA18591@mam-gdavis-lt>
References: <20190403221241.4753-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190403221241.4753-1-festevam@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-ClientProxiedBy: svr-orw-mbx-03.mgc.mentorg.com (147.34.90.203) To
 svr-orw-mbx-01.mgc.mentorg.com (147.34.90.201)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_101844_874743_A657156F 
X-CRM114-Status: GOOD (  21.24  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.94.38.131 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: andrew@lunn.ch, baruch@tkos.co.il, aford173@gmail.com,
 ken.lin@advantech.com, smoch@web.de, stwiss.opensource@diasemi.com,
 linux-imx@nxp.com, kernel@pengutronix.de,
 Marc Kleine-Budde <mkl@pengutronix.de>, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

On Wed, Apr 03, 2019 at 07:12:41PM -0300, Fabio Estevam wrote:
> Commit 6d4cd041f0af ("net: phy: at803x: disable delay only for RGMII mode")
> exposed an issue on imx DTS files using AR8031/AR8035 PHYs.
> 
> The end result is that the boards can no longer obtain an IP address
> via UDHCP, for example.
> 
> Quoting Andrew Lunn:
> 
> "The problem here is, all the DTs were broken since day 0. However,
> because the PHY driver was also broken, nobody noticed and it
> worked. Now that the PHY driver has been fixed, all the bugs in the
> DTs now become an issue"
> 
> To fix this problem, the phy-mode property needs to be "rgmii-id",  which
> has the following meaning as per 
> Documentation/devicetree/bindings/net/ethernet.txt:
> 
> "RGMII with internal RX and TX delays provided by the PHY, the MAC should
> not add the RX or TX delays in this case)"
> 
> Tested on imx6-sabresd, imx6sx-sdb and imx7d-pico boards with
> successfully restored networking.
> 
> Based on the initial submission from Steve Twiss for the
> imx6qdl-sabresd.
> 
> Signed-off-by: Fabio Estevam <festevam@gmail.com>
> Tested-by: Baruch Siach <baruch@tkos.co.il>
> Tested-by: Soeren Moch <smoch@web.de>
> Tested-by: Steve Twiss <stwiss.opensource@diasemi.com>
> Tested-by: Adam Thomson <Adam.Thomson@diasemi.com>
> Signed-off-by: Steve Twiss <stwiss.opensource@diasemi.com>
> Tested-by: Marc Kleine-Budde <mkl@pengutronix.de>
> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
> ---
> Changes since v2:
> - Also fixed imx6q-ba16
> - Removed stable tag as it does not apply cleanly on older
> stable trees. I can manually generate versions for stable
> trees after this one hits mainline.

Please add this commit to the v5.1.x stable queue to resolve NFS root breakage
in v5.1. I can confirm that it applies cleanly to v5.1.1 and resolves NFS root
breakage that occurs on i.MX6 boards in v5.1.x, tested on imx6q-sabreauto.dts
and imx6q-sabresd.dts. Although the fix should be backported to pre-v5.1.x
stable series as well, it does not cause problems for pre-v5.1 but results in
NFS root breakage for v5.1.x.

TIA!

> 
>  arch/arm/boot/dts/imx6-logicpd-baseboard.dtsi | 2 +-
>  arch/arm/boot/dts/imx6dl-riotboard.dts        | 2 +-
>  arch/arm/boot/dts/imx6q-ba16.dtsi             | 2 +-
>  arch/arm/boot/dts/imx6q-marsboard.dts         | 2 +-
>  arch/arm/boot/dts/imx6q-tbs2910.dts           | 2 +-
>  arch/arm/boot/dts/imx6qdl-apf6.dtsi           | 2 +-
>  arch/arm/boot/dts/imx6qdl-sabreauto.dtsi      | 2 +-
>  arch/arm/boot/dts/imx6qdl-sabresd.dtsi        | 2 +-
>  arch/arm/boot/dts/imx6qdl-sr-som.dtsi         | 2 +-
>  arch/arm/boot/dts/imx6qdl-wandboard.dtsi      | 2 +-
>  arch/arm/boot/dts/imx6sx-sabreauto.dts        | 2 +-
>  arch/arm/boot/dts/imx6sx-sdb.dtsi             | 2 +-
>  arch/arm/boot/dts/imx7d-pico.dtsi             | 2 +-
>  13 files changed, 13 insertions(+), 13 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/imx6-logicpd-baseboard.dtsi b/arch/arm/boot/dts/imx6-logicpd-baseboard.dtsi
> index fb01fa6e4224..3cae139e6396 100644
> --- a/arch/arm/boot/dts/imx6-logicpd-baseboard.dtsi
> +++ b/arch/arm/boot/dts/imx6-logicpd-baseboard.dtsi
> @@ -216,7 +216,7 @@
>  &fec {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_enet>;
> -	phy-mode = "rgmii";
> +	phy-mode = "rgmii-id";
>  	phy-reset-duration = <10>;
>  	phy-reset-gpios = <&gpio1 24 GPIO_ACTIVE_LOW>;
>  	phy-supply = <&reg_enet>;
> diff --git a/arch/arm/boot/dts/imx6dl-riotboard.dts b/arch/arm/boot/dts/imx6dl-riotboard.dts
> index 65c184bb8fb0..d9de49efa802 100644
> --- a/arch/arm/boot/dts/imx6dl-riotboard.dts
> +++ b/arch/arm/boot/dts/imx6dl-riotboard.dts
> @@ -92,7 +92,7 @@
>  &fec {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_enet>;
> -	phy-mode = "rgmii";
> +	phy-mode = "rgmii-id";
>  	phy-reset-gpios = <&gpio3 31 GPIO_ACTIVE_LOW>;
>  	interrupts-extended = <&gpio1 6 IRQ_TYPE_LEVEL_HIGH>,
>  			      <&intc 0 119 IRQ_TYPE_LEVEL_HIGH>;
> diff --git a/arch/arm/boot/dts/imx6q-ba16.dtsi b/arch/arm/boot/dts/imx6q-ba16.dtsi
> index adc9455e42c7..37c63402157b 100644
> --- a/arch/arm/boot/dts/imx6q-ba16.dtsi
> +++ b/arch/arm/boot/dts/imx6q-ba16.dtsi
> @@ -171,7 +171,7 @@
>  &fec {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_enet>;
> -	phy-mode = "rgmii";
> +	phy-mode = "rgmii-id";
>  	status = "okay";
>  };
>  
> diff --git a/arch/arm/boot/dts/imx6q-marsboard.dts b/arch/arm/boot/dts/imx6q-marsboard.dts
> index d8ccb533b6b7..84b30bd6908f 100644
> --- a/arch/arm/boot/dts/imx6q-marsboard.dts
> +++ b/arch/arm/boot/dts/imx6q-marsboard.dts
> @@ -110,7 +110,7 @@
>  &fec {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_enet>;
> -	phy-mode = "rgmii";
> +	phy-mode = "rgmii-id";
>  	phy-reset-gpios = <&gpio3 31 GPIO_ACTIVE_LOW>;
>  	status = "okay";
>  };
> diff --git a/arch/arm/boot/dts/imx6q-tbs2910.dts b/arch/arm/boot/dts/imx6q-tbs2910.dts
> index 2ce8399a10ba..bfff87ce2e1f 100644
> --- a/arch/arm/boot/dts/imx6q-tbs2910.dts
> +++ b/arch/arm/boot/dts/imx6q-tbs2910.dts
> @@ -98,7 +98,7 @@
>  &fec {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_enet>;
> -	phy-mode = "rgmii";
> +	phy-mode = "rgmii-id";
>  	phy-reset-gpios = <&gpio1 25 GPIO_ACTIVE_LOW>;
>  	status = "okay";
>  };
> diff --git a/arch/arm/boot/dts/imx6qdl-apf6.dtsi b/arch/arm/boot/dts/imx6qdl-apf6.dtsi
> index 1ebf29f43a24..4738c3c1ab50 100644
> --- a/arch/arm/boot/dts/imx6qdl-apf6.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-apf6.dtsi
> @@ -51,7 +51,7 @@
>  &fec {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_enet>;
> -	phy-mode = "rgmii";
> +	phy-mode = "rgmii-id";
>  	phy-reset-duration = <10>;
>  	phy-reset-gpios = <&gpio1 24 GPIO_ACTIVE_LOW>;
>  	status = "okay";
> diff --git a/arch/arm/boot/dts/imx6qdl-sabreauto.dtsi b/arch/arm/boot/dts/imx6qdl-sabreauto.dtsi
> index 1280de50a984..f3404dd10537 100644
> --- a/arch/arm/boot/dts/imx6qdl-sabreauto.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-sabreauto.dtsi
> @@ -292,7 +292,7 @@
>  &fec {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_enet>;
> -	phy-mode = "rgmii";
> +	phy-mode = "rgmii-id";
>  	interrupts-extended = <&gpio1 6 IRQ_TYPE_LEVEL_HIGH>,
>  			      <&intc 0 119 IRQ_TYPE_LEVEL_HIGH>;
>  	fsl,err006687-workaround-present;
> diff --git a/arch/arm/boot/dts/imx6qdl-sabresd.dtsi b/arch/arm/boot/dts/imx6qdl-sabresd.dtsi
> index a0705066ccba..185fb17a3500 100644
> --- a/arch/arm/boot/dts/imx6qdl-sabresd.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-sabresd.dtsi
> @@ -202,7 +202,7 @@
>  &fec {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_enet>;
> -	phy-mode = "rgmii";
> +	phy-mode = "rgmii-id";
>  	phy-reset-gpios = <&gpio1 25 GPIO_ACTIVE_LOW>;
>  	status = "okay";
>  };
> diff --git a/arch/arm/boot/dts/imx6qdl-sr-som.dtsi b/arch/arm/boot/dts/imx6qdl-sr-som.dtsi
> index 4ccb7afc4b35..6d7f6b9035bc 100644
> --- a/arch/arm/boot/dts/imx6qdl-sr-som.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-sr-som.dtsi
> @@ -53,7 +53,7 @@
>  &fec {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_microsom_enet_ar8035>;
> -	phy-mode = "rgmii";
> +	phy-mode = "rgmii-id";
>  	phy-reset-duration = <2>;
>  	phy-reset-gpios = <&gpio4 15 GPIO_ACTIVE_LOW>;
>  	status = "okay";
> diff --git a/arch/arm/boot/dts/imx6qdl-wandboard.dtsi b/arch/arm/boot/dts/imx6qdl-wandboard.dtsi
> index b7d5fb421404..50d9a989e06a 100644
> --- a/arch/arm/boot/dts/imx6qdl-wandboard.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-wandboard.dtsi
> @@ -224,7 +224,7 @@
>  &fec {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_enet>;
> -	phy-mode = "rgmii";
> +	phy-mode = "rgmii-id";
>  	phy-reset-gpios = <&gpio3 29 GPIO_ACTIVE_LOW>;
>  	interrupts-extended = <&gpio1 6 IRQ_TYPE_LEVEL_HIGH>,
>  			      <&intc 0 119 IRQ_TYPE_LEVEL_HIGH>;
> diff --git a/arch/arm/boot/dts/imx6sx-sabreauto.dts b/arch/arm/boot/dts/imx6sx-sabreauto.dts
> index b0ee324afe58..315044ccd65f 100644
> --- a/arch/arm/boot/dts/imx6sx-sabreauto.dts
> +++ b/arch/arm/boot/dts/imx6sx-sabreauto.dts
> @@ -75,7 +75,7 @@
>  &fec1 {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_enet1>;
> -	phy-mode = "rgmii";
> +	phy-mode = "rgmii-id";
>  	phy-handle = <&ethphy1>;
>  	fsl,magic-packet;
>  	status = "okay";
> diff --git a/arch/arm/boot/dts/imx6sx-sdb.dtsi b/arch/arm/boot/dts/imx6sx-sdb.dtsi
> index 08ede56c3f10..f6972deb5e39 100644
> --- a/arch/arm/boot/dts/imx6sx-sdb.dtsi
> +++ b/arch/arm/boot/dts/imx6sx-sdb.dtsi
> @@ -191,7 +191,7 @@
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_enet1>;
>  	phy-supply = <&reg_enet_3v3>;
> -	phy-mode = "rgmii";
> +	phy-mode = "rgmii-id";
>  	phy-handle = <&ethphy1>;
>  	phy-reset-gpios = <&gpio2 7 GPIO_ACTIVE_LOW>;
>  	status = "okay";
> diff --git a/arch/arm/boot/dts/imx7d-pico.dtsi b/arch/arm/boot/dts/imx7d-pico.dtsi
> index 3fd595a71202..6f50ebf31a0a 100644
> --- a/arch/arm/boot/dts/imx7d-pico.dtsi
> +++ b/arch/arm/boot/dts/imx7d-pico.dtsi
> @@ -92,7 +92,7 @@
>  			  <&clks IMX7D_ENET1_TIME_ROOT_CLK>;
>  	assigned-clock-parents = <&clks IMX7D_PLL_ENET_MAIN_100M_CLK>;
>  	assigned-clock-rates = <0>, <100000000>;
> -	phy-mode = "rgmii";
> +	phy-mode = "rgmii-id";
>  	phy-handle = <&ethphy0>;
>  	fsl,magic-packet;
>  	phy-reset-gpios = <&gpio6 11 GPIO_ACTIVE_LOW>;

-- 
Regards,
George

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
