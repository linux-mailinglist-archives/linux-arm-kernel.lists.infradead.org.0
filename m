Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BA93177BE1
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 17:28:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=61gc2HVGkLT9Zgh+B82jZQpFvGNd+Ezs5CACl96qq+g=; b=ZSFIMMvtDOsCVj
	daH191E9t8TLS9bZ2E51QIU0UZixkLzbfiQIOYix2JNJurhfPEa4d9fEvBB7ZL3o1WP+ZsKeQ0JFR
	/Od9R0ykwLqRx5684+EJgDkwrwIJJpmGkqAzKD1c3r7zOdmMQwB9CehVy3jAkhYnLp4H7uTNvJSEi
	NxIlTLgJCuY1FX4r3hnWnyUXG4CzB8zkCECigTXrZV6c8SFdKBGqpV/Fz5aV7fVsqNyJ8aIcNXoPu
	54X43NdYY5x+1LeVV73MxGLPW3CbKwRTH03X7aWA57EhVeMhkUoCSbwk5tkpaU8tFnmjNpHeI5nMQ
	m5XPrzk0q8CgbmZ7jetw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9AOl-00047j-KM; Tue, 03 Mar 2020 16:27:59 +0000
Received: from lb3-smtp-cloud9.xs4all.net ([194.109.24.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9AOb-00046I-Go; Tue, 03 Mar 2020 16:27:52 +0000
Received: from [IPv6:2001:983:e9a7:1:8c14:57ad:bac0:273b]
 ([IPv6:2001:983:e9a7:1:8c14:57ad:bac0:273b])
 by smtp-cloud9.xs4all.net with ESMTPA
 id 9AOTjVxLD9Im29AOUj0Rov; Tue, 03 Mar 2020 17:27:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s1;
 t=1583252863; bh=nAhBOqoyzWQYWQG4n4GW41XdU2zcOob4IDHwv5hiphE=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=aPsO3Nb3X9N1nle9iqSnfoqJA1dSnYfjTYoY/2tACailVPzerPXtDr8uxHwsjdVs4
 kK1WfHu7qZhMiObuE26XBwXrutS6BQ8/w/bGSomF2j2v+p95PZtBpptRk5kvw+aiu5
 DdEiJqyJEvh/MVupiRKNavHf65lmJ6sFeKlPj5eekw3TG5NsxBFBfcbApsSO5rhwXM
 Pg/a2PTU+nzVyUmLAAvUafhw2hMeBX7EvBfyssUU9HzlHVZhZGzIcWj1GCKVOus9RK
 85f/tOYAXAIuBTMhGfVfvKrLkTr62U/HSjga9wssZMEo74/U/0l6bWVPzB+SvmVOUs
 JZHDnAsar+RSA==
Subject: Re: [PATCH v6 0/5] media: meson: vdec: Add VP9 decoding support
To: Neil Armstrong <narmstrong@baylibre.com>, mchehab@kernel.org,
 hans.verkuil@cisco.com
References: <20200303143732.762-1-narmstrong@baylibre.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <0935582a-ae80-f7b4-0616-a39c923a83f4@xs4all.nl>
Date: Tue, 3 Mar 2020 17:27:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200303143732.762-1-narmstrong@baylibre.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfI9Th6hScGEa34B7TzBU0TgiR6sHbtIhRNAiF/k7CcVyr+KPzf5Ajah5esVwuvE9+ztuscQZhb6cH4rQQ6YDwLyiClUwg8qAAlX79nbCJui1OnlkTMX2
 AZ4XyxoBv71Q+CzHm/g8WMaESXETdKV1L3h64/tMJ6oSxrCgExueFqL1wSA399siSgBrZaKVQVDnuHhahubrHaL0UN+mubUs6yu9KdL0UUvRZ81vuxRFAovj
 qJsdy5Jl7I7bShpbg0rxsKDRFsUe70K2R7QE6g2Ks+fzHXqn+VVB2ike5apOl64DG2UhKzyfjXGvvDuuNbxDPu9/RABLzMlzoaUfZG5y/Nqx9s2OtkF5qkAT
 uv2Rn+3qsZ2KS8ZFKVirLtrfiLB4bpVLG3atXAwl5cL7KE+L7lPqZb0/nu4UmQvE65CCJYi5ysb6kAczGHufYDeffUDrw5qy1LHz/i7tixdTZJzQzrpbE6S7
 nJeB1j7hcJYbMhu4r44BHoapZ0kkO16LpjMechhuH+7kApDdnBKjbqPWvyY=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_082750_794531_7AB48EF9 
X-CRM114-Status: GOOD (  19.84  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.30 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [194.109.24.30 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Neil,

I still get sparse warnings:

drivers/staging/media/meson/vdec/codec_hevc_common.h:15:18: warning: 'vdec_hevc_parser_cmd' defined but not used [-Wunused-const-variable=]
drivers/staging/media/meson/vdec/esparser.c:83: warning: Function parameter or member 'core' not described in 'vp9_update_header'
drivers/staging/media/meson/vdec/esparser.c:83: warning: Function parameter or member 'buf' not described in 'vp9_update_header'
drivers/staging/media/meson/vdec/codec_vp9.c:1333: warning: Function parameter or member 'sess' not described in 'codec_vp9_fetch_rpm'

They look trivial to fix to me.

The v7 series is fine, but I prefer to wait until this v6 is OK as well so I can
combine them in one PR.

Regards,

	Hans

On 03/03/2020 15:37, Neil Armstrong wrote:
> Hello,
> 
> This patchset aims to bring VP9 decoding support to Amlogic GXL, G12A & SM1
> platforms for the amlogic stateful video decoder driver.
> 
> With this, it passes v4l2-compliance with streaming on Amlogic G12A and
> Amlogic SM1 SoCs successfully using the stream at [1] with a fixed
> pyv4l2compliance script for VP9 at [2].
> 
> The original script kept the IVF headers in the stream, confusing the
> decoder. The fixed script only extracts the payload from the IVF container.
> 
> The decoder has been tested using the Google CTS TestVectorsIttiam VP9 yuv420
> samples and the VP9 Decoder Performance streams at [5], decoding all streams from
> Profile 0 and 2 up to Level 4.1, with 10bit downsampling to 8bit.
> 
> This patchset depends on :
> - H.264 and compliance v7 at [4]
> 
> Changes since v5 at [9]:
> - Fixed sparse warnings in codec_hevc_common.h/codec_vp9.c/vdec_hevc.c
> - No smatch warnings issued
> 
> Changes since v4 at [8]:
> - Fixes checkpatch warning on patches 3 & 5
> 
> Changes since v3 at [7]:
> - fixes necessary spare ref buffer handling in parser
> - added a comment to indicate how it's handled
> - fix VP9 on SM1, was working with G12A firmware, but needed some changed with SM1 specific firmware
> - pushed (gxl) and switched to missing (sm1) vp9 firmwares to linux-firmware repo
> 
> Changes since v2 at [6]:
> - Rebased on H.264 and compliance at [4]
> 
> Changes since v1 at [3]:
> - Fixed compliance for delta frame resize, but proper ref keeping is broken
> - Added warns for delta frame resize, to be fixed in a following patchset
> - Added VP9 probabilities parsing and transformation support to decore the VP9 performance streams
> - Fixed refs keeping, avoid deleting necessary refs for next frame
> - Properly used the kernel clamp_val() macros
> - Zeroed the workspace to avoid refs handling glitches
> - Add lock around the flush & stop to avoid race between IRQ and drain/stop
> 
> [1] https://github.com/superna9999/pyv4l2compliance/raw/tests/output/Jellyfish_1080_10s_5MB.vp9.hdr
> [2] https://github.com/superna9999/pyv4l2compliance
> [3] https://lore.kernel.org/linux-media/20191205092454.26075-1-narmstrong@baylibre.com
> [4] https://lore.kernel.org/linux-media/20200303143320.32562-1-narmstrong@baylibre.com
> [5] https://www.webmproject.org/vp9/levels/
> [6] https://lore.kernel.org/linux-media/20191217111939.10387-1-narmstrong@baylibre.com
> [7] https://lore.kernel.org/linux-media/20200116133437.2443-1-narmstrong@baylibre.com
> [8] https://lore.kernel.org/linux-media/20200206084152.7070-1-narmstrong@baylibre.com
> [9] https://lore.kernel.org/linux-media/20200219140958.23542-1-narmstrong@baylibre.com
> 
> The compliance log is:
> # v4l2-compliance --stream-from-hdr Jellyfish_1080_10s_5MB.vp9.hdr -s 200
> v4l2-compliance SHA: 7ead0e1856b89f2e19369af452bb03fd0cd16793, 64 bits
> 
> Compliance test for meson-vdec device /dev/video0:
> 
> Driver Info:
> 	Driver name      : meson-vdec
> 	Card type        : Amlogic Video Decoder
> 	Bus info         : platform:meson-vdec
> 	Driver version   : 5.5.0
> 	Capabilities     : 0x84204000
> 		Video Memory-to-Memory Multiplanar
> 		Streaming
> 		Extended Pix Format
> 		Device Capabilities
> 	Device Caps      : 0x04204000
> 		Video Memory-to-Memory Multiplanar
> 		Streaming
> 		Extended Pix Format
> 	Detected Stateful Decoder
> 
> Required ioctls:
> 	test VIDIOC_QUERYCAP: OK
> 
> Allow for multiple opens:
> 	test second /dev/video0 open: OK
> 	test VIDIOC_QUERYCAP: OK
> 	test VIDIOC_G/S_PRIORITY: OK
> 	test for unlimited opens: OK
> 
> Debug ioctls:
> 	test VIDIOC_DBG_G/S_REGISTER: OK (Not Supported)
> 	test VIDIOC_LOG_STATUS: OK (Not Supported)
> 
> Input ioctls:
> 	test VIDIOC_G/S_TUNER/ENUM_FREQ_BANDS: OK (Not Supported)
> 	test VIDIOC_G/S_FREQUENCY: OK (Not Supported)
> 	test VIDIOC_S_HW_FREQ_SEEK: OK (Not Supported)
> 	test VIDIOC_ENUMAUDIO: OK (Not Supported)
> 	test VIDIOC_G/S/ENUMINPUT: OK (Not Supported)
> 	test VIDIOC_G/S_AUDIO: OK (Not Supported)
> 	Inputs: 0 Audio Inputs: 0 Tuners: 0
> 
> Output ioctls:
> 	test VIDIOC_G/S_MODULATOR: OK (Not Supported)
> 	test VIDIOC_G/S_FREQUENCY: OK (Not Supported)
> 	test VIDIOC_ENUMAUDOUT: OK (Not Supported)
> 	test VIDIOC_G/S/ENUMOUTPUT: OK (Not Supported)
> 	test VIDIOC_G/S_AUDOUT: OK (Not Supported)
> 	Outputs: 0 Audio Outputs: 0 Modulators: 0
> 
> Input/Output configuration ioctls:
> 	test VIDIOC_ENUM/G/S/QUERY_STD: OK (Not Supported)
> 	test VIDIOC_ENUM/G/S/QUERY_DV_TIMINGS: OK (Not Supported)
> 	test VIDIOC_DV_TIMINGS_CAP: OK (Not Supported)
> 	test VIDIOC_G/S_EDID: OK (Not Supported)
> 
> Control ioctls:
> 	test VIDIOC_QUERY_EXT_CTRL/QUERYMENU: OK
> 	test VIDIOC_QUERYCTRL: OK
> 	test VIDIOC_G/S_CTRL: OK
> 	test VIDIOC_G/S/TRY_EXT_CTRLS: OK
> 	test VIDIOC_(UN)SUBSCRIBE_EVENT/DQEVENT: OK
> 	test VIDIOC_G/S_JPEGCOMP: OK (Not Supported)
> 	Standard Controls: 2 Private Controls: 0
> 
> Format ioctls:
> 	test VIDIOC_ENUM_FMT/FRAMESIZES/FRAMEINTERVALS: OK
> 	test VIDIOC_G/S_PARM: OK (Not Supported)
> 	test VIDIOC_G_FBUF: OK (Not Supported)
> 	test VIDIOC_G_FMT: OK
> 	test VIDIOC_TRY_FMT: OK
> 	test VIDIOC_S_FMT: OK
> 	test VIDIOC_G_SLICED_VBI_CAP: OK (Not Supported)
> 	test Cropping: OK (Not Supported)
> 	test Composing: OK (Not Supported)
> 	test Scaling: OK (Not Supported)
> 
> Codec ioctls:
> 	test VIDIOC_(TRY_)ENCODER_CMD: OK (Not Supported)
> 	test VIDIOC_G_ENC_INDEX: OK (Not Supported)
> 	test VIDIOC_(TRY_)DECODER_CMD: OK
> 
> Buffer ioctls:
> 	test VIDIOC_REQBUFS/CREATE_BUFS/QUERYBUF: OK
> 	test VIDIOC_EXPBUF: OK
> 	test Requests: OK (Not Supported)
> 
> Test input 0:
> 
> Streaming ioctls:
> 	test read/write: OK (Not Supported)
> 	test blocking wait: OK
> 	Video Capture Multiplanar: Captured 198 buffers   
> 	test MMAP (select): OK
> 	Video Capture Multiplanar: Captured 198 buffers   
> 	test MMAP (epoll): OK
> 	test USERPTR (select): OK (Not Supported)
> 	test DMABUF: Cannot test, specify --expbuf-device
> 
> Total for meson-vdec device /dev/video0: 49, Succeeded: 49, Failed: 0, Warnings: 0
> 
> Maxime Jourdan (4):
>   media: meson: vdec: add helpers for lossless framebuffer compression
>     buffers
>   media: meson: vdec: add common HEVC decoder support
>   media: meson: vdec: add VP9 input support
>   media: meson: vdec: add VP9 decoder support
> 
> Neil Armstrong (1):
>   media: meson: vdec: align stride on 32 bytes
> 
>  drivers/staging/media/meson/vdec/Makefile     |    4 +-
>  .../media/meson/vdec/codec_hevc_common.c      |  284 +++
>  .../media/meson/vdec/codec_hevc_common.h      |   80 +
>  drivers/staging/media/meson/vdec/codec_vp9.c  | 2141 +++++++++++++++++
>  drivers/staging/media/meson/vdec/codec_vp9.h  |   13 +
>  drivers/staging/media/meson/vdec/esparser.c   |  150 +-
>  drivers/staging/media/meson/vdec/hevc_regs.h  |  218 ++
>  drivers/staging/media/meson/vdec/vdec.c       |   15 +-
>  .../staging/media/meson/vdec/vdec_helpers.c   |   35 +-
>  .../staging/media/meson/vdec/vdec_helpers.h   |    4 +
>  drivers/staging/media/meson/vdec/vdec_hevc.c  |  231 ++
>  drivers/staging/media/meson/vdec/vdec_hevc.h  |   13 +
>  .../staging/media/meson/vdec/vdec_platform.c  |   38 +
>  13 files changed, 3213 insertions(+), 13 deletions(-)
>  create mode 100644 drivers/staging/media/meson/vdec/codec_hevc_common.c
>  create mode 100644 drivers/staging/media/meson/vdec/codec_hevc_common.h
>  create mode 100644 drivers/staging/media/meson/vdec/codec_vp9.c
>  create mode 100644 drivers/staging/media/meson/vdec/codec_vp9.h
>  create mode 100644 drivers/staging/media/meson/vdec/hevc_regs.h
>  create mode 100644 drivers/staging/media/meson/vdec/vdec_hevc.c
>  create mode 100644 drivers/staging/media/meson/vdec/vdec_hevc.h
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
