Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 892FC134AA3
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 19:45:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/z/j9ovRaN5J2TnogdKT/OEbDdbvJsSp4o0aWi4lNIY=; b=Hy53aCNxDV7NqE
	McmWHEw8OqjmLuAimBpU7HV7NPjTBppry01TdR5ULY/xHjebErlVknvZDtVavpGoFp8ybZINF3HFN
	DzoA9mI5l/ObIMlylIN1P9Pi6y1j1B9hp+ZmmtcuH8//H+02Y/sFcZLG1GLsJTL4fwt1AflCS/rRp
	5I8FNCaZXLgyoq0y4osfl2nZLQgsendCtP4gUvV+dlbINhHe8ta9Wt6IjZyPAUhoz63WS0zNZaW0O
	S3ss4kEnvg/JXTqFyCNom/lJBCNHCW8HuyAYOrBa8SgrJdb986xppZUPzDNw1jGskhOwIgA/aNluL
	qSrDfagU5dvISbX1IebQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipGKd-0007sG-Vw; Wed, 08 Jan 2020 18:45:28 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipGKX-0007ra-CW; Wed, 08 Jan 2020 18:45:23 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id 7BA4926BBC2
From: Helen Koike <helen.koike@collabora.com>
To: linux-rockchip@lists.infradead.org
Subject: [PATCH v13 00/11] Rockchip ISP Driver
Date: Wed,  8 Jan 2020 15:44:43 -0300
Message-Id: <20200108184454.825725-1-helen.koike@collabora.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_104521_687641_255B1FF5 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
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

This patchset adds support for the Image Signal Processor unit version 1.0 of
the Rockchip RK3399 SoC in the staging tree.

There are still some missing things to move it from staging (please, see
TODO file), but the driver is already being used by several people.

For instance, libcamera, currently supports an older version of the driver;
and adding in staging make the work flow easier for collaboration within
the community.

I plan to be actively working on the driver to move it out of staging as soon as possible.

It is also available at
https://gitlab.collabora.com/koike/linux/tree/rockchip/isp/v13

NOTE: This series only touches MAINTAINERS file and drivers/staging/

Major changes in v13
--------------------
* From v12 discussions, this dphy driver will only be used for rx0, as
the tx1rx1 will be provided by the dsi controller driver as pointed by
Heiko. So in this version we renamed the driver from phy-rockchip-dphy
to phy-rockchip-dphy-rx0, we also renamed the configs and the bindings,
to make it clear it is specific to rx0.

* Fixed typo and improved text descriptions as pointed by Laurent, Ezequiel
and Sakari in v12.

* Removed redundant TESTCLK=1.

* Replaced do_div by div_u64 for data_rate calculation.

* Removed useless grf lookup by phandle.

* Removed space from bus info, to make it "platform:rkisp1", similar to
"platform:vivid" and "platform:vimc".

* Minor coding style changes.

Diff from v12 to v13 can be viewed here: http://ix.io/26Qn

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
  media: staging: phy-rockchip-dphy-rx0: add Rockchip MIPI Synopsys DPHY
    RX0 driver

Helen Koike (6):
  media: staging: rkisp1: add Rockchip ISP1 base driver
  media: staging: rkisp1: add streaming paths
  media: staging: dt-bindings: add Rockchip ISP1 yaml bindings
  media: staging: dt-bindings: add Rockchip MIPI RX D-PHY RX0 yaml
    bindings
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
 .../bindings/phy/rockchip-mipi-dphy-rx0.yaml  |   76 +
 .../media/phy-rockchip-dphy-rx0/Kconfig       |   13 +
 .../media/phy-rockchip-dphy-rx0/Makefile      |    2 +
 .../staging/media/phy-rockchip-dphy-rx0/TODO  |    6 +
 .../phy-rockchip-dphy-rx0.c                   |  388 ++++
 .../bindings/media/rockchip-isp1.yaml         |  192 ++
 .../uapi/v4l/pixfmt-meta-rkisp1-params.rst    |   23 +
 .../uapi/v4l/pixfmt-meta-rkisp1-stat.rst      |   22 +
 drivers/staging/media/rkisp1/Kconfig          |   17 +
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
 24 files changed, 9349 insertions(+)
 create mode 100644 drivers/staging/media/phy-rockchip-dphy-rx0/Documentation/devicetree/bindings/phy/rockchip-mipi-dphy-rx0.yaml
 create mode 100644 drivers/staging/media/phy-rockchip-dphy-rx0/Kconfig
 create mode 100644 drivers/staging/media/phy-rockchip-dphy-rx0/Makefile
 create mode 100644 drivers/staging/media/phy-rockchip-dphy-rx0/TODO
 create mode 100644 drivers/staging/media/phy-rockchip-dphy-rx0/phy-rockchip-dphy-rx0.c
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
