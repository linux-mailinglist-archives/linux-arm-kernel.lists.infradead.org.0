Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 264C812276C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 10:13:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gKLuuHqev4z3RbeifzhgX6bqNGzvQdhcaZOnDuAZk/M=; b=bCwzTbR5CIbBMT
	Z6WFFc403xTVvNL1V4d6hlpF2+gkhBrjDfj4vXTVmV8aqm7Mx1/AFmj+o8wCqiR4+htatwZm3RpYj
	YFVsssuVV15Z8/P7YW6lTkPKmxS5KOn7UW1mDICSADYE6rCk9EXHXtGq4mbGQ1rXASjgmgzG80s9G
	N03W2ChtTxwis1E0KdqRgsZpx/4gGtyoi1ePGPBGtZ5F2DdhMfNuH33H5zO1NSIE7RL/GYaFvFam7
	3eIelQuOtoQb23pvxOfA+8EALVQ0YK/rD9u6rnrVwAezfMmP+OE7ovE53D5XftjrCcDoeieNkSymg
	Oo/D/m6UPSeh+yq7n8Sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih8uy-0005Lb-7a; Tue, 17 Dec 2019 09:13:24 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih8ug-0005Fp-3B
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 09:13:09 +0000
Received: by mail-wr1-x442.google.com with SMTP id q6so10387271wro.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Dec 2019 01:13:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:openpgp:autocrypt:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=FONl28UsjupXOBHX4C0O30jR9IOpGtEK41b9+SUn5Rw=;
 b=f70tj0ipNWaue2CDG17HEQfmJc9JqMujRryT/iKn2uzMLk2mIMh4fiOJSvqJs1rAYd
 iYlSxDohL8yjidMIjXEvKU2kvdkfenHjTUtjoVVnrDB2kupT4sajUvC+ue5bsr0OccoF
 nO4+QxD4rw+ykLjNCB8i7XNugaVevh9y8TpXo2tXwxQeo4Dri/AugThXd2HoMAge//VT
 2v6N98c9DH3PAQBodDzO2PdZnqoGe3DekSj0JdPjTdOFU2IiFwi7yfr2QFCkiSp0ZR8X
 Hs+ARJMx5msKzf42HHucCTMRBbK1rDb0ECp7f9y9aWEgPdjkK/7zZkxkcU5kr1BLnQLS
 yXkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=FONl28UsjupXOBHX4C0O30jR9IOpGtEK41b9+SUn5Rw=;
 b=TtFrNEuTV9nczFWinylLJsTN3gPIspoXSTKWa4iObO02WwxbhE5dKjI5pc/6U+qeVW
 pdKgGz0geaq18U6xtgf25KyR3vhQnanUR6vT3AcmdN4Au5f4zz5w8rxNfKwQpXl13iuK
 zQKrr8FG/XzW+lm79Y5uV7Arraq+NN916NfgJJf8kr9pWkFJ+alIFZw1bOevMrCwY5pf
 Xl6X7GHJEqtq6kgdRMv8oE3Ia7d7VCs9y+rYRSE2Zul113SzjC13C/hAVsskPXh5TET9
 oM7xgPBcW6Xb4WA+d1DIWZee4fuYCr7e/eYxQdy2SDItxCAuRNo1Jbb7gbnmKjOYls+w
 NGDw==
X-Gm-Message-State: APjAAAXlLI46W8YWfR5eMi2jPqAmaOhgMK9XZp63KGCOYhpbVWZe08E7
 b6mwSWYJM4arpxW9tbfkRUKtrQ==
X-Google-Smtp-Source: APXvYqxeofM6rdmGwtcUS9MtZUerP6QIl2iYYc60NhBeGO2sUYegvfbkVA6dqI1vPb8rqff6g1yMCw==
X-Received: by 2002:a5d:4a8c:: with SMTP id o12mr35513404wrq.43.1576573982331; 
 Tue, 17 Dec 2019 01:13:02 -0800 (PST)
Received: from [10.2.4.229] (lfbn-nic-1-505-157.w90-116.abo.wanadoo.fr.
 [90.116.92.157])
 by smtp.gmail.com with ESMTPSA id p26sm2221910wmc.24.2019.12.17.01.13.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 17 Dec 2019 01:13:01 -0800 (PST)
