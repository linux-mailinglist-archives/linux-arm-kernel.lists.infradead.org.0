Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 870B743680
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 15:27:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=P/LynTSGruay4iIE/2GKKSIxlrIAuqoLOG7GxupxJEI=; b=l3K+x3xOWkhszI33Is+0CM3uk
	hoIksW9gdoCpsOND7x9+qHVOqPGM1yx42dE4i+oQiaB+BmlYcWoYaHxRm11eR0pbMaxTTYPhzhBHt
	lvEiKRFkJDwTAJTBzOQnG2zLhe7jP2QQPZviONer9SN6BdNEimJKOe55be1NBujrb+Q4bBD2Z7WU2
	qWRi+tLqFlBWixRHuMYnbEfcNIgT44PXHnWgiQM+uerwt+fGg2FG3DCJB261WiHl4q8YC/cr9Mdzv
	4RZnP3nfItdUuqU6Wf5r5ZcNKGhR85OArC7cvNBMaYbFyyagssGfa9YJatklZiS+QewxqSU1OmjYT
	rmCSfbkoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbPl6-0003qF-V0; Thu, 13 Jun 2019 13:27:16 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbPjv-0003FC-Rg
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 13:26:07 +0000
X-Originating-IP: 90.88.159.246
Received: from localhost (aaubervilliers-681-1-40-246.w90-88.abo.wanadoo.fr
 [90.88.159.246]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 1CBDAE0008;
 Thu, 13 Jun 2019 13:25:40 +0000 (UTC)
Date: Wed, 12 Jun 2019 17:20:22 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Andrzej Hajda <a.hajda@samsung.com>
Subject: Re: [PATCH v2 7/7] arm64: dts: allwinner: a64: enable ANX6345 bridge
 on Teres-I
Message-ID: <20190612152022.c3cfhp4cauhzhfyr@flea>
References: <20190604122150.29D6468B05@newverein.lst.de>
 <20190604122308.98D4868B20@newverein.lst.de>
 <CA+E=qVckHLqRngsfK=AcvstrD0ymEfRkYyhS_kBtZ3YWdE3L=g@mail.gmail.com>
 <20190605101317.GA9345@lst.de>
 <20190605120237.ekmytfxcwbjaqy3x@flea>
 <E1hYsvP-0000PY-Pz@stardust.g4.wien.funkfeuer.at>
 <20190607062802.m5wslx3imiqooq5a@flea>
 <CGME20190607094103epcas1p4babbb11ec050974a62f2af79bc64d752@epcas1p4.samsung.com>
 <20190607094030.GA12373@lst.de>
 <66707fcc-b48e-02d3-5ed7-6b7e77d53266@samsung.com>
MIME-Version: 1.0
In-Reply-To: <66707fcc-b48e-02d3-5ed7-6b7e77d53266@samsung.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_062604_479685_427EABEA 
X-CRM114-Status: GOOD (  27.85  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
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
 devicetree <devicetree@vger.kernel.org>, Sean Paul <seanpaul@chromium.org>,
 David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Torsten Duwe <duwe@lst.de>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Harald Geyer <harald@ccbib.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 arm-linux <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: multipart/mixed; boundary="===============3344415152611748450=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3344415152611748450==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="kbzg5qkkfku6tqsr"
Content-Disposition: inline


--kbzg5qkkfku6tqsr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Jun 12, 2019 at 12:00:21PM +0200, Andrzej Hajda wrote:
> On 07.06.2019 11:40, Torsten Duwe wrote:
> > On Fri, Jun 07, 2019 at 08:28:02AM +0200, Maxime Ripard wrote:
> >> On Thu, Jun 06, 2019 at 03:59:27PM +0200, Harald Geyer wrote:
> >>> If think valid compatible properties would be:
> >>> compatible =3D "innolux,n116bge", "simple-panel";
> >>> compatible =3D "edp-connector", "simple-panel";
> >> A connector isn't a panel.
> >>
> >>> compatible =3D "innolux,n116bge", "edp-connector", "simple-panel";
> >> And the innolux,n116bge is certainly not a connector either.
> >>
> >>> compatible =3D "edp-connector", "innolux,n116bge", "simple-panel";
> >>>
> >>> I can't make up my mind which one I prefere. However neither of these
> >>> variants requires actually implmenting an edp-connector driver.
> >> No-one asked to do an edp-connector driver. You should use it in your
> >> DT, but if you want to have some code in your driver that parses the
> >> DT directly, I'm totally fine with that.
> > I must admit I fail to understand what that extra node would be good fo=
r.
> > Logically, the eDP far side is connected to the well-known n116bge.
> > Inside the laptop case it might as well be a flat ribbon cable or
> > soldered directly.
> > In good intention, that's all I wanted to express in the DT. I don't
> > know whether the relevant mechanical dimensions of the panel and the
> > connector are standardised, so whether one could in theory assemble it
> > with a different panel than the one it came with.
> >
> > OTOH, as I checked during the discussion with anarsoul, the panel's
> > supply voltage is permanently connected to the main 3.3V rail.
> > We already agreed that the eDP output port must not neccessarily be
> > specified, this setup is a good example why: because the panel is
> > always powered, the anx6345 can always pull valid EDID data from it
> > so at this stage there's no need for any OS driver to reach beyond
> > the bridge. IIRC even the backlight got switched off for the blank
> > screen without.
> >
> > All I wanted to say is that "there's usually an n116bge behind it";
> > but this is mostly redundant.
> >
> > So, shall we just drop the output port specification (along with the
> > panel node) in order to get one step further?
>
> I am not sure if I understand whole discussion here, but I also do not
> understand whole edp-connector thing.

The context is this one:
https://patchwork.freedesktop.org/patch/257352/?series=3D51182&rev=3D1
https://patchwork.freedesktop.org/patch/283012/?series=3D56163&rev=3D1
https://patchwork.freedesktop.org/patch/286468/?series=3D56776&rev=3D2

TL;DR: This bridge is being used on ARM laptops that can come with
different eDP panels. Some of these panels require a regulator to be
enabled for the panel to work, and this is obviously something that
should be in the DT.

However, we can't really describe the panel itself, since the vendor
uses several of them and just relies on the eDP bus to do its job at
retrieving the EDIDs. A generic panel isn't really working either
since that would mean having a generic behaviour for all the panels
connected to that bus, which isn't there either.

The connector allows to expose this nicely.

> According to VESA[1] eDP is "Internal display interface" - there is no
> external connector for eDP, the way it is connected is integrator's
> decision, but it is fixed - ie end user do not plug/unplug it.

I'm not sure if you mean DRM or DT connector here though. In DRM,
we're doing this all the time for panels. I'm literaly typing this
=66rom a laptop that has a screen with an eDP connector.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--kbzg5qkkfku6tqsr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXQEYNgAKCRDj7w1vZxhR
xagZAP9+AZ8uzanMLNIT15MfMeCtszC85MU2JHwDCbzueao68wD/WPbzy8s2BkPf
pRPeI1xiny1h0ObfHZ8o1OdpRlKPHQg=
=nu8d
-----END PGP SIGNATURE-----

--kbzg5qkkfku6tqsr--


--===============3344415152611748450==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3344415152611748450==--

