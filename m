Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EE17CE148
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 14:12:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GR2a8/S0YJ27e/5Ev3fSIUzw7NM/6hKFlJ7ycNiHFkQ=; b=BZAYlX6Szaf01TeneKSpALSnT
	m4gZyqOdnDgIzvCwHW8bYrGbdKMm7T1ylGvzDiHOoV7OCBqrXVEa01ggewV6Lw+plbKljQsrLcO/6
	xz9NoTMxyzKxsODBgPCxlGhEzkuPC8UX4d6W8ORey1WBnVAD76NNDFWfm/ExNkurdeOXHj/wmx2jB
	hzzIDisUHJawVz5aT9aItTBfrHUY7BkBfypZwNdrE9CW/Ao9siWAys2f1Gfy4qI4JbkKwPmZExZlu
	hfHvRoCZYxI3A9705AatvV3ZOYZ1VxtC1D1OCFt6u6JScXy5otVwporkOrjv+GqLEAQR1BzkzeCXY
	rckCKFUyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHRsU-0006kR-56; Mon, 07 Oct 2019 12:12:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHRsL-0006jl-C0
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 12:12:30 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7896721655;
 Mon,  7 Oct 2019 12:12:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570450349;
 bh=hDOB9Ipmag+GW/C5ZJQ13sSZnls+RbX9ps4NB4VooRM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=unxV3C/eHhe1VOW732qL1Lm+enUadQMHdNZ5nh7ANNdT2CdQ7eMV7wvr+urQKvHiS
 KP7s8zw6FPEzWY0n+z05KQ2FD5qKvKKLZB1DQS4AFz4enTrj9MDmq4q6ArMjfg1eZQ
 ChWBnWEGVjnqIplgykA4tdLvO6YX47l7E2U07yc4=
Date: Mon, 7 Oct 2019 14:12:26 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Chen-Yu Tsai <wens@csie.org>
Subject: Re: [PATCH 1/2] dt-bindings: media: sun4i-csi: Drop the module clock
Message-ID: <20191007121226.qieewketybq36hey@gilmour>
References: <20191003154842.248763-1-mripard@kernel.org>
 <CAGb2v66az3uQnibudKai7ATfXh+w1Y+bJ=o258RVe9SCNRpGNQ@mail.gmail.com>
 <20191003163754.26ciq2ljcbuuvcrx@gilmour>
 <CAGb2v66WOZZj15GkARRzCTsSRhZi_6aEFK4w+O+aGmYwvVYGdw@mail.gmail.com>
 <20191007110943.lyz3nep7udr6weu3@gilmour>
 <CAGb2v6776fWUuE1kOtnuFVA4faFZdtkZu02WwTqHyGAPVi+G-A@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAGb2v6776fWUuE1kOtnuFVA4faFZdtkZu02WwTqHyGAPVi+G-A@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_051229_451081_6C532A3C 
