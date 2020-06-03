Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95F801ED752
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 22:26:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=f3kXwMce5AhIYoN88ilNvxJZ2bDF0as2Ut4A8HEaIaA=; b=Inh2EKod7QC2yCkdtKOACo4Xq
	izLjqpvy4B6TehI+Uof9v6+PsgycnqlOksMtdXMSHCglxieX1+c87f1xmft0ew/y1b+02gFTXYpuS
	oVNqn7tcX43g4Nr4TF8hIAd5o5iMQD3o30WPXSd98TQM7TCPw1YdngQgnP8/rF/iVj3Pm0TCprPPa
	4YduAi8pOIezixWJ76be32uEG8PKfPGtoevhFtgmqLL+HxSFfVjrb8l+S6hTSsTtAci1rWOiDkzF3
	IWhMyB3CWTqso1vqcAZqZ86XpkdLTcu0QbQPSaZQQeQhQzxPeGzO+a43hsB061U3KzomMgRjo6xU8
	F6seOX5LQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgZxe-0007Ww-Ac; Wed, 03 Jun 2020 20:26:06 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgZxX-0007W5-E2
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 20:26:01 +0000
Received: from localhost (p5486cfa5.dip0.t-ipconnect.de [84.134.207.165])
 by pokefinder.org (Postfix) with ESMTPSA id 116E32C1FE2;
 Wed,  3 Jun 2020 22:25:55 +0200 (CEST)
Date: Wed, 3 Jun 2020 22:25:53 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Tali Perry <tali.perry1@gmail.com>
Subject: Re: [PATCH v14 0/3] i2c: npcm7xx: add NPCM i2c controller driver
Message-ID: <20200603202553.GB7684@kunai>
References: <20200527200820.47359-1-tali.perry1@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20200527200820.47359-1-tali.perry1@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_132559_620853_8B66C622 
X-CRM114-Status: GOOD (  10.05  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: devicetree@vger.kernel.org, tmaimon77@gmail.com, yuenn@google.com,
 avifishman70@gmail.com, venture@google.com, openbmc@lists.ozlabs.org,
 brendanhiggins@google.com, ofery@google.com, linux-kernel@vger.kernel.org,
 kfting@nuvoton.com, robh+dt@kernel.org, linux-i2c@vger.kernel.org,
 kbuild test robot <lkp@intel.com>, andriy.shevchenko@linux.intel.com,
 linux-arm-kernel@lists.infradead.org, benjaminfair@google.com
Content-Type: multipart/mixed; boundary="===============8677734481432728168=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8677734481432728168==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="DBIVS5p969aUjpLe"
Content-Disposition: inline


--DBIVS5p969aUjpLe
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, May 27, 2020 at 11:08:17PM +0300, Tali Perry wrote:
> This patch set adds i2c controller support=20
> for the Nuvoton NPCM Baseboard Management Controller (BMC).
>=20
> NPCM7xx includes 16 I2C controllers. This driver operates the controller.
> This module also includes a slave mode.
>=20
> ---
> v14 -> v13:
> 	- Fix yaml example: add missing include.
> 	- Replace all udelay to usleep_range, except one which is called from
> 	  irq.
> 	- Fix compilation error (module_platfrom_init conflict).
> 	- debugfs counters always updated. Counting till max value,
> 	  then stop counting.
> 	- Rename bus-frequency to clock-frequency.
> 	- Remove unused variables.

I don't have time for a deeper review, but from what I can tell this
driver is good to go and we can fix things incrementally from now on.

Applied to for-next (will go into 5.8), thanks!


--DBIVS5p969aUjpLe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl7YB1EACgkQFA3kzBSg
KbZmVw//dD5ttj+RhzDcyUcRJ9NMb6dXctKo/EQYXzZfQlKOJqL36iVqKjy8rmFM
S2F42QY95jaNRdUHEGaFzDazxEUhy7J+07z0XPHk1CrGUDBVVtRf28dsEAXS7UTm
o8pq67KgL+rr4PcKVd92OnBF0Sdi5d6HlVYah9W7dlnR/crg95cd9JUdwn1THmFw
/PEmw4XRnYk/+GC4D+hai+W/E86RPpMzCU9YbOCfgnTWC+L7b9W4hS3j9+xtv62V
HD2GagLUGpBiKENxUSS0NJ7agC31Eea7gi9Gn5P8OfxYr4VtPSagnchKwCoohFbU
EySi0qXRd5+hWMOjg2DcGqC8mo/FC2ZDSKlLYWiicTgyZjP4vkRpMHqqtwS9u+23
EFQv0Gy+QjePWEJdjYHP+TxuKw0+2OqMfSr/mkB49sgcKe1Fd7EFlCJbnDmIoZc1
loO0x9MGK9bl/hlVWUpTorkAJGJygdstxTVk9jFJAEFvUXz6ZNk7HKdb0yOqvZcu
hRqp1nOCL3fSUjtNPfE3ovaEQBiJO/FcGPf4bSgKycnfeFEbnJy+lYhCvsTV6x6A
fUy85pKXZad4b51OFi9Hgo+a59ocTopYQRPvAiTcD+e9x2WagmMJCdNjTFsKCUy0
kprWATccn3TZJ3pSZpqlPX9FvP8u3mZOywM4WXtpX8xvT6qXqys=
=fEJK
-----END PGP SIGNATURE-----

--DBIVS5p969aUjpLe--


--===============8677734481432728168==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8677734481432728168==--

