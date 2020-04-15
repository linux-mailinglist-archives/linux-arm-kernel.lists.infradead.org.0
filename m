Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CC8A1A9A06
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 12:10:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8Las3Li3ZaI3TyDSNhYjlMwi2HupBenyAcM2922/+r4=; b=PscY1zQ+wfRcSlsoCh4/efV3U
	OFObkf0WntfNyZwFiVIqbNZY6P1WypUqjjwlr/XQlAW0WYgcFfR1nWTr1yDkUty2eIjdysOEaIjs9
	oDmR6i4wMO6lZUP2ekMB3EVwW2xKPjKrqqXy0AG8nvau0Z88R0Fl62N1VkXQJK+rFYSmpy72uFuLv
	ViqSP+H+v40njC0EFvE2wAnkH8GxISAOsS/D/6lIdVAmziYIBT81sIQkgiydDYDnYVMsUE5TxGhsj
	4YsoZtOARq7N8RUSRxTLJThghPNNeGBbKoJbZmTTlrVg5BzNo33nmCrBxKdbrV7/dj+n88yaUZz+w
	+3Ux/4FSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOf08-0008Gv-H0; Wed, 15 Apr 2020 10:10:36 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOezo-0007Dj-RV
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 10:10:20 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 62196580375;
 Wed, 15 Apr 2020 06:10:13 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 15 Apr 2020 06:10:13 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=tiwnh7t3J9dCc6nvhOkiy49H6Ti
 N6hjDJXDgkFXp10U=; b=Ov/r13gv/FzeqiK7EXa2MVeWNvbtGoln8v1lZeNVTDo
 d/OBMcFNmf93rYl1dCE1+t8hxGIcBvwQn1digYa/muGYf7q0QPqzHkNxIrfTvAC5
 tOh+VmGGScNRPukR67X3s70Aaxb+m3l57KrJbUGZjPSpm1PHG5zaKEypCDS6Jzbf
 zcaXRlSFpb60fySXUEgbzV1gECrM87+2LNevWftl3sL0+W9p8Fhjx6MAEda4JGxo
 2jXL2xrhs95ybDu2qfjPAvTQtYXUljlb0vtPswczOxmkqAcFgD3JwLc6TChCwIum
 37fgD3VAhGbEFg2XQa1P7XfklKkVnMWkJL3YUqsc2TA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=tiwnh7
 t3J9dCc6nvhOkiy49H6TiN6hjDJXDgkFXp10U=; b=XCrhzL/Xe6ze4BgUhH61Sd
 8T4PZhQ5yllJD1PxNmKHkEWWP7xApPJG12ii/tljCURwuQeB1KjLvAxx6b8wXcqW
 9Gy47bQoLliDjRVR8/t7x3NnG4zsZ/cAnTOIBxhdc7KXJYLVYeNbWtzbieH2hiyw
 uPfCPPkRVoe+KFOvDrqzuE9uWqtGmHABy6xIM6h1jKLLKVelBWk9s11yjmRJVI6Y
 OcNkemPNftLCWhOaoPV3gFTaab8hRa+0Vd+EfjQyZbjY4u4sMOfWF+eKkHljqP1c
 9lM0B58UTX/I6NxoBLvbWMCYCs4aRH8IBRUxJOC5ewLgoFDHglS80fZvTNbdRmFQ
 ==
X-ME-Sender: <xms:gt2WXnImK0S9xi3AqSCkzOFDvgdNet3Kkr6Vn01_cxH_u_hDqsKq2w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrfeefgddugecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:gt2WXoiiH3RLarjfPLHQ89zKsXtEVIU2fDv1eDj90V1IMXnSM3kd3A>
 <xmx:gt2WXnDb4Hsh0ws82UIxfQqGZt0NnEmLFSogaEeqXcPk7GvYkVBJ2Q>
 <xmx:gt2WXq535ML7IV_YSCHAHCRK2WpKKG6MhBYv3IlvKdn-hD4R3r3gCg>
 <xmx:hd2WXrM1KZACbLXcsL4KatHHzZI3aT0OIxW_WxpKcDuk9zkIasNyaw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id D579F3280066;
 Wed, 15 Apr 2020 06:10:09 -0400 (EDT)
Date: Wed, 15 Apr 2020 12:10:08 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: "H. Nikolaus Schaller" <hns@goldelico.com>
Subject: Re: [PATCH v6 00/12] ARM/MIPS: DTS: add child nodes describing the
 PVRSGX GPU present in some OMAP SoC and JZ4780 (and many more)
