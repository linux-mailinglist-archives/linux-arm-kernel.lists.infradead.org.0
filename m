Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BFF77D12D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 00:32:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=meK+88pBYFgH/g1enb4ob2SaanZpKgDa3SQrvu64Ss8=; b=nCg
	tMwaEjiYm8aFyFHyasXusbWtm2eQHd+THFkMP/iDWAoUegIaNat3xsLRgqZOlslZIbpx8fCerTp92
	BBP2o/mO2K+8RHtw12HoI+gHEMivGbIqz2nIUXv4XnXHnUN+3ex3chIjxj/2cc4MrV12dRInAb+/P
	Rs+HfsqdCpBBiNT38yWQgddw2Tf1jrIRjeCbwb3uPW+Wx0oxhZURjdcXK8HhLPd7E4ofmKutmTfVU
	RL1PgXjUcbd118MOoXu7il9dDWwvBwxH6fouM6DyNZQIhc7vEEX/g/XcKzA/5hkvkAsK2oD1aZdEK
	ha14q3D7wmc9wN3ZvAorHFlnglQJxZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsx9J-00089X-6w; Wed, 31 Jul 2019 22:32:45 +0000
Received: from antares.kleine-koenig.org ([2a01:4f8:c0c:3a97::2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsx9C-00089C-1p
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 22:32:39 +0000
Received: by antares.kleine-koenig.org (Postfix, from userid 1000)
 id B8BAE747AE3; Thu,  1 Aug 2019 00:32:36 +0200 (CEST)
Date: Thu, 1 Aug 2019 00:32:33 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <uwe@kleine-koenig.org>
To: Jason Cooper <jason@lakedaemon.net>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Subject: [PATCH v2] ARM: kirkwood: ts219: disable the SoC's RTC
Message-ID: <20190731223233.GA15900@taurus.defre.kleine-koenig.org>
MIME-Version: 1.0
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_153238_249010_FAA3CDD6 
X-CRM114-Status: GOOD (  10.78  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, tbm@cyrius.com,
 linux-arm-kernel@lists.infradead.org, Oliver Hartkopp <socketcan@hartkopp.net>
Content-Type: multipart/mixed; boundary="===============5982150985941829452=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5982150985941829452==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fdj2RfSjLxBAspz7"
Content-Disposition: inline


--fdj2RfSjLxBAspz7
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

The internal RTC doesn't work, loading the driver only yields

	rtc-mv f1010300.rtc: internal RTC not ticking

=2E So disable it.

Reviewed-by: Andrew Lunn <andrew@lunn.ch>
Signed-off-by: Uwe Kleine-K=F6nig <uwe@kleine-koenig.org>
---
Hello,

This patch is (one) result of a discussion on the rtc list. v1 was sent
there only. This v2 is just a resend to the mvebu maintainers.

Alexandre Belloni said to v1: Seems good to me then.

This sounds a bit like an ack, but I didn't add it as it was not
explicit.

Best regards
Uwe

 arch/arm/boot/dts/kirkwood-ts219.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/kirkwood-ts219.dtsi b/arch/arm/boot/dts/kirk=
wood-ts219.dtsi
index a88eb22070a1..994cabcf4b51 100644
--- a/arch/arm/boot/dts/kirkwood-ts219.dtsi
+++ b/arch/arm/boot/dts/kirkwood-ts219.dtsi
@@ -104,3 +104,11 @@
 &pcie0 {
 	status =3D "okay";
 };
+
+&rtc {
+	/*
+	 * There is a s35390a available on the i2c bus, the internal rtc isn't
+	 * working (probably no crystal assembled).
+	 */
+	status =3D "disabled";
+};
--=20
2.20.1

--fdj2RfSjLxBAspz7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAl1CFv0ACgkQwfwUeK3K
7AnufQf+NlZMWIDdSLvO5Qnvk1o8bXMauuAVMm2DlloviZMtVyjPNGYWiDk31PhU
WCVXzYpHoyaTrvt0ZuLaKzvI6B5u2tmH+Ue8Kx0SD33U8EiZBzGgcAbSMyDIyMsC
T4t5n/Qvw9YeioFoGDl032MIpL147S1tcMD2H/IV1AbwcGl5Oub13iNvgHjIhAe2
7gx6rzsHLCNJDSc72giMf0A4gNDT66jipOGhbYjSOQCySI9K061O4Tpk3nyD2Csy
HaIFQ+0u9/3yFJN5q+7ufdLKdKAyNdYy2IbtHPNKhfs2cLCWbNioHbt3UWXzAy67
iPPHcSfW4oCM/NJSQjQJf6QAhPEOUA==
=6R0o
-----END PGP SIGNATURE-----

--fdj2RfSjLxBAspz7--


--===============5982150985941829452==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5982150985941829452==--

