Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DBA41912CA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 15:21:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=50Sn8YWtJ1Ayapt/gRr0Tpyif7w8Qu9nGvottwJkwNQ=; b=YbsA4aoEvx2pJg
	NLXHD+YTmrRVyuOanj6bgXgD5E8Xp8HxHdTqfDuaIsf31vqiE5i52NQMXJbNNGigHAAMlB61qd+ul
	ogaBNham6TD+7IvwGmXhu+3I6E5wZbUrwcwFH/OZ1tz1n+qLWTsUjC14Tl8fzkh5VqgIQPv8d9EFM
	AWu/5MhDTibQ1BIlwAEqIk0o59jzWL0akauhzlPJQTVCG6TQCGnRmtdb4yRutz52Q20Ho2SitzJPs
	LR8SGf496cIgQMS165T1br5FFDswupkz0E9qJxIQvuQHiz/JTOc/p9ggVOt3KWQ0CyMnw/MT2ZR6X
	ooiSceKbTvxooMpyk1iQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGkQX-0007Ny-CW; Tue, 24 Mar 2020 14:21:09 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGkPq-00070a-53
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 14:20:28 +0000
Received: by mail-wr1-x442.google.com with SMTP id u10so1305106wro.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Mar 2020 07:20:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Pb0nOXTsvfnsHlBe6h+96Sc/Y2vhw/oF3Rb7LgSL9sA=;
 b=rsqJnKuHuJQAYKkoP4MLaf+A11zN64qwqgkLFd3IWiVck21lSHX1ysKm/r30C/khku
 OVyPTf6lqP9Qpei8+lcLVc5pah1ULccIygs7LUSwT1020WvjwlGCYQYBU+BtX0whmHed
 ujnq4xAzQk4jzQCvis3sCQtC7fadrvw4lUtVS2YjRcPjDwnrLOOAYAxGXVJatcl2n98V
 CML/eF/8FdwfbJSZFfG6OPXKHNqgAhdGz3gRS3+wLmbXFKl7tnD4+C22jcgOk7YHFnSD
 DqpB+nqm/M+YwkBzyeq8Slsg2EsuiwS96qjd7ey4QJDLDPmstzzjkrnNLx8NkstHD2S/
 YdGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Pb0nOXTsvfnsHlBe6h+96Sc/Y2vhw/oF3Rb7LgSL9sA=;
 b=ePtCkR6xvqZkf0zLaBrQ1RWYsf7fv+gTKoPR5LFvFZNvnmFaG3gb0LgT531X6khsOT
 JR9oLaHAEljiPsxr9kXFBRclumh6YHhYl9WM8Y1F07aK9xbKD7eX430Qc2RXzghawGZX
 SxBWICdni59k+1cDPZmP8oOdf5ZLoy93nhDoalnuDz05JpTMu13amzvTQoUtvYeXK4xA
 hM4jigq63OSJkvM7cWVplpm1wHnbl0YkImtPZxTn7xHnx7VHNQ8fYur1gmjFZQsrIM14
 wx+NF0Z5fS888dDURQ28A3V6u/LoYfAzE54vMvxIZ2Rx4Wr3xSK5CKTXCmbbf5ovJBRr
 pDsg==
X-Gm-Message-State: ANhLgQ3KwOqme+g1YwIrg3aLPjthReNi8zJlXRWMjPbIwfo1e3rgL+mF
 DJZ73ovT1sFqNXqDwVM5Yp8rzw==
X-Google-Smtp-Source: ADFU+vtcO35jlay/gxVcEpkyIV7bq9dlC30QrfhSlVYiFA9hMEECf/zlJKLj8mUQKhkft+409j05Jw==
X-Received: by 2002:adf:fe4c:: with SMTP id m12mr37764304wrs.96.1585059623310; 
 Tue, 24 Mar 2020 07:20:23 -0700 (PDT)
Received: from bender.baylibre.local ([2a01:e35:2ec0:82b0:5c5f:613e:f775:b6a2])
 by smtp.gmail.com with ESMTPSA id o4sm28688472wrp.84.2020.03.24.07.20.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Mar 2020 07:20:22 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: daniel@ffwll.ch,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v3 0/7] drm/meson: add support for Amlogic Video FBC
Date: Tue, 24 Mar 2020 15:20:09 +0100
Message-Id: <20200324142016.31824-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_072026_202109_692FFF32 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
Cc: mjourdan@baylibre.com, Neil Armstrong <narmstrong@baylibre.com>,
 linux-kernel@vger.kernel.org, ppaalanen@gmail.com,
 linux-amlogic@lists.infradead.org, brian.starkey@arm.com,
 linux-arm-kernel@lists.infradead.org
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

Neil Armstrong (7):
  drm/fourcc: Add modifier definitions for describing Amlogic Video
    Framebuffer Compression
  drm/meson: add Amlogic Video FBC registers
  drm/meson: overlay: setup overlay for Amlogic FBC
  drm/meson: crtc: handle commit of Amlogic FBC frames
  drm/fourcc: amlogic: Add modifier definitions for Memory Saving option
  drm/meson: overlay: setup overlay for Amlogic FBC Memory Saving mode
  drm/meson: overlay: setup overlay for Amlogic FBC Scatter Memory
    layout

 drivers/gpu/drm/meson/meson_crtc.c      | 118 ++++++++---
 drivers/gpu/drm/meson/meson_drv.h       |  16 ++
 drivers/gpu/drm/meson/meson_overlay.c   | 257 +++++++++++++++++++++++-
 drivers/gpu/drm/meson/meson_registers.h |  22 ++
 include/uapi/drm/drm_fourcc.h           |  66 ++++++
 5 files changed, 441 insertions(+), 38 deletions(-)

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
