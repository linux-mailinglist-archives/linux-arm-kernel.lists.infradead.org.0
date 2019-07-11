Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83BB365695
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 14:15:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mHiH6Q6SjGS7ybjUbQ9h8yBNSgok56pOo+3oUmz3bgo=; b=QMUzrHsyPt3cLk
	b8pQ0wYUFirNOZ0VnX11tmvv0MILtFj+4FJA2Q6FT06a9OvRHFHO+CuRD+8GZTqrvyrrCtqmdmDrb
	NUv0mxRirnqGw5WpGtF6S7y7l5G8/O5BLnNCVwf62bFtt5qHbG7YvQLotjsNk1tnzgHNvkUpKgScr
	XR0OZGutG4X2ZGiZur5xI1quithTOgXD6JWiDOk1m+Vp9FQ3BG6VG44L8qp14RJD89PTRsSLtC7KE
	CHAqVLA2Vl2bw08ylSBzUPE/QeIXUjKhs565/DOuxAQKf5AZIvVijPFr+i9iamjkExU7hpRByMZx4
	N4/hFyzG+hvgUm+XUBeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlXzL-0007n0-Q5; Thu, 11 Jul 2019 12:15:51 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlXyw-0007Vt-Mw
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 12:15:29 +0000
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id F105820000B;
 Thu, 11 Jul 2019 12:15:10 +0000 (UTC)
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Hans Verkuil <hans.verkuil@cisco.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH v6 0/5] media: Allwinner A10 CSI support
Date: Thu, 11 Jul 2019 14:15:02 +0200
Message-Id: <cover.34bcd988943a26671681eaf849aacab51fab1cfe.1562847292.git-series.maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_051527_064337_5D8265E1 
X-CRM114-Status: GOOD (  19.36  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Maxime Ripard <maxime.ripard@bootlin.com>, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Here is a series introducing the support for the A10 (and SoCs of the same
generation) CMOS Sensor Interface (called CSI, not to be confused with
MIPI-CSI, which isn't support by that IP).

That interface is pretty straightforward, but the driver has a few issues
that I wanted to bring up:

  * The only board I've been testing this with has an ov5640 sensor
    attached, which doesn't work with the upstream driver. Copying the
    Allwinner init sequence works though, and this is how it has been
    tested. Testing with a second sensor would allow to see if it's an
    issue on the CSI side or the sensor side.
  * We don't have support for the ISP at the moment, but this can be added
    eventually.

Here is the v4l2-compliance output (commit f61132e81d79 of v4l-utils), and
after running media-ctl -d /dev/media1 -v --set-v4l2 "'ov5640 1-0021':0
[fmt:YUYV8_2X8/640x4 80 field:none]"

Compliance test for device /dev/video1:

Driver Info:
	Driver name      : sun4i_csi
	Card type        : sun4i-csi
	Bus info         : platform:1c09000.csi
	Driver version   : 5.2.0
	Capabilities     : 0x84201000
		Video Capture Multiplanar
		Streaming
		Extended Pix Format
		Device Capabilities
	Device Caps      : 0x04201000
		Video Capture Multiplanar
		Streaming
		Extended Pix Format
Media Driver Info:
	Driver name      : sun4i-csi
	Model            : Allwinner Video Capture Device
	Serial           :
	Bus info         :
	Media version    : 5.2.0
	Hardware revision: 0x00000000 (0)
	Driver version   : 5.2.0
Interface Info:
	ID               : 0x03000008
	Type             : V4L Video
Entity Info:
	ID               : 0x00000006 (6)
	Name             : sun4i_csi
	Function         : V4L2 I/O
	Pad 0x01000007   : 0: Sink, Must Connect
	  Link 0x0200000a: from remote pad 0x1000005 of entity 'sun4i-csi-0': Data, Enabled, Immutable

Required ioctls:
	test MC information (see 'Media Driver Info' above): OK
	test VIDIOC_QUERYCAP: OK

Allow for multiple opens:
	test second /dev/video1 open: OK
	test VIDIOC_QUERYCAP: OK
	test VIDIOC_G/S_PRIORITY: OK
	test for unlimited opens: OK

Debug ioctls:
	test VIDIOC_DBG_G/S_REGISTER: OK (Not Supported)
	test VIDIOC_LOG_STATUS: OK (Not Supported)

Input ioctls:
	test VIDIOC_G/S_TUNER/ENUM_FREQ_BANDS: OK (Not Supported)
	test VIDIOC_G/S_FREQUENCY: OK (Not Supported)
	test VIDIOC_S_HW_FREQ_SEEK: OK (Not Supported)
	test VIDIOC_ENUMAUDIO: OK (Not Supported)
	test VIDIOC_G/S/ENUMINPUT: OK
	test VIDIOC_G/S_AUDIO: OK (Not Supported)
	Inputs: 1 Audio Inputs: 0 Tuners: 0

Output ioctls:
	test VIDIOC_G/S_MODULATOR: OK (Not Supported)
	test VIDIOC_G/S_FREQUENCY: OK (Not Supported)
	test VIDIOC_ENUMAUDOUT: OK (Not Supported)
	test VIDIOC_G/S/ENUMOUTPUT: OK (Not Supported)
	test VIDIOC_G/S_AUDOUT: OK (Not Supported)
	Outputs: 0 Audio Outputs: 0 Modulators: 0

Input/Output configuration ioctls:
	test VIDIOC_ENUM/G/S/QUERY_STD: OK (Not Supported)
	test VIDIOC_ENUM/G/S/QUERY_DV_TIMINGS: OK (Not Supported)
	test VIDIOC_DV_TIMINGS_CAP: OK (Not Supported)
	test VIDIOC_G/S_EDID: OK (Not Supported)

Control ioctls (Input 0):
	test VIDIOC_QUERY_EXT_CTRL/QUERYMENU: OK (Not Supported)
	test VIDIOC_QUERYCTRL: OK (Not Supported)
	test VIDIOC_G/S_CTRL: OK (Not Supported)
	test VIDIOC_G/S/TRY_EXT_CTRLS: OK (Not Supported)
	test VIDIOC_(UN)SUBSCRIBE_EVENT/DQEVENT: OK (Not Supported)
	test VIDIOC_G/S_JPEGCOMP: OK (Not Supported)
	Standard Controls: 0 Private Controls: 0

Format ioctls (Input 0):
	test VIDIOC_ENUM_FMT/FRAMESIZES/FRAMEINTERVALS: OK
	test VIDIOC_G/S_PARM: OK (Not Supported)
	test VIDIOC_G_FBUF: OK (Not Supported)
	test VIDIOC_G_FMT: OK
	test VIDIOC_TRY_FMT: OK
	test VIDIOC_S_FMT: OK
	test VIDIOC_G_SLICED_VBI_CAP: OK (Not Supported)
	test Cropping: OK (Not Supported)
	test Composing: OK (Not Supported)
	test Scaling: OK

Codec ioctls (Input 0):
	test VIDIOC_(TRY_)ENCODER_CMD: OK (Not Supported)
	test VIDIOC_G_ENC_INDEX: OK (Not Supported)
	test VIDIOC_(TRY_)DECODER_CMD: OK (Not Supported)

Buffer ioctls (Input 0):
	test VIDIOC_REQBUFS/CREATE_BUFS/QUERYBUF: OK
	test VIDIOC_EXPBUF: OK

Test input 0:

Streaming ioctls:
	test read/write: OK (Not Supported)
	test blocking wait: OK
	test MMAP: OK
	test USERPTR: OK (Not Supported)
	test DMABUF: OK (Not Supported)

Total: 49, Succeeded: 49, Failed: 0, Warnings: 0

Let me know what you think,
Maxime

Changes from v5:
  - Add link_validate/get_fmt/set_fmt/enum_mbus_code to the subdevice
  - Create a device file for the subdevice
  - Add link_validate to the video device
  - Remove the storage of both the v4l2_pix_format_mplane structure and the
    sun4i_csi_format structure, since the latter can be retrieved easily
    from the former, and this is actually needed in a single place.
  - Fix the copyright year notice

Changes from v4:
  - Created an intermediate sub-device

Changes from v3:
  - Rebased on v5.1-rc
  - Fixed the YAML binding according to Rob's review

Changes from v2:
  - Address a few minors comments on the error path, the return type of
    some functions, the type of some variables
  - Disable the device if the subdev call fails in start_streaming
  - Use __maybe_unused and SET_RUNTIME_PM_OPS for the runtime PM hooks
  - Call media_device_cleanup in the remove function
  - Add a dependency on the subdev API and the common clock framework
  - Fix the MAINTAINERS entry to point to the yaml file
  - Add the of graph bindings to the YAML schemas
  - Rebase on next

Changes from v1:
  - Make sure it's compliant with a much newer v4l2-compliance
  - Conversion of the DT bindings to a JSON schema
  - Drop the vendor properties and use a separate compatible instead
  - Fix an issue on the last frame where we would not have any buffer
    queued and would report an error by using a scratch buffer
  - Fix the warnings reported by v4l2-compliance
  - Rebase on top of 5.0-rc1
  - Added a MAINTAINERS entry
  - Switched to strscpy
  - Fixed SPDX header

Maxime Ripard (5):
  dt-bindings: media: Add Allwinner A10 CSI binding
  media: sunxi: Refactor the Makefile and Kconfig
  media: sunxi: Add A10 CSI driver
  ARM: dts: sun7i: Add CSI0 controller
  DO NOT MERGE: ARM: dts: bananapi: Add Camera support

 Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml |  94 +++++++++++++++-
 MAINTAINERS                                                          |   8 +-
 arch/arm/boot/dts/sun7i-a20-bananapi.dts                             |  91 +++++++++++++++-
 arch/arm/boot/dts/sun7i-a20.dtsi                                     |  11 ++-
 drivers/media/platform/Kconfig                                       |   2 +-
 drivers/media/platform/Makefile                                      |   2 +-
 drivers/media/platform/sunxi/Kconfig                                 |   2 +-
 drivers/media/platform/sunxi/Makefile                                |   2 +-
 drivers/media/platform/sunxi/sun4i-csi/Kconfig                       |  11 ++-
 drivers/media/platform/sunxi/sun4i-csi/Makefile                      |   5 +-
 drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.c                   | 358 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-
 drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.h                   | 160 ++++++++++++++++++++++++++-
 drivers/media/platform/sunxi/sun4i-csi/sun4i_dma.c                   | 444 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-
 drivers/media/platform/sunxi/sun4i-csi/sun4i_v4l2.c                  | 374 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-
 14 files changed, 1562 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml
 create mode 100644 drivers/media/platform/sunxi/Kconfig
 create mode 100644 drivers/media/platform/sunxi/Makefile
 create mode 100644 drivers/media/platform/sunxi/sun4i-csi/Kconfig
 create mode 100644 drivers/media/platform/sunxi/sun4i-csi/Makefile
 create mode 100644 drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.c
 create mode 100644 drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.h
 create mode 100644 drivers/media/platform/sunxi/sun4i-csi/sun4i_dma.c
 create mode 100644 drivers/media/platform/sunxi/sun4i-csi/sun4i_v4l2.c

base-commit: 954795a7a486911e6239af3f084f636bffe1d5a4
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
