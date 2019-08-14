Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B20878CFF1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 11:45:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8eou76ZaoqI4jv2Avzc3ZoNdemngc2N2b4bXGmoYPko=; b=t4+WEHMQtaVKMa
	l+cC0INYluonG3MW1JkJEhKRgrgKXYPsr+UnjIFHsjaSfH70NYZrMSkznnf4PaLwCdiBv6ShBbtKt
	02wGYRDH9WlZmQbeJcqEhx9Q4gMUFFm+g6UqD4yHA2wqUoa2NOR1DD3lRE813CY0bYKc/ARms7MWI
	yBh51MWHk8jHBhdw9z+es9uGN86DQ9cwUm2KWGOseR6EySKYfNKP0ARV6197R7ehBVjBRZTb0pVbj
	CFGN0DuQmL/FVYzrhEYWFWXBy4nXVBOEc6VYOVIVIONLarHcJzm2tSQONviBridxwEqDDo4NFUMt8
	7QT0sgQW9pGbJD/Zur/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxpqH-0003Gi-Ra; Wed, 14 Aug 2019 09:45:18 +0000
Received: from hillosipuli.retiisi.org.uk ([2a01:4f9:c010:4572::81:2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxppz-0003GG-0v
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 09:45:00 +0000
Received: from valkosipuli.localdomain (valkosipuli.retiisi.org.uk
 [IPv6:2a01:4f9:c010:4572::80:2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by hillosipuli.retiisi.org.uk (Postfix) with ESMTPS id 7A1F3634C89;
 Wed, 14 Aug 2019 12:42:38 +0300 (EEST)
Received: from sailus by valkosipuli.localdomain with local (Exim 4.92)
 (envelope-from <sakari.ailus@retiisi.org.uk>)
 id 1hxpnh-0000u7-SD; Wed, 14 Aug 2019 12:42:37 +0300
Date: Wed, 14 Aug 2019 12:42:37 +0300
From: Sakari Ailus <sakari.ailus@iki.fi>
To: =?iso-8859-1?Q?S=E9bastien?= Szymanski <sebastien.szymanski@armadeus.com>
Subject: Re: [PATCH v3 1/3] ARM: dts: imx6ul: Add csi node
Message-ID: <20190814094237.GJ2527@valkosipuli.retiisi.org.uk>
References: <20190731163257.32448-1-sebastien.szymanski@armadeus.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190731163257.32448-1-sebastien.szymanski@armadeus.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_024459_244698_A78D3CA6 
X-CRM114-Status: GOOD (  15.02  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 devel@driverdev.osuosl.org, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Rui Miguel Silva <rmfrfs@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi S=E9bastien,

On Wed, Jul 31, 2019 at 06:32:57PM +0200, S=E9bastien Szymanski wrote:
> Add csi node for i.MX6UL SoC.
> =

> Reviewed-by: Fabio Estevam <festevam@gmail.com>
> Signed-off-by: S=E9bastien Szymanski <sebastien.szymanski@armadeus.com>

This should be probably merged through the ARM tree.

I can take the other two.

> ---
> =

> Changes for v3:
>  - none
> =

> Changes for v2:
>  - only "mclk" clock is required now.
> =

>  arch/arm/boot/dts/imx6ul.dtsi | 9 +++++++++
>  1 file changed, 9 insertions(+)
> =

> diff --git a/arch/arm/boot/dts/imx6ul.dtsi b/arch/arm/boot/dts/imx6ul.dtsi
> index 81d4b4925127..56cfcf0e5084 100644
> --- a/arch/arm/boot/dts/imx6ul.dtsi
> +++ b/arch/arm/boot/dts/imx6ul.dtsi
> @@ -957,6 +957,15 @@
>  				};
>  			};
>  =

> +			csi: csi@21c4000 {
> +				compatible =3D "fsl,imx6ul-csi", "fsl,imx7-csi";
> +				reg =3D <0x021c4000 0x4000>;
> +				interrupts =3D <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks =3D <&clks IMX6UL_CLK_CSI>;
> +				clock-names =3D "mclk";
> +				status =3D "disabled";
> +			};
> +
>  			lcdif: lcdif@21c8000 {
>  				compatible =3D "fsl,imx6ul-lcdif", "fsl,imx28-lcdif";
>  				reg =3D <0x021c8000 0x4000>;

-- =

Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
