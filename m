Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A4AF112449
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 09:17:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6HZHKMQQ1AiJvT94VQxcdqnrSxxO6KxCTIzvAF1X+Q4=; b=dVBK4e6crWVtOUzkqcvLpnGBW
	oYzFQYWdeKXEtzWxmXn4dZyUy87luVWVDzkbCfsdhkPbtB0ef+xyTHIugKjGdaqR6G/YIqugnblU7
	1lcgLeSpboIM4PYGr5sBNTMixZs8Oy6O3BQpvY9M/8C9jbPJZ6SewY+MUYbojDkukc4SorGNVaWJ7
	ZdhBHLo5pRnRjQkGWvc3If0IsmPMHXBz4sZ7LzpExTn6hi5FWXyDj7thwktuIz4U8w+GPeEey3T+0
	Vb2k+gJTW1nVPlj8o4GI2JgYflpmTArpH1oBBYeR74wF7Dvhi4T5kCnnekOUzdKwenF70J37PxB+E
	8WZyQX91A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icPqH-0001yg-DG; Wed, 04 Dec 2019 08:17:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icPq8-0001yE-Vr; Wed, 04 Dec 2019 08:16:54 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1E5F420675;
 Wed,  4 Dec 2019 08:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575447412;
 bh=Yt0CUSJagubBAQX6uTNxcqQuzIkcBfH1t8baRs8SOlk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=E7fxNlrEVB9EFySevdXDf/z1CiVsGMDm92rYyWGExuFhs6ZLSvzTMxb3W7ZP8iQKM
 t280I+jOCHgM+lbLKFrmTg6FtfFK/0Gq1JvHNCiIy/ZAMC9E6CKo77Ffp3D3fPMKgc
 6P4rFJIt7apu1ThmX6/Oic+NdqU7qv/8yiQX7ZkA=
Date: Wed, 4 Dec 2019 09:16:50 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH v1 07/26] drm/panel: remove get_timings
Message-ID: <20191204081650.4n4ehbub4n7pxdom@gilmour.lan>
References: <20191202193230.21310-1-sam@ravnborg.org>
 <20191202193230.21310-8-sam@ravnborg.org>
 <20191203074659.ilsyv4yx7pzw5vax@gilmour.lan>
 <CACRpkdZrReQs08+bXS7s7eJ-K76nMGvRgQ-L-1-baunEtiF40g@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CACRpkdZrReQs08+bXS7s7eJ-K76nMGvRgQ-L-1-baunEtiF40g@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_001653_068043_1E67B8E6 
X-CRM114-Status: GOOD (  27.59  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>, Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Sam Ravnborg <sam@ravnborg.org>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>, NXP Linux Team <linux-imx@nxp.com>,
 Jagan Teki <jagan@amarulasolutions.com>, Jitao Shi <jitao.shi@mediatek.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Abhinav Kumar <abhinavk@codeaurora.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Stefan Agner <stefan@agner.ch>, linux-tegra@vger.kernel.org,
 Sean Paul <sean@poorly.run>, Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Purism Kernel Team <kernel@puri.sm>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Daniel Vetter <daniel@ffwll.ch>
Content-Type: multipart/mixed; boundary="===============9050285684592416608=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============9050285684592416608==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="voqjdysu66o2gyxb"
Content-Disposition: inline


--voqjdysu66o2gyxb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Linus,

On Tue, Dec 03, 2019 at 04:20:24PM +0100, Linus Walleij wrote:
> On Tue, Dec 3, 2019 at 8:47 AM Maxime Ripard <mripard@kernel.org> wrote:
>
> > Using only the mode as we do currently has a bunch of shortcomings as
> > almost no encoder will be able to provide the typical pixel clock, and
> > that situation leads to multiple things:
> >
> >   - If someone working on one encoder wants to upstream a panel they
> >     have tested, chances are this will not be the typical pixel clock
> >     / timings being used but rather the one that will match what that
> >     SoC is capable of. Trouble comes when a second user comes in with
> >     a different encoder and different capabilities, and then we have a
> >     maintainance fight over which timing is the true timing (with a
> >     significant chance that none of them are).
> >
> >   - If we can't match the pixel clock, we currently have no easy way
> >     to make the usual measures of reducing / growing the porches and
> >     blankings areas to match the pixel clock we can provide, since we
> >     don't have an easy way to get the tolerance on those timings for a
> >     given panel. There's some ad hoc solutions on some drivers (I
> >     think vc4 has that?) to ignore the panel and just play around with
> >     the timings, but I think this should be generalised.
>
> I've been confused with these things as they look today and it seems
> the whole struct drm_display_mode could need some improvement?
>
> If .clock is supposed to be htotal * vtotal * vrefresh, what is the
> .clock doing there anyway.

It's one thing I wonder as well. I guess it's just more convenient for
everyone, since it's exposed by the VESA modes (iirc) and a lot of
drivers really care about the clock.

> Sadly I am too inexperienced to realize where the tolerances should
> be stated, but I guess just stating that hsync_start etc are typical,
> then specify some tolerance for each would help a bit?

The timings structure discussed in the patch that started this
discussion is actually doing this nicely, you have for each timing the
minimum, typical and maximum value. The current issue with it though
is that it's pretty difficult to use it, since it's not really tied to
any of the panel code (or DRM helpers). The only driver that was
supporting it was omapdrm and it was removed recently.

If we really wanted to support it, one path forward I can see would be
to make the timings structure the primary one, and only use
drm_display_mode for userspace facing code, and generate it from the
timings. This would be a pretty invasive change though...

> On the DSI displays in video mode there is also this EOL area
> which seems to be where the logic is normally just idling for a
> while, that can be adjusted on some hardware as well, but
> I don't quite understand it admittedly. Sometimes I wonder if
> anyone really understands DSI... :/

I'm not aware of any EOL area in MIPI-DSI that would make the hardware
idle, don't you mean LP-11?

Maxime

--voqjdysu66o2gyxb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHQEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXedrcgAKCRDj7w1vZxhR
xdavAPjzTTCvwouCytfXW/t4u+SVB9rmOV3G+YlNApkfwiGrAP9ZY7cFIlhaaHR6
KPuqccewYOnD4eU7PSrJ9ryTiv4jDA==
=P7Ao
-----END PGP SIGNATURE-----

--voqjdysu66o2gyxb--


--===============9050285684592416608==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============9050285684592416608==--

