Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46A9F294E5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 11:37:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=w2bl+XaY8IjjPWcDd1ecv1fiKPbNWRXo7BEOBUVyfIg=; b=CXtsFP1frbKyHQ
	ELxmSL4ellyL3JerP8E7GSw2KAljyScPlZgOB1z3O867vv9jlNhvX7bCHOJs46mO8zKU6KFHKbqCs
	XIjnK7IBGe4LldhQoHF4PiAszKLs3hGj9R9QHb2qlnLFxNQWyVLhGRuv45EC4n1eihy6r30sBpY77
	NTSxZyo2tq0jit9dw4bbvImQ7HlgfraYWyYF6tMK38jm9/OU/Jf1KzVH8cO/qpHcMhfnuead/Xhmn
	qQdbpYpMV2oNwJbQMMCsWgzMBn9RhOtyo1yEhnDlajhjWh4U6WyOAU5PmNqtVjXzgLerhqttHfIzg
	GNlmQoH4JRKqfMyJEemQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU6dl-000476-HN; Fri, 24 May 2019 09:37:29 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU6dF-0003gU-Qh
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 09:37:00 +0000
X-Originating-IP: 90.88.147.134
Received: from localhost.localdomain
 (aaubervilliers-681-1-27-134.w90-88.abo.wanadoo.fr [90.88.147.134])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 66CB0FF813;
 Fri, 24 May 2019 09:36:43 +0000 (UTC)
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@googlegroups.com
Subject: [PATCH v5 0/4] HEVC/H.265 stateless support for V4L2 and Cedrus
Date: Fri, 24 May 2019 11:36:31 +0200
Message-Id: <20190524093635.1832-1-paul.kocialkowski@bootlin.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_023658_163724_92BE34C3 
X-CRM114-Status: GOOD (  14.53  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Hans Verkuil <hverkuil@xs4all.nl>, Jernej Skrabec <jernej.skrabec@siol.net>,
 Alexandre Courbot <acourbot@chromium.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Tomasz Figa <tfiga@chromium.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Boris Brezillon <boris.brezillon@collabora.com>,
 Nicolas Dufresne <nicolas@ndufresne.ca>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is early support for HEVC/H.265 stateless decoding in V4L2,
including both definitions and driver support for the Cedrus VPU
driver, which concerns Allwinner devices.

A specific pixel format is introduced for the HEVC slice format and
controls are provided to pass the bitstream metadata to the decoder.
Some bitstream extensions are intentionally not supported at this point.

Since this is the first proposal for stateless HEVC/H.265 support in
V4L2, reviews and comments about the controls definitions are
particularly welcome.

On the Cedrus side, the H.265 implementation covers frame pictures
with both uni-directional and bi-direction prediction modes (P/B
slices). Field pictures (interleaved), scaling lists and 10-bit output
are not supported at this point.

This series is based upon the following series:
* media: cedrus: Add H264 decoding support

Changes since v4:
* Rebased atop latest H.254 series.

Changes since v3:
* Updated commit messages;
* Updated CID base to avoid conflicts;
* Used cpu_to_le32 for packed le32 data;
* Fixed misc minor issues in the drive code;
* Made it clear in the docs that the API will evolve;
* Made the pixfmt private and split commits about it.

Changes since v2:
* Moved headers to non-public API;
* Added H265 capability for A64 and H5;
* Moved docs to ext-ctrls-codec.rst;
* Mentionned sections of the spec in the docs;
* Added padding to control structures for 32-bit alignment;
* Made write function use void/size in bytes;
* Reduced the number of arguments to helpers when possible;
* Removed PHYS_OFFSET since we already set PFN_OFFSET;
* Added comments where suggested;
* Moved to timestamp for references instead of index;
* Fixed some style issues reported by checkpatch.

Changes since v1:
* Added a H.265 capability to whitelist relevant platforms;
* Switched over to tags instead of buffer indices in the DPB
* Declared variable in their reduced scope as suggested;
* Added the H.265/HEVC spec to the biblio;
* Used in-doc references to the spec and the required APIs;
* Removed debugging leftovers.

Cheers!

Paul Kocialkowski (4):
  media: v4l: Add definitions for the HEVC slice controls
  media: pixfmt: Add HEVC slice pixel format
  media: pixfmt: Document the HEVC slice pixel format
  media: cedrus: Add HEVC/H.265 decoding support

 Documentation/media/uapi/v4l/biblio.rst       |   9 +
 .../media/uapi/v4l/ext-ctrls-codec.rst        | 429 +++++++++++++-
 .../media/uapi/v4l/pixfmt-compressed.rst      |  21 +
 .../media/uapi/v4l/vidioc-queryctrl.rst       |  18 +
 .../media/videodev2.h.rst.exceptions          |   3 +
 drivers/media/v4l2-core/v4l2-ctrls.c          |  26 +
 drivers/media/v4l2-core/v4l2-ioctl.c          |   1 +
 drivers/staging/media/sunxi/cedrus/Makefile   |   2 +-
 drivers/staging/media/sunxi/cedrus/cedrus.c   |  31 +-
 drivers/staging/media/sunxi/cedrus/cedrus.h   |  18 +
 .../staging/media/sunxi/cedrus/cedrus_dec.c   |   9 +
 .../staging/media/sunxi/cedrus/cedrus_h265.c  | 532 ++++++++++++++++++
 .../staging/media/sunxi/cedrus/cedrus_hw.c    |   4 +
 .../staging/media/sunxi/cedrus/cedrus_regs.h  | 290 ++++++++++
 .../staging/media/sunxi/cedrus/cedrus_video.c |  10 +
 include/media/hevc-ctrls.h                    | 185 ++++++
 include/media/v4l2-ctrls.h                    |   7 +
 17 files changed, 1587 insertions(+), 8 deletions(-)
 create mode 100644 drivers/staging/media/sunxi/cedrus/cedrus_h265.c
 create mode 100644 include/media/hevc-ctrls.h

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
