Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76EF151AF6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 20:51:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:
	In-Reply-To:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=plHgQLYRoD5NhgiBqzzRHXHPVD02cbjL/JeoJtzcaTw=; b=JgNWcag8sD+nzT
	VQpBgOBXib+djt6RIuiER7pryPdC9ML7Kn8Hry2RIDuL1iK2oP3Jrp5zYA2nYGON7nJAUgM9Bz4zZ
	LwvX5wrhlopgYqm8jhfja4rknKOCCF0bnsjshPE36pDU7E6UJlpbdRvyg5ou7x3u7t9PhkvkMX0oY
	4SUAe5SvcPhy8s3BG7Ch+kk2GttvRQX+8ZJMhlGyasIsGvJoxMrrGOuvH3kAZ0+mhUaTQDivdCEN2
	96TxKNpyUUuzrizLGBQcCpJQoMSgR1/YXkZZfddXvSOhExXlJzgEtCJNmZzwEhHEVFiRMrMkRnyMy
	LR0ElsjiSJn1SFqa5BdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfU3z-0002UR-U6; Mon, 24 Jun 2019 18:51:35 +0000
Received: from smtp-sh.infomaniak.ch ([128.65.195.4])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfU3k-0002Tq-Sz
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 18:51:23 +0000
Received: from smtp7.infomaniak.ch (smtp7.infomaniak.ch [83.166.132.30])
 by smtp-sh.infomaniak.ch (8.14.5/8.14.5) with ESMTP id x5OIpDFQ021962
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 24 Jun 2019 20:51:13 +0200
Received: from DESKTOP6U5EHUC (pub212004083018.dh-hfc.datazug.ch [212.4.83.18])
 (authenticated bits=0)
 by smtp7.infomaniak.ch (8.14.5/8.14.5) with ESMTP id x5OIp9r5155334
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Mon, 24 Jun 2019 20:51:12 +0200
From: <claudio@databyte.ch>
To: "'Andrew Lunn'" <andrew@lunn.ch>
References: <004601d52a7d$8ee52c40$acaf84c0$@databyte.ch>
 <20190624171210.GA31306@lunn.ch>