X-CRM114-Status: GOOD (  30.46  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 devicetree <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============2620422926021497776=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2620422926021497776==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="qkuxoelj2btx4ihf"
Content-Disposition: inline


--qkuxoelj2btx4ihf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Oct 07, 2019 at 07:11:03PM +0800, Chen-Yu Tsai wrote:
> On Mon, Oct 7, 2019 at 7:09 PM Maxime Ripard <mripard@kernel.org> wrote:
> >
> > Hi,
> >
> > On Fri, Oct 04, 2019 at 02:33:41PM +0800, Chen-Yu Tsai wrote:
> > > On Fri, Oct 4, 2019 at 12:37 AM Maxime Ripard <mripard@kernel.org> wrote:
> > > > On Thu, Oct 03, 2019 at 11:51:05PM +0800, Chen-Yu Tsai wrote:
> > > > > On Thu, Oct 3, 2019 at 11:48 PM Maxime Ripard <mripard@kernel.org> wrote:
> > > > > >
> > > > > > It turns out that what was thought to be the module clock was actually the
> > > > > > clock meant to be used by the sensor, and isn't playing any role with the
> > > > > > CSI controller itself. Let's drop that clock from our binding.
> > > > > >
> > > > > > Fixes: c5e8f4ccd775 ("media: dt-bindings: media: Add Allwinner A10 CSI binding")
> > > > > > Reported-by: Chen-Yu Tsai <wens@csie.org>
> > > > > > Signed-off-by: Maxime Ripard <mripard@kernel.org>
> > > > > > ---
> > > > > >  .../devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml | 7 ++-----
> > > > > >  1 file changed, 2 insertions(+), 5 deletions(-)
> > > > > >
> > > > > > diff --git a/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml b/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml
> > > > > > index 5dd1cf490cd9..d3e423fcb6c2 100644
> > > > > > --- a/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml
> > > > > > +++ b/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml
> > > > > > @@ -27,14 +27,12 @@ properties:
> > > > > >    clocks:
> > > > > >      items:
> > > > > >        - description: The CSI interface clock
> > > > > > -      - description: The CSI module clock
> > > > > >        - description: The CSI ISP clock
> > > > > >        - description: The CSI DRAM clock
> > > > > >
> > > > > >    clock-names:
> > > > > >      items:
> > > > > >        - const: bus
> > > > > > -      - const: mod
> > > > > >        - const: isp
> > > > > >        - const: ram
> > > > > >
> > > > > > @@ -89,9 +87,8 @@ examples:
> > > > > >          compatible = "allwinner,sun7i-a20-csi0";
> > > > > >          reg = <0x01c09000 0x1000>;
> > > > > >          interrupts = <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
> > > > > > -        clocks = <&ccu CLK_AHB_CSI0>, <&ccu CLK_CSI0>,
> > > > > > -                 <&ccu CLK_CSI_SCLK>, <&ccu CLK_DRAM_CSI0>;
> > > > > > -        clock-names = "bus", "mod", "isp", "ram";
> > > > > > +        clocks = <&ccu CLK_AHB_CSI0>, <&ccu CLK_CSI_SCLK>, <&ccu CLK_DRAM_CSI0>;
> > > > > > +        clock-names = "bus", "isp", "ram";
> > > > >
> > > > > I believe what we thought was the ISP clock is actually the module clock
> > > > > for the whole CSI subsystem. So we should still use the module clock entry,
> > > > > and remove the ISP entry.
> > > >
> > > > I'm really not sure it is. CSI1 on the A20 (possibly the A10 as well,
> > > > I haven't checked), and the one on the A13 don't have any ISP embedded
> > > > in the CSI controller.
> > > >
> > > > It makes some difference, because according to the BSP, you can see
> > > > that the ISP clock is taken for CSI0:
> > > > https://github.com/linux-sunxi/linux-sunxi/blob/sunxi-3.4/drivers/media/video/sun4i_csi/csi0/sun4i_drv_csi.c#L389
> > > >
> > > > While for CSI1, that block is commented out, and the ISP clock never
> > > > used:
> > > > https://github.com/linux-sunxi/linux-sunxi/blob/sunxi-3.4/drivers/media/video/sun4i_csi/csi1/sun4i_drv_csi.c#L396
> > > >
> > > > So I really believe that the ISP clock is here to feed the ISP block
> > > > within the CSI controller if there's any. But it's far from always the
> > > > case, as opposed to a module clock for the whole CSI controller that
> > > > would be here in both cases.
> > >
> > > I guess we should try to test this with CSI1 one, either on a Cubieboard
> > > or OlinuXino with a simple camera like the OV7670?
> > >
> > > Do you have any hardware on hand for this? I have the Cubieboard but I
> > > need to get some proper 2.0mm connector blocks.
> >
> > I've tested it with the A13 before, and it doesn't need the ISP clock
>
> OK! That clears things up!

I've added both patches as fixes then. Thanks!
Maxime

--qkuxoelj2btx4ihf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXZsrqgAKCRDj7w1vZxhR
xRHwAP0Zy80SuwtwIso2tWm86qqzkXtfIEseg3QSPYt4yA7gCQD7BCUi3dfvzB+h
0Fmd7cmathpGqw2YOlJTpMa09CVCWAM=
=xDAP
-----END PGP SIGNATURE-----

--qkuxoelj2btx4ihf--


--===============2620422926021497776==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2620422926021497776==--

