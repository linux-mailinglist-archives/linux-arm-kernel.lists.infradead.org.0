Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDE6BC395C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 17:43:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1sUI8ZH7wYK309G8+jK6Y6aX5vdn/tHZa0gcTgMwGZY=; b=sl4nZch/B0qk+R2aBQpntWo3o
	xqRZS4yQ678H+m0ZxRvHp/04GJLxF9J7WX0YsLsccWvbonKdO49ltDwg2a1J4kJ5FrWmSqGj2YbYe
	AsINm3NGGeJNmzqVrUbiI4Ces5ZH/Ox5AE8WId/Bxz0vqK58AusU6yAvC5padNk/Ha0rbMhMO3Yf+
	Zs6iEqVJBA/QqdaKqeQ+W3q66J784PCiyiI3dQA51RW+gze11SX6WtQZmhEcFoD580xXtvTYflhcS
	wcvKva5kgQbLZh2rBlEcSydqxjHJp2x5CbesA3v8xvpcvddbXJxKkUNNkNMBjC/G8LbGaK3r2KoTJ
	aQ2xE72UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFKJ7-000658-S2; Tue, 01 Oct 2019 15:43:21 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFKJ0-00064e-JX
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 15:43:16 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 972FDAD2A;
 Tue,  1 Oct 2019 15:43:12 +0000 (UTC)
Message-ID: <0557c83bcb781724a284811fef7fdb122039f336.camel@suse.de>
Subject: Re: [PATCH 05/11] of: Ratify of_dma_configure() interface
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Rob Herring <robh@kernel.org>
Date: Tue, 01 Oct 2019 17:43:09 +0200
In-Reply-To: <CAL_JsqLnKxuQRR3sGGtXF3nwwDx7DOONPPYz37ROk7u_+cxRug@mail.gmail.com>
References: <20190927002455.13169-1-robh@kernel.org>
 <20190927002455.13169-6-robh@kernel.org>
 <20190930125752.GD12051@infradead.org>
 <95f8dabea99f104336491281b88c04b58d462258.camel@suse.de>
 <CAL_JsqLnKxuQRR3sGGtXF3nwwDx7DOONPPYz37ROk7u_+cxRug@mail.gmail.com>
User-Agent: Evolution 3.32.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_084314_936017_DBCBC92A 
X-CRM114-Status: GOOD (  26.12  )
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
Cc: devicetree@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>, Arnd Bergmann <arnd@arndb.de>,
 PCI <linux-pci@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Marek Vasut <marek.vasut@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Oza Pawandeep <oza.oza@broadcom.com>, Stefan Wahren <wahrenst@gmx.net>,
 Simon Horman <horms+renesas@verge.net.au>,
 Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Robin Murphy <robin.murphy@arm.com>
Content-Type: multipart/mixed; boundary="===============5840839911272831373=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5840839911272831373==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-Cs3oOlvxVqdSsNFddCdM"


--=-Cs3oOlvxVqdSsNFddCdM
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2019-09-30 at 16:24 -0500, Rob Herring wrote:
> On Mon, Sep 30, 2019 at 8:32 AM Nicolas Saenz Julienne
> <nsaenzjulienne@suse.de> wrote:
> > On Mon, 2019-09-30 at 05:57 -0700, Christoph Hellwig wrote:
> > > On Thu, Sep 26, 2019 at 07:24:49PM -0500, Rob Herring wrote:
> > > > -int of_dma_configure(struct device *dev, struct device_node *np, b=
ool
> > > > force_dma)
> > > > +int of_dma_configure(struct device *dev, struct device_node *paren=
t,
> > > > bool
> > > > force_dma)
> > >=20
> > > This creates a > 80 char line.
> > >=20
> > > >  {
> > > >     u64 dma_addr, paddr, size =3D 0;
> > > >     int ret;
> > > >     bool coherent;
> > > >     unsigned long offset;
> > > >     const struct iommu_ops *iommu;
> > > > +   struct device_node *np;
> > > >     u64 mask;
> > > >=20
> > > > +   np =3D dev->of_node;
> > > > +   if (!np)
> > > > +           np =3D parent;
> > > > +   if (!np)
> > > > +           return -ENODEV;
> > >=20
> > > I have to say I find the older calling convention simpler to understa=
nd.
> > > If we want to enforce the invariant I'd rather do that explicitly:
> > >=20
> > >       if (dev->of_node && np !=3D dev->of_node)
> > >               return -EINVAL;
> >=20
> > As is, this would break Freescale Layerscape fsl-mc bus' dma_configure(=
):
>=20
> This may break PCI too for devices that have a DT node.
>=20
> > static int fsl_mc_dma_configure(struct device *dev)
> > {
> >         struct device *dma_dev =3D dev;
> >=20
> >         while (dev_is_fsl_mc(dma_dev))
> >                 dma_dev =3D dma_dev->parent;
> >=20
> >         return of_dma_configure(dev, dma_dev->of_node, 0);
> > }
> >=20
> > But I think that with this series, given the fact that we now treat the=
 lack
