Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92D9B10F0E2
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 20:43:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Zt80iWxcUYyP5bkQ7et62QEupMStexXHU7XDnYFn/uw=; b=YZ7OowZi2rYRbr
	+GrvS7+r3/WBQ2S/AQcX1ubX80MeeDmA9Brzr+5xjSV+qqP3+KcqYBfGi6z1CCsOFzYNU8j1VUebs
	YucotrzrU7fkaPAWzu3MBKDa6vhxXMppbtNv4nHJ3LFckYbJQqzAoMqx/4sAsih8kxhUoO9QLuUuC
	6a6fKAd72IuaEDRbNckP6yI/iXSBPZPQjFfo6iyX5Mnuild4+QGIBj5p1ZQ26+dBb6gPWlCCitll9
	pXUdEffIGr2oZtbbvroR2X5XF2OODVGgOjaN3AgVefToT9tNjSdQPjpYtFsP5mCyY80Id61Zkm//g
	MdENqQXGT5L68vpbNWbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibrbV-0002Td-Cr; Mon, 02 Dec 2019 19:43:29 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibrS9-0007tv-7O; Mon, 02 Dec 2019 19:33:56 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: aratiu) with ESMTPSA id 324A428FF58
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-rockchip@lists.infradead.org
Subject: [PATCH v4 0/4] Genericize DW MIPI DSI bridge and add i.MX 6 driver
Date: Mon,  2 Dec 2019 21:33:55 +0200
Message-Id: <20191202193359.703709-1-adrian.ratiu@collabora.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_113349_746408_8BD8BE9B 
X-CRM114-Status: GOOD (  13.30  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: kernel@collabora.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-imx@nxp.com
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
registers via generic regmap APIs and allows each platform driver to
configure its register layout via struct reg_fields, then adds support
for the host controller found on i.MX 6.

I only have i.MX hardware with MIPI-DSI panel and relevant documentation
available for testing so I'll really appreciate it if someone could test
the series on Rockchip and STM... eyeballing register fields could only
get me so far, so sorry in advance for any breakage!

Many thanks to Boris Brezillon <boris.brezillon@collabora.com> for
suggesting the regmap solution and to Liu Ying <Ying.Liu@freescale.com>
for doing the initial i.MX platform driver implementation.

This series applies on top of latest linux-next tree, next-20191202.

v3 -> v4:
  * Added commmit message to dt-binding patch (Neil)
  * Converted the dt-binding to yaml dt-schema format (Neil)
  * Small DT node + driver fixes (Rob)
  * Renamed platform driver to reflect it's only for i.MX v6 (Fabio)
  * Added small panel example to the host controller DT binding

v2 -> v3:
  * Added const declarations to dw-mipi-dsi.c structs (Emil)
  * Fixed Reviewed-by tags and cc'd some more relevant ML (Emil)

v1 -> v2:
  * Moved register definitions & regmap initialization into bridge
  module. Platform drivers get the regmap via plat_data after calling
  the bridge probe (Emil).

Adrian Ratiu (4):
  drm: bridge: dw_mipi_dsi: access registers via a regmap
  drm: bridge: dw_mipi_dsi: abstract register access using reg_fields
  drm: imx: Add i.MX 6 MIPI DSI host driver
  dt-bindings: display: add i.MX6 MIPI DSI host controller doc

 .../display/imx/fsl,mipi-dsi-imx6.yaml        | 136 ++++
 drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 699 +++++++++++++-----
 drivers/gpu/drm/imx/Kconfig                   |   7 +
 drivers/gpu/drm/imx/Makefile                  |   1 +
 drivers/gpu/drm/imx/dw_mipi_dsi-imx6.c        | 378 ++++++++++
 .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   |  17 +-
 drivers/gpu/drm/stm/dw_mipi_dsi-stm.c         |  34 +-
 include/drm/bridge/dw_mipi_dsi.h              |   2 +-
 8 files changed, 1067 insertions(+), 207 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,mipi-dsi-imx6.yaml
 create mode 100644 drivers/gpu/drm/imx/dw_mipi_dsi-imx6.c

-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
