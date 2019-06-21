Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C425C4E4AD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 11:52:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eZzwYV2qFyuanRzz6rAo1sh0rrAS9NWBuxnpdtwUjFg=; b=JgeinNBfdHunAV7ai8V25G8bq
	ElPsqVNAhqaovFii1x3+E7CC4+sVXjjrnvoO/pNVSKsJKl6gUFDKI6wcUMNRlt46GXK7Sd0VTGT+p
	RVGjxO5wl0q4eS8oVjFV/vZG/77ZkCy0MTdVRDDPQx+lnkjOvMbdRw+LmvI0S5JQU1GdngxVkEYEa
	2MA33AfyKOeKS1AvRXo7MGhponMgDF8AJk1F2Vn7IRcqCUqHXmL3M8xE9/RLAodCu1Dq/PF8hkT62
	ixYQoAhQsUp6ILzceLjrww8w2gOIksjbKWar+giq57zviAY0IvIAx7BmiNUxAWxKXVimP0S2YnFsM
	quQoMzlMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heGDy-0003Bi-NA; Fri, 21 Jun 2019 09:52:50 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heFhl-0004i0-Ox; Fri, 21 Jun 2019 09:19:35 +0000
Received: by mail-wm1-x342.google.com with SMTP id s3so5655926wms.2;
 Fri, 21 Jun 2019 02:19:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=uqOVQTxmNExiORglBPUYXCzHT8Z+/V19PnzivbaHVFg=;
 b=AtY+EMm+8qKifhQvPhh0SzfwY8M40OwmQaZCjKlTFlON5z0akSBcx0Fj8962OPK3ax
 qSeCVT1pZ7yHTxx1zUODdIkRlJf0v2QfrzZ0vXrWHmop2DQLKfQxfTbLBOBUC3Fxovef
 hDWBmtqxaYo6hkz7FeuQGR9PkIz/Zg6AGkClzwe+5erBgT7hzbe60jJOYiN54ZTgWgFU
 IpuQhCE6lGLTOnsgqCJda4W/R3IpPzppR+Jz8j05S+TyH4UcgUcxA+vs3ci829X4uaaC
 UJKoOhqFMxgLLlRlQN2h2ZniFUDim5S9N8yK6CW5Ff2EI0fqFEnV3fTcbrlZl1Xf0ebw
 7e5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=uqOVQTxmNExiORglBPUYXCzHT8Z+/V19PnzivbaHVFg=;
 b=t4mDlvIlMRC/QqZpi3lmrn5gmDWp3BaclVz2/Pe3xTBoA/keDac4cLwKrYzSY2BW6x
 iR7HIuaiyS0JayLU6A8g+Keg//AdtKM+XlFWgYmPTgfOe1EyFKdPVkqaHtCuiuKgjun2
 WMYOMw86cawsl7TXYwx3ZcpxCqYUYDFvSCvHh2avDuUItEsiIVSeFEKV2RvvUDBgWx04
 6ni9oUuBjqP+AVur2KlIaR8gYpY50cTZ45/69YPo4+5MidVL9/K9qyurPX/ILgVqKlPm
 aCB6s1hTfQLRzBNSfRlr/R1ozpSz47BR3C1mAG8LC5UzYoiE4nq++efBup5XIsiRFFQe
 NmtA==
X-Gm-Message-State: APjAAAX1aXg6gAY3DSnA6sb1Q+1q0kyUTnScnrWezoAYvnOYyWj946Hz
 dYCg6Pywlf25cLj482WS5do=
X-Google-Smtp-Source: APXvYqyqeaEKJauyN71saFZvZTDk0qi91ACjIQXrzW5Yfpqp1okzyBsUv4pQHA0207ShjTomFKY7Lw==
X-Received: by 2002:a1c:4b1a:: with SMTP id y26mr3294210wma.105.1561108771060; 
 Fri, 21 Jun 2019 02:19:31 -0700 (PDT)
Received: from localhost (p2E5BEF36.dip0.t-ipconnect.de. [46.91.239.54])
 by smtp.gmail.com with ESMTPSA id r12sm1761771wrt.95.2019.06.21.02.19.29
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 21 Jun 2019 02:19:30 -0700 (PDT)
Date: Fri, 21 Jun 2019 11:19:28 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: "dbasehore ." <dbasehore@chromium.org>
Subject: Re: [PATCH 3/5] drm/panel: Add attach/detach callbacks
Message-ID: <20190621091928.GA11839@ulmo>
References: <20190611040350.90064-1-dbasehore@chromium.org>
 <20190611040350.90064-4-dbasehore@chromium.org>
 <20190611085722.GX21222@phenom.ffwll.local>
 <CAGAzgsr2sh5B1xi_ztQPN0xoQsZd26DDXwWT_qqJ68XeKReJ_Q@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAGAzgsr2sh5B1xi_ztQPN0xoQsZd26DDXwWT_qqJ68XeKReJ_Q@mail.gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_021933_939139_F31BCB3B 
