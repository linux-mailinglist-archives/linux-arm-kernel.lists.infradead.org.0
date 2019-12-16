Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4439120800
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 15:04:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fg/AdaBlvqtEsEw+K1nIWK35/ymttPbMuvu7gdSsALM=; b=VjG1LMPdy2LLE1qURoe3fHYeZ
	ylzqoBDL10zM9r/YW3GigOg9EXs5yBXzjLWANuBbIvPx9GQ+/XSLMRK9dGSHhX8wc5BTmMaEV1cl2
	mf1mcrZkPKf4ZfdZsZQrqY/oExBOsNr/35HYYJxHdJvOuiZ5JUGqcq9YwIKgIbN0E1mOXTExKQj7a
	GsH08fQFQr431kDDZNOfEA+NB+LcuzIS1KhqjnXuSyIN6FNpYU/x3n3CSwBu3n/fIkMcDALVT3Gvs
	RSBY8d1ojAJ1ugIJbiEq//HrDGvJP8AOt7U+d7+shhXuTe0CkOfADDbYmY09LZsMFX6GEwdLKZNjd
	I+HEJ2apg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igqzC-0008I3-Ab; Mon, 16 Dec 2019 14:04:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igqz3-0008HQ-Ln
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 14:04:27 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C951C206A5;
 Mon, 16 Dec 2019 14:04:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576505065;
 bh=eqhwT21aMAQai25oTPNjuF/wi6Lr8PnjARGwV07MqLM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=A8aG72OOaT8znWL8+GmFhVW5bWEDI5ITGF2n2FOZQrOGAZPAK8TwebfG6yZ/idgLI
 72X8kyE2neY4gEQpT7V7jx7S3d/A8I93FNZ7g4n7lf6lWWMvpr01tj0/lLzWy59qJT
 uaTK+pIxRpmLZ3iLVuMB5bPe6qQRh9KJfGq2Dmw0=
Date: Mon, 16 Dec 2019 15:04:22 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Samuel Holland <samuel@sholland.org>
Subject: Re: [PATCH v5 2/8] dt-bindings: mailbox: Add a sun6i message box
 binding
Message-ID: <20191216140422.on4bredklgdxywbw@gilmour.lan>
References: <20191215042455.51001-1-samuel@sholland.org>
 <20191215042455.51001-3-samuel@sholland.org>
MIME-Version: 1.0
In-Reply-To: <20191215042455.51001-3-samuel@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_060425_758150_57AEDD39 
X-CRM114-Status: GOOD (  21.26  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ondrej Jirman <megous@megous.com>,
 linux-sunxi@googlegroups.com, devicetree@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Jassi Brar <jassisinghbrar@gmail.com>, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Sudeep Holla <sudeep.holla@arm.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============9084364390211019317=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============9084364390211019317==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="6kpcajowhdygmdk2"
Content-Disposition: inline


--6kpcajowhdygmdk2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Sat, Dec 14, 2019 at 10:24:49PM -0600, Samuel Holland wrote:
> This mailbox hardware is present in Allwinner sun6i, sun8i, sun9i, and
> sun50i SoCs. Add a device tree binding for it. As it has only been
> tested on the A83T, A64, H3/H5, and H6 SoCs, only those compatibles are
> included.
>
> Signed-off-by: Samuel Holland <samuel@sholland.org>
> ---
>  .../mailbox/allwinner,sun6i-a31-msgbox.yaml   | 78 +++++++++++++++++++
>  1 file changed, 78 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mailbox/allwinner,sun6i-a31-msgbox.yaml
>
> diff --git a/Documentation/devicetree/bindings/mailbox/allwinner,sun6i-a31-msgbox.yaml b/Documentation/devicetree/bindings/mailbox/allwinner,sun6i-a31-msgbox.yaml
> new file mode 100644
> index 000000000000..dd746e07acfd
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mailbox/allwinner,sun6i-a31-msgbox.yaml
> @@ -0,0 +1,78 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mailbox/allwinner,sun6i-a31-msgbox.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Allwinner sunxi Message Box
> +
> +maintainers:
> +  - Samuel Holland <samuel@sholland.org>
> +
> +description: |
> +  The hardware message box on sun6i, sun8i, sun9i, and sun50i SoCs is a
> +  two-user mailbox controller containing 8 unidirectional FIFOs. An interrupt
> +  is raised for received messages, but software must poll to know when a
> +  transmitted message has been acknowledged by the remote user. Each FIFO can
> +  hold four 32-bit messages; when a FIFO is full, clients must wait before
> +  attempting more transmissions.
> +
> +  Refer to ./mailbox.txt for generic information about mailbox device-tree
> +  bindings.
> +
> +properties:
> +  compatible:
> +     items:
> +      - enum:
> +          - allwinner,sun8i-a83t-msgbox
> +          - allwinner,sun8i-h3-msgbox
> +          - allwinner,sun50i-a64-msgbox
> +          - allwinner,sun50i-h6-msgbox
> +      - const: allwinner,sun6i-a31-msgbox

This will fail for the A31, since it won't have two compatibles but
just one.

You can have something like this if you want to do it with an enum:

compatible:
  oneOf:
    - const: allwinner,sun6i-a31-msgbox
    - items:
      - enum:
        - allwinner,sun8i-a83t-msgbox
        - allwinner,sun8i-h3-msgbox
        - allwinner,sun50i-a64-msgbox
        - allwinner,sun50i-h6-msgbox
      - const: allwinner,sun6i-a31-msgbox

> +  reg:
> +    items:
> +      - description: MMIO register range

There's no need for an obvious description like this.
Just set it to maxItems: 1

> +
> +  clocks:
> +    maxItems: 1
> +    description: bus clock
> +
> +  resets:
> +    maxItems: 1
> +    description: bus reset
> +
> +  interrupts:
> +    maxItems: 1
> +    description: controller interrupt

Ditto, you can drop the description here.

> +  '#mbox-cells':
> +    const: 1

However, you should document what the argument is about?

> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - resets
> +  - interrupts
> +  - '#mbox-cells'
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/sun8i-h3-ccu.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/reset/sun8i-h3-ccu.h>
> +
> +    msgbox: mailbox@1c17000 {
> +            compatible = "allwinner,sun8i-h3-msgbox",
> +                         "allwinner,sun6i-a31-msgbox";
> +            reg = <0x01c17000 0x1000>;
> +            clocks = <&ccu CLK_BUS_MSGBOX>;
> +            resets = <&ccu RST_BUS_MSGBOX>;
> +            interrupts = <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>;
> +            #mbox-cells = <1>;
> +    };

Look good otherwise, thanks!
Maxime

--6kpcajowhdygmdk2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXfeO5gAKCRDj7w1vZxhR
xZz1AP4ummpThYn1v2bFsXFQFsYqcm6TRKjZ8eZz+DriVOSSjAEAgxnXw2btNZrv
PVGRNuENk6kHsBf7eVmnaJa2MVik5Qs=
=/Mdk
-----END PGP SIGNATURE-----

--6kpcajowhdygmdk2--


--===============9084364390211019317==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============9084364390211019317==--

