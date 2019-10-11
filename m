Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97615D4814
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 21:02:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SFaF4JpsN0grLoX42xvC2PPx3C9oVJM9EwgyJ8pKHmo=; b=dmnN41H4mYlOr2KNpILf/0w2v
	IPqlvOSqhAdvUf1NVu6TPqJoJ3DpHJvuCv5ESvOaKsyGcTQhj2/Mbk9hPxWxZvQwZtoOLP5wDI8rS
	ApkwYEILbv8SJ3bc9kspkEWVt6QxFwZWmDMOVI8+MQ72MVxraBmWwS2mjlOiAwh+2uEf7lf4oL6cI
	shLP/5bogQ4ZamihfrOpnGvZVrlca/KMRtMovSDv3oFyHA5lF1hOirnoeQIvS+HtU7iWH6SeemPXd
	f91A9rXBnKpOVKx7J++oaRKvxQ9U0KsRO9E6ngTJT/zy182+BtZjkZ2saS1kgjLwZYBUmNGPfCFvP
	SF0AB6cww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJ0Aq-0007vD-HK; Fri, 11 Oct 2019 19:02:00 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJ0Ag-0007th-Tc; Fri, 11 Oct 2019 19:01:52 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 5ACA3B43E;
 Fri, 11 Oct 2019 19:01:47 +0000 (UTC)
Message-ID: <aba8aee4c78523e652e0605db844b793214b7674.camel@suse.de>
Subject: Re: [PATCH v1 2/3] net: bcmgenet: use optional max DMA burst size
 property
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: matthias.bgg@kernel.org, Florian Fainelli <f.fainelli@gmail.com>, "David
 S . Miller" <davem@davemloft.net>
Date: Fri, 11 Oct 2019 21:01:45 +0200
In-Reply-To: <20191011184822.866-3-matthias.bgg@kernel.org>
References: <20191011184822.866-1-matthias.bgg@kernel.org>
 <20191011184822.866-3-matthias.bgg@kernel.org>
User-Agent: Evolution 3.32.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_120151_246368_1210B6F6 
X-CRM114-Status: GOOD (  15.92  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Doug Berger <opendmb@gmail.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Matthias Brugger <mbrugger@suse.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Stefan Wahren <wahrenst@gmx.net>
Content-Type: multipart/mixed; boundary="===============8149023535357518180=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8149023535357518180==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-j2itiBTOH1918e/nyStj"


--=-j2itiBTOH1918e/nyStj
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Matthias!
One small comment, I'll test everything later on.

On Fri, 2019-10-11 at 20:48 +0200, matthias.bgg@kernel.org wrote:
> From: Matthias Brugger <mbrugger@suse.com>
>=20
> Depending on the HW, the maximal usable DMA burst size can vary.
> If not set accordingly a timeout in the transmit queue happens and no
> package can be sent. Read to optional max-burst-sz property, if not
> present, fallback to the standard value.
>=20
> Signed-off-by: Matthias Brugger <mbrugger@suse.com>
> ---
>=20
>  drivers/net/ethernet/broadcom/genet/bcmgenet.c | 13 +++++++++++--
>  drivers/net/ethernet/broadcom/genet/bcmgenet.h |  1 +
>  2 files changed, 12 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/broadcom/genet/bcmgenet.c
> b/drivers/net/ethernet/broadcom/genet/bcmgenet.c
> index 12cb77ef1081..a7bb822a6d83 100644
> --- a/drivers/net/ethernet/broadcom/genet/bcmgenet.c
> +++ b/drivers/net/ethernet/broadcom/genet/bcmgenet.c
> @@ -2576,7 +2576,8 @@ static int bcmgenet_init_dma(struct bcmgenet_priv *=
priv)
>  	}
> =20
>  	/* Init rDma */
> -	bcmgenet_rdma_writel(priv, DMA_MAX_BURST_LENGTH, DMA_SCB_BURST_SIZE);
> +	bcmgenet_rdma_writel(priv, priv->dma_max_burst_length,
> +			     DMA_SCB_BURST_SIZE);
> =20
>  	/* Initialize Rx queues */
>  	ret =3D bcmgenet_init_rx_queues(priv->dev);
> @@ -2589,7 +2590,8 @@ static int bcmgenet_init_dma(struct bcmgenet_priv *=
priv)
>  	}
> =20
>  	/* Init tDma */
> -	bcmgenet_tdma_writel(priv, DMA_MAX_BURST_LENGTH, DMA_SCB_BURST_SIZE);
> +	bcmgenet_tdma_writel(priv, priv->dma_max_burst_length,
> +			     DMA_SCB_BURST_SIZE);
> =20
>  	/* Initialize Tx queues */
>  	bcmgenet_init_tx_queues(priv->dev);
> @@ -3522,6 +3524,13 @@ static int bcmgenet_probe(struct platform_device *=
pdev)
> =20
>  	clk_prepare_enable(priv->clk);
> =20
> +	if (dn) {
> +		of_property_read_u32(dn, "dma-burst-sz",
> +				     &priv->dma_max_burst_length);

You set the 'dma-burst-sz' binding as optional, though this assumes that if=
 a
device node is available dma_max_burst_length comes from the device tree. I
think you should check of_property_read_u32's return value and on failure
default to DMA_MAX_BURST_LENGTH.

> +	} else {
> +		priv->dma_max_burst_length =3D DMA_MAX_BURST_LENGTH;
> +	}
> +
>  	bcmgenet_set_hw_params(priv);
> =20
>  	/* Mii wait queue */
> diff --git a/drivers/net/ethernet/broadcom/genet/bcmgenet.h
> b/drivers/net/ethernet/broadcom/genet/bcmgenet.h
> index 4a8fc03d82fd..897f356eb376 100644
> --- a/drivers/net/ethernet/broadcom/genet/bcmgenet.h
> +++ b/drivers/net/ethernet/broadcom/genet/bcmgenet.h
> @@ -663,6 +663,7 @@ struct bcmgenet_priv {
>  	bool crc_fwd_en;
> =20
>  	unsigned int dma_rx_chk_bit;
> +	unsigned int dma_max_burst_length;
> =20
>  	u32 msg_enable;
> =20

Regards,
Nicolas


--=-j2itiBTOH1918e/nyStj
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl2g0ZkACgkQlfZmHno8
x/6Mdgf+Pf0ra+FPpx4Ytdj4mRSRpmN2V+b2TBbpbm4JPXpQOV0x1bq7w3QQT7FF
KQbKhEoh/nCH1cHZ5ScFWJ3JVQHPRbgPw2c/y/aFHEnDaTkFvg6fYmm2Xjt3ABil
kxire7snMF+4oO5l0D/y6PXJICzvPi2ofvPIdB1swteRngtCwL98mDHn9Cd+tRD0
IyB7N9gyHgxMf6mshroxijVvn6XS6yfOV3bhC1AXlCmqTial7BoHFe8LI45Tr9+F
w5317a+n8LnOqPVu++FH5rNfoeKLi3n0gxb3kgIGbAUGZp1JmxDJ/W/ZjoGk9gmX
gfR2/XmNHojodv60DZs2v8RcTcWT7w==
=mp3i
-----END PGP SIGNATURE-----

--=-j2itiBTOH1918e/nyStj--



--===============8149023535357518180==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8149023535357518180==--


