Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64C18D0285
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 22:52:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dbSCrrduUZh/1pjjOOLD0gceq0sW5K96yKLKmVhaYFY=; b=XzbDh0tdOfprdwIDVJkIio4OM
	3dDOC12xBQOvAcpg+udnpHB6AGHGBQYqOeMvUmNycklHe4BblgiuwskEggorR/vizYiEgVjglMKhw
	ZdqG3JeaWvmj0rLqZbUzuVVighXP+FD6Hc0Z9C7z6NOD8fc1aZO2KmLVafugz2tzI/YpcNyjBfkwN
	iEpS8L9mZr3JQah7I6y+WOvY5Fu7CqjXsduRdqa2OEJBt0GwFu3sK9Ntv8eTpSglqZUEIzBsJopy1
	pZ9nBk6S1vzvBL+AqUpAkhPzt9M1Q80TqFN6IrAVI9Nab6rQrdEIc7Ert48GNwgGWoIQUNW+aZK/1
	V+0bZnSqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHwSv-00089y-O5; Tue, 08 Oct 2019 20:52:17 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHwSm-00088i-Hk
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 20:52:10 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id D0F39AF9F;
 Tue,  8 Oct 2019 20:52:04 +0000 (UTC)
Message-ID: <4f6b26f8779a4fd98712b966bff3491dc31e26c2.camel@suse.de>
Subject: Re: [PATCH v2] of: Make of_dma_get_range() work on bus nodes
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Date: Tue, 08 Oct 2019 22:51:36 +0200
In-Reply-To: <20191008195239.12852-1-robh@kernel.org>
References: <20191008195239.12852-1-robh@kernel.org>
User-Agent: Evolution 3.32.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_135208_878632_8053DED5 
X-CRM114-Status: GOOD (  27.87  )
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>, Arnd Bergmann <arnd@arndb.de>,
 Robin Murphy <robin.murphy@arm.com>, linux-kernel@vger.kernel.org,
 Christoph Hellwig <hch@infradead.org>, Marek Vasut <marek.vasut@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Stefan Wahren <wahrenst@gmx.net>, Simon Horman <horms+renesas@verge.net.au>,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3858890443120812750=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3858890443120812750==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-8hI66HT9gbTxUxyjGifb"


--=-8hI66HT9gbTxUxyjGifb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Rob/Robin,

On Tue, 2019-10-08 at 14:52 -0500, Rob Herring wrote:
> From: Robin Murphy <robin.murphy@arm.com>
>=20
> Since the "dma-ranges" property is only valid for a node representing a
> bus, of_dma_get_range() currently assumes the node passed in is a leaf
> representing a device, and starts the walk from its parent. In cases
> like PCI host controllers on typical FDT systems, however, where the PCI
> endpoints are probed dynamically the initial leaf node represents the
> 'bus' itself, and this logic means we fail to consider any "dma-ranges"
> describing the host bridge itself. Rework the logic such that
> of_dma_get_range() also works correctly starting from a bus node
> containing "dma-ranges".
>=20
> While this does mean "dma-ranges" could incorrectly be in a device leaf
> node, there isn't really any way in this function to ensure that a leaf
> node is or isn't a bus node.

Sorry, I'm not totally sure if this is what you're pointing out with the la=
st
sentence. But, what about the case of a bus configuring a device which also
happens to be a memory mapped bus (say a PCI platform device). It'll get it=
's
dma config based on its own dma-ranges which is not what we want.

> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> [robh: Allow for the bus child node to still be passed in]
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
> Resending, hit send too quickly.
>=20
> v2:
>  - Ensure once we find dma-ranges, every parent has it.

I like this new approach.

Regards,
Nicolas

