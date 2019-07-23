Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81C5E71247
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 09:06:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2lXFZkdtRRQWXVTP+XJGbQ7Z4mEHBeLvTvLZWtgb4Hc=; b=Kl/6ULUdlw3CN7KtUSCeNBlEX
	rtfG/20rAzBzOimRXfmAAAAcSy+3Kktnh3MsrSm/Xavr2qk5QzW1foUjFKqFZK1QHx6y3oXd3oZ65
	1M0W7I358y6Xzuo/zklxK0cyh0lRdgJ8UWGl/bKzoc/qJqzLvhes/RHd5wpBSxm44haqygWS1Mwz9
	isbtaCxFT81DQ44wOuOLadzFHpenHmeTnIwGPNKCNEW/arD5H3JxZE7qgt6LT4HBc8RDZmQni5rCJ
	IAfwEXTMKgj9JA0KWqKt93iUl1Pw+Jmf5+zgX0IDIC19ecbuc3mxc2Gl8XpqBiXPW6npGkSMvdjhg
	C2GtNj7+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpos9-0002MW-5L; Tue, 23 Jul 2019 07:06:05 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpoqz-0001pQ-9t
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 07:05:04 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 5C99A60007;
 Tue, 23 Jul 2019 07:04:41 +0000 (UTC)
Date: Tue, 23 Jul 2019 09:04:40 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Sean Young <sean@mess.org>
Subject: Re: [PATCH v5 04/13] media: rc: sunxi: Add RXSTA bits definition
Message-ID: <20190723070440.nfmhbrfykumxayjj@flea>
References: <20190607231100.5894-1-peron.clem@gmail.com>
 <20190607231100.5894-5-peron.clem@gmail.com>
 <20190610095243.7xwp4xhauds22qzw@flea>
 <CAJiuCcfyjGTBbsjZQYj2p3KD6O-WaXhFe5NZrnKQwJYACmatUw@mail.gmail.com>
 <20190715121244.2vrsw6qa4fgp72fn@gofer.mess.org>
 <20190723062557.hnbi6hgrg4ecawkn@gofer.mess.org>
MIME-Version: 1.0
In-Reply-To: <20190723062557.hnbi6hgrg4ecawkn@gofer.mess.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_000454_892410_981CB6D0 
X-CRM114-Status: GOOD (  15.08  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============6992207626807084260=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6992207626807084260==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="nvr4fk2rzmmuioc2"
Content-Disposition: inline


--nvr4fk2rzmmuioc2
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Sean,

On Tue, Jul 23, 2019 at 07:25:57AM +0100, Sean Young wrote:
> On Mon, Jul 15, 2019 at 01:12:45PM +0100, Sean Young wrote:
> > On Sun, Jul 14, 2019 at 04:32:22PM +0200, Cl=E9ment P=E9ron wrote:
> > > Hi Sean,
> > >
> > > You acked the whole v3 series but this patch has been introduced in v5
> > > could you ack this one too?
> >
> > Acked-by: Sean Young <sean@mess.org>
>
> So who's tree should this series go through? It seems mostly device tree.
> Alternatively I'm happy to try it get merged via the media tree.

Ideally the media bits should go through the media tree, the DT bits
will go through arm-soc

So you can apply the patches 1-4, 7 and 10, I'll apply the rest.

Does that work for you?

Thanks!
Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--nvr4fk2rzmmuioc2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXTaxiAAKCRDj7w1vZxhR
xesNAQD8WCEMwvXtgYh+h+LCOvkCUrn06ytKH73piKWm8MCJTAEA6k/hf/kMW9uJ
9ayaEnz1ePXdNkfsVhxSLNJVpUKTHwI=
=ZogC
-----END PGP SIGNATURE-----

--nvr4fk2rzmmuioc2--


--===============6992207626807084260==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6992207626807084260==--

