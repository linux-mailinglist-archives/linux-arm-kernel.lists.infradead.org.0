Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06185115F16
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Dec 2019 23:25:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jGHpTjxJBah/M45IsH50ETznfbCLwGnRaZfx3+rOSAg=; b=p/jip8r9n2rGBT
	6+jVCz5df1G2FityZ0YTB9QC2r9I3IfuD8cirRAb7oNYqDrI8W5PQC9Qvtk4nFGbjgtL4XPOSdrOD
	rbI+RzDIDqUNO7t460ZwSm87Ab82f1T89g7BWJhcGFow7EFsKAbL40hDmVvi+i6dEP9pWbLa4WFI0
	p9Xt4gTKNQIqBsvMkW7fVfO3o5i8QYFce79zRb2Fxzb2PfC0k/HbspZH/nH3k12Xa6bslrzh7Rt8Z
	S6cY56JDhiZeB9ho7xLpydyd1M0Q/smP7lqN0zlMpGSu9AeJ2gS5/8Rt3+MTewE5/wLD2qyDY9guE
	A7uEsqcLk9Uogqeww01g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idiVC-0007VB-8M; Sat, 07 Dec 2019 22:24:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idiV3-0007Ug-HN; Sat, 07 Dec 2019 22:24:31 +0000
Received: from ziggy.de (unknown [95.169.229.25])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0898F24670;
 Sat,  7 Dec 2019 22:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575757467;
 bh=ib+UZGVXasa/Cf3lK0w3XlA8us0yKD9mTTkDrW0TBfM=;
 h=From:To:Cc:Subject:Date:From;
 b=oOJqfADF4WeQgwjBl2xeJVVSfv3ErqGAryU22xvTY5AnU+O9MJYFHXlhqGcZ5Yc1s
 4OUMKKRZutkGlVBVA7cip7uGaFLKtYrFJr4+8Y3j978mRlXLMInwIAmW1Wsn9to3F6
 /ow9TtelYXiTejz/kzpHkT6aviXiQBpYe1t6NYTM=
From: matthias.bgg@kernel.org
To: robh+dt@kernel.org, mark.rutland@arm.com, ck.hu@mediatek.com,
 p.zabel@pengutronix.de, airlied@linux.ie, mturquette@baylibre.com,
 sboyd@codeaurora.org, ulrich.hecht+renesas@gmail.com,
 laurent.pinchart@ideasonboard.com, enric.balletbo@collabora.com
