Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28617139C47
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 23:16:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DmCMtpPVjIzGb9Ijfq62QUvy7X6UcIUsrAte66Qlp6Y=; b=fOB7QrnL2p7wtrFE3isL7nlPd
	o9Cy07Sz2svBa7eYzA/5NxX++W/Ofuolp3HlC4Bj37iC742ZLQsBvgSEfnaOU5/d3gpsbwY+XE1WW
	zd+ZAANAzTzc8V/va3MjfSW/qwxnQGaA2/fTWJlVp9nUUECPw/wXp7bAQEjKTjwcsdha0uK9uSXBo
	Z8CoRiG9KBe7fVJpBo2jIPHoHxx3L9D/QkW+hKsOLbLhtVKO4ltL1mlu6Ai/8W+ViDH9+EpTSEf2x
	zIp+Y1J5AM5USm0Zh6vwUFBYLwV+r/sTLwzSKs87pA3oLt8+rGKU6aalOcGU2RLcKRH+D/i7LHv3B
	KZMc0byuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir7zz-0001ZS-Cf; Mon, 13 Jan 2020 22:15:51 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir7zn-0001W3-MI; Mon, 13 Jan 2020 22:15:41 +0000
Received: from localhost (p54B332D5.dip0.t-ipconnect.de [84.179.50.213])
 by pokefinder.org (Postfix) with ESMTPSA id 2B8B32C06DA;
 Mon, 13 Jan 2020 23:15:33 +0100 (CET)
Date: Mon, 13 Jan 2020 23:15:32 +0100
From: Wolfram Sang <wsa@the-dreams.de>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: Re: [PATCH] i2c: meson: implement the master_xfer_atomic callback
Message-ID: <20200113221532.GC2689@ninjato>
References: <20200107232901.891177-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
In-Reply-To: <20200107232901.891177-1-martin.blumenstingl@googlemail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_141539_880243_91B8F0AD 
X-CRM114-Status: UNSURE (   9.87  )
X-CRM114-Notice: Please train this message.
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
Cc: narmstrong@baylibre.com, khilman@baylibre.com, linux-kernel@vger.kernel.org,
 b.galvani@gmail.com, jian.hu@amlogic.com, linux-i2c@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7845711142637825660=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7845711142637825660==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="+xNpyl7Qekk2NvDX"
Content-Disposition: inline


--+xNpyl7Qekk2NvDX
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 08, 2020 at 12:29:01AM +0100, Martin Blumenstingl wrote:
> Boards with some of the 32-bit SoCs (mostly Meson8 and Meson8m2) use a
> Ricoh RN5T618 PMU which acts as system power controller. The driver for
> the system power controller may need to the I2C bus just before shutting
> down or rebooting the system. At this stage the interrupts may be
> disabled already.
>=20
> Implement the master_xfer_atomic callback so the driver for the RN5T618
> PMU can communicate properly with the PMU when shutting down or
> rebooting the board. The CTRL register has a status bit which can be
> polled to determine when processing has completed. According to the
> public S805 datasheet the value 0 means "idle" and 1 means "running".
>=20
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

Applied to for-next, thanks!


--+xNpyl7Qekk2NvDX
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl4c7AQACgkQFA3kzBSg
KbbuRRAAnOvYecXtAAQlFI9kpCVUGmLW8USmChX+JFEbpguc3uyPI0jnz7hPjLsx
664PGVOPwfaMIfcClLCVM8abtgjyUpbX4AmLrM0mGq5xgYATUCnV85hjcqXIvEKM
ecfAR522mRm3ZVSUEJO5UPzwjDY1QxON7BEgY6iRa9F4wLEAXdV3MYXBLkMKK7YR
IvX92X/SX30jqLIYfihH1T/5Livk08f3M70GQH8Ngcr1HMK5clSyrVxp2mT4L4o+
Y9RoB7hdhEv96O+oaEfXmeGowe5co+d2JGTbCPT9/Fuo0Curv+ScNbKMrf8dMqW2
+/Qz1EQDsIGd4uh1w/DMmFHslQcVYX3lfKLZASk0rcPs1ofoja5uXEzKvTTCrsgI
GImOvyV9hxSFEbpL5ZUY8PHIplRsqpRnMOpeXiK6xmPTQPAE1Tk2eng2uCuvJk1V
0EhFNVHR3pNMw966d+kw+oFOC3hFSR+s4rw7CiOpOI/Cgl6AhLCvrqpqWRF4asfX
DvuqSGCH2Z5Li9xuFJHU5kLR8MLX5Y6yeVOPMFCgqhBr22cV5JInznSODpg56WjH
V7kmPJOm3HIwgk93ZySC7g5eCOX/h14xK7EWRM42cxv8otcmJfJ85YRxSKAfKjYV
ptAxuxClf+v9HsFRGD4ZSMb00igmwTiW9y/E0TiMw4Q01tUtYWY=
=pX3/
-----END PGP SIGNATURE-----

--+xNpyl7Qekk2NvDX--


--===============7845711142637825660==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7845711142637825660==--

