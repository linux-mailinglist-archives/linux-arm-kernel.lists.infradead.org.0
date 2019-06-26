Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 719F456BF3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 16:30:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0t2b3FSAaYAU0oFRfQ6Lu9nQGwU0vr51cpAGKKgr/WM=; b=rzHbBi7ASx7xjL
	dJJU9PtNKUov5JSdn3RpVufElmi3z7kmbLl/LPheWpfcHz0n/ZoFjEykcK39k2F0yxnW7p4rMfCd7
	IT3Mp20y78FLNFrPkQMlP+DACBOWXWNsW7CCVAucYyEBuUP9erjTeVTeMPgwy7PHX3vuA3tlJ25I7
	MS3uhTR9L1ytH9zBNsX7Au+b1uECJXsjFDBCuse1aLdkomeEOI3yHnSTpLBpsUN5sJaJF5k7xz/1X
	ASWR3qRLkkh8VBW1BUdR9pdnm6WC7ovSKv3zT8NA93SjErydat0vL2OGnrQO4RJpF7NzU1mXz3oc8
	Djfb4nJuxrfxGNbj7a5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg8wb-0004kN-Tk; Wed, 26 Jun 2019 14:30:41 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg8wP-0004jo-P7
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 14:30:31 +0000
Received: by mail-ed1-x544.google.com with SMTP id w13so3695031eds.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 07:30:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:mail-followup-to
 :references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=oycxIMhWeOjgRZ0/QzcUw1Wm4NjGiCorky0TzSRYEqE=;
 b=ATxugIl2SCaT9srbmP+Rni5GHifDKlPGbXR7cYJH8NZJPoLZdG+YoE+KGlga5ijBjN
 0IaYYsPbZbhlbZ+tgs7ixOM0KKMv+5E5aECiVHH+fBYMy1syTxMjneNp9IDNlk7a/jbe
 M++g+/H/ce1vcxRfKzoZWLaBkn7ISoij6+edI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=oycxIMhWeOjgRZ0/QzcUw1Wm4NjGiCorky0TzSRYEqE=;
 b=sNlZd8juv4o2Gw4qwEvemex+JOFvHvyuhSwhPh48EKTWCIxCrvgt0QvZQ0lerpvPAc
 3HxyRdM6urn/JUy31Nd1X6uPO0vGrTgA3lieDLxkNKLUqrmDcwTOauDNoL5/xBdT42Vk
 8Mw6WsYeNcV6xpdbXP9D5RvQ1aLL+YvZIrrqnf1yQBt+YsJ1OJUt6ZzS4c5GsCsT/xfG
 TMGPKEq/m2o3PjsJGIjhIq7Kd5cYXxkZOh53P36/kfx5nASiU7GIpDsCv3Wx4V7dr+YC
 y7jGuu4YdO8wCymuCb9ksSSd4Q7w38qVKEE9TREDt4DjhcITS0DTpWyfxXpxTwuMjz0L
 N15A==
X-Gm-Message-State: APjAAAXrQ5fc7ZW7uTruSWnpB0HwHamLjBiloAAYvV2hwPRaPq5gY5Nt
 UuYeXpGd1P1sJWsoNQ1JCNHnSQ==
X-Google-Smtp-Source: APXvYqzNFt6g8HxgwDJyHbLTfRt/7BCAd97Ph8ib/VE+AghliKNlIAXkR9U7cf7MH6mNrMRncjwmSA==
X-Received: by 2002:a05:6402:2cb:: with SMTP id
 b11mr5612295edx.281.1561559427848; 
 Wed, 26 Jun 2019 07:30:27 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id j10sm3037251ejk.23.2019.06.26.07.30.26
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 26 Jun 2019 07:30:27 -0700 (PDT)
Date: Wed, 26 Jun 2019 16:30:25 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v3 3/4] drm/vblank: estimate vblank while disabling
 vblank if interrupt disabled
