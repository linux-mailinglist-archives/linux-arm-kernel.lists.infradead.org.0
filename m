Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02F3535C39
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 14:03:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AXPlHQKopr6f+yrLxnc7HwRZcqAmMxcyPdCWln0kj+0=; b=r3gOqi5WDwdMCDOTRFsDDtm/x
	LqNsY1GNEa7DVjwvf79RBC4GfcIxzN/b/jW+pB3VaeeL/BNXcBTRN5tknlwYpTuVYbJJb/2stSPd2
	EX8tEbSm5262hlYiU2FUYax/pVCIDnkdayYIhtJJJgocnhzhsG2JfQRXiD54q9efkcPNryBJexsw7
	zFdAmPncF3YAvaulix2Am7o3gcmO9f9MlrqFtbfAPNn/lklfDrBB75c/xH11ClK7TNssfVee4bATJ
	ejM5EOXYdV3A0PShVG+RlUGT2bqETTHxxhR6QESGLUfBLKAeECykCY/H5IkNF/LEe5taeY5MZyhrL
	j/2LAUqhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYUdD-0000D4-B2; Wed, 05 Jun 2019 12:03:03 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYUd6-0000C0-Fe
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 12:02:58 +0000
X-Originating-IP: 90.88.144.139
Received: from localhost (aaubervilliers-681-1-24-139.w90-88.abo.wanadoo.fr
 [90.88.144.139]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 3E9841C0014;
 Wed,  5 Jun 2019 12:02:38 +0000 (UTC)
Date: Wed, 5 Jun 2019 14:02:37 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Torsten Duwe <duwe@lst.de>
Subject: Re: [PATCH v2 7/7] arm64: dts: allwinner: a64: enable ANX6345 bridge
 on Teres-I
Message-ID: <20190605120237.ekmytfxcwbjaqy3x@flea>
References: <20190604122150.29D6468B05@newverein.lst.de>
 <20190604122308.98D4868B20@newverein.lst.de>
 <CA+E=qVckHLqRngsfK=AcvstrD0ymEfRkYyhS_kBtZ3YWdE3L=g@mail.gmail.com>
 <20190605101317.GA9345@lst.de>
MIME-Version: 1.0
In-Reply-To: <20190605101317.GA9345@lst.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_050256_835937_C9529518 
X-CRM114-Status: GOOD (  20.22  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 devicetree <devicetree@vger.kernel.org>, David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Harald Geyer <harald@ccbib.org>,
 Sean Paul <seanpaul@chromium.org>, Thomas Gleixner <tglx@linutronix.de>,
 arm-linux <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: multipart/mixed; boundary="===============4374231753731721501=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4374231753731721501==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="qiya5ip3hgidvmzq"
Content-Disposition: inline


--qiya5ip3hgidvmzq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jun 05, 2019 at 12:13:17PM +0200, Torsten Duwe wrote:
> On Tue, Jun 04, 2019 at 08:08:40AM -0700, Vasily Khoruzhick wrote:
> > On Tue, Jun 4, 2019 at 5:23 AM Torsten Duwe <duwe@lst.de> wrote:
> > >
> > > Teres-I has an anx6345 bridge connected to the RGB666 LCD output, and
> > > the I2C controlling signals are connected to I2C0 bus. eDP output goes
> > > to an Innolux N116BGE panel.
> > >
> > > Enable it in the device tree.
> > >
> > > Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
> > > Signed-off-by: Torsten Duwe <duwe@suse.de>
> > > ---
> > >  .../boot/dts/allwinner/sun50i-a64-teres-i.dts      | 65 ++++++++++++++++++++--
> > >  1 file changed, 61 insertions(+), 4 deletions(-)
> > >
> > > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
> > > index 0ec46b969a75..a0ad438b037f 100644
> > > --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
> > > +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
> > > @@ -65,6 +65,21 @@
> > >                 };
> > >         };
> > >
> > > +       panel: panel {
> > > +               compatible ="innolux,n116bge", "simple-panel";
> >
> > It's still "simple-panel". I believe I already mentioned that Rob
> > asked it to be edp-connector.
>
> For which there are neither bindings nor drivers.
>
> Is anybody seriously proposing to hold back support for existing
> (open source!) hardware in favour of an *imaginable* *possibly*
> better solution? Especially when this exact line is already used in
> some other places?  (there's a space missing btw...)

It's non-existent and imaginable only because you've been ignoring
everyone that said that you should do it. So it's self-inflicted,
really.

And the DT is considered an ABI, so yeah, we will witheld everything
that doesn't fit what we would like. Your point of view is that it's
more work and for no particular benefit, ours is that it's a
short-term pain for a long-term gain, and the benefits will be in the
maintainance cost.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--qiya5ip3hgidvmzq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXPevXQAKCRDj7w1vZxhR
xRaUAP4rsNSfzJsmzwtJIlX1UQvArevsqZjEbly5zQoUU26FyAEAsSQVhJt3Xdhr
y/w4nPyt47sTpjL2pjXHbkTaW+M7hw0=
=y5GR
-----END PGP SIGNATURE-----

--qiya5ip3hgidvmzq--


--===============4374231753731721501==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4374231753731721501==--

