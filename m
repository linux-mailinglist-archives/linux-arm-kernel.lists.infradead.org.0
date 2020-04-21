Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10E971B2C75
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 18:19:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dgIUDrBmvxjrchss5WpBITV+ZGqt/g23YnRerKdjStQ=; b=QrXLOSTnVDnB+H
	Xr4wIQwFVvOuvNFIvNNFoBuWSMu+Ll74VgZEoRUdA84RyElAqaZ3PaDINU5xKL/Vn0059/UfZ4k/E
	mEOLwOKW278MLhImcY9E4zo99tqLJF9kvKLgL93Usz1s2HH7pMvJ5QSf1x5/RDywlAX3g/w2tzB0y
	VeVtPoB7K6+8HJGZMr/LB+OIzJQHzgypAYMfReJoL3CdNgQWBgrMCutidGXvfI9LD6dkw/QyxwcZh
	0aDFfYLBcfagSbOkXMSCFFnGW4msKz3mYYUozl/t1NvbZwIuQtGnE4+tTtaqvZH5CljUiPIQI32RW
	bNL4kuHcbOXHS0/0j4Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQvcJ-0004Md-MI; Tue, 21 Apr 2020 16:19:23 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQvZ9-0001fF-3A
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 16:16:13 +0000
Received: by mail-wm1-x343.google.com with SMTP id t63so4202448wmt.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Apr 2020 09:16:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=oBXmUVijjl77qmlPJjceabUZhKXPDQu30ucjlCWJLm8=;
 b=zTcqxvYVH3V2nN32H6116A8cns9nt9Jpmu7xJFjkr0jvy37yVdA303M5a34KILWxLo
 Q8GI/lqn62BIwjr+5j0scfwmXHyc0OuPCGX21RH2ie71+C0W+LZ6Ogl0nNuwTE29Rq7u
 jlJJdCV1o8VjezXu7qMgqtzuC+2hqz6ObWTB1/MlnxfptH2SeO946uXbpzEg+QdchicC
 zxcESoE2lLWr/hK0JfVmRvMbVifObY85Yc6DOuDvVzZIWjtiVMDwZKNVcuIOwHwfORKD
 qKSimoTghbyjU0z/6qRjzKJjfiq8F4c6JDloqnUJWaLO8hKnip+dmiRGPjf7z5Dl0mtn
 CkQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=oBXmUVijjl77qmlPJjceabUZhKXPDQu30ucjlCWJLm8=;
 b=luLU076svL2dZ0+L549cqxZvLjs16aKgE8OzRDLqQLy+deirGyRciUba5Ca0zqW9on
 WLxP1mi/uEGCbzrcwBxoXMPsNXUMvjUYjkg3XRRxpy6cJ4okw8ZU1qa8KqliPsItcjju
 wurfRYYROw2bP1fZsLnjFlOckTPFXgyVyOKIq0o1ZVUfdZUl10CWyMBH9oEtjo8GgVwU
 397WFHi9DF3c9X1l92le0YIRH46CI1LvAehNs1pwEuLxKaEYPwxQ7O3bUOcY7OwFtaTh
 s22+W8YgJRDQpNowtD0rNtLy6v1l/V8tMFQUADG3nWtv8hY7jH2BY5wzPN/QPbC+/0Xe
 XiFg==
X-Gm-Message-State: AGi0PuZhbY+UFhQs3VuQSIlEzv+xX8f5moWm8zYGc39L/LSMx3qsUatF
 EGtUpCVmCqISVPjYWj1pYjUgEg==
X-Google-Smtp-Source: APiQypLNjUCb6VGu7+SdjDGqKPYjok1sR95NqggclMqD39jzf+Kt7RT7+hcKHV1dlfZrLkjO6+6OlQ==
X-Received: by 2002:a05:600c:414b:: with SMTP id
 h11mr5600881wmm.9.1587485764463; 
 Tue, 21 Apr 2020 09:16:04 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e35:2ec0:82b0:39cc:a07:8b48:cc56])
 by smtp.gmail.com with ESMTPSA id
 m8sm4410873wrx.54.2020.04.21.09.16.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Apr 2020 09:16:03 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: daniel@ffwll.ch,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v6 0/6] drm/meson: add support for Amlogic Video FBC
