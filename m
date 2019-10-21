Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A37DDEEBD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 16:05:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CP6kz61H26vP/VGEcZjZ+PgtoWiv2T2QyNqNfM9cyKU=; b=e4NkNCkGo1rwzVKu6ouP11fAT
	HvtHZbXnoUZpaVZJfVHCzHglsTGa5RoUXcdMQW0dv9a30R4Bl5eUeEqPMLSUEKwqFt0vGR8PisUbG
	UjaWc5YjarJiJbYuU22LviXEKoCi1vXT4ZsnNJ3HXumQ8d+utP4f6MVbgL0qCPt2+AuSjMAjdpfIq
	r8jpZm5BP6RdSN4s3Fmx5nZgGOlEZQ+jBVo9rb6P4Fm75ALFR5rc5G33gxcPfSsqp8lA8PMjidis1
	2KCHbOFO7HBYQ69tHLRVokHJKv2ysr218pZsbUrTetpFhlgxirB9ojyTEvm8nLeFXFFiolcjGn6FP
	+ZxMuufvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMYJP-0004N4-9M; Mon, 21 Oct 2019 14:05:31 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMYJF-0004Mh-ID
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 14:05:23 +0000
Received: from localhost (p54B33572.dip0.t-ipconnect.de [84.179.53.114])
 by pokefinder.org (Postfix) with ESMTPSA id CAB422C0076;
 Mon, 21 Oct 2019 16:05:20 +0200 (CEST)
Date: Mon, 21 Oct 2019 16:05:15 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Eugen.Hristev@microchip.com
Subject: Re: [PATCH v5 0/9] i2c: add support for filters
Message-ID: <20191021140515.GC26782@ninjato>
References: <1568189911-31641-1-git-send-email-eugen.hristev@microchip.com>
 <c17182ac-67dd-d11f-5daf-066bf446b969@microchip.com>
MIME-Version: 1.0
In-Reply-To: <c17182ac-67dd-d11f-5daf-066bf446b969@microchip.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_070521_904762_0C5F6C00 
X-CRM114-Status: GOOD (  20.03  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 alexandre.belloni@bootlin.com, linux-kernel@vger.kernel.org,
 Ludovic.Desroches@microchip.com, robh+dt@kernel.org, linux-i2c@vger.kernel.org,
 peda@axentia.se, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1071243806227244513=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1071243806227244513==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="MnLPg7ZWsaic7Fhd"
Content-Disposition: inline


--MnLPg7ZWsaic7Fhd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 07, 2019 at 07:53:21AM +0000, Eugen.Hristev@microchip.com wrote:
>=20
>=20
> On 11.09.2019 11:24, Eugen Hristev - M18282 wrote:
> > From: Eugen Hristev <eugen.hristev@microchip.com>
> >=20
> > Hello,
> >=20
> > This series adds support for analog and digital filters for i2c control=
lers
> >=20
> > This series is based on the series:
> > [PATCH v2 0/9] i2c: at91: filters support for at91 SoCs
> > and later
> > [PATCH v4 0/9] i2c: add support for filters
> > and enhanced to add the bindings for all controllers plus an extra bind=
ings
> > for the width of the spikes in nanoseconds (digital filters) and cut-off
> > frequency (analog filters)
> >=20
> > First, bindings are created for
> > 'i2c-analog-filter'
> > 'i2c-digital-filter'
> > 'i2c-digital-filter-width-ns'
> > 'i2c-analog-filter-cutoff-frequency'
> >=20
> > The support is added in the i2c core to retrieve filter width/cutoff fr=
equency
> > and add it to the timings structure.
> > Next, the at91 driver is enhanced for supporting digital filter, advanc=
ed
> > digital filter (with selectable spike width) and the analog filter.
> >=20
> > Finally the device tree for two boards are modified to make use of the
> > new properties.
> >=20
> > This series is the result of the comments on the ML in the direction
> > requested: to make the bindings globally available for i2c drivers.
> >=20
> > Changes in v5:
> > - renamed i2c-filter-width-ns to i2c-digital-filter-width-ns as this
> > is applicable only to digital filter
> > - created new binding i2c-digital-filter-width-ns for analog filters.
>=20
> Hello Wolfram and Peter,
>=20
> Are you happy with the changes in this version? I haven't heard from you=
=20
> since this latest update.
> I am interested to know if anymore changes are required or maybe we can=
=20
> move further with this support.

So, I had a look now and I am happy. I will give Peter one more day to
comment, otherwise I'll apply it tomorrow.

Thanks for your patience and keeping at it!


--MnLPg7ZWsaic7Fhd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl2tuxsACgkQFA3kzBSg
KbY6GQ//X5UmvTKTkgT+9BdG4luCpqZEKeKetljuT2RVeGL56TJwBRiOYWymfAa+
U88PvGx1Q9mmI/E4AvzTAsnwjZiqACFw5n4NG+mWfWmd5H2P7ko6PpgVUL7Lk/0S
zbP658UBLM1LBHjtDI4n1juS6daxP1m2Z43NaaiskaQFBmvWtPRo5mv0jpDdbYi2
gMQ2Qo1efHoaBm+bdVu6Z8O71QktM5BhqKgAPxV9vWA0etSNqiDMII9qk9SmpSfE
4JcqmuAOa0fhDzbc+wKaLZoq3Gk3WiOeTImFHEw5wKZJE80guUBWNiJ2Bl96apQT
E/+M3VuTnS1VWqkS6w0oJ0lA/un8gf+CtYbZblirG05fv7suBSLGuCe2RZvl9pJM
t/LHClLyZ/yBcYL9eAeMj1tM14II/rWES1go5UxhukZW2c7Eqep4UOPTtYQg4rwO
EozMsz3sueMFU5l6llkLW1t+tb8DnLlvlzB6wZtNlLQjL8cYMBfZJrdBy9N0wX1n
nxWhQVIjer4AluEwqpGXJ0bPDrClRr9zgznUzG4ydGRAKSNHLJ01kvvxgQmTPYr6
PSCbo+4EZWFVMZNCi0DGWQFeRLCsqoN+NsHhyM0z7wAc6TUbuaviB1qpRq7+ALkp
GktKG3WXzYEsJmEMiU5ZsJRMC/wIRicGcF7GxqJx1VGO6712MXo=
=4jBB
-----END PGP SIGNATURE-----

--MnLPg7ZWsaic7Fhd--


--===============1071243806227244513==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1071243806227244513==--

