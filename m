Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB80937578
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 15:42:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=L8ArcSuXFGm0a9W/HlmjexkZdDPFnNqyN8gmXG/cYm0=; b=FSSI/jPJRaC6nH
	PbAAxIo7w9bOp7hXuitYr8Y5ZHTS5sxIZ8qcx4Z6l8zw7b+luZZ5P+nWxqd6aMZiUrEsrx8j3hrnT
	f9aknheUbpn/PFV9Gs23shxdBA6y/dXsNFg3ut6r+lPti+hGKafBalO16tkSb7B3ZPEfQAFpT3LCU
	s8VIK1/SsBaIARCMBA2klNtzRrgYuOmaH4OT+hVTL41eYcCLUO23EbJRC/HWuk0Td01m0xZlnCziJ
	WwG4Emn7CQ4wfFgq+5FLqR+CW8VVjUrMWmL/rkXKHQGBh71Lr3kR9VG1waMS8GVjurLEJqR8jjXNX
	zs/yum2m3ffQWppn3ghA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYsea-0004Ve-CA; Thu, 06 Jun 2019 13:42:04 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYsdz-0003ud-PO
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 13:41:30 +0000
Received: by mail-wm1-x342.google.com with SMTP id v19so2473890wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Jun 2019 06:41:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EHdmxO6q0ewI1dcJL9Wa0/xthCFUHAPir/Uz838ufd0=;
 b=tpEttG/bs7A/o66maSZJHTOqEZiJRMCUWIcEJR7ldTlhEOSRzRwClxYEUB6MreY9kI
 9AP9xzobP/sa6VYDoof9G8U3AIYDYNp8dXMZOeVmgGq1pwjJ5wproFbIadq0+rxSIC6i
 DNAalA2wsyvErPKNhfJy4VR6bFfJK8rAorwWq0hmaj1KpBMGajD2RWUJtQsM6I5kF/id
 zDFcL7BIdbfLM1vdZtCT1DADBeB+UHRF06QJFKpfDOGRsBfPqfU7gFJ+YbFlZTZEFiZe
 P4Y6Dd8G++NFy6E4MLDDY6mveoJze7BVNm0JSuZtnauAI43Lr2PgEy2driJr5Fm+l4ys
 Exdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EHdmxO6q0ewI1dcJL9Wa0/xthCFUHAPir/Uz838ufd0=;
 b=gH4nb5wx3XRdaDlTgBNg2CnzpLbnnFMQyzfsS6qQ1lHZSg1tWyrZ7HI2OxSg3z/wdZ
 KCk8kodUm8t7fi/GQMFkNRASVJBfsPLkfkzI6agc1/tlScCnMEQ+iQJCRumeHTyAhEx3
 Njxwr7/JWluR46YQAcGuQ0se/8AoBkYPDquq0fO/a5oWLitgWUPANH2zOxZqikaBQLkm
 j0TaQ2VNBg9YxCIIfshy9blk1cnQpzjqLuD0fVH5n98MZ3/Q9ohxxWCxTpbF4rYdpb2U
 +l3AK8f4QwsrvSmSUSYV5hmcQN5uj2f8ABh1v3vv903w9IdsJoWWlTgfYJN2Xg5G4AIX
 qMpA==
X-Gm-Message-State: APjAAAUK95lAiw6Sp5uenfaBS+4i+fyjr7QwHiTUWyMXpkAB74DGH+ZM
 WahcRauYi264IgBs+Bq+slY6nw==
X-Google-Smtp-Source: APXvYqysQvyy1Q6BfdaONgzskqyIc9z+0Jk9/y1tJ6ZJ4NOty8IPA41U7ETQqB7D8jTQkJNrNZtiWQ==
X-Received: by 2002:a1c:b707:: with SMTP id h7mr37231wmf.45.1559828484867;
 Thu, 06 Jun 2019 06:41:24 -0700 (PDT)
