Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABCBAD07ED
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 09:12:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RAVSMN4eDU/3DCtL6t0hSechKdDRDSuRDjfdT4hSXqI=; b=gvFv8ebQNXCLLf5J41ObhZNNV
	gkzBt8Id1hFAmAFkxsH5+89mm4SYT5/t8uCbFiBtD3uvXYHsy/HQa9s2q68o+9vmr66cikpQwxnVH
	4LyM8Jd3T7sN/dsZ8yj4pt7C2TofGsA2tjtcLXrAUBdX/E0LSZLS2KA8TGZjP5gpoZ/lvBoOwXNLR
	4ReAZrYDXuO4e+3RTbSrGHjta2F770z7o+qfps9G3ckCJa3gYJcwiv1lV1MS+Cfwp6+akUAqsZBBe
	gvctgfDIB9a4/y/yH4bHN9S4XH/T/zIutQu3UVTJP5forQS8o4SFCQnKdIMy/+GiMAOTJTKAAn0CO
	EgFZkxMlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI69N-00036p-BQ; Wed, 09 Oct 2019 07:12:45 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI69D-000363-4L
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 07:12:37 +0000
X-Originating-IP: 86.250.200.211
Received: from aptenodytes (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id D78DBC0002;
 Wed,  9 Oct 2019 07:12:24 +0000 (UTC)
Date: Wed, 9 Oct 2019 09:12:24 +0200
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@siol.net>
Subject: Re: [PATCH v8 0/3] HEVC/H.265 stateless support for V4L2 and Cedrus
Message-ID: <20191009071224.GA592742@aptenodytes>
References: <20190927143411.141526-1-paul.kocialkowski@bootlin.com>
 <9239760.nWnt09pPvv@jernej-laptop>
MIME-Version: 1.0
In-Reply-To: <9239760.nWnt09pPvv@jernej-laptop>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_001235_448669_0CAEB77E 
X-CRM114-Status: GOOD (  25.26  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
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
Cc: Nicolas Dufresne <nicolas@ndufresne.ca>, Tomasz Figa <tfiga@chromium.org>,
 Jonas Karlman <jonas@kwiboo.se>, linux-sunxi@googlegroups.com,
 Maxime Ripard <mripard@bootlin.com>, linux-kernel@vger.kernel.org,
 Hans Verkuil <hverkuil@xs4all.nl>, Chen-Yu Tsai <wens@csie.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============2713986345323468151=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2713986345323468151==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="8t9RHnE3ZwKMSgU+"
Content-Disposition: inline


--8t9RHnE3ZwKMSgU+
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue 08 Oct 19, 23:48, Jernej =C5=A0krabec wrote:
> Dne petek, 27. september 2019 ob 16:34:08 CEST je Paul Kocialkowski=20
> napisal(a):
> > HEVC/H.265 stateless support for V4L2 and Cedrus
> >=20
> > This is early support for HEVC/H.265 stateless decoding in V4L2,
> > including both definitions and driver support for the Cedrus VPU
> > driver, which concerns Allwinner devices.
> >=20
> > A specific pixel format is introduced for the HEVC slice format and
> > controls are provided to pass the bitstream metadata to the decoder.
> > Some bitstream extensions are intentionally not supported at this point.
> >=20
> > Since this is the first proposal for stateless HEVC/H.265 support in
> > V4L2, reviews and comments about the controls definitions are
> > particularly welcome.
> >=20
> > On the Cedrus side, the H.265 implementation covers frame pictures
> > with both uni-directional and bi-direction prediction modes (P/B
> > slices). Field pictures (interleaved), scaling lists and 10-bit output
> > are not supported at this point.
>=20
> Whole series is:
> Reviewed-by: Jernej Skrabec <jernej.skrabec@siol.net>
>=20
> Hopefully this can be merged soon.

Thanks for the review!

I don't see any blockers left so hopefully it will happen soon :)

Cheers,

Paul

> >=20
> > Changes since v7:
> > * Rebased on latest media tree;
> > * Fixed holes in structures for cacheline alignment;
> > * Added decode mode and start code controls
> >   (only per-slice and no start code is supported at this point).
> >=20
> > Changes since v6:
> > * Rebased on latest media tree from Hans;
> > * Reordered some fields to avoid holes and multi-padding;
> > * Updated the documentation.
> >=20
> > Changes since v5:
> > * Rebased atop latest next media tree;
> > * Moved to flags instead of u8 fields;
> > * Added padding to ensure 64-bit alignment
> >   (tested with GDB on 32 and 64-bit architectures);
> > * Reworked cedrus H.265 driver support a bit for flags;
> > * Split off codec-specific control validation and init;
> > * Added HEVC controls fields cleanup at std_validate to allow reliable
> >   control comparison with memcmp;
> > * Fixed various misc reported mistakes.
> >=20
> > Changes since v4:
> > * Rebased atop latest H.254 series.
> >=20
> > Changes since v3:
> > * Updated commit messages;
> > * Updated CID base to avoid conflicts;
> > * Used cpu_to_le32 for packed le32 data;
> > * Fixed misc minor issues in the drive code;
> > * Made it clear in the docs that the API will evolve;
> > * Made the pixfmt private and split commits about it.
> >=20
> > Changes since v2:
> > * Moved headers to non-public API;
> > * Added H265 capability for A64 and H5;
> > * Moved docs to ext-ctrls-codec.rst;
> > * Mentionned sections of the spec in the docs;
> > * Added padding to control structures for 32-bit alignment;
> > * Made write function use void/size in bytes;
> > * Reduced the number of arguments to helpers when possible;
> > * Removed PHYS_OFFSET since we already set PFN_OFFSET;
> > * Added comments where suggested;
> > * Moved to timestamp for references instead of index;
> > * Fixed some style issues reported by checkpatch.
> >=20
> > Changes since v1:
> > * Added a H.265 capability to whitelist relevant platforms;
> > * Switched over to tags instead of buffer indices in the DPB
> > * Declared variable in their reduced scope as suggested;
> > * Added the H.265/HEVC spec to the biblio;
> > * Used in-doc references to the spec and the required APIs;
> > * Removed debugging leftovers.
> >=20
> > Cheers!
> >=20
> > Paul Kocialkowski (3):
> >   media: v4l: Add definitions for HEVC stateless decoding
> >   media: pixfmt: Document the HEVC slice pixel format
> >   media: cedrus: Add HEVC/H.265 decoding support
> >=20
> >  Documentation/media/uapi/v4l/biblio.rst       |   9 +
> >  .../media/uapi/v4l/ext-ctrls-codec.rst        | 553 +++++++++++++++-
> >  .../media/uapi/v4l/pixfmt-compressed.rst      |  23 +
> >  .../media/uapi/v4l/vidioc-queryctrl.rst       |  18 +
> >  .../media/videodev2.h.rst.exceptions          |   3 +
> >  drivers/media/v4l2-core/v4l2-ctrls.c          | 108 ++-
> >  drivers/media/v4l2-core/v4l2-ioctl.c          |   1 +
> >  drivers/staging/media/sunxi/cedrus/Makefile   |   2 +-
> >  drivers/staging/media/sunxi/cedrus/cedrus.c   |  52 +-
> >  drivers/staging/media/sunxi/cedrus/cedrus.h   |  18 +
> >  .../staging/media/sunxi/cedrus/cedrus_dec.c   |   9 +
> >  .../staging/media/sunxi/cedrus/cedrus_h265.c  | 616 ++++++++++++++++++
> >  .../staging/media/sunxi/cedrus/cedrus_hw.c    |   4 +
> >  .../staging/media/sunxi/cedrus/cedrus_regs.h  | 271 ++++++++
> >  .../staging/media/sunxi/cedrus/cedrus_video.c |  10 +
> >  include/media/hevc-ctrls.h                    | 212 ++++++
> >  include/media/v4l2-ctrls.h                    |   7 +
> >  17 files changed, 1907 insertions(+), 9 deletions(-)
> >  create mode 100644 drivers/staging/media/sunxi/cedrus/cedrus_h265.c
> >  create mode 100644 include/media/hevc-ctrls.h
>=20
>=20
>=20
>=20

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--8t9RHnE3ZwKMSgU+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl2diFgACgkQ3cLmz3+f
v9Eohwf/ZlxL7ifHgw9cUCh1aR/yWxNop4uCtKfh3Udb+L0GIvIQ+4U97cwMTMhj
YzKsJVX3xWF1Dazh1A6yANdrbt7TkXZLEBB4Mez+6BqNYXm6L+Lad/lERGsXJJnC
6rJ5lc+14Ps8twgkrZ0/05K0b9AuWTEZQVmvWy27XWrNMF5AyYKjsYb3YeiQ7z6Y
AvLQMZaqsN+XAdt8wq4gP5X3vNOwr9R+LubEf3TJ/jmHDgOog4x/+d7xhiwyhMJC
fe+1w7DjtAgV31UxirygRQC6SuXIZCUQ4DaRsO84Qd8KZw5D75YITMXniW7G7QGc
SZX7hgglVg3W4jJGDa+caSfN9LeLNQ==
=bGSK
-----END PGP SIGNATURE-----

--8t9RHnE3ZwKMSgU+--


--===============2713986345323468151==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2713986345323468151==--

