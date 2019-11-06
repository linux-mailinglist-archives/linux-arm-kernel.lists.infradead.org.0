Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71BE2F1B3F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 17:31:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KT8PwUMFwfUvCyyJdcmuFzqEOfUpYvnWmdcbtD+vEZs=; b=lE9/WtrEG6EEIQ
	yaTn3wHIMV2SYjQqpNi1gRVb0mSlTlZ1/kxI/J0MbHss8NqTXeLb925alf4JFrWTh0Gd2sELk7RZi
	geXeZkLyUGQvZX1DDc/7QNW5IqHZ+Wq9uxBF5lJziBHAny2xa4FkPefwrIX3CP7f7r9zf6T3VuV9P
	maCWcrwz6YoQqHQgi2ut4I8ITygCsGibHNd2+Q4pNS7QZZ4IfUZvEgU39NUDWoRrCeXu9HJI2ZVyv
	ILGgeWzVwyELdz00Dzm44w1yUPA+kkz85ejTyx6F2EuVQOo75yH51bh7WvBs+gV5FDmoh0n5m6L6o
	cTQNXYG+GEUUx8oT2x/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSODC-0005fe-CB; Wed, 06 Nov 2019 16:31:14 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSOD5-0005db-0v; Wed, 06 Nov 2019 16:31:08 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: aratiu) with ESMTPSA id 704D228F21C
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: linux-arm-kernel@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-rockchip@lists.infradead.org
Subject: [PATCH v2 0/4] Genericize DW MIPI DSI bridge and add i.MX 6 driver
Date: Wed,  6 Nov 2019 18:30:27 +0200
Message-Id: <20191106163031.808061-1-adrian.ratiu@collabora.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_083107_194458_5C02AEE6 
X-CRM114-Status: GOOD (  13.17  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: kernel@collabora.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Having a generic Synopsis DesignWare MIPI-DSI host controller bridge
driver is a very good idea, however the current implementation has
hardcoded quite a lot of the register layouts used by the two supported
SoC vendors, STM and Rockchip, which use IP cores v1.30 and v1.31.

This makes it hard to support other SoC vendors like the FSL/NXP i.MX 6
which use older v1.01 cores or future versions because, based on history,
layout changes should also be expected in new DSI versions / SoCs.

This patch series converts the bridge and platform drivers to access
registers via generic regmap APIs then, adds support for the host
controller found on i.MX 6.

I only have i.MX hardware with MIPI-DSI panel and relevant documentation
available for testing so I'll really appreciate it if someone could test
the series on Rockchip and STM... eyeballing register fields could only
get me so far, so sorry in advance for any breakage!

Many thanks to Boris Brezillon <boris.brezillon@collabora.com> for
suggesting the regmap solution and to Liu Ying <Ying.Liu@freescale.com>
for doing the initial i.MX platform driver implementation.

This series applies on top of latest linux-next tree, next-20191106.

v1 -> v2:
  * Moved the register definitions & regmap initialization into the
  bridge module as suggested by Emil. Platform drivers can get the
  regmap via their plat_data after calling the bridge probe() without
  worrying at all about layouts, which are handled by the bridge now.

Adrian Ratiu (4):
  drm: bridge: dw_mipi_dsi: access registers via a regmap
  drm: bridge: dw_mipi_dsi: abstract register access using reg_fields
  drm: imx: Add i.MX 6 MIPI DSI host driver
  dt-bindings: display: add IMX MIPI DSI host controller doc

 .../bindings/display/imx/mipi-dsi.txt         |  56 ++
 drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 699 +++++++++++++-----
 drivers/gpu/drm/imx/Kconfig                   |   7 +
 drivers/gpu/drm/imx/Makefile                  |   1 +
 drivers/gpu/drm/imx/dw_mipi_dsi-imx.c         | 378 ++++++++++
 .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   |  17 +-
 drivers/gpu/drm/stm/dw_mipi_dsi-stm.c         |  34 +-
 include/drm/bridge/dw_mipi_dsi.h              |   2 +-
 8 files changed, 987 insertions(+), 207 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/imx/mipi-dsi.txt
 create mode 100644 drivers/gpu/drm/imx/dw_mipi_dsi-imx.c

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
