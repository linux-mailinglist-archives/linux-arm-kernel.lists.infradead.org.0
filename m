Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63BAD1678FE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 10:09:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rhfm3v+UWTxKGUI7vME58xsUr5S4K2XjE2xrwH5fa4o=; b=R9GfKAaAdQIp5A
	3rgh9j80qh5nwWd0Dd9VkDWH9gb32tcTUXSZ/gHYPMrxsZm8HiYmYTyeNNJjuol8XiLJqTi8V5SjL
	ybAIMb/0cczFdMo4lnf78EVjs//hhkXc6Fwb5BlpcGCoEp0AfGIdHOL0peBtaUm1jDQ1nPWilrqoe
	ibBAdS+BLzJvtJOAlE2O4HA6EJlpqrbqespJpTXzqMRKinngH+WfspTgZJoCQ2ZEJl52pIfA1AW81
	39390jQgJjaW6M7VpP2Jv5HTYAQ37yDpPF+tkyjeRu8iPF665QMU9LKKsJSxWHY1djc5P6AYouK8O
	augAs+pJU+/8X58ZEK0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j54J0-0006XO-G6; Fri, 21 Feb 2020 09:09:06 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j54Ik-0006Vj-SV
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 09:08:52 +0000
Received: by mail-wm1-x344.google.com with SMTP id q9so846850wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Feb 2020 01:08:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3kb32uRYkhezIHBTmj+5SdLW5ETiBbDtA9WwDv9jFqg=;
 b=MHq30fHLCK1yAJBfIiqeZy2r0lRKlMQNNi0H+yiAO1uObLJy/V8lgFd0bW7GRlbdZA
 pVm+zKouDVsFeYirga2GLz6wxiIIIXU73yRTJnQWpy3+2jzqpfvbRD0GzW1r6Kfwahhq
 9em/BTeVTo9+SWaF0nC8xs4UoEhcx2w7NhKWVJpP77auP3klD1qQPWIwj1tSXmIRUmPp
 rRm7bqD8lP+V5f8+tZn6Iy7XDqtZJXzu3n1VCNq0Nyq+cSXoXbaCPtApVhwnN2UFx/8a
 8Pk7xV8Me2jOJ+nIvyIBR0AVtt5DEm/ZQQhklA60Qwjfv4CEyIeXbYS/rSRF5eBX9XZP
 0wQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3kb32uRYkhezIHBTmj+5SdLW5ETiBbDtA9WwDv9jFqg=;
 b=t5n07pBXceuVBnaVtIz/n/hbyEBFTtXpWeKYhlglRNjkSI57kTqFFwI9UtwF29sAzS
 FgSnByNc6ywWXQKD9D2qrN/ByTyr6ilGxLoykOCNj5TZuWi1qQ9q37gteQrd1BBhnGaU
 wrmCdPwUsRJ7pF4jRvAfsmscBnNKFEq+n6rpFQs2y44cXqPdgn3rJHAHq7cwps1U31wo
 LXIpbTk+RJfkFRHrBp2Si3FrCK/PtHut4X/wx5Y6ZVtmBpzYQiF+x0Dpy6/IEcIQh2eD
 wya6jg/7imnv3q1kw6O+sfV6cSTx8ayXthCXbD2/lgAJq6dk9MRxbtKidGwiLOGisIfb
 wQ7Q==
X-Gm-Message-State: APjAAAUhjNakjdAi8Ycvl9xNs4PAmUdeCo9oudanrJJ0AMsk6CG6KwQr
 dLOpphYfVzKPY4Snkt/m/k3g3Q==
X-Google-Smtp-Source: APXvYqyASv2VhtyTE+GbLI9Iyxv1oYm6p8uGHIxc63RjQjtV3HCvpFF/TwD2nkmX9SvFBq2eEeVOoQ==
X-Received: by 2002:a05:600c:414e:: with SMTP id
 h14mr2419247wmm.179.1582276128899; 
 Fri, 21 Feb 2020 01:08:48 -0800 (PST)
Received: from bender.baylibre.local ([2a01:e35:2ec0:82b0:4ca8:b25b:98e4:858])
 by smtp.gmail.com with ESMTPSA id
 h5sm3173288wmf.8.2020.02.21.01.08.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 21 Feb 2020 01:08:48 -0800 (PST)
From: Neil Armstrong <narmstrong@baylibre.com>
To: daniel@ffwll.ch,
	dri-devel@lists.freedesktop.org
Subject: [PATCH 0/4] drm/meson: add support for Amlogic Video FBC
Date: Fri, 21 Feb 2020 10:08:41 +0100
Message-Id: <20200221090845.7397-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_010850_920640_0AA2B6D3 
X-CRM114-Status: UNSURE (   8.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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

At least two options are supported :
- Scatter mode: the buffer is filled with a IOMMU scatter table referring
  to the encoder current memory layout. This mode if more efficient in terms
  of memory allocation but frames are not dumpable and only valid during until
  the buffer is freed and back in control of the encoder
- Memory saving: when the pixel bpp is 8b, the size of the superblock can
  be reduced, thus saving memory.

This serie adds the missing register, updated the FBC decoder registers
content to be committed by the crtc code.

The Amlogic FBC has been tested with compressed content from the Amlogic
HW VP9 decoder on S905X (GXL), S905D2 (G12A) and S905X3 (SM1) in 8bit
(Scatter+Mem Saving on G12A/SM1, Mem Saving on GXL) and 10bit
(Scatter on G12A/SM1, default on GXL).

It's expected to work as-is on GXM and G12B SoCs.

Changes since v1 at [1]:
- s/VD1_AXI_SEL_AFB/VD1_AXI_SEL_AFBC/ into meson_registers.h

[1] https://patchwork.freedesktop.org/series/73722/#rev1

Neil Armstrong (4):
  drm/fourcc: Add modifier definitions for describing Amlogic Video
    Framebuffer Compression
  drm/meson: add Amlogic Video FBC registers
  drm/meson: overlay: setup overlay for Amlogic FBC
  drm/meson: crtc: handle commit of Amlogic FBC frames

 drivers/gpu/drm/meson/meson_crtc.c      | 118 ++++++++---
 drivers/gpu/drm/meson/meson_drv.h       |  16 ++
 drivers/gpu/drm/meson/meson_overlay.c   | 257 +++++++++++++++++++++++-
 drivers/gpu/drm/meson/meson_registers.h |  22 ++
 include/uapi/drm/drm_fourcc.h           |  56 ++++++
 5 files changed, 431 insertions(+), 38 deletions(-)

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
