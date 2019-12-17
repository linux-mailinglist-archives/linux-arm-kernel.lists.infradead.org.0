Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89382122BB8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 13:35:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bgUbSg+m3CkbT77ONKlliqNTJXztjb8J/8J3ndq05tI=; b=kg+Bwuvm6bpndyzlhKd6x7ZuL
	a4eVBmX2VotunNKojVRXiGEByLal94iftpKF1rH7psELs0QbzwS45BaAaM99FE21xRPzNTDTk//wq
	Z2ZQ2l/NxZtTQCFn0AFlhvcffY1RW6ifcR+aj3fPYcszzMAgYjowYKjaSgpCDsam/XOV1zznjMf8o
	R4iX+P/O08FkFdTpK5P8FsCGxb+oJRdIE9bFbfQVckhHx7rrFhobjZRH3GhYWccoZvPrfFSSsy7bK
	0mqHX1oJfrMowCph2KEHpYGDjIvY8LEdfV8OZog2hH/4iCBtA7iCOgHRy367Ep1EOQwcESELI97pr
	vrYDKr9uQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihC4J-0007ip-VH; Tue, 17 Dec 2019 12:35:15 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihC3z-0007i0-3v; Tue, 17 Dec 2019 12:34:56 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 22098AD14;
 Tue, 17 Dec 2019 12:34:53 +0000 (UTC)
Message-ID: <d356ad7ac8387f56c03fd24d04f471d26ff9ae7c.camel@suse.de>
Subject: Re: [PATCH v2] mmc: bcm2835: Use dma_request_chan() instead
 dma_request_slave_channel()
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>, ulf.hansson@linaro.org, 
 f.fainelli@gmail.com, rjui@broadcom.com, sbranden@broadcom.com
Date: Tue, 17 Dec 2019 13:34:51 +0100
In-Reply-To: <20191217122254.7103-1-peter.ujfalusi@ti.com>
References: <20191217122254.7103-1-peter.ujfalusi@ti.com>
User-Agent: Evolution 3.34.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_043455_306377_A54930A2 
X-CRM114-Status: GOOD (  17.44  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org, vkoul@kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0953970573879952487=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0953970573879952487==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-tBZ5rr+Ad+DYa6kDGNIu"


--=-tBZ5rr+Ad+DYa6kDGNIu
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2019-12-17 at 14:22 +0200, Peter Ujfalusi wrote:
> dma_request_slave_channel() is a wrapper on top of dma_request_chan()
> eating up the error code.
>=20
> By using dma_request_chan() directly the driver can support deferred
> probing against DMA.
>=20
> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
> ---

Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

> Hi,
>=20
> Changes since v1:
> - instead of returning jump to err: to free up resources
>=20
> Regards,
> Peter
>=20
>  drivers/mmc/host/bcm2835.c | 12 +++++++++++-
>  1 file changed, 11 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/mmc/host/bcm2835.c b/drivers/mmc/host/bcm2835.c
> index 99f61fd2a658..c3d949847cbd 100644
> --- a/drivers/mmc/host/bcm2835.c
> +++ b/drivers/mmc/host/bcm2835.c
> @@ -1393,7 +1393,17 @@ static int bcm2835_probe(struct platform_device *p=
dev)
>  	host->dma_chan =3D NULL;
>  	host->dma_desc =3D NULL;
> =20
> -	host->dma_chan_rxtx =3D dma_request_slave_channel(dev, "rx-tx");
> +	host->dma_chan_rxtx =3D dma_request_chan(dev, "rx-tx");
> +	if (IS_ERR(host->dma_chan_rxtx)) {
> +		ret =3D PTR_ERR(host->dma_chan_rxtx);
> +		host->dma_chan_rxtx =3D NULL;
> +
> +		if (ret =3D=3D -EPROBE_DEFER)
> +			goto err;
> +
> +		/* Ignore errors to fall back to PIO mode */
> +	}
> +
> =20
>  	clk =3D devm_clk_get(dev, NULL);
>  	if (IS_ERR(clk)) {


--=-tBZ5rr+Ad+DYa6kDGNIu
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl34y2sACgkQlfZmHno8
x/4RNQf9G4eHpfn79sBZ7cjLKSUuneBG1qqhlSE5MZC2jnxYng41/8xysCdq/WTG
P/LOanHY0hxM3Ye6OV35L1i6Ot+0VqE2DZmDoSHdkDcogx03/u+D3e2epyLuk7fG
HrbaNZ7bV/MP+3LFXXsAmHd/DPdgZ663iTFEwlzOtPapd/LGAT5KuVs5V+ib/XLA
ln6xfJVQXYB7oO9m8ot7vE7yXS5gksEZvVskDWZCpXZSzMLC2DuU+CHQnHUXXonQ
yAC4OhZ0DMhD2I8es+5lv4VwM9OwFxVPbZjgc3CQj0RpWni8L4J16t8fDNX6b2pG
jpncC5yVkZWUhYPZNJkabnx9A7YNwQ==
=WeHO
-----END PGP SIGNATURE-----

--=-tBZ5rr+Ad+DYa6kDGNIu--



--===============0953970573879952487==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0953970573879952487==--