Subject: Re: [PATCH v3 0/4] media: meson: vdec: Add compliant H264 support
To: mchehab@kernel.org, hans.verkuil@cisco.com
References: <20191209122028.13714-1-narmstrong@baylibre.com>
From: Neil Armstrong <narmstrong@baylibre.com>
Openpgp: preference=signencrypt
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 ZaTUOEkgIor5losDrePdPgE=
Organization: Baylibre
Message-ID: <42bdd5fe-472f-c4fd-8075-1f8a20a9e3eb@baylibre.com>
Date: Tue, 17 Dec 2019 10:13:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191209122028.13714-1-narmstrong@baylibre.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_011306_224018_48B0C8B3 
X-CRM114-Status: GOOD (  19.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09/12/2019 13:20, Neil Armstrong wrote:
> Hello,
> 
> This patch series aims to bring H.264 support as well as compliance update
> to the amlogic stateful video decoder driver.
> 
> The issue in the V1 patchset at [1] is solved by patch #1 following comments
> and requirements from hans. It moves the full draining & stopped state tracking
> and handling from vicodec to core v4l2-mem2mem.
> 
> With this, it passes v4l2-compliance with streaming on Amlogic G12A and
> Amlogic SM1 SoCs successfully.
> 
> This patchset depends on G12A and SM1 enablement series at [2] and [3].
> 
> The compliance log is:
> # v4l2-compliance --stream-from-hdr test-25fps.h264.hdr -s
> v4l2-compliance SHA: 7ead0e1856b89f2e19369af452bb03fd0cd16793, 64 bits
> 
> Compliance test for vicodec device /dev/video0:
> 
> Driver Info:
> 	Driver name      : vicodec
> 	Card type        : vicodec
> 	Bus info         : platform:vicodec
> 	Driver version   : 5.5.0
> 	Capabilities     : 0x84208000
> 		Video Memory-to-Memory
> 		Streaming
> 		Extended Pix Format
> 		Device Capabilities
> 	Device Caps      : 0x04208000
> 		Video Memory-to-Memory
> 		Streaming
> 		Extended Pix Format
> 	Detected Stateful Encoder
> Media Driver Info:
> 	Driver name      : vicodec
> 	Model            : vicodec
> 	Serial           : 
> 	Bus info         : platform:vicodec
> 	Media version    : 5.5.0
> 	Hardware revision: 0x00000000 (0)
> 	Driver version   : 5.5.0
> Interface Info:
> 	ID               : 0x0300000c
> 	Type             : V4L Video
> Entity Info:
> 	ID               : 0x00000001 (1)
> 	Name             : stateful-encoder-source
> 	Function         : V4L2 I/O
> 	Pad 0x01000002   : 0: Source
> 	  Link 0x02000008: to remote pad 0x1000005 of entity 'stateful-encoder-proc': Data, Enabled, Immutable
> 
> Required ioctls:
> 	test MC information (see 'Media Driver Info' above): OK
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
> 	Standard Controls: 6 Private Controls: 0
> 
> Format ioctls:
> 	test VIDIOC_ENUM_FMT/FRAMESIZES/FRAMEINTERVALS: OK
> 	test VIDIOC_G/S_PARM: OK (Not Supported)
> 	test VIDIOC_G_FBUF: OK (Not Supported)
> 	test VIDIOC_G_FMT: OK
> 	test VIDIOC_TRY_FMT: OK
> 	test VIDIOC_S_FMT: OK
> 	test VIDIOC_G_SLICED_VBI_CAP: OK (Not Supported)
> 	test Cropping: OK
> 	test Composing: OK (Not Supported)
> 	test Scaling: OK (Not Supported)
> 
> Codec ioctls:
> 	test VIDIOC_(TRY_)ENCODER_CMD: OK
> 	test VIDIOC_G_ENC_INDEX: OK (Not Supported)
> 	test VIDIOC_(TRY_)DECODER_CMD: OK (Not Supported)
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
> 	Video Capture: Captured 60 buffers                
> 	test MMAP (select): OK
> 	Video Capture: Captured 60 buffers                
> 	test MMAP (epoll): OK
> 	Video Capture: Captured 60 buffers                
> 	test USERPTR (select): OK
> 	test DMABUF: Cannot test, specify --expbuf-device
> 
> Total for vicodec device /dev/video0: 50, Succeeded: 50, Failed: 0, Warnings: 0
> 
> Changes since v2 at [4]:
> - Move full draining & stopped state tracking into core v4l2-mem2mem
> - Adapt vicodec to use the core v4l2-mem2mem draining & stopped state tracking
> 
> Changes since v1 at [1]:
> - fixed output_size is never used reported by hans
> - rebased on G12A and SM1 patches
> - added handling of qbuf after STREAMON and STOP before enought buffer queued
> 
> [1] https://lore.kernel.org/linux-media/20191007145909.29979-1-mjourdan@baylibre.com
> [2] https://lore.kernel.org/linux-media/20191205153408.26500-1-narmstrong@baylibre.com
> [3] https://lore.kernel.org/linux-media/20191121101429.23831-1-narmstrong@baylibre.com
> [4] https://lore.kernel.org/linux-media/20191126093733.32404-1-narmstrong@baylibre.com
> 
> Maxime Jourdan (2):
>   media: meson: vdec: bring up to compliance
>   media: meson: vdec: add H.264 decoding support
> 
> Neil Armstrong (2):
>   media: v4l2-mem2mem: handle draining, stopped and next-buf-is-last
>     states
>   media: vicodec: use v4l2-mem2mem draining, stopped and
>     next-buf-is-last states handling
> 
>  drivers/media/platform/vicodec/vicodec-core.c | 154 ++----
>  drivers/media/v4l2-core/v4l2-mem2mem.c        | 174 ++++++-
>  drivers/staging/media/meson/vdec/Makefile     |   2 +-
>  drivers/staging/media/meson/vdec/codec_h264.c | 482 ++++++++++++++++++
>  drivers/staging/media/meson/vdec/codec_h264.h |  14 +
>  drivers/staging/media/meson/vdec/esparser.c   |  58 +--
>  drivers/staging/media/meson/vdec/vdec.c       |  92 ++--
>  drivers/staging/media/meson/vdec/vdec.h       |  14 +-
>  .../staging/media/meson/vdec/vdec_helpers.c   |  85 ++-
>  .../staging/media/meson/vdec/vdec_helpers.h   |   6 +-
>  .../staging/media/meson/vdec/vdec_platform.c  |  71 +++
>  include/media/v4l2-mem2mem.h                  |  87 ++++
>  12 files changed, 1009 insertions(+), 230 deletions(-)
>  create mode 100644 drivers/staging/media/meson/vdec/codec_h264.c
>  create mode 100644 drivers/staging/media/meson/vdec/codec_h264.h
> 

And it breaks VP9 compliance, will need to re-spin...

Neil

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
