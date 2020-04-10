Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1617D1A496B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 19:42:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IUpAyjONynqw7ZeiCl4qcOKljY6kd+gLfoV3Sf+JcbM=; b=BgOSsq1yK1O30k
	DS4WU1qT3NqPfNElChfcQiRtOBVNQF9APjXz0wEDLmD4wwFC8u/1L3zQqZ7fygRYZKRT/Sc9+UhpY
	gku/34xZ9A42N47guI3A+2ipx3TV5BklbbuDi6HoGetaF9h48ugOu5TafMTgnGMh5qCUzPs9EQBsd
	LGlzuWSAfr/+lMxZ3UDWaGV6E0XVB9pXvl98tFD6hoC18gq9jy0nZSUkNGSzUSApMyVdBu/eMw7BA
	9F5Gs4pCDOE0vsa+h0eJ5xTZYnkFOVXPZ/BR91Fqau6eiR9TRy8NS9NwPpypJy5RUMpSW5idw0D2W
	eD42WjjLID3IxsDrvDHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMxfH-0002ee-PF; Fri, 10 Apr 2020 17:42:03 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMxf4-0002cj-6Q
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 17:41:54 +0000
Received: by mail-ot1-f65.google.com with SMTP id q2so2502608otk.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Apr 2020 10:41:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=tMw0W+47LDJMikvn2rQTXBZsiV0m5ltXOLpqbxXXBe8=;
 b=CuZFscTe1QlofQ8hGk9YVCDrWDGsXJh8+XCcxHmNBmIkvl59ciiC1UM+XKa6jTUtNC
 GehYlLVWeoJkaDUy3VZRDmHRFVE3ZDVU/lDSw7SIT8V+yDuu1gdKmdbqR2/Eax2pc16M
 PeNbcClKgaAKfMz+4R4jqECls+0tdIJUuTSK3VIBuzXOg8H7yf2OoijF1eKCoClIdtCB
 PoH0vAe+Si7GbxKT0/plSSsB7xoZyu0ukZIYlvVXj3FznX+v6lwaaecEfsGr0i/xlB4r
 qUpGLARXYA1nQEdVj8Qzt9U6IYMNyPdAhpu8FiZf0UP4ZNQIbnC/usvkEWP6A7IhowRp
 JJ3w==
X-Gm-Message-State: AGi0Puaztu9pZw7/QH+g/vo9viE1eKDVwtG/rX6deNf1Xwg54LJBdrfc
 oi2rzw3QFolno0QJzH3aYl5P3zI=
X-Google-Smtp-Source: APiQypL1Q8OW0KhaDBV7H/NhQYZXEaiJ3p6c2oPjgF0ss6RcxZ5C0z+vtiAJ30p/BTeXTvlUmJp1xg==
X-Received: by 2002:a4a:848e:: with SMTP id n14mr2388840oog.44.1586540509468; 
 Fri, 10 Apr 2020 10:41:49 -0700 (PDT)
Received: from rob-hp-laptop (ip-99-203-29-27.pools.spcsdns.net.
 [99.203.29.27])
 by smtp.gmail.com with ESMTPSA id b2sm1566683oii.20.2020.04.10.10.41.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Apr 2020 10:41:48 -0700 (PDT)
Received: (nullmailer pid 18630 invoked by uid 1000);
 Fri, 10 Apr 2020 17:18:52 -0000
Date: Fri, 10 Apr 2020 12:18:52 -0500
From: Rob Herring <robh@kernel.org>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Subject: Re: [PATCH v4 2/5] ARM: dts: add Protonic PRTI6Q board
Message-ID: <20200410171852.GA11889@bogus>
References: <20200330120640.9810-1-o.rempel@pengutronix.de>
 <20200330120640.9810-3-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200330120640.9810-3-o.rempel@pengutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_104150_249812_C6971316 
X-CRM114-Status: GOOD (  17.34  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 David Jander <david@protonic.nl>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 30, 2020 at 02:06:37PM +0200, Oleksij Rempel wrote:
> Protonic PRTI6Q is a development board and a base class for different
> specific customer application boards based on the i.MX6 family of SoCs,
> developed by Protonic Holland.
> 
> Signed-off-by: David Jander <david@protonic.nl>
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  .../devicetree/bindings/arm/fsl.yaml          |   1 +
>  arch/arm/boot/dts/Makefile                    |   1 +
>  arch/arm/boot/dts/imx6q-prti6q.dts            | 551 ++++++++++++++++++
>  arch/arm/boot/dts/imx6qdl-prti6q.dtsi         | 185 ++++++
>  4 files changed, 738 insertions(+)
>  create mode 100644 arch/arm/boot/dts/imx6q-prti6q.dts
>  create mode 100644 arch/arm/boot/dts/imx6qdl-prti6q.dtsi
> 
> diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> index a8e0b4a813ed..3b52b582efdf 100644
> --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> @@ -119,6 +119,7 @@ properties:
>                - fsl,imx6q-sabreauto
>                - fsl,imx6q-sabrelite
>                - fsl,imx6q-sabresd
> +              - prt,prti6q                      # Protonic PRTI6Q board
>                - technologic,imx6q-ts4900
>                - technologic,imx6q-ts7970
>                - toradex,apalis_imx6q            # Apalis iMX6 Module
> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> index d6546d2676b9..3f500a9e88a9 100644
> --- a/arch/arm/boot/dts/Makefile
> +++ b/arch/arm/boot/dts/Makefile
> @@ -530,6 +530,7 @@ dtb-$(CONFIG_SOC_IMX6Q) += \
>  	imx6q-phytec-mira-rdk-nand.dtb \
>  	imx6q-phytec-pbab01.dtb \
>  	imx6q-pistachio.dtb \
> +	imx6q-prti6q.dtb \
>  	imx6q-rex-pro.dtb \
>  	imx6q-sabreauto.dtb \
>  	imx6q-sabrelite.dtb \
> diff --git a/arch/arm/boot/dts/imx6q-prti6q.dts b/arch/arm/boot/dts/imx6q-prti6q.dts
> new file mode 100644
> index 000000000000..46a455e20fa3
> --- /dev/null
> +++ b/arch/arm/boot/dts/imx6q-prti6q.dts
> @@ -0,0 +1,551 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
> +/*
> + * Copyright (c) 2014 Protonic Holland
> + */
> +
> +/dts-v1/;
> +#include "imx6q.dtsi"
> +#include "imx6qdl-prti6q.dtsi"
> +#include <dt-bindings/leds/common.h>
> +#include <dt-bindings/sound/fsl-imx-audmux.h>
> +
> +/ {
> +	model = "Protonic PRTI6Q board";
> +	compatible = "prt,prti6q", "fsl,imx6q";
> +
> +	memory@10000000 {
> +		device_type = "memory";
> +		reg = <0x10000000 0xf0000000>;
> +	};
> +
> +	backlight_lcd: backlight-lcd {
> +		compatible = "pwm-backlight";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_backlight>;
> +		pwms = <&pwm1 0 5000000>;
> +		brightness-levels = <0 16 64 255>;
> +		num-interpolated-steps = <16>;
> +		default-brightness-level = <16>;
> +		power-supply = <&reg_3v3>;
> +		enable-gpios = <&gpio4 28 GPIO_ACTIVE_HIGH>;
> +		status = "okay";

Don't need status.

Otherwise,

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
