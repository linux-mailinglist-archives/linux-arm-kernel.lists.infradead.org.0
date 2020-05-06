Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F4881C7513
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 17:37:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+cTwtM9CIbhGdX5WPJ/1IImgoYcUfOEInO46ljC4ZIE=; b=WvbWVfOjS383HU1OiiY9S4z+Y
	euTCvMcWrkYhbKa6cC585PAysgu1RkmcImhh7xCmKYMfRysnevRxaHZtH4Lg5FYKm51VEy5tmHJ2h
	bUJGaT1Bk8YEyn/SwS6NEc3n1C4/NrgfRQ9TYUfiGU24/FdkJC2E0K7G6NO9p8HOGM9XQGco3dCCc
	7Opy6ZIonf4vV/AeXtp5orq3B4xaFI/IbPgPgaE4Hb3Zk92f7WcEJQQPOIVAFsu393mq/4VRakmWm
	+j48+Pp4Ymn7Evr03sYz7JjhgUsc38KESlEXBERI4r2XR13JjAmsNw+NZqj+wxXPVM5CA9dAIGETE
	rXwTWq/wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWM6g-00024Y-Fa; Wed, 06 May 2020 15:37:10 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWM6U-00022y-Mz
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 15:37:00 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id A3BCF58032B;
 Wed,  6 May 2020 11:36:53 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 06 May 2020 11:36:53 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=/+05KqBTk3oydVggvk0oaQyCPAJ
 z1Y/tOkrcMC1KWGU=; b=dYMsW87kzQdTYVzBdsHEEWUk+IY0JF5You9OLDT0Plf
 bjPLfchBAW+G3HReL9Ft0Yfc9GNlDMFzQTv9rce9eVI+Qs6xSqw1/KDwNng44Stc
 44k5Mj5hXWzWpCDyd9MPU7HRi/9OWXUag+9V9IfUrsfwNmIuZW8V33H2jVKJofBA
 +RDI+3yqD6rBVx4u36C65xL/8TpyJeqvQRhmtcBHaIwFz6DC6/WHIxVSglCE1zzv
 FSzwQ9MypkyDIVOEb/P/bzN7cFoygVZd6TMP7pHshw7pf1jVdYyOJJ+lqMei4K29
 9b5/bbhyzHCQN6nMeaRdVXyEIkbBlbMSFhLOTAhlJTw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=/+05Kq
 BTk3oydVggvk0oaQyCPAJz1Y/tOkrcMC1KWGU=; b=QVJBUdD+tRrFspsGcUoA2F
 PoD0sa7ltQTt4QsnvkUQSaO3LL+S3/rG7CMvrFmVeDRYgAqQ1+BeS8SPjLY0hYi4
 EkMHkLDFPY0+kE4xdWuRSaISvGvZSKyENuV6SDNVy2xysZJsSiMz7bbw1qV++Wd2
 eqSlhLMObAED8BZFQ9gpgwPSwmrr0GeemNFLmEiUSO8OCNQMhujg/EPIax6evtyP
 NJ0EE1S1vFIElq+GKgPcBjaQ2Y4lyWvW/K3TsI2/mgzeDAz3RlvroOsKG7mg2EIE
 YfkpyICiEFCK6w5rJpifKeEDJU4uv6dVDyJyC9/buFRhUigfalit1BJPhwQ8Jkwg
 ==
X-ME-Sender: <xms:lNmyXgqrCcQNdAIPVuBzajR5lgSq-T-q887yRciGH4wQ7POZKR97Og>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrjeekgdekkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtjeenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
 gvrhhnpeethfeiueffueeikeeifefhheeijeeigfelteehheetjeekueevtdfhlefhgfdt
 ieenucffohhmrghinhepghhithhhuhgsrdgtohhmpdgrrhhmsghirghnrdgtohhmnecukf
 hppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghm
 pehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:lNmyXhlmALE-N71etmI62IoUcm6VIVJqxnhmcYUGF8GOjgbHXwZvDQ>
 <xmx:lNmyXn3UCN8LilgAP3FDW-4A8rSV_1Cj31Jy1FI5Wtoom_IQAPRjog>
 <xmx:lNmyXmp7l0HhvY1DRQ0pIQia1SN6AJdaFGDpEl1IA3fHLvkLB_vhEg>
 <xmx:ldmyXvedgtdvWjzIrDy8oNd09iM8YIUKOKz54FJdGSAdnYSixBEKLA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 7F3E8328006C;
 Wed,  6 May 2020 11:36:52 -0400 (EDT)
