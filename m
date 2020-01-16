Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2094B13DBE3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 14:31:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wxJJmwC4g40KYrmIz0lpkuhmZ2rmsXrgUh5RMJreT+I=; b=hdfIb7EhZ8ndfT
	DwdKTiaA5RDiao6zr0a7VVdK/ITZ04HEbXmm/xj62bVKBWBKmYqogCHAsasLt6W96S6IMPSUivYHK
	+apVntvyKhBExn0U5UT/Vs2bZ3hBxs7Wek8jFXTZV1uDI9SlZjUBKKXDA0k2MtJtBIrgrXdzl2VUd
	2YYOTloIvPkBP+rb0ALJ+hEBxz1EmIl8bIECxHR9/A/Q9p0UEQ4Y3/RL02+pRcnsM5oiiOtXGR83Y
	b7LYqN1H7zQ1XEvFwOl/8jBLZLvMKA21M5jKMpc/aiKhr4MwJwK3HyV5XLWsln1UXhVxH+12STtQ6
	yrriQ3QPvls/LPgnkhqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is5Ez-000490-RY; Thu, 16 Jan 2020 13:31:17 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is5EE-0003dh-Ud
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 13:30:35 +0000
Received: by mail-wr1-x441.google.com with SMTP id t2so19179228wrr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 05:30:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=non2lYOqubVmH41Rs5OllDj6ERHM4oHicFYYRo86jVQ=;
 b=fhP1OVhtjYbljim4QKpMEKBSHHFDH/f76TE1q8leoYTiU5eEYRBbhW+NiTYFhDkshG
 93dFwY+QR51g4/NFVpeTzX9WCQnjnD5cw5DozJcYgLVFzc7o+BB9V8p6rE63xeDu6crF
 e6hu5rEqceVJlwfzZYAoEJNYomA2mg3l+U5Z8hpbwrPw3Ze7oHqf4flOEeMGSeHAUTUU
 d54Eqvlof/xoHbGL2MCytFZS5e+win5sPJh/0K2Ol2K+VJ5HSbH0bZeQgebW83y1Iwc8
 PiOfiU54cr0fydmKb/4cvXkW9qRPJlUa8GmBEVaWrQgNTl5LMMZRNP8Dou/9Irbuac47
 bJ7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=non2lYOqubVmH41Rs5OllDj6ERHM4oHicFYYRo86jVQ=;
 b=QUweqk3kNFeXntgFV7Eb835sxjTrqEb7i9VzpGGa3pax7gcrn2n4fS4hlINxFAPSnv
 V1vXDmJUoLciibhJLddhYQ8xeqZ1kbQb9Nzh23INyZLth20TvtZc0NP2o6xGV778utp7
 qHXQETYUSHQphOSO4vg7BGS3f/EpCRML6XpU0BAiVPwz9MZmRrZCLGg0cV+deWVq//r5
 GgN33FnI5KDlZIQ0BF7mOM9v+2PrFHmvXE1WJiLdGA3dOD4jqCPDMDcSDP14R5vLsLp2
 kFl+t8w1R65cUgJNPhW+eSdYTsxot2fxlwq8jDRKa15L1q5es3H8Fok+fsiG9NTNO44s
 rAvw==
X-Gm-Message-State: APjAAAWe36X/lboUT8Fsyx9qcZHjHBZWMobCj2lp3ljtVbeS+Ur2LPm1
 JcMW2/ChgKBVKDeJb2q3XZsibw==
X-Google-Smtp-Source: APXvYqwrwviZpV7f31Yp4Fa6uN+1UzOYZKulJOfiEk+RMjamTn1dcvKVeFZNgGllR8sR6QPdie8XcA==
X-Received: by 2002:adf:e683:: with SMTP id r3mr3366782wrm.38.1579181427459;
 Thu, 16 Jan 2020 05:30:27 -0800 (PST)
Received: from bender.baylibre.local
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id e16sm29256898wrs.73.2020.01.16.05.30.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Jan 2020 05:30:26 -0800 (PST)
From: Neil Armstrong <narmstrong@baylibre.com>
To: mchehab@kernel.org,
	hans.verkuil@cisco.com
