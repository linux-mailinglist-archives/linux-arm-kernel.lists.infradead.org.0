Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBD27DEA5E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 13:06:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Inkq7Yziaa4mewNYOZ0SJjSKmxyLcfy0I+DT+DEmUpY=; b=Xt6sgN3px7tZyPemjMyxfVLOp
	VWgSdxI5qaL+YaTfsIxFaG6Utq/iRKSgv2za5/lZKjp/Th/0AAUVkrdGIrCBFY1ra8zYezvJCo/gB
	Uvw9CHemUmzzTHyc6E0Y1X8IDkaEoTo/cEKeEVUaysMV2LMO6+dPQp2dwdzfcXFSKly/D7OjDjAor
	GhJWYOCIZEgfA3WUw8Pl4IhgOnH4+CZDh0mdwJw7X0BvoieUWDq0kIs4d6MvAq4gmyjNjbRGnUwHQ
	7LsxP6CWScawlmZFi5CXzSfR/lLyBSZynv6OgtqwExo+4H7OVBXXnCCVLF3aBmunPY2w+7qEwRxCw
	xr3J/XQiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMVW9-0005oy-6y; Mon, 21 Oct 2019 11:06:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMVVw-0005oG-En
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 11:06:18 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8679C2084C;
 Mon, 21 Oct 2019 11:06:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571655975;
 bh=6aIiiW6Oy2Tp3jMHez2uZxsG1cbGxMZp3/IBu+pOkT4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SmsbcM7ob9APIInCUIWU9pFZGqvQIzlGXwhVv9ndL0rOALynmG1mW1Lk39mqHaJ+Q
 TQBh/zNq2g+4biDbSzud0mQktKJ4SKk26i2jhm9Z/4ZJi/BOWEEtnOTVilP/UQOxXA
 fAORWnAKW7DLCV5+MqTkkoIA0Rta9wHUGhHGt0Sg=
Date: Mon, 21 Oct 2019 13:06:12 +0200
From: Maxime Ripard <mripard@kernel.org>
To: megous@megous.com
Subject: Re: [PATCH 1/4] dt-bindings: Add bindings for USB3 phy on Allwinner H6
Message-ID: <20191021110612.55ym4y3m3xko3kpc@gilmour>
References: <20191020134229.1216351-1-megous@megous.com>
 <20191020134229.1216351-2-megous@megous.com>
MIME-Version: 1.0
In-Reply-To: <20191020134229.1216351-2-megous@megous.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_040616_520732_60E78129 
X-CRM114-Status: GOOD (  17.25  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Chen-Yu Tsai <wens@csie.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>,
 linux-kernel@vger.kernel.org, Icenowy Zheng <icenowy@aosc.io>
Content-Type: multipart/mixed; boundary="===============6908183767558322636=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6908183767558322636==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ewuc6ubrfgaw6qrn"
Content-Disposition: inline


--ewuc6ubrfgaw6qrn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Oct 20, 2019 at 03:42:26PM +0200, megous@megous.com wrote:
> From: Ondrej Jirman <megous@megous.com>
>
> The new Allwinner H6 SoC contains a USB3 PHY that is wired to the
> external USB3 pins of the SoC.
>
> Add a device tree binding for the PHY.
>
> Signed-off-by: Ondrej Jirman <megous@megous.com>
> ---
>  .../phy/allwinner,sun50i-h6-usb3-phy.yaml     | 47 +++++++++++++++++++
>  1 file changed, 47 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/allwinner,sun50i-h6-usb3-phy.yaml
>
> diff --git a/Documentation/devicetree/bindings/phy/allwinner,sun50i-h6-usb3-phy.yaml b/Documentation/devicetree/bindings/phy/allwinner,sun50i-h6-usb3-phy.yaml
> new file mode 100644
> index 000000000000..2fdc890748db
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/allwinner,sun50i-h6-usb3-phy.yaml
> @@ -0,0 +1,47 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +# Copyright 2019 Ondrej Jirman <megous@megous.com>
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/phy/allwinner,sun50i-h6-usb3-phy.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: Allwinner sun50i USB3 PHY

H6 would be more appropriate here instead of sun50i. There's a bunch
of sun50i SoCs already, and only one uses it.

With that fixed,
Acked-by: Maxime Ripard <mripard@kernel.org>

Maxime

--ewuc6ubrfgaw6qrn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXa2RJAAKCRDj7w1vZxhR
xR48AQDAv8g0iblut9ytzfU6bZMgT1D68v8XPkVM2Tm82RTKoAEAn/tXqAEV2OQF
ePOXBUp1QBOrzVFUJQx03BYGUacvdwI=
=O92R
-----END PGP SIGNATURE-----

--ewuc6ubrfgaw6qrn--


--===============6908183767558322636==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6908183767558322636==--

