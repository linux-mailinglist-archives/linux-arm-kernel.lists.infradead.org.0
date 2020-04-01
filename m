Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82C7C19AB0D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 13:47:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Pn+10zKI3tuNUzydytpTyr87CDFz4zyKegkAYsD9ZJk=; b=NasXM/KuBzg2vqudc3XSpsMEs
	jeOlu5xx/qUXmO4oOZzs6mCV301DxqIUiTkHiPbnqpu5WF1hGGXfjMyONrJxFvQWMwSiyu2J1m9R/
	gDGLAURA1yZ14DDr725zl52UcH8PG6Bkj0TF+ZsMEV75BSx5gQPVS8j0F0vAVhZ5hZr0bAlrnvjM6
	EaiQfKbPBTW974gJyg0bxvATvYOy3bwCACW6rv90/8zct53zRotFM6d0k+AQax9mY3HtrzPkzSKLP
	Oqs/aLI6qjtHzwNKo5xoJn8t9dyYbr6Nd82aLPf0jyAN93lQtToUkFq0227F4DQibo0fvFKbJr3Dj
	vJqcT1aZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJbqB-0002RX-Fe; Wed, 01 Apr 2020 11:47:27 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJbq5-0002Qc-Ho
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 11:47:23 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 35F675C0301;
 Wed,  1 Apr 2020 07:47:16 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 01 Apr 2020 07:47:16 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=up1fljkptf0bGq0js9pbKjJnIdl
 3ynNvtoaG6fa/Psw=; b=WwG62jJlMZ7G8xgpjVk/BLWWRLhTw3W8oafomFlnN0q
 kFCaA4EEocL2q/i7T1K+nbn11WHmRrmc2fElcAq7F3VzRvNHE9dRIf2EzGRElnp6
 14IlQdexTZ9uIAXiXpHo9wlLenHAfdUSCC7FH13Wp3UYKZs4b7JaO3q7VL1mRMTV
 yp1zXrjCzTbBqEmvY/vokWN930bgBfwOPNAL0BddDM9IlHdnORwhEsK8y+nNp4D5
 mpMEiwcwA26lFI5tZLia7T7c2vY3rumTKW4HVKPe/gDR+HMAKwhGkyR3h4gNv2vv
 D5stU3InW8CKRNR3/E3KcxPVXXRrS3XsasWgt/TBaiA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=up1flj
 kptf0bGq0js9pbKjJnIdl3ynNvtoaG6fa/Psw=; b=HHz86apN3MklVlDQKBEU2i
 f1UpzqA6cI4n9VUHrXtSgkNryzafZk6wErXtUZYZgsPWcBkM9Kr/VQd6rvaOpJci
 1JLqRPFYYTCO7XSxLngvbOg9bF0c9QRKeJt2hp5AnUOSWdZkjxjXo/O+IL1meXCH
 rwWQ23tdYD/YnwOTwi49skttIdGOMOPgWOjds2MBiQ2C0Vp4g870WL2dUqX7eBHd
 newIFkB/8i7MLj+Ymx4EpjerB2CGck+0/O25qPRrD2J2AkdNgHz6CWn1rjV21CrK
 6JnrQkPQAa59dOQbCaES+dOmJfzcNHHWTagqlW9G5ygmuC9r85I/2dPwANL6ZFew
 ==
X-ME-Sender: <xms:QX-EXhHqNQknuazhU5I68gEAkPc9SbflPSzdBGnnAMOLXIVF0WE2YA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrtddvgdeggecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtudenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucffohhmrghinh
 epsghoohhtlhhinhdrtghomhenucfkphepledtrdekledrieekrdejieenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrh
 hnohdrthgvtghh
X-ME-Proxy: <xmx:QX-EXsfSdt-YHLQSsrfQjs9Ge12c5_QzhaXDt80sVPRiQfigK7DTGg>
 <xmx:QX-EXpo6nJJPz95tFzocJgEvcTkUbdQrCibVIUSmvHnK7KNekLyiww>
 <xmx:QX-EXhHluysXnI-Om-O5wJ0-xVxEpnNKw5h5cZgFRafgogs5inllXw>
 <xmx:RH-EXmAZuQv1FKx3Be5DtssKBU7zJB7u-16kopLbrCB7b575uWYVXA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id B92E3328005E;
 Wed,  1 Apr 2020 07:47:12 -0400 (EDT)
Date: Wed, 1 Apr 2020 13:47:10 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Joerg Roedel <joro@8bytes.org>
Subject: Re: [PATCH v2 2/4] iommu: Add Allwinner H6 IOMMU driver
Message-ID: <20200401114710.doioefzmjhte7jwu@gilmour.lan>
References: <cover.a31c229a83f1d92e6928ae2adb70887da0fd44b3.1582222496.git-series.maxime@cerno.tech>
 <6864f0f28825bb7a2ec1c0d811a4aacdecf5f945.1582222496.git-series.maxime@cerno.tech>
 <20200302153606.GB6540@8bytes.org>
