Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEBC9CEB00
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 19:52:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=D3E0TLw7q7FIiCNujY8oGN6a2sCbWWdk3eAYletBR0c=; b=Ob6iZsQgm7H/P0zYqhbwiriMF
	MlRBOLxljKFnPHaRsDb6AwoiaYf2csBf5tGLqRYvw4rpjI07QSbjC+rxviAAT1uDu/wLvCn8WgrTP
	PkMm5TcVV6uqtkgNa9NRoM9gLznXsQNU8Readp2z518r+0gDI8IeOiYSMqbP8ZIOdTnP+lh/oSf0c
	STeqhuOHkRv9SIAYwUc8esfRHuAuFfsmt/mJDHn6PYTuap/RApU2lmh0FduTlH1Wz+bBg0L4OmIsy
	hy/sNOtbY77VBE/HOM/+TPUMLU8bgAHzh+88akjKLTxQd9Bs0Iqpz61rFjKGQNA8ZCn3SkXDVa43p
	Vwbx6SqsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHXB7-0005g2-1x; Mon, 07 Oct 2019 17:52:13 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHXAu-0005eK-TT
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 17:52:02 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 194BFAE1A;
 Mon,  7 Oct 2019 17:51:57 +0000 (UTC)
Message-ID: <1f6089709ec8f77d12453f08730b0058345a352b.camel@suse.de>
Subject: Re: [PATCH 05/11] of: Ratify of_dma_configure() interface
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Rob Herring <robh@kernel.org>
Date: Mon, 07 Oct 2019 19:51:13 +0200
In-Reply-To: <CAL_JsqLo0jtDcCDf5VTc+_grO3fJ1MsDTE8Bj=B0J+eLk3hpZg@mail.gmail.com>
References: <20190927002455.13169-1-robh@kernel.org>
 <20190927002455.13169-6-robh@kernel.org>
 <20190930125752.GD12051@infradead.org>
 <95f8dabea99f104336491281b88c04b58d462258.camel@suse.de>
 <CAL_JsqLnKxuQRR3sGGtXF3nwwDx7DOONPPYz37ROk7u_+cxRug@mail.gmail.com>
 <0557c83bcb781724a284811fef7fdb122039f336.camel@suse.de>
 <CAL_JsqLo0jtDcCDf5VTc+_grO3fJ1MsDTE8Bj=B0J+eLk3hpZg@mail.gmail.com>
