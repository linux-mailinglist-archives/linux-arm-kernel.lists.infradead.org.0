Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2BB01B902E
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 14:51:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:To:
	Subject:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cAX06iARhodq/H5qkv+vX3w8U3UpnDc9TFDckVmD/U4=; b=SEeleYHIZbYC0HF8zHq2Q+B94
	qx+ZoTqToEx0mo9QtlWub1cZCm3XKl4DKFnbgDLYat99WAUuyrIfZWMXrCEr/MK8h2018hT6SqpD0
	MsrRSaC0SW2n09WXNtH79ygk/JmjRq3o7UohM7fNiNUJ20EeZz3S2L74nq8DButJnYrZXsVUZeep1
	mdFRgjCCw6GjPfbN3aCVY4ySdyjBtRYc59At3P8v7r4Qjap5O+hwX6BkfCtNPuf3YKuQ1kYKQJ2Mk
	9Txk7cy44hOCAxbHLid5tx+DC8XKZgFQrLIn0y96f4To1yX/xewFohvisBT+skThRUhApmC7mWmM8
	DmRQxUSXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSgkW-0005W6-Fh; Sun, 26 Apr 2020 12:51:08 +0000
Received: from outils.crapouillou.net ([89.234.176.41] helo=crapouillou.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSgkM-0005UG-QC
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 12:51:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
 s=mail; t=1587905451; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=RSLBf9Fagf4q+HhwxFOFootc8dZMFZo1PVNBvnmStFM=;
 b=EE3tEVxRcTYljO+UifVqubFUQrC6iAs/RgFg4h5hzwmgAYOrQ//6ynWjCqU3jLthKM680I
 w4zrgopXWxMruQHZLwU9wrdD4t2QmfxnpJ9QHuBFsFR9VT00zMgd+L6pZkn0GZNklEZs4M
 RG+3Oi3W8AcC1Pwg4rvYx8qpse7EG9k=
Date: Sun, 26 Apr 2020 14:50:37 +0200
From: Paul Cercueil <paul@crapouillou.net>
Subject: Re: [PATCH v7 06/12] ARM: DTS: omap4: add sgx gpu child node
To: "H. Nikolaus Schaller" <hns@goldelico.com>
Message-Id: <DOBE9Q.00IRKFIW0JMG@crapouillou.net>
In-Reply-To: <5f493a50fedef45c3cacd91cbf999092d9c05164.1587760454.git.hns@goldelico.com>
References: <cover.1587760454.git.hns@goldelico.com>
 <5f493a50fedef45c3cacd91cbf999092d9c05164.1587760454.git.hns@goldelico.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_055059_044171_B58C5129 
X-CRM114-Status: GOOD (  16.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, David Airlie <airlied@linux.ie>,
 James Hogan <jhogan@kernel.org>, Jonathan Bakker <xc-racer2@live.ca>,
 dri-devel@lists.freedesktop.org, linux-mips@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, letux-kernel@openphoenux.org,
 Paul Burton <paulburton@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Tony Lindgren <tony@atomide.com>, Chen-Yu Tsai <wens@csie.org>,
 Kukjin Kim <kgene@kernel.org>, devicetree@vger.kernel.org,
 =?iso-8859-1?q?Beno=EEt?= Cousson <bcousson@baylibre.com>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Philipp Rossak <embed3d@gmail.com>, openpvrsgx-devgroup@letux.org,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 Daniel Vetter <daniel@ffwll.ch>, kernel@pyra-handheld.com
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nikolaus,

Le ven. 24 avril 2020 =E0 22:34, H. Nikolaus Schaller =

<hns@goldelico.com> a =E9crit :
> Add SGX GPU node with interrupt. Tested on PandaBoard ES.
> =

> Since omap4420/30/60 and omap4470 come with different SGX variants
> we need to introduce a new omap4470.dtsi. If an omap4470 board
> does not want to use SGX it is no problem to still include
> omap4460.dtsi.
> =

> Signed-off-by: H. Nikolaus Schaller <hns@goldelico.com>
> ---
>  arch/arm/boot/dts/omap4.dtsi   | 11 ++++++-----
>  arch/arm/boot/dts/omap4470.dts | 15 +++++++++++++++
>  2 files changed, 21 insertions(+), 5 deletions(-)
>  create mode 100644 arch/arm/boot/dts/omap4470.dts
> =

> diff --git a/arch/arm/boot/dts/omap4.dtsi =

> b/arch/arm/boot/dts/omap4.dtsi
> index 763bdea8c829..15ff3d7146af 100644
> --- a/arch/arm/boot/dts/omap4.dtsi
> +++ b/arch/arm/boot/dts/omap4.dtsi
> @@ -389,7 +389,7 @@ abb_iva: regulator-abb-iva {
>  			status =3D "disabled";
>  		};
> =

> -		target-module@56000000 {
> +		sgx_module: target-module@56000000 {
>  			compatible =3D "ti,sysc-omap4", "ti,sysc";
>  			reg =3D <0x5600fe00 0x4>,
>  			      <0x5600fe10 0x4>;
> @@ -408,10 +408,11 @@ target-module@56000000 {
>  			#size-cells =3D <1>;
>  			ranges =3D <0 0x56000000 0x2000000>;
> =

> -			/*
> -			 * Closed source PowerVR driver, no child device
> -			 * binding or driver in mainline
> -			 */
> +			gpu: gpu@0 {
> +				compatible =3D "ti,omap4-sgx540-120", "img,sgx540-120", =

> "img,sgx540";
> +				reg =3D <0x0 0x2000000>;	/* 32MB */
> +				interrupts =3D <GIC_SPI 21 IRQ_TYPE_LEVEL_HIGH>;
> +			};
>  		};
> =

>  		/*
> diff --git a/arch/arm/boot/dts/omap4470.dts =

> b/arch/arm/boot/dts/omap4470.dts
> new file mode 100644
> index 000000000000..f29c581300bf
> --- /dev/null
> +++ b/arch/arm/boot/dts/omap4470.dts
> @@ -0,0 +1,15 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Device Tree Source for OMAP4470 SoC
> + *
> + * Copyright (C) 2012 Texas Instruments Incorporated - =

> http://www.ti.com/
> + *
> + * This file is licensed under the terms of the GNU General Public =

> License
> + * version 2.  This program is licensed "as is" without any warranty =

> of any
> + * kind, whether express or implied.
> + */
> +#include "omap4460.dtsi"
> +
> +&sgx {

Does this even compile?

The node's handle is named sgx_module, not sgx.

-Paul

> +	compatible =3D "ti,omap4470-sgx544-112", "img,sgx544-112", =

> "img,sgx544";
> +};
> --
> 2.25.1
> =




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
