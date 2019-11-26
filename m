Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E597109B56
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 Nov 2019 10:38:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8phQtJqwAFiw6re4kZIQ9GiKBRg+S8SfXhC44I0Y4U8=; b=ZJLzhpePfmrbny
	GBziOeE4BXPodhYTOspWSsJL/SuUUv5T8mMjX7oE1EZQt23a/jSVKGyxzx63Wj0wc5h5YHBnrHjk3
	3fGwmfkJe425TXwHkGcXGm1ti6AhcgW6eN8zQPFhumGFW+eiUIefi06mwtGJ7i8p71R+IgHPiuLI1
	XOtknXfIfZgpCBPkIFgJKSSIebnTfXjNQIPBgus/Z7Fr7oUdqTG1BhvOAcpVFIXdTyeH45QCV8V92
	ZTySMPsYyFsshHa+xoK67cfD9/oaOl9N8ppc9nWMvCnUBPvqKi1FIWNa0B4wDJmF8UFOpmldOzU1S
	LwT85pdt0NbjFs11jj2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZXII-0006gN-8u; Tue, 26 Nov 2019 09:38:02 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZXHt-0006Xb-JS
 for linux-arm-kernel@lists.infradead.org; Tue, 26 Nov 2019 09:37:42 +0000
Received: by mail-wr1-x429.google.com with SMTP id b18so21555222wrj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 Nov 2019 01:37:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=UzhDyQ56LBzm46HNNl3HQXj0Cwtw/+D8lGNvZCeLFfU=;
 b=tAq0BQX9fU6dNUlVbcSM20CfwA1J8XWvdziNBxNa2ERzJKecEWe4GyQ/n6mc0Bu1kA
 BK+RtS5EftHYJO/GOLGcR1sEzvmtEz+2e0fCsqNSbt4js84jN2bbfHTv3UWwonqchUJL
 BFjopSZEY7sTyFj0u88jTvB663o0wheQk7+Yd6Zs9rJPpwGIr7HvCyaWm1obmoNZMpnI
 EQnWdlvUOK5EdRn2+FwCiqAlEnC2fxv1w9oP8NKfYVsmPx38Zi76d9B+qzLrogW6yPfb
 n8XyiiTi2YF5r1+6zuPVXA8lY45qKWjEInTyPOlJNEZ5XFZiVs+hDcIutvI9ckRLdzxS
 Jp4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=UzhDyQ56LBzm46HNNl3HQXj0Cwtw/+D8lGNvZCeLFfU=;
 b=b5i/uIvcgPbqnK82J82iFHxWUIGgdH+gJj+cVIY8iW3cv6QxkTmV72seVX1FfA7oo2
 fqBccgfBiuBmwhNBx9hHTPEpiLUa90iH8sN/TRut9g201Nosg/3RHI4HfLdYu4QXi6Qk
 Iwa7Xd6FmTIsNXoz5XZ1xMAsYQ7xfpDPeFF10BWPRlI30fT9Aoyx/IC+9qaJLtxN9myw
 S+rcGXjlvTz+3QauN188M3yxBR0teLdiZ9A30dFs/bQMLceSPUANsy8IPSBC7jT3pZ1w
 S9VU+MBkCMkzyog+fBM8euXDVLE1XLURKI4Y02CNrNSxmUoEgXWvds2gxnigHkuRvcaB
 gOrA==
X-Gm-Message-State: APjAAAXXBNjaZEoNthr/tey7I3NzAh8IklQAKi+RTh8cx4LT1cY1EOXH
 pcvJnJCMxsDJapKLCR5IZ2yeHg==
X-Google-Smtp-Source: APXvYqwpcan2QJ1uHURAp0mno8I427wdib6hDOxjlnDdGOsDgMqMmd6oqGy2A4ymy5A8BZJ5B73VoQ==
X-Received: by 2002:a05:6000:103:: with SMTP id
 o3mr3709043wrx.80.1574761055575; 
 Tue, 26 Nov 2019 01:37:35 -0800 (PST)
Received: from bender.baylibre.local (176-150-251-154.abo.bbox.fr.
 [176.150.251.154])
 by smtp.gmail.com with ESMTPSA id y67sm2464082wmy.31.2019.11.26.01.37.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 Nov 2019 01:37:34 -0800 (PST)
From: Neil Armstrong <narmstrong@baylibre.com>
To: mchehab@kernel.org,
	hans.verkuil@cisco.com
