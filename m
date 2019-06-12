Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FD174367D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 15:26:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=paXubJQ4PYCIag+vbygZanmBRlQY90XWCi5oDfyDiQo=; b=rXGQsFokQ6aRXAycxke03nPFG
	6aEWbd6HACHP+23wIrLVinJG4pH5fLhzSOxuQAaDDxBhLKg5XXfY1DSofYwTzG6CBvYjqkMZ9hfUf
	26PRQPovtuntJoybKizxZph1vsO1Qj4fCsyIQ+VasxUuxRz3KEZz7CMml6ElTzhtGzABTSy84r5tL
	eUB2BYAjBQ4wWnbvaox8n4ufBd9h/w5yYLlH68JfFd9KScKuUtlEtA1eG0+FUUlRN5W5mFZmxtnAB
	1BQX+aOxVxGLr0qcz421L3qQQ1BIvRSVy78qA/zadszKxU1hCRHE1lTad8RxOLFzj4ZRpoa/Z5dE/
	ty+XPEmuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbPki-0003Wc-0v; Thu, 13 Jun 2019 13:26:52 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbPjv-0003FW-9k
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 13:26:05 +0000
X-Originating-IP: 90.88.159.246
Received: from localhost (aaubervilliers-681-1-40-246.w90-88.abo.wanadoo.fr
 [90.88.159.246]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id B10E040003;
 Thu, 13 Jun 2019 13:25:51 +0000 (UTC)
Date: Wed, 12 Jun 2019 17:34:23 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Torsten Duwe <duwe@lst.de>
Subject: Re: [PATCH v2 7/7] arm64: dts: allwinner: a64: enable ANX6345 bridge
 on Teres-I
Message-ID: <20190612153423.jjcxsturjip3pn56@flea>
References: <20190604122150.29D6468B05@newverein.lst.de>
 <20190604122308.98D4868B20@newverein.lst.de>
 <CA+E=qVckHLqRngsfK=AcvstrD0ymEfRkYyhS_kBtZ3YWdE3L=g@mail.gmail.com>
 <20190605101317.GA9345@lst.de>
 <20190605120237.ekmytfxcwbjaqy3x@flea>
 <E1hYsvP-0000PY-Pz@stardust.g4.wien.funkfeuer.at>
 <20190607062802.m5wslx3imiqooq5a@flea>
 <20190607094030.GA12373@lst.de>
MIME-Version: 1.0
In-Reply-To: <20190607094030.GA12373@lst.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_062603_704807_47DA970D 
X-CRM114-Status: GOOD (  23.72  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 0.8 DATE_IN_PAST_12_24     Date: is 12 to 24 hours before Received: date
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: multipart/mixed; boundary="===============5838902495977200929=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5838902495977200929==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="l4e2w5m2mlsciqb7"
Content-Disposition: inline


--l4e2w5m2mlsciqb7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jun 07, 2019 at 11:40:30AM +0200, Torsten Duwe wrote:
> On Fri, Jun 07, 2019 at 08:28:02AM +0200, Maxime Ripard wrote:
> > On Thu, Jun 06, 2019 at 03:59:27PM +0200, Harald Geyer wrote:
> > >
> > > If think valid compatible properties would be:
> > > compatible = "innolux,n116bge", "simple-panel";
> > > compatible = "edp-connector", "simple-panel";
> >
> > A connector isn't a panel.
> >
> > > compatible = "innolux,n116bge", "edp-connector", "simple-panel";
> >
> > And the innolux,n116bge is certainly not a connector either.
> >
> > > compatible = "edp-connector", "innolux,n116bge", "simple-panel";
> > >
> > > I can't make up my mind which one I prefere. However neither of these
> > > variants requires actually implmenting an edp-connector driver.
> >
> > No-one asked to do an edp-connector driver. You should use it in your
> > DT, but if you want to have some code in your driver that parses the
> > DT directly, I'm totally fine with that.
>
> I must admit I fail to understand what that extra node would be good for.
> Logically, the eDP far side is connected to the well-known n116bge.
> Inside the laptop case it might as well be a flat ribbon cable or
> soldered directly.
> In good intention, that's all I wanted to express in the DT. I don't
> know whether the relevant mechanical dimensions of the panel and the
> connector are standardised, so whether one could in theory assemble it
> with a different panel than the one it came with.

Because the panel that comes with the Teres-I is always the
same. However, that's not true for all the devices out there using the
bridge, starting with the pinebook.

> OTOH, as I checked during the discussion with anarsoul, the panel's
> supply voltage is permanently connected to the main 3.3V rail.

Again, that may be the case on the Teres-I, but not necessarily on
other boards.

> We already agreed that the eDP output port must not neccessarily be
> specified, this setup is a good example why: because the panel is
> always powered, the anx6345 can always pull valid EDID data from it
> so at this stage there's no need for any OS driver to reach beyond
> the bridge. IIRC even the backlight got switched off for the blank
> screen without.

That's not really the outcome of the discussion we had here though:
https://patchwork.freedesktop.org/patch/305035/

> All I wanted to say is that "there's usually an n116bge behind it";
> but this is mostly redundant.
>
> So, shall we just drop the output port specification (along with the
> panel node) in order to get one step further?

Depending on the outcome of the discussion above, yes or no :)

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--l4e2w5m2mlsciqb7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHQEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXQEbfwAKCRDj7w1vZxhR
xXboAP9taP8cVAug0AmgG1n+5b7orZtPN+yeWqkQV/4rx6fcdgD3Tma8ZrLudyMc
SNeQDRS8FMpPCWr42VcLCNdIMRk6CA==
=j/Ze
-----END PGP SIGNATURE-----

--l4e2w5m2mlsciqb7--


--===============5838902495977200929==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5838902495977200929==--

