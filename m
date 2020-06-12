Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 470611F739F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 07:51:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mXSiPL5Rsfjv9TGgHokOhHsRaeC0HdeArZ9wMpg1vL4=; b=ihOvkjbRdAq9h+6tzoFMM2Q4D
	1Y0JQRqvv7snGaM6kJe3av1SSBCmP1uozNgjlaHw1N3bN/ccHcxeP+z4c/bGVfjpWobtAZqnhHE95
	7TOARTpkUeeO0hWYLoOfuqGpfo+qJcQ9nvKf90mBxoZKWav/VpHiNO7pX/XTbFzaCYrudgJNQVXUy
	D2yjGUVuk7T7PEY8TQEr8KYHaymh2a8cwTCXhkNRmxmC2tHJmySbbsGRoNbUgPaFAH2FI52DsdOrK
	YIJX99XdKqYBAZf65hFPUje5XkuityKq2qH0gRZEl4H3hLHT+y7ZvKid68xunQwwnjvY0loo1x5Df
	r881Jam0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjcbB-0001MG-N2; Fri, 12 Jun 2020 05:51:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjcb3-0001LP-Sc
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 05:51:23 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1jjcax-0001At-1g; Fri, 12 Jun 2020 07:51:15 +0200
Received: from ore by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ore@pengutronix.de>)
 id 1jjcaw-0004hA-6g; Fri, 12 Jun 2020 07:51:14 +0200