In-Reply-To: <20190624171210.GA31306@lunn.ch>
Subject: AW: [Patch] support for new board
Date: Mon, 24 Jun 2019 20:51:09 +0200
Message-ID: <00b401d52abd$cbb17d50$631477f0$@databyte.ch>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQF62Ka3Ic0DseE3cwDdw+8n8v0avgHl5oa8p1CZk4A=
Content-Language: de-ch
X-Antivirus: Dr.Web (R) for Unix mail servers drweb plugin ver.6.0.2.8
X-Antivirus-Code: 0x100000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_115121_244729_1D815B27 
X-CRM114-Status: GOOD (  21.48  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [128.65.195.4 listed in list.dnswl.org]
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
Cc: shawnguo@kernel.org, s.hauer@pengutronix.de, linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrew

Thank you very much for your suggestions and your answer. =

I'm very sorry for the missing signed-off line. =

I will add they as soon as I have made corrections to the patch as proposed
by you. =


One questions about defconfig. =

You wrote, that defconfigs have not been added since years. =

So what would be the right way today?

Thanks
Regards
Claudio

-----Urspr=FCngliche Nachricht-----
Von: Andrew Lunn <andrew@lunn.ch> =

Gesendet: Montag, 24. Juni 2019 19:12
An: claudio@databyte.ch
Cc: linux-arm-kernel@lists.infradead.org; shawnguo@kernel.org;
s.hauer@pengutronix.de; festevam@gmail.com; linux-imx@nxp.com;
kernel@pengutronix.de
Betreff: Re: [Patch] support for new board

On Mon, Jun 24, 2019 at 01:11:20PM +0200, claudio@databyte.ch wrote:
> Hi there
> =

> I would like to add support for a new board. =

> Below is the Patch. =


Hi Claudio

Please take a read of

https://www.kernel.org/doc/html/latest/process/submitting-patches.html

Your email has the wrong format. You a missing a Signed-off-by, etc.

> ---------------------------------------
> =

> >From 84ee8bc7b927ca9f88870a6a2f73906bb9492698 Mon Sep 17 00:00:00 =

> >2001
> From: Claudio Hediger <claudio@databyte.ch>
> Date: Mon, 24 Jun 2019 12:39:51 +0200
> Subject: [PATCH] added eval1a board
> =

> ---
>  arch/arm/boot/dts/Makefile               |   4 +-
>  arch/arm/boot/dts/imx6ull-dtb-eval1a.dts | 168 +++++++++++++++
>  arch/arm/configs/eval1a_defconfig        | 259 +++++++++++++++++++++++
>  3 files changed, 430 insertions(+), 1 deletion(-)  create mode 100644 =

> arch/arm/boot/dts/imx6ull-dtb-eval1a.dts
>  create mode 100644 arch/arm/configs/eval1a_defconfig
> =

> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile =

> index dab2914fa293..5561881358ba 100644
> --- a/arch/arm/boot/dts/Makefile
> +++ b/arch/arm/boot/dts/Makefile
> @@ -580,7 +580,9 @@ dtb-$(CONFIG_SOC_IMX6UL) +=3D \
>  	imx6ull-14x14-evk.dtb \
>  	imx6ull-colibri-eval-v3.dtb \
>  	imx6ull-colibri-wifi-eval-v3.dtb \
> -	imx6ulz-14x14-evk.dtb
> +	imx6ulz-14x14-evk.dtb \
> +        imx6ull-dtb-eval1a.dtb

These files are listed in alphabetical order.  There is also a space/tab
problem.  The -dtb- also looks a bit odd. I can see it getting mixed up with
Device Tree Binary. Maybe -databyte- would be better?

> +	=

>  dtb-$(CONFIG_SOC_IMX7D) +=3D \
>  	imx7d-cl-som-imx7.dtb \
>  	imx7d-colibri-emmc-eval-v3.dtb \
> diff --git a/arch/arm/boot/dts/imx6ull-dtb-eval1a.dts
> b/arch/arm/boot/dts/imx6ull-dtb-eval1a.dts
> new file mode 100644
> index 000000000000..e549ef90816f
> --- /dev/null
> +++ b/arch/arm/boot/dts/imx6ull-dtb-eval1a.dts
> @@ -0,0 +1,168 @@
> +/*
> + *
> + * This program is free software; you can redistribute it and/or =

> +modify
> + * it under the terms of the GNU General Public License version 2 as
> + * published by the Free Software Foundation.
> + */

Please add an SPDX line, and skip this text.

> +
> +/dts-v1/;
> +
> +#include "imx6ull.dtsi"
> +
> +/ {
> +	model =3D "Databyte imx6 Evalboard 1A";
> +	compatible =3D "databyte,eval1a", "fsl,imx6ull";

databyte needs adding to
Documentation/devicetree/bindings/vendor-prefixes.yaml =


> +&fec1 {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_enet1>;
> +	phy-mode =3D "rmii";
> +	phy-handle =3D <&ethphy0>;
> +	status =3D "okay";
> +
> +	mdio {
> +		#address-cells =3D <1>;
> +		#size-cells =3D <0>;
> +
> +		ethphy0: ethernet-phy@2 {
> +			compatible =3D "ethernet-phy-ieee802.3-c22";

This compatible is not required.

> +			reg =3D <2>;
> +		};
> +	};
> +};
> +
> +
> +
> +&iomuxc {
> +	pinctrl-names =3D "default";
> +	//pinctrl-0 =3D <&pinctrl_hog_1>;

Please avoid commented out code.

> +	eval1a {
> +
> +		pinctrl_enet1: enet1grp {
> +			fsl,pins =3D <
> +				MX6UL_PAD_ENET1_RX_EN__ENET1_RX_EN
> 0x1b0b0
> +				MX6UL_PAD_ENET1_RX_ER__ENET1_RX_ER
> 0x1b0b0

It looks like your mailer has corrupted this patch. Try using 'git
send-email'

> diff --git a/arch/arm/configs/eval1a_defconfig
> b/arch/arm/configs/eval1a_defconfig

defconfig's have not been added for years.

	    Andrew


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
