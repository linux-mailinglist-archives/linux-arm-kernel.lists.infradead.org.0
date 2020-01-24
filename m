Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98ABB1491D9
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 Jan 2020 00:21:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CwNItxz1Qrf4LH6B6urfFs/AlXqvXrOY9GIP/dCOSQs=; b=LYhk7+kHCquS9x
	g7M10vjssBjIcKRMbTwv2IrcOtlORu6KNKtGpNQvhPBhYLQYepG0BuTdwPNGdQyCV6jH3O2kUvAqp
	J4rKSzlj84LjTcExjHhZq+qxMjb65pBLdc2mR2PIU3/oggOPSLWbAuVMP8sbNKuSNPRu0g9zZlMYd
	qVpqGU6UYdtCgcLSiI4cajvPsKiJegxStAAjq0dlvuxy5avb2XnyDVuw9wjWsKxHjs7tGdn6oldsL
	bwe8PQ2enmqrPu0o2YU7NlavXJLhTW8jLAmzkeHp14rMVrfxFIUBpprJjIKvkqPeN31aWRGpqNRd8
	c89eExjph28an2FhbM9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv8GA-0001oL-0s; Fri, 24 Jan 2020 23:21:06 +0000
Received: from mailoutvs14.siol.net ([185.57.226.205] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv8Fc-0001Ww-Gk
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 23:20:34 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTP id D21A95227DD;
 Sat, 25 Jan 2020 00:20:25 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta12.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta12.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id 9kCMi8KzJ6Ui; Sat, 25 Jan 2020 00:20:25 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTPS id 46B585227E3;
 Sat, 25 Jan 2020 00:20:25 +0100 (CET)
Received: from localhost.localdomain (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: 031275009)
 by mail.siol.net (Zimbra) with ESMTPSA id 15DBD5227DD;
 Sat, 25 Jan 2020 00:20:21 +0100 (CET)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	wens@csie.org
Subject: [PATCH 0/8] media: sunxi: Add DE2 rotate driver
Date: Sat, 25 Jan 2020 00:20:06 +0100
Message-Id: <20200124232014.574989-1-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_152032_878845_1E1409E0 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, sboyd@kernel.org,
 mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com, robh+dt@kernel.org, hverkuil-cisco@xs4all.nl,
 mchehab@kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some of Allwinner SoCs like A83T and A64 SoCs contain DE2 rotate core
which can flip image horizontal and vertical and rotate it in 90 deg.
steps. It support a lot of output formats, but a bit less capture
formats. All YUV input formats get converted to yuv420p, while RGB
formats are preserved.

Patches 1-2 fix few issues with DE2 clocks.

Patches 3-4 fix register range of DE2 clocks (it would overlap with
rotate driver)

Patches 5-8 provide binding, implement driver and add nodes.

v4l2-compliance SHA: ec55a961487b449bedbe07650674b4965814cf07, 32 bits, 32-bit time_t

Compliance test for sun8i-rotate device /dev/video0:

Driver Info:
        Driver name      : sun8i-rotate
        Card type        : sun8i-rotate
        Bus info         : platform:sun8i-rotate
        Driver version   : 5.5.0
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

        test invalid ioctls: OK
Debug ioctls:
        test VIDIOC_DBG_G/S_REGISTER: OK (Not Supported)
        test VIDIOC_LOG_STATUS: OK

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
        test VIDIOC_QUERY_EXT_CTRL/QUERYMENU: OK
        test VIDIOC_QUERYCTRL: OK
        test VIDIOC_G/S_CTRL: OK
        test VIDIOC_G/S/TRY_EXT_CTRLS: OK
        test VIDIOC_(UN)SUBSCRIBE_EVENT/DQEVENT: OK
        test VIDIOC_G/S_JPEGCOMP: OK (Not Supported)
        Standard Controls: 4 Private Controls: 0

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
        test Scaling: OK (Not Supported)

Codec ioctls:
        test VIDIOC_(TRY_)ENCODER_CMD: OK (Not Supported)
        test VIDIOC_G_ENC_INDEX: OK (Not Supported)
        test VIDIOC_(TRY_)DECODER_CMD: OK (Not Supported)

Buffer ioctls:
        test VIDIOC_REQBUFS/CREATE_BUFS/QUERYBUF: OK
        test VIDIOC_EXPBUF: OK
        test Requests: OK (Not Supported)

Total for sun8i-rotate device /dev/video0: 45, Succeeded: 45, Failed: 0, Warnings: 0

Best regards,
Jernej

Jernej Skrabec (8):
  clk: sunxi-ng: sun8i-de2: Swap A64 and H6 definitions
  clk: sunxi-ng: sun8i-de2: Fix A83T clocks and reset
  ARM: dts: sunxi: Fix DE2 clocks register range
  arm64: dts: allwinner: a64: Fix display clock register range
  media: dt-bindings: media: Add Allwinner A83T Rotate driver
  media: sun8i: Add Allwinner A83T Rotate driver
  ARM: dts: sun8i: a83t: Add device node for rotation core
  arm64: dts: allwinner: a64: add node for rotation core

 .../allwinner,sun8i-a83t-de2-rotate.yaml      |  70 ++
 MAINTAINERS                                   |   8 +
 arch/arm/boot/dts/sun8i-a83t.dtsi             |  13 +-
 arch/arm/boot/dts/sun8i-r40.dtsi              |   2 +-
 arch/arm/boot/dts/sun8i-v3s.dtsi              |   2 +-
 arch/arm/boot/dts/sunxi-h3-h5.dtsi            |   2 +-
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi |  14 +-
 drivers/clk/sunxi-ng/ccu-sun8i-de2.c          |  49 +-
 drivers/media/platform/Kconfig                |  12 +
 drivers/media/platform/sunxi/Makefile         |   1 +
 .../platform/sunxi/sun8i-rotate/Makefile      |   2 +
 .../sunxi/sun8i-rotate/sun8i-formats.c        | 273 ++++++
 .../sunxi/sun8i-rotate/sun8i-formats.h        |  25 +
 .../sunxi/sun8i-rotate/sun8i-rotate.c         | 924 ++++++++++++++++++
 .../sunxi/sun8i-rotate/sun8i-rotate.h         | 135 +++
 15 files changed, 1512 insertions(+), 20 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/media/allwinner,sun8i-a83t-de2-rotate.yaml
 create mode 100644 drivers/media/platform/sunxi/sun8i-rotate/Makefile
 create mode 100644 drivers/media/platform/sunxi/sun8i-rotate/sun8i-formats.c
 create mode 100644 drivers/media/platform/sunxi/sun8i-rotate/sun8i-formats.h
 create mode 100644 drivers/media/platform/sunxi/sun8i-rotate/sun8i-rotate.c
 create mode 100644 drivers/media/platform/sunxi/sun8i-rotate/sun8i-rotate.h

-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
