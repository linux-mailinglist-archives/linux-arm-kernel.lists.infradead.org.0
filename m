Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52CEB2947E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 11:21:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LvlIfyLNUOS2SFyXW9xyK6VgGJ7YKbHGq1BmiTtWk/s=; b=gfRcNor6bPZJeb
	m88DACeBkZ+kEDLfe8h5szEvxivId5fGNoiv6fZAVRuovY5B3GhMy1P75ZKR29sahje40Yira9l9U
	ygbM8FEVsXx/7LvDqW68ebZpI/6BUOEq3g6ygJqKeWrz9D9w23NMEmp56ceqYPdiZkm7dajT1r87G
	kjZwubw7PLH0d+noAbxzC6lR56fTjAtmGPgERAcLNQKUcKlhGt7JyIrTt0ICS927FvxbO/tTeerWD
	6JZRn5++u2RbFqCsHO1Qzy8C1b12HApkZgR9Td+ExZhdbQi7C+XaUCKaYQ/mrz/cAUxrT2sheirrm
	YTaZv1MkFQAr0aM24GhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU6Oc-0005c9-OG; Fri, 24 May 2019 09:21:50 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU6Nx-00052I-Qn
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 09:21:12 +0000
X-Originating-IP: 90.88.147.134
Received: from localhost.localdomain
 (aaubervilliers-681-1-27-134.w90-88.abo.wanadoo.fr [90.88.147.134])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id F24821C000A;
 Fri, 24 May 2019 09:20:45 +0000 (UTC)
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@googlegroups.com
Subject: [PATCH v11 0/4] media: cedrus: Add H264 decoding support
Date: Fri, 24 May 2019 11:20:27 +0200
Message-Id: <20190524092031.619-1-paul.kocialkowski@bootlin.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_022110_163197_8BDADE67 
X-CRM114-Status: GOOD (  20.72  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
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
 Alexandre Courbot <acourbot@chromium.org>, Jonas Karlman <jonas@kwiboo.se>,
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

Hi,

Here is a new version of the H264 decoding support in the cedrus
driver.

As you might already know, the cedrus driver relies on the Request
API, and is a reverse engineered driver for the video decoding engine
found on the Allwinner SoCs.

This work has been possible thanks to the work done by the people
behind libvdpau-sunxi found here:
https://github.com/linux-sunxi/libvdpau-sunxi/

I've tested the various ABI using this gdb script:
http://code.bulix.org/jl4se4-505620?raw

And this test script:
http://code.bulix.org/8zle4s-505623?raw

The application compiled is quite trivial:
http://code.bulix.org/e34zp8-505624?raw

The output is:
arm64:  builds/arm64-test-v4l2-h264-structures
        SHA1: 1c48d3868ac9049c6b5efed43a74bf97af710aba
x86:    builds/x86-test-v4l2-h264-structures
        SHA1: 1c48d3868ac9049c6b5efed43a74bf97af710aba
arm:    builds/arm-test-v4l2-h264-structures
        SHA1: 1c48d3868ac9049c6b5efed43a74bf97af710aba
x64:    builds/x64-test-v4l2-h264-structures
        SHA1: 1c48d3868ac9049c6b5efed43a74bf97af710aba

Let me know if there's any flaw using that test setup, or if you have
any comments on the patches.

Maxime and Paul

Changes from v10:
  - Rebased atop the latest next media tree and Jernej's cedrus clock patch.

Changes from v9:
  - Fixed spare warnings about endianness for le32 types in the driver
  - Rebased on next

Changes from v8:
  - Moved the format into a private header and split the controls, format
    and format doc into three commits
  - Changed the name of the variables in v4l2_ctrl_ptr
  - Added a note in the format documentation to mention that the format is
    not stable yet
  - Fixed the label of the format documentation
  - Fixed a reference in the format documentation
  - Added tags
  - Rebase on current next

Changes from v7:
  - Changed the _slice_param and _decode_param to _params

Changes from v6:
  - Rebased on next
  - Renamed the timestamp DPB field to reference_ts
  - Fixed the collision of control type values
  - Removed unused fields
  - Fixed the structure layout that was broken on x86 by reducing the
    num_slices and nal_ref_idc to 16 bits instead of 32

Changes from v5:
  - Made the references to the H264 spec more explicit
  - Added a flag for the IDR pic
  - Fixed typos
  - Rebased on v5.1-rc1

Changes from v4:
  - Changed the luma and chroma weight and offset from s8 to s16
  - Adjusted chroma and luma denominators masks in the driver
  - Casted the luma and chroma offset to prevent an overflow
  - ALways write the interrupt status register
  - Fix a bug in the sram write routine that would write something even if
    the length was 0
  - Make the scaling lists mandatory
  - Made the reference list order explicit in the documentation
  - Made the fact that the slice structure can be an array
  - Renamed the slice format to V4L2_PIX_FMT_H264_SLICE_RAW
  - Rebased on Hans' tag br-v5.1s

Changes from v3:
  - Reintroduced long term reference flag and documented it
  - Reintroduced ref_pic_list_p0/b0/b1 and documented it
  - Documented the DPB flags
  - Treat the scaling matrix as optional in the driver, as documented
  - Free the neighbor buffer
  - Increase the control IDs by a large margin to be safe of collisions
  - Reorder the fields documentation according to the structure layout
  - Change the tag documentation by the timestamp
  - Convert the sram array to size_t
  - Simplify the buffer retrieval from timestamp
  - Rebase

Changes from v2:
  - Simplified _cedrus_write_ref_list as suggested by Jernej
  - Set whether the frame is used as reference using nal_ref_idc
  - Respect chroma_format_idc
  - Fixes for the scaling list and prediction tables
  - Wrote the documentation for the flags
  - Added a bunch of defines to the driver bit fields
  - Reworded the controls and data format descriptions as suggested
    by Hans
  - Reworked the controls' structure field size to avoid padding
  - Removed the long term reference flag
  - Reintroduced the neighbor info buffer
  - Removed the ref_pic_list_p0/b0/b1 arrays that are redundant with the
    one in the DPB
  - used the timestamps instead of tags
  - Rebased on 5.0-rc1

Changes from v1:
  - Rebased on 4.20
  - Did the documentation for the userspace API
  - Used the tags instead of buffer IDs
  - Added a comment to explain why we still needed the swdec trigger
  - Reworked the MV col buffer in order to have one slot per frame
  - Removed the unused neighbor info buffer
  - Made sure to have the same structure offset and alignments across
    32 bits and 64 bits architecture

Maxime Ripard (3):
  media: pixfmt: Add H264 Slice format
  media: pixfmt: Add H264_SLICE_RAW format documentation
  media: cedrus: Add H264 decoding support

Pawel Osciak (1):
  media: uapi: Add H264 low-level decoder API compound controls.

 Documentation/media/uapi/v4l/biblio.rst       |   9 +
 .../media/uapi/v4l/ext-ctrls-codec.rst        | 569 +++++++++++++++++
 .../media/uapi/v4l/pixfmt-compressed.rst      |  25 +
 .../media/uapi/v4l/vidioc-queryctrl.rst       |  30 +
 .../media/videodev2.h.rst.exceptions          |   5 +
 drivers/media/v4l2-core/v4l2-ctrls.c          |  42 ++
 drivers/media/v4l2-core/v4l2-ioctl.c          |   1 +
 drivers/staging/media/sunxi/cedrus/Makefile   |   3 +-
 drivers/staging/media/sunxi/cedrus/cedrus.c   |  31 +
 drivers/staging/media/sunxi/cedrus/cedrus.h   |  38 +-
 .../staging/media/sunxi/cedrus/cedrus_dec.c   |  13 +
 .../staging/media/sunxi/cedrus/cedrus_h264.c  | 576 ++++++++++++++++++
 .../staging/media/sunxi/cedrus/cedrus_hw.c    |   4 +
 .../staging/media/sunxi/cedrus/cedrus_regs.h  |  91 +++
 .../staging/media/sunxi/cedrus/cedrus_video.c |   9 +
 include/media/h264-ctrls.h                    | 197 ++++++
 include/media/v4l2-ctrls.h                    |  13 +-
 17 files changed, 1653 insertions(+), 3 deletions(-)
 create mode 100644 drivers/staging/media/sunxi/cedrus/cedrus_h264.c
 create mode 100644 include/media/h264-ctrls.h

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
