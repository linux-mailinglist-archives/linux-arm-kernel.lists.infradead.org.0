Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D860E1914D4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 16:41:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9NAI0ARD5GrNdtKYCQEPPBwB8M3jlm8r7LEHkgnv0gY=; b=EBPoZ/ZVwrXvoFGrBQQRxl8Ph
	zPabJujSxBmGqQ3eqpbWJro9r1E3EmPQuG1O64F2GabC0D3Z+AfIapVMTNAykm0Snqv2zBfPuKrnF
	WRr3BiLaWgaXkLyaQyVxZjK/cJBd6EwppoSznLE6TfQG07IVMZb8StYj7d1nxm5/i/0Iz0Cs6wqPu
	0Nh+QYTAKzYSR+Qfj/6zRit/aDuFHSW2wtXaoDgFKSXcZHIQy/TCJ0UHipQZG8zZGpNcYuyQjLhyK
	YVY2JZhRHWzVSnSCe31VmmiwXgMgktig1/mZmdfU3R7C5Phd5DYJBx2G8cd/wEbeYYMdZxurYp80E
	YNxtNOzYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGlfn-0002fM-MM; Tue, 24 Mar 2020 15:40:59 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGlfc-0002er-TL
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 15:40:50 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 6EC37580187;
 Tue, 24 Mar 2020 11:40:47 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Tue, 24 Mar 2020 11:40:47 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=lR0eBIanF6SDCnxFLTSyE8ziSKg
 i9ZA+hhtsHfD2qAA=; b=TixMqDr3fI806sOY6xWM1xXk/HuR5Sl4JafhqvNyYCh
 B0WnbHWQLOO/1xO3PFhETsvKzKyyEM88a0AaojKb7Z7jEAY7iBfwNSPkX7HeNFhP
 EpVoSgsuZtGVDGoBCmKTFfXrDkcnCGOxzvDPtk7CplrnmncsR3pI089wwgutQyOl
 r9c4STe+YabsAQZyWWaej1FAM3C2S7RoT2JjIigyyOE4sFLStzFrVqAlujo5Y7Vu
 duNNH6cgHIIj02nefyBxBJcAJneMRe7HJ+0/UkxGCKKLuzYUEBgya224oMv9FJQ8
 hfkxFh4t20pQdpM7EhYCvXT2s9wHPi5dnalEcb5Rayg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=lR0eBI
 anF6SDCnxFLTSyE8ziSKgi9ZA+hhtsHfD2qAA=; b=BjBkNffjGWUc/5jO4przwO
 m59Z+khlWSZ+YRhAy0e926I4p4hSBXhtqDoIV/ttcdvFNvFP7jrBppP4f8ENR3fy
 x1uQbKV6JcLOBipoIyP3jrVTNTedqJHP4cSabAQ/rYi8ndXBL33kHLHOjodHgE6D
 Fnqe3JIsYpplYmQHIuQ6PIKdNyDshuUMRlWDC/n4fsQ9ElI1YNkfeiIVkoZ4Q8vp
 fQDoCqp7yY3eY7AHpOL/ZNL5CBDO8jHaulswREydapxFOLUDBt+Hh+HyqJq4RhAn
 q6eymUBCE4G0MWyZYWMxTTJNsdGOtrkVqk7c0stXqR13ZtgqmC9VVNcaRhkKph6w
 ==
X-ME-Sender: <xms:_il6Xt4ksL-jhcvZmkMCViNSBNo_RZcE01s0-7JRpOaAC5BY7DBs2Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrudehuddggeelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltd
 drkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:_il6XrOD7fk_9C_XwgCcc_S_KP163e5_Z8_eD_LWJkl0VBKflvYB0Q>
 <xmx:_il6XopYb_SZOG4texGiaC00k_z4vPuvlVbEHFAJ4hOcMuQW7FPmEQ>
 <xmx:_il6XtKI1PhRtOFQ3CLV-Slek7_CFFK3anEYIZsnEFTNFkZcbvKM3A>
 <xmx:_yl6XjBaAJpG6w4gxocQIXvtVa5yNQPAsyZ6cZubr3X6ZjCqfUjYGQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 1E4E63280064;
 Tue, 24 Mar 2020 11:40:46 -0400 (EDT)
Date: Tue, 24 Mar 2020 16:40:45 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Subject: Re: [PATCH v3 1/4] media: dt-bindings: media: i2c: Switch to
 assigned-clock-rates
Message-ID: <20200324154045.whiy6uvlg2mrjv5a@gilmour.lan>
References: <1584133954-6953-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1584133954-6953-2-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200319124452.3yfcvq754vi4q2rv@gilmour.lan>
 <20200319130348.GC4872@pendragon.ideasonboard.com>
 <CA+V-a8s-GZsYuBLyGnzURZfGD42f0c+QEan6FSwb2ew1=7Gj3g@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CA+V-a8s-GZsYuBLyGnzURZfGD42f0c+QEan6FSwb2ew1=7Gj3g@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_084049_080587_0EDDACFC 
