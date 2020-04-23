Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 961681B658C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 22:38:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=w2M/nFgIcjXo2rBeOCPxTWqQSx0ST6HIWeyl1yd7pdQ=; b=ukWHLUQRfrx2BT3D0nmjry1Kw
	EVcR+WCYaRFNcUUVV013g4x4R1cmj48U1DqDL+Sf/L0alAYyykWD+k3lJCoDMUjG+MR1GAdjXwcA3
	qs0zW3vM+lO4NoAhrGVUwW7atsKNdsUQovD03PIP6yALGtk3tYKZO1qw3+sd8SB/i8uXGveDDYCI9
	mubUBBITjuM3ZS7P7AMiNpNdlv2bs4SObclPuo/Zj/IGGYCmS7oCEEQ9fAxPuNLdc30oWao4WMJQH
	6EhMpikIWCLh7Q2P2vOe/Hm9J30Jwg1ng5zlQCmzPE/eMmsYG6llKtcACFS+S3qtBOrOaDko+R/1e
	fpOThET7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRibh-0005gk-1V; Thu, 23 Apr 2020 20:38:01 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRibS-0005fa-2A
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 20:37:47 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 69404580311;
 Thu, 23 Apr 2020 16:37:42 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Thu, 23 Apr 2020 16:37:42 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=1rgoWEglUTjk3ArPIIoAl+30lpL
 4idh7C80OCTHpmUw=; b=SAJTsuiPodXPJOLPlP7oomUce1KO9HgLp4LSXSG2q9V
 k99XrTsnVoZPCz2XKjQKD/wUosuK8MuRP1DWKzbl17A0aD9dPIcfL5Yv29wTyk/s
 MxPtd1I8auIbqrXO6sX44R4LiutPyRWiA1ti78y/EUTrpxEy1duwnEXz88RMu+Wa
 29LJ8E+3FKB4mPDCcNdNCTFAYCSjWqg98NxjT/PmRIX9XZYcDg8HGlb8Ek85mB+Y
 afP7G0NWuBm2SWYwZUxi54SkwGeEkgnt8e2iIWKGi/rdjHY2FkoWTUfZma4E6I7p
 8zBHjptMWfRwKtt/h5nnvYAnwr/EisDPFqpP7SVY4ew==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=1rgoWE
 glUTjk3ArPIIoAl+30lpL4idh7C80OCTHpmUw=; b=FjH1HHY1SYTP/zk1w/wFGD
 SQJkRMnQfaPNqbJSWS0avw2d6sCE0ifpDAK6vqra+AzCyPNpF/s1rZ1bEwox4Tgp
 5pRbjM7eb2MuhvBXHwujlGQ6qpYXKeyP1LJNg4R8oz82cnPqnDpTB2nCKi/DI/YA
 Ks5K8dR7ic8gJjYBr7a9npZnjiKmlpoGay9ZCGbr3KF+su+cblWqDQPKYrSD3IR/
 kCSbFXIEV+Qjgu2OS5YFstcNjXDXy6Fnc7738GUpuHwryUCudVJ5gHwjTV5IveLR
 qiGMtBCk9VdHZ3Y9yphlb5ppjnApd7jwJ+f9+lE0RQcS4Xdz9gzelpUkfHYLOJ8g
 ==
X-ME-Sender: <xms:kfyhXuV9_lOcQCaGhKDLNNqO3cyD3i3DpEf_1MWSOGICGvB7_Q4laA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrgeelgdduudejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltd
 drkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepudenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:kfyhXhJGup0irbSm7vO_9T0yPLxTEYhpuZ2E8oHhgz9vj5BJ3Cw0kg>
 <xmx:kfyhXvKW36ehC4KYnTQbBDBeA-onlsefkaFfDRE0si9E8P2EW3ls3g>
 <xmx:kfyhXt-bSwETRMJWIWQ8-fwwZs4BZXSea5_ChbcjuZeeIB-CsnZ1CA>
 <xmx:lvyhXvcpdjm9Gmks9Zw2iUnYhWgzea6einYlDWRsnbwdwAEZC9o6sA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 632923065D59;
 Thu, 23 Apr 2020 16:37:37 -0400 (EDT)
Date: Thu, 23 Apr 2020 22:37:35 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Philipp Rossak <embed3d@gmail.com>
Subject: Re: [PATCH v6 00/12] ARM/MIPS: DTS: add child nodes describing the
 PVRSGX GPU present in some OMAP SoC and JZ4780 (and many more)
