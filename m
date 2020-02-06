Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC12215407E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 09:42:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EfJDVGDTxtLiKaD3DE3JsVIwzBg/DMb6CQl98IYRh+0=; b=WEaFLlJg8K36rp
	fmowF1To51eDdKX71GpLx4A6MkQaKn+kSXur8vQH2/R5oeYE3gQ0NpKMgcEPu31S9gO6JMX7/6480
	yxQ1ugjV1gMUmZvP0qO38oTPK40eB8R6kXpErrj41yGf5RLK9K3NScPIJPxQfOWXmKPlCYyTt1fLd
	pp81hvcsoMfQ6utx5N/NDjHb62dZ1u2RLSIXlYutZdeTD1ZEy1sdN4CVtQTdjvv7njsyh8J/U2RaD
	AZ/xA4PZTO1Zrvxp/aoFH5PdZ+4WAxEgUPPLFmML6wrKoGTevU0Q0PjZJ12c85V25MXwy6iHdZyGq
	aEBRlukGc53yc0hxB7Lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izcjj-0001bf-Nm; Thu, 06 Feb 2020 08:42:11 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izcjU-0001ZQ-By
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 08:41:58 +0000
Received: by mail-wm1-x342.google.com with SMTP id t23so5315185wmi.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Feb 2020 00:41:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RJqvynypNN2lA8IbNpaHHyxr5Ke0vEOMiboIN4OzW30=;
 b=EWUmgWyYbs4rAFCAzmHJdrqGef/4kVGKIJZJFjPkDLKnJUx3XRmTnA13kqXJfQuwMI
 svu35jlwowRUG+Dgdnxf2rti2CNYK308GJJhtFluIiuS5ndAEWJ9bpkzQXQoNYap7TW6
 K5/Hs3ilY6TyGtFdZU/6pVwf1cJtZQLz67vjSXzQTy2m2icJwSn4jgb9MamPNXM52Udj
 Zib81AptNFkyIiKzrVklvsXpPtr2BN85NQhi5wGvLSdNMYOr/KYhmmz3KhUZxOcw163t
 RZJ/R+iIMzD+0kWMO4JZ0xnd9P4RIi0hCnstDMBGyiWtNpQnG+iuPUF9vqQnjxHXmdpl
 olHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RJqvynypNN2lA8IbNpaHHyxr5Ke0vEOMiboIN4OzW30=;
 b=IXsBO9M7Ko2zxOEzUuwoGId6RTruNwuNr+v3iBSjj5icJkT0C8CM8gCKYOXA9061/w
 zC/QFhpNIepwSny1EHjb0k9g+K48XUaaX+1rouBeL+gqxcfZ+8P8NPcdvTsCD5Hb/Duv
 PAMQyCMmK4Wse4FRrPBQOTXJqbOVu7VS174zW+RLofK0TEIuQYwiXx3zWUxbqPCDz9xh
 IurngcdzrFgF7OLY96gfWGZ9JUw+fa98nXlGdaVUfXqN7z9fz2FrFORTEN+bSUPhOJyc
 v2WwHbCVRE3v86sUkT62B+WA/YUmWiusb07NFKYd3H1GD6jP+N5Z7qXnm8IWubH2gQ2X
 PS/A==
X-Gm-Message-State: APjAAAWbwsiiAYdsEuvxz4MxhSz7/sKrEzMnraZ4ItBKr8hMEKJwBtk2
 yrDOajznnJks75mE574Ds5KLJQ==
X-Google-Smtp-Source: APXvYqzSbMdoob4ZQGTDL4ScCNP7A8RXxjNyuUP5qriotInXR0cYNt/+fL8srgNKU603EKjDkzWWqQ==
X-Received: by 2002:a05:600c:2283:: with SMTP id
 3mr3161258wmf.100.1580978514693; 
 Thu, 06 Feb 2020 00:41:54 -0800 (PST)
Received: from bender.baylibre.local ([2a01:e35:2ec0:82b0:7d33:17f7:8097:ecc7])
 by smtp.gmail.com with ESMTPSA id r1sm3222760wrx.11.2020.02.06.00.41.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Feb 2020 00:41:54 -0800 (PST)
From: Neil Armstrong <narmstrong@baylibre.com>
To: mchehab@kernel.org,
	hans.verkuil@cisco.com
