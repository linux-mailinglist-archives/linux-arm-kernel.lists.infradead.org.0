Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD47916FC90
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 11:54:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=z9ClW5gIrPdlAfkjnhNhulAC4Bmz2HksJ4wH8mdnyRI=; b=MbEQl//P+Ay68s
	7WRsbRczA9FrxRXAZO2Z74t3OHHMr41Vy5sSgb8kSVyR/TXE+KMIQmGgEQ21YfOVC9AeGzABj87oz
	tbEmGMp8D33dv8qDxdVV9qYWtvIG4E6ktbyXGV8KMuWJfdHu1X+fGktHL9Ttau66tT1NDpV/reDTX
	2I7mV5QEswDStiYIXriJnBPBZD8DGO7V2bWasJq9f2U84KuoUbs0vP2f1WVCud7oXubR+Jl7gD9By
	fkJiSVMoEotMT+E4yC++RyMTgQrJeTTMFt/+gi4jRWv4/fIic+HzGph4vb3+unYnEJezBv4Ga0N1M
	7AIkdjszsV3oJR1P6C7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6uKv-0001Yk-61; Wed, 26 Feb 2020 10:54:41 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6uKj-0001Y3-Oy; Wed, 26 Feb 2020 10:54:31 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id A078328531A
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, ck.hu@mediatek.com,
 p.zabel@pengutronix.de, airlied@linux.ie, mturquette@baylibre.com,
 sboyd@kernel.org, ulrich.hecht+renesas@gmail.com,
 laurent.pinchart@ideasonboard.com
