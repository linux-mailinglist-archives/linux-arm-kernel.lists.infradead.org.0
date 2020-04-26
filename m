Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CDE01B9036
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 14:54:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:To:
	Subject:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=a/C+WaZEOc/jKzTGiPZ3w5yyfdOzSl3Cq7dK4Mi2hx0=; b=rZsQdeIjaucG9oF4f9SBUffuC
	sLGiE7LJ57TzFvB4ua4L6piBTclAxWNcFxJ6nG2Dx3FVGyFbktv0hGN6sW6RezlYOpGIBq5wPeKib
	aKWOLEH8/g7NagakAPZe7F8K8ql6j7r9ZgdoFn2XQCRLGcVom1etTjmwWfxfLfpELjmKS4eeU0TJB
	ysx8ArZQb80CyAREeaP1QwIcl7UZwu4r699fiS2GCjlk9jtLb3Pjjry6+4SmJ1cIi4WMHxyduTyYn
	9w4tMWFAwhiBtrwfZkXttEdD3ckA50yjm0wjg9lOygKAC0+MrkBrTBX4YZzzQ96tojsC81NdwDeMF
	A2L51xYvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSgne-0006Bx-Im; Sun, 26 Apr 2020 12:54:22 +0000
Received: from outils.crapouillou.net ([89.234.176.41] helo=crapouillou.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSgnV-0006B7-11
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 12:54:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
 s=mail; t=1587905650; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=QGs1VbCXpq3w2bD385Ag0nyW5WilZcot3VZIcHvBKBA=;
 b=WgSWzgZ1oOoj+AbGcqvEGtTfzTVBQzFedGQ2dDOe/N42jNpWaMGtbZ3E/vaikqD/2rDXMX
 hI+YRAoyaapaSEK8YkTDlcs5PrVwEmccrvT5wN9dnpAtejFz81BMJMROx42MAEjI5115H4
 Ljp1howOILhfEB60hF1DGes1umRV6U4=
Date: Sun, 26 Apr 2020 14:53:55 +0200
From: Paul Cercueil <paul@crapouillou.net>
Subject: Re: [PATCH v7 09/12] ARM: dts: sun6i: a31: add sgx gpu child node
To: "H. Nikolaus Schaller" <hns@goldelico.com>
Message-Id: <VTBE9Q.B8A32JWI2Q9V3@crapouillou.net>
In-Reply-To: <47740d708e00632735a8c1957109ca349029c716.1587760454.git.hns@goldelico.com>
References: <cover.1587760454.git.hns@goldelico.com>
 <47740d708e00632735a8c1957109ca349029c716.1587760454.git.hns@goldelico.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_055413_274742_B761CE11 
X-CRM114-Status: GOOD (  16.71  )
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



Le ven. 24 avril 2020 =E0 22:34, H. Nikolaus Schaller =

<hns@goldelico.com> a =E9crit :
> From: Philipp Rossak <embed3d@gmail.com>
> =

> We are adding the devicetree binding for the PVR-SGX-544-115 gpu.
> =

> This driver is currently under development in the openpvrsgx-devgroup.
> Right now the full binding is not figured out, so we provide here a
> placeholder. It will be completed as soon as there is a demo =

> available.
> =

> The currently used binding that is used during development is more
> complete and was already verifyed by loading the kernelmodule =

> successful.
> =

> Signed-off-by: Philipp Rossak <embed3d@gmail.com>
> Signed-off-by: H. Nikolaus Schaller <hns@goldelico.com>
> ---
>  arch/arm/boot/dts/sun6i-a31.dtsi | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> =

> diff --git a/arch/arm/boot/dts/sun6i-a31.dtsi =

> b/arch/arm/boot/dts/sun6i-a31.dtsi
> index f3425a66fc0a..933a825bf460 100644
> --- a/arch/arm/boot/dts/sun6i-a31.dtsi
> +++ b/arch/arm/boot/dts/sun6i-a31.dtsi
> @@ -1417,5 +1417,16 @@ p2wi: i2c@1f03400 {
>  			#address-cells =3D <1>;
>  			#size-cells =3D <0>;
>  		};
> +
> +		gpu: gpu@1c400000 {
> +			compatible =3D "allwinner,sun8i-a31-sgx544-115",
> +				     "img,sgx544-115", "img,sgx544";
> +			reg =3D <0x01c40000 0x10000>;
> +			/*
> +			 * This node is currently a placeholder for the gpu.
> +			 * This will be completed when a full demonstration
> +			 * of the openpvrsgx driver is available for this board.
> +			 */

This node doesn't have clocks, so I don't see how it'd work.

Better delay the introduction of the GPU node for this board until you =

know it works.

-Paul

> +		};
>  	};
>  };
> --
> 2.25.1
> =




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
