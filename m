Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D41E31F40B1
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 18:26:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hnGp95pPIrAjwR+Y58mEGKm1rI0bTWK7S5b/hoFtR54=; b=R3WcunuMcK7moY
	pN6GdMX1g0mIg5o4ucTCF5wYVBbMZfpGHh/en3aq+Yzg+w4Ur3SrlYbaw/butEEm460HXvCv8N8Dj
	/hGBfOEwRn6O+KCSnqYl6hZsddyT6PANut1X2/3flno1SdezcySKDQLYb6WFJ6ykH71rRvLT+NzVa
	aaM9pq4WAuUwOG0IMqI1nII+RW01828Sirh05hT/pv8+rGltFHz+/G9QJSJ1iSV27Uql7bSTpoDeF
	s1zDZwFoiXX+0+i1G0klNqRqqq8oMRPniVdL2edPEXHyI/jozQVlVl+BesfLpAVMXy4jgFLHWMx9u
	Fu23EvaTYY4DEZ/muYbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jih4X-0000OW-41; Tue, 09 Jun 2020 16:25:57 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jih4G-0000MR-GJ; Tue, 09 Jun 2020 16:25:42 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: aratiu) with ESMTPSA id 41FC42A3BFB
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Subject: [PATCH v9 00/11] Genericize DW MIPI DSI bridge and add i.MX 6 driver
Date: Tue,  9 Jun 2020 19:26:49 +0300
Message-Id: <20200609162700.953260-1-adrian.ratiu@collabora.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_092540_668497_19D23297 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Jernej Skrabec <jernej.skrabec@siol.net>, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, Philippe CORNU <philippe.cornu@st.com>,
 Yannick FERTRE <yannick.fertre@st.com>, Andrzej Hajda <a.hajda@samsung.com>,
 linux-imx@nxp.com, kernel@collabora.com,
 linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello all,

v9 cleanly applies on top of latest next-20200609 tree.

v9 does not depend on other patches as the last binding doc has been merged.

All feedback up to this point has been addressed. Specific details in
individual patch changelogs.

The biggest changes are the deprecation of the Synopsys DW bridge bind()
API in favor of of_drm_find_bridge() and .attach callbacks, the addition
of a TODO entry which outlines future planned bridge driver refactorings
and a reordering of some i.MX 6 patches to appease checkpatch.

The idea behind the TODO is to get this regmap and i.MX 6 driver merged
and then do the rest of refactorings in-tree because it's easier and the
refactorings themselves are out-of-scope of this series which is adding
i.MX 6 support and is quite big already, so please, if there are more
refactoring ideas, let's add them to the TODO doc. :) I intend to tackle
those after this series is merged to avoid two complex inter-dependent
simultaneous series.

As always more testing is welcome especially on Rockchip and STM SoCs.

Big thank you to everyone who has contributed to this up to now,
Adrian

Adrian Ratiu (11):
  drm: bridge: dw_mipi_dsi: add initial regmap infrastructure
  drm: bridge: dw_mipi_dsi: abstract register access using reg_fields
  drm: bridge: dw_mipi_dsi: add dsi v1.01 support
  drm: bridge: dw_mipi_dsi: remove bind/unbind API
  dt-bindings: display: add i.MX6 MIPI DSI host controller doc
  ARM: dts: imx6qdl: add missing mipi dsi properties
  drm: imx: Add i.MX 6 MIPI DSI host platform driver
  drm: stm: dw-mipi-dsi: let the bridge handle the HW version check
  drm: bridge: dw-mipi-dsi: split low power cfg register into fields
  drm: bridge: dw-mipi-dsi: fix bad register field offsets
  Documentation: gpu: todo: Add dw-mipi-dsi consolidation plan

 .../display/imx/fsl,mipi-dsi-imx6.yaml        | 112 +++
 Documentation/gpu/todo.rst                    |  25 +
 arch/arm/boot/dts/imx6qdl.dtsi                |   8 +
 drivers/gpu/drm/bridge/synopsys/Kconfig       |   1 +
 drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 713 ++++++++++++------
 drivers/gpu/drm/imx/Kconfig                   |   8 +
 drivers/gpu/drm/imx/Makefile                  |   1 +
 drivers/gpu/drm/imx/dw_mipi_dsi-imx6.c        | 399 ++++++++++
 .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   |   7 +-
 drivers/gpu/drm/stm/dw_mipi_dsi-stm.c         |  16 +-
 10 files changed, 1059 insertions(+), 231 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,mipi-dsi-imx6.yaml
 create mode 100644 drivers/gpu/drm/imx/dw_mipi_dsi-imx6.c

-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