> > of
> > dma-ranges as a 1:1 mapping instead of an error, we could rewrite the
> > function
> > like this:
>=20
> Now, I'm reconsidering allowing this abuse... It's better if the code
> which understands the bus structure in DT for a specific bus passes in
> the right thing. Maybe I should go back to Robin's version (below).
> OTOH, the existing assumption that 'dma-ranges' was in the immediate
> parent was an assumption on the bus structure which maybe doesn't
> always apply.
>=20
> diff --git a/drivers/of/device.c b/drivers/of/device.c
> index a45261e21144..6951450bb8f3 100644
> --- a/drivers/of/device.c
> +++ b/drivers/of/device.c
> @@ -98,12 +98,15 @@ int of_dma_configure(struct device *dev, struct
> device_node *parent, bool force_
>         u64 mask;
>=20
>         np =3D dev->of_node;
> -       if (!np)
> -               np =3D parent;
> +       if (np)
> +               parent =3D of_get_dma_parent(np);
> +       else
> +               np =3D of_node_get(parent);
>         if (!np)
>                 return -ENODEV;
>=20
> -       ret =3D of_dma_get_range(np, &dma_addr, &paddr, &size);
> +       ret =3D of_dma_get_range(parent, &dma_addr, &paddr, &size);
> +       of_node_put(parent);
>         if (ret < 0) {
>                 /*
>                  * For legacy reasons, we have to assume some devices nee=
d

I spent some time thinking about your comments and researching. I came to t=
he
realization that both these solutions break the usage in
drivers/gpu/drm/sun4i/sun4i_backend.c:805. In that specific case both
'dev->of_node' and 'parent' exist yet the device receiving the configuratio=
n
and 'parent' aren't related in any way.

IOW we can't just use 'dev->of_node' as a starting point to walk upwards th=
e
tree. We always have to respect whatever DT node the bus provided, and star=
t
there. This clashes with the current solutions, as they are based on the fa=
ct
that we can use dev->of_node when present.

My guess at this point, if we're forced to honor that behaviour, is that we
have to create a new API for the PCI use case. Something the likes of
of_dma_configure_parent().

Regards,
Nicolas


--=-Cs3oOlvxVqdSsNFddCdM
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl2TdA0ACgkQlfZmHno8
x/6K4AgAjioHwGF/mb4/iuCV18ZNbc5+28Uj8QSuVjilegKoNykY14Tj+cUOZScx
3EF7lURVACHKIEG1K4mOtTqx/gzU+CkDYq3h6j7WkGGOIVY9Uadlnj/Koe7b3WuN
CtyjG0ZpwC0Houf+sUzULF/oh70hKCQnGJqaw4zM11eaV3GWVFusupxh6VuZ61Ez
PFo9kjYEn9DJFCUYzlZBYmqo7KIXm17W2fiY6AqjPvYE7s4HoA3Y1IE3uofxIY0B
0jyx5feECFqXNM6OXhaOVDV5jiDrM2aFc1/w0IYU3dcaQxjkPFlb4yI7KtzE/HBT
DJ49VyTT04oQy0DYBsw8BXur1BGXCw==
=Iift
-----END PGP SIGNATURE-----

--=-Cs3oOlvxVqdSsNFddCdM--



--===============5840839911272831373==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5840839911272831373==--


