Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09A4B1D3663
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 18:23:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PbJFZnJOkzMagKzA6Pt2rpGIspbXWzovVXwwh9ZrPmI=; b=PdRpTg567GcgmKULx5MpvZ0gD
	VCQp9JQORYbUQEqzqb6ZDWPIXnVw9kb8yO864lFhjBMb+4EDQnViU4A3XM2yy3T7bL6o0u7dY3mdG
	8ahfa0NNlgFiDSNsai9DMRiiON+OyowuS2Kx/vyXg8GNrTT+5cGE7v826klSyQlSWcAvFb19telJB
	0Gy843idgjxEuanWf/YXy4F5hWslXntBske/jJUyQia8oJLwae4OfhRCsnsyFtaGsuJtl0RwQyO/a
	8HsotZXUfwxlOXew9WsVHuga73dwcc4oMQiu0Uqe6ZP3E5lwxtVTckIH0WRl4h5nGrdPG6IkFT535
	YmcSHzA7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZGdd-0005vt-MV; Thu, 14 May 2020 16:23:13 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZGdB-0005qd-GU
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 16:22:50 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 963665C0212;
 Thu, 14 May 2020 12:22:42 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Thu, 14 May 2020 12:22:42 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=BBAPlSEHy7qfk456tIvoxyLmZFq
 Ly4UcCnDWEG14lto=; b=Yl/aIKqo4MPIc7QpZmLqew2xx3UMNUzD9BV+J+dmaOQ
 y2UQEJLuUAMouu92M3NUxkyMUMrAkcZxbu6eGRFmQsyEKTyTrudQ8j1QWzTg6ley
 uwky1kRZW7lyxLHTpEls3IwIn/l0Iif3xhcrkhyhl4JcClGUfM4ZQyJo8ktRBY2a
 TiQ7zDyRRrYDdstZPLhTO42CngCXE1WSrAkjS91b+HpAc3M4MYNK4fVtcEW2MTkC
 rcv/7kSZD7FjwP9fNsZ/yBVwP4q2b7A9J6UnIKAoJtc20ZXnEjONDJvu5MDo5GWq
 Z8kyYIxQKc5B9A5cYYeytdN8ZtfgN/MrY6fKPXXXtzQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=BBAPlS
 EHy7qfk456tIvoxyLmZFqLy4UcCnDWEG14lto=; b=WOtOzTtkbEXrlLfpeXbIY4
 4sB3pcXdz+ovlZEpBIeYHiarKEKF9SzbbLqpztSi0ZrSqrv4vjMrp+Z8u92sU4En
 C8o3muOawFpn4+5vjPdC4NkgfstnrhYDl59wNrTerIgFY568s59hkHIMWfmrKQcb
 b/mKZN82qsibYCn/E/FlBx4xiHKlFDX5MwX+ExvAnSLeVkb3f2NOZda+/mGnpVOw
 uNclSAh1q5wC4yjHm3PKQI2+0k1CItr86CsuLl+PuGnmtt5XpzvjYPYA84IHRtXN
 5lJAxs1YUYNlRGRuIcDGtChpR86NCAw45pUjZ9LnnzhseS0ULx5Y8Mycnh2yQfxg
 ==
X-ME-Sender: <xms:TXC9XpNDVcPyn68f-ks293yeNgPlPtzPyxTObRAoI-egFr8qGIep2w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrleeigdelvdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
 gvrhhnpeelkeeghefhuddtleejgfeljeffheffgfeijefhgfeufefhtdevteegheeiheeg
 udenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurf
 grrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:TXC9Xr_zfdP2leqWlSrUsY3yr_xIyeKY4qRFd6UK5n_0lueJrD8ioQ>
 <xmx:TXC9XoS6EoMGVFTa-s3BvO_emvkjxtlMuKwKEmfImqsXxWpTZ_UHYQ>
 <xmx:TXC9XltuH1G-4lKs5iO5viP83uvaV7km3tzxKbpNBs0cVwYsrJBtfw>
 <xmx:UnC9Xo5iA9Nm8bC-KW7sn6PAEqC6Vm78k-mxEydZzCz8egtAj7uMNw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 2D873328005A;
 Thu, 14 May 2020 12:22:37 -0400 (EDT)