MIME-Version: 1.0
In-Reply-To: <20200302153606.GB6540@8bytes.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_044721_969016_8C46BD92 
X-CRM114-Status: GOOD (  18.82  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.26 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 iommu@lists.linux-foundation.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0292353365353097315=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0292353365353097315==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="wkli2gubbmrrppjy"
Content-Disposition: inline


--wkli2gubbmrrppjy
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi J=F6rg,

Thanks for your review, I'll fix the issues you pointed out and I left
out.

On Mon, Mar 02, 2020 at 04:36:06PM +0100, Joerg Roedel wrote:
> On Thu, Feb 20, 2020 at 07:15:14PM +0100, Maxime Ripard wrote:
> > +struct sun50i_iommu_domain {
> > +	struct iommu_domain domain;
> > +
> > +	/* Number of devices attached to the domain */
> > +	refcount_t refcnt;
> > +
> > +	/* Lock to modify the Directory Table */
> > +	spinlock_t dt_lock;
>
> I suggest you make page-table updates lock-less. Otherwise this lock
> will become a bottle-neck when using the IOMMU through DMA-API.

As far as I understand it, the page table can be accessed concurrently
since the framework doesn't seem to provide any serialization /
locking, shouldn't we have some locks to prevent concurrent access?

> > +
> > +static int sun50i_iommu_map(struct iommu_domain *domain, unsigned long=
 iova,
> > +			    phys_addr_t paddr, size_t size, int prot, gfp_t gfp)
> > +{
> > +	struct sun50i_iommu_domain *sun50i_domain =3D to_sun50i_domain(domain=
);
> > +	struct sun50i_iommu *iommu =3D sun50i_domain->iommu;
> > +	u32 pte_index;
> > +	u32 *page_table, *pte_addr;
> > +	unsigned long flags;
> > +	int ret =3D 0;
> > +
> > +	spin_lock_irqsave(&sun50i_domain->dt_lock, flags);
> > +	page_table =3D sun50i_dte_get_page_table(sun50i_domain, iova, gfp);
> > +	if (IS_ERR(page_table)) {
> > +		ret =3D PTR_ERR(page_table);
> > +		goto out;
> > +	}
> > +
> > +	pte_index =3D sun50i_iova_get_pte_index(iova);
> > +	pte_addr =3D &page_table[pte_index];
> > +	if (sun50i_pte_is_page_valid(*pte_addr)) {
>
> You can use unlikely() here.
>
> > +		phys_addr_t page_phys =3D sun50i_pte_get_page_address(*pte_addr);
> > +		dev_err(iommu->dev,
> > +			"iova %pad already mapped to %pa cannot remap to %pa prot: %#x\n",
> > +			&iova, &page_phys, &paddr, prot);
> > +		ret =3D -EBUSY;
> > +		goto out;
> > +	}
> > +
> > +	*pte_addr =3D sun50i_mk_pte(paddr, prot);
> > +	sun50i_table_flush(sun50i_domain, pte_addr, 1);
>
> This maps only one page, right? But the function needs to map up to
> 'size' as given in the parameter list.

It does, but pgsize_bitmap is set to 4k only (since the hardware only
supports that), so we would have multiple calls to map, each time with
a single page judging from:
https://elixir.bootlin.com/linux/latest/source/drivers/iommu/iommu.c#L1948

Right?

> > +
> > +	spin_lock_irqsave(&iommu->iommu_lock, flags);
> > +	sun50i_iommu_tlb_invalidate(iommu, iova);
> > +	spin_unlock_irqrestore(&iommu->iommu_lock, flags);
>
> Why is there a need to flush the TLB here? The IOMMU-API provides
> call-backs so that the user of the API can decide when it wants
> to flush the IO/TLB. Such flushes are usually expensive and doing them
> on every map and unmap will cost significant performance.

The vendor driver was doing something along those lines and I wanted
to be conservative with the cache management if we didn't run into
performances issues, but I'll convert to the iotlb callbacks then.

Thanks!
Maxime

--wkli2gubbmrrppjy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXoR/PgAKCRDj7w1vZxhR
xXYcAP9XP4UWx0kXtAQTYqdIWRlCTg8pxpjxM8WaKIB8gOyhYgEAiHCVIjMhfPHb
AFvK77mHDrT+707jO5g009pboY09zQ0=
=okO0
-----END PGP SIGNATURE-----

--wkli2gubbmrrppjy--


--===============0292353365353097315==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0292353365353097315==--

