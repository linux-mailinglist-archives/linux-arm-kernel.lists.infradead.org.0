Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D4034603F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 16:12:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TEZtQGlkTHI6vLQPM5KHo6bU1gAfPLGCXVelhev5920=; b=MGAdU/pl/T5/qD/wYV9J8VW9r
	TySKRDmERTfK+pCzcxE/8qSYd3rZckt5RxXUE5DFz5tGOnBreVTlsnYBiWdpQDB//mU7cGcPcHxL4
	7xNLpw0S82iUv2tQrdmZKgYYQryHJ6FHgyCp1+VVBQIxu5SoDdXaqm5uVMMkKKGBYPlFPBZ6WX2Ws
	uF2Rtha4XYxkF5XjxtTyA8I4WTHh6TVq5y2M0+lR8E2pYkghzgUGlImnaeF4w9+55laizKDLZSyDI
	+P9AT4qj41LQGy7XUI84Z6zLFrQkvGa9AEPp4aRWsCLNKPks8qgxvfs9SnUwMpi5ShN5K4TcEj5xo
	nwe/al4Kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbmwU-0006ub-Kt; Fri, 14 Jun 2019 14:12:34 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbmwL-0006tv-43
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 14:12:27 +0000
X-Originating-IP: 90.88.23.150
Received: from localhost (aaubervilliers-681-1-81-150.w90-88.abo.wanadoo.fr
 [90.88.23.150]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 0E6D6E0012;
 Fri, 14 Jun 2019 14:12:11 +0000 (UTC)
Date: Fri, 14 Jun 2019 16:12:11 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Subject: Re: [PATCH v4 02/12] drm/client: Restrict the plane_state scope
Message-ID: <20190614141211.rl7ihqgzllcai634@flea>
References: <cover.5fc7840dc8fb24744516c13acb8c8aa18e44c0d0.1560514379.git-series.maxime.ripard@bootlin.com>
 <4f6344cb770047cf5808791d849bbc0cbd330e54.1560514379.git-series.maxime.ripard@bootlin.com>
 <87wohouz90.fsf@intel.com>
MIME-Version: 1.0
In-Reply-To: <87wohouz90.fsf@intel.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_071225_474070_95C6AB9E 
X-CRM114-Status: GOOD (  19.69  )
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
Content-Type: multipart/mixed; boundary="===============5895169762698244012=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5895169762698244012==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="aamkoqa56liih3yy"
Content-Disposition: inline


--aamkoqa56liih3yy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Jani,

On Fri, Jun 14, 2019 at 03:28:59PM +0300, Jani Nikula wrote:
> On Fri, 14 Jun 2019, Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > The drm_client_modeset_commit_atomic function uses two times the
> > plane_state variable in inner blocks of code, but the variable has a scope
> > global to this function.
> >
> > This will lead to inadvertent devs to reuse the variable in the second
> > block with the value left by the first, without any warning from the
> > compiler since value would have been initialized.
> >
> > Fix this by moving the variable declaration to the proper scope.
>
> This is an improvement, but I'd consider renaming also to not shadow
> variables.
>
> > Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> > ---
> >  drivers/gpu/drm/drm_client_modeset.c | 5 ++++-
> >  1 file changed, 4 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/drm_client_modeset.c b/drivers/gpu/drm/drm_client_modeset.c
> > index 006bf7390e7d..8264c3a732b0 100644
> > --- a/drivers/gpu/drm/drm_client_modeset.c
> > +++ b/drivers/gpu/drm/drm_client_modeset.c
> > @@ -861,7 +861,6 @@ EXPORT_SYMBOL(drm_client_panel_rotation);
> >  static int drm_client_modeset_commit_atomic(struct drm_client_dev *client, bool active)
> >  {
> >  	struct drm_device *dev = client->dev;
> > -	struct drm_plane_state *plane_state;
> >  	struct drm_plane *plane;
> >  	struct drm_atomic_state *state;
> >  	struct drm_modeset_acquire_ctx ctx;
> > @@ -879,6 +878,8 @@ static int drm_client_modeset_commit_atomic(struct drm_client_dev *client, bool
> >  	state->acquire_ctx = &ctx;
> >  retry:
> >  	drm_for_each_plane(plane, dev) {
> > +		struct drm_plane_state *plane_state;
> > +
> >  		plane_state = drm_atomic_get_plane_state(state, plane);
> >  		if (IS_ERR(plane_state)) {
> >  			ret = PTR_ERR(plane_state);
> > @@ -901,6 +902,8 @@ static int drm_client_modeset_commit_atomic(struct drm_client_dev *client, bool
> >  		unsigned int rotation;
> >
> >  		if (drm_client_panel_rotation(mode_set, &rotation)) {
> > +			struct drm_plane_state *plane_state;
> > +

That's not super clear from that patch, but this variable will not
shadow the first one.

The code layout is pretty much this one:

loop () {
  struct drm_plane_state *plane_state;

  [...]
}

loop () {
  loop () {
    struct drm_plane_state *plane_state;

    [...]
  }
}

so the shadowing doesn't exist

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--aamkoqa56liih3yy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXQOrOwAKCRDj7w1vZxhR
xW5mAP9nvSTCf8R9NI55hn+KNljdsPykl3kNnrUaeBJVZsFCNAEAh28Ek8xCtB8e
7jJcsFN+S2aAIDQUEeSc7Ip8zgJZ0wY=
=34/H
-----END PGP SIGNATURE-----

--aamkoqa56liih3yy--


--===============5895169762698244012==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5895169762698244012==--

