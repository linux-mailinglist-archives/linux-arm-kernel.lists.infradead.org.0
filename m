Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8E85C473F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 07:55:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FrCGRX1ZwggRWh/xIEfWbV9msWmt4ijQS9olYz1RfqA=; b=DHob7qmI2mvV9tWqP5Tn64+H+
	fL8ckRB6J8Js8JHc0ViSnDIl2+NDJVSTDeDvw78/5kSZF1184IywT3OGMGZ8GWop/PI4nPB6Nfl+z
	bEuuhmUoj3KA/TWmBUiYEug5MKFnEBf8T9cUL95cIPccSH7jvBftzLFtvlo9gALEJtPVbiqAqnwym
	xctRduCIqvrVIr14H4bIwhXCQw0UGqOUbaMsSE/kg5SYMbeBF/bfa2NayDnJibC/SFFxLusTGA7xr
	ggjlc4qLo/kea4pDSwe7y82abStmDjeIUlX//F2uU5t4J3FWiBZ7jA9nrfVSLe2OCjbMSal3qosEb
	D5+TMOZbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFXbW-00016Q-PZ; Wed, 02 Oct 2019 05:55:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFXbL-0000EM-Rm
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 05:55:05 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 365D72086A;
 Wed,  2 Oct 2019 05:55:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569995701;
 bh=wtOtOFphvhIR12Sw79063XbPCHTzfD6ZAz0An0TI4w4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=H8MbhzvorA/X5IA8IvWZUg8Jo9It3tP9Ey+rxONzf2AMfBEYoE9UM9XWcUGsueedk
 jgNVjcYcMR3b59MBRVqs+vqqIYPsxYXTC9dsWvVM5SwrQiHY6am21me7k4nGzNxytC
 j13KLlST3J5UYFqYRYmY6saU0znZuEOvYeB+qpX0=
Date: Wed, 2 Oct 2019 07:54:58 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Corentin Labbe <clabbe.montjoie@gmail.com>
Subject: Re: [PATCH v2 03/11] dt-bindings: crypto: Add DT bindings
 documentation for sun8i-ce Crypto Engine
Message-ID: <20191002055458.zo2vdbxodj3ch53g@gilmour>
References: <20191001184141.27956-1-clabbe.montjoie@gmail.com>
 <20191001184141.27956-4-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20191001184141.27956-4-clabbe.montjoie@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_225503_965124_EBDC4F57 
X-CRM114-Status: GOOD (  14.53  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 herbert@gondor.apana.org.au, catalin.marinas@arm.com,
 linux-sunxi@googlegroups.com, linux@armlinux.org.uk,
 linux-kernel@vger.kernel.org, wens@csie.org, robh+dt@kernel.org,
 linux-crypto@vger.kernel.org, will@kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6450946286949244453=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6450946286949244453==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="2fgyg66uvun6eeak"
Content-Disposition: inline


--2fgyg66uvun6eeak
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Oct 01, 2019 at 08:41:33PM +0200, Corentin Labbe wrote:
> This patch adds documentation for Device-Tree bindings for the
> Crypto Engine cryptographic accelerator driver.
>
> Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
> ---
>  .../bindings/crypto/allwinner,sun8i-ce.yaml   | 92 +++++++++++++++++++
>  1 file changed, 92 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/crypto/allwinner,sun8i-ce.yaml
>
> diff --git a/Documentation/devicetree/bindings/crypto/allwinner,sun8i-ce.yaml b/Documentation/devicetree/bindings/crypto/allwinner,sun8i-ce.yaml
> new file mode 100644
> index 000000000000..9bd26a2eff33
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/crypto/allwinner,sun8i-ce.yaml
> @@ -0,0 +1,92 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/crypto/allwinner,sun8i-ce.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Allwinner Crypto Engine driver
> +
> +maintainers:
> +  - Corentin Labbe <clabbe.montjoie@gmail.com>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - allwinner,sun8i-h3-crypto
> +      - allwinner,sun8i-r40-crypto
> +      - allwinner,sun50i-a64-crypto
> +      - allwinner,sun50i-h5-crypto
> +      - allwinner,sun50i-h6-crypto
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: Bus clock
> +      - description: Module clock
> +      - description: MBus clock
> +    minItems: 2
> +    maxItems: 3
> +
> +  clock-names:
> +    items:
> +      - const: bus
> +      - const: mod
> +      - const: ram
> +    minItems: 2
> +    maxItems: 3
> +
> +  resets:
> +    maxItems: 1
> +
> +  reset-names:
> +    const: bus
> +
> +if:
> +  properties:
> +    compatible:
> +      items:
> +        const: allwinner,sun50i-h6-crypto
> +then:
> +  properties:
> +      clocks:
> +        minItems: 3
> +      clock-names:
> +        minItems: 3
> +else:
> +  properties:
> +      clocks:
> +        maxItems: 2
> +      clock-names:
> +        maxItems: 2
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +  - resets
> +
> +additionalProperties: true

I guess you meant false here?

Maxime

--2fgyg66uvun6eeak
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXZQ7rQAKCRDj7w1vZxhR
xdFbAQCEkUlhME2ax9rLhbr3MrlsTcoOQtlq/F3s52pxJLaI3QD+OMbHPPV//HCY
MPqSdqIOu1r5jzZjtXPgjsZTo4VsqAo=
=m0Hw
-----END PGP SIGNATURE-----

--2fgyg66uvun6eeak--


--===============6450946286949244453==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6450946286949244453==--

