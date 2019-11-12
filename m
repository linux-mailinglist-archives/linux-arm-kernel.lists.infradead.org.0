Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3827F8F30
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 13:02:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JCGiFPmCpajExYAwBR6uWPkCGvN0axW/fBvG/yCYEdM=; b=WiM6PscOo+3PAES3SJE7ryvLu
	fhvLX75erX+thtAV3bovri5rM+jWkTMfg9vzWE58j0URgoWxSHTS8QoSslii0k+qR3Fav+Uj0paYM
	is0vgLskhT/uex9hXE/Bccb06db+/8HTdiKbbNo5oIOt0Rd/O79e8kbJFWloX1PYaq8MsJeZbgkmx
	VSwwjNgQRacL+DeH5GqdG8N8KNQgNeGC2KJ9D8Pj/C9tVy3NhQR/i++YyGPPtB3W9eNYFk8wByjYM
	/dKCIjn2BeeltNhKHqw0YXANT+FaXnnwMaJfXI393PUC1AjNaAUsfWqdO1jRbCINw9E66IamulCfK
	S7BERYYXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUUsQ-0003gs-7Q; Tue, 12 Nov 2019 12:02:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUUsJ-0003gY-Gx
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 12:02:24 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 66A7D2084E;
 Tue, 12 Nov 2019 12:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573560142;
 bh=Yg2XoR2AQ2Dyq+/wLccnV918OcIcs8U+HHKtW2NtsuE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Y1lXsl/2SYZExjnI3bCn60A/vEVh5Q8AgmPiN3D5HpkHicJZiNZ8DZaBhEwR7XOT2
 uNJU6DYWLgJRPqIECNi7BDx2OScrnaUp9adyY7rtxal0CxODze+7iHK0AYidXGjE1A
 IuIxihpjR+DCaJM5NDBypIR5ePrLbjfUim4mT6Sg=
Date: Tue, 12 Nov 2019 13:02:19 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Corentin Labbe <clabbe@baylibre.com>
Subject: Re: [PATCH v4 1/2] ARM64: dts: sun50i-h6-pine-h64: state that the DT
 supports the modelA
Message-ID: <20191112120219.GX4345@gilmour.lan>
References: <1573316433-40669-1-git-send-email-clabbe@baylibre.com>
 <1573316433-40669-2-git-send-email-clabbe@baylibre.com>
MIME-Version: 1.0
In-Reply-To: <1573316433-40669-2-git-send-email-clabbe@baylibre.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_040223_604501_62CEA665 
X-CRM114-Status: GOOD (  21.26  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, jernej.skrabec@siol.net,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, wens@csie.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5476137553260017186=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5476137553260017186==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="MhP8cYafZlTESjGT"
Content-Disposition: inline


--MhP8cYafZlTESjGT
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Sat, Nov 09, 2019 at 04:20:32PM +0000, Corentin Labbe wrote:
> The current sun50i-h6-pine-h64 DT does not specify which model (A or B)
> it supports.
> When this file was created, only modelA was existing, but now both model
> exists and with the time, this DT drifted to support the model B since it is
> the most common one.
> Furtheremore, some part of the model A does not work with it like ethernet and
> HDMI connector (as confirmed by Jernej on IRC).
>
> So it is time to settle the issue, and the easiest way was to state that
> this DT is for model B.
> Easiest since only a small name changes is required.
> Doing the opposite (stating this file is for model A) will add changes (for
> ethernet and HDMI) and so, will break too many setup.
>
> But as asked by the maintainer this patch state this file is for model A.
> In the process this patch adds the missing compoments to made it work on
> model A.
>
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> ---
>  .../devicetree/bindings/arm/sunxi.yaml        |  4 ++--
>  .../boot/dts/allwinner/sun50i-h6-pine-h64.dts | 19 +++++++++++++++----
>  2 files changed, 17 insertions(+), 6 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documentation/devicetree/bindings/arm/sunxi.yaml
> index 8a1e38a1d7ab..b8ec616c2538 100644
> --- a/Documentation/devicetree/bindings/arm/sunxi.yaml
> +++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
> @@ -599,9 +599,9 @@ properties:
>            - const: pine64,pine64-plus
>            - const: allwinner,sun50i-a64
>
> -      - description: Pine64 PineH64
> +      - description: Pine64 PineH64 model A
>          items:
> -          - const: pine64,pine-h64
> +          - const: pine64,pine-h64-modelA

You can change the description to make it more obvious if you want to,
but changing the compatible is a no-go.

>            - const: allwinner,sun50i-h6
>
>        - description: Pine64 LTS
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
> index 74899ede00fb..1d9afde4d3d7 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
> @@ -10,8 +10,8 @@
>  #include <dt-bindings/gpio/gpio.h>
>
>  / {
> -	model = "Pine H64";
> -	compatible = "pine64,pine-h64", "allwinner,sun50i-h6";
> +	model = "Pine H64 model A";
> +	compatible = "pine64,pine-h64-modelA", "allwinner,sun50i-h6";

Same thing here, changing the model is fine, the compatible isn't

>  	aliases {
>  		ethernet0 = &emac;
> @@ -22,9 +22,10 @@
>  		stdout-path = "serial0:115200n8";
>  	};
>
> -	connector {
> +	hdmi_connector: connector {

Why do you need to add the label?

Thanks!
Maxime

--MhP8cYafZlTESjGT
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXcqfSwAKCRDj7w1vZxhR
xbtVAQCjK/Nue5ofSHTF+N2UYD2oQHh9eCSQaNnpwH0L9zEvIgEAn9sTMRVhOQZp
PbvVGTIVHfDgrpeI3lrH/v6mZmKcbAI=
=1SAq
-----END PGP SIGNATURE-----

--MhP8cYafZlTESjGT--


--===============5476137553260017186==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5476137553260017186==--