X-CRM114-Status: GOOD (  24.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>,
 Sean Paul <sean@poorly.run>, Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Rob Herring <robh+dt@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 CK Hu <ck.hu@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Sam Ravnborg <sam@ravnborg.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============3182090870936697034=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3182090870936697034==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="cWoXeonUoKmBZSoM"
Content-Disposition: inline


--cWoXeonUoKmBZSoM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 11, 2019 at 05:25:47PM -0700, dbasehore . wrote:
> On Tue, Jun 11, 2019 at 1:57 AM Daniel Vetter <daniel@ffwll.ch> wrote:
> >
> > On Mon, Jun 10, 2019 at 09:03:48PM -0700, Derek Basehore wrote:
> > > This adds the attach/detach callbacks. These are for setting up
> > > internal state for the connector/panel pair that can't be done at
> > > probe (since the connector doesn't exist) and which don't need to be
> > > repeatedly done for every get/modes, prepare, or enable callback.
> > > Values such as the panel orientation, and display size can be filled
> > > in for the connector.
> > >
> > > Signed-off-by: Derek Basehore <dbasehore@chromium.org>
> > > ---
> > >  drivers/gpu/drm/drm_panel.c | 14 ++++++++++++++
> > >  include/drm/drm_panel.h     |  4 ++++
> > >  2 files changed, 18 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/drm_panel.c b/drivers/gpu/drm/drm_panel.c
> > > index 3b689ce4a51a..72f67678d9d5 100644
> > > --- a/drivers/gpu/drm/drm_panel.c
> > > +++ b/drivers/gpu/drm/drm_panel.c
> > > @@ -104,12 +104,23 @@ EXPORT_SYMBOL(drm_panel_remove);
> > >   */
> > >  int drm_panel_attach(struct drm_panel *panel, struct drm_connector *=
connector)
> > >  {
> > > +     int ret;
> > > +
> > >       if (panel->connector)
> > >               return -EBUSY;
> > >
> > >       panel->connector =3D connector;
> > >       panel->drm =3D connector->dev;
> > >
> > > +     if (panel->funcs->attach) {
> > > +             ret =3D panel->funcs->attach(panel);
> > > +             if (ret < 0) {
> > > +                     panel->connector =3D NULL;
> > > +                     panel->drm =3D NULL;
> > > +                     return ret;
> > > +             }
> > > +     }
> >
> > Why can't we just implement this in the drm helpers for everyone, by e.=
g.
> > storing a dt node in drm_panel? Feels a bit overkill to have these new
> > hooks here.
> >
> > Also, my understanding is that this dt stuff is supposed to be
> > standardized, so this should work.
>=20
> So do you want all of this information added to the drm_panel struct?
> If we do that, we don't necessarily even need the drm helper function.
> We could just copy the values over here in the drm_panel_attach
> function (and clear them in drm_panel_detach).

Yeah, I think we should have all this extra information in the struct
drm_panel. However, I think we need to more carefully split things such
that the DT parsing happens at panel probe time. That way we can catch
errors in DT, or missing entries/resources when we can still do
something about it.

If we start parsing DT and encounter failures, it's going to be very
confusing if that's at panel attach time where code will usually just
assume that everything is already validated and can't fail anymore.

Thierry

--cWoXeonUoKmBZSoM
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl0MoR0ACgkQ3SOs138+
s6HqSA/+K8hfGyhC4XmLpKlVudKyrd41RyGRD7AunVOl6aE/CaukHevacdCPSUtk
d/jaIe1fC3ImLE/uIZQDQBsBL3JzwrJHo0RVxijTJ7P9X1jrMR1ynK5sOWW0dPxR
Sd87iKVNNu0Rl8CxAYzucxHrr2Up2W6uT02H0Lbxk+idIWKixRrPbUAVCMpFHTyr
MbaVLkRd1sOEqLzetlU7HoUCx3wKgWdQgeRllgTDYgGutEQWnizljTrTglT0IAeQ
U2LAykWBhhM4LBxYoEcdfOnosYQpKrg9suaNHNXknN+KEB5lnt/UbWCi5poLg1P4
vyXMGFN8GwXXRNEKP0hYKGlLTzM19i3g9FRXAzeKv1hxmYhdG6S3dnzX22TG75No
g0mUT2aFCEImAtMtQaCsucDHAnU/+YfmTekla4NxZo2UdOh0GYyKTaZ8OKsaETu+
Hb+l76/ebe16vU+nJUYzKF5i/T+UlplLKLLGF8ivNBDSbWDD4l5Gh+hec2akFAVd
U/CvEE85FyPaUIM9rTztStgICDwaxJNk62apvYouCkIIHOR3QVlgkxvk6DM6O5/c
AjfC0dJqHvnx1HYiD0Sz65SeWArm/ujA1tcNZAFKLtPN2P5CHo6b2P2C1DfclkCw
HBVMLmjbClz3caQjKmTvXk9YSnSSZBejdPW6zptywAik+UBj2r0=
=ph6O
-----END PGP SIGNATURE-----

--cWoXeonUoKmBZSoM--


--===============3182090870936697034==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3182090870936697034==--

