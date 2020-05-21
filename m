Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EEA71DD882
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 22:38:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eOBo/ydyhANe2N5sg09f+RYa9RW6mdqdpt/2yVEaYEM=; b=gJmF8lOemobB1BeWcH7oqhlxv
	ifY98D+ewnqAKdYyLQ3IU2Dh+rzllLcUM7jOs5toxd6eHjPaUFurBX/nk+Tf7vwwugJ/t6am23LVd
	GSzclNq6Uw+7Qabfp9OPIKB9YCbb7RcdfhorlgE4yxeHpGbDqVVr2ZIHJ0/jpEaRF+PZs+HZBu6Co
	ZrClhkrZyVTTdQrnfy4ApyVE5RXzTcVPq9DWWSR7pzwjRiTGXIVOdBhYmPlWsHjUN4yV7vj7BVGTK
	EuWZMXgePC+UmtEiccP8Z5S8uAWxkQzMLl8RVNOPxZzZATMHQjHDuxFPCeJGHLdNLLKQjk3laJPH2
	8pRaE8q5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbrxE-0003yu-4K; Thu, 21 May 2020 20:38:12 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbrx4-0003xu-SD
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 20:38:04 +0000
Received: from localhost (p5486ce13.dip0.t-ipconnect.de [84.134.206.19])
 by pokefinder.org (Postfix) with ESMTPSA id 7F7B02C1FCF;
 Thu, 21 May 2020 22:37:58 +0200 (CEST)
Date: Thu, 21 May 2020 22:37:58 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: Re: [PATCH v12 2/3] i2c: npcm7xx: Add Nuvoton NPCM I2C controller
 driver
Message-ID: <20200521203758.GA20150@ninjato>
References: <20200521110910.45518-1-tali.perry1@gmail.com>
 <20200521110910.45518-3-tali.perry1@gmail.com>
 <20200521142340.GM1634618@smile.fi.intel.com>
 <20200521143100.GA16812@ninjato>
 <CAHb3i=vcVLWHjdiJoNZQrwJCqzszpOL7e9SAjqObsZCRH4ifwg@mail.gmail.com>
 <20200521145347.GO1634618@smile.fi.intel.com>
MIME-Version: 1.0
In-Reply-To: <20200521145347.GO1634618@smile.fi.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_133803_063293_7BA6709C 
X-CRM114-Status: GOOD (  14.05  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Tomer Maimon <tmaimon77@gmail.com>, Nancy Yuen <yuenn@google.com>,
 avifishman70@gmail.com, Patrick Venture <venture@google.com>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 Brendan Higgins <brendanhiggins@google.com>, Ofer Yehielli <ofery@google.com>,
 Tali Perry <tali.perry1@gmail.com>, kfting@nuvoton.com,
 Rob Herring <robh+dt@kernel.org>, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Benjamin Fair <benjaminfair@google.com>
Content-Type: multipart/mixed; boundary="===============0746351580110605170=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0746351580110605170==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mYCpIKhGyMATD0i+"
Content-Disposition: inline


--mYCpIKhGyMATD0i+
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


> > > I wondered also about DEBUG_FS entries. I can see their value when
> > > developing the driver. But since this is done now, do they really hel=
p a
> > > user to debug a difficult case? I am not sure, and then I wonder if we
> > > should have that code in upstream. I am open for discussion, though.
> >=20
> > The user wanted to have health monitor implemented on top of the driver.
> > The user has 16 channels connected the multiple devices. All are operat=
ed
> > using various daemons in the system. Sometimes the slave devices are po=
wer down.
> > Therefor the user wanted to track the health status of the devices.
>=20
> Ah, then there are these options I have in mind (Wolfram, FYI as well!):
> 1) push with debugfs as a temporary solution and convert to devlink healt=
h protocol [1];
> 2) drop it and develop devlink_health solution;
> 3) push debugfs and wait if I=C2=B2C will gain devlink health support

No need for 2). We can push it now and convert it later. That being
said, I wonder if [1] is suitable for this driver? Things like NACKs and
timeouts happen regularly on an I2C bus and are not a state of bad
health.


--mYCpIKhGyMATD0i+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl7G5qEACgkQFA3kzBSg
KbYDmQ/+OTWXWz2QGQFX0uxtaXhfs432/2BO3z/AA7ZJn7t6OCSyyvDL9L26maBs
Hu/S78wYqdLY6l58jtz8iUHsMwqL+zcQSTjOlo8mqj99T10GpZiwzJlSVB7AxT28
jmlxqN+z9fNUDQDujV+Y8UVvi7+UZ8Y37nYewtOz3AMskTx90HflDt4OHUBQsG7p
1bj1wtPmUfOy8su9FZrPN6SdhzO24XXaqVJgNg2FWqiuNoZ6Kdo8ekQAc3bjvNiO
PbEjpRw9QFE8pY9bWyHHJ7pFfpUvwe1bCXAA+Dj19LY2R+29lOxwaRZ3teTWxhG1
ArYFtxWrvCwYezyEKZEPozzfOYwd9LZE28c30aDC/8gfeAP1Gz8C9jySYRid6/Zp
RglnDBJKcR3V71fjLTLIXIkPd7kMbxK9A9MQkwlPeLbqlkiLbZflr9ceusirhxmU
IP98Ma6w8fob0ntpPGBD0j42rCebhN1d6PG2HHnvbQqj7hpjCUvVNAerGY38enaJ
+kNWO8/Y+Hwry7VLp/l5cQ23BeVJpeh8nGME+t6rJhWIP69oP6GEQNGWdzYCElD5
X3l4OOSdFAw1ZFjfj0K8wtMEHno/wDglPsrGxjReFI5YCQyKSKi3NtqONSEPiVrn
40cpX2SNefM4PjPQwRSVKuYNlAvmzo9cQKpkgg2YluT2V+JFJVo=
=jcCF
-----END PGP SIGNATURE-----

--mYCpIKhGyMATD0i+--


--===============0746351580110605170==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0746351580110605170==--