Date: Thu, 14 May 2020 18:22:35 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Joerg Roedel <joro@8bytes.org>
Subject: Re: [PATCH v4 0/5] iommu: Add Allwinner H6 IOMMU driver
Message-ID: <20200514162235.he2q7vx3dra5ck2l@gilmour.lan>
References: <cover.b27dedd61e008ffcf55a028ccddda3bb4d21dfc8.1589378833.git-series.maxime@cerno.tech>
 <20200514123855.GI18353@8bytes.org>
 <20200514130900.k4gvr3zcajg3rouc@gilmour.lan>
 <20200514131647.GK18353@8bytes.org>
MIME-Version: 1.0
In-Reply-To: <20200514131647.GK18353@8bytes.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_092245_935129_21FF4A2B 
X-CRM114-Status: GOOD (  15.42  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.26 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: multipart/mixed; boundary="===============6872174411210302755=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6872174411210302755==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="phtkiivizeocuqcp"
Content-Disposition: inline


--phtkiivizeocuqcp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, May 14, 2020 at 03:16:47PM +0200, Joerg Roedel wrote:
> On Thu, May 14, 2020 at 03:09:00PM +0200, Maxime Ripard wrote:
> > On Thu, May 14, 2020 at 02:38:55PM +0200, Joerg Roedel wrote:
> > > On Wed, May 13, 2020 at 04:07:19PM +0200, Maxime Ripard wrote:
> > > > Maxime Ripard (5):
> > > >   dt-bindings: iommu: Add Allwinner H6 IOMMU bindings
> > > >   dt-bindings: display: sun8i-mixer: Allow for an iommu property
> > > >   iommu: Add Allwinner H6 IOMMU driver
> > > >   arm64: dts: allwinner: h6: Add IOMMU
> > > >   drm/sun4i: mixer: Call of_dma_configure if there's an IOMMU
> > >=20
> > > Applied all to the IOMMU tree, thanks. The code lives in the
> > > arm/allwinner branch.
> >=20
> > Did you also merge the DTS and DRM patches?
> >=20
> > Ideally, they should be merged through other trees to avoid the conflic=
ts as
> > much as possible (arm-soc and drm-misc respectively).
> >=20
> > If it's an option, could you drop all of them but "dt-bindings: iommu: =
Add
> > Allwinner H6 IOMMU bindings" and "iommu: Add Allwinner H6 IOMMU driver"?
>=20
> Okay, just to be on the safe side, I am going to drop:
>=20
> 	dt-bindings: display: sun8i-mixer: Allow for an iommu property
> 	arm64: dts: allwinner: h6: Add IOMMU
> 	drm/sun4i: mixer: Call of_dma_configure if there's an IOMMU
>=20
> from the iommu-tree?

Yep, please :)

> I took them because you are also maintaining the DRM driver, which
> counted as an implicit ACK for me :)

I also maintain the DTS patches for that matter, but we have a good number =
of
patches queued up for those files in those trees usually, so it's easier for
everyone to avoid the conflicts and just merge them into separate trees whe=
n we
can.

Thanks!
Maxime

--phtkiivizeocuqcp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXr1wSgAKCRDj7w1vZxhR
xQ1UAP9NNM9p3Y+kfFB3QB7uFNTQoj45RAJZ4+7liXO1OnMMYQD9FQkWyw3VFTeT
i82PNurLgs71brOZ1Qfwy2UAvsBU8QE=
=thRW
-----END PGP SIGNATURE-----

--phtkiivizeocuqcp--


--===============6872174411210302755==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6872174411210302755==--

