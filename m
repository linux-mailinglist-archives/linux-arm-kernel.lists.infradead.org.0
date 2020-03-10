Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 464E117F465
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 11:08:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+amv5lj3B32Hcu5bTK6O+dPI1AKTltytYNaxzjbEaS8=; b=uEje/t7JqLYkdXfv/CwCT71kn
	YLaJ6fPMTPP4P5vd4O07dcNvnUVqMZqPbqeOSW66KjDQ5uTYajlQRiCaCEYCmO+DHJlPhvK77/Jn6
	Xfgw+AqUWODRQSsdlwVaaxJwYA6lxSYy2oAN5sAuJORaTTjvM9LBS7YsVjNs0ZY9k1wUCW6t8yyki
	EZMancLsDQhrWyG2YPnGBgNJikbQ/N7IU1S28cGpwc1dJHqE1YFm643y4vzgZ6iT0O/up8KvmDU5I
	wvHyzpNhihLN8ZvY6x5UvvD5+JXh7brGDUxqpGW08rzHYtL2xxZ9d0ftJ5oTDD7G/+fY3vIcw9Hvr
	51bE46kaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBbnt-0007JE-JE; Tue, 10 Mar 2020 10:08:01 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBbnC-0006sP-Lx; Tue, 10 Mar 2020 10:07:20 +0000
Received: from localhost (p54B33196.dip0.t-ipconnect.de [84.179.49.150])
 by pokefinder.org (Postfix) with ESMTPSA id ECB392C1EB6;
 Tue, 10 Mar 2020 11:07:17 +0100 (CET)
Date: Tue, 10 Mar 2020 11:07:17 +0100
From: Wolfram Sang <wsa@the-dreams.de>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH 02/89] dt-bindings: i2c: brcmstb: Add BCM2711
 BSC/AUTO-I2C binding
Message-ID: <20200310100717.GL1987@ninjato>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
 <9e427ff22fa40b7146b44aee6468559499deb1f1.1582533919.git-series.maxime@cerno.tech>
MIME-Version: 1.0
In-Reply-To: <9e427ff22fa40b7146b44aee6468559499deb1f1.1582533919.git-series.maxime@cerno.tech>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_030718_896053_8A07AC4D 
X-CRM114-Status: GOOD (  12.65  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Kamal Dasu <kdasu.kdev@gmail.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-i2c@vger.kernel.org,
 Eric Anholt <eric@anholt.net>, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6577834504625750741=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6577834504625750741==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Mit9XoPEfICDqq/V"
Content-Disposition: inline


--Mit9XoPEfICDqq/V
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 24, 2020 at 10:06:04AM +0100, Maxime Ripard wrote:
> The HDMI blocks in the BCM2771 have an i2c controller to retrieve the
> EDID. This block is split into two parts, the BSC and the AUTO_I2C,
> lying in two separate register areas.
>=20
> The AUTO_I2C block has a mailbox-like interface and will take away the
> BSC control from the CPU if enabled. However, the BSC is the actually
> the same controller than the one supported by the brcmstb driver, and
> the AUTO_I2C doesn't really bring any immediate benefit.
>=20
> We can model it in the DT as a single device with two register range,
> which will allow us to use or or the other in the driver without
> changing anything in the DT.
>=20
> Cc: Kamal Dasu <kdasu.kdev@gmail.com>
> Cc: Florian Fainelli <f.fainelli@gmail.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Wolfram Sang <wsa@the-dreams.de>
> Cc: bcm-kernel-feedback-list@broadcom.com
> Cc: linux-i2c@vger.kernel.org
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>

Applied to for-next, thanks!


--Mit9XoPEfICDqq/V
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl5nZtUACgkQFA3kzBSg
KbaKNw/8CYeVSOJ+gtDDCflvUs0zsoYsuDzRuEZd7seZDfEDAjPRZea/tz9M16OB
rK81LXAyz3ngWvzob+kcqlJ8NIpW37yu5r/R5mkxemffvAy2Df4Dlx90Cuvnug1/
/D3QDqE7sgAbxdWEWI0/lF66XV2V0RRTIcNqN4e0Rp7Q48CZMA3itmrqLtv3B1M/
6EkTH6G77n4KAyCbN6PuCJJwNUgwsm2jUac2WRpCcaXuavYdMakDWyR0EdWcV08u
ukqFn8lFyh7BHdbFGfuBDKrqU9aca3HjImu1tNTGJZQsZMpohEM5N3Qc53ajWnFX
YWE3UigXavv68FTOElY+Eso4C5uZNJvtGH1bWsGG6DjX2x39vAlGVzAvKfRDQ1Fn
EJeEJ8yDdORfkQQRdu/79DXQ5UAdZkuxDz/2PBgXtE9o14NCZgr8ENDqR2MIWzfa
jpWaeOG272go1xg1z+/gUZRpxEFuVO4aZHyYEnbMB50VxMz+8RxsvldIOG/qfAAj
qLFryHVYg1dRVk2Fv0+Nw1RQ2tIdu/UdQbuatEgJ75PI7ucsL09jLXJvGndJ2ABS
EEzahmZ7hjGLbgarfYUHI9MMZMlofMliRzd8afzMg9PakdGzaayhHqhNcm8ID/GV
vTyMwl4s+XAYs8gLuOZub0lN6ZUBYAo1jLYHH/IKz/nDoBRHeU4=
=M9RT
-----END PGP SIGNATURE-----

--Mit9XoPEfICDqq/V--


--===============6577834504625750741==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6577834504625750741==--

