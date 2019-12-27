Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5293B12BAD8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Dec 2019 21:02:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HzvjdfE+cPE0DOFfOIQTQlumGJxDqB69WG7KDhqI3Gg=; b=nEKVclhC47sOBU
	4X43f4DZPE4sQ6qCsWhXn/WACoKuN6kG3nB9IoQxnSHhhMvEiV3ak7aJXodTgyK38vqOtIc9si5WO
	801Nc3pfNVwRUxif521Cry0dZIP+X1PnqdHdKIyzPjuMhxbFy23bvt3/TUaEml4XXHsHWT6xBIUxT
	qW/SqaMrs53f7RvlCr1RB2oo4lJJEWH+AtHA+7rW2zAFrmQAlZ0QzO+3LffLdDBDTOKyaYy5tJJ2U
	pfiuIamyzaKlvKv0Fv42QyMiUDabuE7+kyZqNMc3BaOOySXeoUiuJikamx6KkS/m730eekiRMArvz
	UcSvEsUxpZ5pUMTGRD8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikvo0-00089b-VZ; Fri, 27 Dec 2019 20:01:53 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikvnr-00088N-DQ; Fri, 27 Dec 2019 20:01:45 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id 18B52283C43
From: Helen Koike <helen.koike@collabora.com>
To: linux-rockchip@lists.infradead.org
Subject: [PATCH v12 00/11] Rockchip ISP Driver
Date: Fri, 27 Dec 2019 17:01:05 -0300
Message-Id: <20191227200116.2612137-1-helen.koike@collabora.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_120143_710741_B24BA807 
X-CRM114-Status: GOOD (  12.11  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, eddie.cai.linux@gmail.com,
 kernel@collabora.com, heiko@sntech.de, linux-arm-kernel@lists.infradead.org,
 ezequiel@collabora.com, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, tfiga@chromium.org,
 Helen Koike <helen.koike@collabora.com>, robh+dt@kernel.org,
 hans.verkuil@cisco.com, laurent.pinchart@ideasonboard.com,
 sakari.ailus@linux.intel.com, joacim.zetterling@gmail.com, mchehab@kernel.org,
 andrey.konovalov@linaro.org, jacob-chen@iotwrt.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

This patchset adds support for the Image signal processor unit version 1.0 of
the Rockchip RK3399 SoC in the staging tree.
There are still some missing things to move it from staging (please, see
TODO file), but the driver is already being used by several people
(libcamera, for instance, already supports an older version of the driver)
and adding in staging make the work flow easier for collaboration within
the community.
I plan to be actively working on the driver to move it out of staging asap.

It is also available at
https://gitlab.collabora.com/koike/linux/tree/rockchip/isp/v12

NOTE: This series only touches MAINTAINERS file and drivers/staging/

Major changes in V12
--------------------
* Cleanups
For this version of the patchset, several cleanups were made, including renaming
functions, variables, structs, enum and files to have the "rkisp1" prefix.
Some print and comments were re-written, and several of them that were unecessary
were removed.
regs.c and all the headers besides rkisp1-common.h were removed.
Several unecessary functions were removed, parts of the code were re-written to
be readable, reduce indentation, and remove redundant code.
More helper functions from the media core is being used.
Header files were removed, except for rkisp1-common.h and rkisp1-regs.h,
there are not that much shared code, keep then in a single place instead
of spreading it through several header files, it is easier to navigate.
More cleanups are still possible, but at least now we have a more organized and
standardized code, which makes it easier to read and to maintain.

* An entry in Debugfs was added to keep track of errors and data loss.

* A new subdevice entity for the resizer was added.
Previously, resizer was being implemented in the capture devices, but since
capture devices don't have pad operations, the code was accepting unmatching
links between ISP and the capture.
Separating the resizer to it's own entity removed several hacks from the
capture, besides simplifying the code, making it easier to read.
Cropping was also moved out from the capture to the resizer subdevices.
This also changes userspace API (as the topology changed), but now resizing is
more explicitly represented instead of hided in the capture.

* Format propagation between pads was fixed.

* Ascii art block diagram to remove the http link reference.

* More items in the TODO file, including reviewing the locks.

* Fix Jacob Chen's email address, keep the original jacob2.chen@rock-chips.com
email.

* yaml Device Tree bindings: the txt bindings docs got replaced, so it
can be verified with make dt_bindings_check and make dtbs_check

NOTE: the changes were focused on the main loop sensor->isp->capture, I almost
didn't touch params and stats, mostly because I didn't setup a testing framework
yet for those, so they have lots of space for improvements.

Commands output:
----------------
media-ctl -p : http://ix.io/25DG
media-ctl --print-dot: http://col.la/rkisp1v12dot
v4l2-compliance -m0: http://ix.io/25DI
NOTE: there is a failure in v4l2-compliance, but comes from the sensor, not from the ISP.

Testing:
--------
SEN_DEV=/dev/v4l-subdev3
ISP_DEV=/dev/v4l-subdev0
RSZ_SP_DEV=/dev/v4l-subdev2
RSZ_MP_DEV=/dev/v4l-subdev1
CAP_SP_DEV=/dev/video1
CAP_MP_DEV=/dev/video0

WIDTH=1280
HEIGHT=960

v4l2-ctl --set-subdev-fmt pad=0,width=$WIDTH,height=$HEIGHT,code=0x3001 -d $SEN_DEV

v4l2-ctl --set-subdev-fmt pad=0,width=$WIDTH,height=$HEIGHT,code=0x3001 -d $ISP_DEV
v4l2-ctl --set-subdev-selection pad=0,target=crop,top=0,left=0,width=$WIDTH,height=$HEIGHT -d $ISP_DEV

v4l2-ctl --set-subdev-selection pad=2,target=crop,top=0,left=0,width=$WIDTH,height=$HEIGHT -d $ISP_DEV
v4l2-ctl --set-subdev-fmt pad=2,width=$WIDTH,height=$HEIGHT,code=0x2008 -d $ISP_DEV

v4l2-ctl --set-subdev-fmt pad=0,width=$WIDTH,height=$HEIGHT,code=0x2008 -d $RSZ_SP_DEV
v4l2-ctl --set-subdev-fmt pad=1,width=$WIDTH,height=$HEIGHT,code=0x2008 -d $RSZ_SP_DEV

v4l2-ctl --set-subdev-selection pad=0,target=crop,top=0,left=0,width=$WIDTH,height=$HEIGHT -d $RSZ_SP_DEV

v4l2-ctl --set-subdev-fmt pad=0,width=$WIDTH,height=$HEIGHT,code=0x2008 -d $RSZ_MP_DEV
v4l2-ctl --set-subdev-fmt pad=1,width=$WIDTH,height=$HEIGHT,code=0x2008 -d $RSZ_MP_DEV

v4l2-ctl --set-subdev-selection pad=0,target=crop,top=0,left=0,width=$WIDTH,height=$HEIGHT -d $RSZ_MP_DEV

v4l2-ctl -v width=$WIDTH,height=$HEIGHT,pixelformat=NV12 -d $CAP_SP_DEV
v4l2-ctl -v width=$WIDTH,height=$HEIGHT,pixelformat=NV12 -d $CAP_MP_DEV

v4l2-ctl --stream-mmap --stream-count=100 -d $CAP_SP_DEV --stream-to=/tmp/test_sp.raw
v4l2-ctl --stream-mmap --stream-count=100 -d $CAP_MP_DEV --stream-to=/tmp/test_mp.raw

ffplay -loglevel warning -v info -f rawvideo -pixel_format nv12 -video_size "1280x960" tmp/test_sp.raw
ffplay -loglevel warning -v info -f rawvideo -pixel_format nv12 -video_size "1280x960" tmp/test_mp.raw

Thanks
Helen

Ezequiel Garcia (1):
  media: staging: phy-rockchip-dphy: add Rockchip MIPI Synopsys DPHY
    driver

Helen Koike (6):
  media: staging: rkisp1: add Rockchip ISP1 base driver
  media: staging: rkisp1: add streaming paths
  media: staging: dt-bindings: add Rockchip ISP1 yaml bindings
  media: staging: dt-bindings: add Rockchip MIPI RX D-PHY yaml bindings
  media: staging: rkisp1: add TODO file for staging
  MAINTAINERS: add entry for Rockchip ISP1 driver

Jacob Chen (3):
  media: staging: rkisp1: add capture device for statistics
  media: staging: rkisp1: add output device for parameters
  media: staging: rkisp1: add document for rkisp1 meta buffer format

Jeffy Chen (1):
  media: staging: rkisp1: add user space ABI definitions

 MAINTAINERS                                   |    6 +
 drivers/staging/media/Kconfig                 |    4 +
 drivers/staging/media/Makefile                |    2 +
 .../bindings/phy/rockchip-mipi-dphy.yaml      |   75 +
 .../staging/media/phy-rockchip-dphy/Kconfig   |   11 +
 .../staging/media/phy-rockchip-dphy/Makefile  |    2 +
 drivers/staging/media/phy-rockchip-dphy/TODO  |    6 +
 .../phy-rockchip-dphy/phy-rockchip-dphy.c     |  396 ++++
 .../bindings/media/rockchip-isp1.yaml         |  193 ++
 .../uapi/v4l/pixfmt-meta-rkisp1-params.rst    |   23 +
 .../uapi/v4l/pixfmt-meta-rkisp1-stat.rst      |   22 +
 drivers/staging/media/rkisp1/Kconfig          |   13 +
 drivers/staging/media/rkisp1/Makefile         |    8 +
 drivers/staging/media/rkisp1/TODO             |   23 +
 drivers/staging/media/rkisp1/rkisp1-capture.c | 1437 +++++++++++++++
 drivers/staging/media/rkisp1/rkisp1-common.c  |   37 +
 drivers/staging/media/rkisp1/rkisp1-common.h  |  337 ++++
 drivers/staging/media/rkisp1/rkisp1-dev.c     |  574 ++++++
 drivers/staging/media/rkisp1/rkisp1-isp.c     | 1164 ++++++++++++
 drivers/staging/media/rkisp1/rkisp1-params.c  | 1630 +++++++++++++++++
 drivers/staging/media/rkisp1/rkisp1-regs.h    | 1264 +++++++++++++
 drivers/staging/media/rkisp1/rkisp1-resizer.c |  775 ++++++++
 drivers/staging/media/rkisp1/rkisp1-stats.c   |  530 ++++++
 .../staging/media/rkisp1/uapi/rkisp1-config.h |  819 +++++++++
 24 files changed, 9351 insertions(+)
 create mode 100644 drivers/staging/media/phy-rockchip-dphy/Documentation/devicetree/bindings/phy/rockchip-mipi-dphy.yaml
 create mode 100644 drivers/staging/media/phy-rockchip-dphy/Kconfig
 create mode 100644 drivers/staging/media/phy-rockchip-dphy/Makefile
 create mode 100644 drivers/staging/media/phy-rockchip-dphy/TODO
 create mode 100644 drivers/staging/media/phy-rockchip-dphy/phy-rockchip-dphy.c
 create mode 100644 drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
 create mode 100644 drivers/staging/media/rkisp1/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-params.rst
 create mode 100644 drivers/staging/media/rkisp1/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-stat.rst
 create mode 100644 drivers/staging/media/rkisp1/Kconfig
 create mode 100644 drivers/staging/media/rkisp1/Makefile
 create mode 100644 drivers/staging/media/rkisp1/TODO
 create mode 100644 drivers/staging/media/rkisp1/rkisp1-capture.c
 create mode 100644 drivers/staging/media/rkisp1/rkisp1-common.c
 create mode 100644 drivers/staging/media/rkisp1/rkisp1-common.h
 create mode 100644 drivers/staging/media/rkisp1/rkisp1-dev.c
 create mode 100644 drivers/staging/media/rkisp1/rkisp1-isp.c
 create mode 100644 drivers/staging/media/rkisp1/rkisp1-params.c
 create mode 100644 drivers/staging/media/rkisp1/rkisp1-regs.h
 create mode 100644 drivers/staging/media/rkisp1/rkisp1-resizer.c
 create mode 100644 drivers/staging/media/rkisp1/rkisp1-stats.c
 create mode 100644 drivers/staging/media/rkisp1/uapi/rkisp1-config.h

-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
