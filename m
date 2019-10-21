Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4176DF7A3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 23:46:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fu4pOJADTVmEmYmQkc1Dc4ihpsy+WBHnrA3eBeAX/bg=; b=CrSMHQgKV68y0n
	mHup6JwrhPTsZ/3fRKEfknriTjR8w/sT/sWFuhpRus13kf0LGCV1dMCva16iDzv9XSahQncVOvIKv
	FMdcG2duJx0X4+rDqd14aUajLsMskwyRhRUQft+T7ulbdtK0J5DIAoufW/V6FJEuZCeju9LiXtOdN
	Al/1llR1Va224Igb8Ai6gLkqF5XDIZVb0+VA1MEnyqq7V9EgMOEp/Q2J1BWhCCGZelAeWk+rz7Glo
	5eRz/Uc0IWgH7jVVZ/Vheu90yrJBXRe0sM6QvFgRukGfOuKxwNzXMOwtTdAAPk6ja3bQNbJ9XsIZc
	bgvaCIdnGl/7C1x8dKXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMfVB-0000Ck-Aq; Mon, 21 Oct 2019 21:46:09 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMfUw-0000C7-GQ; Mon, 21 Oct 2019 21:45:56 +0000
Received: by mail-ot1-f67.google.com with SMTP id 21so12345581otj.11;
 Mon, 21 Oct 2019 14:45:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nqe5QILtIpNsEaGhkK4nGkXs8zLkefJgCA+oa+2s7ok=;
 b=db9KTeYkpaYOOjZMgE35pgtZ2xKfjPyYyi819zk+e31lUGvdoPYUABDmCcMg9ZCdQv
 oMw3u1ARKoFYi/t13JCiUu++uBUMQ1RZcYoSfcX4HuvWJm3wNk/bUK3n083UNoGzYUY5
 +DcsHUqnQYaMKcZtqIrX6+G40IvrJ5p54a+olZL9ZwOENy5U10VU4pzP+RSYrjnTQFSv
 4aMdXl2snQ2zcPM3ZoSA/MZEofZOluh19/j//hAfQbrrtuaFZvBazgrAatl9X4y2XwLU
 mAA9C3tIK56HmV6ZlBDcvnpWTXxXrvB7/zXdmWLRfRg38Q+p6Mja1ybJs4jcoFtQHjG7
 XH+Q==
X-Gm-Message-State: APjAAAWin4AyFyvNmQGDPktfeokkjWclpuZ9GcGJ2lZ7jHZsH1PAnTvW
 liJr8DM5vqnQU0iCjZYt3w==
X-Google-Smtp-Source: APXvYqxCs8yabMuTaUbUxDWWtS2Wplp/U09Sf75zVuQx5s+Q4uVctXMoxLgtzYEKbav8DT5Bobt0qg==
X-Received: by 2002:a9d:3df7:: with SMTP id l110mr40031otc.245.1571694353132; 
 Mon, 21 Oct 2019 14:45:53 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id u130sm4122676oib.56.2019.10.21.14.45.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 14:45:52 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH 0/6] drm: Support CMA per allocation kernel mappings
