Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE09912E57C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 12:04:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hKJ55Ab5FXi2l9oRQyS3xfR6ZYpopz2Rreb/KcFgP/8=; b=tdGcvMWl2jtgJDnsE2YgoHqbT
	C47YCrzDyLYdnvgTPF9gQIICuWNcuztNEWn4BMVtBNk4JZxU5/0/4seXOuihQpp4//g6fklPS1Sie
	8OgJMPEygasIfukMmlpVB5eEBjyLzvZFtqx/uSm0MV3mXx1VMPq15ASfLFYxiWPw6fV/G8ddX7d0l
	nizfJa7Pr9Q4w4t7J5dP2qk/KRFvCK9f1jj65tEtowKSeH6oVZbK3NlaufOp2nZlJqA+oCHTduuTW
	P10f9IH+M2LKBaprAv9mAJTsaMVdw3xCfLpc6+TJU0cD5QH/kktvjr8pmaHXEr/MU+bU2v+J6GDvh
	D8S0GBrgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imyHC-0004bq-UG; Thu, 02 Jan 2020 11:04:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imyH4-0004bK-0y
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 11:04:19 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 47207215A4;
 Thu,  2 Jan 2020 11:04:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577963057;
 bh=3LNe3iq4StFtI2iDqoiQdEX5CNmS4n6Pm0K46y0rQn4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dVtGJkDM8+eS4K5lHhsXqMDzObmErV/mA0SM43IPLKAiQMWCxyfiXAl7ZN0g9WEK6
 +uBi06ZlcF8DQgbWHRW/MC1034bd9h3uP2mvCBp6xSx1JjII8dpuawFMIrC7kwMABZ
 zIbSjojPzOsg/GnURuFNNHxlK7lPValhQDKlafNI=
Date: Thu, 2 Jan 2020 12:04:15 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v3 7/9] dt-bindings: sun6i-dsi: Document R40 MIPI-DSI
 controller (w/ A64 fallback)
Message-ID: <20200102110415.rtehrvtq3darfv35@gilmour.lan>
References: <20191231130528.20669-1-jagan@amarulasolutions.com>
 <20191231130528.20669-8-jagan@amarulasolutions.com>
MIME-Version: 1.0
In-Reply-To: <20191231130528.20669-8-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_030418_082995_2BC2CA99 
X-CRM114-Status: GOOD (  15.68  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jernej Skrabec <jernej.skrabec@siol.net>, David Airlie <airlied@linux.ie>,
 linux-sunxi <linux-sunxi@googlegroups.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6132887260609289530=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6132887260609289530==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ryvuaned34qshr7z"
Content-Disposition: inline


--ryvuaned34qshr7z
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Dec 31, 2019 at 06:35:26PM +0530, Jagan Teki wrote:
> The MIPI DSI controller on Allwinner R40 is similar on
> the one on A64 like doesn't associate any DSI_SCLK gating.
>
> So, add R40 compatible and append A64 compatible as fallback.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
> Changes for v3:
> - update the binding in new yaml format
>
>  .../bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml    | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml b/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml
> index d41ecb5e7f7c..138ffb6ae403 100644
> --- a/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml
> +++ b/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml
> @@ -15,9 +15,11 @@ properties:
>    "#size-cells": true
>
>    compatible:
> -    enum:
> -      - allwinner,sun6i-a31-mipi-dsi
> -      - allwinner,sun50i-a64-mipi-dsi
> +    oneOf:
> +      - const: allwinner,sun6i-a31-mipi-dsi
> +      - const: allwinner,sun50i-a64-mipi-dsi
> +      - items:
> +          - const: allwinner,sun8i-r40-mipi-dsi

Again, this isn't what you claim it does.

Maxime

--ryvuaned34qshr7z
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXg3OLwAKCRDj7w1vZxhR
xchiAP93RIGrX3ISxW0q1Z138tIsQSb3kOZXPC1XEawoRlNQHwEAzJ9E6ZE37C7r
7TLlBdK3HIs6GDySKpbjycSin4zM6wc=
=bTyi
-----END PGP SIGNATURE-----

--ryvuaned34qshr7z--


--===============6132887260609289530==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6132887260609289530==--

