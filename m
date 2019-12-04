Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 392D8112CB6
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 14:36:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gMPhL9eTk4rCBaOg13upfiY+PEW5ZYdNxpJG0+Ww44A=; b=Y2OqV3JQjxCnWie35O4HN3aJU
	BrDJRArl/SMtGrd/poeLkJNrM4GEZp3mjx07V7xJsQL5im8mEtnl+693kgY2dVfzGaMuNVLZW+WDP
	/A+xJTXhueRCKzZWaad9QyeFT5uhh8nFbsQPpxCrAWe2RZiadhVWjgMxKw4LeuGpdo6xL8uKNkPob
	XN+APby6EmNZnw0XwBZACQ+09/ayjSPxmhb6nhQ/yRT2DkaYPYh1cN7JWg6lQE2j7wZKczosDVLDa
	oeVTyocZHaGoLCVNvIpfnL1+/Hso0g/Ek53FT9anmtmPaogI9Me5T7p3UONiBxhGigBO/IJp/fQle
	zmJWoOi0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icUpA-0001yB-Q2; Wed, 04 Dec 2019 13:36:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icUp3-0001xl-Ov
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 13:36:07 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A1CA220803;
 Wed,  4 Dec 2019 13:36:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575466564;
 bh=hhS3x/nQokGlDFdYclj2m2H/jf3hjjXulqb9PxxX57Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VM3bKeJVv1dMN6BeNojFvP27GvGyoglch+wwSXnXDFY/s5xnZYluPEgtqHP1pLHBI
 prruJCVl6wz31+G2JpEHajZiBcCrji9q39He3EbAsK9BXkpwSrx5p+SQ1JDEwO4TWm
 sgG9X/iJN40+bL1pbEAPl8nAtd7FykAUiOZeYSMg=
Date: Wed, 4 Dec 2019 14:36:00 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v12 1/7] dt-bindings: sun6i-dsi: Document A64 MIPI-DSI
 controller
Message-ID: <20191204133600.gnv6dnhk6upe7xod@gilmour.lan>
References: <20191203134816.5319-1-jagan@amarulasolutions.com>
 <20191203134816.5319-2-jagan@amarulasolutions.com>
MIME-Version: 1.0
In-Reply-To: <20191203134816.5319-2-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_053605_852786_7D07B183 
X-CRM114-Status: GOOD (  18.19  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 David Airlie <airlied@linux.ie>, linux-sunxi <linux-sunxi@googlegroups.com>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>, michael@amarulasolutions.com,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: multipart/mixed; boundary="===============3512693852480245867=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3512693852480245867==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="yzyy5rpvlreslc45"
Content-Disposition: inline


--yzyy5rpvlreslc45
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Dec 03, 2019 at 07:18:10PM +0530, Jagan Teki wrote:
> The MIPI DSI controller in Allwinner A64 is similar to A33.
>
> But unlike A33, A64 doesn't have DSI_SCLK gating so it is valid
> to have separate compatible for A64 on the same driver.
>
> DSI_SCLK uses mod clock-names on dt-bindings, so the same
> is not required for A64.
>
> On that note
> - A64 require minimum of 1 clock like the bus clock
> - A33 require minimum of 2 clocks like both bus, mod clocks
>
> So, update dt-bindings so-that it can document both A33,
> A64 bindings requirements.
>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
> Changes for v12:
> - Use 'enum' instead of oneOf+const
>
>  .../display/allwinner,sun6i-a31-mipi-dsi.yaml | 20 +++++++++++++++++--
>  1 file changed, 18 insertions(+), 2 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml b/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml
> index dafc0980c4fa..b91446475f35 100644
> --- a/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml
> +++ b/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml
> @@ -15,7 +15,9 @@ properties:
>    "#size-cells": true
>
>    compatible:
> -    const: allwinner,sun6i-a31-mipi-dsi
> +    enum:
> +      - allwinner,sun6i-a31-mipi-dsi
> +      - allwinner,sun50i-a64-mipi-dsi
>
>    reg:
>      maxItems: 1
> @@ -24,6 +26,8 @@ properties:
>      maxItems: 1
>
>    clocks:
> +    minItems: 1
> +    maxItems: 2
>      items:
>        - description: Bus Clock
>        - description: Module Clock
> @@ -63,13 +67,25 @@ required:
>    - reg
>    - interrupts
>    - clocks
> -  - clock-names
>    - phys
>    - phy-names
>    - resets
>    - vcc-dsi-supply
>    - port
>
> +allOf:
> +  - if:
> +      properties:
> +         compatible:
> +           contains:
> +             const: allwinner,sun6i-a31-mipi-dsi
> +      then:
> +        properties:
> +          clocks:
> +            minItems: 2
> +        required:
> +          - clock-names
> +

Your else condition should check that the number of clocks items is 1
on the A64

Maxime

--yzyy5rpvlreslc45
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXee2QAAKCRDj7w1vZxhR
xRIbAPsHrDR0oltRHkGKak8qtw0Ade9i9chYBdVFnWgbieqG2gEAt+EUUqKul0A7
TU9F3HI8vSkhOj8LTLq1pThpUu6Hcgo=
=6XAi
-----END PGP SIGNATURE-----

--yzyy5rpvlreslc45--


--===============3512693852480245867==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3512693852480245867==--

