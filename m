Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D10F1D9A18
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 21:29:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EZtesOclRQexl0l5MfcH9sWyO8/s60wrQmuyS29wu3Y=; b=t/xBI5tQbtG3Sf
	+uSo+jlqdRENqn/ccBDiA2PJWN9GwiVsisN81nCY0f3a10ds9EJs/i6mED+H4/GBg6weCpwY+oUDt
	3XH18BlzJmu6ShODPeLJrhGxB9D7wx9ades8GYNZ4kJfkAirntJFx3AFyucWIbh/j8L9FegiIsOGR
	+lbGVZjQIiTgv0ndJQVvBW5ZvsqejP9iLyTHz0ADTfaT13jXmkuVHWHc7AE8DzNh0FJbz3furUiiT
	rrURJWVMVStK0ygbauxILtX2pZJIWS0M/4pBp0trVXGFYZ49QtpxPGiyiTNPSyfRpnUwYZIoA5Ddu
	issvhr4zVjSLg0UEFITA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKozI-0006hE-5t; Wed, 16 Oct 2019 19:29:36 +0000
Received: from mailoutvs20.siol.net ([185.57.226.211] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKoyC-0005wt-Hf
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 19:28:32 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id A1E315240D7;
 Wed, 16 Oct 2019 21:28:17 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id ICK6a2hQkFqB; Wed, 16 Oct 2019 21:28:17 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 2C624522B23;
 Wed, 16 Oct 2019 21:28:17 +0200 (CEST)
Received: from localhost.localdomain (cpe-86-58-59-25.static.triera.net
 [86.58.59.25]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 8A38B5240D7;
 Wed, 16 Oct 2019 21:28:13 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	wens@csie.org
Subject: [PATCH v3 0/6] media: Introduce Allwinner H3 deinterlace driver
Date: Wed, 16 Oct 2019 21:28:01 +0200
Message-Id: <20191016192807.1278987-1-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_122828_785428_C6040E51 
X-CRM114-Status: GOOD (  10.97  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.211 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, hverkuil@xs4all.nl, linux-sunxi@googlegroups.com,
 robh+dt@kernel.org, mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Starting with H3, Allwinner began to include standalone deinterlace
core in multimedia oriented SoCs. This patch series introduces support
for it. Note that new SoCs, like H6, have radically different (updated)
deinterlace core, which will need a new driver.

v4l2-compliance report:
v4l2-compliance SHA: dece02f862f38d8f866230ca9f1015cb93ddfac4, 32 bits

Compliance test for sun8i-di device /dev/video0:

Driver Info:
        Driver name      : sun8i-di
        Card type        : sun8i-di
        Bus info         : platform:sun8i-di
        Driver version   : 5.3.0
        Capabilities     : 0x84208000
                Video Memory-to-Memory
                Streaming
                Extended Pix Format
                Device Capabilities
        Device Caps      : 0x04208000
                Video Memory-to-Memory
                Streaming
                Extended Pix Format

Required ioctls:
        test VIDIOC_QUERYCAP: OK

Allow for multiple opens:
        test second /dev/video0 open: OK
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
        test VIDIOC_G/S/ENUMINPUT: OK (Not Supported)
        test VIDIOC_G/S_AUDIO: OK (Not Supported)
        Inputs: 0 Audio Inputs: 0 Tuners: 0

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

Control ioctls:
        test VIDIOC_QUERY_EXT_CTRL/QUERYMENU: OK (Not Supported)
        test VIDIOC_QUERYCTRL: OK (Not Supported)
        test VIDIOC_G/S_CTRL: OK (Not Supported)
        test VIDIOC_G/S/TRY_EXT_CTRLS: OK (Not Supported)
        test VIDIOC_(UN)SUBSCRIBE_EVENT/DQEVENT: OK (Not Supported)
        test VIDIOC_G/S_JPEGCOMP: OK (Not Supported)
        Standard Controls: 0 Private Controls: 0

Format ioctls:
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

Codec ioctls:
        test VIDIOC_(TRY_)ENCODER_CMD: OK (Not Supported)
        test VIDIOC_G_ENC_INDEX: OK (Not Supported)
        test VIDIOC_(TRY_)DECODER_CMD: OK (Not Supported)

Buffer ioctls:
        test VIDIOC_REQBUFS/CREATE_BUFS/QUERYBUF: OK
        test VIDIOC_EXPBUF: OK
        test Requests: OK (Not Supported)

Total for sun8i-di device /dev/video0: 44, Succeeded: 44, Failed: 0, Warnings: 0

Please take a look.

Best regards,
Jernej

Changes from v2:
- added acked-by and review-by tags
- fixed schema path in H3 deinterlace binding
- moved busy check after format args check

Changes from v1:
- updated Maxime's e-mail in DT binding
- removed "items" for single item in DT binding
- implemented power management
- replaced regmap with direct io access
- set exclusive clock rate
- renamed DEINTERLACE_FRM_CTRL_COEF_CTRL to DEINTERLACE_FRM_CTRL_COEF_ACCESS

Jernej Skrabec (6):
  dt-bindings: bus: sunxi: Add H3 MBUS compatible
  clk: sunxi-ng: h3: Export MBUS clock
  ARM: dts: sunxi: h3/h5: Add MBUS controller node
  dt-bindings: media: Add Allwinner H3 Deinterlace binding
  media: sun4i: Add H3 deinterlace driver
  dts: arm: sun8i: h3: Enable deinterlace unit

 .../bindings/arm/sunxi/sunxi-mbus.txt         |    1 +
 .../media/allwinner,sun8i-h3-deinterlace.yaml |   75 ++
 MAINTAINERS                                   |    7 +
 arch/arm/boot/dts/sun8i-h3.dtsi               |   13 +
 arch/arm/boot/dts/sunxi-h3-h5.dtsi            |    9 +
 drivers/clk/sunxi-ng/ccu-sun8i-h3.h           |    4 -
 drivers/media/platform/sunxi/Kconfig          |    1 +
 drivers/media/platform/sunxi/Makefile         |    1 +
 drivers/media/platform/sunxi/sun8i-di/Kconfig |   11 +
 .../media/platform/sunxi/sun8i-di/Makefile    |    2 +
 .../media/platform/sunxi/sun8i-di/sun8i-di.c  | 1020 +++++++++++++++++
 .../media/platform/sunxi/sun8i-di/sun8i-di.h  |  237 ++++
 include/dt-bindings/clock/sun8i-h3-ccu.h      |    2 +-
 13 files changed, 1378 insertions(+), 5 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/media/allwinner,sun8i-h3-deinterlace.yaml
 create mode 100644 drivers/media/platform/sunxi/sun8i-di/Kconfig
 create mode 100644 drivers/media/platform/sunxi/sun8i-di/Makefile
 create mode 100644 drivers/media/platform/sunxi/sun8i-di/sun8i-di.c
 create mode 100644 drivers/media/platform/sunxi/sun8i-di/sun8i-di.h

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