Date: Tue, 21 Apr 2020 18:15:53 +0200
Message-Id: <20200421161559.2347-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_091607_175325_CB642D9B 
X-CRM114-Status: GOOD (  10.67  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Amlogic uses a proprietary lossless image compression protocol and format
for their hardware video codec accelerators, either video decoders or
video input encoders.

It considerably reduces memory bandwidth while writing and reading
frames in memory.

The underlying storage is considered to be 3 components, 8bit or 10-bit
per component, YCbCr 420, single plane :
- DRM_FORMAT_YUV420_8BIT
- DRM_FORMAT_YUV420_10BIT

This modifier will be notably added to DMA-BUF frames imported from the V4L2
Amlogic VDEC decoder.

At least two layout are supported :
- Basic: composed of a body and a header
- Scatter: the buffer is filled with a IOMMU scatter table referring
  to the encoder current memory layout. This mode if more efficient in terms
  of memory allocation but frames are not dumpable and only valid during until
  the buffer is freed and back in control of the encoder

At least two options are supported :
- Memory saving: when the pixel bpp is 8b, the size of the superblock can
  be reduced, thus saving memory.

This serie adds the missing register, updated the FBC decoder registers
content to be committed by the crtc code.

The Amlogic FBC has been tested with compressed content from the Amlogic
HW VP9 decoder on S905X (GXL), S905D2 (G12A) and S905X3 (SM1) in 8bit
(Scatter+Mem Saving on G12A/SM1, Mem Saving on GXL) and 10bit
(Scatter on G12A/SM1, default on GXL).

It's expected to work as-is on GXM and G12B SoCs.

Changes since v5 at [5]:
- merged all fourcc patches in 1
- fixed fourcc definition to have only a single DRM_MOD_
- fixed 2 checkpatch issues

Changes since v4 at [4]:
- added layout and options mask
- cosmetic changes in fourcc.h
- fixed mod check using the masks
- fixed plane apply using the masks

Changes since v3 at [3]:
- added dropped fourcc patch for scatter
- fixed build of last patch

Changes since v2 at [2]:
- Added "BASIC" layout and moved the SCATTER mode as layout, making
  BASIC and SCATTER layout exclusives
- Moved the Memory Saving at bit 8 for options fields
- Split fourcc and overlay patch to introduce basic, mem saving and then
  scatter in separate patches
- Added comment about "transferability" of the buffers

Changes since v1 at [1]:
- s/VD1_AXI_SEL_AFB/VD1_AXI_SEL_AFBC/ into meson_registers.h

[1] https://patchwork.freedesktop.org/series/73722/#rev1
[2] https://patchwork.freedesktop.org/series/73722/#rev2
[3] https://patchwork.freedesktop.org/series/73722/#rev3
[4] https://patchwork.freedesktop.org/series/73722/#rev4
[4] https://patchwork.freedesktop.org/series/73722/#rev5

Neil Armstrong (6):
  drm/fourcc: Add modifier definitions for describing Amlogic Video
    Framebuffer Compression
  drm/meson: add Amlogic Video FBC registers
  drm/meson: overlay: setup overlay for Amlogic FBC
  drm/meson: overlay: setup overlay for Amlogic FBC Memory Saving mode
  drm/meson: overlay: setup overlay for Amlogic FBC Scatter Memory
    layout
  drm/meson: crtc: handle commit of Amlogic FBC frames

 drivers/gpu/drm/meson/meson_crtc.c      | 118 +++++++---
 drivers/gpu/drm/meson/meson_drv.h       |  16 ++
 drivers/gpu/drm/meson/meson_overlay.c   | 290 +++++++++++++++++++++++-
 drivers/gpu/drm/meson/meson_registers.h |  22 ++
 include/uapi/drm/drm_fourcc.h           |  74 ++++++
 5 files changed, 482 insertions(+), 38 deletions(-)

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
