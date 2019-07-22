Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB15A700C6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 15:18:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hDKRahJ0H/SkKR07ZarZ7lLdfpqBgBhlwy4uUdHvl20=; b=DwX/1w8qMQ8OYH
	clSJJeuSxl0xPgy/E8QSMrGQ1DqDYnl/KNLvrwEXSajBkdrVZnywyvZnanG0AeaFUVigNTCCZTQPr
	D5A/GY/RHSrli5t3/QRlHN54lsPZ/7Wc9VBRN58BTeyb+Zh4NVXcjT6ZYZgd4kpotT3CtyrXDvNfc
	T+tXr1pxr/iwfGtrqCJnQezEZcNLvFQRRPeqGkhrWTShOTSRHDewdlmBzuvlFWYLYgKhvQumCPxK5
	CntnMmJEmWxt+VdW7nXwnvru+a2iFX4SXkYciG0IXpOQweYf3EFL80mOQqGbHsoSq61+QSmbZEKtF
	lXHIujp8GQzp6G0HarhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpYCj-0004WT-6E; Mon, 22 Jul 2019 13:18:13 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpYCC-0004VW-35
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 13:17:42 +0000
Received: from aptenodytes (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 85055100009;
 Mon, 22 Jul 2019 13:17:35 +0000 (UTC)
Date: Mon, 22 Jul 2019 15:17:34 +0200
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@googlegroups.com
Subject: Re: [PATCH v6 0/5] HEVC/H.265 stateless support for V4L2 and Cedrus
Message-ID: <20190722131734.GD1908@aptenodytes>
References: <20190614143837.15605-1-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190614143837.15605-1-paul.kocialkowski@bootlin.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_061740_453074_B508D626 
X-CRM114-Status: GOOD (  21.10  )
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
Cc: Nicolas Dufresne <nicolas@ndufresne.ca>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Alexandre Courbot <acourbot@chromium.org>, Jonas Karlman <jonas@kwiboo.se>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Tomasz Figa <tfiga@chromium.org>, Hans Verkuil <hverkuil@xs4all.nl>,
 Chen-Yu Tsai <wens@csie.org>, Boris Brezillon <boris.brezillon@collabora.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Any feedback on this series? I think it was pretty much ready for merge
regarding the comments received so far.

I could craft a rebased v7, with or without additional changes, if needed.

What do you think?

Cheers,

Paul

On Fri 14 Jun 19, 16:38, Paul Kocialkowski wrote:
> This is early support for HEVC/H.265 stateless decoding in V4L2,
> including both definitions and driver support for the Cedrus VPU
> driver, which concerns Allwinner devices.
> 
> A specific pixel format is introduced for the HEVC slice format and
> controls are provided to pass the bitstream metadata to the decoder.
> Some bitstream extensions are intentionally not supported at this point.
> 
> Since this is the first proposal for stateless HEVC/H.265 support in
> V4L2, reviews and comments about the controls definitions are
> particularly welcome.
> 
> On the Cedrus side, the H.265 implementation covers frame pictures
> with both uni-directional and bi-direction prediction modes (P/B
> slices). Field pictures (interleaved), scaling lists and 10-bit output
> are not supported at this point.
> 
> This series is based upon the following series:
> * media: cedrus: Add H264 decoding support
> 
> Changes since v5:
> * Rebased atop latest next media tree;
> * Moved to flags instead of u8 fields;
> * Added padding to ensure 64-bit alignment
>   (tested with GDB on 32 and 64-bit architectures);
> * Reworked cedrus H.265 driver support a bit for flags;
> * Split off codec-specific control validation and init;
> * Added HEVC controls fields cleanup at std_validate to allow reliable
>   control comparison with memcmp;
> * Fixed various misc reported mistakes.
> 
> Changes since v4:
> * Rebased atop latest H.254 series.
> 
> Changes since v3:
> * Updated commit messages;
> * Updated CID base to avoid conflicts;
> * Used cpu_to_le32 for packed le32 data;
> * Fixed misc minor issues in the drive code;
> * Made it clear in the docs that the API will evolve;
> * Made the pixfmt private and split commits about it.
> 
> Changes since v2:
> * Moved headers to non-public API;
> * Added H265 capability for A64 and H5;
> * Moved docs to ext-ctrls-codec.rst;
> * Mentionned sections of the spec in the docs;
> * Added padding to control structures for 32-bit alignment;
> * Made write function use void/size in bytes;
> * Reduced the number of arguments to helpers when possible;
> * Removed PHYS_OFFSET since we already set PFN_OFFSET;
> * Added comments where suggested;
> * Moved to timestamp for references instead of index;
> * Fixed some style issues reported by checkpatch.
> 
> Changes since v1:
> * Added a H.265 capability to whitelist relevant platforms;
> * Switched over to tags instead of buffer indices in the DPB
> * Declared variable in their reduced scope as suggested;
> * Added the H.265/HEVC spec to the biblio;
> * Used in-doc references to the spec and the required APIs;
> * Removed debugging leftovers.
> 
> Cheers!
> 
> Paul Kocialkowski (5):
>   media: v4l2-ctrls: Split off MPEG-2 controls validation
>   media: v4l2-ctrls: Split off MPEG-2 controls initialization
>   media: v4l: Add definitions for the HEVC slice controls
>   media: pixfmt: Document the HEVC slice pixel format
>   media: cedrus: Add HEVC/H.265 decoding support
> 
>  Documentation/media/uapi/v4l/biblio.rst       |   9 +
>  .../media/uapi/v4l/ext-ctrls-codec.rst        | 474 +++++++++++++-
>  .../media/uapi/v4l/pixfmt-compressed.rst      |  21 +
>  .../media/uapi/v4l/vidioc-queryctrl.rst       |  18 +
>  .../media/videodev2.h.rst.exceptions          |   3 +
>  drivers/media/v4l2-core/v4l2-ctrls.c          | 231 +++++--
>  drivers/media/v4l2-core/v4l2-ioctl.c          |   1 +
>  drivers/staging/media/sunxi/cedrus/Makefile   |   2 +-
>  drivers/staging/media/sunxi/cedrus/cedrus.c   |  31 +-
>  drivers/staging/media/sunxi/cedrus/cedrus.h   |  18 +
>  .../staging/media/sunxi/cedrus/cedrus_dec.c   |   9 +
>  .../staging/media/sunxi/cedrus/cedrus_h265.c  | 616 ++++++++++++++++++
>  .../staging/media/sunxi/cedrus/cedrus_hw.c    |   4 +
>  .../staging/media/sunxi/cedrus/cedrus_regs.h  | 271 ++++++++
>  .../staging/media/sunxi/cedrus/cedrus_video.c |  10 +
>  include/media/hevc-ctrls.h                    | 197 ++++++
>  include/media/v4l2-ctrls.h                    |   7 +
>  17 files changed, 1860 insertions(+), 62 deletions(-)
>  create mode 100644 drivers/staging/media/sunxi/cedrus/cedrus_h265.c
>  create mode 100644 include/media/hevc-ctrls.h
> 
> -- 
> 2.21.0
> 

-- 
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
