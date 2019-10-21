Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F07A6DF6A1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 22:21:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=l+kF0+jJtvdVc4XeY0oIau91uCOcP2j1W6kwu+uc78M=; b=puPKorMaUQTN7WtnRb2oPEBRM
	F4vz2GcmuKbW3+f/OP8z5alb1F4UvyMFrWi+4QNopouGs0M/Te+k4GhuYZQroT5IL2B9m49aTeO46
	oAkGHYli3vWgxDbCCa7Lk7HRydJoOp73rXQDJVY5rkXzFeSAracKpADiSSBSzuZWH1Ku1s0KQcSXe
	wT0EH7FEXlVkVsJcroZfEKXy56CSqoA2YeuSQeIwpcOZ7icPkSdodAVaTU5FBn+2YOX5UhI3c0m+K
	0kXpQJ32YFeYuO0TlCEjSbiQ1BVvmlfJELtTonnlwTvrrrT5dJ2ADLCy6IFyKAOzHWqLMMMj+tHSU
	2ZF4cZCHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMeAo-0000xr-1p; Mon, 21 Oct 2019 20:21:02 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMeAY-0000x0-1x
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 20:20:49 +0000
Received: from localhost (x4dbffd67.dyn.telefonica.de [77.191.253.103])
 by pokefinder.org (Postfix) with ESMTPSA id A85552C0076;
 Mon, 21 Oct 2019 22:20:44 +0200 (CEST)
Date: Mon, 21 Oct 2019 22:20:44 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Kamel Bouhara <kamel.bouhara@bootlin.com>
Subject: Re: [PATCH 2/4] i2c: at91: implement i2c bus recovery
Message-ID: <20191021202044.GB3607@kunai>
References: <20191002144658.7718-1-kamel.bouhara@bootlin.com>
 <20191002144658.7718-3-kamel.bouhara@bootlin.com>
MIME-Version: 1.0
In-Reply-To: <20191002144658.7718-3-kamel.bouhara@bootlin.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_132046_778823_60C3D2A2 
X-CRM114-Status: UNSURE (   9.66  )
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-kernel@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>, linux-i2c@vger.kernel.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7881249811669924041=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7881249811669924041==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="O5XBE6gyVG5Rl6Rj"
Content-Disposition: inline


--O5XBE6gyVG5Rl6Rj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 02, 2019 at 04:46:56PM +0200, Kamel Bouhara wrote:
> Implement i2c bus recovery when slaves devices might hold SDA low.
> In this case re-assign SCL/SDA to gpios and issue 9 dummy clock pulses
> until the slave release SDA.
>=20
> Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>

Setting up the bus_recovery looks OK. However, I don't see any call to
i2c_recover_bus(), so the bus_recovery is never used. Did you test this
and see an effect?

Also, I think we should merge this patch "[PATCH v3] i2c: at91: Send bus
clear command if SCL or SDA is down" into this series. The crucial thing
for both is when to apply the recovery (at the beginning of a
transfer!). The rest is "just" that some HW needs a bus_recovery_info
for pinctrl/GPIO handling (from this patch), while other HW needs a
bus_recovery_info with a custom recover_bus callback.

Opinions?


--O5XBE6gyVG5Rl6Rj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl2uExwACgkQFA3kzBSg
KbYuXQ//eD/q+8apdlyXS/GXAnuUdAWmgKPeAuIOLg3HVjQ9WJ9MRaCMy2l6Luxy
c8qEFZH5jKzOlqfppnV8t6ff2psZ9uyd48gQdkSKuIGYJNi0WJacBFwL9/2RJUW5
4Y2LnEBtZ3Y6GdSlipjUsUbxZ0/HJPsbnof5Fx89Qewirua0oSX6m+T13vHlnQnu
LFL5Y+0sbXxQLjsGLIM9nMqJcvedb9yrK6tOLHhfUD6p5RPWImi9LThJCo+Zx5vt
GbrpYaqqF4sOz2a//K4sqqJky3l/qBlALjGKaFQfgG4f6Fv8GTSkJYchIViV8wM3
v7hurVSrejGx0wQF9tlOKLgYeHlUHaEa1JCT+tCx8/Za6Tznej/dwzRcXNdYuF0M
utpronoEy2pP1KRfmBImI+kbKmmmiwYbscFL/ZihCHdFrrKNw1cBSGZmlL3GPjPb
RC4ltTteew9D6mQkBmF8jqLvtSM3UFkblqq5vtfKL8Ol/GE2f175tULtpySZiNYQ
/yelkPgCalYOAWgGQE3YmR7uO4X37U0kebPz47KUaXQjJib4q7AiX3bLzB8eiyzb
l/UQoR0ZTIFrnBXh5EjAe6MV6ZqlyIIzUTwR18wlN39tcU7dk+htQ7l7K3brGDqG
iF4Erc1yMFWUMJUTQmgFoV8oSvYE1BxMJVURE5b/Wlv6vk4/U8g=
=c7Kn
-----END PGP SIGNATURE-----

--O5XBE6gyVG5Rl6Rj--


--===============7881249811669924041==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7881249811669924041==--

