Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EBA8132426
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 11:49:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ktgju8hyOMMrX1d3Tnn0iEQ24jC4fYG8bQLJiOhlx/Y=; b=KiHaZrCsJ6FwQCp1jsCkoyWX3
	M0oKv4wJLGWAGdHjNtnWrv2YDoUJptTQxI1RS4qPEMTW2I0nRxGC05L2eFhYXNflzgi1FBIs4ARZI
	0ZamfeiEb6eXKyPfwsGNzFLxAM265+shLdwFJs9/R+CnMOx0n/xA+zePbAh4mwIJdCpONVTc7ioJg
	b43eYdPjtcpebgGNUiGvvtIQw2y2dEkttrCSOmk7gDSVYLNotswUmAlvERYfb16LXXT+/7wf/z/NS
	pREOfN6l6UA0DiJe8KiQyVqvluz5B0ODaWa4RMHnUOsJzmECYkL2XHZHWMyFpsqpoNZAPJuEuiuae
	xol3YwEFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iomQt-0002a5-B3; Tue, 07 Jan 2020 10:49:55 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iomQn-0002Yt-0U; Tue, 07 Jan 2020 10:49:50 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 77070AC8F;
 Tue,  7 Jan 2020 10:49:45 +0000 (UTC)
Message-ID: <cfd3a908f7e899c8199a0e34bf9ec294f9e027d3.camel@suse.de>
Subject: Re: [PATCH v2] mmc: bcm2835: Use dma_request_chan() instead
 dma_request_slave_channel()
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>, ulf.hansson@linaro.org, 
 f.fainelli@gmail.com, rjui@broadcom.com, sbranden@broadcom.com
Date: Tue, 07 Jan 2020 11:49:43 +0100
In-Reply-To: <20200107104040.14500-1-peter.ujfalusi@ti.com>
References: <20200107104040.14500-1-peter.ujfalusi@ti.com>
User-Agent: Evolution 3.34.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_024949_200470_FFB9D6D2 
X-CRM114-Status: GOOD (  17.31  )
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
Content-Type: multipart/mixed; boundary="===============0999878324407360883=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0999878324407360883==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-N+V++2Edv1iq1XaEBcoq"


--=-N+V++2Edv1iq1XaEBcoq
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2020-01-07 at 12:40 +0200, Peter Ujfalusi wrote:
> dma_request_slave_channel() is a wrapper on top of dma_request_chan()
> eating up the error code.
>=20
> By using dma_request_chan() directly the driver can support deferred
> probing against DMA.
>=20
> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
> ---
> Hi,
>=20
> Changes since v1:
> - jump to err: instead of returning in case of EPROBE_DEFER
>=20
> Regards,
> Peter

Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Thanks,
Nicolas

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


--=-N+V++2Edv1iq1XaEBcoq
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl4UYkcACgkQlfZmHno8
x/5e3wf/eUvwQW2b9ZB6S1muHMTUNQhpNJKwE77BmeyyDodnuNKbTzeR1TyJzEws
JIMPSXnOKwuF2qvNLnpZrFTsCVmBqAY0M3U2M2Q1lIsiuWpRW0CpiHVWlMV3spHx
553nQ3mxwWXTvt1mHlJ5I6YIqivfGZSoRU6c0JuGLNZanttjfapD6BDIAy0pepdb
Xviq1Qzo5GxpLiabSs5rBPnxzZFZUtpXoLZJZv5nSW43q5xLugFxWjAY41xxFK85
AD2V6mWKd+fQ4GXZGTaw1IaRPYDODJcskngQntKuoclCSkY2/3LKn+eu0DF7STFs
lLPQIkggT59U+JX3iT3AoS6xf8NRWA==
=KfEu
-----END PGP SIGNATURE-----

--=-N+V++2Edv1iq1XaEBcoq--



--===============0999878324407360883==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0999878324407360883==--