Message-ID: <20200415101008.zxzxca2vlfsefpdv@gilmour.lan>
References: <cover.1586939718.git.hns@goldelico.com>
MIME-Version: 1.0
In-Reply-To: <cover.1586939718.git.hns@goldelico.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_031017_289394_EC32915D 
X-CRM114-Status: GOOD (  20.93  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, David Airlie <airlied@linux.ie>,
 James Hogan <jhogan@kernel.org>, dri-devel@lists.freedesktop.org,
 linux-mips@vger.kernel.org, Paul Cercueil <paul@crapouillou.net>,
 linux-samsung-soc@vger.kernel.org, letux-kernel@openphoenux.org,
 Paul Burton <paulburton@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Tony Lindgren <tony@atomide.com>, Chen-Yu Tsai <wens@csie.org>,
 Kukjin Kim <kgene@kernel.org>, devicetree@vger.kernel.org,
 =?utf-8?Q?Beno=C3=AEt?= Cousson <bcousson@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Philipp Rossak <embed3d@gmail.com>, openpvrsgx-devgroup@letux.org,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 Daniel Vetter <daniel@ffwll.ch>, kernel@pyra-handheld.com
Content-Type: multipart/mixed; boundary="===============7633244962054681475=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7633244962054681475==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="spbhycqlgpxqdc65"
Content-Disposition: inline


--spbhycqlgpxqdc65
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Wed, Apr 15, 2020 at 10:35:07AM +0200, H. Nikolaus Schaller wrote:
> * rebased to v5.7-rc1
> * added DTS for for a31, a31s, a83t - by Philipp Rossak <embed3d@gmail.com>
> * added DTS for "samsung,s5pv210-sgx540-120" - by Jonathan Bakker <xc-racer2@live.ca>
> * bindings.yaml fixes:
>   - added a31, a31
>   - fixes for omap4470
>   - jz4780 contains an sgx540-130 and not -120
>   - a83t contains an sgx544-115 and not -116
>   - removed "additionalProperties: false" because some SoC may need additional properties
>
> PATCH V5 2020-03-29 19:38:32:
> * reworked YAML bindings to pass dt_binding_check and be better grouped
> * rename all nodes to "gpu: gpu@<address>"
> * removed "img,sgx5" from example - suggested by Rob Herring <robh+dt@kernel.org>
>
> PATCH V4 2019-12-17 19:02:11:
> * MIPS: DTS: jz4780: removed "img,sgx5" from bindings
> * YAML bindings: updated according to suggestions by Rob Herring
> * MIPS: DTS: jz4780: insert-sorted gpu node by register address - suggested by Paul Cercueil
>
> PATCH V3 2019-11-24 12:40:33:
> * reworked YAML format with help by Rob Herring
> * removed .txt binding document
> * change compatible "ti,am335x-sgx" to "ti,am3352-sgx" - suggested by Tony Lindgren
>
> PATCH V2 2019-11-07 12:06:17:
> * tried to convert bindings to YAML format - suggested by Rob Herring
> * added JZ4780 DTS node (proven to load the driver)
> * removed timer and img,cores properties until we know we really need them - suggested by Rob Herring
>
> PATCH V1 2019-10-18 20:46:35:
>
> This patch series defines child nodes for the SGX5xx interface inside
> different SoC so that a driver can be found and probed by the
> compatible strings and can retrieve information about the SGX revision
> that is included in a specific SoC. It also defines the interrupt number
> to be used by the SGX driver.
>
> There is currently no mainline driver for these GPUs, but a project
> [1] is ongoing with the goal to get the open-source part as provided
> by TI/IMG and others into drivers/gpu/drm/pvrsgx.

Just a heads up, DRM requires an open-source user-space, so if your
plan is to move the open-source kernel driver while using the
closed-source library (as that page seem to suggest), that might
change a few things.

> The kernel modules built from this project have successfully
> demonstrated to work with the DTS definitions from this patch set on
> AM335x BeagleBone Black, DM3730 and OMAP5 Pyra and Droid 4. They
> partially work on OMAP3530 and PandaBoard ES but that is likely a
> problem in the kernel driver or the (non-free) user-space libraries
> and binaries.
>
> Wotk for JZ4780 (CI20 board) is in progress and there is potential
> to extend this work to e.g. BananaPi-M3 (A83) and some Intel Poulsbo
> and CedarView devices.

If it's not been tested on any Allwinner board yet, I'll leave it
aside until it's been properly shown to work.

Maxime

--spbhycqlgpxqdc65
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXpbdgAAKCRDj7w1vZxhR
xfFrAP93okt+UedPkk9I3Q8d4NjjJQupvTn5SXqE9t4DNT4cOAD/UrA0Qy0Kn9Tr
R9ol+rlZA6+bkgWLM1ddBT4uVccQmQw=
=uJBG
-----END PGP SIGNATURE-----

--spbhycqlgpxqdc65--


--===============7633244962054681475==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7633244962054681475==--