>  - Only get the #{size,address}-cells after we find non-empty dma-ranges
>  - Add a check on the 'dma-ranges' length
>=20
> This is all that remains of the dma-ranges series. I've applied the rest=
=20
> of the series prep and fixes. I dropped "of: Ratify of_dma_configure()=
=20
> interface" as the assertions that the node pointer being the parent only=
=20
> when struct device doesn't have a DT node pointer is not always=20
> true.
>=20
> I didn't include any tested-bys as this has changed a bit. A git branch=
=20
> is here[1].
>=20
> Rob
>=20
> [1] git://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git dma-mask=
s-v2
>=20
>  drivers/of/address.c | 44 ++++++++++++++++++--------------------------
>  1 file changed, 18 insertions(+), 26 deletions(-)
>=20
> diff --git a/drivers/of/address.c b/drivers/of/address.c
> index 5ce69d026584..99c1b8058559 100644
> --- a/drivers/of/address.c
> +++ b/drivers/of/address.c
> @@ -930,47 +930,39 @@ int of_dma_get_range(struct device_node *np, u64
> *dma_addr, u64 *paddr, u64 *siz
>  	const __be32 *ranges =3D NULL;
>  	int len, naddr, nsize, pna;
>  	int ret =3D 0;
> +	bool found_dma_ranges =3D false;
>  	u64 dmaaddr;
> =20
> -	if (!node)
> -		return -EINVAL;
> -
> -	while (1) {
> -		struct device_node *parent;
> -
> -		naddr =3D of_n_addr_cells(node);
> -		nsize =3D of_n_size_cells(node);
> -
> -		parent =3D __of_get_dma_parent(node);
> -		of_node_put(node);
> -
> -		node =3D parent;
> -		if (!node)
> -			break;
> -
> +	while (node) {
>  		ranges =3D of_get_property(node, "dma-ranges", &len);
> =20
>  		/* Ignore empty ranges, they imply no translation required */
>  		if (ranges && len > 0)
>  			break;
> =20
> -		/*
> -		 * At least empty ranges has to be defined for parent node if
> -		 * DMA is supported
> -		 */
> -		if (!ranges)
> -			break;
> +		/* Once we find 'dma-ranges', then a missing one is an error */
> +		if (found_dma_ranges && !ranges) {
> +			ret =3D -ENODEV;
> +			goto out;
> +		}
> +		found_dma_ranges =3D true;
> +
> +		node =3D of_get_next_dma_parent(node);
>  	}
> =20
> -	if (!ranges) {
> +	if (!node || !ranges) {
>  		pr_debug("no dma-ranges found for node(%pOF)\n", np);
>  		ret =3D -ENODEV;
>  		goto out;
>  	}
> =20
> -	len /=3D sizeof(u32);
> -
> +	naddr =3D of_bus_n_addr_cells(node);
> +	nsize =3D of_bus_n_size_cells(node);
>  	pna =3D of_n_addr_cells(node);
> +	if ((len / sizeof(__be32)) % (pna + naddr + nsize)) {
> +		ret =3D -EINVAL;
> +		goto out;
> +	}
> =20
>  	/* dma-ranges format:
>  	 * DMA addr	: naddr cells
> @@ -978,7 +970,7 @@ int of_dma_get_range(struct device_node *np, u64
> *dma_addr, u64 *paddr, u64 *siz
>  	 * size		: nsize cells
>  	 */
>  	dmaaddr =3D of_read_number(ranges, naddr);
> -	*paddr =3D of_translate_dma_address(np, ranges);
> +	*paddr =3D of_translate_dma_address(node, ranges + naddr);
>  	if (*paddr =3D=3D OF_BAD_ADDR) {
>  		pr_err("translation of DMA address(%llx) to CPU address failed
> node(%pOF)\n",
>  		       dmaaddr, np);


--=-8hI66HT9gbTxUxyjGifb
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl2c9tgACgkQlfZmHno8
x/62BQf/U0QT3ADqFU/ndfwRPioobN9ONdnh6CLT03TDkJM3U4WxCXne9c5e359z
go9HveWafv35Jy0use3A54V0HRtUpEGiIE5TIZiZxTx/erBny0QQb9P8o/tM2Dyc
3t0TW2FuAKLPsp5VbIJr66Afb1sUHRBsFfPrL3WFgSB1884tB75BLRaE5uX7hJ0h
cBY2nBlQHaa+77esbmMhxgbJ8hhV4sBY4V7hbGm1WNB1HMSKfwCBifEMc/3+2iKa
Z3trR/cfRxpPWSUAEyLQ807kvmkZyoHmIOjQr9cUB5gnxGpwA/B97OSmMCLq2RnT
sQ/cjASfdJZbBCLCEIITZv/ZzlEOBw==
=eTic
-----END PGP SIGNATURE-----

--=-8hI66HT9gbTxUxyjGifb--



--===============3858890443120812750==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3858890443120812750==--