Subject: [PATCH v9 0/4] arm64: mediatek: Fix mt8173 mmsys device probing
Date: Wed, 26 Feb 2020 11:54:15 +0100
Message-Id: <20200226105419.632771-1-enric.balletbo@collabora.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_025430_078298_3E358CE1 
X-CRM114-Status: GOOD (  12.93  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Minghsiu Tsai <minghsiu.tsai@mediatek.com>, dri-devel@lists.freedesktop.org,
 Richard Fontana <rfontana@redhat.com>,
 Collabora Kernel ML <kernel@collabora.com>, linux-clk@vger.kernel.org,
 Weiyi Lu <weiyi.lu@mediatek.com>, wens@csie.org,
 linux-arm-kernel@lists.infradead.org, mtk01761 <wendell.lin@mediatek.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 frank-w@public-files.de, Seiya Wang <seiya.wang@mediatek.com>,
 sean.wang@mediatek.com, Houlong Wei <houlong.wei@mediatek.com>,
 linux-mediatek@lists.infradead.org, hsinyi@chromium.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Allison Randal <allison@lohutok.net>, Matthias Brugger <mbrugger@suse.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, rdunlap@infradead.org,
 linux-kernel@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
 matthias.bgg@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dear all,

Those patches are intended to solve an old standing issue on some
Mediatek devices (mt8173, mt2701 and mt2712).

Up to now both drivers, clock and drm are probed with the same device tree
compatible. But only the first driver gets probed, which in effect breaks
graphics on those devices.

The MMSYS (Multimedia subsystem) in Mediatek SoCs has some registers to
control clock gates (which is used in the clk driver) and some registers
to set the routing and enable the differnet blocks of the display
and MDP (Media Data Path) subsystem. On this series the clk driver is
not a pure clock controller but a system controller that can provide
access to the shared registers between the different drivers that need
it (mediatek-drm and mediatek-mdp). Hence the MMSYS clk driver was moved
to drivers/soc/mediatek and is the entry point (parent) which will trigger
the probe of the corresponding mediatek-drm driver.

**IMPORTANT** This series only fixes the issue on mt8173 to make it
simple and as is the only platform I can test. Similar changes should be
applied for mt2701 and mt2712 to have display working.

For reference, here are the links to the old discussions:
* v8: https://patchwork.kernel.org/project/linux-mediatek/list/?series=244891
* v7: https://patchwork.kernel.org/project/linux-mediatek/list/?series=241217
* v6: https://patchwork.kernel.org/project/linux-mediatek/list/?series=213219
* v5: https://patchwork.kernel.org/project/linux-mediatek/list/?series=44063
* v4:
  * https://patchwork.kernel.org/patch/10530871/
  * https://patchwork.kernel.org/patch/10530883/
  * https://patchwork.kernel.org/patch/10530885/
  * https://patchwork.kernel.org/patch/10530911/
  * https://patchwork.kernel.org/patch/10530913/
* v3:
  * https://patchwork.kernel.org/patch/10367857/
  * https://patchwork.kernel.org/patch/10367861/
  * https://patchwork.kernel.org/patch/10367877/
  * https://patchwork.kernel.org/patch/10367875/
  * https://patchwork.kernel.org/patch/10367885/
  * https://patchwork.kernel.org/patch/10367883/
  * https://patchwork.kernel.org/patch/10367889/
  * https://patchwork.kernel.org/patch/10367907/
  * https://patchwork.kernel.org/patch/10367909/
  * https://patchwork.kernel.org/patch/10367905/
* v2: No relevant discussion, see v3
* v1:
  * https://patchwork.kernel.org/patch/10016497/
  * https://patchwork.kernel.org/patch/10016499/
  * https://patchwork.kernel.org/patch/10016505/
  * https://patchwork.kernel.org/patch/10016507/

Best regards,
 Enric

Changes in v9:
- Move mmsys to drivers/soc/mediatek (CK)
- Do not move the display routing from the drm driver (CK)
- Removed from this series because are not needed:
  * [PATCH v8 5/6] drm/mediatek: Move MMSYS configuration to include/linux/platform_data
- Removed from this series because are applied:
  * [PATCH v8 3/6] media: mtk-mdp: Check return value of of_clk_get.

Changes in v8:
- Select REGMAP and MFD_SYSCON (Randy Dunlap)
- Be a builtin_platform_driver like other mediatek mmsys drivers.
- New patch introduced in this series.

Changes in v7:
- Add R-by from CK
- Free clk_data->clks as well
- Get rid of private data structure

Enric Balletbo i Serra (1):
  drm/mediatek: Fix mediatek-drm device probing

Matthias Brugger (3):
  drm/mediatek: Use regmap for register access
  drm/mediatek: Omit warning on probe defers
  soc: mediatek: Move mt8173 MMSYS to platform driver

 drivers/clk/mediatek/clk-mt8173.c         | 104 ----------------
 drivers/gpu/drm/mediatek/Kconfig          |   2 +
 drivers/gpu/drm/mediatek/mtk_disp_color.c |   5 +-
 drivers/gpu/drm/mediatek/mtk_disp_ovl.c   |   5 +-
 drivers/gpu/drm/mediatek/mtk_disp_rdma.c  |   5 +-
 drivers/gpu/drm/mediatek/mtk_dpi.c        |  12 +-
 drivers/gpu/drm/mediatek/mtk_drm_crtc.c   |   4 +-
 drivers/gpu/drm/mediatek/mtk_drm_ddp.c    |  53 ++++----
 drivers/gpu/drm/mediatek/mtk_drm_ddp.h    |   4 +-
 drivers/gpu/drm/mediatek/mtk_drm_drv.c    |  45 ++++---
 drivers/gpu/drm/mediatek/mtk_drm_drv.h    |   2 +-
 drivers/gpu/drm/mediatek/mtk_dsi.c        |   8 +-
 drivers/gpu/drm/mediatek/mtk_hdmi.c       |   4 +-
 drivers/soc/mediatek/Kconfig              |   7 ++
 drivers/soc/mediatek/Makefile             |   1 +
 drivers/soc/mediatek/mt8173-mmsys.c       | 143 ++++++++++++++++++++++
 16 files changed, 233 insertions(+), 171 deletions(-)
 create mode 100644 drivers/soc/mediatek/mt8173-mmsys.c

-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
