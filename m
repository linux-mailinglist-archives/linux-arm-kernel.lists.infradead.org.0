Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF506138E0F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 10:44:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0lrN1PLldnbqWl7AkV/x1ZBgEJvhVJsoFDJnNLF8Pyc=; b=VU3lvkKSaITha6z1ougVjWet7
	LQTMLXwPunMfqMCjr8P9wVFVAivuVgafNSnCS3fTdRbZl2mC3QZHCTlvk7/s0tY9bx1/HdNUahXh6
	qcrzpW7Bwx+QQBYiY5kfvRDqfmvTMr1/8TIxMyZL4B0wDbE0EBiYZM7ZCYQPRxWRsG0US2+AwTG3g
	gDWVyLA5ABOO4Hm8HNNS/M3ThAmj29aHSwup1ngFZip188rp8bL4+VPkpS+J3Xgp6yaQrYHQduF0S
	aDQKcc8amwhHcQkhdBY6a0+froXkOdsIT1ReK5+iNOGaBZ15obVCGJxJW26+otMPthPYOFKZXenLP
	lwv6cD/Kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqwGe-0008S5-NW; Mon, 13 Jan 2020 09:44:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqwGO-0008Qj-T1
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 09:44:02 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 10BF82075B;
 Mon, 13 Jan 2020 09:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578908640;
 bh=UtHfmZbsNcplNP3k+bEt4c2k9o181tnaCpLdxVZFFQI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Chqov/hf8tR7oy+LK2yRjMCtLFz+wPmkrkH0qv6ptZ93DU/La0cx0HYm1cohXJsSc
 kgcX/e9UlSQAUk6fWS5TSErd/fDzcDnG+oT58Jx636C92DgH56LFKSjJWk5s7Djmkd
 hSW/oqvXZ/oAFkr6VUIml5NMHscjdN8PYHy7QV1U=
Date: Mon, 13 Jan 2020 10:43:58 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Samuel Holland <samuel@sholland.org>
Subject: Re: [PATCH 3/9] dt-bindings: irq: Add a compatible for the H3 R_INTC
Message-ID: <20200113094358.7jefihp4i4rt4orm@gilmour.lan>
References: <20200113044936.26038-1-samuel@sholland.org>
 <20200113044936.26038-4-samuel@sholland.org>
MIME-Version: 1.0
In-Reply-To: <20200113044936.26038-4-samuel@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_014400_951202_C663CDC2 
X-CRM114-Status: GOOD (  18.04  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Jason Cooper <jason@lakedaemon.net>, Marc Zyngier <maz@kernel.org>,
 linux-sunxi@googlegroups.com, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1494185500556121134=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1494185500556121134==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="smzsasjwaytwgncj"
Content-Disposition: inline


--smzsasjwaytwgncj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Jan 12, 2020 at 10:49:30PM -0600, Samuel Holland wrote:
> The Allwinner H3 SoC contains an R_INTC that is, as far as we know,
> compatible with the R_INTC present in other sun8i/sun50i SoCs starting
> with the A31. Since the R_INTC hardware is undocumented, introduce a new
> compatible for the R_INTC variant in this SoC, in case there turns out
> to be some difference.
>
> Signed-off-by: Samuel Holland <samuel@sholland.org>
> ---
>  .../interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml       | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml b/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml
> index 0eccf5551786..fffffcd0eea3 100644
> --- a/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml
> +++ b/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml
> @@ -29,6 +29,9 @@ properties:
>        - items:
>          - const: allwinner,sun8i-a83t-r-intc
>          - const: allwinner,sun6i-a31-r-intc
> +      - items:
> +        - const: allwinner,sun8i-h3-r-intc
> +        - const: allwinner,sun6i-a31-r-intc

If we are to add more compatibles, I guess we could switch to
something like:

items:
  - enum:
    - allwinner,sun8i-a83t-r-intc
    - allwinner,sun8i-h3-r-intc
  - const: allwinner,sun6i-a31-r-intc

It's going to be easier to maintain in the long run.

Thanks!
Maxime

--smzsasjwaytwgncj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXhw73gAKCRDj7w1vZxhR
xfhpAQDaJubC92ncM6GPUUqzW3nc++GjfRAhdInV8usAwqdmxwD+P5/2e/W5eeaW
kJxLxEHrY7QaX68C60fWL9XuCd6QbAc=
=lixO
-----END PGP SIGNATURE-----

--smzsasjwaytwgncj--


--===============1494185500556121134==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1494185500556121134==--