User-Agent: Evolution 3.32.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_105201_245302_828DAADF 
X-CRM114-Status: GOOD (  30.23  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Content-Type: multipart/mixed; boundary="===============7113935116606326656=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7113935116606326656==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-RfW6mXnOY9RVgKryA6oE"


--=-RfW6mXnOY9RVgKryA6oE
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2019-10-03 at 20:53 -0500, Rob Herring wrote:
> > > > But I think that with this series, given the fact that we now treat=
 the
> > > > lack
> > > > of
> > > > dma-ranges as a 1:1 mapping instead of an error, we could rewrite t=
he
> > > > function
> > > > like this:
> > >=20
> > > Now, I'm reconsidering allowing this abuse... It's better if the code
> > > which understands the bus structure in DT for a specific bus passes i=
n
> > > the right thing. Maybe I should go back to Robin's version (below).
> > > OTOH, the existing assumption that 'dma-ranges' was in the immediate
> > > parent was an assumption on the bus structure which maybe doesn't
> > > always apply.
> > >=20
> > > diff --git a/drivers/of/device.c b/drivers/of/device.c
> > > index a45261e21144..6951450bb8f3 100644
> > > --- a/drivers/of/device.c
> > > +++ b/drivers/of/device.c
> > > @@ -98,12 +98,15 @@ int of_dma_configure(struct device *dev, struct
> > > device_node *parent, bool force_
> > >         u64 mask;
> > >=20
> > >         np =3D dev->of_node;
> > > -       if (!np)
> > > -               np =3D parent;
> > > +       if (np)
> > > +               parent =3D of_get_dma_parent(np);
> > > +       else
> > > +               np =3D of_node_get(parent);
> > >         if (!np)
> > >                 return -ENODEV;
> > >=20
> > > -       ret =3D of_dma_get_range(np, &dma_addr, &paddr, &size);
> > > +       ret =3D of_dma_get_range(parent, &dma_addr, &paddr, &size);
> > > +       of_node_put(parent);
> > >         if (ret < 0) {
> > >                 /*
> > >                  * For legacy reasons, we have to assume some devices=
 need
> >=20
> > I spent some time thinking about your comments and researching. I came =
to
> > the
> > realization that both these solutions break the usage in
> > drivers/gpu/drm/sun4i/sun4i_backend.c:805. In that specific case both
> > 'dev->of_node' and 'parent' exist yet the device receiving the configur=
ation
> > and 'parent' aren't related in any way.
>=20
> I knew there was some reason I didn't like those virtual DT nodes...
>=20
> That does seem to be the oddest case. Several of the others are just
> non-DT child platform devices. Perhaps we need a "copy the DMA config
> from another struct device (or parent struct device)" function to
> avoid using a DT function on a non-DT device.
>=20
> > IOW we can't just use 'dev->of_node' as a starting point to walk upward=
s the
> > tree. We always have to respect whatever DT node the bus provided, and =
start
> > there. This clashes with the current solutions, as they are based on th=
e
> > fact
> > that we can use dev->of_node when present.
>=20
> Yes, you are right.
>=20
> > My guess at this point, if we're forced to honor that behaviour, is tha=
t we
> > have to create a new API for the PCI use case. Something the likes of
> > of_dma_configure_parent().
>=20
> I think of_dma_configure just has to work with the device_node of
> either the device or the device parent and dev->of_node is never used
> unless the caller sets it.

Fine, so given the following two distinct uses of
of_dma_configure(struct device *dev, struct device_node *np, bool ...):

- dev->of_node =3D=3D np: Platform bus' typical use, we imperatively have t=
o start
  parsing dma-ranges from np's DMA parent, as the device we're configuring
  might be a bus containing dma-ranges himself. For example a platform PCIe=
 bus.

- dev->of_node !=3D np: Here the bus is pulling some trick. The device migh=
t or
  might not be represented in DT and np might be a bus or a device. But one
  thing I realised is that device being configured never represents a memor=
y
  mapped bus. Assuming this assumption is acceptable, we can traverse the D=
T
  tree starting from np and get a correct configuration as long as dma-rang=
es
  not being present is interpreted as a 1:1 mapping.

The resulting code, which I tested on an RPi4, Freescale Layerscape and pas=
ses
OF's unit tests, looks like this:

int of_dma_configure(struct device *dev, struct device_node *np, bool force=
_dma)
{
	u64 dma_addr, paddr, size =3D 0;
	struct device_node *parent;
	u64 mask;
	int ret;

	if (!np)
		return -ENODEV;

	parent =3D of_node_get(np);
	if (dev->of_node =3D=3D parent)
		parent =3D of_get_next_dma_parent(np);

	ret =3D of_dma_get_range(parent, &dma_addr, &paddr, &size);
	of_node_put(parent);

	[...]
}

Would that be acceptable?

Regards,
Nicolas


--=-RfW6mXnOY9RVgKryA6oE
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl2bexEACgkQlfZmHno8
x/4bKAf+P/rR6qUNJNu0v4BM+BoxWKPz1uoSsKaXAf/WrbARW9vSD2R+aL23gwZX
qtjjZK0SbTy8jfEBqgzDYFd6jmOCmPJdPU81w1mfJlNcj1asQnXMa5U6YKig1Vkw
//dDLUR0eDFAvemXBO9u9xa0j4fWr8K5ewBogDsWR2VALGeJ+v8cX6X30KDKglH+
k/NJ4JxfMHPfwygV1JQDX+0ypNdcgX9Gdy4DHoX2HXS0d5BSKntw2qB0P595VDOo
a3J3M1wo4f6yyxHFmtm4SWvv6ipvHKx3R409xosuaUTjiu/8RaNWtF7aTNTAwy6I
byrfMtJMaPVwSWxJNicSDC0wWwbuYA==
=F4oK
-----END PGP SIGNATURE-----

--=-RfW6mXnOY9RVgKryA6oE--



--===============7113935116606326656==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7113935116606326656==--


