Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76149AB586
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 12:12:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GWB6JvZ0LJyekaewPfhbvqnqgt0Ak4ZIEYnDdK0uhns=; b=avpHRj9ugSb5GV
	Xnb4BSRjPRRw/0XEaw6b19F0plv1v+9XdkHUfoYnmX/sAHOwViQY/JY8OpCMWfKDfXo9kTjB3e1uh
	2prwn21etGvflrtxhpn6VnPJXaBMyfDuFNAPjsUHJIX2OTxgxbvwcvYxOSMkiv/L2u3f6jS28hcvO
	TuaBVXBa4HvG9x3McNL5mRnIb59DVlrLr1ZGjwvSpMKWgDye8aO3Zcf0F699xMH85BcdlE0mx+mHJ
	8iBt9OpUItTwF2MExxCG6LHyDMBLjdCi0tCh0guOZLZ4FJwU3HpH6gXhZxC4M4Zr/wRjjKeD7SST1
	qYyEfjLv+7xVQJ4VYCZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6BEg-0004jw-1T; Fri, 06 Sep 2019 10:12:58 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6BDs-00049r-6H; Fri, 06 Sep 2019 10:12:10 +0000
X-UUID: 9e990f7533d547629e18ab99993e8084-20190906
X-UUID: 9e990f7533d547629e18ab99993e8084-20190906
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <jerry-ch.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 583550074; Fri, 06 Sep 2019 02:12:03 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 6 Sep 2019 03:12:01 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 6 Sep 2019 18:11:53 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 6 Sep 2019 18:11:53 +0800
From: Jerry-ch Chen <Jerry-Ch.chen@mediatek.com>
To: <hans.verkuil@cisco.com>, <laurent.pinchart+renesas@ideasonboard.com>,
 <tfiga@chromium.org>, <matthias.bgg@gmail.com>, <mchehab@kernel.org>,
 <lkml@metux.net>
Subject: [RFC PATCH V3 0/3] media: platform: Add support for Face Detection
 (FD) on mt8183 SoC
Date: Fri, 6 Sep 2019 18:11:22 +0800
Message-ID: <20190906101125.3784-1-Jerry-Ch.chen@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_031208_311682_099C6E3D 
X-CRM114-Status: UNSURE (   7.01  )
X-CRM114-Notice: Please train this message.
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
Cc: devicetree@vger.kernel.org, Sean.Cheng@mediatek.com, Rynn.Wu@mediatek.com,
 srv_heupstream@mediatek.com, po-yang.huang@mediatek.com,
 Jerry-ch.Chen@mediatek.com, jungo.lin@mediatek.com, sj.huang@mediatek.com,
 yuzhao@chromium.org, linux-mediatek@lists.infradead.org, zwisler@chromium.org,
 ck.hu@mediatek.com, christie.yu@mediatek.com, frederic.chen@mediatek.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

This RFC patch series is adding Face Detection (FD) driver on Mediatek
mt8183 SoC. It belongs to the first Mediatek's camera driver series based
on V4L2 and media controller framework. I posted the main part of the FD
driver as RFC to discuss first and would like some review comments.

==============
Introduction
==============

Face Detection (FD) unit provides hardware accelerated face detection
feature. It can detect different sizes of faces in a given image.

The driver is implemented as a normal V4L2 memory-to-memory device and
supports V4L2 controls for detection settings. It has two buffer queues.

1. Video output buffer: RAW image for face detection.

2. Meta capture buffer: Result of the detected faces.

==================
Changes in v3
==================

RFC v3 includes the following modification:
1. Adjust the private control ids and place them in
 include/uapi/linux/mtk-fd-v4l2-controls.h

2. Fixing review commnets in mtk_fd_40.c and mtk_fd.h

3. Define FD meta capture buffer in include/uapi/linux/videodev2.h

4. Remove the usage of get_reserved_memory by scp driver and 
 use dma_alloc api instead

Todo:
 - Add v4l2 control menus for private mtk fd control
 - Refine the job finish flow when system suspend

==================
Changes in v2
==================

RFC v2 includes the following modification:
1. Implement FD as a V4L2 mem2mem driver

2. Replace meta input with V4L2 controls

==================
Changes in v1
==================

RFC v1 includes the following modification:
1. Uses Request API instead of FD's buffer collection design

2. removed unnecessary abstraction structurally, including mtk_fd_ctx and
related ops

3. removed the fd_smem node from device tree

4. Fixed the common issues Tomasz commented on Mediatek ISP Pass 1's RFC v0
patch series

==================
Dependent patch
==================

FD driver depends on SCP driver. The patches are as following:

[1]. Add support for mt8183 SCP
https://patchwork.kernel.org/cover/11132177/

==================
Compliance test
==================

