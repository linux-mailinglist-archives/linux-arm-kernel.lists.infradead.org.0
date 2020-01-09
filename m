Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC83E136007
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 19:16:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gvldH64JjL97UejPheYQh/DK3j9qJaJapC7gQ/xPLCQ=; b=b1NeybIEWHeXjRCjKvJfy4sL/
	fLTuSlZKr15DVlBUdP1LjMk57KiJGDBDXlOKHiyplsPr6fs5xerJyd4vEcfVpQNXjwoLcB0qH09qj
	OUue5oahTS+HY9rDcDwqnJ011zhVWACj5TkutKin0PkexZE7yPO5sJQLx3ClGWMBUfR2GFx1Jbiwb
	c9ancGsn4K/E5HumXjEtGAB4pL/mEMPxu5fPI/XhZAvt48layI87bABKeLpoiCJ7/WcH1VIpV2dC8
	4Wxz50hBdbNy+hDvniOZTqB/1UvGFmn0FD1G5y1LLLVKtyzjpxKpm636hlY+oSxn4zEIDYn297BlN
	5lt+lbOZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipcMN-0006Fn-5y; Thu, 09 Jan 2020 18:16:43 +0000
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipcM1-000637-O3
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 18:16:24 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 43334210A8;
 Thu,  9 Jan 2020 13:16:15 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Thu, 09 Jan 2020 13:16:15 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=CbN+aorqONlbNELTtzuFbMg82bT
 FrQhC2jY+npe1Wp0=; b=ZjvHJYte5rlBUTqY86HTtTUqFU/uBMc1H38xTD1JY+r
 RyahX5bGbyuzmMfeS+rMYfdjrKwcxVz0sVMWLAVlV62+RJfgnyZpK86x5cc+X0Pw
 kmfp8yU5AJbKeTEOPIgDEezXj32EvsmkTh98z/E2MAePu46+b7vpOU4a5Xm7kmAt
 3cFPXo/Na761x8jGhBXghEDcotWrK41hftOn/U5AFCAiwrEOhFAZi+IeNKsrrf+y
 3tRgeDUHjt+tzKP8GQMxmGIjqiogwy+I5irS9gOcjJskHe9ew0hBPnM+iQyov7ox
 9FRdiogEyi8rgbGeOPzAnaKx7yQjy9CIgbq5g4mVxQA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=CbN+ao
 rqONlbNELTtzuFbMg82bTFrQhC2jY+npe1Wp0=; b=N5/yBo5ElOP7e22MM8iAii
 TjPxHNnJsZ2vq5tV/mnaEyv0c6iVFjfLa9m5fYbv36hdvTvmvtemK3oqzS6fsyiI
 7Y4XkyBP16Yyvn/CXZ8/NPgfML3i9E3NEt+weU7dAtFiv+6I1baTeCZjwwEJCuIv
 dBc4TjV6+mtQIlx1Gt8Ljif0V/RCVxSYbHSzh0aYE5TcASKKL5cYsXmyzDVtDDhK
 lZFqTZTAs1vTLnBde/7vOId3ZaN1IhKiyQDrX9zdMzyYs/GRd/+1wGZw7IwDEOxE
 /XTuh6arz5Ypo79STZGn2RqYcFO4kZBfIuJAWaLA6DkFlCpuU+QuIUWcwhTcvEjQ
 ==
X-ME-Sender: <xms:7W0XXq4JZlKQg9UyLGlgSCWmKSh9QDhMmtS4kpb5dJKFiAOKShvJcQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvdeiuddgjeehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltd
 drkeelrdeikedrjeeinecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggv
 rhhnohdrthgvtghhnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:7W0XXqxXNDejsd4ZTAy8NbX5vFSpt5x3hspiSfG1CYysDGLq7a7EqQ>
 <xmx:7W0XXvv9MLFiarnDcjPlKborLkbC139OjjHWwa8dDp2OC5RsJgLH8g>
 <xmx:7W0XXnj3Tq9wDrhNoHK73CcAWTy9sxExJ1kjfH6rz2Y1KagIJ0MuNQ>
 <xmx:720XXpD_2WYgiAVApUtZOQdleyS15OTvMLAG8a8s468PYu0EYMRwxA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id CCFE880059;
 Thu,  9 Jan 2020 13:16:12 -0500 (EST)
Date: Thu, 9 Jan 2020 19:16:11 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v3 1/4] dt-bindings: display: Convert Allwinner display
 pipeline to schemas
Message-ID: <20200109181611.mtzoa4blgarjjv3u@gilmour.lan>
References: <20200103152801.47254-1-maxime@cerno.tech>
 <CAL_Jsq+nVOb5+yg=bOJMyOocJD6kst0BX7NGhZepNtm_B_35ow@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAL_Jsq+nVOb5+yg=bOJMyOocJD6kst0BX7NGhZepNtm_B_35ow@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_101622_146087_31626589 
