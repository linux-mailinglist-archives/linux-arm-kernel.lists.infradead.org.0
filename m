Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42ECD215F7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 11:09:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WRCjzBbsXbLrJdkWA2Bw4oTTyZurTrlxiZ5yxs4goeA=; b=M3NO8FbUTvaXJkUK7Ic0bs1Er
	fmcNqradnYnq+LtDGvA400Vj/G2G4oqDjFVkrOErnyaSsVS52C0DwCguCRhk/U9gjPGETkjAGROAA
	J0+b28HDa5bOY2WvcWlt3PCU6q0uGcJry2FQm3ZssA70e1L+0j+EOjIXNDKM9QziClGDJgHKJPq0+
	6fbfKmCP7s/QpGtvUv7XdayLX2ePd1FHdgMTt5NXLuUYHtCyCLOCYkF572vmHbraAOhSUHkcdA0NZ
	IooYHixfhOdzpXgsPOFSIAqCgrb0wz2YuwilpCUlD9jSTFAZy0ocLKIRUvvB6030yKS1jAFhy9y/g
	ds0jkemjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRYrT-0001OT-UL; Fri, 17 May 2019 09:09:07 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRYrL-0001NO-B7
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 09:09:01 +0000
X-Originating-IP: 80.215.154.25
Received: from localhost (unknown [80.215.154.25])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id E48BAE000E;
 Fri, 17 May 2019 09:08:45 +0000 (UTC)
Date: Fri, 17 May 2019 11:08:45 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Torsten Duwe <duwe@lst.de>
Subject: Re: [PATCH 4/4] arm64: DTS: allwinner: a64: enable ANX6345 bridge on
 Teres-I
Message-ID: <20190517090845.oujs33nplbaxcyun@flea>
References: <20190514155911.6C0AC68B05@newverein.lst.de>
 <20190514160241.9EAC768C7B@newverein.lst.de>
 <CA+E=qVfuKBzWK7dpM_eabjU8mLdzOw3zCnYk6Tc1oXdavH7CNA@mail.gmail.com>
 <20190515093141.41016b11@blackhole.lan>
 <CA+E=qVf6K_0T0x2Hsfp6EDqM-ok6xiAzeZPvp6SRg0yt010pKA@mail.gmail.com>
 <20190516154820.GA10431@lst.de>
 <CA+E=qVe5NkAvHXPvVc7iTbZn5sKeoRm0166zPW_s83c2gk7B+g@mail.gmail.com>
 <20190516164859.GB10431@lst.de>
 <20190517072738.deohh5fly4jxms7k@flea>
 <20190517101353.3e86d696@blackhole.lan>
MIME-Version: 1.0
In-Reply-To: <20190517101353.3e86d696@blackhole.lan>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_020859_680577_11F37F52 
X-CRM114-Status: GOOD (  21.08  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
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
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Harald Geyer <harald@ccbib.org>,
 Sean Paul <seanpaul@chromium.org>,
 arm-linux <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: multipart/mixed; boundary="===============7097544567740246424=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7097544567740246424==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="rsrvm5wgc3yqgwap"
Content-Disposition: inline


--rsrvm5wgc3yqgwap
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, May 17, 2019 at 10:14:18AM +0200, Torsten Duwe wrote:
> On Fri, 17 May 2019 09:27:38 +0200
> Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> > On Thu, May 16, 2019 at 06:48:59PM +0200, Torsten Duwe wrote:
> > > On Thu, May 16, 2019 at 09:06:41AM -0700, Vasily Khoruzhick wrote:
> > > >
> > > > Driver can talk to the panel over AUX channel only after t1+t3,
> > > > t1 is up to 10ms, t3 is up to 200ms.
> > >
> > > This is after power-on. The boot loader needs to deal with this.
> >
> > The bootloader can deal with it, but the kernel will also need to. The
> > bootloader might not be doing this because it's not been updated, the
> > regulator might have been disabled between the time the kernel was
> > started and the time the bridge driver probes, etc.
>
> No, you cannot practically switch off this voltage. It supports _all_
> the devices I mentioned. In fact, the PMIC needs to enable it initially,
> and then it takes some time before the SoC can access the MMC and read
> the SPL from it, just because of exactly these 3.3V. Then the boot
> loader starts, and later the eDP bridge gets initialised.

All these devices can be unused, disabled, or compiled as modules.

> In *theory*, albeit a very daring one, I could imagine a very deep
> sleep mode that can only be ended by pressing the power button, which
> should still work without DCDC1. Only then, a description of the panel
> would be required. But I probably missed something and even this does
> not work.
>
> So for all current practical purposes, we can assume the Teres-I panel
> to be powered properly and providing valid EDID; nothing to worry about
> in software.

You're creating a generic binding for all the users of that bridge,
while considering only the specific case of the Teres-I.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--rsrvm5wgc3yqgwap
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXN56HQAKCRDj7w1vZxhR
xZh0AP4+w3VFZULGFliCxVroYWWP58DFQSolgLvZtZpZrGVBeAEA6zaZsM+cYTlD
SY3UolrT94qs2Tr0bSG5TvhQwQ111wk=
=giob
-----END PGP SIGNATURE-----

--rsrvm5wgc3yqgwap--


--===============7097544567740246424==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7097544567740246424==--

