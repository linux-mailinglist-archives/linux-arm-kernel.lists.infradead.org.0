Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03545105033
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 11:15:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lkCgB6u8WpwA8axKiLjZjpsdkAZu/grYg7Z3VJCbOxk=; b=LGMji4B9j9p+d1
	lbhPliVLZWafCE2e+UlfomeAeAclmYz3nYYcuc+tJuZlCBvSmx3YIKPbKjSEIqgD8kvuL94VVejn1
	BVQ2XMP0ULSI+h3pRq75SnOs1FiqDSw4CDxLH5NFM750ZvPQrhroe8dXPWBI/tzIDuj2fL/isk/SW
	aVR3r0lpFYE0fRpJVOgb1bWIV4M8eGf4HVtEZNr+4L06IWaoC+gaVIE1w1zuFlwAfuWZP8nBfLg8s
	scjLNYayjD8NDnxb9HYMerWO35pfcnlKcsIiFHbsE9v1iLc788cYkFJUTHWgmiYlY8qHHr3VJWw1Y
	ltpTG7wIy3C6rF40vBtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXjUk-0004da-Mp; Thu, 21 Nov 2019 10:15:26 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXjTw-00040e-NY
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 10:14:40 +0000
Received: by mail-wm1-x342.google.com with SMTP id z19so3004676wmk.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 Nov 2019 02:14:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=n7DzjzsuSLvj9pdWFStqaFJF8gdHM1T9f/YXYyoJOjk=;
 b=CzFSpjV143IUsg5swiQ/xd6HekWPa8WT+SHymkLFYW8WZccwKp/V8QjnOfEjuNP5t8
 w1z9rdRXOZ+T7qZDUi3vPMh3P9JWM+j4gZ7XTw0wFUO1vLMosw9OCFMGHaa13EE/zh/v
 pc3Y+j7ILOj0i+k14bnEZTcqxcxkpAo1TwUCm8geSaM9PF24vQ771JN0p19hpN84c4JP
 EgQ3njdMGF/c0Ra+WHZDIEOONMVnKYqIQ4QldDIeGamQNwG7x4mZWuDD1929IZk4gj1y
 omx3QqMOxGBNqbSdF+oD4fm6Gb5fknsFczRcokiQ4ZUgZ1tN1xyTizuJfONw9k4j0V/Q
 1/bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=n7DzjzsuSLvj9pdWFStqaFJF8gdHM1T9f/YXYyoJOjk=;
 b=uj2YQqfVV+j0E9YnEF+ElOHB2HxeVB3LmygKtFiNZHx3Z9Q5FLKKEIPR5XNL3UZyo4
 QmsI4riayooiY6T5kFqtUMOiJdvPdjOcNBIL5ihuruhzgYc56ItQ0xnY4jclP9HpMujo
 LTPPikAbRdozZKeEV7Stp40fS2Y4pkqirGAJjDt025bSoJ6fNiHj/V7nR80KAMZtggna
 luRDXUjw0MHfZT2crJBuZ5JWwxctGuiDYlXYSAj7PzGuVgzMKs5M4Rhiez7hA//owR9N
 S0/yyobEsSy0bpPtwzM3s6+riKxRJc1dvJQrAORm0laW+j1mLg/mX3TOHCWGxNCBOMn6
 LMvQ==
X-Gm-Message-State: APjAAAVY3CkXrbmjXB9V++0TD9yf60yqoAI1C/VWbTaQFE6MZDTpvioB
 31QlX3lj7v4PxaTA/uLI3tEKxQ==
X-Google-Smtp-Source: APXvYqxPADgVv5/yD9ctzuTcZNw5cUFWHwvJhUI0DOZzRCGful8vLGq7ZwkZBc87z0uvxwTFov8oDQ==
X-Received: by 2002:a7b:ca4d:: with SMTP id m13mr8689497wml.21.1574331271418; 
 Thu, 21 Nov 2019 02:14:31 -0800 (PST)
Received: from bender.baylibre.local
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id o21sm1289932wmc.17.2019.11.21.02.14.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Nov 2019 02:14:30 -0800 (PST)
From: Neil Armstrong <narmstrong@baylibre.com>
To: mjourdan@baylibre.com
Subject: [PATCH 0/3] media: meson: vdec: add sm1 platform
Date: Thu, 21 Nov 2019 11:14:26 +0100
Message-Id: <20191121101429.23831-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_021436_833845_9082DE9A 
X-CRM114-Status: UNSURE (   8.99  )
X-CRM114-Notice: Please train this message.
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
driver for the Amlogic SM1 & compatible SoCs.

Then support is added for the currently supported MPEG1 & MPEG2 decoders
like for G12A support.

This patchset depends on G12A support patchset at [1].

M2M Decoder compliance is handled in a separate patchset at [2].

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

[1] https://lore.kernel.org/linux-media/20191120111430.29552-1-narmstrong@baylibre.com
[2] https://lore.kernel.org/linux-media/20191007145909.29979-1-mjourdan@baylibre.com

Neil Armstrong (3):
  dt-bindings: media: amlogic,gx-vdec: add bindings for SM1 family
  media: meson: vdec: add sm1 platform
  arm64: dts: meson-sm1: add video decoder compatible

 .../bindings/media/amlogic,gx-vdec.yaml       |  2 ++
 arch/arm64/boot/dts/amlogic/meson-sm1.dtsi    |  4 +++
 drivers/staging/media/meson/vdec/vdec.c       |  5 +++-
 drivers/staging/media/meson/vdec/vdec_1.c     | 29 ++++++++++++++----
 .../staging/media/meson/vdec/vdec_platform.c  | 30 +++++++++++++++++++
 .../staging/media/meson/vdec/vdec_platform.h  |  2 ++
 6 files changed, 65 insertions(+), 7 deletions(-)

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
