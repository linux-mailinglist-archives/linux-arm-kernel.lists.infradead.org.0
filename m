Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7972F159981
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 20:13:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wSchv2lAxGoEcIc7BS9Bzj+JR4NgNLBoVZfLPETDoDY=; b=JbikwWBxYkbjGF
	YWlGaKYmhGFBnfcWtI+GbXb+tjeiZL6NS55FYuveKBuMz2Opx3YioD+JO30LGg/N/jWc95SW/r7+k
	yy/M+tB2TVOYggwZrnanR6IxEC/L0hErjF2t4Msi0Tb6zWpCNo4y9QxILpPrIHdhx7R91jvkaDaua
	JYYHo3jljZ8Pg+4HUBbhH+BQkx+IblERIgXvgVgogEHDNAkqQnBfyr7RPWYV8oPVuxTOF8UqN01ew
	6p4mV3oChncdPzace9eo8JA5xg9bet+VR9m7/BU8NqLQaGC1jsxAFEPAFI5EsptGaTqH84xoSlcJr
	f+6U8gFjwiPIAx10xgyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1ay6-0001O0-B4; Tue, 11 Feb 2020 19:13:10 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1axx-0001NJ-Dw
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 19:13:03 +0000
Received: by mail-wm1-x344.google.com with SMTP id q9so5066484wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Feb 2020 11:13:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yV/W7OjVzhnhoaIiEdL5uYFmycb/yF6SI7jbHOa+uWc=;
 b=XxVpd6ihEfbwxBp+qxEzeKf0oZ/85cRaNzdsbUqXfckCxjQG62IQBhPcPdizMenASB
 qsuC9ar8wQz/krCqUR0J+X58c079DdyqoqkUuL/Y/VdBAXETCYrbBPUbswx17VOAjVfG
 cFgYivKeJbcgOkoZFYKb7MxLWd6Pt6dlVRH+T/OXC/7DPNYK998M0fKHB7FFc2X3huGy
 EnYAuKPEFUH4HrXnbjyn8m1qB6f/zkGU9/NpXx1Bz17ehNaKkn5ruhbg1oSVA9GVKLHA
 fv83L/+adklWgobU+QCC91VEQ7A8wq8kjD+ikwZsAUzydC0CaB+NB6umg/94+bCcMQtp
 CwDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yV/W7OjVzhnhoaIiEdL5uYFmycb/yF6SI7jbHOa+uWc=;
 b=a6o6zSoTZ7mSkS3LMwgIoBOeqRGiM5hWiM6gEVe5vXHj/oGPb4HeR+iul8Z+udu1s8
 f5g1a/Is7N8/72MBjf7ZVOQUKnzpGLfn3cYg5jI6AnJm2DVmkf+e1oTgX3MGdKgfCh3W
 EKpsFp7qfbSz5+vYOkXRDwW7R4gFxb26ybdHTOqDVfD9+XBHHrA/8M6Y7UZQ9+k3aVtg
 L6TLquNK0qxf5PcVB+EVEM5eCYpWMfJ97NpSEskKfTk8L8I98/v1hZsqzfzR+06SptqH
 GKc+kGSLbuhjZosFCEq2JSmH8v/6a7SkvhqPY1m7CkPGLiuHjJ0UEKjM37vAk/HB3ub2
 5biA==
X-Gm-Message-State: APjAAAVVRTlZ4TxqLcGQ3zA0CpSzhpsAaZRkhR8pWNHMu2yIkp/2umjI
 FKJhI2vE+TqThWkn8JiHksOHWyc7hMr1Dw==
X-Google-Smtp-Source: APXvYqzHGEsEDjUipivXQXZOOpPKSbnu17FHNNxOAmtRHg7brAQ9dvSPOc6wceHdQw0a9+uOrmOSRw==
X-Received: by 2002:a05:600c:2c06:: with SMTP id
 q6mr7570602wmg.154.1581448379274; 
 Tue, 11 Feb 2020 11:12:59 -0800 (PST)
