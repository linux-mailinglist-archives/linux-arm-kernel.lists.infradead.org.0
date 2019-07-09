Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3486F62EB4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 05:21:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zwZjGN/oOuj4Au/BS8u8XKt0tRUdqDovn0b5oSTkO50=; b=CoOE0as9TjzdHK
	UwLibILss4J+CYh8tOqi8BRIMfikjj0qaRNPNs90TVAIdKlnmmoqfO+NPlRlA+X9hFg9ksRMLQmXz
	uKKwkHD4nLV4VcjuntraNLgzXlgVCDQB2i6K2tDxhbp+H9lJPwwujSfuOK+xLEIZ1tWDuONVvzauX
	F4vOoMEFMTFB9RpLh2SiILH0V9ZC/ITO7PmbMCh1oDcd3hBqIK/0idjnbWY1V8gmVJ6+JAo4kMieI
	x2h7l6Mbs6uUkWeMi/vNpV5PXdmjwkX+//1pEegECmctTuwtcaVpiR4YlrPiRHWy+g+mTx6bA54y9
	qgVHgzJvwIG3BeOxWPpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkghU-0000F1-UD; Tue, 09 Jul 2019 03:21:53 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkghI-0000Eb-AJ; Tue, 09 Jul 2019 03:21:42 +0000
X-UUID: c9963ee9fa0d4068b20d6e247cd28e41-20190708
X-UUID: c9963ee9fa0d4068b20d6e247cd28e41-20190708
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <xia.jiang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 511402212; Mon, 08 Jul 2019 19:21:35 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 8 Jul 2019 20:21:34 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 9 Jul 2019 11:21:32 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 9 Jul 2019 11:21:31 +0800
From: Xia Jiang <xia.jiang@mediatek.com>
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>, Rob Herring <robh+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, Rick Chang
 <rick.chang@mediatek.com>