Date: Wed, 6 May 2020 17:36:49 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Icenowy Zheng <icenowy@aosc.io>
Subject: Re: [RFC PATCH] PCI: dwc: add support for Allwinner SoCs' PCIe
 controller
Message-ID: <20200506153649.ahzlhcquyhnggbou@gilmour.lan>
References: <20200402160549.296203-1-icenowy@aosc.io>
 <20200406082732.nt5d7puwn65j4nvl@gilmour.lan>
 <13564b9a57f734524357a26665c48211e436e305.camel@aosc.io>
MIME-Version: 1.0
In-Reply-To: <13564b9a57f734524357a26665c48211e436e305.camel@aosc.io>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_083658_889403_E955C4FE 
X-CRM114-Status: GOOD (  29.98  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.230 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, devicetree@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Bjorn Helgaas <bhelgaas@google.com>, linux-arm-kernel@lists.infradead.org,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: multipart/mixed; boundary="===============5171033091798364984=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5171033091798364984==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="p2kmtjzg5nllbilb"
Content-Disposition: inline


--p2kmtjzg5nllbilb
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 20, 2020 at 04:18:58PM +0800, Icenowy Zheng wrote:
> =E5=9C=A8 2020-04-06=E6=98=9F=E6=9C=9F=E4=B8=80=E7=9A=84 10:27 +0200=EF=
=BC=8CMaxime Ripard=E5=86=99=E9=81=93=EF=BC=9A
> > Hi,
> >=20
> > On Fri, Apr 03, 2020 at 12:05:49AM +0800, Icenowy Zheng wrote:
> > > The Allwinner H6 SoC uses DesignWare's PCIe controller to provide a
> > > PCIe
> > > host.
> > >=20
> > > However, on Allwinner H6, the PCIe host has bad MMIO, which needs
> > > to be
> > > workarounded. A workaround with the EL2 hypervisor functionality of
> > > ARM
> > > Cortex cores is now available, which wraps MMIO operations.
> > >=20
> > > This patch is going to add a driver for the DWC PCIe controller
> > > available in Allwinner SoCs, either the H6 one when wrapped by the
> > > hypervisor (so that the driver can consider it as an ordinary PCIe
> > > controller) or further not buggy ones.
> > >=20
> > > Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
> > > ---
> > > There's no device tree binding patch available, because I still
> > > have
> > > questions on the device tree compatible string. I want to use it to
> > > describe that this driver doesn't support the "native Allwinner H6
> > > PCIe
> > > controller", but a wrapped version with my hypervisor.
> > >=20
> > > I think supporting a "para-physical" device is some new thing, so
> > > this
> > > patch is RFC.
> > >=20
> > > My hypervisor is at [1], and some basic usage documentation is at
> > > [2].
> > >=20
> > > [1] https://github.com/Icenowy/aw-el2-barebone
> > > [2]=20
> > > https://forum.armbian.com/topic/13529-a-try-on-utilizing-h6-pcie-with=
-virtualization/
> >=20
> > I'm a bit concerned to throw yet another mandatory, difficult to
> > update, component in the already quite long boot chain.
> >=20
> > Getting fixes deployed in ATF or U-Boot is already pretty long,
> > having
> > another component in there will just make it worse, and it's another
> > hard to debug component that we throw into the mix.
> >=20
> > And this prevents any use of virtualisation on the platform.
> >=20
> > I haven't found an explanation on what that hypervisor is doing
> > exactly, but from a look at it it seems that it will trap all the
> > accesses to the PCIe memory region to emulate a regular space on top
> > of the restricted one we have?
> >=20
> > If so, can't we do that from the kernel directly by using a memory
> > region that always fault with a fault handler like Framebuffer's
> > deferred_io is doing (drivers/video/fbdev/core/fb_defio.c) ?
>=20
> I don't know well about the memory management of the kernel. However,
> for PCIe memory space, the kernel allows simple ioremap() on it. So
> wrapping it shouldn't be so easy.

I'm not sure this would cause any trouble, it's worth exploring I guess. Th=
is
would solve all the current shortcomings.

Maxime
>

--p2kmtjzg5nllbilb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXrLZkQAKCRDj7w1vZxhR
xdzrAP9eNr9KcfU2kbvxMpWxzsG/4z0BCVJuoyB9oqqcCJ+rSgEA8LASQMw0yBXS
EWoo2T8XCMOXkT+flamRrPJwfGv3/AQ=
=oD3G
-----END PGP SIGNATURE-----

--p2kmtjzg5nllbilb--


--===============5171033091798364984==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5171033091798364984==--

