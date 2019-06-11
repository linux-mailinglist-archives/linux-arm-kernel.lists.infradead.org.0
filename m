Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03E443CCD0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 15:21:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GPvkM2ZpBf+c/LO3jyQKzlqzJwQReX2fyTQFDnBpmOo=; b=Iq6QM16O2s3AkexfBXeb9tDfE
	X0hA1eS6nk0jsb8GoMwJzDmS+njXwv00nJhdgP6NrDmIbVuBn/xzmCJButZuXVzu7jREnFObtPFGY
	bY393knnVO5B5/1E7gRxvbJ9w9jQ7LEYUgF8L1t/Ig0U/N2wnUTboIzgeBPt4qmuPxsAfDR1bdFhD
	y3FIpVTPq3x053wDI/0nbQ9fb+zoP02pdApJwm3jSzA1/ipnwZPWxSq+VMwBuXg83tYxq4e+BQksS
	Gvqj8QdqgCkGiiWK0Y91m3OMxu8dgU44l7bgKYf9puZ4Tdyt2mDIsqJdq4Ol/j1e6KwQMWzyYriFT
	Z1HIHE3Hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hagiF-0000FT-71; Tue, 11 Jun 2019 13:21:19 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haghv-0000En-2i
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 13:21:01 +0000
X-Originating-IP: 90.88.159.246
Received: from localhost (aaubervilliers-681-1-40-246.w90-88.abo.wanadoo.fr
 [90.88.159.246]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 517D7E0003;
 Tue, 11 Jun 2019 13:20:50 +0000 (UTC)
Date: Tue, 11 Jun 2019 15:20:49 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Noralf =?utf-8?Q?Tr=C3=B8nnes?= <noralf@tronnes.org>
Subject: Re: [PATCH v3 3/6] drm/modes: Allow to specify rotation and
 reflection on the commandline
Message-ID: <20190611132049.njlrgbtobzgyzyzh@flea>
References: <cover.87b91639451f23d4ab68a7c9812f2dd158869025.1555591281.git-series.maxime.ripard@bootlin.com>
 <ba320b3a13c4444102b77c4d00f7c1dc810adc3c.1555591281.git-series.maxime.ripard@bootlin.com>
 <9ccb7573-d46e-4b90-7caa-7b8cd7b8e7a2@tronnes.org>
 <e2edb1dc-f719-93f0-5205-ecb7b44b057e@tronnes.org>
MIME-Version: 1.0
In-Reply-To: <e2edb1dc-f719-93f0-5205-ecb7b44b057e@tronnes.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_062059_445246_1BB60C48 
X-CRM114-Status: GOOD (  19.66  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
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
Cc: eben@raspberrypi.org, David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 dri-devel@lists.freedesktop.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Sean Paul <seanpaul@chromium.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Daniel Vetter <daniel.vetter@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4623659238584809610=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4623659238584809610==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="mdnmry45awvilud2"
Content-Disposition: inline


--mdnmry45awvilud2
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Noralf,

On Fri, Apr 19, 2019 at 10:53:28AM +0200, Noralf Tr=F8nnes wrote:
> Den 18.04.2019 18.40, skrev Noralf Tr=F8nnes:
> >
> >
> > Den 18.04.2019 14.41, skrev Maxime Ripard:
> >> Rotations and reflections setup are needed in some scenarios to initia=
lise
> >> properly the initial framebuffer. Some drivers already had a bunch of
> >> quirks to deal with this, such as either a private kernel command line
> >> parameter (omapdss) or on the device tree (various panels).
> >>
> >> In order to accomodate this, let's create a video mode parameter to de=
al
> >> with the rotation and reflexion.
> >>
> >> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> >> ---
> >>  drivers/gpu/drm/drm_client_modeset.c |  10 +++-
> >>  drivers/gpu/drm/drm_modes.c          | 110 ++++++++++++++++++++++----=
--
> >>  include/drm/drm_connector.h          |   9 ++-
> >>  3 files changed, 109 insertions(+), 20 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/drm_client_modeset.c b/drivers/gpu/drm/dr=
m_client_modeset.c
> >> index f2869c82510c..15145d2c86d5 100644
> >> --- a/drivers/gpu/drm/drm_client_modeset.c
> >> +++ b/drivers/gpu/drm/drm_client_modeset.c
> >> @@ -823,6 +823,7 @@ EXPORT_SYMBOL(drm_client_modeset_probe);
> >>  bool drm_client_panel_rotation(struct drm_mode_set *modeset, unsigned=
 int *rotation)
> >>  {
> >>  	struct drm_connector *connector =3D modeset->connectors[0];
> >> +	struct drm_cmdline_mode *cmdline;
> >>  	struct drm_plane *plane =3D modeset->crtc->primary;
> >>  	u64 valid_mask =3D 0;
> >>  	unsigned int i;
> >> @@ -844,6 +845,15 @@ bool drm_client_panel_rotation(struct drm_mode_se=
t *modeset, unsigned int *rotat
> >>  		*rotation =3D DRM_MODE_ROTATE_0;
> >>  	}
> >>
> >> +	/**
> >> +	 * We want the rotation on the command line to overwrite
> >> +	 * whatever comes from the panel.
> >> +	 */
> >> +	cmdline =3D &connector->cmdline_mode;
> >> +	if (cmdline->specified &&
> >> +	    cmdline->rotation !=3D DRM_MODE_ROTATE_0)
> >
> > I believe you need to drop that second check, otherwise rotate=3D0 will
> > not overwrite panel rotation.
> >
> >> +		*rotation =3D cmdline->rotation;
>
> I remembered that you wanted this to propagate to DRM userspace. That's
> not happening here.

It's propated to the userspace through the plane's rotation property,
I just checked.

> The only way I see for that to happen, is to set
> ->panel_orientation. And to repeat myself, imo that makes
> 'orientation' a better name for this video=3D option.

orientation and rotation are two different things to me. The
orientation of a panel for example is absolute, while the rotation is
a transformation. In this particular case, I think that both the
orientation and the rotation should be taken into account, with the
orientation being the default state, and the hardware / panel will
tell us that, while the rotation would be a transformation from that
default to whatever the user wants.

More importantly, the orientation is a property of the hardware (ie,
how the display has been assembled), while the rotation is a software
construct.

And if the property being used to expose that is the rotation, I guess
it would make sense to just use the same name and remain consistent.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--mdnmry45awvilud2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXP+qrAAKCRDj7w1vZxhR
xe5PAQDCQaIDsixvc62mOwJmH8N2VDKLgwxZHb4VAkAg2RCODwD9GaVUIrYgsH4V
8gU7LihF1xKwFgXm4nWPMTkv3/PVmAE=
=ch9K
-----END PGP SIGNATURE-----

--mdnmry45awvilud2--


--===============4623659238584809610==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4623659238584809610==--

