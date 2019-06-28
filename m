Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B160259D22
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 15:44:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SbtQ5dWq9MGN7l2IUs204elpVFNGCgewQBCd40AHBw0=; b=r4CGzOj8z6uLTOYmDTL754ta+
	5yFr8hkto+aDs7Hj7wlBZZ3DIgNfv3KjnacxGd5kTxOyn0LZcwCqYsWKEjwb1oje58ccjf/gyNv6I
	y5O3MsYyzlCi3sBPxIL3wLo46F9eLBkQ82MImJyopz2zoXrOwhHlIRIRk4/ULeCWRChxhZ6kkkXVi
	cZBbdXQh59pG6vzQIZKT2IGvWOOx9eGPqP4WEzRyW3mGXKZFWqIHZWvegn+rilnSKVBl2mjdRgt34
	SoCtzYj4dJH0uRp+3vzaZLg2wKi9qq1akUE5uAgYRJUUHfaBrjnIhlI5QPLMhMkKynSn9AmGfjxhP
	mbQqNjTiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgrAo-0000n8-8S; Fri, 28 Jun 2019 13:44:18 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgrAd-0000mm-4l
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 13:44:09 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 1D6A51C0002;
 Fri, 28 Jun 2019 13:43:55 +0000 (UTC)
Date: Fri, 28 Jun 2019 15:43:54 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH v5 06/12] drm/modes: Support modes names on the command
 line
Message-ID: <20190628134354.trogpmqedr5h3fvl@flea>
References: <cover.5190d070d1439d762d7ab273f4ae2573087fee20.1560783090.git-series.maxime.ripard@bootlin.com>
 <18443e0c3bdbbd16cea4ec63bc7f2079b820b43b.1560783090.git-series.maxime.ripard@bootlin.com>
 <20190626152659.GA11481@ulmo>
MIME-Version: 1.0
In-Reply-To: <20190626152659.GA11481@ulmo>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_064407_576915_5800E601 
X-CRM114-Status: GOOD (  41.54  )
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
Cc: eben@raspberrypi.org, David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 dri-devel@lists.freedesktop.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Sean Paul <seanpaul@chromium.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Daniel Vetter <daniel.vetter@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6328429696558995126=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6328429696558995126==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="tdzuo56jtjnin7la"
Content-Disposition: inline


--tdzuo56jtjnin7la
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Thierry,

On Wed, Jun 26, 2019 at 05:26:59PM +0200, Thierry Reding wrote:
> On Mon, Jun 17, 2019 at 04:51:33PM +0200, Maxime Ripard wrote:
> > From: Maxime Ripard <maxime.ripard@free-electrons.com>
> >
> > The drm subsystem also uses the video=3D kernel parameter, and in the
> > documentation refers to the fbdev documentation for that parameter.
> >
> > However, that documentation also says that instead of giving the mode u=
sing
> > its resolution we can also give a name. However, DRM doesn't handle that
> > case at the moment. Even though in most case it shouldn't make any
> > difference, it might be useful for analog modes, where different standa=
rds
> > might have the same resolution, but still have a few different paramete=
rs
> > that are not encoded in the modes (NTSC vs NTSC-J vs PAL-M for example).
> >
> > Reviewed-by: Noralf Tr=F8nnes <noralf@tronnes.org>
> > Signed-off-by: Maxime Ripard <maxime.ripard@free-electrons.com>
> > ---
> >  drivers/gpu/drm/drm_client_modeset.c |  4 ++-
> >  drivers/gpu/drm/drm_connector.c      |  3 +-
> >  drivers/gpu/drm/drm_modes.c          | 62 +++++++++++++++++++++--------
> >  include/drm/drm_connector.h          |  7 +++-
> >  4 files changed, 59 insertions(+), 17 deletions(-)
>
> This patch causes an issue on various Tegra boards that have so far been
> running flawlessly. Here's an extract from the boot log:
>
> 	[    0.000000] Kernel command line: root=3D/dev/nfs rw netdevwait ip=3D:=
::::eth0:on nfsroot=3D192.168.23.1:/srv/nfs/tegra194 console=3DttyTCU0,1152=
00n8 console=3Dtty0 fbcon=3Dmap:0 net.ifnames=3D0 rootfstype=3Dext4 video=
=3Dtegrafb no_console_suspend=3D1 earlycon=3Dtegra_comb_uart,mmio32,0x0c168=
000 gpt usbcore.old_scheme_first=3D1 tegraid=3D19.1.2.0.0 maxcpus=3D8 boot.=
slot_suffix=3D boot.ratchetvalues=3D0.2.2 vpr=3D0x8000000@0xf0000000 sdhci_=
tegra.en_boot_part_access=3D1
> 	...
> 	[   18.597001] [drm:drm_connector_init [drm]] cmdline mode for connector=
 DP-1 tegrafb 0x0@60Hz