Received: from mjourdan-pc.numericable.fr (abo-99-183-68.mtp.modulonet.fr.
 [85.68.183.99])
 by smtp.gmail.com with ESMTPSA id c11sm1847367wrs.97.2019.06.06.06.41.23
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 06 Jun 2019 06:41:24 -0700 (PDT)
From: Maxime Jourdan <mjourdan@baylibre.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hans.verkuil@cisco.com>
Subject: [PATCH v9 0/3] Add Amlogic video decoder driver
Date: Thu,  6 Jun 2019 15:41:19 +0200
Message-Id: <20190606134122.16854-1-mjourdan@baylibre.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_064127_947087_45F68F92 
X-CRM114-Status: GOOD (  21.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi everyone,

[V7] The Driver was moved to staging until it can pass future
specification & compliance tools.

[V6] Good news, the firmware situation is resolved. We have received a
redistributable license from Amlogic and the firmwares have been merged
in linux-firmware[5].

[V5] It's been a while since the last patch series regarding the Amlogic
video decoder. Unfortunately, the firmware licensing situation is still
on hold as we await communication from Amlogic. As such, we do not have
the firmwares in linux-firmware yet.
I decided to push the V5 anyway, as changes were starting to pile up.

This patch series adds support for the Amlogic video decoder,
as well as the corresponding dt bindings for GXBB/GXL/GXM chips.

It features decoding for the following formats:
- MPEG 1
- MPEG 2

The following formats will be added in future patches:
- MJPEG
- MPEG 4 (incl. Xvid, H.263)
- H.264
- HEVC (incl. 10-bit)
- VP9 (incl. 10-bit)

The code was made in such a way to allow easy inclusion of those formats
in the future.

The decoder is single instance.

Files:
 - vdec.c handles the V4L2 M2M logic
 - esparser.c manages the hardware bitstream parser
 - vdec_helpers.c provides helpers to DONE the dst buffers as well as
 various common code used by the codecs
 - vdec_1.c manages the VDEC_1 block of the vdec IP
 - vdec_ctrls.c handles the V4L2 controls exposed by the driver
 - codec_mpeg12.c enables decoding for MPEG 1/2.
 - vdec_platform.c links codec units with vdec units
 (e.g vdec_1 with codec_mpeg12) and lists all the available
 src/dst formats and requirements (max width/height, etc.),
 per compatible chip.

It was tested primarily with ffmpeg's v4l2-m2m implementation. For instance:
$ ffmpeg -c:v mpeg2_v4l2m2m -i sample_mpeg2.mkv -f rawvideo out.nv12

The v4l2-compliance results are available below the patch diff.
Tests start failing when v4l2-compliance tries to dequeue the
V4L2_EVENT_SOURCE_CHANGE event, which is not supported for MPEG2.

Changes since v8 [8]:
 - Fixed checkpatch & sparse issues

Changes since v7 [7]:
 - Removed the patch with V4L2_FMT_FLAG_FIXED_RESOLUTION from the serie.
 It will be dealt in another manner in the near future.
 - use the new v4l2_m2m_ioctl_try_decoder_cmd helper
 - Rebased against media/master

Changes since v6 [6]:
 - Rebased against v5.2-rc2 (fixed build issue with missing interrupt include)
 - Moved to staging - added TODO file
 - Don't declare V4L2_CID_MIN_BUFFERS_FOR_CAPTURE as volatile. Use
 v4l2_ctrl_s_ctrl() instead.
 - Fix compliance issues with V4L2_DEC_CMD_STOP, V4L2_DEC_CMD_START and
 vbuf->field not prepared to V4L2_FIELD_NONE.
 - Fixed coccinelle issue (unneeded semicolon)
 - Fixed smatch issue (PTR_ERR() could be called with 0)

Changes since v5 [4]:
 - Rebased against media_tree (fixes conflict with platform/meson/Makefile
 following the meson CEC driver updates)

Changes since v4 [3]:
 - Updated for 5.1: 
  - cropcap -> g_pixelaspect
  - dma_zalloc_coherent -> dma_alloc_coherent
 - enum_framesizes: changed from STEPWISE to CONTINUOUS, as suggested by Hans
 - Reintroduced support for CREATE_BUFS. It was a driver bug where I wasn't
 accounting for the amount of buffers created this way (only buffers created
 via REQBUFS were).
 - Added the patch introducing V4L2_FMT_FLAG_FIXED_RESOLUTION to the V4L2
 framework, needed as MPEG2 on Amlogic hardware only supports a fixed
 resolution during a decode session.
 - Added support for events and V4L2_EVENT_SOURCE_CHANGE, as it is now checked
 by v4l2-compliance for stateful decoders. I was planning on introducing this
 for codecs that actually use it (H264, HEVC..), but it doesn't hurt to have
 this in the initial commit.
 - Added support for controls, mainly V4L2_CID_MIN_BUFFERS_FOR_CAPTURE

Changes since v3 [2]:
 - strlcpy -> strscpy
 - queue_setup: account for existing buffers when clamping *num_buffers
 - removed support for CREATE_BUFS. This caused issues with gstreamer and allowed
 userspace to alloc more buffers than the decoder can handle in its fixed list.
 So for now we just disable it and only allow allocating via REQBUFS.
 - rebased & tested with 4.20-rc1

Changes since v2 [1]:
 - Override capture queue's min_buffers_needed in queue_setup
 The HW needs the full buffer list to be available when doing start_streaming
 - Fix the draining sequence
 The blob that we write to the ESPARSER to trigger drain is codec-dependent.
 The one that was sent in v1 is specific to H.264 and isn't guaranteed to
 trigger drain for MPEG2. For the latter, a simple MPEG2 EOS code
 should be sent to the ESPARSER instead.
 - Slight enhancements to the way we do vififo offset<=>timestamp matching

Changes since v1 [0]:
 - use named interrupts in the bindings
 - rewrite description in the bindings doc
 - don't include the dts changes in the patch series
 - fill the vb2 queues locks
 - fill the video_device lock
 - use helpers for wait_prepare and wait_finish vb2_ops
 - remove unnecessary usleep in between esparser writes.
 Extensive testing of every codec on GXBB/GXL didn't reveal
 any fails without it, so just remove it.
 - compile v4l2_compliance inside the git repo
 - Check for plane number/plane size to pass the latest v4l2-compliance test
 - Moved the single instance check (returning -EBUSY) to start/stop streaming
 The check was previously in queue_setup but there was no great location to
 clear it except for .close().
 - Slight rework of the way CAPTURE frames are timestamped for better accuracy
 - Implement PAR reporting via VIDIOC_CROPCAP

[8] https://patchwork.kernel.org/cover/10977259/
[7] https://patchwork.kernel.org/cover/10969815/
[6] https://patchwork.kernel.org/cover/10943029/
[5] https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/commit/?id=e04cc56d0e6b6ff05924ff88fdba1a438ee7d3c8
[4] https://patchwork.kernel.org/cover/10879959/
[3] https://patchwork.kernel.org/cover/10669875/
[2] https://lore.kernel.org/patchwork/cover/993093/
[1] https://patchwork.kernel.org/cover/10595803/
[0] https://patchwork.kernel.org/cover/10583391/

Maxime Jourdan (3):
  dt-bindings: media: add Amlogic Video Decoder Bindings
  media: meson: add v4l2 m2m video decoder driver
  MAINTAINERS: Add meson video decoder

 .../bindings/media/amlogic,vdec.txt           |   71 ++
 MAINTAINERS                                   |    8 +
 drivers/staging/media/Kconfig                 |    2 +
 drivers/staging/media/Makefile                |    1 +
 drivers/staging/media/meson/vdec/Kconfig      |   11 +
 drivers/staging/media/meson/vdec/Makefile     |    8 +
 drivers/staging/media/meson/vdec/TODO         |    8 +
 .../staging/media/meson/vdec/codec_mpeg12.c   |  210 ++++
 .../staging/media/meson/vdec/codec_mpeg12.h   |   14 +
 drivers/staging/media/meson/vdec/dos_regs.h   |   98 ++
 drivers/staging/media/meson/vdec/esparser.c   |  324 +++++
 drivers/staging/media/meson/vdec/esparser.h   |   32 +
 drivers/staging/media/meson/vdec/vdec.c       | 1076 +++++++++++++++++
 drivers/staging/media/meson/vdec/vdec.h       |  267 ++++
 drivers/staging/media/meson/vdec/vdec_1.c     |  230 ++++
 drivers/staging/media/meson/vdec/vdec_1.h     |   14 +
 drivers/staging/media/meson/vdec/vdec_ctrls.c |   31 +
 drivers/staging/media/meson/vdec/vdec_ctrls.h |   14 +
 .../staging/media/meson/vdec/vdec_helpers.c   |  449 +++++++
 .../staging/media/meson/vdec/vdec_helpers.h   |   83 ++
 .../staging/media/meson/vdec/vdec_platform.c  |  101 ++
 .../staging/media/meson/vdec/vdec_platform.h  |   30 +
 22 files changed, 3082 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/amlogic,vdec.txt
 create mode 100644 drivers/staging/media/meson/vdec/Kconfig
 create mode 100644 drivers/staging/media/meson/vdec/Makefile
 create mode 100644 drivers/staging/media/meson/vdec/TODO
 create mode 100644 drivers/staging/media/meson/vdec/codec_mpeg12.c
 create mode 100644 drivers/staging/media/meson/vdec/codec_mpeg12.h
 create mode 100644 drivers/staging/media/meson/vdec/dos_regs.h
 create mode 100644 drivers/staging/media/meson/vdec/esparser.c
 create mode 100644 drivers/staging/media/meson/vdec/esparser.h
 create mode 100644 drivers/staging/media/meson/vdec/vdec.c
 create mode 100644 drivers/staging/media/meson/vdec/vdec.h
 create mode 100644 drivers/staging/media/meson/vdec/vdec_1.c
 create mode 100644 drivers/staging/media/meson/vdec/vdec_1.h
 create mode 100644 drivers/staging/media/meson/vdec/vdec_ctrls.c
 create mode 100644 drivers/staging/media/meson/vdec/vdec_ctrls.h
 create mode 100644 drivers/staging/media/meson/vdec/vdec_helpers.c
 create mode 100644 drivers/staging/media/meson/vdec/vdec_helpers.h
 create mode 100644 drivers/staging/media/meson/vdec/vdec_platform.c
 create mode 100644 drivers/staging/media/meson/vdec/vdec_platform.h


root@hardkernel-odroidc2:~# v4l2-compliance -s --stream-from=hst_2.mpg 
v4l2-compliance SHA: a162244d47d4bb01d0692da879dce5a070f118e7, 64 bits

Compliance test for meson-vdec device /dev/video0:

Driver Info:
        Driver name      : meson-vdec
        Card type        : Amlogic Video Decoder
        Bus info         : platform:meson-vdec
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
        test Scaling: OK

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
                fail: v4l2-test-buffers.cpp(1324): node->dqevent(ev)
        test MMAP (select): FAIL
                fail: v4l2-test-buffers.cpp(1324): node->dqevent(ev)
        test MMAP (epoll): FAIL
        test USERPTR (select): OK (Not Supported)
        test DMABUF: Cannot test, specify --expbuf-device

Total for meson-vdec device /dev/video0: 49, Succeeded: 47, Failed: 2, Warnings: 0

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