X-CRM114-Status: GOOD (  26.06  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Magnus Damm <magnus.damm@gmail.com>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 LKML <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, Shawn Guo <shawnguo@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Fabio Estevam <festevam@gmail.com>,
 linux-media <linux-media@vger.kernel.org>,
 LAK <linux-arm-kernel@lists.infradead.org>, NXP Linux Team <linux-imx@nxp.com>
Content-Type: multipart/mixed; boundary="===============0034156951938361773=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0034156951938361773==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="766st27slgtqfmag"
Content-Disposition: inline


--766st27slgtqfmag
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Mar 19, 2020 at 01:17:51PM +0000, Lad, Prabhakar wrote:
> Hi Laurent,
>
> On Thu, Mar 19, 2020 at 1:04 PM Laurent Pinchart
> <laurent.pinchart@ideasonboard.com> wrote:
> >
> > Hi Maxime,
> >
> > On Thu, Mar 19, 2020 at 01:44:52PM +0100, Maxime Ripard wrote:
> > > On Fri, Mar 13, 2020 at 09:12:31PM +0000, Lad Prabhakar wrote:
> > > > Use assigned-clock-rates to specify the clock rate. Also mark
> > > > clock-frequency property as deprecated.
> > > >
> > > > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > > > ---
> > > >  Documentation/devicetree/bindings/media/i2c/ov5645.txt | 5 +++--
> > > >  1 file changed, 3 insertions(+), 2 deletions(-)
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/media/i2c/ov5645.txt b/Documentation/devicetree/bindings/media/i2c/ov5645.txt
> > > > index 72ad992..e62fe82 100644
> > > > --- a/Documentation/devicetree/bindings/media/i2c/ov5645.txt
> > > > +++ b/Documentation/devicetree/bindings/media/i2c/ov5645.txt
> > > > @@ -8,7 +8,7 @@ Required Properties:
> > > >  - compatible: Value should be "ovti,ov5645".
> > > >  - clocks: Reference to the xclk clock.
> > > >  - clock-names: Should be "xclk".
> > > > -- clock-frequency: Frequency of the xclk clock.
> > > > +- clock-frequency (deprecated): Frequency of the xclk clock.
> > > >  - enable-gpios: Chip enable GPIO. Polarity is GPIO_ACTIVE_HIGH. This corresponds
> > > >    to the hardware pin PWDNB which is physically active low.
> > > >  - reset-gpios: Chip reset GPIO. Polarity is GPIO_ACTIVE_LOW. This corresponds to
> > > > @@ -37,7 +37,8 @@ Example:
> > > >
> > > >                     clocks = <&clks 200>;
> > > >                     clock-names = "xclk";
> > > > -                   clock-frequency = <24000000>;
> > > > +                   assigned-clocks = <&clks 200>;
> > > > +                   assigned-clock-rates = <24000000>;
> > > >
> > > >                     vdddo-supply = <&camera_dovdd_1v8>;
> > > >                     vdda-supply = <&camera_avdd_2v8>;
> > >
> > > clock-frequency is quite different from assigned-clock-rates though,
> > > semantically speaking. clock-frequency is only about what the clock
> > > frequency is, while assigned-clock-rates will change the rate as well,
> > > and you have no idea how long it will last.
> >
> > The driver currently reads the clock-frequency property and then calls
> > clk_set_rate(). I agree tht assigned-clock-rates isn't a panacea, but I
> > think it's less of a hack than what we currently have.
> >
> > As discussed on IRC, maybe the best option in this specific case is to
> > drop clock-frequency and assigned-clok-rates, and call clk_set_rate()
> > with a hardcoded frequency of 24MHz in the driver, as that's the only
> > frequency the driver supports.
> >
> Does this mean any driver which has a fixed clock requirement shouldn't be a
> DT property and should be just handled by the drivers internally ?

It's hard to give a generic policy, but here, the hardware is pretty
flexible since it can deal with anything between 6MHz to 50-something
MHz, it's the driver that chooses to enforce a 24MHz and be pedantic
about it, so it's up to the driver to enforce that policy, not to the
DT since it's essentially a software limitation, not a hardware one.

Maxime

--766st27slgtqfmag
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXnop/QAKCRDj7w1vZxhR
xUp3AQC4CpS3+gKsDPAnZm8pakj0NLuoi+oYlCsyVqEEtPSmBQD/W0Fnywv9KUiq
QETeY979lVRzXw6cNCOb1qDBjB9TGQE=
=nwfk
-----END PGP SIGNATURE-----

--766st27slgtqfmag--


--===============0034156951938361773==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0034156951938361773==--

