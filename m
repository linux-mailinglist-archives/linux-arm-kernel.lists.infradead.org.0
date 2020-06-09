Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B745C1F4987
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 00:46:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3ywRENjHcyE1019Vc+PWfQUDUoTrLoKBlAaOVpBu4H8=; b=f236jbc4ajBSoc
	8h3LvKw8NHxromLQ0Q5cphUwxdm83PSp67Fw5uA8NW9Q/99iN2YxIkBBeYn1d85b4BqY04I36SsU0
	1YAzbSTebS+u/yGJ+rme9diUiFdnq71fE2RpdbiXi7T6hEqBWsaQInQ9k0qGKVCVMPL8DRtVKqBH8
	p49IYfIpRP1+mTzYsknT6zgXCxPPDXQ4o8bnAw9rwVxk2nLOFc6HuAMTVYaU+9EvGHwI8jRWrBpNu
	Rdkm21SYN4tFVBJmycR4WyureINUSgkRJVUnYertqBrbaWunP5MkzG18CWSVReJsf0WVjox4/PLPX
	N4Eb3bB9Mnr579o1qs/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jin0M-00072w-Va; Tue, 09 Jun 2020 22:46:03 +0000
Received: from mail-io1-f66.google.com ([209.85.166.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jin0C-00071H-Rx
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 22:45:54 +0000
Received: by mail-io1-f66.google.com with SMTP id p20so24617977iop.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 15:45:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=gz1fd2hBJ5hS3FPButyvI5+04t5MDlej2TuLhr1kaRU=;
 b=py6wWKvOlsZXiIyzjvNx3NifKfeUG36ew4vf0duCP+MWNyzbpBH4kD6g2cdddpwJ8G
 mZe3HyJrTpkHB2fRv8EotKsnDo8XN08/iqjJK5q5/y9uyLfhDOqiYmNFWMvc15mjx0nJ
 GeQHmxBaLkVrGsbJjBNATX7a8sAJV+ITgVjK1XNMqpqdEKTTloRdghVqoIjpuPONKvdo
 arW9wKR0o5XaqlSCQV5cozorHFb9V18Yu0AioSBg0bOSXN6zFqdW0hEPH2YSFDle3pOH
 qS2bsE67ifvoRtbsK3ki5AOvE9gSj4TH6LuojZHlO3GVJHmHQEpbSacrXZXsjqnJr16F
 OnkQ==
X-Gm-Message-State: AOAM531Kk5+kFndmZnfTG4/u9ljy0Y9Puv3TSyP9zhtZ4PTFKh21nt1h
 KEzlNSDqGUUduIGHKunibA==
X-Google-Smtp-Source: ABdhPJx05Lrtg4Cvy7MVHcnLfguL4y+dXcEflZSsvL7VlBjfDfG+EUZEpNI/rb5I3rm62JXfVmWpGQ==
X-Received: by 2002:a02:c848:: with SMTP id r8mr410528jao.15.1591742752203;
 Tue, 09 Jun 2020 15:45:52 -0700 (PDT)
Received: from xps15 ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id z4sm7945719iot.24.2020.06.09.15.45.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Jun 2020 15:45:51 -0700 (PDT)
Received: (nullmailer pid 1644565 invoked by uid 1000);
 Tue, 09 Jun 2020 22:45:50 -0000
Date: Tue, 9 Jun 2020 16:45:50 -0600
From: Rob Herring <robh@kernel.org>
To: Parthiban Nallathambi <parthiban@linumiz.com>
Subject: Re: [PATCH v2 2/2] ARM: dts: imx6ull: add MYiR MYS-6ULX SBC
Message-ID: <20200609224550.GB1626212@bogus>
References: <20200601145857.5658-1-parthiban@linumiz.com>
 <20200601145857.5658-2-parthiban@linumiz.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200601145857.5658-2-parthiban@linumiz.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_154552_906998_B483240D 
X-CRM114-Status: GOOD (  17.19  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.66 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 m.felsch@pengutronix.de, linux-kernel@vger.kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 01, 2020 at 04:58:57PM +0200, Parthiban Nallathambi wrote:
> Add support for the MYiR imx6ULL based single board computer
> equipped with on board 256MB NAND & RAM. The board also
> provides expansion header for expansion board, but this
> commit adds only support for SBC.
> 
> Signed-off-by: Parthiban Nallathambi <parthiban@linumiz.com>
> ---
> 
> Notes:
>     Changelog v2:
>     - moved regulator under root node
>     - status property removed
> 
>  arch/arm/boot/dts/Makefile                    |   1 +
>  .../boot/dts/imx6ull-myir-mys-6ulx-nand.dts   |  19 ++
>  arch/arm/boot/dts/imx6ull-myir-mys-6ulx.dtsi  | 238 ++++++++++++++++++
>  3 files changed, 258 insertions(+)
>  create mode 100644 arch/arm/boot/dts/imx6ull-myir-mys-6ulx-nand.dts
>  create mode 100644 arch/arm/boot/dts/imx6ull-myir-mys-6ulx.dtsi
> 
> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> index e8dd99201397..eab86051d782 100644
> --- a/arch/arm/boot/dts/Makefile
> +++ b/arch/arm/boot/dts/Makefile
> @@ -612,6 +612,7 @@ dtb-$(CONFIG_SOC_IMX6UL) += \
>  	imx6ull-14x14-evk.dtb \
>  	imx6ull-colibri-eval-v3.dtb \
>  	imx6ull-colibri-wifi-eval-v3.dtb \
> +	imx6ull-myir-mys-6ulx-nand.dtb \
>  	imx6ull-opos6uldev.dtb \
>  	imx6ull-phytec-segin-ff-rdk-nand.dtb \
>  	imx6ull-phytec-segin-ff-rdk-emmc.dtb \
> diff --git a/arch/arm/boot/dts/imx6ull-myir-mys-6ulx-nand.dts b/arch/arm/boot/dts/imx6ull-myir-mys-6ulx-nand.dts
> new file mode 100644
> index 000000000000..43e072671ca4
> --- /dev/null
> +++ b/arch/arm/boot/dts/imx6ull-myir-mys-6ulx-nand.dts
> @@ -0,0 +1,19 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2020 Linumiz
> + * Author: Parthiban Nallathambi <parthiban@linumiz.com>
> + */
> +
> +/dts-v1/;
> +#include "imx6ull.dtsi"
> +#include "imx6ull-myir-mys-6ulx.dtsi"
> +
> +/ {
> +	model = "MYiR i.MX6ULL MYS-6ULX Single Board Computer with NAND";
> +	compatible = "myir,imx6ull-mys-6ulx-nand", "myir,imx6ull-mys-6ulx",
> +		     "fsl,imx6ull";

Doesn't match the schema which says you have either 
"myir,imx6ull-mys-6ulx-nand" or "myir,imx6ull-mys-6ulx".

You ran this against 'make dtbs_check', right?


> +};
> +
> +&gpmi {
> +	status = "okay";
> +};
> diff --git a/arch/arm/boot/dts/imx6ull-myir-mys-6ulx.dtsi b/arch/arm/boot/dts/imx6ull-myir-mys-6ulx.dtsi
> new file mode 100644
> index 000000000000..03365a1ca8e6
> --- /dev/null
> +++ b/arch/arm/boot/dts/imx6ull-myir-mys-6ulx.dtsi

If w/o nand is a valid board config, don't you want to build this (i.e. 
make it a .dts)?

> @@ -0,0 +1,238 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2020 Linumiz
> + * Author: Parthiban Nallathambi <parthiban@linumiz.com>
> + */
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/interrupt-controller/irq.h>
> +#include <dt-bindings/pwm/pwm.h>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
