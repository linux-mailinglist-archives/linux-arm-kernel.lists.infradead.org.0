Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD90027D65
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 14:57:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4LWZrSt03rTFCbwKLjx48JdFxba+waUB+IfOYmcKrps=; b=RfAk1YgQ+cWl1jwEFNeUDn/w3
	SCUiP8YOV4Iah5C6AZ5ZORjDMzCul2Ua9S15r9mPRR/Z/ddOMaOLnaZQs6jiFPxiwjyYa3sluzvge
	bHxKYA5VrEcaqkAJeLMl+Y1OEqElQdDoxCgIltZEC+IksJONaPTkPr3vRtsuf0ZWQpL7dLnY9qWHm
	EPpfEcpFmhypkUitMcVybWNy62h9xU/CY7U+l22jKg2js3gdFLBax+BKt2AOi+terEK2zsz4+xieT
	F55XEWXAzIKNFHpputh5mbGsykk6iSUg2Ac6j4/IxSInRLJaF1xVnOOqjLGuzYN4aum2FqFgdh9nn
	VKH66xmMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTnHx-0004SG-7N; Thu, 23 May 2019 12:57:41 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTnHq-0004Rw-6H
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 12:57:35 +0000
X-Originating-IP: 90.88.22.185
Received: from localhost (aaubervilliers-681-1-80-185.w90-88.abo.wanadoo.fr
 [90.88.22.185]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id CD843C0010;
 Thu, 23 May 2019 12:57:16 +0000 (UTC)
Date: Thu, 23 May 2019 14:57:16 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [PATCH v4 3/5] dt-bindings: watchdog: add Allwinner H6 r_watchdog
Message-ID: <20190523125716.g4euwplfsvw4vqzl@flea>
References: <20190521160330.28402-1-peron.clem@gmail.com>
 <20190521160330.28402-4-peron.clem@gmail.com>
 <20190522103243.mmrfato5p2mhtf4j@flea>
 <CAJiuCcdaZVLQyupEf8HPaUySakufXXAhzundo6VeyQaAyZ8Trw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJiuCcdaZVLQyupEf8HPaUySakufXXAhzundo6VeyQaAyZ8Trw@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_055734_388188_60AB2575 
X-CRM114-Status: GOOD (  18.03  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, linux-watchdog@vger.kernel.org,
 linux-kernel <linux-kernel@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck <linux@roeck-us.net>
Content-Type: multipart/mixed; boundary="===============7622890179624761742=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7622890179624761742==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="wdtcxmlg6dhvhpqj"
Content-Disposition: inline


--wdtcxmlg6dhvhpqj
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, May 22, 2019 at 06:15:26PM +0200, Cl=E9ment P=E9ron wrote:
> Hi Maxime,
>
> On Wed, 22 May 2019 at 12:32, Maxime Ripard <maxime.ripard@bootlin.com> w=
rote:
> >
> > On Tue, May 21, 2019 at 06:03:28PM +0200, Cl=E9ment P=E9ron wrote:
> > > Allwinner H6 has a second watchdog on the r-blocks which is
> > > compatible with the A31.
> > >
> > > This commit add the H6 compatible for the r_watchdog.
> > >
> > > Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>
> >
> > Unless you have some evidence that the two blocks are different, then
> > you should just reuse the same one.
>
> I have no evidence it's different nor identical, it's not documented
> in the user manual.
> I thought it would better to have separate bindings in case there is a
> difference.
> Than don't have and find later that we have to introduce one.

It's a tradeoff. Pushing your logic to the limit, we would have a
compatible for each controller embedded in an SoC.

This would be unmaintainable, and slightly useless since that case is
very unlikely.

However, having differences between SoCs is quite common, hence why we
have different compatibles for each SoC.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--wdtcxmlg6dhvhpqj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXOaYrAAKCRDj7w1vZxhR
xUPnAPsGJnjqxtkcj8BFHo1UbY6rBrhE114RafzPUtXuJD8o4QEAmWfFGwayxZZ0
63T2ZEyt/CbXZE9fTnSFpRsi3BkzQA4=
=Frvc
-----END PGP SIGNATURE-----

--wdtcxmlg6dhvhpqj--


--===============7622890179624761742==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7622890179624761742==--

