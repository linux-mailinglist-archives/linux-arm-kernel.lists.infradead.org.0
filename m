Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 094191D16FD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 16:05:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LGxRpC9UukpQsDabzFt/f2/1g+a+PdslQe6szbYmGKY=; b=Qzpd+k4bfZRIyQD4YF8KjRUvN
	LGYdpPEhrVrxLuLvIiChUXzQaoVmu9i6LQQyZUbgfHwsPpqwWFLw7YQ8jL9jvwQmG+0vju8rETR+M
	jdVyerK6lPTEBh+s0F6TFAUHbIPlwQabBv8zROpqjinjlSg1zmrJ0puOVD2w+lBG3IswSLnz3Ky3Z
	chTXTzKsmG4NL0gVHXbUhXyyA556/BoPL5D3NNWxxJp/gAYqfHYA5SztQ0ZgLyRxeQNsWYjITQKSK
	e1L9dri82a7EkHs2CMrgY6oPJr8nZho+cBfMRoaV7ZxZrGkLV6tQFrJLpW7ajMbNLivrwFn5i4+sQ
	s88VCL1Jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYs0X-0001N4-17; Wed, 13 May 2020 14:05:13 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYrzc-0000xC-9T
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 14:04:28 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id C01175C01DB;
 Wed, 13 May 2020 10:04:12 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 13 May 2020 10:04:12 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=rucgadYP+zr7hZmIV0f/NYqhGDe
 nFVL4g5CHka+BybE=; b=asBCszVu7JixrlcUxaFhjWwT5wPSEHdlLvy8MlaEla7
 5KlD6BYaYH9n8waH6sa0uN+g2LH/XTl6OHGoY1aIXtera2y7CUYiBeu/jeRoNkXM
 qD0LoAbI/ZTH5UMwGbcV0TQewZWfRkV/BaqZ5BufEM6sApOzoON6DFRAMkBtNXWV
 S5JpCQRV8Xqq1ejY0GbPhAT1IYfw3DxfGe+6TrsJujSGefSfrQBwFd8Z6zs5Dtrj
 BrEnK9KgyeW4D75ojojgjQFvG5IHVhpSYLdjcbzsfE/bGwgzx4GSpdGLdlejxvLB
 1KaDbwaIOpcSdbXwnqT1Pzp6QZuavm8zgznLZQgCT5g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=rucgad
 YP+zr7hZmIV0f/NYqhGDenFVL4g5CHka+BybE=; b=p+8OmjbkmXLAIG6ZFkkC52
 svv0AwclhZJMQb80RgxwbDj0sDh5bEIUZ58h9ryfuBLMXIJbetsaXPnBjQdnSKIR
 9Dy6yHPVz07Qs1Q0xB7lBS4iU1zmZva4MI9AqLYHuea8XvC9+67HuEzY6e9ElxuI
 BByAd27dLHBNix7++cVuWSYCve0Nuw6rt/m0jfsKveuZoKk8PNFuodRtLUFIQekL
 L0cpXWwa9OiBj6SRFsjGkWGlgNoRS5qRrGf0j4d84Fb/y0QnemSOw+dhifqJymPq
 fUu4V5E50dIUtYVccDmNRiH7HhMqeDNLXrTKH0kMgQrLWEuQLZF1GcYgfd0bkzfA
 ==
X-ME-Sender: <xms:W_67Xi04sx-GwCW9d6QCEpBBGI4I1wjOLe195cXeA99yJdXRP8V0tA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrleeggdejudcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtudenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
 gvrhhnpeduvdduhfekkeehgffftefflefgffdtheffudffgeevteffheeuiedvvdejvdfg
 veenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurf
 grrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:W_67XlF1OZs-ResO-N4Bsww2WlZkPsVyFUT2sJxuN4akDnFPQMV1tA>
 <xmx:W_67Xq4R6hJEM6ZvxoLsVyYFY0k8lcbcc7MKJUzIH2Nsg5CC5B-CuQ>
 <xmx:W_67Xj1H1842fQeXlTO2UpVkQUnQbHcnwAD1mwlISTuW8g-G4LxGng>
 <xmx:XP67XpgxPZOymfF-wrLVs3yueOPtnIPptY5_WEVgAzd1e3yQ-8Rxzw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 360CB3280063;
 Wed, 13 May 2020 10:04:11 -0400 (EDT)
Date: Wed, 13 May 2020 16:04:09 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Joerg Roedel <joro@8bytes.org>
Subject: Re: [PATCH v3 3/5] iommu: Add Allwinner H6 IOMMU driver
Message-ID: <20200513140409.lwyusjelp3zg6x34@gilmour.lan>
References: <cover.70f96f9afd2e04161ebece593ae6cd7e17eca41b.1588673353.git-series.maxime@cerno.tech>
 <dcccd40c46982b6ab2fc1c5bc199d045798fbe8e.1588673353.git-series.maxime@cerno.tech>
 <20200513095304.GK9820@8bytes.org>
