Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44F761C5AC2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 17:13:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OLA85caNk63TXHuSmWqqIWvCF4EbL4WuRgetwD5WMj0=; b=Ni619IfuegE43KHhe8EGSNyFN
	OghTI8r9sJPsKpMKR36vlGCuQlUSItvQ8GCSusHJVdGbfSZE8qCt4arrHRc7ofzctOR/uzGalyXDE
	1JR8oJquWSDgTuHkZBxgWY6QCAYYuRLYE7RDbau6MG8hpMuharr8nZlfIJ9lkYvlg5LwId+RlUzN9
	vMJGt3cGy5ymB5SuETiZXlTFpKGU9GBK2bEs0NhC9AB8jS3Uh5ndPhBxI/IE1rTBvZuusDLuSRso4
	SQkZz8ED0w9Q+K4DfxxhxhD/78GANwzzP6dn4b0WfpKSTTIEwPaD1ZUdugGKRRIGXCmV/DSGketwr
	S+N7FgwqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVzFs-0004we-BX; Tue, 05 May 2020 15:13:08 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVzFh-0004wM-9h
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 15:12:58 +0000
Received: from localhost (p54B335A1.dip0.t-ipconnect.de [84.179.53.161])
 by pokefinder.org (Postfix) with ESMTPSA id 7F2872C0892;
 Tue,  5 May 2020 17:12:56 +0200 (CEST)
Date: Tue, 5 May 2020 17:12:56 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
Subject: Re: [RFC PATCH] i2c: at91: Fix pinmux after devm_gpiod_get() for bus
 recovery
Message-ID: <20200505151256.GF2468@ninjato>
References: <20200415070643.23663-1-codrin.ciubotariu@microchip.com>
MIME-Version: 1.0
In-Reply-To: <20200415070643.23663-1-codrin.ciubotariu@microchip.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_081257_486135_4ACBFD0B 
X-CRM114-Status: UNSURE (   8.72  )
X-CRM114-Notice: Please train this message.
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
Cc: alan@softiron.com, kamel.bouhara@bootlin.com, alexandre.belloni@bootlin.com,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, ludovic.desroches@microchip.com,
 linux-i2c@vger.kernel.org, linux@armlinux.org.uk,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0569657075585125825=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0569657075585125825==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="twz1s1Hj1O0rHoT0"
Content-Disposition: inline


--twz1s1Hj1O0rHoT0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 15, 2020 at 10:06:43AM +0300, Codrin Ciubotariu wrote:
> devm_gpiod_get() usually calls gpio_request_enable() for non-strict pinmux
> drivers. These puts the pins in GPIO mode, whithout notifying the pinctrl
> driver. At this point, the I2C bus no longer owns the pins. To mux the
> pins back to the I2C bus, we use the pinctrl driver to change the state
> of the pins to GPIO, before using devm_gpiod_get(). After the pins are
> received as GPIOs, we switch theer pinctrl state back to the default
> one,
>=20
> Fixes: d3d3fdcc4c90 ("i2c: at91: implement i2c bus recovery")
> Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>

Applied to for-current, thanks!

This will do for 5.7. For 5.8 or 5.9, I can imagine to take the two
pinctrl_state pointers into bus_recovery_info and handle all this in the
core. I will try this later this week if noone is super-eager to try it
out before.


--twz1s1Hj1O0rHoT0
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl6xgnQACgkQFA3kzBSg
KbbY+xAArfL/iEHhieAsZoajJ8HCWqBjKMu523a4uPpmSCk4jP9UIqOQqtUac4tK
wUCJg3LXJvbT8pfvfxAcSTHYjgVIvh0br6N44vO5zWz6uTlyEH0LXrg8NP9qrECb
B5HHfsFxVWhTMuFTgcqRHel1qHzhd3rWCebhfdiFrBcHpM6xmeB9VlYyXoq4/qx5
p3/5LwgKJW4xo4AT2J3PCfX5h/zVdIzeWW9qPX+xyUtCJ0MpCxsVxStpUXwudIH2
rJahIU7t0NL0MtKLa4Waf8PjQULKShZc1vrQ/QQhi50kLicGkPwQSJnkFe+lLnjS
aMGEKiJajucG8tz1nqsg8A2CsXpUC70f7bwQP7kGlUVPqEPp13soeor9qoKIClfX
LleANdq18XOlIIRKGtcLKvg/abHXk1/OQ9efNx8Aa4G30im3rozCwbR+Fpn+mLZC
oANKeX7VJ+DmuYqiWaD23Iz/j3M2skgBmUeuzAMYvA+OX6lERmWWnBqEMAqb0si2
nngZTQcBg1s8HEbeDMkH7N9zu47bEdXAARoFE9ys16uZK3A7RRNnv46NSjZAph1b
uepFxAB8QGm9a+sLjLY4Ym/G6vBAv9CRh5FCLDxZ1ODzYZfEiPtt3umtz7DFfGKp
/9wolNpCGqYXQHYwgmakJq5f9MEASvhl4GNag81Qi1AHgRJeDqs=
=kQ/H
-----END PGP SIGNATURE-----

--twz1s1Hj1O0rHoT0--


--===============0569657075585125825==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0569657075585125825==--

