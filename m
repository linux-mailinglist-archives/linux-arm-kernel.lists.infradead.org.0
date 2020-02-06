Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1A1D15401D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 09:27:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DTKzSVTrQ8TIk5l12C6s3mVHsAGqwxFCTqEjjeDR1Hs=; b=heVDRuVC0ELbj8
	oy82KBMxPFdl1HoSH1wJaUolCO+M3OCABrG0rqqrGD/6I9obb+ltJemitPWqAkX3AeNes/29AvlTg
	1DtxXmpQOVI25Jvf/oTFlHO1hg9R4mPTS7xZp27sjotU8TDHGGS4/KaAx7gebx5RrctT9relfjGDS
	/fEmHO5GhmEa+VCBQRB7lN20fgtRIeMfDPoivbJiZnfR+s+Nfl+a4KhSX8gr6O7CGA6zuBFebYDN5
	t2icQtsI+FSxBba143YiFdI2G06kE84rZZCEnNBwk1G2ndK04fCV9q8M/ihB223HS+zBDAa5aQGqk
	Gu8ts6V1T0y3CpsvmcSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izcVB-0002kl-Jk; Thu, 06 Feb 2020 08:27:09 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izcUv-0002i7-C6
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 08:26:55 +0000
Received: by mail-wm1-x343.google.com with SMTP id g1so5235600wmh.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Feb 2020 00:26:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=uElpQqjJlORb1Z1H6UeJgJtYJWxJRwfTKDbebqv3j90=;
 b=YOEluXsMfq0MXDNHQZxAYXHC8O7RDoCD7+tp5PBvlfyRKiVXksf40fdW7xxEDU7wNY
 3fEI5I5w/MoqTR5h1YjqXhXLtlCNb3Ju9HLKGu+v6IyWXGusBAEEj9cMY+7RyXZuGYC3
 +dH4RYwq1wd4lf6Pku0TBWuUrNrQQZ5tsZPcJlvO+OyKLfaVZpEItA/UjOYRpuffSzfO
 Un0iC+cV7J9YlSa4zaaDjdXW4o+AbqqOu4U5JJBCDJa2twGuMbaD5VXvlnKN+iTrCEym
 Lqa/B2XMwQDbb7/8KIpfDyNDYtMUhA2MrepaZ55z41XfEmDss3/E3w0Q0Ngmd5tMjPyf
 5/lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=uElpQqjJlORb1Z1H6UeJgJtYJWxJRwfTKDbebqv3j90=;
 b=NA//0TKcMLubygWaQcld6eLieviu7V0gcgWqvLqNS/x+lpqN9H3iyBlU9LK97j6MB2
 Xnv0Ktns6XfCKTCGIzdZWXForjV9neFdcoi5/XuSOV7sKxPcW53u+xA8+W+gcpmhITxR
 maCoUZYs2a4t/8P9pXSWHkO5nFZ0AAAY2L40J0uFb5FQept9uYX3xp4MyXp0tweowxCI
 J8gJQXkdcOZZH3yO8xiorIlGmjhoymHNSskm8qCvz4C1JGfNMLMmOvH/AgVB0O4tmorC
 mjcbmWjm0E16IXx/pZZ+LhSC92lXh4AVPxOozY3WOmJCrRcUx/MzuUVt+dh3dmMIbWMg
 ENtg==
X-Gm-Message-State: APjAAAVYGwY8IaQLhxuX5L0aasTAfaNW0R0Q4Ck2QL/9urTnojlKCaxH
 fhvTDM+pkq0PJ1B13SpWXy/UVQ==
X-Google-Smtp-Source: APXvYqxOjcJXIDMW/a4TvPU28SV7UoBNLOuXI8XKG+/DpYQAAKyqUoXZb4vZeIp+w+lguLqEPhXIbQ==
X-Received: by 2002:a1c:4d18:: with SMTP id o24mr3017002wmh.35.1580977611576; 
 Thu, 06 Feb 2020 00:26:51 -0800 (PST)
Received: from bender.baylibre.local ([2a01:e35:2ec0:82b0:7d33:17f7:8097:ecc7])
 by smtp.gmail.com with ESMTPSA id e16sm3148027wrs.73.2020.02.06.00.26.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Feb 2020 00:26:51 -0800 (PST)
From: Neil Armstrong <narmstrong@baylibre.com>
To: mchehab@kernel.org,
	hans.verkuil@cisco.com
Subject: [PATCH v5 0/4] media: meson: vdec: Add compliant H264 support
Date: Thu,  6 Feb 2020 09:26:44 +0100
Message-Id: <20200206082648.25184-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_002653_409829_DD8568B9 
X-CRM114-Status: GOOD (  10.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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
 drivers/staging/media/meson/vdec/vdec.c       |  90 ++--
 drivers/staging/media/meson/vdec/vdec.h       |  14 +-
 .../staging/media/meson/vdec/vdec_helpers.c   |  88 ++--
 .../staging/media/meson/vdec/vdec_helpers.h   |   6 +-
 .../staging/media/meson/vdec/vdec_platform.c  |  71 +++
 include/media/v4l2-mem2mem.h                  |  95 ++++
 12 files changed, 1024 insertions(+), 230 deletions(-)
 create mode 100644 drivers/staging/media/meson/vdec/codec_h264.c
 create mode 100644 drivers/staging/media/meson/vdec/codec_h264.h

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
