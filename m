Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE5417C205
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 14:45:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=x/rwUbn0FCE9So+L48+Lv8U5OKou/mNsDQ+XQSpVUoo=; b=dAynuQaZai06Gv8SH4Tv5xD++
	2K0az0vZ8ZLYcz3QmKQkeYtHi6sA3Ah2YSWsOxx5iEmXyTzPVfhmm6nMHpcbTE+9OesKtJ1FTZp9+
	VuV/QsIhjInjRBvc8OvycHArZMK1pYROAd1ZKGpT3dCsaW0fqJinj7RE7lwvMzXIa0OcO4ty1qZpF
	/CiQGx6us7tas42q1nVJrHbF8up7e5OkiT7ij9TbovYjWalVee5ItW51netlskBMLFijibd3PtKQ4
	3278hHfHRWepCa1dyQpfJ5LkZEcHiHnMJeoGC2ZS2MNRkyWVkrK2cyiOo2UouymmQe5jPEKdeL0HD
	F3LaeO2xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsnyx-000070-8l; Wed, 31 Jul 2019 12:45:27 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsnwr-0004oh-MC
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 12:43:20 +0000
Received: from aptenodytes (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id CCA5910000A;
 Wed, 31 Jul 2019 12:43:01 +0000 (UTC)
Date: Wed, 31 Jul 2019 14:43:01 +0200
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Hans Verkuil <hverkuil@xs4all.nl>
Subject: Re: [PATCH v7 0/4] HEVC/H.265 stateless support for V4L2 and Cedrus
Message-ID: <20190731124301.GA18205@aptenodytes>
References: <20190725185602.22522-1-paul.kocialkowski@bootlin.com>
 <7fa38a2c-8e16-5e88-d073-1d04e9feaa84@xs4all.nl>
 <20190727095729.GD16618@aptenodytes>
 <91a028b6-7f25-1a38-24e4-7dac02f34039@xs4all.nl>
MIME-Version: 1.0
In-Reply-To: <91a028b6-7f25-1a38-24e4-7dac02f34039@xs4all.nl>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_054318_052798_0CAF2DD4 
X-CRM114-Status: GOOD (  25.81  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
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
Cc: devel@driverdev.osuosl.org, Nicolas Dufresne <nicolas@ndufresne.ca>,
 Jernej Skrabec <jernej.skrabec@siol.net>, Tomasz Figa <tfiga@chromium.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Alexandre Courbot <acourbot@chromium.org>, Jonas Karlman <jonas@kwiboo.se>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, linux-sunxi@googlegroups.com,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============8529799235526769141=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8529799235526769141==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="vtzGhvizbBRQ85DL"
Content-Disposition: inline


--vtzGhvizbBRQ85DL
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue 30 Jul 19, 09:27, Hans Verkuil wrote:
> On 7/27/19 11:57 AM, Paul Kocialkowski wrote:
> > Hi Hans,
> >=20
> > On Fri 26 Jul 19, 10:33, Hans Verkuil wrote:
> >> On 7/25/19 8:55 PM, Paul Kocialkowski wrote:
> >>> HEVC/H.265 stateless support for V4L2 and Cedrus
> >>>
> >>> This is early support for HEVC/H.265 stateless decoding in V4L2,
> >>> including both definitions and driver support for the Cedrus VPU
> >>> driver, which concerns Allwinner devices.
> >>>
> >>> A specific pixel format is introduced for the HEVC slice format and
> >>> controls are provided to pass the bitstream metadata to the decoder.
> >>> Some bitstream extensions are intentionally not supported at this poi=
nt.
> >>>
> >>> Since this is the first proposal for stateless HEVC/H.265 support in
> >>> V4L2, reviews and comments about the controls definitions are
> >>> particularly welcome.
> >>>
> >>> On the Cedrus side, the H.265 implementation covers frame pictures
> >>> with both uni-directional and bi-direction prediction modes (P/B
> >>> slices). Field pictures (interleaved), scaling lists and 10-bit output
> >>> are not supported at this point.
> >>>
> >>> Changes since v6:
> >>> * Rebased on latest media tree from Hans;
> >>
> >> Which tree is that? Or are you just referring our media_tree master
> >> branch? (which isn't 'my' tree :-) )
> >=20
> > I'm usually rebasing on the tree you use to send PRs to Mauro, at:
> > https://git.linuxtv.org/hverkuil/media_tree.git/
>=20
> There are lots of branches there, and none are stable branches.
>=20
> Just base it on the master branch of git://linuxtv.org/media_tree.git.

Understood, I will do that from now on.

Either way, the series applies and builds as-is (with the initial patch out=
 of
the way, as it was merged already) on top of the common media tree.

I just retested everything and it's good to go as far as I'm concerned!

Cheers,

Paul

> Regards,
>=20
> 	Hans
>=20
> >=20
> > which is usually the best up-to-date stateless codec support tree :)
> >=20
> > Cheers,
> >=20
> > Paul
> >=20
> >> Regards,
> >>
> >> 	Hans
> >>
> >>> * Reordered some fields to avoid holes and multi-padding;
> >>> * Updated the documentation.
> >>>
> >>> Changes since v5:
> >>> * Rebased atop latest next media tree;
> >>> * Moved to flags instead of u8 fields;
> >>> * Added padding to ensure 64-bit alignment
> >>>   (tested with GDB on 32 and 64-bit architectures);
> >>> * Reworked cedrus H.265 driver support a bit for flags;
> >>> * Split off codec-specific control validation and init;
> >>> * Added HEVC controls fields cleanup at std_validate to allow reliable
> >>>   control comparison with memcmp;
> >>> * Fixed various misc reported mistakes.
> >>>
> >>> Changes since v4:
> >>> * Rebased atop latest H.254 series.
> >>>
> >>> Changes since v3:
> >>> * Updated commit messages;
> >>> * Updated CID base to avoid conflicts;
> >>> * Used cpu_to_le32 for packed le32 data;
> >>> * Fixed misc minor issues in the drive code;
> >>> * Made it clear in the docs that the API will evolve;
> >>> * Made the pixfmt private and split commits about it.
> >>>
> >>> Changes since v2:
> >>> * Moved headers to non-public API;
> >>> * Added H265 capability for A64 and H5;
> >>> * Moved docs to ext-ctrls-codec.rst;
> >>> * Mentionned sections of the spec in the docs;
> >>> * Added padding to control structures for 32-bit alignment;
> >>> * Made write function use void/size in bytes;
> >>> * Reduced the number of arguments to helpers when possible;
> >>> * Removed PHYS_OFFSET since we already set PFN_OFFSET;
> >>> * Added comments where suggested;
> >>> * Moved to timestamp for references instead of index;
> >>> * Fixed some style issues reported by checkpatch.
> >>>
> >>> Changes since v1:
> >>> * Added a H.265 capability to whitelist relevant platforms;
> >>> * Switched over to tags instead of buffer indices in the DPB
> >>> * Declared variable in their reduced scope as suggested;
> >>> * Added the H.265/HEVC spec to the biblio;
> >>> * Used in-doc references to the spec and the required APIs;
> >>> * Removed debugging leftovers.
> >>>
> >>> Cheers!
> >>>
> >>> Paul Kocialkowski (4):
> >>>   media: v4l2-ctrl: Add a comment on why we zero out compound controls
> >>>     fields
> >>>   media: v4l: Add definitions for the HEVC slice controls
> >>>   media: pixfmt: Document the HEVC slice pixel format
> >>>   media: cedrus: Add HEVC/H.265 decoding support
> >>>
> >>>  Documentation/media/uapi/v4l/biblio.rst       |   9 +
> >>>  .../media/uapi/v4l/ext-ctrls-codec.rst        | 486 +++++++++++++-
> >>>  .../media/uapi/v4l/pixfmt-compressed.rst      |  21 +
> >>>  .../media/uapi/v4l/vidioc-queryctrl.rst       |  18 +
> >>>  .../media/videodev2.h.rst.exceptions          |   3 +
> >>>  drivers/media/v4l2-core/v4l2-ctrls.c          |  93 +++
> >>>  drivers/media/v4l2-core/v4l2-ioctl.c          |   1 +
> >>>  drivers/staging/media/sunxi/cedrus/Makefile   |   2 +-
> >>>  drivers/staging/media/sunxi/cedrus/cedrus.c   |  31 +-
> >>>  drivers/staging/media/sunxi/cedrus/cedrus.h   |  18 +
> >>>  .../staging/media/sunxi/cedrus/cedrus_dec.c   |   9 +
> >>>  .../staging/media/sunxi/cedrus/cedrus_h265.c  | 616 ++++++++++++++++=
++
> >>>  .../staging/media/sunxi/cedrus/cedrus_hw.c    |   4 +
> >>>  .../staging/media/sunxi/cedrus/cedrus_regs.h  | 271 ++++++++
> >>>  .../staging/media/sunxi/cedrus/cedrus_video.c |  10 +
> >>>  include/media/hevc-ctrls.h                    | 198 ++++++
> >>>  include/media/v4l2-ctrls.h                    |   7 +
> >>>  17 files changed, 1789 insertions(+), 8 deletions(-)
> >>>  create mode 100644 drivers/staging/media/sunxi/cedrus/cedrus_h265.c
> >>>  create mode 100644 include/media/hevc-ctrls.h
> >>>
> >>
> >=20
>=20

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--vtzGhvizbBRQ85DL
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl1BjNUACgkQ3cLmz3+f
v9FjuAf/aL5i4AOg3ogqc6Uz7f2hvSX1pHj2oFKXBRtcq0iz/tC2U02b7b8w6sQ7
DHowvN5AwbEyiXgiwOWTzPDi4TGkEZSNCORwkD08m7DA6MzRrKA78SLRaHW9WYSc
PjVrpSncMMuxJ4SHqekk9sX5dFJzxpYdor+ggQdd6YgU4NFnlQKjKHRjeI+r4Qcz
jzXwwQ07ugPsHDROaQOE8VyCSZXFs8JKs5SMiRcQs7fRIwvJimaPLvng3N8qNX27
XOHH6DLl0Q22X1CXgasgX+OeMk+8oN7ie4ZecTyDIBKW6h2sSfGxufcr1dUo1ABm
IA52WkzBa+IMEwDEqgqfmWgHaApu1A==
=3hPJ
-----END PGP SIGNATURE-----

--vtzGhvizbBRQ85DL--


--===============8529799235526769141==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8529799235526769141==--