Subject: [PATCH v4 0/4] media: meson: vdec: Add compliant H264 support
Date: Thu, 16 Jan 2020 14:30:21 +0100
Message-Id: <20200116133025.1903-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_053031_005222_797AAAEB 
X-CRM114-Status: UNSURE (   9.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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
and requirements from hans. It moves the full draining & stopped state tracking
and handling from vicodec to core v4l2-mem2mem.

The vicodec changes still passes the v4l2-utils "media-test" tests, log at [5]:
[...]
vicodec media controller compliance tests

Thu Jan 16 13:00:56 UTC 2020
v4l2-compliance SHA: 7ead0e1856b89f2e19369af452bb03fd0cd16793, 64 bits
[...]
Summary:

Total for vicodec device /dev/media3: 7, Succeeded: 7, Failed: 0, Warnings: 0
Total for vicodec device /dev/video13: 51, Succeeded: 51, Failed: 0, Warnings: 0
Total for vicodec device /dev/video14: 51, Succeeded: 51, Failed: 0, Warnings: 0
Total for vicodec device /dev/video14: 51, Succeeded: 51, Failed: 0, Warnings: 0
Total for vicodec device /dev/video14: 51, Succeeded: 51, Failed: 0, Warnings: 0
Total for vicodec device /dev/video14: 51, Succeeded: 51, Failed: 0, Warnings: 0
Total for vicodec device /dev/video14: 51, Succeeded: 51, Failed: 0, Warnings: 0
Total for vicodec device /dev/video14: 51, Succeeded: 51, Failed: 0, Warnings: 0

Final Summary: 364, Succeeded: 364, Failed: 0, Warnings: 0
Thu Jan 16 13:02:59 UTC 2020

With this, it also passes vdec v4l2-compliance with H264 streaming on Amlogic G12A
and Amlogic SM1 SoCs successfully.

The compliance log is:
# v4l2-compliance --stream-from-hdr test-25fps.h264.hdr -s
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
	test second /dev/video19 open: OK
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
	Video Capture Multiplanar: Captured 60 buffers    
	test MMAP (select): OK
	Video Capture Multiplanar: Captured 60 buffers    
	test MMAP (epoll): OK
	test USERPTR (select): OK (Not Supported)
	test DMABUF: Cannot test, specify --expbuf-device

Total for meson-vdec device /dev/video0: 49, Succeeded: 49, Failed: 0, Warnings: 0


Changes since v3 at [3]:
- Fixed vicodec compliance
- Fixed vdec compliance with v4l2 state management
- fixed doc errors for v4l2-mem2mem.h

Changes since v2 at [2]:
- Move full draining & stopped state tracking into core v4l2-mem2mem
- Adapt vicodec to use the core v4l2-mem2mem draining & stopped state tracking

Changes since v1 at [1]:
- fixed output_size is never used reported by hans
- rebased on G12A and SM1 patches
- added handling of qbuf after STREAMON and STOP before enought buffer queued

[1] https://lore.kernel.org/linux-media/20191007145909.29979-1-mjourdan@baylibre.com
[2] https://lore.kernel.org/linux-media/20191126093733.32404-1-narmstrong@baylibre.com
[3] https://lore.kernel.org/linux-media/20191209122028.13714-1-narmstrong@baylibre.com
[4] https://people.freedesktop.org/~narmstrong/vicodec-compliance-7ead0e1856b89f2e19369af452bb03fd0cd16793-20200116.log

Maxime Jourdan (2):
  media: meson: vdec: bring up to compliance
  media: meson: vdec: add H.264 decoding support

Neil Armstrong (2):
  media: v4l2-mem2mem: handle draining, stopped and next-buf-is-last
    states
  media: vicodec: use v4l2-mem2mem draining, stopped and
    next-buf-is-last states handling

 drivers/media/platform/vicodec/vicodec-core.c | 162 ++----
 drivers/media/v4l2-core/v4l2-mem2mem.c        | 172 ++++++-
 drivers/staging/media/meson/vdec/Makefile     |   2 +-
 drivers/staging/media/meson/vdec/codec_h264.c | 482 ++++++++++++++++++
 drivers/staging/media/meson/vdec/codec_h264.h |  14 +
 drivers/staging/media/meson/vdec/esparser.c   |  58 +--
 drivers/staging/media/meson/vdec/vdec.c       |  89 ++--
 drivers/staging/media/meson/vdec/vdec.h       |  14 +-
 .../staging/media/meson/vdec/vdec_helpers.c   |  85 ++-
 .../staging/media/meson/vdec/vdec_helpers.h   |   6 +-
 .../staging/media/meson/vdec/vdec_platform.c  |  71 +++
 include/media/v4l2-mem2mem.h                  |  95 ++++
 12 files changed, 1021 insertions(+), 229 deletions(-)
 create mode 100644 drivers/staging/media/meson/vdec/codec_h264.c
 create mode 100644 drivers/staging/media/meson/vdec/codec_h264.h

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
