Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92922C2205
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 15:33:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=i7q4bm0TDGKzNWOmqu89dRUpHUf3wMYEP6B8IVnWjKE=; b=oCFFAj8kr22hTuLHFFIWSG8ad
	rLwZVi1SwUiZJKAHq29abfVpl8dIcdifnYi0d3UJx5a8cufEyG/Lqe9Jb98gjgroASQgGLFwrY1Sr
	CZUNzfeE08g1i+9EyK0C3abvr9NcjYnzO95hI7u2bC57KYgWwSbaDkp4bFR065mISLmhhVqS19rsV
	Zpip8koJdy7HTw8gHpAbkFwybT/EXwVW25XIuq9fA4INUG33BJrsAJAyYvU4+OMi2pO/oLTncs/nu
	/pSK9aSG9lrcgIHUBjgdHCROKUzWTSuTh9687pjq4/k/RA5FVsk1sREayTVVjbrC2MxmSc8Ekp7fX
	p7pvvnjww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEvnZ-00085o-7N; Mon, 30 Sep 2019 13:33:09 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEvnQ-00084E-Fk
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 13:33:01 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 20575ADD5;
 Mon, 30 Sep 2019 13:32:57 +0000 (UTC)
Message-ID: <95f8dabea99f104336491281b88c04b58d462258.camel@suse.de>
Subject: Re: [PATCH 05/11] of: Ratify of_dma_configure() interface
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Christoph Hellwig <hch@infradead.org>, Rob Herring <robh@kernel.org>
Date: Mon, 30 Sep 2019 15:32:55 +0200
In-Reply-To: <20190930125752.GD12051@infradead.org>
References: <20190927002455.13169-1-robh@kernel.org>
 <20190927002455.13169-6-robh@kernel.org>
 <20190930125752.GD12051@infradead.org>
User-Agent: Evolution 3.32.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_063300_663967_8BA401A3 
X-CRM114-Status: GOOD (  14.06  )
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
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 Marek Vasut <marek.vasut@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Oza Pawandeep <oza.oza@broadcom.com>, Stefan Wahren <wahrenst@gmx.net>,
 Simon Horman <horms+renesas@verge.net.au>,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: multipart/mixed; boundary="===============3690159782114747967=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3690159782114747967==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-J2uUUCx3PD1vZZDm+yYn"


--=-J2uUUCx3PD1vZZDm+yYn
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2019-09-30 at 05:57 -0700, Christoph Hellwig wrote:
> On Thu, Sep 26, 2019 at 07:24:49PM -0500, Rob Herring wrote:
> > -int of_dma_configure(struct device *dev, struct device_node *np, bool
> > force_dma)
> > +int of_dma_configure(struct device *dev, struct device_node *parent, b=
ool
> > force_dma)
>=20
> This creates a > 80 char line.
>=20
> >  {
> >  	u64 dma_addr, paddr, size =3D 0;
> >  	int ret;
> >  	bool coherent;
> >  	unsigned long offset;
> >  	const struct iommu_ops *iommu;
> > +	struct device_node *np;
> >  	u64 mask;
> > =20
> > +	np =3D dev->of_node;
> > +	if (!np)
> > +		np =3D parent;
> > +	if (!np)
> > +		return -ENODEV;
>=20
> I have to say I find the older calling convention simpler to understand.
> If we want to enforce the invariant I'd rather do that explicitly:
>=20
> 	if (dev->of_node && np !=3D dev->of_node)
> 		return -EINVAL;

As is, this would break Freescale Layerscape fsl-mc bus' dma_configure():

static int fsl_mc_dma_configure(struct device *dev)
{
	struct device *dma_dev =3D dev;

	while (dev_is_fsl_mc(dma_dev))
		dma_dev =3D dma_dev->parent;

	return of_dma_configure(dev, dma_dev->of_node, 0);
}

But I think that with this series, given the fact that we now treat the lac=
k of
dma-ranges as a 1:1 mapping instead of an error, we could rewrite the funct=
ion
like this:

static int fsl_mc_dma_configure(struct device *dev)
{
	return of_dma_configure(dev, false, 0);
}

If needed I can test this.

Regards,
Nicolas


--=-J2uUUCx3PD1vZZDm+yYn
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl2SBAcACgkQlfZmHno8
x/4Nzwf+LG0gvylrOQLw5x/IHv2Kgv6fhZ0lnwVON/shyUQa9M2SJ6AmcGSBXL/D
poq3K8WHsQdr5e2yEyy2/lT92p6qSNbdIDjOeDyq3YskHZP6SBm/nC2l/dtDU9z6
fv3/gGTWP7ckQI4v4690kUZ4Txb3ndCWgrf7GXn7JKT7uDaqmIsiefi0S+YU8Y2L
mr1dudpZ3wAnCI0uA6Za8Db6QQ2lCtGHvchLzv0dC8n4qlMMipuWGFD8y/R6BGw7
90iinlHnoJrL07DjWy4nVFPqvXnFUADXr5eXAijh+ZQ7kCFOKHwYvEB7Zrh0mEw8
bdGzfMEbXgkzUdAaLb8mb48VqHBsOg==
=Byb8
-----END PGP SIGNATURE-----

--=-J2uUUCx3PD1vZZDm+yYn--



--===============3690159782114747967==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3690159782114747967==--