X-CRM114-Status: GOOD (  15.75  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.28 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.28 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Sean Paul <seanpaul@chromium.org>,
 Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============0435549506591969581=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0435549506591969581==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="j3z6fbcbzqyag56m"
Content-Disposition: inline


--j3z6fbcbzqyag56m
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Jan 09, 2020 at 11:14:26AM -0600, Rob Herring wrote:
> On Fri, Jan 3, 2020 at 9:28 AM Maxime Ripard <maxime@cerno.tech> wrote:
> >
> > The Allwinner SoCs have a display engine composed of several controllers
> > assembled differently depending on the SoC, the number and type of output
> > they have, and the additional features they provide. A number of those are
> > supported in Linux, with the matching bindings.
> >
> > Now that we have the DT validation in place, let's split into separate file
> > and convert the device tree bindings for those controllers to schemas.
> >
> > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> >
> > ---
> >
> > Changes from v2:
> >   - Changed a number of maxItems to minItems to make more sense
> >   - Fixed a few enum that were improperly declared. This raised a bunch of
> >     warnings that were unnoticed before. Fixed them.
> >   - Added an if clause to the HDMI PHY binding to check the number of clocks
> >
> > Changes from v1:
> >   - Declare the ports in the bindings
> > ---
> >  .../allwinner,sun4i-a10-display-backend.yaml  | 291 ++++++++
> >  .../allwinner,sun4i-a10-display-engine.yaml   | 114 +++
> >  .../allwinner,sun4i-a10-display-frontend.yaml | 138 ++++
> >  .../display/allwinner,sun4i-a10-hdmi.yaml     | 183 +++++
> >  .../display/allwinner,sun4i-a10-tcon.yaml     | 676 ++++++++++++++++++
> >  .../allwinner,sun4i-a10-tv-encoder.yaml       |  62 ++
> >  .../display/allwinner,sun6i-a31-drc.yaml      | 138 ++++
> >  .../allwinner,sun8i-a83t-de2-mixer.yaml       | 118 +++
> >  .../display/allwinner,sun8i-a83t-dw-hdmi.yaml | 273 +++++++
> >  .../allwinner,sun8i-a83t-hdmi-phy.yaml        | 117 +++
> >  .../display/allwinner,sun8i-r40-tcon-top.yaml | 382 ++++++++++
> >  .../display/allwinner,sun9i-a80-deu.yaml      | 133 ++++
> >  .../bindings/display/sunxi/sun4i-drm.txt      | 637 -----------------
> >  13 files changed, 2625 insertions(+), 637 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/display/allwinner,sun4i-a10-display-backend.yaml
> >  create mode 100644 Documentation/devicetree/bindings/display/allwinner,sun4i-a10-display-engine.yaml
> >  create mode 100644 Documentation/devicetree/bindings/display/allwinner,sun4i-a10-display-frontend.yaml
> >  create mode 100644 Documentation/devicetree/bindings/display/allwinner,sun4i-a10-hdmi.yaml
> >  create mode 100644 Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml
> >  create mode 100644 Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tv-encoder.yaml
> >  create mode 100644 Documentation/devicetree/bindings/display/allwinner,sun6i-a31-drc.yaml
> >  create mode 100644 Documentation/devicetree/bindings/display/allwinner,sun8i-a83t-de2-mixer.yaml
> >  create mode 100644 Documentation/devicetree/bindings/display/allwinner,sun8i-a83t-dw-hdmi.yaml
> >  create mode 100644 Documentation/devicetree/bindings/display/allwinner,sun8i-a83t-hdmi-phy.yaml
> >  create mode 100644 Documentation/devicetree/bindings/display/allwinner,sun8i-r40-tcon-top.yaml
> >  create mode 100644 Documentation/devicetree/bindings/display/allwinner,sun9i-a80-deu.yaml
> >  delete mode 100644 Documentation/devicetree/bindings/display/sunxi/sun4i-drm.txt
>
> Reviewed-by: Rob Herring <robh@kernel.org>

Thanks!

I just applied it to drm-misc-next

Maxime

--j3z6fbcbzqyag56m
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXhdt6gAKCRDj7w1vZxhR
xRPUAP9QTaAbDexzbjQkoJEbJpQCVsHu/4B3Wcfs4bFHWzwMDgD/XUI818zx8e57
WeuVcrVDKdl1BAYRxaJaoUVoyCf93gQ=
=xVWT
-----END PGP SIGNATURE-----

--j3z6fbcbzqyag56m--


--===============0435549506591969581==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0435549506591969581==--

