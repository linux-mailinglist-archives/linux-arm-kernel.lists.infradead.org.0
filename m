Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 393801776EF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 14:26:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RY/41ZNFwcYb2oYiAiquMYIv/Te/IeJCFxzE7sJAmus=; b=GqthMlgCxr3p7B6LnDAhLdslg
	fgEEMIUlLBb/cYKrJVDYjC687JeRn8ka2SxE3U4z23yT1+D1VCCt03J+SrNUvzd+7gR6D4eOFivol
	le4DN4+lNXf9EvI0voNpNi8dD7UkkfK770Asuw/Qy9oZiL8qz4ffouNszcvxf6Tnjje+ijfNaK/fI
	0CPGGAYgw8dP56zSL0KZ/CXjcRRtVuT9VKX/lPRtXELp9/HnWallYWWmdmNXbl0CK8HTJQBh13Eig
	KRB67BTFO4ZtIf4GNHOPehqXqdlqIZ33D2yZNvuKJJFm8c5zh+IwQgOHrdPVjLY3F/LSrOE98eD1a
	Ben4kVPFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j97Yh-0007nj-9W; Tue, 03 Mar 2020 13:26:03 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j97YX-0007mO-ID; Tue, 03 Mar 2020 13:25:55 +0000
Received: by mail-lj1-x241.google.com with SMTP id 195so3530838ljf.3;
 Tue, 03 Mar 2020 05:25:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version; bh=LvhkOgXrb2OWkTpGBSsBoEw8KrqnEimtTkTstiOI43c=;
 b=hYJDMp6ZBiiCpZuyfa4Kz2PmSGYIgewTfo/Xg74GdOZeNH557gwFHz1Ux/J7L9VwW9
 tK2pqriZiq6Y8d0z5GrLxAqMTE93LoT6M4e4dUzy2YM5x1Yg/hc8f2UBdxBlOUMkNguF
 Lprsut29Afny2qKO6PdKwLtqt+TeOXttWQNubMom1wNcHQ7ufsr8VUc4a/7adBVh6/nt
 P62LLwNfZAXO68KuN9nEnxUnRcSYoQBH2Izt+1/PxAmi/44AATCGhflRAcWlXL4NaJv4
 qKYHN9AUT5zaoRcljLrUtX+VovwGVccxY6OU/XVzUpHQRnnOHQoPQHLGX1FMFCDmz3ae
 3Uyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version;
 bh=LvhkOgXrb2OWkTpGBSsBoEw8KrqnEimtTkTstiOI43c=;
 b=GNUVzYFSh58kP223ILdUaqkB5tuL+dhxv5t1lNgMFdnLnFZUw1AnOeSi8XMWzK4XTw
 f6dF3rGFNs5paHFTMw7CVPrPB8m01r104LvP9hVzVpaFjTuUY6iMdvn3hqvy4/boZN9G
 VzBiwkYjOiuHZHuAKsiVJCV/A8LYQc0Nt8740PygpAl0erE1wQjQyl399CrjWwLr02XZ
 252S8EFDYBQh9rjqGEH8tZxHhOqDi3xwFPSKixZ6DjkeeRJWOzHMPY81UtD/keRRco6/
 /+y0tIURBpSsbAt9rD+HZiWIN8rdweSjwxihVxzy06IrpXic7Ilx7oT24D1XTUq8YKSq
 eBag==
X-Gm-Message-State: ANhLgQ0AD+qzbqQM+JQ5+cMknHrJm03WLnLBrzXToaWZ9A25brY2f2cM
 zZpuQsvCVh/FkQziX7AZCwU=
X-Google-Smtp-Source: ADFU+vtPXg5XfV28+XzrSvE0RNfGX9/K/WgobUrhDLX7k3v3F4f7QxdZcQKIeJN8h74XuXLaZALphw==
X-Received: by 2002:a2e:b8d0:: with SMTP id s16mr2334158ljp.32.1583241951651; 
 Tue, 03 Mar 2020 05:25:51 -0800 (PST)
Received: from eldfell.localdomain ([194.136.85.206])
 by smtp.gmail.com with ESMTPSA id v15sm12066046lfg.51.2020.03.03.05.25.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Mar 2020 05:25:51 -0800 (PST)
Date: Tue, 3 Mar 2020 15:25:41 +0200
From: Pekka Paalanen <ppaalanen@gmail.com>
To: Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [PATCH 1/4] drm/fourcc: Add modifier definitions for describing
 Amlogic Video Framebuffer Compression
Message-ID: <20200303152541.68ab6f3d@eldfell.localdomain>
In-Reply-To: <CAKMK7uFgQGrnEkXyac15Wz8Opg43RTa=5cX0nN5=E_omb8oY8Q@mail.gmail.com>
References: <20200221090845.7397-1-narmstrong@baylibre.com>
 <20200221090845.7397-2-narmstrong@baylibre.com>
 <20200303121029.5532669d@eldfell.localdomain>
 <20200303105325.bn4sob6yrdf5mwrh@DESKTOP-E1NTVVP.localdomain>
 <CAKMK7uFgQGrnEkXyac15Wz8Opg43RTa=5cX0nN5=E_omb8oY8Q@mail.gmail.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_052553_631113_1E14B73E 