Date: Mon, 21 Oct 2019 16:45:44 -0500
Message-Id: <20191021214550.1461-1-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_144554_544317_B8C090D6 
X-CRM114-Status: GOOD (  14.65  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Liviu Dudau <liviu.dudau@arm.com>, Sandy Huang <hjc@rock-chips.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Yannick Fertre <yannick.fertre@st.com>, Kevin Hilman <khilman@baylibre.com>,
 Xinwei Kong <kong.kongxinwei@hisilicon.com>,
 Xinliang Liu <z.liuxinliang@hisilicon.com>, linux-rockchip@lists.infradead.org,
 Chen-Yu Tsai <wens@csie.org>,
 =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>,
 "James \(Qian\) Wang" <james.qian.wang@arm.com>, CK Hu <ck.hu@mediatek.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Chen Feng <puck.chen@hisilicon.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sean Paul <sean@poorly.run>, linux-arm-kernel@lists.infradead.org,
 Philippe Cornu <philippe.cornu@st.com>, Vincent Abriou <vincent.abriou@st.com>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Rongrong Zou <zourongrong@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds support for CMA/DMA users to skip kernel mappings for
GEM allocations. The DMA API only guarantees a kernel mapping at
allocation time. Creating mappings with vmap() after allocation may or
may not work as not all allocations have a struct page. As virtual
memory space is limited on 32-bit systems some drivers will skip kernel
mappings when possible. This prevents those drivers from using CMA
helpers and the generic fbdev emulation which results in a lot of
duplicated code.

In order to distinguish between kernel and userspace allocations,
a new flag, DRM_MODE_DUMB_KERNEL_MAP, for drm_mode_create_dumb() is
introduced. This allows drivers to override the default behavior for
CMA helpers of always creating a kernel mapping.

Mediatek is converted to CMA helpers and Rockchip is converted to generic
fbdev support. I also have patches to convert Rockchip to CMA and shmem
helpers, but they need a bit more work. Exynos can also probably be
converted to use CMA helpers.

Compile tested only. I did test fbdev on Rockchip, but the h/w I have
has an IOMMU, so the CMA code path doesn't get tested.

Rob

Rob Herring (6):
  drm/kirin: Use DRM_GEM_CMA_VMAP_DRIVER_OPS
  drm: Introduce DRM_MODE_DUMB_KERNEL_MAP flag
  drm/cma-helper: Use the dma_*_attr API variant
  drm/cma-helper: Support DRM_MODE_DUMB_KERNEL_MAP flag
  drm/mediatek: Convert to use CMA helpers
  drm/rockchip: Convert to use generic fbdev emulation

 .../gpu/drm/arm/display/komeda/komeda_kms.c   |   1 +
 drivers/gpu/drm/arm/malidp_drv.c              |   1 +
 drivers/gpu/drm/drm_client.c                  |   1 +
 drivers/gpu/drm/drm_dumb_buffers.c            |   5 +-
 drivers/gpu/drm/drm_gem_cma_helper.c          |  68 +++--
 .../gpu/drm/hisilicon/kirin/kirin_drm_ade.c   |  11 +-
 drivers/gpu/drm/mediatek/Makefile             |   1 -
 drivers/gpu/drm/mediatek/mtk_drm_crtc.c       |   2 +-
 drivers/gpu/drm/mediatek/mtk_drm_drv.c        |  28 +-
 drivers/gpu/drm/mediatek/mtk_drm_fb.c         |   1 -
 drivers/gpu/drm/mediatek/mtk_drm_gem.c        | 289 ------------------
 drivers/gpu/drm/mediatek/mtk_drm_gem.h        |  51 ----
 drivers/gpu/drm/mediatek/mtk_drm_plane.c      |   7 +-
 drivers/gpu/drm/meson/meson_drv.c             |   1 +
 drivers/gpu/drm/rcar-du/rcar_du_kms.c         |   1 +
 drivers/gpu/drm/rockchip/Makefile             |   1 -
 drivers/gpu/drm/rockchip/rockchip_drm_drv.c   |  10 +-
 drivers/gpu/drm/rockchip/rockchip_drm_drv.h   |   2 -
 drivers/gpu/drm/rockchip/rockchip_drm_fb.c    |  14 -
 drivers/gpu/drm/rockchip/rockchip_drm_fb.h    |   6 -
 drivers/gpu/drm/rockchip/rockchip_drm_fbdev.c | 170 -----------
 drivers/gpu/drm/rockchip/rockchip_drm_fbdev.h |  24 --
 drivers/gpu/drm/rockchip/rockchip_drm_gem.c   |   6 +-
 drivers/gpu/drm/rockchip/rockchip_drm_gem.h   |   4 -
 drivers/gpu/drm/stm/drv.c                     |   1 +
 drivers/gpu/drm/sun4i/sun4i_drv.c             |   1 +
 include/drm/drm_gem_cma_helper.h              |   1 +
 include/uapi/drm/drm_mode.h                   |   2 +
 28 files changed, 78 insertions(+), 632 deletions(-)
 delete mode 100644 drivers/gpu/drm/mediatek/mtk_drm_gem.c
 delete mode 100644 drivers/gpu/drm/mediatek/mtk_drm_gem.h
 delete mode 100644 drivers/gpu/drm/rockchip/rockchip_drm_fbdev.c
 delete mode 100644 drivers/gpu/drm/rockchip/rockchip_drm_fbdev.h

--
2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