MIME-Version: 1.0
In-Reply-To: <20200513095304.GK9820@8bytes.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_070416_785606_FB550CEF 
X-CRM114-Status: GOOD (  17.72  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.29 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.29 listed in wl.mailspike.net]
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
Content-Type: multipart/mixed; boundary="===============3126778705603851742=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3126778705603851742==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7cwu37v5te4qr6u5"
Content-Disposition: inline


--7cwu37v5te4qr6u5
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi J=F6rg,

On Wed, May 13, 2020 at 11:53:04AM +0200, Joerg Roedel wrote:
> On Tue, May 05, 2020 at 12:09:32PM +0200, Maxime Ripard wrote:
> > +static u32 *sun50i_dte_get_page_table(struct sun50i_iommu_domain *sun5=
0i_domain,
> > +				      dma_addr_t iova, gfp_t gfp)
> > +{
> > +	struct sun50i_iommu *iommu =3D sun50i_domain->iommu;
> > +	unsigned long flags;
> > +	u32 *page_table;
> > +	u32 *dte_addr;
> > +	u32 old_dte;
> > +	u32 dte;
> > +
> > +	dte_addr =3D &sun50i_domain->dt[sun50i_iova_get_dte_index(iova)];
> > +	dte =3D *dte_addr;
> > +	if (sun50i_dte_is_pt_valid(dte)) {
> > +		phys_addr_t pt_phys =3D sun50i_dte_get_pt_address(dte);
> > +		return (u32 *)phys_to_virt(pt_phys);
> > +	}
> > +
> > +	page_table =3D sun50i_iommu_alloc_page_table(iommu, gfp);
> > +	if (IS_ERR(page_table))
> > +		return page_table;
> > +
> > +	dte =3D sun50i_mk_dte(virt_to_phys(page_table));
> > +	old_dte =3D cmpxchg(dte_addr, 0, dte);
> > +	if (old_dte) {
> > +		phys_addr_t installed_pt_phys =3D
> > +			sun50i_dte_get_pt_address(old_dte);
> > +		u32 *installed_pt =3D phys_to_virt(installed_pt_phys);
> > +		u32 *drop_pt =3D page_table;
> > +
> > +		page_table =3D installed_pt;
> > +		dte =3D old_dte;
> > +		sun50i_iommu_free_page_table(iommu, drop_pt);
> > +	}
> > +
> > +	sun50i_table_flush(sun50i_domain, page_table, PT_SIZE);
> > +	sun50i_table_flush(sun50i_domain, dte_addr, 1);
> > +
> > +	spin_lock_irqsave(&iommu->iommu_lock, flags);
> > +	sun50i_iommu_ptw_invalidate(iommu, iova);
> > +	spin_unlock_irqrestore(&iommu->iommu_lock, flags);
>=20
> Why is that needed, does the PTW also cache non-present entries?

The documentation is pretty sparse, so I was conservative again. I've remov=
ed it
and it seems to be working fine in all the cases I could test, so I guess w=
e're
fine without it :)

> > +static int sun50i_iommu_add_device(struct device *dev)
> > +{
> > +	struct sun50i_iommu *iommu;
> > +	struct iommu_group *group;
> > +
> > +	iommu =3D sun50i_iommu_from_dev(dev);
> > +	if (!iommu)
> > +		return -ENODEV;
> > +
> > +	group =3D iommu_group_get_for_dev(dev);
> > +	if (IS_ERR(group))
> > +		return PTR_ERR(group);
> > +
> > +	iommu_group_put(group);
> > +
> > +	return 0;
> > +}
> > +
> > +static void sun50i_iommu_remove_device(struct device *dev)
> > +{
> > +	iommu_group_remove_device(dev);
> > +}
>=20
>=20
> These two call-backs have been renamed in the iommu-tree to
> probe_device() and release_device() with slightly different semantics
> and function signatures. I think for this driver they should look like
> this:
>=20
> 	static struct iommu_device *sun50i_iommu_probe_device(struct device *dev)
> 	{
> 		struct sun50i_iommu *iommu;
>=20
> 		iommu =3D sun50i_iommu_from_dev(dev);
> 		if (!iommu)
> 			return ERR_PTR(-ENODEV);
>=20
> 		return &iommu->iommu;
> 	}
>=20
> 	static void sun50i_iommu_release_device(struct device *dev)
> 	{
> 	}
>=20
> Can you pleas rebase these patches to the 'core' branch of the
> iommu-tree and use these new call-backs?
>=20
> The rest of your driver looks good to me. Good work!

I've rebased it on next, and it indeed works with your suggestion. I'll res=
end a
new version in a short while.

Thanks!
Maxime

--7cwu37v5te4qr6u5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXrv+WAAKCRDj7w1vZxhR
xYrBAQC+YD0NIkjHgPwj+G0aUBaG4DNhly5cY51+A2aK5pgoWgD9FwowBSMX4Hz7
OopK7521Lh6pGDcHqsKXkSKPHblwZwo=
=joor
-----END PGP SIGNATURE-----

--7cwu37v5te4qr6u5--


--===============3126778705603851742==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3126778705603851742==--

