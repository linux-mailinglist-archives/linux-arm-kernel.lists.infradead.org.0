Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EEC3D43BF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 17:06:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TApgarq4cBkIUIy9XrbLnrr9YnUhswIx43rvi8G896s=; b=jRgC0Pgk/Pluf+Mo1cZzQDxN7
	8PT0F6u05Jb3DmWclQUWY1uLuG3ohdgSeIpZ32zuR8ii1gyNuxPk3T/k+5Ocmy3tdIWalfEUzAdIy
	2GyKgKU92NKaQnxbISd4P32zWh4kjCCaZ9O1XQxXqVu1bEdE7OWQiVK+VuPhy8y3/DVjiKANIyCCV
	5EQx5xhVjhcdM4RSBN0+/X7U0uKll8GzgXZs9ugHtQXXLcKhi4st/vBWzqjYI713XIy3s0o/dOZTZ
	0izkR5tq+irZnqMENff5ruPFcQWTMIBvpPYLANE09eeq/EjMKw4zwZ4COrF4pe62DEsqTeqBNtMwd
	zvdthX0TQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIwUw-0000Lb-68; Fri, 11 Oct 2019 15:06:30 +0000
Received: from mail.andi.de1.cc ([2a01:238:4321:8900:456f:ecd6:43e:202c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIwUm-0000Kf-Mh
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 15:06:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=kemnade.info; s=20180802; h=Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oFnh+7aofaF0FzctP338voKSyncR9/qqjW/7qmv+uiI=; b=d+8mNidNz2g3CT4o7emVa8Iv9
 j4mlf6bjNdTPBL6ebgONqPnBkPA4X2BnpvGPs8RpZLkZDOHEzE1xl4SKtDn/FV3olLmSNsafpsl3m
 oxBlYV4T3I+iCYIBwhsjqlT08Qg/jpeTmwflO6zo1G6uYgW9Xa7QtwUQ9v7LvM9v7gijg=;
Received: from p5dcb30f2.dip0.t-ipconnect.de ([93.203.48.242] helo=localhost)
 by mail.andi.de1.cc with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <andreas@kemnade.info>)
 id 1iIwUX-0004ul-2F; Fri, 11 Oct 2019 17:06:05 +0200
Received: from localhost ([::1]) by localhost with esmtp (Exim 4.89)
 (envelope-from <andreas@kemnade.info>)
 id 1iIwUV-0008KW-R0; Fri, 11 Oct 2019 17:06:03 +0200
Date: Fri, 11 Oct 2019 17:05:53 +0200
From: Andreas Kemnade <andreas@kemnade.info>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v3 2/3] ARM: dts: add Netronix E60K02 board common file
Message-ID: <20191011170147.1b3c4b25@kemnade.info>
In-Reply-To: <20191011142927.GA11490@bogus>
References: <20191010192357.27884-1-andreas@kemnade.info>
 <20191010192357.27884-3-andreas@kemnade.info>
 <20191011065609.6irap7elicatmsgg@pengutronix.de>
 <20191011094148.1376430e@aktux> <20191011142927.GA11490@bogus>
