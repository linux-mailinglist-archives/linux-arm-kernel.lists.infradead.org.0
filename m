Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C404E3AF66
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 09:15:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=spv7ydkry4+wElYkWJR/I5Yd9YtgBo7ZfFralfJ0Buk=; b=c+A2XlKx1XsGir8FiEtUD9mQ4
	q3rkSFCUYcw+L2M4Rg20The7/qOqm7NVXpi+MeFYjUMRe9sFUuS1DW6Mb2Djwystijth4/VZIWVQw
	d2XikrpIoPTTXJCu+6Sph9OFF73CzP+14/Z5R9fssRJsd6wQSiV0Ve6tqAdQZAX9/tEQN0c/YoHwv
	vEWlJJi+fhcsp46xgUDgyDXm14JTtmptnfGnUJUnBAwSry6eXbhlplYxD5ERc6BulmmNkShCq4/cb
	xme3RJDMj7h4nMGspUrw3bOuh9xn0iNz7tQHjEcw9tuG3XBL1ZJzO9sZo3RBjhiLJLqHjqwihKSV/
	oiq+1Okzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haEX4-0007OF-Ul; Mon, 10 Jun 2019 07:15:55 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1haEWn-0007Mr-87; Mon, 10 Jun 2019 07:15:39 +0000
Received: from localhost (p54B33062.dip0.t-ipconnect.de [84.179.48.98])
 by pokefinder.org (Postfix) with ESMTPSA id 0E8762C077A;
 Mon, 10 Jun 2019 09:15:33 +0200 (CEST)
Date: Mon, 10 Jun 2019 09:15:32 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Peter Rosin <peda@axentia.se>
Subject: Re: [PATCH 00/34] treewide: simplify getting the adapter of an I2C
 client
Message-ID: <20190610071532.GB2673@kunai>
References: <20190608105619.593-1-wsa+renesas@sang-engineering.com>
 <661f1084-da4e-75f0-e632-335134932801@axentia.se>
MIME-Version: 1.0
In-Reply-To: <661f1084-da4e-75f0-e632-335134932801@axentia.se>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_001537_442636_E99B4F8E 
X-CRM114-Status: UNSURE (   5.39  )
X-CRM114-Notice: Please train this message.
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "linux-rtc@vger.kernel.org" <linux-rtc@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 "linux-leds@vger.kernel.org" <linux-leds@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============0303939599534373345=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0303939599534373345==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5/uDoXvLw7AC5HRs"
Content-Disposition: inline


--5/uDoXvLw7AC5HRs
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Peter,

> Similar things go on in:
>=20
> drivers/hwmon/lm90.c
> drivers/leds/leds-is31fl319x.c
> drivers/of/unittest.c

Right. I'll fix them, too.

> And drivers/rtc/rtc-fm3130.c has a couple of these:

These are fixed in patch 26 of this series.

Thanks and happy hacking,

   Wolfram

--5/uDoXvLw7AC5HRs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAlz+A5QACgkQFA3kzBSg
KbYJ9A/8DYTbi6b0TbOp28F+nJSr8CHl41QgvGx/BuNEd1CKh7IiZjPg9sa3l14s
3zzM5PQhqmR0ff/VzdUS7LJpAK6+ZN6NK8PqxZdgo0Zfm1TgJpYnwdlcEhASGDqQ
5ttT6o7v/At/zuq8Oa1jL4DMyD3oFS2iXzhq3jydOemRGShD0REUpYVhSPdIBunD
L+pNcqvwzGZmHgbwT50Flj7+tO1UB2Y9a8Q2KNKdbT1OXO+4yBgz5sJNT4nhCPQB
2NSaYzPRXpVyzceBHQrT2RbYfR/LjaprvcZNg81cK3oa6mpSTbF7XAMOzMqRFmJj
MMHHDJYejycQ8vBVCS5y2tpsgmZSocn/6oZDHntMJ0+ytyXxaxcibnYERDGc4SZC
GaLHEF90ULPzLT/Ar0aD3jWM0q6mn3wgj3OZOmtXZnkinENc2zKqlk5a7K8KcJVP
2hEqnYC3XjMKX3QcgOxMduau0A71LN2w6eUOa4C4InE/flgR9gcVQ14ll6Gmsi29
OyasroZ/QMwCatiqo8r71RTo/9GVoum+g9myGBPalukTaicXIZIwu6cli7Ne94Cm
+nKmaL/VtYvEhh0MpjsVM3LYBa0mtlim419eCoys2ZEHrGyJiSypq+jDLxmJbl/0
Xt5XhDpZiUMxj+7YmzLVJ8LfoVvxJrQlNk7WO8VtlG3BO7s8rOI=
=VRPd
-----END PGP SIGNATURE-----

--5/uDoXvLw7AC5HRs--


--===============0303939599534373345==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0303939599534373345==--

