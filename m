Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10E04D030E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 23:48:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lI6f1YlCPqMTHPgINe0BlKcOYu/VPBFzjrRmt8IugHw=; b=WWj6rrIDZaF/n7
	8dPob1dXSc6U76U3KF0t5M2ef+4Ui+JxpE+brS2nVQCIgi2Gvz1gcQ1f6fWeM4W24QxHpzj0Q0hlt
	kE3LtNczpyA/X2U9mfmltyvnXoyI/e3yuOAnZu289TfXvKTr1KTjw8OUCneU/6JFXJuetGcbUdvtX
	ePtJV9c5OAN5IMYx52aimSePDhpoGMhrP0hP3zlhLfxwgQ5t8+4q/iHM2pyy3y3REHfqWoruZ+1CQ
	OK/X0SP5n4DtkZNg2NPL07sEJM1e1uoOy3lBpYUrjPP6McIUxzNkfd5HxTurdZEZ9Tu1UtRyCgBiY
	OiUQip4jp2ZZOPTrF9Ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHxLk-0001vI-Vu; Tue, 08 Oct 2019 21:48:56 +0000
Received: from mailoutvs25.siol.net ([185.57.226.216] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHxLb-0001tc-Fk
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 21:48:49 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id CF1F252280B;
 Tue,  8 Oct 2019 23:48:35 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta10.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta10.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id C7RFpzssUdce; Tue,  8 Oct 2019 23:48:35 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 432BE52280D;
 Tue,  8 Oct 2019 23:48:35 +0200 (CEST)
Received: from jernej-laptop.localnet (cpe-86-58-59-25.static.triera.net
 [86.58.59.25]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id C7AB652280A;
 Tue,  8 Oct 2019 23:48:32 +0200 (CEST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Subject: Re: [PATCH v8 0/3] HEVC/H.265 stateless support for V4L2 and Cedrus
Date: Tue, 08 Oct 2019 23:48:32 +0200
Message-ID: <9239760.nWnt09pPvv@jernej-laptop>
In-Reply-To: <20190927143411.141526-1-paul.kocialkowski@bootlin.com>
References: <20190927143411.141526-1-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_144847_687474_C02D22A6 
X-CRM114-Status: GOOD (  18.69  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.216 listed in list.dnswl.org]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dne petek, 27. september 2019 ob 16:34:08 CEST je Paul Kocialkowski 
napisal(a):
> HEVC/H.265 stateless support for V4L2 and Cedrus
> 
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

Whole series is:
Reviewed-by: Jernej Skrabec <jernej.skrabec@siol.net>

Hopefully this can be merged soon.

Best regards,
Jernej

> 
> Changes since v7:
> * Rebased on latest media tree;
> * Fixed holes in structures for cacheline alignment;
> * Added decode mode and start code controls
>   (only per-slice and no start code is supported at this point).
> 
> Changes since v6:
> * Rebased on latest media tree from Hans;
> * Reordered some fields to avoid holes and multi-padding;
> * Updated the documentation.
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
> Paul Kocialkowski (3):
>   media: v4l: Add definitions for HEVC stateless decoding
>   media: pixfmt: Document the HEVC slice pixel format
>   media: cedrus: Add HEVC/H.265 decoding support
> 
>  Documentation/media/uapi/v4l/biblio.rst       |   9 +
>  .../media/uapi/v4l/ext-ctrls-codec.rst        | 553 +++++++++++++++-
>  .../media/uapi/v4l/pixfmt-compressed.rst      |  23 +
>  .../media/uapi/v4l/vidioc-queryctrl.rst       |  18 +
>  .../media/videodev2.h.rst.exceptions          |   3 +
>  drivers/media/v4l2-core/v4l2-ctrls.c          | 108 ++-
>  drivers/media/v4l2-core/v4l2-ioctl.c          |   1 +
>  drivers/staging/media/sunxi/cedrus/Makefile   |   2 +-
>  drivers/staging/media/sunxi/cedrus/cedrus.c   |  52 +-
>  drivers/staging/media/sunxi/cedrus/cedrus.h   |  18 +
>  .../staging/media/sunxi/cedrus/cedrus_dec.c   |   9 +
>  .../staging/media/sunxi/cedrus/cedrus_h265.c  | 616 ++++++++++++++++++
>  .../staging/media/sunxi/cedrus/cedrus_hw.c    |   4 +
>  .../staging/media/sunxi/cedrus/cedrus_regs.h  | 271 ++++++++
>  .../staging/media/sunxi/cedrus/cedrus_video.c |  10 +
>  include/media/hevc-ctrls.h                    | 212 ++++++
>  include/media/v4l2-ctrls.h                    |   7 +
>  17 files changed, 1907 insertions(+), 9 deletions(-)
>  create mode 100644 drivers/staging/media/sunxi/cedrus/cedrus_h265.c
>  create mode 100644 include/media/hevc-ctrls.h





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