> 	...
> 	[   18.627145] [drm:drm_connector_init [drm]] cmdline mode for connector=
 DP-2 tegrafb 0x0@60Hz
> 	...
> 	[   18.673770] [drm:drm_connector_init [drm]] cmdline mode for connector=
 HDMI-A-1 tegrafb 0x0@60Hz
> 	...
> 	[   19.057500] [drm:drm_mode_debug_printmodeline [drm]] Modeline "0x0": =
0 0 0 0 0 0 0 1 4 1 0x20 0x6
> 	[   19.066341] [drm:drm_mode_prune_invalid [drm]] Not using 0x0 mode: CL=
OCK_LOW
> 	...
> 	[   19.677803] [drm:drm_client_modeset_probe [drm]] looking for cmdline =
mode on connector 60
> 	[   19.686019] [drm:drm_client_modeset_probe [drm]] found mode 0x0
> 	...
> 	[   19.851843] drm drm: failed to set initial configuration: -28
>
> So basically what's happening here is that the bootloader is passing a
> video=3D parameter on the command-line and after this patch, the DRM core
> will consider the tegrafb in that parameter to be a named video mode.
> The mode is then filtered out because it doesn't make any sense, but
> then drm_client_modeset_probe() still tries to use it, eventually
> leading to failure because we can't allocate memory for a 0x0
> framebuffer.

What was the behaviour before? That it wouldn't set a mode at all?

> Now, there are obviously a couple of places where things go wrong. On
> one hand I think if the mode specified on the command-line is already
> filtered out, then drm_client_modeset_probe() should not be trying to
> use it.

Yeah, that would make sense

> One could also argue that the bootloader shouldn't be passing that
> video=3Dtegrafb parameter in the first place. Then again, this is nothing
> out of the ordinary (as documented in Documentation/fb/modedb.rst).

I've read that documentation, and I'm not sure which section in there
allows to do that?

> The problem with named modes, and you already highlighted this in your
> comment in the code, is that it's not possible to distinguish between a
> mode name and a video=3D option that defines the framebuffer device to
> use.
>
> That said, I wouldn't be surprised if this change ended up breaking on
> other devices. I'm also not sure that under these circumstances it's a
> good idea to support named modes. At least not until we have a better
> way of determining what's a real mode name and what isn't. Looking at
> the old modedb from fb, not even the standard modes listed there have
> names associated with them, so I'm not sure how this was ever supposed
> to work. From the looks of it, some of the fbdev drivers seem to take a
> mode list from board-code (see for example the mx21ads_modes array from
> arch/arm/mach-imx/mach-mx21ads.c). The imxfb driver can then take a mode
> name from the command line and try to match it against a list of known
> modes. That seems to match what the documentation says.
>
> However, that also really only works because this is all directly dealt
> with in the fbdev drivers. For DRM/KMS we don't do that and instead we
> rely on the core to provide this backwards-compatibility. However, at
> the time when we parse the mode from the command line we don't have the
> list of modes that are considered to be valid, so your patch currently
> needs to assume that it is a valid mode. I don't think that's a good
> idea, because clearly not all strings that currently make it through the
> filter are actually modes.

We have a list of named modes in the connector, and we match against
that. It already works for sunxi (minus the bugs..).

> So if we really need this, I think we want some way for the connector to
> provide the list of named modes that it supports so that by the time we
> want to parse the command-line we can check whether it's actually a name
> to avoid false positives like the ones I'm seeing on Tegra.

I guess that could work yep

> For now it might just be easiest to avoid any of this and disable the
> named mode support until it's a bit more mature. The patch no longer
> reverts cleanly, but it should be fairly easy to disable the feature in
> a follow-up patch again.

If we were to do that, I'd really like to have least get a unit test
for that case, and some documentation on how we're supposed to deal
with this case.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--tdzuo56jtjnin7la
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXRYZmgAKCRDj7w1vZxhR
xXSoAQCxbeuFE2y6dgH33D7dIgM3UYtqGoIhXIhYyxJZRjDlKAEAsG01uW0iAafH
qsuo2MfZ9+xPfiXv9NjUj+FauSt4Jg8=
=uJ3i
-----END PGP SIGNATURE-----

--tdzuo56jtjnin7la--


--===============6328429696558995126==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6328429696558995126==--

