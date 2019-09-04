Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D849A9549
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 23:38:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6jzd7H1x/MMgg/WwYjzFTf22EkyO6ZN9e6j1gozXr04=; b=Ck10/4Cl2RTeUvXIMdn94o2Qh
	T1UewfqG6QBzaLgHeYszZueG6sSgw3ga8dRwMepZn6E8TcE2P+0GugSeOuJaKeYaCkchDj3G1mrp/
	ra7XfyoLWcFA24aKjK7zifjvR5IbclAJRKzxASyCOVJrWpqZ5sQ4pr3JLYulBLnmlme+I27gr+ZI6
	A/+K77I2hxIItmrZ66kURO3E6Pb2TFFy1KSu9u7Kb4+G7w5yrawjiFpp3FNHJW4TtVDt9azyxrfwE
	2xq8IQpORIplzMX+9e8WSx4yzqlTErT+QTOvIJXaz2ySJeSz9XQPMJw6jfaMbWqs/8danJGYOd5XD
	AwxOokzXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5cyW-0007me-JX; Wed, 04 Sep 2019 21:38:00 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i5cyI-0007mI-O5
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 21:37:48 +0000
Received: from localhost (p54B337F1.dip0.t-ipconnect.de [84.179.55.241])
 by pokefinder.org (Postfix) with ESMTPSA id E8DCE2C08C3;
 Wed,  4 Sep 2019 23:37:45 +0200 (CEST)
Date: Wed, 4 Sep 2019 23:37:45 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Ray Jui <ray.jui@broadcom.com>
Subject: Re: [PATCH v1 1/1] i2c: iproc: Add i2c repeated start capability
Message-ID: <20190904213745.GG23608@ninjato>
References: <1565150941-27297-1-git-send-email-rayagonda.kokatanur@broadcom.com>
 <20190830125626.GC2870@ninjato>
 <3e70fa7e-de13-4edd-2e17-b7c56e91d220@broadcom.com>
 <20190831094940.GA1138@kunai>
 <540c4e2d-0dd5-5260-30b2-e1589b279d71@broadcom.com>
MIME-Version: 1.0
In-Reply-To: <540c4e2d-0dd5-5260-30b2-e1589b279d71@broadcom.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_143746_929185_DD5641AA 
X-CRM114-Status: GOOD (  11.63  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 Lori Hikichi <lori.hikichi@broadcom.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Shivaraj Shetty <sshetty1@broadcom.com>,
 Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>,
 linux-kernel@vger.kernel.org, Icarus Chau <icarus.chau@broadcom.com>,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2115852290790848561=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2115852290790848561==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="EDJsL2R9iCFAt7IV"
Content-Disposition: inline


--EDJsL2R9iCFAt7IV
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


> I think you are right that the controller does not seem to support
> additional I2C features in addition to SMBUS.
>=20
> However, my concern of switching to the smbus_xfer API is:
>=20
> 1) Some customers might have used I2C_RDWR based API from i2cdev. Changing
> from master_xfer to smbus_xfer may break the existing applications that a=
re
> already developed.

Well, given that you add new quirks in the original patch here, you are
kind of breaking it already. Most transfers which are not SMBus-alike
transfers would now be rejected. For SMBus-alike transfers which are
sent via I2C_RDWR (which is ugly), I have to think about it.

> 2) The sound subsystem I2C regmap based implementation seems to be using
> i2c_ based API instead of smbus_ based API. Does this mean this will also
> break most of the audio codec drivers with I2C regmap API based usage?

I don't think so. If you check regmap_get_i2c_bus() then it checks the
adapter functionality and chooses the best transfer option then. I may
be missing something but I would wonder if the sound system does
something special and different.


--EDJsL2R9iCFAt7IV
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl1wLqkACgkQFA3kzBSg
KbbdPBAAsHYbJFSjXbArIzGj/6rYqzbUnvYeKqVHK/C1E7C1/89RAeVkba81NFsu
PjHeTsrPaMQ6lK5Df79WK8I0EDf++K1Imv1edG64CamFTHqc60rVShO3ifPnQf8P
XrOEAUxLEsoXjAqsUy9Nl2xU9roZxcglRdSSg+rlDsN6WRJ8bq0xg7I/7pPs0t/m
DU+77rOjrqcj3mKJsMvcH/ay4tAYQGwXKalqLwkRuy6u5bQ98G/z9mPdGRwBXxx7
2lg61m1t05rmuU8PQZnnD1xB8syyt3/ivq4VWVs/9ghtAoTirMGtkhWu0SIQ17M5
KePWtCxia4A4rHQeEF6vdrbuZAcPqFy8ttnoccsUBBXLy4KYs2zguxiss0EXq95t
QHW83RzcyxpPqqbVPAgtoQONVcFBLvJ3p5LDIHi/kgosLcTyyjTfre1vzRcG8j9S
j/q++XaORKmfJ4evfK5AdbexTLnXGlUyXcRj0vQElOHxVOwk2PbjYAAq58XKsY9W
95LmlBMR2kDB/GCdZWGdTt29hyyhLgde4temx2eBCAqafAhAsPdFp8sFA2mEkaC4
h5rby01u7yD66c8hpI/4q5psgoj1j7fRctKsdtxb/S8P2sHcKZ6HygntSmmEb+WG
BGd+gabtDbQBSHrOxqYrYBZVQFNf3YABNMFvC5LuvgMs3Ek59iM=
=s2Lx
-----END PGP SIGNATURE-----

--EDJsL2R9iCFAt7IV--


--===============2115852290790848561==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2115852290790848561==--

