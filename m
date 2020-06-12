Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D41521F74FD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 10:03:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eC34iFQ4ofA2v6U+stRBh05lKGiJLlRBn/lEIDhCDdU=; b=HRFFvF2A2XZ7RjxI684cY1lPE
	buKQJwF2JuKdYdVN9tkSWma0cuwXS8OLhKUmjT15lQ4nNFD+n1UwGG14LbVHdedUsdmf+P65I6kOF
	oeC3xut72iipsQ6jDMdEkXhgDb/FE6ijTL7Cn0dRc9FHxL6x/22VF+R4BNEXiCPunMfueigyTJ384
	6yEDk1mtzRbMMBZEyEy8e3c+4wXiw3AK3ru8k+nqnsPucvH4IQJeiglWV7/UyvqJUjzDmKGYuVrBe
	eqzZtWUbbgCkHUHvozE9TZBCeMEfDccDIvjUCwkYJJwXvQwldPEwZ83qz+y5U4nIeYd5YkclXbrkd
	8n9eCJZmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjeeT-0004cL-W4; Fri, 12 Jun 2020 08:03:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjeeL-0004bC-H8
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 08:02:55 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1jjee9-0005y1-Pv; Fri, 12 Jun 2020 10:02:41 +0200
Received: from ore by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ore@pengutronix.de>)
 id 1jjee8-0002KU-He; Fri, 12 Jun 2020 10:02:40 +0200
Date: Fri, 12 Jun 2020 10:02:40 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH] i2c: imx: Fix external abort on early interrupt
Message-ID: <20200612080240.73xkiu2esgg6nbp3@pengutronix.de>
References: <1591796802-23504-1-git-send-email-krzk@kernel.org>
 <20200612055114.alhm2uakoze6epvf@pengutronix.de>
 <20200612073815.GA25803@pi3>
