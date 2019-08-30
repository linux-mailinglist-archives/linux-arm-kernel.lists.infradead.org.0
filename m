Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7642FA3CE8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 19:21:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RlCQmHi/nn80PUkcaVUqRBVZJ1iEeEQDAMKGLHNoOEg=; b=C1LWerO85B1+kXdq+db277OsY
	dGm/faJRaSqGallXiPgn6TMu8BbxOi2z4s+9SOPvBkbJZd6E50r0ZigEeRxU0LFqAtJeqMw7XfhQW
	L+mvnyqR8njAYESWkbhY4UcZl8jPCdhsDdHksKVAAwTeIRoj6dPNxRfeLTr4kBUeQJJcvmyeilGVr
	n4hE62kb6N/YCXBdKWoT/zHC3fw5s4/vSh8WyoV4q+KDOEPI5yk7UNf3TY7crTOoo4wybsYPuQ+8I
	5YEdgN3D9bYsIYl8C/9SND/J85cj4Op6spbxuVvwyYBLyEURPARRtZ0v9emWYA7dwPIkBdGFMMcJF
	ISzpIEqcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3kaF-00024a-Jp; Fri, 30 Aug 2019 17:21:13 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3kYz-000235-Dn
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 17:19:59 +0000
Received: by mail-qk1-x744.google.com with SMTP id p13so6746816qkg.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 30 Aug 2019 10:19:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ndufresne-ca.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version;
 bh=Lv7F7XfXtTfsXJ4fsL2rJKslKTnu6PBtRjHrGo9jnJc=;
 b=vhE/pRy0Rqd3VBQJA5AOWcACzc014lyGB4mWKq6KKlKsiZYlKftqO2Nt8QRZnyj4SB
 XgH0ppxgYw2ebO+hAXlpMeL3tBwYbT1ckNr2kR5sta3R6QVhaBsq/2k4rXkcA3W1JXf9
 c7+NWxG0azeMGQ9waD084P8ygY1qHdiHZBfo34hgS2atU4V2jscUlJ88KkNw2wkiabt3
 tTvesrhPc9OOwARdzWh2y3OS8Ueo7LmIX67GwQDmVgXQ16t1ElTttGbYxAYFsLFty2/C
 SS/yYlHVUEgb7YJs4n/thMT7LIclenx2VyhO6A3/c4qb1zH3Dzp1POGnHwbgFY+aX+Ib
 hHpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version;
 bh=Lv7F7XfXtTfsXJ4fsL2rJKslKTnu6PBtRjHrGo9jnJc=;
 b=TRwRIipf8srXR9I6lXV2Wozb1ozMSs2DVPXNhAn4SiBW2MABhYRLUgXNCAYUi4+wgu
 rP1ecSdc7RG23FWq3xGuVgGAqvkrT11zAGzZBTo+fVme1FrjoZxdmQuLwaEtNrXI9PbB
 Azur/3d5+Ntz2tGT9TtG36KfhvadcBM9Qw1+Ft4UuNvWVcpJDOnMHHkE+fpVlPU5zbFc
 Y5ATADKfi0+enRJridOlvhGLyHi9Ohm1/8OxcGH55gwmwZO5CITjdcVJRgt2AZKO8vUB
 o/vnnLyPoA4ga4DIhFjuQ516pzROgzSQWgqI6NpNVgsF3rRrjhNjJnJ0RmJV6I4AZcmz
 L8gA==
X-Gm-Message-State: APjAAAWV5ODVpb19f+AeFG9RgJUi4TQOwApR/D0u2cmpbqUuCoQmHzpB
 kRHHZXwS5CEPeTV1T6pDylgcnw==
X-Google-Smtp-Source: APXvYqzFCIDQ4rnTVqgs8xMi2NAdoI5wuK0m/PpbK+c/0M2O94L/SiDiAMj2ybLbsAwNMNggOuV7Dw==
X-Received: by 2002:a37:92c6:: with SMTP id u189mr15710250qkd.69.1567185589116; 
 Fri, 30 Aug 2019 10:19:49 -0700 (PDT)
Received: from tpx230-nicolas (modemcable154.55-37-24.static.videotron.ca.
 [24.37.55.154])
 by smtp.gmail.com with ESMTPSA id z187sm3372624qke.99.2019.08.30.10.19.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 30 Aug 2019 10:19:46 -0700 (PDT)
Message-ID: <3580d4f1549c405173f061c5e2ece3c8f2cfa7e4.camel@ndufresne.ca>
Subject: Re: [PATCH 5/8] media: cedrus: Detect first slice of a frame
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Boris Brezillon <boris.brezillon@collabora.com>, Jernej
 =?UTF-8?Q?=C5=A0krabec?= <jernej.skrabec@siol.net>
