Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CED42197AE2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 13:35:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NjY7ZX6pSrUcbsgHVpIGelpAGpFG0mtMYjp0dWUQ+Po=; b=XXTDANd7Os/waN
	JaBPO6mn+/9fiC7KYOiF1MHizHu0/Z3El8A8qTSy+AK3/8Sk/D2Y7YryleoK4m60vWzuYPiZmdmar
	tm0fcWhhg5X5/4LZYX8pYo1c0P80TAXW+L6b5YInWBfOOTHJQmcLUYkqZGmwVvYrvRpH5cTk7mi41
	z4kPvVv+X1aqsuidxguwOLnJR5UPYl1mpIV34Ac8X2ul6+HGjyNoYnvmiaPPRLwJDIqvBiuNEXjFn
	d/IPRYZbA419UZVFazdwlqvtW4AN1GyLr7Bh28AMCaLSUDcMHt1lvf2WVk27jsy/FMiLRcAnXKME3
	oD0psPuo+V7V+09wZdtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIshM-0007Um-Tm; Mon, 30 Mar 2020 11:35:20 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIsgu-0007TK-Cl; Mon, 30 Mar 2020 11:34:53 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: aratiu) with ESMTPSA id 0545E292556
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v5 0/5] Genericize DW MIPI DSI bridge and add i.MX 6 driver
Date: Mon, 30 Mar 2020 14:35:37 +0300
Message-Id: <20200330113542.181752-1-adrian.ratiu@collabora.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_043452_566701_F7D173CB 
X-CRM114-Status: UNSURE (   8.08  )
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
Cc: Jernej Skrabec <jernej.skrabec@siol.net>,
 Andrzej Hajda <a.hajda@samsung.com>, Jonas Karlman <jonas@kwiboo.se>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, linux-imx@nxp.com, kernel@collabora.com,
 linux-stm32@st-md-mailman.stormreply.com,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello everyone,

The v5 series is a significantly cleaned up version from v4,
started by Ezequiel Garcia's suggestion of splitting out the
regmap infrastructure from the drivers (thank you!).

Turns out no changes are required to the existing drivers and
the bridge can transparently take care of the layout logic,
so there's no need to expose the regmap via plat_data anymore.

Starting from this version I also opted to add per-patch
changelogs. All review comments up to now have been addressed.

Tested on IMX6DL.

Adrian Ratiu (5):
  drm: bridge: dw_mipi_dsi: add initial regmap infrastructure
  drm: bridge: dw_mipi_dsi: abstract register access using reg_fields
  drm: bridge: synopsis: add dsi v1.01 support
  drm: imx: Add i.MX 6 MIPI DSI host platform driver
  dt-bindings: display: add i.MX6 MIPI DSI host controller doc

 .../display/imx/fsl,mipi-dsi-imx6.yaml        | 134 ++++
 drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 683 +++++++++++++-----
 drivers/gpu/drm/imx/Kconfig                   |   7 +
 drivers/gpu/drm/imx/Makefile                  |   1 +
 drivers/gpu/drm/imx/dw_mipi_dsi-imx6.c        | 399 ++++++++++
 5 files changed, 1049 insertions(+), 175 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,mipi-dsi-imx6.yaml
 create mode 100644 drivers/gpu/drm/imx/dw_mipi_dsi-imx6.c

-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