Subject: [PATCH 0/5]Add support for mt2701 JPEG ENC support
Date: Tue, 9 Jul 2019 11:20:58 +0800
Message-ID: <20190709032103.10291-1-xia.jiang@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_202140_364677_62A02D60 
X-CRM114-Status: GOOD (  10.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, srv_heupstream@mediatek.com,
 linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchset add support for mt2701 JPEG ENC support.

This is the compliance test result for jpeg dec and enc.

The JPEG dec log:
------------------------------------------------------------
v4l2-compliance -d /dev/video0
v4l2-compliance SHA: 08fed4d0edb1492b91d9d1054c36fed95c372eaa, 32 bits

Compliance test for mtk-jpeg device /dev/video0:

Driver Info:
        Driver name      : mtk-jpeg
        Card type        : mtk-jpeg decoder
        Bus info         : platform:15004000.jpegdec
        Driver version   : 5.2.0
        Capabilities     : 0x84204000
                Video Memory-to-Memory Multiplanar
                Streaming
                Extended Pix Format
                Device Capabilities
        Device Caps      : 0x04204000
                Video Memory-to-Memory Multiplanar
                Streaming
                Extended Pix Format
        Detected JPEG Decoder

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
        test VIDIOC_QUERY_EXT_CTRL/QUERYMENU: OK
        test VIDIOC_QUERYCTRL: OK
        test VIDIOC_G/S_CTRL: OK
        test VIDIOC_G/S/TRY_EXT_CTRLS: OK
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
        test Composing: OK
        test Scaling: OK

Codec ioctls:
        test VIDIOC_(TRY_)ENCODER_CMD: OK (Not Supported)
        test VIDIOC_G_ENC_INDEX: OK (Not Supported)
        test VIDIOC_(TRY_)DECODER_CMD: OK (Not Supported)

Buffer ioctls:
                fail: v4l2-test-buffers.cpp(713): q.create_bufs(node, 1, &fmt) != EINVAL
        test VIDIOC_REQBUFS/CREATE_BUFS/QUERYBUF: FAIL
        test VIDIOC_EXPBUF: OK
        test Requests: OK (Not Supported)

Total for mtk-jpeg device /dev/video0: 44, Succeeded: 43, Failed: 1, Warnings: 0
------------------------------------------------------------

The JPEG enc log:

------------------------------------------------------------
v4l2-compliance -d /dev/video1 
v4l2-compliance SHA: 08fed4d0edb1492b91d9d1054c36fed95c372eaa, 32 bits

Compliance test for mtk-jpeg device /dev/video1:

Driver Info:
        Driver name      : mtk-jpeg
        Card type        : mtk-jpeg encoder
        Bus info         : platform:1500a000.jpegenc
        Driver version   : 5.2.0
        Capabilities     : 0x84204000
                Video Memory-to-Memory Multiplanar
                Streaming
                Extended Pix Format
                Device Capabilities
        Device Caps      : 0x04204000
                Video Memory-to-Memory Multiplanar
                Streaming
                Extended Pix Format
        Detected JPEG Encoder

Required ioctls:
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
        test Composing: OK
        test Scaling: OK

Codec ioctls:
        test VIDIOC_(TRY_)ENCODER_CMD: OK (Not Supported)
        test VIDIOC_G_ENC_INDEX: OK (Not Supported)
        test VIDIOC_(TRY_)DECODER_CMD: OK (Not Supported)

Buffer ioctls:
                fail: v4l2-test-buffers.cpp(713): q.create_bufs(node, 1, &fmt) != EINVAL
        test VIDIOC_REQBUFS/CREATE_BUFS/QUERYBUF: FAIL
        test VIDIOC_EXPBUF: OK
        test Requests: OK (Not Supported)

Total for mtk-jpeg device /dev/video1: 44, Succeeded: 43, Failed: 1, Warnings: 0
------------------------------------------------------------

Xia Jiang (5):
  media: dt-bindings: Add JPEG ENC device tree node document
  media: platform: Rename jpeg dec file name
  media: platform: Add jpeg enc feature
  media: platform: change GPLv2 license to SPDX
  arm: dts: add jpeg enc device tree node

 .../bindings/media/mediatek-jpeg-encoder.txt       |  33 +
 arch/arm/boot/dts/mt2701.dtsi                      |  12 +
 arch/arm/configs/multi_v7_defconfig                |  14 +-
 drivers/media/platform/mtk-jpeg/Makefile           |   5 +-
 drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c    | 746 ++++++++++++++++-----
 drivers/media/platform/mtk-jpeg/mtk_jpeg_core.h    | 123 +++-
 drivers/media/platform/mtk-jpeg/mtk_jpeg_dec_hw.c  | 410 +++++++++++
 drivers/media/platform/mtk-jpeg/mtk_jpeg_dec_hw.h  |  85 +++
 .../media/platform/mtk-jpeg/mtk_jpeg_dec_parse.c   | 153 +++++
 .../media/platform/mtk-jpeg/mtk_jpeg_dec_parse.h   |  18 +
 drivers/media/platform/mtk-jpeg/mtk_jpeg_dec_reg.h |  51 ++
 drivers/media/platform/mtk-jpeg/mtk_jpeg_enc_hw.c  | 175 +++++
 drivers/media/platform/mtk-jpeg/mtk_jpeg_enc_hw.h  |  60 ++
 drivers/media/platform/mtk-jpeg/mtk_jpeg_enc_reg.h |  49 ++
 drivers/media/platform/mtk-jpeg/mtk_jpeg_hw.c      | 417 ------------
 drivers/media/platform/mtk-jpeg/mtk_jpeg_hw.h      |  91 ---
 drivers/media/platform/mtk-jpeg/mtk_jpeg_parse.c   | 160 -----
 drivers/media/platform/mtk-jpeg/mtk_jpeg_parse.h   |  25 -
 drivers/media/platform/mtk-jpeg/mtk_jpeg_reg.h     |  58 --
 drivers/media/v4l2-core/v4l2-ctrls.c               |   1 +
 include/uapi/linux/v4l2-controls.h                 |   2 +
 21 files changed, 1754 insertions(+), 934 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/media/mediatek-jpeg-encoder.txt
 create mode 100644 drivers/media/platform/mtk-jpeg/mtk_jpeg_dec_hw.c
 create mode 100644 drivers/media/platform/mtk-jpeg/mtk_jpeg_dec_hw.h
 create mode 100644 drivers/media/platform/mtk-jpeg/mtk_jpeg_dec_parse.c
 create mode 100644 drivers/media/platform/mtk-jpeg/mtk_jpeg_dec_parse.h
 create mode 100644 drivers/media/platform/mtk-jpeg/mtk_jpeg_dec_reg.h
 create mode 100644 drivers/media/platform/mtk-jpeg/mtk_jpeg_enc_hw.c
 create mode 100644 drivers/media/platform/mtk-jpeg/mtk_jpeg_enc_hw.h
 create mode 100644 drivers/media/platform/mtk-jpeg/mtk_jpeg_enc_reg.h
 delete mode 100644 drivers/media/platform/mtk-jpeg/mtk_jpeg_hw.c
 delete mode 100644 drivers/media/platform/mtk-jpeg/mtk_jpeg_hw.h
 delete mode 100644 drivers/media/platform/mtk-jpeg/mtk_jpeg_parse.c
 delete mode 100644 drivers/media/platform/mtk-jpeg/mtk_jpeg_parse.h
 delete mode 100644 drivers/media/platform/mtk-jpeg/mtk_jpeg_reg.h

-- 
1.9.1 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