X-Mailer: Claws Mail 3.14.1 (GTK+ 2.24.31; i686-pc-linux-gnu)
MIME-Version: 1.0
X-Spam-Score: -1.0 (-)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_080620_896883_D4FA4B8E 
X-CRM114-Status: GOOD (  21.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, marex@denx.de, devicetree@vger.kernel.org,
 andrew.smirnov@gmail.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 angus@akkea.ca, Marco Felsch <m.felsch@pengutronix.de>,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 manivannan.sadhasivam@linaro.org, j.neuschaefer@gmx.net,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6111459995275262191=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============6111459995275262191==
Content-Type: multipart/signed; micalg=pgp-sha256;
 boundary="Sig_/pKsq_nhga4Bcf+WxR+iqaqg"; protocol="application/pgp-signature"

--Sig_/pKsq_nhga4Bcf+WxR+iqaqg
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Fri, 11 Oct 2019 09:29:27 -0500
Rob Herring <robh@kernel.org> wrote:

> On Fri, Oct 11, 2019 at 09:41:48AM +0200, Andreas Kemnade wrote:
> > On Fri, 11 Oct 2019 08:56:09 +0200
> > Marco Felsch <m.felsch@pengutronix.de> wrote:
> >  =20
> > > Hi Andreas,
> > >=20
> > > On 19-10-10 21:23, Andreas Kemnade wrote: =20
> > > > The Netronix board E60K02 can be found some several Ebook-Readers,
> > > > at least the Kobo Clara HD and the Tolino Shine 3. The board
> > > > is equipped with different SoCs requiring different pinmuxes.
> > > >=20
> > > > For now the following peripherals are included:
> > > > - LED
> > > > - Power Key
> > > > - Cover (gpio via hall sensor)
> > > > - RC5T619 PMIC (the kernel misses support for rtc and charger
> > > >   subdevices).
> > > > - Backlight via lm3630a
> > > > - Wifi sdio chip detection (mmc-powerseq and stuff)
> > > >=20
> > > > It is based on vendor kernel but heavily reworked due to many
> > > > changed bindings.
> > > >=20
> > > > Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
> > > > ---
> > > > Changes in v3:
> > > > - better led name
> > > > - correct memory size
> > > > - comments about missing devices
> > > >=20
> > > > Changes in v2:
> > > > - reordered, was 1/3
> > > > - moved pinmuxes to their actual users, not the parents
> > > >   of them
> > > > - removed some already-disabled stuff
> > > > - minor cleanups   =20
> > >=20
> > > You won't change the muxing, so a this dtsi can be self contained?
> > >  =20
> > So you want me to put a big=20
> > #if defined(MX6SLL)  =20
>=20
> Not sure what the comment meant, but no, don't do this. C defines in dts=
=20
> files are for symbolic names for numbers and assembling bitfields and=20
> that's it.

yes, that is also my opinion. For now, there is only one user
of this .dtsi, but I have another one in preparation. That is the
reason for splitting things between .dts and .dtsi to avoid such ugly
ifdefs

Regards,
Andreas

--Sig_/pKsq_nhga4Bcf+WxR+iqaqg
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEPIWxmAFyOaBcwCpFl4jFM1s/ye8FAl2gmlEACgkQl4jFM1s/
ye9vKhAAos4YjS29TrFqk0UVc9rEP9svrO1m9mcIy34GAw1S8lPgrTQHk6CxjNYF
o2gTG/mcofsy1ngPu7kk625wYMDVzwP8ZXtM7N4DxYLS80vEKq56nkhrBnqIUCvb
Rv+8Sbo0TU4VAES/Hl2yjzl5XBiT6gPajB0BJE4WDSA+lHoZwRDpLz+4QbYlufTG
wJmiDj03mNOGU+UoQ6oruSYW9TQCbiGyx+W/nQGmxEBsT700acHt9A6WPvLeQBYi
nqKVtfVpd6uxxe58mJWEePFF9vEJNe2+FkSg9mMvSZd1SwfNfENw3XqYFb0V8xQ3
ZK8ZWp0ohC5Pa/+fSUlkKFOrPL/PDmK9arKOpj1+IHUg/HIUKW/PN+lzYK8d8Pw/
XKwmUkf4d8rMUyebbrmZgZmAA1V0lArO63RnWLY1COMo3x8whIx7TEjR7lCwi6ht
/p0k4uUw6tzdTsNDLhNNZs8jSY1fFWVJYdX5syspQGy9txQHmZCeDI7+qdleskUA
n7gJj7BslbrK5tmcC6kL2T8ZR8KtrEQjeeHM4UpuNh++7C9tkW44OGN/RP7ytcCr
4T3r21EoF1vNcIV9baRHD7iu74tbuvV8LW/hhsi7CBl2kKHDA1Q4uRaPIfF30wwD
8MwIW7K6JPxJvHlMbHOelBk1vI24MbMyXA4KjFewQDmZPfZK5AQ=
=icrB
-----END PGP SIGNATURE-----

--Sig_/pKsq_nhga4Bcf+WxR+iqaqg--


--===============6111459995275262191==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6111459995275262191==--

