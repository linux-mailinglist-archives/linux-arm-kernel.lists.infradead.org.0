Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B58F12B47
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 12:08:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RpCiCyEb/H54LUUk6/6iWAyaZQ2h8biEJCN5CDf8muw=; b=M7VEbf2yRGDC0uFq+Luw6cbJ1
	DdgL+pfMRiOv1z3Q/OcTyAD+W8wQzYcZ/IiU3lZNpVR0SivI7CjL+jiFy5xs+o1cDldshyfJEUqIA
	HoUUyR6Qv8sj8vxAOlB/4TGZeDvnji9+DOxmdf/hHrSvX64D544Gtmd+9v4yr8YtklWXEjO4/Fm0U
	HFGtFHvhzBgL2n6Wl8y8imLBIKqS2ReSKE1l7GzcxWGKd4fQcAEnah5rWjhgaZjDLzkSOlBN4l2vl
	tjO6ZOH65J86WrM1thO7fqXFFKT8qc4vLbosGiyqMe7wyrwM2Ce3if5OjyDpLGJBz531qFtIUxrhZ
	jpIHnCDqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMV7H-0002o0-Cs; Fri, 03 May 2019 10:08:31 +0000
Received: from atrey.karlin.mff.cuni.cz ([195.113.26.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMV7A-0002nD-8h
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 10:08:26 +0000
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id B2436802D6; Fri,  3 May 2019 12:08:06 +0200 (CEST)
Date: Fri, 3 May 2019 12:08:16 +0200
From: Pavel Machek <pavel@denx.de>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 4.19 46/72] net: xilinx: fix possible object reference leak
Message-ID: <20190503100816.GD5834@amd>
References: <20190502143333.437607839@linuxfoundation.org>
 <20190502143337.107638265@linuxfoundation.org>
MIME-Version: 1.0
In-Reply-To: <20190502143337.107638265@linuxfoundation.org>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_030824_618729_589BB04B 
X-CRM114-Status: GOOD (  20.02  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.113.26.193 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "Sasha Levin \(Microsoft\)" <sashal@kernel.org>,
 Wen Yang <wen.yang99@zte.com.cn>, netdev@vger.kernel.org,
 Michal Simek <michal.simek@xilinx.com>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, John Linn <John.Linn@xilinx.com>,
 Anirudha Sarangi <anirudh@xilinx.com>, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3473446321343938800=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3473446321343938800==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="a2FkP9tdjPU2nyhF"
Content-Disposition: inline


--a2FkP9tdjPU2nyhF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu 2019-05-02 17:21:08, Greg Kroah-Hartman wrote:
> [ Upstream commit fa3a419d2f674b431d38748cb58fb7da17ee8949 ]
>=20
> The call to of_parse_phandle returns a node pointer with refcount
> incremented thus it must be explicitly decremented after the last
> usage.
>=20
> Detected by coccinelle with the following warnings:
> ./drivers/net/ethernet/xilinx/xilinx_axienet_main.c:1624:1-7: ERROR: miss=
ing of_node_put; acquired a node pointer with refcount incremented on line =
1569, but without a corresponding object release within this function.
>=20
> Signed-off-by: Wen Yang <wen.yang99@zte.com.cn>
> Cc: Anirudha Sarangi <anirudh@xilinx.com>
> Cc: John Linn <John.Linn@xilinx.com>
> Cc: "David S. Miller" <davem@davemloft.net>
> Cc: Michal Simek <michal.simek@xilinx.com>
> Cc: netdev@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> Signed-off-by: David S. Miller <davem@davemloft.net>
> Signed-off-by: Sasha Levin (Microsoft) <sashal@kernel.org>

Bug is real, but fix is horrible. This already uses gotos for error
handling, so use them....

This fixes it up.

Plus... I do not think these "of_node_put" fixes belong in
stable. They are theoretical bugs; so we hold reference to device tree
structure. a) it is small, b) it stays in memory, anyway. This does
not fix any real problem.

								Pavel


diff --git a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c b/drivers/ne=
t/ethernet/xilinx/xilinx_axienet_main.c
index 4041c75..490d440 100644
--- a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
+++ b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
@@ -1575,15 +1575,13 @@ static int axienet_probe(struct platform_device *pd=
ev)
 	ret =3D of_address_to_resource(np, 0, &dmares);
 	if (ret) {
 		dev_err(&pdev->dev, "unable to get DMA resource\n");
-		of_node_put(np);
-		goto free_netdev;
+		goto free_netdev_put;
 	}
 	lp->dma_regs =3D devm_ioremap_resource(&pdev->dev, &dmares);
 	if (IS_ERR(lp->dma_regs)) {
 		dev_err(&pdev->dev, "could not map DMA regs\n");
 		ret =3D PTR_ERR(lp->dma_regs);
-		of_node_put(np);
-		goto free_netdev;
+		goto free_netdev_put;
 	}
 	lp->rx_irq =3D irq_of_parse_and_map(np, 1);
 	lp->tx_irq =3D irq_of_parse_and_map(np, 0);
@@ -1620,6 +1618,8 @@ static int axienet_probe(struct platform_device *pdev)
=20
 	return 0;
=20
+free_netdev_put:
+	of_node_put(np);
 free_netdev:
 	free_netdev(ndev);
=20


> ---
>  drivers/net/ethernet/xilinx/xilinx_axienet_main.c | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c b/drivers/=
net/ethernet/xilinx/xilinx_axienet_main.c
> index f24f48f33802..7cfd7ff38e86 100644
> --- a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
> +++ b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
> @@ -1574,12 +1574,14 @@ static int axienet_probe(struct platform_device *=
pdev)
>  	ret =3D of_address_to_resource(np, 0, &dmares);
>  	if (ret) {
>  		dev_err(&pdev->dev, "unable to get DMA resource\n");
> +		of_node_put(np);
>  		goto free_netdev;
>  	}
>  	lp->dma_regs =3D devm_ioremap_resource(&pdev->dev, &dmares);
>  	if (IS_ERR(lp->dma_regs)) {
>  		dev_err(&pdev->dev, "could not map DMA regs\n");
>  		ret =3D PTR_ERR(lp->dma_regs);
> +		of_node_put(np);
>  		goto free_netdev;
>  	}
>  	lp->rx_irq =3D irq_of_parse_and_map(np, 1);

--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--a2FkP9tdjPU2nyhF
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAlzMExAACgkQMOfwapXb+vIrQACfRGO7B7c76iqFSkLanh93OYhc
YB8AnjX80JqCdvKDKa6YoJRJg3pTE41w
=GJN0
-----END PGP SIGNATURE-----

--a2FkP9tdjPU2nyhF--


--===============3473446321343938800==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3473446321343938800==--

