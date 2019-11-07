Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63EC5F23B1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 01:57:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pH6zM2NUr3j+uNOIhp4gy9taSBrlz4oVesGJmx52+qc=; b=Ogh1WWxLVdjNUW
	xuvypQKY4Ogi/phcf0kvdD2YcJUtJpPCJJvqvl8/RD9NQjFPK9tZLrilIHtdujNBaxShkPzJBttjP
	GwBOzpSDzal4XTNnhE7r9UeA5JFwL2OFjJcCb4x1xItj89ZtFR/TTTjgm2lmB82vmA1Hmn/wjFg8c
	Izz1tk1LcptYrRz8NHvaBktLSfIhcMNGUba6SxROnIJtS7ri550aN7z7tACQ+49fVwuzZjV22YhW+
	0BNW+YOp+xQn1tXbUDXYHqa+WJFkTX6z+bjyFmOvo2JPQJpCEpsW0IZNQDl7mIIrV1vIEk6aqoqEm
	y9wiip9MZgZ2Eb/SwDkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSW6j-0001Ka-8a; Thu, 07 Nov 2019 00:57:05 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSW6c-0001JA-UA; Thu, 07 Nov 2019 00:57:00 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id 3FCCA283C6D
From: Helen Koike <helen.koike@collabora.com>
To: linux-rockchip@lists.infradead.org
Subject: [PATCH v10 00/11] Rockchip ISP Driver
Date: Wed,  6 Nov 2019 21:56:06 -0300
Message-Id: <20191107005617.12302-1-helen.koike@collabora.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_165659_225780_C54D0CAE 
X-CRM114-Status: GOOD (  10.98  )
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
 kernel@collabora.com, heiko@sntech.de, jacob-chen@iotwrt.com,
 gregkh@linuxfoundation.org, jeffy.chen@rock-chips.com, zyc@rock-chips.com,
 linux-kernel@vger.kernel.org, tfiga@chromium.org,
 Helen Koike <helen.koike@collabora.com>, robh+dt@kernel.org,
 hans.verkuil@cisco.com, laurent.pinchart@ideasonboard.com,
 sakari.ailus@linux.intel.com, zhengsq@rock-chips.com, mchehab@kernel.org,
 ezequiel@collabora.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

This series adds the Rockchip Image Signal Processing Unit v1 driver to
staging.

The main reason to be in staging is that people are already using it from the
mailing list (including libcamera), and having it in mainlin makes the workflow
easier. Also, it is easier for other people to contribute back (with code
or testing the driver).

We plan to actively work on this driver to get it our of staging.

This patchset is also available at:
https://gitlab.collabora.com/koike/linux/tree/rockchip/isp/v10

Libcamera patched to work with this version:
https://gitlab.collabora.com/koike/libcamera
(also sent to the mailing list)

The major difference in v10 are:
* I splitted the patches again in different commits, since it was too big for
the media mailing list and also it's easier to get dt-bindings approval.
* We don't expose the metadata pixelformats to the uapi yet, so  patch
"media: videodev2.h, v4l2-ioctl: add rkisp1 meta buffer format" was
removed from the series.
* TODO list was updated to remind to test uapi structs in different
architectures.

This series only touches MAINTAINERS file and drivers/staging/

MAINTAINERS
drivers/staging/media/Kconfig
drivers/staging/media/Makefile
drivers/staging/media/phy-rockchip-dphy/Kconfig
drivers/staging/media/phy-rockchip-dphy/Makefile
drivers/staging/media/phy-rockchip-dphy/TODO
drivers/staging/media/phy-rockchip-dphy/phy-rockchip-dphy.c
drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.txt
drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-mipi-dphy.txt
drivers/staging/media/rkisp1/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-params.rst
drivers/staging/media/rkisp1/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-stat.rst
drivers/staging/media/rkisp1/Kconfig
drivers/staging/media/rkisp1/Makefile
drivers/staging/media/rkisp1/TODO
drivers/staging/media/rkisp1/capture.c
drivers/staging/media/rkisp1/capture.h
drivers/staging/media/rkisp1/common.h
drivers/staging/media/rkisp1/dev.c
drivers/staging/media/rkisp1/dev.h
drivers/staging/media/rkisp1/isp_params.c
drivers/staging/media/rkisp1/isp_params.h
drivers/staging/media/rkisp1/isp_stats.c
drivers/staging/media/rkisp1/isp_stats.h
drivers/staging/media/rkisp1/regs.c
drivers/staging/media/rkisp1/regs.h
drivers/staging/media/rkisp1/rkisp1.c
drivers/staging/media/rkisp1/rkisp1.h
drivers/staging/media/rkisp1/uapi/rkisp1-config.h

Two drivers were added, including a TODO list for removing it from
staging:

* phy-rockchip-dphy: mipi dphy driver used by csi
* rkisp1: the image signal processing unit driver

Any feedback is welcome.

Thanks,
Helen