Subject: [PATCH v6 00/12] arm/arm64: mediatek: Fix mmsys device probing
Date: Sat,  7 Dec 2019 23:23:37 +0100
Message-Id: <20191207222349.23161-1-matthias.bgg@kernel.org>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191207_142429_618932_DF5C47C5 
X-CRM114-Status: GOOD (  14.91  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, rdunlap@infradead.org, frank-w@public-files.de,
 sean.wang@mediatek.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, sean.wang@kernel.org, wens@csie.org,
 drinkcat@chromium.org, linux-mediatek@lists.infradead.org, mbrugger@suse.com,
 hsinyi@chromium.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Matthias Brugger <mbrugger@suse.com>

This is version five of the series. It's a long time this wasn't worked on, so
as a reminder, version four can be found here:
https://patchwork.kernel.org/cover/10686247/

The biggest changes this new version does, is to implement the clock probing
through a platform driver. The corresponding platform device get's created in
the DRM driver. I converted all the clock drivers to platform drivers and tested
the approach on the Acer Chromebook R13 (mt8173 based).
Apart from that I reordered the patches so that the DT bindings update are the first
patches.

Changes since v5:
- re-arrange the patch order
- generate platform_device for mmsys clock driver inside the DRM driver
- fix DTS binding accordingly
- switch all mmsys clock driver to platform probing
- fix mt8173 platform driver remove function
- fix probe defer path in HDMI driver
- fix probe defer path in mtk_mdp_comp
- fix identation of error messages

Changes since v4:
- fix missing regmap accessors in drm diver (patch 1)
- omit probe deffered warning on all drivers (patch 5)
- update drm and clk bindings (patch 6 and 7)
- put mmsys clock part in dts child node of mmsys. Only done
for HW where no dts backport compatible breakage is expected 
(either DRM driver not yet implemented or no HW available to
the public) (patch 9 to 12)

Changes since v3:
- use platform device to probe clock driver
- add Acked-by CK Hu for the probe deferred patch

Changes since v2:
- fix kconfig typo (shame on me)
- delete __initconst from mm_clocks as converted to a platform driver
  
Changes since v1:
- add binding documentation
- ddp: use regmap_update_bits
- ddp: ignore EPROBE_DEFER on clock probing
- mfd: delete mmsys_private
- add Reviewed-by and Acked-by tags
 
MMSYS in Mediatek SoCs has some registers to control clock gates (which is 
used in the clk driver) and some registers to set the routing and enable
the differnet blocks of the display subsystem.

Up to now both drivers, clock and drm are probed with the same device tree
compatible. But only the first driver get probed, which in effect breaks
graphics on mt8173 and mt2701.

This patch uses a platform device registration in the DRM driver, which
will trigger the probe of the corresponding clock driver. It was tested on the
bananapi-r2 and the Acer R13 Chromebook.


Matthias Brugger (12):
  dt-bindings: display: mediatek: Add mmsys binding description
  dt-bindings: mediatek: Add compatible for mt7623
  drm/mediatek: Use regmap for register access
  drm: mediatek: Omit warning on probe defers
  media: mtk-mdp: Check return value of of_clk_get
  clk: mediatek: mt2701: switch mmsys to platform device probing
  clk: mediatek: mt2712e: switch to platform device probing
  clk: mediatek: mt6779: switch mmsys to platform device probing
  clk: mediatek: mt6797: switch to platform device probing
  clk: mediatek: mt8183: switch mmsys to platform device probing
  clk: mediatek: mt8173: switch mmsys to platform device probing
  drm/mediatek: Add support for mmsys through a pdev

 .../display/mediatek/mediatek,disp.txt        | 30 ++++++-----
 drivers/clk/mediatek/clk-mt2701-mm.c          | 41 +++++++++-----
 drivers/clk/mediatek/clk-mt2712-mm.c          | 39 +++++++++-----
 drivers/clk/mediatek/clk-mt6779-mm.c          | 41 +++++++++-----
 drivers/clk/mediatek/clk-mt6797-mm.c          | 43 ++++++++++-----
 drivers/clk/mediatek/clk-mt8173.c             | 51 +++++++++++++++---
 drivers/clk/mediatek/clk-mt8183-mm.c          | 39 +++++++++-----
 drivers/gpu/drm/mediatek/mtk_disp_color.c     |  5 +-
 drivers/gpu/drm/mediatek/mtk_disp_ovl.c       |  5 +-
 drivers/gpu/drm/mediatek/mtk_disp_rdma.c      |  5 +-
 drivers/gpu/drm/mediatek/mtk_dpi.c            | 12 +++--
 drivers/gpu/drm/mediatek/mtk_drm_crtc.c       |  4 +-
 drivers/gpu/drm/mediatek/mtk_drm_ddp.c        | 54 +++++++++----------
 drivers/gpu/drm/mediatek/mtk_drm_ddp.h        |  4 +-
 drivers/gpu/drm/mediatek/mtk_drm_drv.c        | 35 +++++++++---
 drivers/gpu/drm/mediatek/mtk_drm_drv.h        |  4 +-
 drivers/gpu/drm/mediatek/mtk_dsi.c            |  8 ++-
 drivers/gpu/drm/mediatek/mtk_hdmi.c           |  4 +-
 drivers/media/platform/mtk-mdp/mtk_mdp_comp.c |  6 +++
 19 files changed, 295 insertions(+), 135 deletions(-)

-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
