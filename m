Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 270D31A81F2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 17:19:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JkgY4B1dCvh6okESZ/WCWYz+VUsRZIa2RSkfkB0hPGU=; b=pk3IyC29LOMjV8
	tDgln6fs5nJ2KbO/ZdTNQGBjf4uo5r0vgqNhWWH8FR792fFvavMOtEnoSJRUqiMbxtBK4ITuEbwY3
	Sn4jocATc2C/zG68APzqtwzUndxEOA2ztb8QpYGu3e3N53vuRjgGzGOixND2mdS+GO9eRPoQG7qAM
	7LmmxaDvltsPUEr/Kv5g/X9wCRo/NjJNcqT+OcKkGpb3REKx+76JsbxoaInIoZSEVBiJZZnU1Enft
	nJ27aF/0oZx5g7FPidY7QXyamzq13y0PdhkdGII6DYiCaSJfv/8ZiBGaP4KFtFIKyIr6CufC1/skH
	lxZsqL/q8Q/ZIqOaLuMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jONLE-0002Nm-Cs; Tue, 14 Apr 2020 15:19:12 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jONKu-0002Kc-Qx; Tue, 14 Apr 2020 15:18:54 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: aratiu) with ESMTPSA id 6FFF72A16F6
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: [PATCH v6 0/8] Genericize DW MIPI DSI bridge and add i.MX 6 driver
Date: Tue, 14 Apr 2020 18:19:47 +0300
Message-Id: <20200414151955.311949-1-adrian.ratiu@collabora.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_081853_002741_F2925A9A 
X-CRM114-Status: UNSURE (   8.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Jernej Skrabec <jernej.skrabec@siol.net>, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, kernel@collabora.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello everyone,

Many thanks to all who have contributed to this new iteration,
especially to Arnaud Ferraris for his stm32mp1 testing and to
Adrian Pop for his stm32f7 testing & debugging help.

Further testing, especially on Rockchip devices, is very much
appreciated.

All reported issues have been addressed and this series should
apply cleanly on latest next-20200414 tree.

Tested on imx6dl, stm32mp1 and stm32f7.

Best wishes,
Adrian

Adrian Ratiu (8):
  drm: bridge: dw_mipi_dsi: add initial regmap infrastructure
  drm: bridge: dw_mipi_dsi: abstract register access using reg_fields
  drm: bridge: synopsis: add dsi v1.01 support
  drm: imx: Add i.MX 6 MIPI DSI host platform driver
  dt-bindings: display: add i.MX6 MIPI DSI host controller doc
  drm: stm: dw-mipi-dsi: let the bridge handle the HW version check
  drm: bridge: dw-mipi-dsi: split low power cfg register into fields
  drm: bridge: dw-mipi-dsi: fix bad register field offsets

 .../display/imx/fsl,mipi-dsi-imx6.yaml        | 139 ++++
 drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 691 +++++++++++++-----
 drivers/gpu/drm/imx/Kconfig                   |   7 +
 drivers/gpu/drm/imx/Makefile                  |   1 +
 drivers/gpu/drm/imx/dw_mipi_dsi-imx6.c        | 409 +++++++++++
 drivers/gpu/drm/stm/dw_mipi_dsi-stm.c         |  12 +-
 6 files changed, 1050 insertions(+), 209 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,mipi-dsi-imx6.yaml
 create mode 100644 drivers/gpu/drm/imx/dw_mipi_dsi-imx6.c

-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
