Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C8CCEFBB1
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 11:43:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eUGvl37ByX8/fPpXsu2huWYmpqRs0gZOH9Nt8p3ntbs=; b=uGYsoS6ZrJtzi6JfYr11XghR+
	tF5Gz91vBKOmU7RWVIiTs1okg3Ile5C+6HfaDYCyBeQB6OGc879vfAZsUbVzdhk/Jdw556hpM39U2
	jrtdZoUUinPEjUtKXeNQrFGA//oBKO17xv5d0XgH/bFMoLW8KTQ4rFc7CKb4L/H9DY4vO8r7WPhpu
	HJVK9pe4m/vskUSsjDQrddZ43vO0lHw3+ec/3Zf9NJbJXL/Pwy7b+/VKW9o5FFBd+EDgT1bG4VOA5
	HEEmYrTqSzOmUCfa1zv6q9C3dEpzaWdn33HhxHDRjIzOvzw88UzD8NkB175zcY7LhfMkNVarqmUuR
	q/OsoUJow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRwJW-0001w6-5w; Tue, 05 Nov 2019 10:43:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRwJN-0001uK-9J
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 10:43:46 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6C7CB206BA;
 Tue,  5 Nov 2019 10:43:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572950624;
 bh=PSQEEnZ0laTDZiGYUA/GbDjYoEzSM/8mbSzwF/BKSyw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PJkpTS1MgUmm8+9CqOP+yjuzMwiYk0PVtRfX5d7YaOUBySwDZ9cM6PgMR3Cggx8Uq
 s/m93j31qYZSdoH7bqpcy6kTd9X/IXdOTOrhEHCjBFRVcbjOe/BQN0TsNli8mNcnw0
 Dc9MpcOaQ87R/WxVfPrh8mXBTe9k5st6ALK08InI=
Date: Tue, 5 Nov 2019 11:43:42 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Torsten Duwe <duwe@lst.de>
Subject: Re: [PATCH v5 6/7] dt-bindings: Add ANX6345 DP/eDP transmitter binding
Message-ID: <20191105104342.GD3876@gilmour.lan>
References: <20191104110400.F319F68BE1@verein.lst.de>
 <20191104110613.C3BA468C4E@verein.lst.de>
MIME-Version: 1.0
In-Reply-To: <20191104110613.C3BA468C4E@verein.lst.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_024345_369352_D2D719AB 
X-CRM114-Status: GOOD (  20.48  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Andrzej Hajda <a.hajda@samsung.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Harald Geyer <harald@ccbib.org>,
 Sean Paul <seanpaul@chromium.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Icenowy Zheng <icenowy@aosc.io>
Content-Type: multipart/mixed; boundary="===============0207381909771562762=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0207381909771562762==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="s9fJI615cBHmzTOP"
Content-Disposition: inline


--s9fJI615cBHmzTOP
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


On Tue, Oct 29, 2019 at 01:16:57PM +0100, Torsten Duwe wrote:
> The anx6345 is an ultra-low power DisplayPort/eDP transmitter designed
> for portable devices.
>
> Add a binding document for it.
>
> Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
> Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Torsten Duwe <duwe@suse.de>
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Applied, thanks

(still, there's one comment below that can be addressed in a
subsequent patch).

> ---
>  .../bindings/display/bridge/anx6345.yaml           | 102 ++++++++++++++++++++++
>  1 file changed, 102 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/bridge/anx6345.yaml
>
> diff --git a/Documentation/devicetree/bindings/display/bridge/anx6345.yaml b/Documentation/devicetree/bindings/display/bridge/anx6345.yaml
> new file mode 100644
> index 000000000000..094e8e8a5faa
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/bridge/anx6345.yaml
> @@ -0,0 +1,102 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/bridge/anx6345.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Analogix ANX6345 eDP Transmitter Device Tree Bindings
> +
> +maintainers:
> +  - Torsten Duwe <duwe@lst.de>
> +
> +description: |
> +  The ANX6345 is an ultra-low power Full-HD eDP transmitter designed for
> +  portable devices.
> +
> +properties:
> +  compatible:
> +    const: analogix,anx6345
> +
> +  reg:
> +    maxItems: 1
> +    description: base I2C address of the device
> +
> +  reset-gpios:
> +    maxItems: 1
> +    description: GPIO connected to active low reset
> +
> +  dvdd12-supply:
> +    maxItems: 1
> +    description: Regulator for 1.2V digital core power.
> +
> +  dvdd25-supply:
> +    maxItems: 1
> +    description: Regulator for 2.5V digital core power.
> +
> +  ports:
> +    type: object
> +
> +    properties:
> +      port@0:
> +        type: object
> +        description: |
> +          Video port for LVTTL input
> +
> +      port@1:
> +        type: object
> +        description: |
> +          Video port for eDP output (panel or connector).
> +          May be omitted if EDID works reliably.
> +
> +    required:
> +      - port@0

You should have something like:

ports:
  type: object
  additionalProperties: false

as well...

> +
> +required:
> +  - compatible
> +  - reg
> +  - reset-gpios
> +  - dvdd12-supply
> +  - dvdd25-supply
> +  - ports
> +
> +additionalProperties: false

This prevents additional properties only on the top-level node, not
its children.

Maxime

--s9fJI615cBHmzTOP
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXcFSXgAKCRDj7w1vZxhR
xWDyAQC/sTEqgIPTcOOELk+/c6UietuE9I6ZSjYK0vSixbY85QEA3YGf1cUesRov
KKmSnjZjgmC0YlV/4YVCj4ZQF1Dkkw0=
=1muA
-----END PGP SIGNATURE-----

--s9fJI615cBHmzTOP--


--===============0207381909771562762==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0207381909771562762==--