Date: Fri, 30 Aug 2019 13:19:42 -0400
In-Reply-To: <20190830074806.78a2b8b4@collabora.com>
References: <20190822194500.2071-1-jernej.skrabec@siol.net>
 <20190822194500.2071-6-jernej.skrabec@siol.net>
 <20190826202831.311c7c20@collabora.com> <3132748.mYbjOY1tKM@jernej-laptop>
 <20190830074806.78a2b8b4@collabora.com>
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_101954_332947_E0E0E8FE 
X-CRM114-Status: GOOD (  22.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devel@driverdev.osuosl.org, acourbot@chromium.org, pawel@osciak.com,
 jonas@kwiboo.se, gregkh@linuxfoundation.org, wens@csie.org, mripard@kernel.org,
 tfiga@chromium.org, paul.kocialkowski@bootlin.com, kyungmin.park@samsung.com,
 linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 hverkuil-cisco@xs4all.nl, mchehab@kernel.org, ezequiel@collabora.com,
 linux-kernel@vger.kernel.org, m.szyprowski@samsung.com
Content-Type: multipart/mixed; boundary="===============4814469588914937088=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4814469588914937088==
Content-Type: multipart/signed; micalg="pgp-sha1"; protocol="application/pgp-signature";
	boundary="=-0LtRcsKKEiURq7JtFoDE"


--=-0LtRcsKKEiURq7JtFoDE
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le vendredi 30 ao=C3=BBt 2019 =C3=A0 07:48 +0200, Boris Brezillon a =C3=A9c=
rit :
> On Thu, 29 Aug 2019 21:04:28 +0200
> Jernej =C5=A0krabec <jernej.skrabec@siol.net> wrote:
>=20
> > Dne ponedeljek, 26. avgust 2019 ob 20:28:31 CEST je Boris Brezillon=20
> > napisal(a):
> > > Hi Jernej,
> > >=20
> > > On Thu, 22 Aug 2019 21:44:57 +0200
> > >=20
> > > Jernej Skrabec <jernej.skrabec@siol.net> wrote: =20
> > > > When codec supports multiple slices in one frame, VPU has to know w=
hen
> > > > first slice of each frame is being processed, presumably to correct=
ly
> > > > clear/set data in auxiliary buffers.
> > > >=20
> > > > Add first_slice field to cedrus_run structure and set it according =
to
> > > > timestamps of capture and output buffers. If timestamps are differe=
nt,
> > > > it's first slice and viceversa.
> > > >=20
> > > > Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> > > > ---
> > > >=20
> > > >  drivers/staging/media/sunxi/cedrus/cedrus.h     | 1 +
> > > >  drivers/staging/media/sunxi/cedrus/cedrus_dec.c | 2 ++
> > > >  2 files changed, 3 insertions(+)
> > > >=20
> > > > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus.h
> > > > b/drivers/staging/media/sunxi/cedrus/cedrus.h index
> > > > 2f017a651848..32cb38e541c6 100644
> > > > --- a/drivers/staging/media/sunxi/cedrus/cedrus.h
> > > > +++ b/drivers/staging/media/sunxi/cedrus/cedrus.h
> > > > @@ -70,6 +70,7 @@ struct cedrus_mpeg2_run {
> > > >=20
> > > >  struct cedrus_run {
> > > > =20
> > > >  	struct vb2_v4l2_buffer	*src;
> > > >  	struct vb2_v4l2_buffer	*dst;
> > > >=20
> > > > +	bool first_slice;
> > > >=20
> > > >  	union {
> > > >  =09
> > > >  		struct cedrus_h264_run	h264;
> > > >=20
> > > > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_dec.c
> > > > b/drivers/staging/media/sunxi/cedrus/cedrus_dec.c index
> > > > 56ca4c9ad01c..d7b54accfe83 100644
> > > > --- a/drivers/staging/media/sunxi/cedrus/cedrus_dec.c
> > > > +++ b/drivers/staging/media/sunxi/cedrus/cedrus_dec.c
> > > > @@ -31,6 +31,8 @@ void cedrus_device_run(void *priv)
> > > >=20
> > > >  	run.src =3D v4l2_m2m_next_src_buf(ctx->fh.m2m_ctx);
> > > >  	run.dst =3D v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
> > > >=20
> > > > +	run.first_slice =3D
> > > > +		run.src->vb2_buf.timestamp !=3D run.dst- =20
> > > vb2_buf.timestamp;
> > >=20
> > > Can't we use slice->first_mb_in_slice to determine if a slice is the
> > > first? I'd expect ->first_mb_in_slice to be 0 (unless we decide to
> > > support ASO). =20
> >=20
> > I looked in all VPU documentation available to me (which isn't much) an=
d there=20
> > is no indication if ASO is supported or not. Do you have any sample vid=
eo with=20
> > out-of-order slices? It's my understanding that this is uncommon.
>=20
> I'm not entirely sure, but my understanding was that it might be used
> when streaming over network where some packets might be lost and
> re-emitted later on.
>=20
> > If it's=20
> > supported, I would leave code as-is.
>=20
> I remember seeing the ASO acronym mentioned in the hantro G1 spec, but
> at the same time we're doing frame-based decoding, so I guess the HW
> block expects slices to be ordered in that case. Honestly I don't know,
> so let's keep the code as-is.

We had an ASO interrupt when we tried to do slice decoding rather then
frame. I believe on Hantro, the way to do ASO is to actually re-order
in software.

ASO is a feature of baseline profile use to reduce latency. As an
example, VA-API does not support baseline profile (only constrained-
baseline, which excludes ASO).

Nicolas


--=-0LtRcsKKEiURq7JtFoDE
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQSScpfJiL+hb5vvd45xUwItrAaoHAUCXWlarwAKCRBxUwItrAao
HBNPAJ9N2BBAFQLk5dhvhHq+DkURXWdFXQCcDJNUwgnp0u1Q8T6rWaMoTSg5Kck=
=hsiz
-----END PGP SIGNATURE-----

--=-0LtRcsKKEiURq7JtFoDE--



--===============4814469588914937088==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4814469588914937088==--


