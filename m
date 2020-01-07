Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 705B7132447
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 11:57:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SaETfNlIIGEt9tt5EXq82p5gf8/1wI1RVeNQA7Nzn4E=; b=ZOPiVqOYGWn7OKQeuErxrRRq9
	0UNT+HAUM82Ln+gPmCljYpIpQfKsseyo6MZafOxW5l7IVgIFkJJKWDituuyv1SZOsfKPoCZG9EUwV
	tdAyBFq6Z1NBphXNlRVWmLzGGgiLiGDYSbehXP7VKBsiRbgA+dTsfBHaVYTzKrEQMhZ5nrWlXe4/r
	6HpZJot5oFhJy/2bksj37+8BrCK4Igy/jCEuE45bmUlP3IU8YiITwiV26ISvDtcTefLw7VftKOPsV
	SRyJx+5WhYqfbX7vtEp6HQ5Mzr9mJsGMinglyi2moPHAJL8OQPZinO/54z6V+bzzDZlQisZNFeBkl
	B7uyZrY2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iomY1-0007A3-T3; Tue, 07 Jan 2020 10:57:17 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iomXu-00079H-TZ; Tue, 07 Jan 2020 10:57:12 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 72E95AD05;
 Tue,  7 Jan 2020 10:57:09 +0000 (UTC)
Message-ID: <bb661c1013f5e05407f93a134f221fb0988ce63f.camel@suse.de>
Subject: Re: [PATCH 05/13] mailbox: bcm2835: convert to
 devm_platform_ioremap_resource
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Yangtao Li <tiny.windzz@gmail.com>, jassisinghbrar@gmail.com, 
 f.fainelli@gmail.com, rjui@broadcom.com, sbranden@broadcom.com, 
 bcm-kernel-feedback-list@broadcom.com, lftan@altera.com,
 matthias.bgg@gmail.com,  agross@kernel.org, bjorn.andersson@linaro.org,
 mcoquelin.stm32@gmail.com,  alexandre.torgue@st.com,
 thierry.reding@gmail.com, jonathanh@nvidia.com, 
 linux-kernel@vger.kernel.org, linux-rpi-kernel@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, nios2-dev@lists.rocketboards.org, 
 linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org, 
 linux-stm32@st-md-mailman.stormreply.com, linux-tegra@vger.kernel.org
Date: Tue, 07 Jan 2020 11:57:07 +0100
In-Reply-To: <20191228183538.26189-5-tiny.windzz@gmail.com>
References: <20191228183538.26189-1-tiny.windzz@gmail.com>
 <20191228183538.26189-5-tiny.windzz@gmail.com>
User-Agent: Evolution 3.34.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_025711_097167_C7E885C0 
X-CRM114-Status: GOOD (  13.23  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
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
Content-Type: multipart/mixed; boundary="===============0205639433959953189=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0205639433959953189==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-y5AsCnHtvQY7mJ+3+eeo"


--=-y5AsCnHtvQY7mJ+3+eeo
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, 2019-12-28 at 18:35 +0000, Yangtao Li wrote:
> Use devm_platform_ioremap_resource() to simplify code.
>=20
> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> ---

Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Thanks!

>  drivers/mailbox/bcm2835-mailbox.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>=20
> diff --git a/drivers/mailbox/bcm2835-mailbox.c b/drivers/mailbox/bcm2835-
> mailbox.c
> index 39761d190545..79f93c9c7682 100644
> --- a/drivers/mailbox/bcm2835-mailbox.c
> +++ b/drivers/mailbox/bcm2835-mailbox.c
> @@ -137,7 +137,6 @@ static int bcm2835_mbox_probe(struct platform_device
> *pdev)
>  {
>  	struct device *dev =3D &pdev->dev;
>  	int ret =3D 0;
> -	struct resource *iomem;
>  	struct bcm2835_mbox *mbox;
> =20
>  	mbox =3D devm_kzalloc(dev, sizeof(*mbox), GFP_KERNEL);
> @@ -153,8 +152,7 @@ static int bcm2835_mbox_probe(struct platform_device
> *pdev)
>  		return -ENODEV;
>  	}
> =20
> -	iomem =3D platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -	mbox->regs =3D devm_ioremap_resource(&pdev->dev, iomem);
> +	mbox->regs =3D devm_platform_ioremap_resource(pdev, 0);
>  	if (IS_ERR(mbox->regs)) {
>  		ret =3D PTR_ERR(mbox->regs);
>  		dev_err(&pdev->dev, "Failed to remap mailbox regs: %d\n", ret);


--=-y5AsCnHtvQY7mJ+3+eeo
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl4UZAMACgkQlfZmHno8
x/5XXwgAlWhWoPbAnKlacluRU3wwe6Bf/fyJCILvfBL9w8HbTcoFBOIX1v57lLdQ
vd8AzkmNgkzmUYyMOpKcyUI6+YQDgtc4qKutzeA7fLNS5oo2b0XB3tRwZa1ng1oJ
vknawhQvjlzIjfNNzO5UKIVWgSoVqZlHmuQyuRN6pemg9IgT7VaEEL/rEo1uOkix
eCyerYBXqS8Y5Ty0Y7KOjrDM2wFiggH/r6Y4mt+2Mto5pZDbY4CtBD1JjSb4u8eS
8TF9+Pf7Jqh/NW0xAz1x40aq+J77rPsKecWm96kWnJBTUyTx4Seh6mHsZQl1Nxej
fZAJaanhMv0nlXusFg/vtaSBr94lkQ==
=bWd1
-----END PGP SIGNATURE-----

--=-y5AsCnHtvQY7mJ+3+eeo--



--===============0205639433959953189==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0205639433959953189==--


