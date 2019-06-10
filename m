Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39E573B7DB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 16:56:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fMcGGIq/wChQZCYF6RkIUVmg8+XtuZOST4M7/GOxYeo=; b=n87yGPt2w7rjvTT49sZci+HrJ
	/hTRWjCYK7/d8PqIXnHmk8GRJMYidxfsvJ7ZV9mF3LuNK0t5v4d+t0V4nrhNm0G7exeburQHAT4Sx
	pGH5wrOyaOMLeeBdQEmqKjybw0YZ01mAenueIKZFaoaZSEtWUrQ01gfnU38Uuslp/J9dJM+4Kezi8
	RkByBHPmiNof6J4LPikY9+5XmVKMClhxmWE0vZoNX+ncOzxzq6A7pn5PFt905q7kJid1ggW8VkLcY
	4SKYTp5h4y9jCgUkxPxEdGTI2asHuoujqlMtmQntewAEMFsxI3FhwA3BiSoYRSbtVXdfkDVesglXw
	JrZ5yPEXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haLiW-0005Se-8Q; Mon, 10 Jun 2019 14:56:12 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haLiL-0005S7-AB
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 14:56:03 +0000
Received: from localhost (aaubervilliers-681-1-40-246.w90-88.abo.wanadoo.fr
 [90.88.159.246]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 30B5F240002;
 Mon, 10 Jun 2019 14:55:46 +0000 (UTC)
Date: Mon, 10 Jun 2019 16:55:46 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH v2 05/11] dt-bindings: net: sun4i-emac: Convert the
 binding to a schemas
Message-ID: <20190610145546.4xz7hdh3gk6vjrbx@flea>
References: <91618c7e9a5497462afa74c6d8a947f709f54331.1560158667.git-series.maxime.ripard@bootlin.com>
 <d198d29119b37b2fdb700d8992b31963e98b6693.1560158667.git-series.maxime.ripard@bootlin.com>
 <20190610143139.GG28724@lunn.ch>
MIME-Version: 1.0
In-Reply-To: <20190610143139.GG28724@lunn.ch>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_075601_513919_A53C3564 
X-CRM114-Status: GOOD (  14.80  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Florian Fainelli <f.fainelli@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Antoine =?utf-8?Q?T=C3=A9nart?= <antoine.tenart@bootlin.com>,
 netdev@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Frank Rowand <frowand.list@gmail.com>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: multipart/mixed; boundary="===============5121353479550362933=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5121353479550362933==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="2hk2wdgp2lluy5gd"
Content-Disposition: inline


--2hk2wdgp2lluy5gd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Andrew,

On Mon, Jun 10, 2019 at 04:31:39PM +0200, Andrew Lunn wrote:
> > +required:
> > +  - compatible
> > +  - reg
> > +  - interrupts
> > +  - clocks
> > +  - phy
> > +  - allwinner,sram
>
> Quoting ethernet.txt:
>
> - phy: the same as "phy-handle" property, not recommended for new bindings.
> - phy-handle: phandle, specifies a reference to a node representing a PHY
>   device; this property is described in the Devicetree Specification and so
>   preferred;
>
> Can this be expressed in Yaml? Accept phy, but give a warning. Accept
> phy-handle without a warning? Enforce that one or the other is
> present?

This is what we should be aiming for, yes, but right now we don't
really have a way to express that for properties.

The next specification of the schema spec seems to address that, and
it should be released pretty soon, so it's always something that we
can address later on, when it will be out.

For that particular case, we can also work around it by requiring
phy-handle instead of phy. That way, if phy-handle is missing we will
have a warning. phy will not be validated though, which is kind of a
shame, but still much better than what we currently have.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--2hk2wdgp2lluy5gd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXP5vcgAKCRDj7w1vZxhR
xROVAQCE8VjN3D3Zq/0/xTCqKO9q7ZGhs12dLs6qtxTmR6RT5AEA+tzeMYZG2H0F
xHGLU34vLSD2stWREcS0ZBfkhOPARwE=
=PzlU
-----END PGP SIGNATURE-----

--2hk2wdgp2lluy5gd--


--===============5121353479550362933==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5121353479550362933==--

