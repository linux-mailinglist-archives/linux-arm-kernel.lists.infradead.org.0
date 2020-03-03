Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C21B1778FD
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 15:33:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Jdlm5A8TJ1eErT7vtq0vN4+UvkLNFgCekG6jCF26IDM=; b=dQCRz/oPAfMH65
	ZPsVqck4qzN84tsKzxrQVKzA86bSY4S3ctvGIwUycE6XaSPf1WovWf3zhqVFwtrONNnw1TlMZKlym
	70r9JkEsPdDNh7ycDhngcDQIeVbSLA25EA4ITk7THauxWZ1XAdTLjbjlpFFpaC2PfGGXp6J4T4cf9
	LYiCoPN9bd8ftDq6RNDB66rgX7PcAkKELMKBRg9YHQ3dt+ZW/xlz82m+HFAvPK8r210ROq0mLYYJY
	D1F9GQp0syk3c1QyswSIn+oNjKB6Tbv6oHdsRFF82pJi+ygUFbKtEiUP2ADe/+9EvkseInD50ciTb
	MaJtyk9C92HnO6p7GCTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j98cC-0002ut-OV; Tue, 03 Mar 2020 14:33:44 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j98bs-0002rS-V9
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 14:33:27 +0000
Received: by mail-wm1-x343.google.com with SMTP id g134so2115248wme.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Mar 2020 06:33:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1Txm+jnnHeSyIEheY5PKFsj5b6Ibs3tfTQZUICNb0WY=;
 b=yHAKC8n1kD5WNtu2Pg+piF7kR9TmCIs7T/4W2Fd00VPZ/nDU605ZZhvmGVJQQxfu5C
 gzsyPp3JWUhFCgXQM0dLMA6Ec3Y7gmmJhiEq7uxJdH9vX2xDYuJcFvPig480ZXXXm7g8
 oIoRncfrUMV0FnyAJ96kHjiDs9GWhpfjO+2eLQeAmNEGomBnzhMFgBaDEct0V6nMr5Jo
 MrM8B3jkeXR1OmpXCuueVlYivegin0aPfWnEEa6KZQRoU5x2zeDFLQtSHAGT9fN9Iow2
 tZXbLgGGZeg3REiB9oIfNcoScbB+m59UZ05na/U53dV4g/LJaEgMpVJ/AVSr6rEWyQg7
 StWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1Txm+jnnHeSyIEheY5PKFsj5b6Ibs3tfTQZUICNb0WY=;
 b=KKPcB4LKx01+5TD5C0ySeMCPgk1qlR8jLu1ZxwQhuWYYux7XOoVGnkwY52RxnwO20A
 ER3Max1JcUPMIMf3+bFP9nBkJrp2QhM7hakRDgOJFOxzZ5SrSC6/d4jl8JWqcxae+Det
 9J3LjuQLa5RIktzUaGkeIo9smh6HiLZasofZwn+GsyXDiLUXt9zG1Bi+N+PpOVisskLn
 5MvkCfjhKqki1Sexwf2amniA2r73keK8Cxkf/68fEWNfxwnMKgn20YuLgmfl4sggpjHA
 N20R/+psOBUdBYlAH17lexmCiLMwm4MA8ptAXiVh4MY5IJr/25P/bhc5TvPcMDTQKXl7
 b8wg==
X-Gm-Message-State: ANhLgQ0OqvYbJkehvAoguTpMFDl2oBMqKHuGfrrC5/xE6lHgFFgL/XF3
 4TyMsA/Tyaj9c8etB6tcl3syeg==
X-Google-Smtp-Source: ADFU+vtp5TFkfO0POdnv6m3bxFIjXMXEA3o5q3QBcx66PiVhu25W3yVbgi8N971YkSdaK26sYlHkOw==
X-Received: by 2002:a05:600c:230d:: with SMTP id
 13mr4552664wmo.11.1583246003176; 
 Tue, 03 Mar 2020 06:33:23 -0800 (PST)
Received: from bender.baylibre.local
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id g7sm30120065wrm.72.2020.03.03.06.33.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Mar 2020 06:33:22 -0800 (PST)
From: Neil Armstrong <narmstrong@baylibre.com>
To: mchehab@kernel.org,
	hans.verkuil@cisco.com
Subject: [PATCH v7 0/4] media: meson: vdec: Add compliant H264 support
Date: Tue,  3 Mar 2020 15:33:16 +0100
Message-Id: <20200303143320.32562-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_063325_004495_E965420B 
X-CRM114-Status: GOOD (  10.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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

Changes since v6 at [7]:
- Fixed sparse warning in codec_h264.c
- No smatch issues reported

Changes since v5 at [6]:
- Changed name of v4l2_m2m_start/stop_streaming to v4l2_m2m_update_start/stop_streaming_state
- Changed name of v4l2_mark_last_buf to v4l2_update_last_buf_state
- Added comment in code to describe usage and use-case
- Added comment in header for helpers
- Updated vicodec with v4l2_m2m_start/stop_streaming renaming in patch 2
- Fixes htmldoc warnings in patch 4

Changes since v4 at [5]:
- Squashed "don't resume instantly if not streaming capture" and "fix OUTPUT buffer size configuration" fixes from maxime

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
[5] https://lore.kernel.org/linux-media/20200116133025.1903-1-narmstrong@baylibre.com
[6] https://lore.kernel.org/linux-media/20200206082648.25184-1-narmstrong@baylibre.com
[7] https://lore.kernel.org/linux-media/20200219140156.22893-1-narmstrong@baylibre.com

Maxime Jourdan (2):
  media: meson: vdec: bring up to compliance
  media: meson: vdec: add H.264 decoding support

Neil Armstrong (2):
  media: v4l2-mem2mem: handle draining, stopped and next-buf-is-last
    states
  media: vicodec: use v4l2-mem2mem draining, stopped and
    next-buf-is-last states handling

 drivers/media/platform/vicodec/vicodec-core.c | 162 ++----
 drivers/media/v4l2-core/v4l2-mem2mem.c        | 221 +++++++-
 drivers/staging/media/meson/vdec/Makefile     |   2 +-
 drivers/staging/media/meson/vdec/codec_h264.c | 485 ++++++++++++++++++
 drivers/staging/media/meson/vdec/codec_h264.h |  14 +
 drivers/staging/media/meson/vdec/esparser.c   |  58 +--
 drivers/staging/media/meson/vdec/vdec.c       |  90 ++--
 drivers/staging/media/meson/vdec/vdec.h       |  14 +-
 .../staging/media/meson/vdec/vdec_helpers.c   |  88 ++--
 .../staging/media/meson/vdec/vdec_helpers.h   |   6 +-
 .../staging/media/meson/vdec/vdec_platform.c  |  71 +++
 include/media/v4l2-mem2mem.h                  | 133 +++++
 12 files changed, 1114 insertions(+), 230 deletions(-)
 create mode 100644 drivers/staging/media/meson/vdec/codec_h264.c
 create mode 100644 drivers/staging/media/meson/vdec/codec_h264.h

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
