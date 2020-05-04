Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30D7B1C3897
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 13:50:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/weQTCVbMCg4qSpxbse4VWW+u9cD1zd4fZUfchwnQ2M=; b=g0Bc0dgqDLog4T1aLJsu5EWKH
	GzPh8XWJ3Lueisq+yPaRvjPyvVeLZoXTHaIMdxjerkhO5rqUK5+nIGXNQTd+VtGV3922KDCcnvyg3
	TAqjIbfUr3l4B+40Oly8H2tVYoHeyCauPoglFQG1y5bZyfNxlJzKdyztY8oNG+eoQXtFiAQLH5wos
	D0pzXDwZMF0P3U+9F2Ph5Yisv57UKEMMy9N6Toe7g6SKM3AQRbwYJdcmyAU4J9cAZjTSRnquiDZqZ
	Rbie46b/S346OFQ8KzKkROhvWBWef1AOh045Gj8ZX5mzDlauhYnPaiKUDnhvb0Y417p4enIXQi5rU
	m8OWuH40g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVZbj-0004sT-6Y; Mon, 04 May 2020 11:49:59 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVZbX-0004rY-J9
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 11:49:48 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id 3981A4CF;
 Mon,  4 May 2020 07:49:42 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Mon, 04 May 2020 07:49:43 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=aOCT64fzRTmG4hyK09D049RH30r
 n+qDts7It4/KOpcw=; b=Xop4FSffBO5zPQWboSBJoIVL99fcew62F8kVEboByJb
 ih8r1bYUKw7YiD64gZsWfkkMNsDGXTLIGvLn95lzicdDrC3RO4kBy83Ndt8oIeQI
 HM10Jzb+G2a+8IbAE5M9ASkcLW4w1x6YdJXZy0qSiTAE8hhXv4U5yKA378qLX1Mg
 duDR2jphm8e6a/VkviGze5E54NibDT6xrrHCucD8ocSDlsgYAANgymJB++H8NAY0
 11qBzivJG74Hv8m2dfSxNEH6oum5Tgs4eDPW7tozrNJls3HLz/4JeuAV5Cl6aMyD
 r22Ctofw7ZUQb3uDEXLnb4/QIyRnWOdXIFVy+IgerrA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=aOCT64
 fzRTmG4hyK09D049RH30rn+qDts7It4/KOpcw=; b=MgAol9a9iOT6/SQVVl2s6D
 YknxToOieqpigwcA5LkzShBpmVUe1CN3Ui5kYYkURW1XOagweviNczltlJVwqH4X
 7agWVf5rRY907nDHYoplL1QrA25L08e0ZliRdCuhYHFva4ZmgukLxrSqnDofl3iu
 9+j6g5LxCiljuil2apQqr2Hx3e/1kcZm4bSpmYymXTMvhxK7mGorwt0tBELAkKEk
 Gnvq3IaIHMbuL2r3YdZsSBHZanSqceiwPWdKW8asFzHd+SmtX8zjI8CRt+F9xy+/
 wQVkWiK7D1L7jD1edc6GfWW5JnIGnSe3raDjoDO83ORBONHD+oRzejBCMURf5E3Q
 ==
X-ME-Sender: <xms:UAGwXnVO2uNlwtwakKb3U_PiozgjurcVPSwxcYqwBVIp35VxxGX52Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrjeeggdegudcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
 gvrhhnpeelkeeghefhuddtleejgfeljeffheffgfeijefhgfeufefhtdevteegheeiheeg
 udenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurf
 grrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:UAGwXnPWp-rZzUergCxnLRMkziO5ajExGkJwWx8c4_bibVGbJNqmpQ>
 <xmx:UAGwXqyvgHDjoEGtvJYcaNnZ9YPBY195Ex7i60ZS45PdeCWV9IPOMQ>
 <xmx:UAGwXs1BVi9I8EH6c_8sMMaRlweb8W7n3LyCijpN74pePj5amw_Gpg>
 <xmx:VQGwXnDK4M4__YVgPiyuuxi__3yCtYPF-bsAYJo9j9Qmb2UQXSqXWDequDo>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 786A13280065;
 Mon,  4 May 2020 07:49:36 -0400 (EDT)
Date: Mon, 4 May 2020 13:49:34 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] sun6i: dsi: fix gcc-4.8
Message-ID: <20200504114934.4at4qymeinzhntia@gilmour.lan>
References: <20200428215105.3928459-1-arnd@arndb.de>
MIME-Version: 1.0
In-Reply-To: <20200428215105.3928459-1-arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_044947_682318_BBFEDE00 
X-CRM114-Status: UNSURE (   8.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.17 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Samuel Holland <samuel@sholland.org>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Jagan Teki <jagan@amarulasolutions.com>, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel@lists.infradead.org, Icenowy Zheng <icenowy@aosc.io>
Content-Type: multipart/mixed; boundary="===============1388722877505508697=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1388722877505508697==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="36sp7fcv334ahfch"
Content-Disposition: inline


--36sp7fcv334ahfch
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 28, 2020 at 11:50:51PM +0200, Arnd Bergmann wrote:
> Older compilers warn about initializers with incorrect curly
> braces:
>=20
> drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c: In function 'sun6i_dsi_encoder_en=
able':
> drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c:720:8: error: missing braces aroun=
d initializer [-Werror=3Dmissing-braces]
>   union phy_configure_opts opts =3D { 0 };
>         ^
> drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c:720:8: error: (near initialization=
 for 'opts.mipi_dphy') [-Werror=3Dmissing-braces]
>=20
> Use the GNU empty initializer extension to avoid this.
>=20
> Fixes: bb3b6fcb6849 ("sun6i: dsi: Convert to generic phy handling")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Applied, thanks!
Maxime

--36sp7fcv334ahfch
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXrABTgAKCRDj7w1vZxhR
xZceAQDWqA1wYrHG+lfIkDwv2IQjgIb1xdlrOwmPCXTqeewZ4QD/RSluDlNXx9Qq
blYGsMP6amEH5VFu2RqHB3ZCV33Kbw0=
=M2L1
-----END PGP SIGNATURE-----

--36sp7fcv334ahfch--


--===============1388722877505508697==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1388722877505508697==--

