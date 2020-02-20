Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8610D16629E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 17:28:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ACKpWBFZQF2IhuacO/+mZosZKw3KefZ0Bm1s66W94+8=; b=bRG7BnCwNvNQBn
	VUE703Ck3EU4hFmpj0q76AkgWkX5LwJKfJIn/AWUxe1/ah2i0y/Qk9dJmsmQSEv6YkfMLrVGk7elk
	A9bMtwXbZkB9BG0malPXGGVtkLraxvh87vqlWj00uve1WLZwfLVDAZ/ny4hbFpMxMm0lIwzGwdHlQ
	EGEVuG7jWkrinHO4aEsHqr5wc/RDt0Fr0r5D/8P1xlbbEBjCr+jDo9lGqZemnbCj45yEUx4C04i9N
	ThTPlmlpChZVsRpUjfrDCTvikkrwSJ0ZBT8m8GJ3eNshwHGurKdxYkaQkreCpTMUP4J/eCxoek0YB
	nSeTa2kCmnZf8wc8CmAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4ogV-0004JZ-TV; Thu, 20 Feb 2020 16:28:19 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4ogE-0004Es-E5
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 16:28:04 +0000
Received: by mail-wr1-x443.google.com with SMTP id g3so5281544wrs.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 08:28:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/W/WULs8OI1+LT5F6Ejcu59t+gn7dwmZWLBfEBVa/AA=;
 b=Ki8TO+R1Ufjb7jalo1huQgpue5758cyY8Zwk5y9wOIeItwXUaBr42/7r8SKvEYL50p
 qyocx9jn3Dwse6xZR8YBghMwUPE1qNxgmjKeJ0oqritkzbLG0IUqrshZqJgAtUOi98Hm
 vY1PS/ZEHMkUdeCeFk1VGApHCSrqszN8/MIvwVS/mr0TEErx/FHuTiK9B+O945rK0DOP
 vWX7qJ+NPQornMF1lq5pPG7y4bsb8d6KsmwFyREyZA2QVh4NwXYzay+MsisIf4SJ6nIa
 2j63XKthnerd6Q2bj9qRouIsaO8+TY6MBS4gCpDYtofLCSQwCfUJHYGG4ZsF3fsLSrdV
 yqdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/W/WULs8OI1+LT5F6Ejcu59t+gn7dwmZWLBfEBVa/AA=;
 b=hTzNzkLXmDQ5Yx0nD42LyPjk9764WhJN1FAXa5c7J/tIJZucMxrtwntaxwLqT4RPCC
 Enjn8V/DQ9e6o86cX9n7sHjijArA6fDL8t7tWvZfJsRNrIdBxpWdqrFpIiKuGB3YACih
 SZJdqJPm2LCA4htuONHJmgUEnCb4MmElGjy8KvLKPA9wrdbCbtossusVeVvG5rBU6JyL
 j+OVoEq2mMNPWByh+JE/1m8orTaQP/EXnO95bhc/UdXfnRozdE0FBmWF1GX0hIhcr8wV
 6NmpgB7xcfrnmpIsdfubEYHRrW4uppP9Yr/fZSrnK77UbtJLnUiNjgzjchZu+H1hhb9S
 6ipQ==
X-Gm-Message-State: APjAAAX12raAd0TVslspKmRDJPo1DbTTTRUh+QxWcbR0MhvfrAIFX1k/
 h8MdLpjluz62oc1zd0LDqB7AIA==
X-Google-Smtp-Source: APXvYqyun6Vj13OSNRZfblgv2ImbhuZ2CW3Kldm+31er91Z03BoaDcDWBFqxC1LOvntcbE4lSN4Kpw==
X-Received: by 2002:adf:fd91:: with SMTP id d17mr46166367wrr.340.1582216080316; 
 Thu, 20 Feb 2020 08:28:00 -0800 (PST)
Received: from bender.baylibre.local
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id c15sm104164wrt.1.2020.02.20.08.27.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Feb 2020 08:27:59 -0800 (PST)
From: Neil Armstrong <narmstrong@baylibre.com>
To: daniel@ffwll.ch,
	dri-devel@lists.freedesktop.org
Subject: [PATCH 0/4] drm/meson: add support for Amlogic Video FBC
Date: Thu, 20 Feb 2020 17:27:54 +0100
Message-Id: <20200220162758.13524-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_082802_471045_E7F781DC 
X-CRM114-Status: UNSURE (   8.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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