Subject: [PATCH v2 0/3] media: meson: vdec: Add compliant H264 support
Date: Tue, 26 Nov 2019 10:37:30 +0100
Message-Id: <20191126093733.32404-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_013737_723641_4CE6E219 
X-CRM114-Status: GOOD (  11.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:429 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-amlogic@lists.infradead.org, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

This patch series aims to bring H.264 support as well as compliance update
to the amlogic stateful video decoder driver.

The issue in the V1 patchset at [1] is solved by patch #1 following comments
and requirements from hans.

With this, it passes v4l2-compliance with streaming on Amlogic G12A and
Amlogic SM1 SoCs successfully.

This patchset depends on G12A and SM1 enablement series at [2] and [3].

The compliance log is:
# v4l2-compliance --stream-from-hdr test-25fps.h264.hdr -s 200
v4l2-compliance SHA: 7ead0e1856b89f2e19369af452bb03fd0cd16793, 64 bits

Compliance test for meson-vdec device /dev/video0:

Driver Info:
	Driver name      : meson-vdec
	Card type        : Amlogic Video Decoder
	Bus info         : platform:meson-vdec
	Driver version   : 5.4.0
	Capabilities     : 0x84204000
		Video Memory-to-Memory Multiplanar
		Streaming
		Extended Pix Format
		Device Capabilities
	Device Caps      : 0x04204000
		Video Memory-to-Memory Multiplanar
		Streaming
		Extended Pix Format
	Detected Stateful Decoder

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
	test VIDIOC_(UN)SUBSCRIBE_EVENT/DQEVENT: OK
	test VIDIOC_G/S_JPEGCOMP: OK (Not Supported)
	Standard Controls: 2 Private Controls: 0

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
	test VIDIOC_(TRY_)DECODER_CMD: OK

Buffer ioctls:
	test VIDIOC_REQBUFS/CREATE_BUFS/QUERYBUF: OK
	test VIDIOC_EXPBUF: OK
	test Requests: OK (Not Supported)

Test input 0:

Streaming ioctls:
	test read/write: OK (Not Supported)
	test blocking wait: OK
	Video Capture Multiplanar: Captured 200 buffers   
	test MMAP (select): OK
	Video Capture Multiplanar: Captured 200 buffers   
	test MMAP (epoll): OK
	test USERPTR (select): OK (Not Supported)
	test DMABUF: Cannot test, specify --expbuf-device

Total for meson-vdec device /dev/video0: 49, Succeeded: 49, Failed: 0, Warnings: 0

Changes since v1 at [1]:
- fixed output_size is never used reported by hans
- rebased on G12A and SM1 patches
- added handling of qbuf after STREAMON and STOP before enought buffer queued

[1] https://lore.kernel.org/linux-media/20191007145909.29979-1-mjourdan@baylibre.com
[2] https://lore.kernel.org/linux-media/20191120111430.29552-1-narmstrong@baylibre.com
[3] https://lore.kernel.org/linux-media/20191121101429.23831-1-narmstrong@baylibre.com

Maxime Jourdan (2):
  media: meson: vdec: bring up to compliance
  media: meson: vdec: add H.264 decoding support

Neil Armstrong (1):
  media: v4l2-mem2mem: mark DONE any OUTPUT queued buffer after CMD_STOP

 drivers/media/v4l2-core/v4l2-mem2mem.c        |  61 ++-
 drivers/staging/media/meson/vdec/Makefile     |   2 +-
 drivers/staging/media/meson/vdec/codec_h264.c | 482 ++++++++++++++++++
 drivers/staging/media/meson/vdec/codec_h264.h |  14 +
 drivers/staging/media/meson/vdec/esparser.c   |  58 +--
 drivers/staging/media/meson/vdec/vdec.c       |  92 ++--
 drivers/staging/media/meson/vdec/vdec.h       |  14 +-
 .../staging/media/meson/vdec/vdec_helpers.c   |  85 ++-
 .../staging/media/meson/vdec/vdec_helpers.h   |   6 +-
 .../staging/media/meson/vdec/vdec_platform.c  |  71 +++
 include/media/v4l2-mem2mem.h                  |  14 +
 11 files changed, 779 insertions(+), 120 deletions(-)
 create mode 100644 drivers/staging/media/meson/vdec/codec_h264.c
 create mode 100644 drivers/staging/media/meson/vdec/codec_h264.h

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
