Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9E3718EA3C
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Mar 2020 17:19:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AdcgGlQrCmXxBPBFm3idk7054g0vQv6Uy0AADWK0C1k=; b=VgDVra/kdkd7f3szoUbHtxQQm
	bxnlw+sH+h7cW5UbzBMhThGWdnezjHrhTYgA3SBIVubAEI+pJcqNGbCONh+15A0rQjCYi9n/6LGQx
	ydF9SDiZMiTspZTROR14Q7587GBfqEuI5+e/MmJJLHjCVmMSsJpM1OC4fHF827FfAN7dkceWRyshf
	l5xrlgJe1t4SC6/90Zk2CuAbrZNmjSFsv+nB0kzusKbiBgDfOzMmXC9tcA3Aful9GA94o6/70jz0k
	6j7Ewn6f4T0O9P/uVOkVr7F+dYTtF4R7m5UOWlbTRUnjgDoVa9dI1dixmyB8QsyFwKO/2OmYK8NQ5
	L54TfSNBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jG3K3-0005F7-Qp; Sun, 22 Mar 2020 16:19:35 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jG3Ju-0005EQ-2Y
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Mar 2020 16:19:27 +0000
Received: from localhost (p54B33042.dip0.t-ipconnect.de [84.179.48.66])
 by pokefinder.org (Postfix) with ESMTPSA id E34CC2C0064;
 Sun, 22 Mar 2020 17:19:23 +0100 (CET)
Date: Sun, 22 Mar 2020 17:19:23 +0100
From: Wolfram Sang <wsa@the-dreams.de>
To: Chuhong Yuan <hslester96@gmail.com>,
	Dong Aisheng <aisheng.dong@nxp.com>
Subject: Re: [PATCH v2] i2c: imx-lpi2c: add clk_disable_unprepare calls
Message-ID: <20200322161923.GC6766@ninjato>
References: <20191102062149.3957-1-hslester96@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20191102062149.3957-1-hslester96@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_091926_264999_44989FDB 
X-CRM114-Status: GOOD (  13.80  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-i2c@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============6820624977412909248=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6820624977412909248==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ncSAzJYg3Aa9+CRW"
Content-Disposition: inline


--ncSAzJYg3Aa9+CRW
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Nov 02, 2019 at 02:21:49PM +0800, Chuhong Yuan wrote:
> The driver forgets to call clk_disable_unprepare when probe fails
> and remove.
> Add the two calls to fix the problem.
>=20
> Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
> ---

Dong Aisheng, what do you think of this patch?

> Changes in v2:
>   - Adjust the call order to make it consistent in probe failure and
>     removal.
>=20
>  drivers/i2c/busses/i2c-imx-lpi2c.c | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/drivers/i2c/busses/i2c-imx-lpi2c.c b/drivers/i2c/busses/i2c-=
imx-lpi2c.c
> index c92b56485fa6..f964693c0901 100644
> --- a/drivers/i2c/busses/i2c-imx-lpi2c.c
> +++ b/drivers/i2c/busses/i2c-imx-lpi2c.c
> @@ -618,6 +618,7 @@ static int lpi2c_imx_probe(struct platform_device *pd=
ev)
>  	return 0;
> =20
>  rpm_disable:
> +	clk_disable_unprepare(lpi2c_imx->clk);
>  	pm_runtime_put(&pdev->dev);
>  	pm_runtime_disable(&pdev->dev);
>  	pm_runtime_dont_use_autosuspend(&pdev->dev);
> @@ -630,6 +631,7 @@ static int lpi2c_imx_remove(struct platform_device *p=
dev)
>  	struct lpi2c_imx_struct *lpi2c_imx =3D platform_get_drvdata(pdev);
> =20
>  	i2c_del_adapter(&lpi2c_imx->adapter);
> +	clk_disable_unprepare(lpi2c_imx->clk);
> =20
>  	pm_runtime_disable(&pdev->dev);
>  	pm_runtime_dont_use_autosuspend(&pdev->dev);
> --=20
> 2.23.0
>=20

--ncSAzJYg3Aa9+CRW
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl53kAsACgkQFA3kzBSg
KbbqfBAAr4xo6h3QMRN0UZqEYIpK0gzk/HZOftIiMf9vqWEa/cLiWftCZohgjDOT
jFS4aO+uyYJKdhT9bEDhoX61nuHXaEQVGBsWOS3Rp+JXvfOIo+vtSeTp64O38mqq
0+E7GBrQDsqyOHA7Iw3lhQftzQe4MJwE8EsgN9HzCTaEgtnfhBuCScdXiVYBV2Ad
TmLxHYEtERUnBRD+FiB6+HdrRi3KrrUsKPEZd/Mwe3ENfHi6CTaH8z4OM+f8aHOi
84cIBxJO7JlSl1JkZ0MQZ6IiL5yEC0RC0Nz871VfrJBRvfdUs+f0mHCk8hATepL+
fNtZNJIApBteuEhiA/WJ7A4X+QNNaWp60JZdpIUzhljevvGzjO5wK7GIlBZXHzxR
ApzQcQVDsj2fe054NHSpa2UfK3Z0ZULPa5L/SBZeV8gErQvoBXYXQOhTiucmGM8H
vnVHegYHx1gHeyIAmEAIJExbjNKDiw0qWPU29AQov1kkpFOlYSgu420x7sFaODY9
wT+typO0J5LgmA/YMepI5RMYOkB/pG4CkiNuYDxfCBuPjXxpyGTvHHtibnYInt+4
HV51Rmk5AMcYc8edLM6jrQNPo55fFyAJCgav36h7kf/IiAaL8hvc03MQZt7Tlkqa
Hds0OeOUO75afYoAjJVg9wC15OXww9V/8fUB39zf9zvdcqA7LKw=
=ebsn
-----END PGP SIGNATURE-----

--ncSAzJYg3Aa9+CRW--


--===============6820624977412909248==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6820624977412909248==--