Received: from jernej-laptop.localnet (cpe-194-152-20-232.static.triera.net.
 [194.152.20.232])
 by smtp.gmail.com with ESMTPSA id w1sm7076839wro.72.2020.02.11.11.12.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Feb 2020 11:12:57 -0800 (PST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: mripard@kernel.org, wens@csie.org, linux-sunxi@googlegroups.com
Subject: Re: [linux-sunxi] [PATCH 0/8] media: sunxi: Add DE2 rotate driver
Date: Tue, 11 Feb 2020 20:12:56 +0100
Message-ID: <4206703.LvFx2qVVIh@jernej-laptop>
In-Reply-To: <20200124232014.574989-1-jernej.skrabec@siol.net>
References: <20200124232014.574989-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_111301_473319_AC65BEBB 
X-CRM114-Status: GOOD (  14.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jernej.skrabec[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, jernej.skrabec@siol.net,
 sboyd@kernel.org, mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com, robh+dt@kernel.org, hverkuil-cisco@xs4all.nl,
 mchehab@kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dne sobota, 25. januar 2020 ob 00:20:06 CET je Jernej Skrabec napisal(a):
> Some of Allwinner SoCs like A83T and A64 SoCs contain DE2 rotate core
> which can flip image horizontal and vertical and rotate it in 90 deg.
> steps. It support a lot of output formats, but a bit less capture
> formats. All YUV input formats get converted to yuv420p, while RGB
> formats are preserved.
> 
> Patches 1-2 fix few issues with DE2 clocks.
> 
> Patches 3-4 fix register range of DE2 clocks (it would overlap with
> rotate driver)
> 
> Patches 5-8 provide binding, implement driver and add nodes.
> 
> v4l2-compliance SHA: ec55a961487b449bedbe07650674b4965814cf07, 32 bits,
> 32-bit time_t
> 
> Compliance test for sun8i-rotate device /dev/video0:
> 
> Driver Info:
>         Driver name      : sun8i-rotate
>         Card type        : sun8i-rotate
>         Bus info         : platform:sun8i-rotate
>         Driver version   : 5.5.0
>         Capabilities     : 0x84208000
>                 Video Memory-to-Memory
>                 Streaming
>                 Extended Pix Format
>                 Device Capabilities
>         Device Caps      : 0x04208000
>                 Video Memory-to-Memory
>                 Streaming
>                 Extended Pix Format
> 
> Required ioctls:
>         test VIDIOC_QUERYCAP: OK
> 
> Allow for multiple opens:
>         test second /dev/video0 open: OK
>         test VIDIOC_QUERYCAP: OK
>         test VIDIOC_G/S_PRIORITY: OK
>         test for unlimited opens: OK
> 
>         test invalid ioctls: OK
> Debug ioctls:
>         test VIDIOC_DBG_G/S_REGISTER: OK (Not Supported)
>         test VIDIOC_LOG_STATUS: OK
> 
> Input ioctls:
>         test VIDIOC_G/S_TUNER/ENUM_FREQ_BANDS: OK (Not Supported)
>         test VIDIOC_G/S_FREQUENCY: OK (Not Supported)
>         test VIDIOC_S_HW_FREQ_SEEK: OK (Not Supported)
>         test VIDIOC_ENUMAUDIO: OK (Not Supported)
>         test VIDIOC_G/S/ENUMINPUT: OK (Not Supported)
>         test VIDIOC_G/S_AUDIO: OK (Not Supported)
>         Inputs: 0 Audio Inputs: 0 Tuners: 0
> 
> Output ioctls:
>         test VIDIOC_G/S_MODULATOR: OK (Not Supported)
>         test VIDIOC_G/S_FREQUENCY: OK (Not Supported)
>         test VIDIOC_ENUMAUDOUT: OK (Not Supported)
>         test VIDIOC_G/S/ENUMOUTPUT: OK (Not Supported)
>         test VIDIOC_G/S_AUDOUT: OK (Not Supported)
>         Outputs: 0 Audio Outputs: 0 Modulators: 0
> 
> Input/Output configuration ioctls:
>         test VIDIOC_ENUM/G/S/QUERY_STD: OK (Not Supported)
>         test VIDIOC_ENUM/G/S/QUERY_DV_TIMINGS: OK (Not Supported)
>         test VIDIOC_DV_TIMINGS_CAP: OK (Not Supported)
>         test VIDIOC_G/S_EDID: OK (Not Supported)
> 
> Control ioctls:
>         test VIDIOC_QUERY_EXT_CTRL/QUERYMENU: OK
>         test VIDIOC_QUERYCTRL: OK
>         test VIDIOC_G/S_CTRL: OK
>         test VIDIOC_G/S/TRY_EXT_CTRLS: OK
>         test VIDIOC_(UN)SUBSCRIBE_EVENT/DQEVENT: OK
>         test VIDIOC_G/S_JPEGCOMP: OK (Not Supported)
>         Standard Controls: 4 Private Controls: 0
> 
> Format ioctls:
>         test VIDIOC_ENUM_FMT/FRAMESIZES/FRAMEINTERVALS: OK
>         test VIDIOC_G/S_PARM: OK (Not Supported)
>         test VIDIOC_G_FBUF: OK (Not Supported)
>         test VIDIOC_G_FMT: OK
>         test VIDIOC_TRY_FMT: OK
>         test VIDIOC_S_FMT: OK
>         test VIDIOC_G_SLICED_VBI_CAP: OK (Not Supported)
>         test Cropping: OK (Not Supported)
>         test Composing: OK (Not Supported)
>         test Scaling: OK (Not Supported)
> 
> Codec ioctls:
>         test VIDIOC_(TRY_)ENCODER_CMD: OK (Not Supported)
>         test VIDIOC_G_ENC_INDEX: OK (Not Supported)
>         test VIDIOC_(TRY_)DECODER_CMD: OK (Not Supported)
> 
> Buffer ioctls:
>         test VIDIOC_REQBUFS/CREATE_BUFS/QUERYBUF: OK
>         test VIDIOC_EXPBUF: OK
>         test Requests: OK (Not Supported)
> 
> Total for sun8i-rotate device /dev/video0: 45, Succeeded: 45, Failed: 0,
> Warnings: 0
> 
> Best regards,
> Jernej
> 
> Jernej Skrabec (8):
>   clk: sunxi-ng: sun8i-de2: Swap A64 and H6 definitions
>   clk: sunxi-ng: sun8i-de2: Fix A83T clocks and reset

Please disregard above two patches. It turns out that many more changes are 
required to fix mess with rotation clocks and reset. I sent separate patch 
series: http://lists.infradead.org/pipermail/linux-arm-kernel/2020-February/
710242.html

Comments on the rest of the series are welcome, though.

Best regards,
Jernej

>   ARM: dts: sunxi: Fix DE2 clocks register range
>   arm64: dts: allwinner: a64: Fix display clock register range
>   media: dt-bindings: media: Add Allwinner A83T Rotate driver
>   media: sun8i: Add Allwinner A83T Rotate driver
>   ARM: dts: sun8i: a83t: Add device node for rotation core
>   arm64: dts: allwinner: a64: add node for rotation core
> 
>  .../allwinner,sun8i-a83t-de2-rotate.yaml      |  70 ++
>  MAINTAINERS                                   |   8 +
>  arch/arm/boot/dts/sun8i-a83t.dtsi             |  13 +-
>  arch/arm/boot/dts/sun8i-r40.dtsi              |   2 +-
>  arch/arm/boot/dts/sun8i-v3s.dtsi              |   2 +-
>  arch/arm/boot/dts/sunxi-h3-h5.dtsi            |   2 +-
>  arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi |  14 +-
>  drivers/clk/sunxi-ng/ccu-sun8i-de2.c          |  49 +-
>  drivers/media/platform/Kconfig                |  12 +
>  drivers/media/platform/sunxi/Makefile         |   1 +
>  .../platform/sunxi/sun8i-rotate/Makefile      |   2 +
>  .../sunxi/sun8i-rotate/sun8i-formats.c        | 273 ++++++
>  .../sunxi/sun8i-rotate/sun8i-formats.h        |  25 +
>  .../sunxi/sun8i-rotate/sun8i-rotate.c         | 924 ++++++++++++++++++
>  .../sunxi/sun8i-rotate/sun8i-rotate.h         | 135 +++
>  15 files changed, 1512 insertions(+), 20 deletions(-)
>  create mode 100644
> Documentation/devicetree/bindings/media/allwinner,sun8i-a83t-de2-rotate.yam
> l create mode 100644 drivers/media/platform/sunxi/sun8i-rotate/Makefile
> create mode 100644
> drivers/media/platform/sunxi/sun8i-rotate/sun8i-formats.c create mode
> 100644 drivers/media/platform/sunxi/sun8i-rotate/sun8i-formats.h create
> mode 100644 drivers/media/platform/sunxi/sun8i-rotate/sun8i-rotate.c create
> mode 100644 drivers/media/platform/sunxi/sun8i-rotate/sun8i-rotate.h





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