Subject: [PATCH v4 0/5] media: meson: vdec: Add VP9 decoding support
Date: Thu,  6 Feb 2020 09:41:47 +0100
Message-Id: <20200206084152.7070-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_004156_412651_12A545D0 
X-CRM114-Status: GOOD (  11.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

This patchset aims to bring VP9 decoding support to Amlogic GXL, G12A & SM1
platforms for the amlogic stateful video decoder driver.

With this, it passes v4l2-compliance with streaming on Amlogic G12A and
Amlogic SM1 SoCs successfully using the stream at [1] with a fixed
pyv4l2compliance script for VP9 at [2].

The original script kept the IVF headers in the stream, confusing the
decoder. The fixed script only extracts the payload from the IVF container.

The decoder has been tested using the Google CTS TestVectorsIttiam VP9 yuv420
samples and the VP9 Decoder Performance streams at [5], decoding all streams from
Profile 0 and 2 up to Level 4.1, with 10bit downsampling to 8bit.

This patchset depends on :
- H.264 and compliance at [4]

Changes since v3 at [7]:
- fixes necessary spare ref buffer handling in parser
- added a comment to indicate how it's handled
- fix VP9 on SM1, was working with G12A firmware, but needed some changed with SM1 specific firmware
- pushed (gxl) and switched to missing (sm1) vp9 firmwares to linux-firmware repo

Changes since v2 at [6]:
- Rebased on H.264 and compliance at [4]

Changes since v1 at [3]:
- Fixed compliance for delta frame resize, but proper ref keeping is broken
- Added warns for delta frame resize, to be fixed in a following patchset
- Added VP9 probabilities parsing and transformation support to decore the VP9 performance streams
- Fixed refs keeping, avoid deleting necessary refs for next frame
- Properly used the kernel clamp_val() macros
- Zeroed the workspace to avoid refs handling glitches
- Add lock around the flush & stop to avoid race between IRQ and drain/stop

[1] https://github.com/superna9999/pyv4l2compliance/raw/tests/output/Jellyfish_1080_10s_5MB.vp9.hdr
[2] https://github.com/superna9999/pyv4l2compliance
[3] https://lore.kernel.org/linux-media/
[4] https://lore.kernel.org/linux-media/20200116133025.1903-1-narmstrong@baylibre.com
[5] https://www.webmproject.org/vp9/levels/
[6] https://lore.kernel.org/linux-media/20191217111939.10387-1-narmstrong@baylibre.com
[7] https://lore.kernel.org/linux-media/20200116133437.2443-1-narmstrong@baylibre.com

The compliance log is:
# v4l2-compliance --stream-from-hdr Jellyfish_1080_10s_5MB.vp9.hdr -s 200
v4l2-compliance SHA: 7ead0e1856b89f2e19369af452bb03fd0cd16793, 64 bits

Compliance test for meson-vdec device /dev/video0:

Driver Info:
	Driver name      : meson-vdec
	Card type        : Amlogic Video Decoder
	Bus info         : platform:meson-vdec
	Driver version   : 5.5.0
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
	Video Capture Multiplanar: Captured 198 buffers   
	test MMAP (select): OK
	Video Capture Multiplanar: Captured 198 buffers   
	test MMAP (epoll): OK
	test USERPTR (select): OK (Not Supported)
	test DMABUF: Cannot test, specify --expbuf-device

Total for meson-vdec device /dev/video0: 49, Succeeded: 49, Failed: 0, Warnings: 0

Maxime Jourdan (4):
  media: meson: vdec: add helpers for lossless framebuffer compression
    buffers
  media: meson: vdec: add common HEVC decoder support
  media: meson: vdec: add VP9 input support
  media: meson: vdec: add VP9 decoder support

Neil Armstrong (1):
  media: meson: vdec: align stride on 32 bytes

 drivers/staging/media/meson/vdec/Makefile     |    4 +-
 .../media/meson/vdec/codec_hevc_common.c      |  286 +++
 .../media/meson/vdec/codec_hevc_common.h      |   77 +
 drivers/staging/media/meson/vdec/codec_vp9.c  | 2138 +++++++++++++++++
 drivers/staging/media/meson/vdec/codec_vp9.h  |   13 +
 drivers/staging/media/meson/vdec/esparser.c   |  150 +-
 drivers/staging/media/meson/vdec/hevc_regs.h  |  218 ++
 drivers/staging/media/meson/vdec/vdec.c       |   15 +-
 .../staging/media/meson/vdec/vdec_helpers.c   |   35 +-
 .../staging/media/meson/vdec/vdec_helpers.h   |    4 +
 drivers/staging/media/meson/vdec/vdec_hevc.c  |  231 ++
 drivers/staging/media/meson/vdec/vdec_hevc.h  |   13 +
 .../staging/media/meson/vdec/vdec_platform.c  |   38 +
 13 files changed, 3209 insertions(+), 13 deletions(-)
 create mode 100644 drivers/staging/media/meson/vdec/codec_hevc_common.c
 create mode 100644 drivers/staging/media/meson/vdec/codec_hevc_common.h
 create mode 100644 drivers/staging/media/meson/vdec/codec_vp9.c
 create mode 100644 drivers/staging/media/meson/vdec/codec_vp9.h
 create mode 100644 drivers/staging/media/meson/vdec/hevc_regs.h
 create mode 100644 drivers/staging/media/meson/vdec/vdec_hevc.c
 create mode 100644 drivers/staging/media/meson/vdec/vdec_hevc.h

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