Message-ID: <20190626143025.GN12905@phenom.ffwll.local>
Mail-Followup-To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?=
 <ville.syrjala@linux.intel.com>, 
 Robert Beckett <bob.beckett@collabora.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Sean Paul <sean@poorly.run>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, David Airlie <airlied@linux.ie>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
References: <cover.1561483965.git.bob.beckett@collabora.com>
 <b96132cef4b63118df1026a99b3c345692e3de26.1561483965.git.bob.beckett@collabora.com>
 <20190626132732.GP5942@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190626132732.GP5942@intel.com>
X-Operating-System: Linux phenom 4.19.0-5-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_073029_822162_F180DC0C 
X-CRM114-Status: GOOD (  23.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Robert Beckett <bob.beckett@collabora.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 David Airlie <airlied@linux.ie>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, Sean Paul <sean@poorly.run>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 26, 2019 at 04:27:32PM +0300, Ville Syrj=E4l=E4 wrote:
> On Tue, Jun 25, 2019 at 06:59:14PM +0100, Robert Beckett wrote:
> > If interrupts are disabled (e.g. via vblank_disable_fn) and we come to
> > disable vblank, update the vblank count to best guess as to what it
> > would be had the interrupts remained enabled, and update the timesamp to
> > now.
> > =

> > This avoids a stale vblank event being sent while disabling crtcs during
> > atomic modeset.
> > =

> > Fixes: 68036b08b91bc ("drm/vblank: Do not update vblank count if interr=
upts
> > are already disabled.")
> =

> I don't understand that commit. drm_vblank_off() should be called
> when the power is still present, so it looks to me like that
> commit is actually wrong. So I think we may want to just revert
> it and figure out what the actual bug was.

Hm yeah we might need a power domain get/put around our
drm_crtc_vblank_off() call to make sure it dtrt. Revert sounds like a good
idea instead of adding more kludges ... a-b: me on the revert, even though
I did ack the original patch too.
-Daniel

> =

> > =

> > Signed-off-by: Robert Beckett <bob.beckett@collabora.com>
> > ---
> >  drivers/gpu/drm/drm_vblank.c | 16 +++++++++++++++-
> >  1 file changed, 15 insertions(+), 1 deletion(-)
> > =

> > diff --git a/drivers/gpu/drm/drm_vblank.c b/drivers/gpu/drm/drm_vblank.c
> > index 7dabb2bdb733..db68b8cbf797 100644
> > --- a/drivers/gpu/drm/drm_vblank.c
> > +++ b/drivers/gpu/drm/drm_vblank.c
> > @@ -375,9 +375,23 @@ void drm_vblank_disable_and_save(struct drm_device=
 *dev, unsigned int pipe)
> >  	 * interrupts were enabled. This avoids calling the ->disable_vblank()
> >  	 * operation in atomic context with the hardware potentially runtime
> >  	 * suspended.
> > +	 * If interrupts are disabled (e.g. via blank_disable_fn) then make
> > +	 * best guess as to what it would be now and make sure we have an up
> > +	 * to date timestamp.
> >  	 */
> > -	if (!vblank->enabled)
> > +	if (!vblank->enabled) {
> > +		ktime_t now =3D ktime_get();
> > +		u32 diff =3D 0;
> > +		if (vblank->framedur_ns) {
> > +			u64 diff_ns =3D ktime_to_ns(ktime_sub(now, vblank->time));
> > +			diff =3D DIV_ROUND_CLOSEST_ULL(diff_ns,
> > +						     vblank->framedur_ns);
> > +		}
> > +
> > +		store_vblank(dev, pipe, diff, now, vblank->count);
> > +
> >  		goto out;
> > +	}
> >  =

> >  	/*
> >  	 * Update the count and timestamp to maintain the
> > -- =

> > 2.18.0
> > =

> > _______________________________________________
> > dri-devel mailing list
> > dri-devel@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/dri-devel
> =

> -- =

> Ville Syrj=E4l=E4
> Intel
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
