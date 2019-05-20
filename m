Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C988A231F5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 13:08:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tt1oPNhbxO5bqBslFg4fk2RWPZ0bs2BcPOQmX50vWTM=; b=tDli03axr3/R2P6DNptvdE7sk
	MaYJiGjN2TbsIYe0Yik5DWEGNasSHEy+K6ygBJPOoH/NwMFEuT1F39Y1rc/g7qB+PqyiLthvW8JXy
	vTvtIvoDGcd4mM+spMpGpN8dp8TE35mhe0B8cXtWc7gWTBGldRFe1J45hztb0Qz8AdoBZlYyJoMiI
	iiQEVbAhzrPRpTvOB4e4AQAsBTdg6eadW+3CbpT8+6VCOtqPQq5CQ+XyAT/sGZQpfEvuZ6vdTwuvq
	yUOdHDCl8/wMxJCVniP4WfqAwYJc+jr5f3fh2BgLoa6zSa1FAx4CBWyt+v7VmA7txQMxDshdFnh5w
	wzJBOxhrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSg9C-0000Nh-FO; Mon, 20 May 2019 11:08:02 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSg95-0000NK-Fo
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 11:07:57 +0000
X-Originating-IP: 90.88.22.185
Received: from localhost (aaubervilliers-681-1-80-185.w90-88.abo.wanadoo.fr
 [90.88.22.185]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 941102000B;
 Mon, 20 May 2019 11:07:42 +0000 (UTC)
Date: Mon, 20 May 2019 13:07:42 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Luca Weiss <luca@z3ntu.xyz>
Subject: Re: [PATCH] arm64: dts: allwinner: a64: Add lradc node
Message-ID: <20190520110742.ykgxwaabzzwovgpl@flea>
References: <20190518170929.24789-1-luca@z3ntu.xyz>
MIME-Version: 1.0
In-Reply-To: <20190518170929.24789-1-luca@z3ntu.xyz>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_040755_678284_73AAC61E 
X-CRM114-Status: GOOD (  15.65  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============4483010945298935000=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4483010945298935000==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="2tvwy2f7gcggtbhz"
Content-Disposition: inline


--2tvwy2f7gcggtbhz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi!

On Sat, May 18, 2019 at 07:09:30PM +0200, Luca Weiss wrote:
> Add a node describing the KEYADC on the A64.
>
> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
> ---
>  arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 7 +++++++
>  1 file changed, 7 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> index 7734f70e1057..dc1bf8c1afb5 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> @@ -704,6 +704,13 @@
>  			status = "disabled";
>  		};
>
> +		lradc: lradc@1c21800 {
> +			compatible = "allwinner,sun4i-a10-lradc-keys";
> +			reg = <0x01c21800 0x100>;
> +			interrupts = <GIC_SPI 30 IRQ_TYPE_LEVEL_HIGH>;
> +			status = "disabled";
> +		};
> +

The controller is pretty different on the A64 compared to the A10. The
A10 has two channels for example, while the A64 has only one.

It looks like the one in the A83t though, so you can use that
compatible instead.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--2tvwy2f7gcggtbhz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXOKKfgAKCRDj7w1vZxhR
xQtDAQDRqheEYCsPyl3AeW0fjU9b+loQ9xMJslojYXUeY00sCAEAwj5O5rO1Q8Tw
C6Mk9UGH1BCkUcHPRpTCOaOAmurSpgA=
=fEN1
-----END PGP SIGNATURE-----

--2tvwy2f7gcggtbhz--


--===============4483010945298935000==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4483010945298935000==--

