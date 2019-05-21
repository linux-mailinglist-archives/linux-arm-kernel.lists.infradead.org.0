Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6F2824EDB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 14:19:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NzkzzmdP4D2gx2hRm9YXGZiuQg9AuvOROAIEuQruCHU=; b=fvMKu68AFIU9My9hY54+u2ysf
	XSirEOCoiihBhoXMao33Pn0oWIpiIePejHQct9PHE88hY62j0wVtSlTLSRXvvPQ87h/gOQRYrGLYU
	4qT9CqUY7mWteRoEMd7Iytx3R6nGRjHHznKN9Xrkct1FrEvf42mK4+cxLaFLH2LxkpEQX/dsgJj91
	CLJd8AkBZaq7ys09APbIyNBJhQK6NTOxA5Tr9NTyiaKJjFotTUjHT8n9f+XMzoVjBNR5zKDvRL83s
	8GUBGUJdpgg3KzcUfgHW/hoedNBCTPOLynNDnBoXd4v1jMongSE5k8qBFMIaJwOaYx3XRuFP9F5lc
	roBlFc0wQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT3jT-0002Zz-J4; Tue, 21 May 2019 12:19:03 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT3jN-0002ZS-A9; Tue, 21 May 2019 12:18:58 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 586D4ABD4;
 Tue, 21 May 2019 12:18:55 +0000 (UTC)
Message-ID: <b757047cc0151bee57749415a53989309a9fa590.camel@suse.de>
Subject: Re: [RFC v2 3/5] clk: bcm2835: use firmware interface to update pllb
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Petr Tesarik <ptesarik@suse.com>
Date: Tue, 21 May 2019 14:18:53 +0200
In-Reply-To: <20190521141456.46f6d4a7@ezekiel.suse.cz>
References: <20190520104708.11980-1-nsaenzjulienne@suse.de>
 <20190520104708.11980-4-nsaenzjulienne@suse.de>
 <1558356237.12672.3.camel@suse.com>
 <46004f242c2618a185445630580116c772455613.camel@suse.de>
 <20190521141456.46f6d4a7@ezekiel.suse.cz>
User-Agent: Evolution 3.32.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_051857_500177_792CEB22 
X-CRM114-Status: GOOD (  18.64  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: stefan.wahren@i2se.com, Florian Fainelli <f.fainelli@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Scott Branden <sbranden@broadcom.com>,
 linux-pm@vger.kernel.org, sboyd@kernel.org, Ray Jui <rjui@broadcom.com>,
 mturquette@baylibre.com, Oliver Neukum <oneukum@suse.com>, rjw@rjwysocki.net,
 linux-kernel@vger.kernel.org, Eric Anholt <eric@anholt.net>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 viresh.kumar@linaro.org, linux-clk@vger.kernel.org, mbrugger@suse.de,
 ssuloev@orpaltech.com
Content-Type: multipart/mixed; boundary="===============8219063038403172491=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8219063038403172491==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-Hgwp9Ctbw+KDH82tk7Jk"


--=-Hgwp9Ctbw+KDH82tk7Jk
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2019-05-21 at 14:14 +0200, Petr Tesarik wrote:
> On Tue, 21 May 2019 13:39:31 +0200
> Nicolas Saenz Julienne <nsaenzjulienne@suse.de> wrote:
>=20
> > Hi Oliver, thanks for the review.
> >=20
> > On Mon, 2019-05-20 at 14:43 +0200, Oliver Neukum wrote:
> > > On Mo, 2019-05-20 at 12:47 +0200, Nicolas Saenz Julienne wrote: =20
> > > > + * For more information on the firmware interface check:
> > > > + *=20
> > > > https://github.com/raspberrypi/firmware/wiki/Mailbox-property-inter=
face
> > > > + */
> > > > +struct bcm2835_firmware_prop {
> > > > +       u32 id;
> > > > +       u32 val;
> > > > +       u32 disable_turbo;
> > > > +} __packed; =20
> > >=20
> > > Hi,
> > >=20
> > > technically we are not in arch and those fields have a defined
> > > endianness.
> > >  =20
> >=20
> > Well I set it as packed since it's 'sent' through a memory mapped firmw=
are
> > interface. Hence the need for the structure format to be fixed. So I gu=
essed
> > we're safer with it, as I'm not 100% sure what the different compilers =
are
> > going to do with it (although it's very likely it'll stay the same). BT=
W
> > this
> > will be built both for arm & arm64.
>=20
> I believe that's not the point Oliver was trying to make. You should
> use __le32 instead of u32.
>=20
> That's because u32 means "host byte order" and this code is not located
> under arch/, so host endianness is unknown, but the mailbox interface
> requires little-endian.
>=20
> It's nit-picking, and that's why Oliver writes 'technically'; there is
> probably no way this firmware interface could be used on a big-endian
> CPU...

Understood, thanks for the clarification.

Regards,
Nicolas


--=-Hgwp9Ctbw+KDH82tk7Jk
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAlzj7K0ACgkQlfZmHno8
x/4XSgf/dX+SRWpz1Yfel/oXn5vJOOTYCsXlSCJYpWE0gv6LT/WuRPch0Zo7Z6Rz
veT2xjkMaccOr+FHdkDbFNjkqO/WjZzvwPtZmGs0T+mSqBbVua/PMVIryY8XvpNL
KzP/8x8P+Yq3Q9HtiuNf1uHiSKs8xe82uqNmdVLDenuqijJdSTEqKmJ+IqX+uK13
eNHSu8qIF1Z6hIveCrfI841fypd/VXaerf+oWxGnmV4YAPvqSx9mAqHZd1RPZUaK
qNOo/QE5KPrx2uqBmx/gNw3n0NHhgyU03SGaZnDuDDzvOlAHpPO2u3jBrqrXJJts
prXi/m6LkrKFPFK2IBXYEjzf7Gc52Q==
=krKa
-----END PGP SIGNATURE-----

--=-Hgwp9Ctbw+KDH82tk7Jk--



--===============8219063038403172491==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8219063038403172491==--


