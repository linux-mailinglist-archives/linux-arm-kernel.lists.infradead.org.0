Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D66246D5A8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 22:17:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=aylnt2vK71D3TyROQ/MYOGqplpPGpraKAQETR+L8HH4=; b=RKt
	H6y1ryGBszNrPiCSSWCRWiwv/Wrtf6PkM1t5WtI+uZNx3b623reMIaa8eQrhqGKZ4ogYtz+DEBGKI
	py8xn32HmgmlN8bjCDmpP0AXBCFBectX1O8eJDi1bEI3DdMIQUCSFrQwUT05t4crNDGRqTridwOPS
	G6HJGNQ+MhFqYgtSwOidYKczbjkK1i8r2nYJZ+JnB+Gc/OLDLcS3UmYZOjbTW3gE2CGR+z/w0T1uP
	C13aEP/e1Pa6AQAAk+U4H8vMJLcx6fEEpe3k3gCU6WeLrzaZig2vNOKZWishG+5AZ7tS0sInnXbeK
	QZ54yomDBq9CH2FmsZ2NlxVt+AqjINQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoCqR-0006KR-Jy; Thu, 18 Jul 2019 20:17:41 +0000
Received: from atrey.karlin.mff.cuni.cz ([195.113.26.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoCq6-0006JZ-Gi
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 20:17:21 +0000
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id 2B2CC802B6; Thu, 18 Jul 2019 22:17:03 +0200 (CEST)
Date: Thu, 18 Jul 2019 22:17:13 +0200
From: Pavel Machek <pavel@denx.de>
To: kernel list <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-omap@vger.kernel.org, tony@atomide.com, sre@kernel.org,
 nekit1000@gmail.com, mpartap@gmx.net, merlijn@wizzup.org,
 johan@kernel.org, gregkh@linuxfoundation.org, linux-usb@vger.kernel.org
Subject: USB Modem support for Droid 4
Message-ID: <20190718201713.GA25103@amd>
MIME-Version: 1.0
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_131718_842263_AFB73567 
X-CRM114-Status: GOOD (  10.42  )
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.113.26.193 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Content-Type: multipart/mixed; boundary="===============4403456333365243343=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4403456333365243343==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="azLHFNyN32YCQGCU"
Content-Disposition: inline


--azLHFNyN32YCQGCU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

=46rom: Tony Lindgren <tony@atomide.com>

Droid starts to have useful support in linux-next. Modem is tricky to
play with, but this is enough to get basic support.

Signed-off-by: Pavel Machek <pavel@ucw.cz>

diff --git a/drivers/usb/serial/qcserial.c b/drivers/usb/serial/qcserial.c
index 613f91a..3ca9439 100644
--- a/drivers/usb/serial/qcserial.c
+++ b/drivers/usb/serial/qcserial.c
@@ -181,6 +181,9 @@ static const struct usb_device_id id_table[] =3D {
 	/* Huawei devices */
 	{DEVICE_HWI(0x03f0, 0x581d)},	/* HP lt4112 LTE/HSPA+ Gobi 4G Modem (Huawe=
i me906e) */
=20
+	/* Motorola devices */
+	{DEVICE_HWI(0x22b8, 0x2a70)},	/* Droid 4 mdm6600 */
+
 	{ }				/* Terminating entry */
 };
 MODULE_DEVICE_TABLE(usb, id_table);

--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--azLHFNyN32YCQGCU
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl0w08kACgkQMOfwapXb+vJpwQCfTiUS2K4a1CVoJwFu6/B1FtTc
z+kAnRGFucsG+uLBUmYmxdZiQpeyBTXZ
=SQkN
-----END PGP SIGNATURE-----

--azLHFNyN32YCQGCU--


--===============4403456333365243343==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4403456333365243343==--