Helen Koike (1):
  MAINTAINERS: add entry for Rockchip ISP1 driver

Jacob Chen (9):
  media: staging: phy-rockchip-dphy: add Rockchip MIPI Synopsys DPHY
    driver
  media: staging: rkisp1: add document for rkisp1 meta buffer format
  media: staging: rkisp1: add Rockchip ISP1 subdev driver
  media: staging: rkisp1: add ISP1 statistics driver
  media: staging: rkisp1: add ISP1 params driver
  media: staging: rkisp1: add capture device driver
  media: staging: rkisp1: add rockchip isp1 core driver
  media: staging: dt-bindings: Document the Rockchip ISP1 bindings
  media: staging: dt-bindings: Document the Rockchip MIPI RX D-PHY
    bindings

Jeffy Chen (1):
  media: staging: rkisp1: add user space ABI definitions

 MAINTAINERS                                   |    6 +
 drivers/staging/media/Kconfig                 |    4 +
 drivers/staging/media/Makefile                |    2 +
 .../staging/media/phy-rockchip-dphy/Kconfig   |   11 +
 .../staging/media/phy-rockchip-dphy/Makefile  |    2 +
 drivers/staging/media/phy-rockchip-dphy/TODO  |    6 +
 .../phy-rockchip-dphy/phy-rockchip-dphy.c     |  400 ++++
 .../bindings/media/rockchip-isp1.txt          |   71 +
 .../bindings/media/rockchip-mipi-dphy.txt     |   38 +
 .../uapi/v4l/pixfmt-meta-rkisp1-params.rst    |   23 +
 .../uapi/v4l/pixfmt-meta-rkisp1-stat.rst      |   22 +
 drivers/staging/media/rkisp1/Kconfig          |   13 +
 drivers/staging/media/rkisp1/Makefile         |    7 +
 drivers/staging/media/rkisp1/TODO             |   23 +
 drivers/staging/media/rkisp1/capture.c        | 1869 +++++++++++++++++
 drivers/staging/media/rkisp1/capture.h        |  164 ++
 drivers/staging/media/rkisp1/common.h         |   98 +
 drivers/staging/media/rkisp1/dev.c            |  439 ++++
 drivers/staging/media/rkisp1/dev.h            |   67 +
 drivers/staging/media/rkisp1/isp_params.c     | 1604 ++++++++++++++
 drivers/staging/media/rkisp1/isp_params.h     |   50 +
 drivers/staging/media/rkisp1/isp_stats.c      |  494 +++++
 drivers/staging/media/rkisp1/isp_stats.h      |   60 +
 drivers/staging/media/rkisp1/regs.c           |  224 ++
 drivers/staging/media/rkisp1/regs.h           | 1525 ++++++++++++++
 drivers/staging/media/rkisp1/rkisp1.c         | 1246 +++++++++++
 drivers/staging/media/rkisp1/rkisp1.h         |   97 +
 .../staging/media/rkisp1/uapi/rkisp1-config.h |  819 ++++++++
 28 files changed, 9384 insertions(+)
 create mode 100644 drivers/staging/media/phy-rockchip-dphy/Kconfig
 create mode 100644 drivers/staging/media/phy-rockchip-dphy/Makefile
 create mode 100644 drivers/staging/media/phy-rockchip-dphy/TODO
 create mode 100644 drivers/staging/media/phy-rockchip-dphy/phy-rockchip-dphy.c
 create mode 100644 drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.txt
 create mode 100644 drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-mipi-dphy.txt
 create mode 100644 drivers/staging/media/rkisp1/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-params.rst
 create mode 100644 drivers/staging/media/rkisp1/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-stat.rst
 create mode 100644 drivers/staging/media/rkisp1/Kconfig
 create mode 100644 drivers/staging/media/rkisp1/Makefile
 create mode 100644 drivers/staging/media/rkisp1/TODO
 create mode 100644 drivers/staging/media/rkisp1/capture.c
 create mode 100644 drivers/staging/media/rkisp1/capture.h
 create mode 100644 drivers/staging/media/rkisp1/common.h
 create mode 100644 drivers/staging/media/rkisp1/dev.c
 create mode 100644 drivers/staging/media/rkisp1/dev.h
 create mode 100644 drivers/staging/media/rkisp1/isp_params.c
 create mode 100644 drivers/staging/media/rkisp1/isp_params.h
 create mode 100644 drivers/staging/media/rkisp1/isp_stats.c
 create mode 100644 drivers/staging/media/rkisp1/isp_stats.h
 create mode 100644 drivers/staging/media/rkisp1/regs.c
 create mode 100644 drivers/staging/media/rkisp1/regs.h
 create mode 100644 drivers/staging/media/rkisp1/rkisp1.c
 create mode 100644 drivers/staging/media/rkisp1/rkisp1.h
 create mode 100644 drivers/staging/media/rkisp1/uapi/rkisp1-config.h

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
