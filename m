Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3995B1143AB
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 16:34:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cw/kWaGVZcUd+/aw5aeHzl46CQDIYVRHL8l1M+Gti2A=; b=dMWMLJINPlS2LT
	fn2YUf5jJF63F58EhEQwXWTS+NZqJQQcMJwAwP5YYD8ZOXwpBHl+KWcqkXBNPKDZPpqsfnT7vabAx
	33jp47iOLaUZhSQTnKHYPWIbV4jPbZva7NirJdCG7r+EcPAPsIwh+ExgTeilniTvrbbUaG+/9awdc
	wpeX4pm7kYDIZffUHI1BrUdBCFQC2LNgQicukRFQEhP+rU+EIAsTm8x0FBUQj9QgXLMU3UdLkqvRe
	Q3o2fFi9r+hIGlUcdZYNr+RZ2W8++ETdH9PsWWLs7wt2vRQAez772F0s0gW6yBO5xhBZb4zGh/9z6
	6VgRbTQN49WAqMfmJr+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ict99-0003VL-6i; Thu, 05 Dec 2019 15:34:27 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ict8w-0003Sk-RW
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 15:34:16 +0000
Received: by mail-wr1-x444.google.com with SMTP id w15so4159972wru.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Dec 2019 07:34:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GIebstkH20puIVZWgC2hGKzku3yRSI4A3CVg92MDVQs=;
 b=RgVylUW7KveDxJ3ohhKWc4l3cCuIRuSxVDGHkWxQkyJAq73UqLAdPV5ykqeEWOigV6
 kPpYyUfLkJwt8IUI7hhNJv/97o+h4NHtlJazgz6EhwrKqxF9drvekDzXRe5tjwM29eUR
 ou0SaXgUYQl6RGpaa/vdtqqHjcM41TwNDT/A4IYz3ZVnjEBr86CwYX+iwkPTmAamoCFN
 h9xXbU3THxhkfLDA6APB86DdG30Tcpup3M1NbJY9FVtUa0dQimhFEg+OSFlfEKDW1EPp
 Xwej+fYV2ZOfw5abJAN/P9svXvtmQEdIUi8mQfIb18Eynf5CuyQAcOdy13tj9b1xXNN4
 uZUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GIebstkH20puIVZWgC2hGKzku3yRSI4A3CVg92MDVQs=;
 b=mvB6uEhMHejYXi8iV3PN2ox9z8MSmtcROS4a4Xb+RkOEyDiliHGGFx0KISZnH9yw0y
 AxGKSDDwgYIV5/yNWrFtHOa0cvTXURDnGeaOGaja5Bv+AU6GYTKZCbW571wSLvAp5WEt
 iC+KFZ6F9R6n3TnRZ8IVh2KcE2vS7+V6v144FVaw8lEaGnQvQ0NFYFN6GncyiJjvpt1g
 tTU0kNgwzxgHfGKg1VNVq1xfPM4bN4RuOUMnirNQjGGNj+DdSJZvytYATqxLf52Cbkig
 amJuJh0Crm/1I3NiZ+pF1y7XLySx3QoK8/tcGUPJM1cLADu0q/ee2OV5ATezBzAlWVTa
 KDLg==
X-Gm-Message-State: APjAAAVArJhC7mdiWAQ967FcELf/Ck3vIsgIguKl4ayJ+HK09FLp9hYa
 zQp3RVzGaNoMFG9ZuonWTPb03Q==
X-Google-Smtp-Source: APXvYqzISVFwgl00Y4cT7qU6re/o5QIa1Ua3iwxFaohFbaqWWtF4alAmwbSyhxysbWxjiZGXBlFlxA==
X-Received: by 2002:adf:cd0a:: with SMTP id w10mr10564920wrm.107.1575560052661; 
 Thu, 05 Dec 2019 07:34:12 -0800 (PST)
Received: from bender.baylibre.local
 (wal59-h01-176-150-251-154.dsl.sta.abo.bbox.fr. [176.150.251.154])
 by smtp.gmail.com with ESMTPSA id u26sm191894wmj.9.2019.12.05.07.34.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Dec 2019 07:34:11 -0800 (PST)
From: Neil Armstrong <narmstrong@baylibre.com>
To: mjourdan@baylibre.com
Subject: [PATCH v2 0/4] media: meson: vdec: add g12a platform
Date: Thu,  5 Dec 2019 16:34:04 +0100
Message-Id: <20191205153408.26500-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_073414_892406_0734F8F0 
X-CRM114-Status: GOOD (  10.47  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

This patchset adds support for the current Amlogic Video Decoder
driver for the Amlogic G12A & compatible SoCs.

The bindings are converted to YAML and dt-schemes to ease validation
of the bindings and the Amlogic DT.

Then support is added for the currently supported MPEG1 & MPEG2 decoders
and additional clock for upcoming HEVC/VP9 decoder support.

M2M Decoder compliance is handled in a separate patchset at [1].

# v4l2-compliance
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

Total for meson-vdec device /dev/video0: 44, Succeeded: 44, Failed: 0, Warnings: 0

[1] https://lore.kernel.org/linux-media/20191126093733.32404-1-narmstrong@baylibre.com

Maxime Jourdan (2):
  media: meson: vdec: add g12a platform
  arm64: dts: meson-g12-common: add video decoder node

Neil Armstrong (2):
  dt-bindings: media: amlogic,vdec: convert to yaml
  dt-bindings: media: amlogic,gx-vdec: add bindings for G12A family

 .../bindings/media/amlogic,gx-vdec.yaml       | 139 ++++++++++++++++++
 .../bindings/media/amlogic,vdec.txt           |  72 ---------
 .../boot/dts/amlogic/meson-g12-common.dtsi    |  23 +++
 drivers/staging/media/meson/vdec/vdec.c       |  13 +-
 drivers/staging/media/meson/vdec/vdec.h       |   1 +
 .../staging/media/meson/vdec/vdec_platform.c  |  30 ++++
 .../staging/media/meson/vdec/vdec_platform.h  |   2 +
 7 files changed, 206 insertions(+), 74 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/media/amlogic,gx-vdec.yaml
 delete mode 100644 Documentation/devicetree/bindings/media/amlogic,vdec.txt

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
