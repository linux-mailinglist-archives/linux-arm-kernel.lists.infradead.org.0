Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A3299A068
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 21:45:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+rJRO6h/7uVJiqqGo0WJj3i2Kk2ZelO3qZOAxT4cON0=; b=RHPCiZrj69V4G0
	Gk2t+6OaB7h0IvgCTpLOVZfv6YxJEpD6uv7HhUw169kEDbDdSNhl37BOPqUC9VS+GuNCVFKSx+Wfc
	852Mtbve056WEzc8YWaXSG9WyheSCyDAprCMzRm41+iFcdNLyMu4a1R/QuEQCjjnlcWXkixKL9uwU
	YtH9Nz4/M0kH4HEYY7moUqaHOOQ7ZfqcVbHOpawDCzuvKELznpEmjK8yCk3/WawEiPr7gS9iUPWQo
	DrK3nE1kHWUiXdh5+cUI/gXdiUxkBVNgnj3wO8+Gn7smBRje2SzDXTQ7y+lXiXAuiSDBmqsKu/qVK
	BNAATAMOoy/WsHMCgW8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0t1o-00081E-Ft; Thu, 22 Aug 2019 19:45:48 +0000
Received: from mailoutvs14.siol.net ([185.57.226.205] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0t1M-0007kQ-8A
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 19:45:22 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 588C4524922;
 Thu, 22 Aug 2019 21:45:09 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id 3YxjoKs4nn6j; Thu, 22 Aug 2019 21:45:09 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id B8DC452481F;
 Thu, 22 Aug 2019 21:45:08 +0200 (CEST)
Received: from localhost.localdomain (cpe-86-58-59-25.static.triera.net
 [86.58.59.25]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id BAB68524922;
 Thu, 22 Aug 2019 21:45:05 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mchehab@kernel.org, hverkuil-cisco@xs4all.nl,
 paul.kocialkowski@bootlin.com, mripard@kernel.org
Subject: [PATCH 0/8] media: cedrus: h264: Support multi-slice frames
Date: Thu, 22 Aug 2019 21:44:52 +0200
Message-Id: <20190822194500.2071-1-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.22.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_124520_462382_C7483476 
X-CRM114-Status: UNSURE (   8.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.205 listed in list.dnswl.org]
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
Cc: devel@driverdev.osuosl.org, jernej.skrabec@siol.net, pawel@osciak.com,
 acourbot@chromium.org, jonas@kwiboo.se, gregkh@linuxfoundation.org,
 wens@csie.org, tfiga@chromium.org, kyungmin.park@samsung.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org,
 ezequiel@collabora.com, linux-kernel@vger.kernel.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series is continuation of work from
https://patchwork.linuxtv.org/cover/58186/

It picks up unmerged patches (9-12) from aforementioned series and
adds support for decoding multi-slice H264 frames along with support
for V4L2_DEC_CMD_FLUSH and V4L2_BUF_FLAG_M2M_HOLD_CAPTURE_BUF in
Cedrus driver.

Code was tested by modified ffmpeg, which can be found here:
https://github.com/jernejsk/FFmpeg, branch mainline-test
It has to be configured with at least following options:
--enable-v4l2-request --enable-libudev --enable-libdrm

Samples used for testing:
http://jernej.libreelec.tv/videos/h264/BA1_FT_C.mp4
http://jernej.libreelec.tv/videos/h264/h264.mp4

Command line used for testing:
ffmpeg -hwaccel drm -hwaccel_device /dev/dri/card0 -i h264.mp4 -pix_fmt bgra -f fbdev /dev/fb0

Please note that V4L2_DEC_CMD_FLUSH was not tested because I'm
not sure how. ffmpeg follows exactly which slice is last in frame
and sets hold flag accordingly. Improper usage of hold flag would
corrupt ffmpeg assumptions and it would probably crash. Any ideas
how to test this are welcome!

Thanks to Jonas for adjusting ffmpeg.

Please let me know what you think.

Best regards,
Jernej

Alexandre Courbot (1):
  media: docs-rst: Document m2m stateless video decoder interface

Hans Verkuil (2):
  vb2: add V4L2_BUF_FLAG_M2M_HOLD_CAPTURE_BUF
  videodev2.h: add V4L2_DEC_CMD_FLUSH

Jernej Skrabec (4):
  media: cedrus: Detect first slice of a frame
  media: cedrus: h264: Support multiple slices per frame
  media: cedrus: Add support for holding capture buffer
  media: cedrus: Add support for V4L2_DEC_CMD_FLUSH

Tomasz Figa (1):
  media: docs-rst: Document memory-to-memory video encoder interface

 Documentation/media/uapi/v4l/buffer.rst       |  13 +
 Documentation/media/uapi/v4l/dev-encoder.rst  | 608 ++++++++++++++++++
 Documentation/media/uapi/v4l/dev-mem2mem.rst  |   2 +
 .../media/uapi/v4l/dev-stateless-decoder.rst  | 424 ++++++++++++
 Documentation/media/uapi/v4l/pixfmt-v4l2.rst  |   5 +
 Documentation/media/uapi/v4l/v4l2.rst         |   2 +
 .../media/uapi/v4l/vidioc-decoder-cmd.rst     |  11 +-
 .../media/uapi/v4l/vidioc-encoder-cmd.rst     |  51 +-
 .../media/uapi/v4l/vidioc-reqbufs.rst         |   6 +
 .../media/videodev2.h.rst.exceptions          |   1 +
 .../media/common/videobuf2/videobuf2-v4l2.c   |   8 +-
 drivers/staging/media/sunxi/cedrus/cedrus.h   |   1 +
 .../staging/media/sunxi/cedrus/cedrus_dec.c   |  11 +
 .../staging/media/sunxi/cedrus/cedrus_h264.c  |  11 +-
 .../staging/media/sunxi/cedrus/cedrus_hw.c    |   8 +-
 .../staging/media/sunxi/cedrus/cedrus_video.c |  35 +
 include/media/v4l2-mem2mem.h                  |  42 ++
 include/media/videobuf2-core.h                |   3 +
 include/media/videobuf2-v4l2.h                |   5 +
 include/uapi/linux/videodev2.h                |  14 +-
 20 files changed, 1230 insertions(+), 31 deletions(-)
 create mode 100644 Documentation/media/uapi/v4l/dev-encoder.rst
 create mode 100644 Documentation/media/uapi/v4l/dev-stateless-decoder.rst

-- 
2.22.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