MIME-Version: 1.0
In-Reply-To: <20200612073815.GA25803@pi3>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:42:33 up 209 days, 23:01, 197 users,  load average: 0.01, 0.03,
 0.05
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_010253_568764_B98A279E 
X-CRM114-Status: GOOD (  21.77  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Fugang Duan <B38611@freescale.com>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Gao Pan <b54642@freescale.com>, Oleksij Rempel <linux@rempel-privat.de>,
 Wolfram Sang <wsa@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, stable@vger.kernel.org,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-i2c@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============6236344566908421829=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6236344566908421829==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="exe7tgb6se3ukbnm"
Content-Disposition: inline


--exe7tgb6se3ukbnm
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 12, 2020 at 09:38:15AM +0200, Krzysztof Kozlowski wrote:
> On Fri, Jun 12, 2020 at 07:51:14AM +0200, Oleksij Rempel wrote:
> > Hi Krzysztof,
> >=20
> > thank you for your patch.
> >=20
> > On Wed, Jun 10, 2020 at 03:46:42PM +0200, Krzysztof Kozlowski wrote:
> > > If interrupt comes early (could be triggered with CONFIG_DEBUG_SHIRQ),
> > > the i2c_imx_isr() will access registers before the I2C hardware is
> > > initialized.  This leads to external abort on non-linefetch on Toradex
> > > Colibri VF50 module (with Vybrid VF5xx):
> > >=20
> > >     Unhandled fault: external abort on non-linefetch (0x1008) at 0x88=
82d003
> > >     Internal error: : 1008 [#1] ARM
> > >     Modules linked in:
> > >     CPU: 0 PID: 1 Comm: swapper Not tainted 5.7.0 #607
> > >     Hardware name: Freescale Vybrid VF5xx/VF6xx (Device Tree)
> > >       (i2c_imx_isr) from [<8017009c>] (free_irq+0x25c/0x3b0)
> > >       (free_irq) from [<805844ec>] (release_nodes+0x178/0x284)
> > >       (release_nodes) from [<80580030>] (really_probe+0x10c/0x348)
> > >       (really_probe) from [<80580380>] (driver_probe_device+0x60/0x17=
0)
> > >       (driver_probe_device) from [<80580630>] (device_driver_attach+0=
x58/0x60)
> > >       (device_driver_attach) from [<805806bc>] (__driver_attach+0x84/=
0xc0)
> > >       (__driver_attach) from [<8057e228>] (bus_for_each_dev+0x68/0xb4)
> > >       (bus_for_each_dev) from [<8057f3ec>] (bus_add_driver+0x144/0x1e=
c)
> > >       (bus_add_driver) from [<80581320>] (driver_register+0x78/0x110)
> > >       (driver_register) from [<8010213c>] (do_one_initcall+0xa8/0x2f4)
> > >       (do_one_initcall) from [<80c0100c>] (kernel_init_freeable+0x178=
/0x1dc)
> > >       (kernel_init_freeable) from [<80807048>] (kernel_init+0x8/0x110)
> > >       (kernel_init) from [<80100114>] (ret_from_fork+0x14/0x20)
> > >=20
> > > Additionally, the i2c_imx_isr() could wake up the wait queue
> > > (imx_i2c_struct->queue) before its initialization happens.
> > >=20
> > > Fixes: 1c4b6c3bcf30 ("i2c: imx: implement bus recovery")
> > > Cc: <stable@vger.kernel.org>
> > > Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> >=20
> >=20
> > I assume register access is aborted, because the IP core clock is not
> > enabled. In this case we have bigger problem then just probe.
>=20
> If by IP core clock you mean the clock which driver is getting, then
> answer is no. This clock is enabled.
>=20
> > Since this driver support runtime power management, the clock will be
> > disabled as soon as transfer is done. It means, on shared interrupt, we
> > will get in trouble even if there is no active transfer.
>=20
> The driver's runtime PM plays only with this one clock, so it seems
> you meant i2c_imx->clk. It is not this problem.
>=20
> >=20
> > So, probably the only way to fix it, is to check in i2c_imx_isr() if the
> > HW is expected to be active and register access should be save.
>=20
> Checking in every interrupt whether the interrupt should be serviced
> based on some SW flag because HW might be disabled? That looks unusual,
> like a hack.
>=20
> No, the interrupt should be registered when the driver and some other
> pieces of HW are ready to service it.

OK.
please make sure, irq is probed before calling
i2c_add_numbered_adapter(). This will trigger deferred probing of
slave devices. Since the irq handler will be added later, tx completion
of some requests will be lost or fail.

Regards,
Oleksij
--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--exe7tgb6se3ukbnm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEERBNZvwSgvmcMY/T74omh9DUaUbMFAl7jNpcACgkQ4omh9DUa
UbPcng//UVsGN28mv1+t7JOIEucwlTOIZAiNvZ74YvumoRi+5bOa84YTnZKQE1Bp
vpdeG7H+ciZj6WGLLU/TPNUZCr5ii06UFpWHvRsA/fCDnMtu5nFUrj6CKyrVZpXP
kYv1ZqBn7ExANbhDQr8XMz5dXjF4t04/1jm1+Yv7NwlCGCyyweH2ivByfBskvavc
GXdmwhqt4nI8JA8q4oINjOrDq0HDgK7gixplmsH4Ta3fHXnPnWdCujqGz5IBPsrf
23X+hm3QWrVlPIKCHZ8j+aolgONO2zoDl1V6eKpNwKWbPRgqmP+X2QEeJniuewXa
6ge05cdpzhPYAm06o/G/b5gWe5qKpoJAqhYh/s7/1QA5bDw/bj3eKBMNWzkwoYbr
MoNZUw+J5vP9kr1cBUbOegYOYeDWNCWzEgx8HHVYxmPWj+e2rZnY3d8UNJfu1dyG
3tsT0sWwRY2mT1Di/PWg7H/i1LgXLJFm3n2D28ITx4elwFlVhe2+eBwFLwvo5MPA
wK8xpmBTZeV3vW+B6PFtJzG20h4yYXCPhZiXhdvvi0DFAcYPuyQbYnNzI/UJIuB4
KIP2ZAsb8Pl7NZkb1x3fkgnzDv0KHWyuIjks/cQvIN5+QAF26N4j0v5vMG5XTKf9
efZvqZJ2cLHqLs48H3atMXx7xH4tKOsFGyVQsonAJ/O/QRRywrY=
=5oXh
-----END PGP SIGNATURE-----

--exe7tgb6se3ukbnm--


--===============6236344566908421829==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6236344566908421829==--

