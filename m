Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84C1B1D0C9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 22:44:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v1AUzXDqY1Luh/XVuRRvIHN4Au5lA09E8Xvm8OB7s/Q=; b=pJKUVII7g/mN2T
	aDF7/54LOxOzhkpESQ2yzetTHGgyFwSIbDNQtx72LsmAV/Yzugzc3+nisqGrHES/hmQ2RpiNNbBZy
	Gai/h0pQJ+09leVkoCXIpgPK8nd4EyqxXIU/tQurV7dSCSP9EN8TAa19MITLwSpC0p9hMwjrDvHH2
	KJFOpmEI3DYX5zthqUF6SXytPPO86xHX6AWdMfNCp7WEVYdyRM9ej+lgWDdil7Bu9OURxLF7t335x
	XDxZTHMSJl84r4Ki5kufyoQQBSnWHC4OhcK2lqov6OdKnYGHFPUSx9Un9GUdCGvXeSe/osk2+kq16
	zAx8IleiKKLr0VTHuYJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQeHX-0004vV-1k; Tue, 14 May 2019 20:44:15 +0000
Received: from mailoutvs11.siol.net ([185.57.226.202] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQeHD-0004jt-Qa
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 20:43:58 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 1FCCB521E15;
 Tue, 14 May 2019 22:43:48 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta09.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta09.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id P6TEBCYv139H; Tue, 14 May 2019 22:43:47 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 7A8BB521E08;
 Tue, 14 May 2019 22:43:47 +0200 (CEST)
Received: from localhost.localdomain (cpe-86-58-52-202.static.triera.net
 [86.58.52.202]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id AEE1E521E34;
 Tue, 14 May 2019 22:43:44 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: maxime.ripard@bootlin.com,
	wens@csie.org
Subject: [PATCH 1/2] drm/sun4i: Fix sun8i HDMI PHY clock initialization
Date: Tue, 14 May 2019 22:43:36 +0200
Message-Id: <20190514204337.11068-2-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190514204337.11068-1-jernej.skrabec@siol.net>
References: <20190514204337.11068-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_134356_032457_80392367 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.202 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: airlied@linux.ie, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-sunxi@googlegroups.com,
 stable@vger.kernel.org, daniel@ffwll.ch, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Current code initializes HDMI PHY clock driver before reset line is
deasserted and clocks enabled. Because of that, initial readout of
clock divider is incorrect (0 instead of 2). This causes any clock
rate with divider 1 (register value 0) to be set incorrectly.

Fix this by moving initialization of HDMI PHY clock driver after reset
line is deasserted and clocks enabled.

Cc: stable@vger.kernel.org # 4.17+
Fixes: 4f86e81748fe ("drm/sun4i: Add support for H3 HDMI PHY variant")
Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 drivers/gpu/drm/sun4i/sun8i_hdmi_phy.c | 26 ++++++++++++++------------
 1 file changed, 14 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun8i_hdmi_phy.c b/drivers/gpu/drm/sun4i/sun8i_hdmi_phy.c
index 66ea3a902e36..afc6d4a9c20b 100644
--- a/drivers/gpu/drm/sun4i/sun8i_hdmi_phy.c
+++ b/drivers/gpu/drm/sun4i/sun8i_hdmi_phy.c
@@ -672,22 +672,13 @@ int sun8i_hdmi_phy_probe(struct sun8i_dw_hdmi *hdmi, struct device_node *node)
 				goto err_put_clk_pll0;
 			}
 		}
-
-		ret = sun8i_phy_clk_create(phy, dev,
-					   phy->variant->has_second_pll);
-		if (ret) {
-			dev_err(dev, "Couldn't create the PHY clock\n");
-			goto err_put_clk_pll1;
-		}
-
-		clk_prepare_enable(phy->clk_phy);
 	}
 
 	phy->rst_phy = of_reset_control_get_shared(node, "phy");
 	if (IS_ERR(phy->rst_phy)) {
 		dev_err(dev, "Could not get phy reset control\n");
 		ret = PTR_ERR(phy->rst_phy);
-		goto err_disable_clk_phy;
+		goto err_put_clk_pll1;
 	}
 
 	ret = reset_control_deassert(phy->rst_phy);
@@ -708,18 +699,29 @@ int sun8i_hdmi_phy_probe(struct sun8i_dw_hdmi *hdmi, struct device_node *node)
 		goto err_disable_clk_bus;
 	}
 
+	if (phy->variant->has_phy_clk) {
+		ret = sun8i_phy_clk_create(phy, dev,
+					   phy->variant->has_second_pll);
+		if (ret) {
+			dev_err(dev, "Couldn't create the PHY clock\n");
+			goto err_disable_clk_mod;
+		}
+
+		clk_prepare_enable(phy->clk_phy);
+	}
+
 	hdmi->phy = phy;
 
 	return 0;
 
+err_disable_clk_mod:
+	clk_disable_unprepare(phy->clk_mod);
 err_disable_clk_bus:
 	clk_disable_unprepare(phy->clk_bus);
 err_deassert_rst_phy:
 	reset_control_assert(phy->rst_phy);
 err_put_rst_phy:
 	reset_control_put(phy->rst_phy);
-err_disable_clk_phy:
-	clk_disable_unprepare(phy->clk_phy);
 err_put_clk_pll1:
 	clk_put(phy->clk_pll1);
 err_put_clk_pll0:
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