Message-ID: <20200423203735.imlafyw6oz6dspev@gilmour.lan>
References: <cover.1586939718.git.hns@goldelico.com>
 <20200415101008.zxzxca2vlfsefpdv@gilmour.lan>
 <2E3401F1-A106-4396-8FE6-51CAB72926A4@goldelico.com>
 <20200415130233.rgn7xrtwqicptke2@gilmour.lan>
 <C589D06E-435E-4316-AD0A-8498325039E3@goldelico.com>
 <10969e64-fe1f-d692-4984-4ba916bd2161@gmail.com>
 <20200420073842.nx4xb3zqvu23arkc@gilmour.lan>
 <b5a06c19-7a3e-bcb8-5ae3-76901b9c6c35@gmail.com>
 <20200421112129.zjmkmzo3aftksgka@gilmour.lan>
 <5749af21-e707-c998-c83b-50c48867c9e8@gmail.com>
MIME-Version: 1.0
In-Reply-To: <5749af21-e707-c998-c83b-50c48867c9e8@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_133746_237172_2C79FF99 
X-CRM114-Status: GOOD (  26.99  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.229 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 "H. Nikolaus Schaller" <hns@goldelico.com>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 linux-mips@vger.kernel.org, Paul Cercueil <paul@crapouillou.net>,
 linux-samsung-soc@vger.kernel.org,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 Paul Burton <paulburton@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Tony Lindgren <tony@atomide.com>, Chen-Yu Tsai <wens@csie.org>,
 Kukjin Kim <kgene@kernel.org>, James Hogan <jhogan@kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 =?utf-8?Q?Beno=C3=AEt?= Cousson <bcousson@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, linux-omap <linux-omap@vger.kernel.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 OpenPVRSGX Linux Driver Group <openpvrsgx-devgroup@letux.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>, Daniel Vetter <daniel@ffwll.ch>,
 kernel@pyra-handheld.com
Content-Type: multipart/mixed; boundary="===============7776854970486427746=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7776854970486427746==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="uldmalad7cdsj5zk"
Content-Disposition: inline


--uldmalad7cdsj5zk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 21, 2020 at 06:42:17PM +0200, Philipp Rossak wrote:
> Hi,
>=20
> On 21.04.20 13:21, Maxime Ripard wrote:
> > Hi,
> >=20
> > On Tue, Apr 21, 2020 at 11:57:33AM +0200, Philipp Rossak wrote:
> > > On 20.04.20 09:38, Maxime Ripard wrote:
> > > > Hi,
> > > >=20
> > > > On Fri, Apr 17, 2020 at 02:09:06PM +0200, Philipp Rossak wrote:
> > > > > > > I'm a bit skeptical on that one since it doesn't even list the
> > > > > > > interrupts connected to the GPU that the binding mandates.
> > > > > >=20
> > > > > > I think he left it out for a future update.
> > > > > > But best he comments himself.
> > > > >=20
> > > > > I'm currently working on those bindings. They are now 90% done, b=
ut they are
> > > > > not finished till now. Currently there is some mainline support m=
issing to
> > > > > add the full binding. The A83T and also the A31/A31s have a GPU P=
ower Off
> > > > > Gating Register in the R_PRCM module, that is not supported right=
 now in
> > > > > Mainline. The Register need to be written when the GPU is powered=
 on and
> > > > > off.
> > > > >=20
> > > > > @Maxime: I totally agree on your point that a demo needs to be pr=
ovided
> > > > > before the related DTS patches should be provided. That's the rea=
son why I
> > > > > added the gpu placeholder patches.
> > > > > Do you have an idea how a driver for the R_PRCM stuff can look li=
ke? I'm not
> > > > > that experienced with the clock driver framework.
> > > >=20
> > > > It looks like a power-domain to me, so you'd rather plug that into =
the genpd
> > > > framework.
> > >=20
> > > I had a look on genpd and I'm not really sure if that fits.
> > >=20
> > > It is basically some bit that verify that the clocks should be enable=
d or
> > > disabled.
> >=20
> > No, it can do much more than that. It's a framework to control the SoCs=
 power
> > domains, so clocks might be a part of it, but most of the time it's goi=
ng to be
> > about powering up a particular device.
> >=20
> So I think I've found now the right piece of documentation and a driver t=
hat
> implements something similar [1].
>=20
> So I will write a similar driver like linked above that only sets the rig=
ht
> bits for A83T and A31/A31s.
> Do you think this is the right approach?

That sounds about right yes

Maxime

--uldmalad7cdsj5zk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXqH8jwAKCRDj7w1vZxhR
xa6OAPsG0hWkJM/X3rADW428/4uNb7tDwdYNFydI9sbl6UhzkAEAxIit7pCZ/iLs
0cgwkg9mtFDlpNF5/GCnOiGoztgoNAU=
=F7xP
-----END PGP SIGNATURE-----

--uldmalad7cdsj5zk--


--===============7776854970486427746==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7776854970486427746==--