* Version: https://git.linuxtv.org/v4l-utils.git/commit/?id=b16f9e945d74aa5
* Note: Some of the failures are caused by the implementation of FD driver,
        which is a m2m device with VIDEO_OUT and META_CAPTURE queues,
        therefore we can't set V4L2_CAP_VIDEO_M2M in device capability, and
        fail in some non-m2m v4l2 test cases.
* Test command: v4l2-compliance -m 0
* test output:

v4l2-compliance SHA: not available, 32 bits

Compliance test for mtk-fd-4.0 device /dev/media0:

Media Driver Info:
        Driver name      : mtk-fd-4.0
        Model            : mtk-fd-4.0
        Serial           :
        Bus info         : platform:1502b000.fd
        Media version    : 4.19.67
        Hardware revision: 0x00000000 (0)
        Driver version   : 4.19.67

Required ioctls:
        test MEDIA_IOC_DEVICE_INFO: OK

Allow for multiple opens:
        test second /dev/media0 open: OK
        test MEDIA_IOC_DEVICE_INFO: OK
        test for unlimited opens: OK

Media Controller ioctls:
        test MEDIA_IOC_G_TOPOLOGY: OK
        Entities: 3 Interfaces: 1 Pads: 4 Links: 4
        test MEDIA_IOC_ENUM_ENTITIES/LINKS: OK
        test MEDIA_IOC_SETUP_LINK: OK

Total for mtk-fd-4.0 device /dev/media0: 7, Succeeded: 7, Failed: 0, Warnings: 0
--------------------------------------------------------------------------------
Compliance test for mtk-fd-4.0 device /dev/video0:

Driver Info:
        Driver name      : mtk-fd-4.0
        Card type        : mtk-fd-4.0
        Bus info         : platform:1502b000.fd
        Driver version   : 4.19.67
        Capabilities     : 0x84a02000
                Video Output Multiplanar
                Metadata Capture
                Streaming
                Extended Pix Format
                Device Capabilities
        Device Caps      : 0x04a02000
                Video Output Multiplanar
                Metadata Capture
                Streaming
                Extended Pix Format
Media Driver Info:
        Driver name      : mtk-fd-4.0
        Model            : mtk-fd-4.0
        Serial           :
        Bus info         : platform:1502b000.fd
        Media version    : 4.19.67
        Hardware revision: 0x00000000 (0)
        Driver version   : 4.19.67
Interface Info:
        ID               : 0x0300000c
        Type             : V4L Video
Entity Info:
        ID               : 0x00000001 (1)
        Name             : mtk-fd-4.0-source
        Function         : V4L2 I/O
        Pad 0x01000002   : 0: Source
          Link 0x02000008: to remote pad 0x1000005 of entity 'mtk-fd-4.0-proc': Data, Enabled, Immutable

Required ioctls:
        test MC information (see 'Media Driver Info' above): OK
                fail: v4l2-compliance.cpp(668): dcaps & output_caps
        test VIDIOC_QUERYCAP: FAIL

Allow for multiple opens:
        test second /dev/video0 open: OK
                fail: v4l2-compliance.cpp(668): dcaps & output_caps
        test VIDIOC_QUERYCAP: FAIL
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
        Standard Controls: 1 Private Controls: 6

Format ioctls:
        test VIDIOC_ENUM_FMT/FRAMESIZES/FRAMEINTERVALS: OK
        test VIDIOC_G/S_PARM: OK (Not Supported)
        test VIDIOC_G_FBUF: OK (Not Supported)
                fail: v4l2-test-formats.cpp(457): pixelformat 00000000 () for buftype 10 not reported by ENUM_FMT
        test VIDIOC_G_FMT: FAIL
                fail: v4l2-test-formats.cpp(457): pixelformat 00000000 () for buftype 10 not reported by ENUM_FMT
        test VIDIOC_TRY_FMT: FAIL
                fail: v4l2-test-formats.cpp(457): pixelformat ffffffff (-BE) for buftype 10 not reported by ENUM_FMT
        test VIDIOC_S_FMT: FAIL
        test VIDIOC_G_SLICED_VBI_CAP: OK (Not Supported)
        test Cropping: OK (Not Supported)
        test Composing: OK (Not Supported)
        test Scaling: OK (Not Supported)

Codec ioctls:
        test VIDIOC_(TRY_)ENCODER_CMD: OK (Not Supported)
        test VIDIOC_G_ENC_INDEX: OK (Not Supported)
        test VIDIOC_(TRY_)DECODER_CMD: OK (Not Supported)

Buffer ioctls:
                fail: v4l2-test-buffers.cpp(667): q2.reqbufs(node->node2, 1) != EBUSY
        test VIDIOC_REQBUFS/CREATE_BUFS/QUERYBUF: FAIL
        test VIDIOC_EXPBUF: OK
        test Requests: OK

Total for mtk-fd-4.0 device /dev/video0: 45, Succeeded: 39, Failed: 6, Warnings: 0

Grand Total for mtk-fd-4.0 device /dev/media0: 52, Succeeded: 46, Failed: 6, Warnings: 0



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
