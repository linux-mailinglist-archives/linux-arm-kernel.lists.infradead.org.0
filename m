Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E4B543685
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 15:28:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XOq+06Q4Xq7lWmYaX38mFDO8UO667KFFfFrMjnN//Z8=; b=DkSg5pdy0OzcJ2OVTKqXPlYt3
	uovzTh/80XMWHquJ40+MVpIxDGfGpNWRVHQ+xNAs6J5hWFDdjGurHkBHSRzeKZJREqcDfbcHltPBg
	0C193HRDGZYqfXwk9TnKz0fF060kGosqySScXxs3nDiMpDrArEOVJGL+FoFIgnKQPMjdizWgejlrH
	8N5GBmBLr9TdrfDlAqahmE57WwstHyR/uJ7vJyjKES/oR0PuRqOpajkc3lMYBGkbcPeS6TeZVO2gL
	onCGaNGY9bGicKtmiOXzza412aUKsPuzMh7z2gBKi6v7GcG9SVS5RllvNZvXTweomFS02Vo7EWhm2
	ZL7j4Mjqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbPlu-0004rg-AL; Thu, 13 Jun 2019 13:28:06 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbPk7-0003OJ-SA
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 13:26:20 +0000
Received: from localhost (aaubervilliers-681-1-40-246.w90-88.abo.wanadoo.fr
 [90.88.159.246]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id C73C020000C;
 Thu, 13 Jun 2019 13:26:08 +0000 (UTC)
Date: Wed, 12 Jun 2019 17:48:27 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH 1/5] dt-bindings: vendor: Escape single quote
Message-ID: <20190612154827.ykrxtuv2q7uxmwoj@flea>
References: <20190525134140.6220-1-maxime.ripard@bootlin.com>
 <CAL_JsqK829bfc4VX1hmYRuLYWQXaixAgSwU2N7veA41vfxLXvw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAL_JsqK829bfc4VX1hmYRuLYWQXaixAgSwU2N7veA41vfxLXvw@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_062616_462225_B98C6D2D 
X-CRM114-Status: GOOD (  16.05  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 0.8 DATE_IN_PAST_12_24     Date: is 12 to 24 hours before Received: date
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
 Chen-Yu Tsai <wens@csie.org>, Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============3434485603240582558=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3434485603240582558==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ojdig4ufr3fvpwhg"
Content-Disposition: inline


--ojdig4ufr3fvpwhg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Tue, Jun 11, 2019 at 03:18:51PM -0600, Rob Herring wrote:
> On Sat, May 25, 2019 at 7:41 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> >
> > Single quotes need to be escaped in YAML, make sure it's the case.
> >
> > Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> > ---
> >  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> > index 19cc3240a445..ec53162e900d 100644
> > --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> > +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> > @@ -672,7 +672,7 @@ patternProperties:
> >    "^plantower,.*":
> >      description: Plantower Co., Ltd
> >    "^plathome,.*":
> > -    description: Plat'Home Co., Ltd.
> > +    description: Plat\'Home Co., Ltd.
>
> Actually, I think this isn't necessary. Where was this causing a
> problem? Only in single quoted strings do you have to escape a single
> quote and it is done with 2 single quotes rather than a backslash.

I guess I misread the YAML spec though... Sorry.

> However, to maintain a json compatible subset of yaml, maybe we do
> need it.

If you don't want it anymore, I guess we can drop or revert it.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--ojdig4ufr3fvpwhg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXQEeywAKCRDj7w1vZxhR
xbQTAP9aeBEzFtsrAUI/WlTsmFq1tfkJJNyS0XOvprvVnIF4vwEA/8L4kV9E7v0K
/oXbZNPQojz/la/iqD91nAmsPXcDtQg=
=Y1ER
-----END PGP SIGNATURE-----

--ojdig4ufr3fvpwhg--


--===============3434485603240582558==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3434485603240582558==--