Date: Fri, 12 Jun 2020 07:51:14 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH] i2c: imx: Fix external abort on early interrupt
Message-ID: <20200612055114.alhm2uakoze6epvf@pengutronix.de>
References: <1591796802-23504-1-git-send-email-krzk@kernel.org>
MIME-Version: 1.0
In-Reply-To: <1591796802-23504-1-git-send-email-krzk@kernel.org>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 07:44:14 up 209 days, 21:02, 203 users,  load average: 0.00, 0.03,
 0.00
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_225121_919794_F3A52F45 
X-CRM114-Status: GOOD (  21.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Fugang Duan <B38611@freescale.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Gao Pan <b54642@freescale.com>, Oleksij Rempel <linux@rempel-privat.de>,
 Wolfram Sang <wsa@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, stable@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-i2c@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============0793559600400836421=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0793559600400836421==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="675fbwrfjanyjbzb"
Content-Disposition: inline


--675fbwrfjanyjbzb
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Krzysztof,

thank you for your patch.

On Wed, Jun 10, 2020 at 03:46:42PM +0200, Krzysztof Kozlowski wrote:
> If interrupt comes early (could be triggered with CONFIG_DEBUG_SHIRQ),
> the i2c_imx_isr() will access registers before the I2C hardware is
> initialized.  This leads to external abort on non-linefetch on Toradex
> Colibri VF50 module (with Vybrid VF5xx):
>=20
>     Unhandled fault: external abort on non-linefetch (0x1008) at 0x8882d0=
03
>     Internal error: : 1008 [#1] ARM
>     Modules linked in:
>     CPU: 0 PID: 1 Comm: swapper Not tainted 5.7.0 #607
>     Hardware name: Freescale Vybrid VF5xx/VF6xx (Device Tree)
>       (i2c_imx_isr) from [<8017009c>] (free_irq+0x25c/0x3b0)
>       (free_irq) from [<805844ec>] (release_nodes+0x178/0x284)
>       (release_nodes) from [<80580030>] (really_probe+0x10c/0x348)
>       (really_probe) from [<80580380>] (driver_probe_device+0x60/0x170)
>       (driver_probe_device) from [<80580630>] (device_driver_attach+0x58/=
0x60)
>       (device_driver_attach) from [<805806bc>] (__driver_attach+0x84/0xc0)
>       (__driver_attach) from [<8057e228>] (bus_for_each_dev+0x68/0xb4)
>       (bus_for_each_dev) from [<8057f3ec>] (bus_add_driver+0x144/0x1ec)
>       (bus_add_driver) from [<80581320>] (driver_register+0x78/0x110)
>       (driver_register) from [<8010213c>] (do_one_initcall+0xa8/0x2f4)
>       (do_one_initcall) from [<80c0100c>] (kernel_init_freeable+0x178/0x1=
dc)
>       (kernel_init_freeable) from [<80807048>] (kernel_init+0x8/0x110)
>       (kernel_init) from [<80100114>] (ret_from_fork+0x14/0x20)
>=20
> Additionally, the i2c_imx_isr() could wake up the wait queue
> (imx_i2c_struct->queue) before its initialization happens.
>=20
> Fixes: 1c4b6c3bcf30 ("i2c: imx: implement bus recovery")
> Cc: <stable@vger.kernel.org>
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>


I assume register access is aborted, because the IP core clock is not
enabled. In this case we have bigger problem then just probe.

Since this driver support runtime power management, the clock will be
disabled as soon as transfer is done. It means, on shared interrupt, we
will get in trouble even if there is no active transfer.

So, probably the only way to fix it, is to check in i2c_imx_isr() if the
HW is expected to be active and register access should be save.

Regards,
Oleksij


> ---
>  drivers/i2c/busses/i2c-imx.c | 20 ++++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)
>=20
> diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
> index 0ab5381aa012..e28a39f4840f 100644
> --- a/drivers/i2c/busses/i2c-imx.c
> +++ b/drivers/i2c/busses/i2c-imx.c
> @@ -1171,14 +1171,6 @@ static int i2c_imx_probe(struct platform_device *p=
dev)
>  		return ret;
>  	}
> =20
> -	/* Request IRQ */
> -	ret =3D devm_request_irq(&pdev->dev, irq, i2c_imx_isr, IRQF_SHARED,
> -				pdev->name, i2c_imx);
> -	if (ret) {
> -		dev_err(&pdev->dev, "can't claim irq %d\n", irq);
> -		goto clk_disable;
> -	}
> -
>  	/* Init queue */
>  	init_waitqueue_head(&i2c_imx->queue);
> =20
> @@ -1223,6 +1215,14 @@ static int i2c_imx_probe(struct platform_device *p=
dev)
>  	if (ret < 0)
>  		goto clk_notifier_unregister;
> =20
> +	/* Request IRQ */
> +	ret =3D devm_request_irq(&pdev->dev, irq, i2c_imx_isr, IRQF_SHARED,
> +				pdev->name, i2c_imx);
> +	if (ret) {
> +		dev_err(&pdev->dev, "can't claim irq %d\n", irq);
> +		goto i2c_del_adapter;
> +	}
> +
>  	pm_runtime_mark_last_busy(&pdev->dev);
>  	pm_runtime_put_autosuspend(&pdev->dev);
> =20
> @@ -1237,6 +1237,8 @@ static int i2c_imx_probe(struct platform_device *pd=
ev)
> =20
>  	return 0;   /* Return OK */
> =20
> +i2c_del_adapter:
> +	i2c_del_adapter(&i2c_imx->adapter);
>  clk_notifier_unregister:
>  	clk_notifier_unregister(i2c_imx->clk, &i2c_imx->clk_change_nb);
>  rpm_disable:
> @@ -1244,8 +1246,6 @@ static int i2c_imx_probe(struct platform_device *pd=
ev)
>  	pm_runtime_disable(&pdev->dev);
>  	pm_runtime_set_suspended(&pdev->dev);
>  	pm_runtime_dont_use_autosuspend(&pdev->dev);
> -
> -clk_disable:
>  	clk_disable_unprepare(i2c_imx->clk);
>  	return ret;
>  }
> --=20
> 2.7.4
>=20
>=20

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--675fbwrfjanyjbzb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEERBNZvwSgvmcMY/T74omh9DUaUbMFAl7jF8sACgkQ4omh9DUa
UbPIFhAAkkATHRnFjVhIiX/k9+AbZ+92VMcAfHzpiv0RrjcQVHWRjtBCEP0U4AAY
O/LJhpYqxJ270L+pOsQM8P0bTtgOMpNlDhlleLu5Lxnwoe+N0EsPi3n/SxQV8w4h
QY/15HXdgUE0dVe2Z7dzYwwtRo5E4NaYKf+nY6GL0jCBqXIfREkEz211ND1EeDE9
YrpAHXDZ4IkjA4pqseL4ztxOiQPIAQcEqH6B6RM4JlKGz08WEcV2huetITQDmOgD
ETdvVY95WIkTPPxnKTORtbXuweZh6LRvTpwP4uQno4k64cd68rOt/3acxjkMyvMX
MNDj/ba6MuPqg9nu/cDgYoruc+2MFuGB4bOKJ7Bg+1AZek9ufJw5sx/sRksRegRn
VYNEaEJ35lIh9malYDso75E4TmZesFq4oTsBpRHa9rJmOJVjPA+ed+fbPx7b6UCj
ypfnEZeVpggb1+55wQWT5FiFbXL8G8tlhpxXhNnjvfrlPyEIekVPdkrcYV3qZpxY
Mpd2LB36ZlCHVHt2icFAQs92OKRpL3orHA7XvOtZFMbWtxwQ9LjAQs0tYP5pMPP2
WcnLFn3iPFD1f3644lMrd+u/R2qLlHxBMTrMCXj4iBoJ5lzr9iVrER4Dr5JwHtXN
dwhEM8cbASGPG8Yvk0I2nx91p/cfAyJTWVRvOaozUE5xgdWCObk=
=KCIC
-----END PGP SIGNATURE-----

--675fbwrfjanyjbzb--


--===============0793559600400836421==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0793559600400836421==--