X-CRM114-Status: GOOD (  41.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ppaalanen[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, linux-amlogic@lists.infradead.org,
 nd <nd@arm.com>, Brian Starkey <brian.starkey@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============3617664534819642680=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============3617664534819642680==
Content-Type: multipart/signed; micalg=pgp-sha256;
 boundary="Sig_/CbiMmpJgoWAxyEnELUudiQH"; protocol="application/pgp-signature"

--Sig_/CbiMmpJgoWAxyEnELUudiQH
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Tue, 3 Mar 2020 12:37:16 +0100
Daniel Vetter <daniel@ffwll.ch> wrote:

> On Tue, Mar 3, 2020 at 11:53 AM Brian Starkey <brian.starkey@arm.com> wro=
te:
> >
> > Hi,
> >
> > On Tue, Mar 03, 2020 at 12:10:29PM +0200, Pekka Paalanen wrote: =20
> > > On Fri, 21 Feb 2020 10:08:42 +0100
> > > Neil Armstrong <narmstrong@baylibre.com> wrote:
> > > =20
> > > > Amlogic uses a proprietary lossless image compression protocol and =
format
> > > > for their hardware video codec accelerators, either video decoders =
or
> > > > video input encoders.
> > > >
> > > > It considerably reduces memory bandwidth while writing and reading
> > > > frames in memory.
> > > >
> > > > The underlying storage is considered to be 3 components, 8bit or 10=
-bit
> > > > per component, YCbCr 420, single plane :
> > > > - DRM_FORMAT_YUV420_8BIT
> > > > - DRM_FORMAT_YUV420_10BIT
> > > >
> > > > This modifier will be notably added to DMA-BUF frames imported from=
 the V4L2
> > > > Amlogic VDEC decoder.
> > > >
> > > > At least two options are supported :
> > > > - Scatter mode: the buffer is filled with a IOMMU scatter table ref=
erring
> > > >   to the encoder current memory layout. This mode if more efficient=
 in terms
> > > >   of memory allocation but frames are not dumpable and only valid d=
uring until
> > > >   the buffer is freed and back in control of the encoder
> > > > - Memory saving: when the pixel bpp is 8b, the size of the superblo=
ck can
> > > >   be reduced, thus saving memory.
> > > >
> > > > Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> > > > ---
> > > >  include/uapi/drm/drm_fourcc.h | 56 +++++++++++++++++++++++++++++++=
++++
> > > >  1 file changed, 56 insertions(+)
> > > >
> > > > diff --git a/include/uapi/drm/drm_fourcc.h b/include/uapi/drm/drm_f=
ourcc.h
> > > > index 8bc0b31597d8..8a6e87bacadb 100644
> > > > --- a/include/uapi/drm/drm_fourcc.h
> > > > +++ b/include/uapi/drm/drm_fourcc.h
> > > > @@ -309,6 +309,7 @@ extern "C" {
> > > >  #define DRM_FORMAT_MOD_VENDOR_BROADCOM 0x07
> > > >  #define DRM_FORMAT_MOD_VENDOR_ARM     0x08
> > > >  #define DRM_FORMAT_MOD_VENDOR_ALLWINNER 0x09
> > > > +#define DRM_FORMAT_MOD_VENDOR_AMLOGIC 0x0a
> > > >
> > > >  /* add more to the end as needed */
> > > >
> > > > @@ -804,6 +805,61 @@ extern "C" {
> > > >   */
> > > >  #define DRM_FORMAT_MOD_ALLWINNER_TILED fourcc_mod_code(ALLWINNER, =
1)
> > > >
> > > > +/*
> > > > + * Amlogic Video Framebuffer Compression modifiers
> > > > + *
> > > > + * Amlogic uses a proprietary lossless image compression protocol =
and format
> > > > + * for their hardware video codec accelerators, either video decod=
ers or
> > > > + * video input encoders.
> > > > + *
> > > > + * It considerably reduces memory bandwidth while writing and read=
ing
> > > > + * frames in memory.
> > > > + * Implementation details may be platform and SoC specific, and sh=
ared
> > > > + * between the producer and the decoder on the same platform. =20
> > >
> > > Hi,
> > >
> > > after a lengthy IRC discussion on #dri-devel, this "may be platform a=
nd
> > > SoC specific" is a problem.
> > >
> > > It can be an issue in two ways:
> > >
> > > - If something in the data acts like a sub-modifier, then advertising
> > >   support for one modifier does not really tell if the data layout is
> > >   supported or not.
> > >
> > > - If you need to know the platform and/or SoC to be able to interpret
> > >   the data, it means the modifier is ill-defined and cannot be used in
> > >   inter-machine communication (e.g. Pipewire).
> > > =20
> >
> > Playing devil's advocate, the comment sounds similar to
> > I915_FORMAT_MOD_{X,Y}_TILED:
> >
> >  * This format is highly platforms specific and not useful for cross-dr=
iver
> >  * sharing. It exists since on a given platform it does uniquely identi=
fy the
> >  * layout in a simple way for i915-specific userspace. =20
>=20
> Yeah which we regret now. We need to now roll out a new set of
> modifiers for at least some of the differences in these on the
> modern-ish chips (the old crap is pretty much lost cause anyway).
>=20
> This was kinda a nasty hack to smooth things over since we have epic
> amounts of userspace, but it's really not a great idea (and no one
> else really has epic amounts of existing userspace that uses tiling
> flags everywhere, this is all new code).
> -Daniel
>=20
> > Isn't the statement that this for sharing between producer and decoder
> > _on the same platform_ a similar clause with the same effect?
> >
> > What advantage is there to exposing the gory details? For Arm AFBC
> > it's necessary because IP on the SoC can be (likely to be) from
> > different vendors with different capabilities.
> >
> > If this is only for talking between Amlogic IP on the same SoC, and
> > those devices support all the same "flavours", I don't see what is
> > gained by making userspace care about internals. =20
>=20
> The trouble is if you mix&match IP cores, and one of them supports
> flavours A, B, C and the other C, D, E. But all you have is a single
> magic modifier for "whatever the flavour is that soc prefers". So
> someone gets to stuff this in DT.
>=20
> Also eventually, maybe, perhaps ARM does grow up into the
> client/server space with add-on pcie graphics, and at least for client
> you very often end up with integrated + add-in pcie gpu. At that point
> you really can't have magic per-soc modifiers anymore.

Hi,

I also heard that Pipewire will copy buffers and modifiers verbatim
from one machine to another when streaming across network, assuming
that the same modifier means the same thing on all machines.[Citation neede=
d]

If that is something that must not be done with DRM modifiers, then
please contact them and document that.


Thanks,
pq


> If people get confused I'm happy to add a "WARNING: This was a dumb
> idea for backwards compat with legacy code, no one with new stuff ever
> repeat it" to the i915 modifers.
> -Daniel
>=20
> >
> > Thanks,
> > -Brian
> > =20
> > > Neil mentioned the data contains a "header" that further specifies
> > > things, but there is no specification about the header itself.
> > > Therefore I don't think we can even know if the header contains
> > > something that acts like a sub-modifier or not.
> > >
> > > All this sounds like the modifier definitions here are not enough to
> > > fully interpret the data. At the very least I would expect a reference
> > > to a document explaining the "header", or even better, a kernel ReST
> > > doc.
> > >
> > > I wonder if this is at all suitable as a DRM format modifier as is. I
> > > have been assuming that a modifier together with all the usual FB
> > > parameters should be enough to interpret the stored data, but in this
> > > case I have doubt it actually is.
> > >
> > > I have no problem with proprietary data layouts as long as they are
> > > fully specified.
> > >
> > > I do feel like I would not be able to write a software decoder for th=
is
> > > set of modifiers given the details below.
> > >
> > >
> > > Thanks,
> > > pq
> > > =20

--Sig_/CbiMmpJgoWAxyEnELUudiQH
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEJQjwWQChkWOYOIONI1/ltBGqqqcFAl5eWtUACgkQI1/ltBGq
qqeB2g/+MGx1BzpiVLYUgsdkyAdrgVpRKL5tjnoVHgr7PbXDFZwRniEXxSYQAUt1
5jC/xpa95aN0nUZhZeGoHeMYzgEfXvUwCMcIvOEt4TcJgPeD4mp1bQI34cxFPpr1
qMkFLhgtkcJKD9X1QcmNqIB9baP+DXQWFSB9ljrVw001TLswjaT3PQyIFOWzFHjg
8XN6arfLYWYtL8Zz3wfrjN+yLMDGf06i6BquImC57KSSpwZpdIeQI81HdAi083Su
+NQcgFedEwA0LWytGjUh+auTbTxQvpadRHhlLUY3reuOIId63VpfMKBmrkvFbvzk
ziiLk9g+T+2N2Ioju3/ObIxNJIv/R5uQhyFCbsFsaYEcetXoe6HfUuehEtNOfYnP
R73TXf27d6w4FUUzBuQUitYReFY2QdVxh6xxYi0pNrIj/HAu2OJWbv+Owe9ONoB3
J1OTDBFPGE45LPqfGjkAoAvChT1Ma/C/AUrsHli0Vb6VlDre9jBc/EE3f14DKxUz
qTnPE5xxpXq0Fun2vULFBEHNfAZd4GQ6B94TG6LBVSHF9TLj4G2hMy90On5E1x4z
ehNZBCxBp0LuDXuuP9skuvXlLgKmnlAJKIKnuU11SNpRTUW9k5cq3158kI45rnhR
8Z3hWCzgPo4hp74DCggpMLR7svN2h8I6IOGNtf66Dj2N63xz2gk=
=QG9G
-----END PGP SIGNATURE-----

--Sig_/CbiMmpJgoWAxyEnELUudiQH--


--===============3617664534819642680==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3617664534819642680==--

