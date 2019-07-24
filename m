Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EAD5729F3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 10:25:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=t3NC4RFv6+0VIJyeIHosvr+xIS8d153X6QLDT05TTJo=; b=YxUeaGUffJxakhJVk1i4niZ1o
	K2pPCcL15pFwLSriz3Ywj3oRs21l8Q2wX1Er2LQorTYttyvheo5BRyX8Oyra+zN0jNbOBs9KOdHmI
	JpPzHJsmpLvfPh2Y9rTGKCgyAP3Py2RT3yoq9W016SJ9eNnLv7y0R9nZNIEAlQCTwdp1Q8atjCqfE
	cYJX0p1iA0CRjdu0GC94NkamUzlwz8hEFEpZ/177DPSMlcwf6tAyHsX5F6UAAYPnlTIjoDZpfPMOV
	l1W/uQxjCaxzjc484CCaqPdmwlbIEHcI40IBRbzfWVy9g3LgLKMoGP9AweaFiwx3sQ0nNQHTkTx1C
	H/5u/uGOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqCaU-00009E-Om; Wed, 24 Jul 2019 08:25:26 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqCa8-0007ll-Bs
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 08:25:06 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id BAE12E0009;
 Wed, 24 Jul 2019 08:24:59 +0000 (UTC)
Date: Wed, 24 Jul 2019 10:24:59 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Sean Young <sean@mess.org>
Subject: Re: [PATCH v5 04/13] media: rc: sunxi: Add RXSTA bits definition
Message-ID: <20190724082459.xsstansjxtyvu4st@flea>
References: <20190607231100.5894-1-peron.clem@gmail.com>
 <20190607231100.5894-5-peron.clem@gmail.com>
 <20190610095243.7xwp4xhauds22qzw@flea>
 <CAJiuCcfyjGTBbsjZQYj2p3KD6O-WaXhFe5NZrnKQwJYACmatUw@mail.gmail.com>
 <20190715121244.2vrsw6qa4fgp72fn@gofer.mess.org>
 <20190723062557.hnbi6hgrg4ecawkn@gofer.mess.org>
 <20190723070440.nfmhbrfykumxayjj@flea>
 <20190724053937.4ic5n35xtw2chjdy@gofer.mess.org>
MIME-Version: 1.0
In-Reply-To: <20190724053937.4ic5n35xtw2chjdy@gofer.mess.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_012504_570467_44828944 
X-CRM114-Status: GOOD (  17.58  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
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
Content-Type: multipart/mixed; boundary="===============4533803385528683844=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4533803385528683844==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="og4sfmz7wdyyword"
Content-Disposition: inline


--og4sfmz7wdyyword
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 24, 2019 at 06:39:37AM +0100, Sean Young wrote:
> On Tue, Jul 23, 2019 at 09:04:40AM +0200, Maxime Ripard wrote:
> > Hi Sean,
> >
> > On Tue, Jul 23, 2019 at 07:25:57AM +0100, Sean Young wrote:
> > > On Mon, Jul 15, 2019 at 01:12:45PM +0100, Sean Young wrote:
> > > > On Sun, Jul 14, 2019 at 04:32:22PM +0200, Cl=E9ment P=E9ron wrote:
> > > > > Hi Sean,
> > > > >
> > > > > You acked the whole v3 series but this patch has been introduced =
in v5
> > > > > could you ack this one too?
> > > >
> > > > Acked-by: Sean Young <sean@mess.org>
> > >
> > > So who's tree should this series go through? It seems mostly device t=
ree.
> > > Alternatively I'm happy to try it get merged via the media tree.
> >
> > Ideally the media bits should go through the media tree, the DT bits
> > will go through arm-soc
> >
> > So you can apply the patches 1-4, 7 and 10, I'll apply the rest.
> >
> > Does that work for you?
>
> Works for me, I'll add them to my next pull request to Mauro.

Applied 5, 6, 8, 9 and 11 to 13.

Thanks!
Maxmie

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--og4sfmz7wdyyword
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXTgV2wAKCRDj7w1vZxhR
xfJ7AP9T3lo+mjFXDqZN0Pz/4RMW3K3sSelGWolPV45h0MFvHAD/alxUyiaQdf/T
yqmAR4Jmj9ViaeByiHDySDrorxlVhw0=
=wgpG
-----END PGP SIGNATURE-----

--og4sfmz7wdyyword--


--===============4533803385528683844==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4533803385528683844==--

