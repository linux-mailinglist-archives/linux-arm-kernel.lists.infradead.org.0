Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FEF535C5D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 14:11:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cDR/mBuRtQkg+ZlpcJrAqrDAgTrHxX/C3/rCVauBUOQ=; b=VRopl5tu9BJaeguSpy3uvPgnb
	0crxJM5BWH//L4UkpJMODY25eeiROYiARFotmLEG+jaNa30bjm14VTgE6kXNEO8yL7IqoAp8m3ix0
	511rAnDwAK7ZxsD3IRuo3H6nu+aUSkKyS7PCMXlzsGh6iVAblWJoai9xCagGHEJaWZdjjPCtJ8gqX
	L65i0H75Fv+UJ/mZYBzBVSbpSSVAFHukuyKlzpwXy9TiUT9Sk53tGAZ4utolu+Cgya/sdF2uEXEtB
	xQtkJ6YUncS4ir+2eBLkclKFvmPBQL4vAucFGrdpEjfsoi2D4AMaHvRQwzJbMT7DnW1LUy9VGsmzu
	s/qRb44VQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYUlX-0004BL-25; Wed, 05 Jun 2019 12:11:39 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYUlP-0004An-6X
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 12:11:32 +0000
X-Originating-IP: 90.88.144.139
Received: from localhost (aaubervilliers-681-1-24-139.w90-88.abo.wanadoo.fr
 [90.88.144.139]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 54720240014;
 Wed,  5 Jun 2019 12:11:26 +0000 (UTC)
Date: Wed, 5 Jun 2019 14:11:25 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Gregory CLEMENT <gregory.clement@bootlin.com>
Subject: Re: [PATCH 2/2] dt-bindings: i2c: mv64xxx: Add YAML schemas
Message-ID: <20190605121125.4p2eyt7zhtai652b@flea>
References: <20190525141821.20082-1-maxime.ripard@bootlin.com>
 <20190525141821.20082-2-maxime.ripard@bootlin.com>
 <87k1e2k98v.fsf@FE-laptop>
MIME-Version: 1.0
In-Reply-To: <87k1e2k98v.fsf@FE-laptop>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_051131_391949_F6CF428F 
X-CRM114-Status: GOOD (  13.92  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Wolfram Sang <wsa@the-dreams.de>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, linux-i2c@vger.kernel.org,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2931956928720380166=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2931956928720380166==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="jcggnhf3ykfk7lac"
Content-Disposition: inline


--jcggnhf3ykfk7lac
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Mon, Jun 03, 2019 at 04:56:48PM +0200, Gregory CLEMENT wrote:
> > +++ b/Documentation/devicetree/bindings/i2c/marvell,mv64xxx-i2c.yaml
> > @@ -0,0 +1,106 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/i2c/marvell,mv64xxx-i2c.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Marvell MV64XXX I2C Controller Device Tree Bindings
> > +
> > +maintainers:
> > +  - Chen-Yu Tsai <wens@csie.org>
> > +  - Maxime Ripard <maxime.ripard@bootlin.com>
>
> If you take over the maintenanceship and became maintainer for this
> driver, then update the MAINTAINERS files too. For now it was assigned
> to me, but I don't mind letting this for both of you.
>
> Actually I gave my acked-by to a patch from Wolfram adding the
> Documentation/devicetree/bindings/i2c/i2c-mv64xxx.txt file to the "I2C
> MV64XXX MARVELL AND ALLWINNER DRIVER" entry "MAINTAINERS: add DT
> bindings to i2c-mv64xxx" so I guess this patch have to be discarded or
> at least updated.

Sorry for that, it's definitely not intentional. I'll fix it and resend.

Thanks!
Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--jcggnhf3ykfk7lac
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXPexbQAKCRDj7w1vZxhR
xe/dAP9810+E+YG6xK7o/znoo25OToisA4qAfR89Ox8darfLQgEAjPOHR1jQl2S+
xakb+9c/vF+oAFjJD//9cLNS1UOxHgE=
=JR2U
-----END PGP SIGNATURE-----

--jcggnhf3ykfk7lac--


--===============2931956928720380166==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2931956928720380166==--

