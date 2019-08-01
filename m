Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC3FA7E386
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 21:51:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i3FKqWUwpWVX3OWYDT9rxMIjHqggJqN6bs8DQjcbLBI=; b=KIRtoON8dam6US
	c67vZd/kepcQPonpg9MDzQcHDlAlpj65P44IXHRzwt9wl3txT7dgctNWy4f6Lqkg+ucALaSmB9Zz/
	iTHot8LU39dGZqRcEyW+Rn3FEzT8zTWXJp7FfuvXcV1yB9lPDJCMJaZKyH30/Fp+LNJXZkS4fqAH5
	/FJPXIrwICNqXwswpjYU767g44s/j4erZTaVU3B/YZewgl1zVrpkF4S8TY+3U1OkwU5LJ6uX50y9D
	JHcmkovjm3bYO09Oloet1pEMySt8JsAM38lTGrkahzgXMbK/22GwB9V7lujAu9/eG9WL6zlzRAyb0
	a4PHcniY2SnuDqR8cWWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htH6o-0002UV-26; Thu, 01 Aug 2019 19:51:30 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htH6c-0002Qz-V3
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 19:51:20 +0000
Received: by mail-qt1-x842.google.com with SMTP id r6so67303328qtt.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 12:51:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=starry.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=X7N5pzNs61dPalbIZgn+UP857QWN52RWTYQ6AeLmLi4=;
 b=bh/l0s65OYyk+VoKG4yqvv4mQVRp8XXbSPgnWmEzk5AJmaEWdxSmko55cNpV6ScA2r
 GhpYk7Xy5CzXYv3fmazO22f7tl7wwNhfApnPsH+xQTopVQ9NxgM491HeD40m0zLVGEqP
 mX2lVzE9kS5zHeokjLQ+ezqSb65Z1GA21+HX8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=X7N5pzNs61dPalbIZgn+UP857QWN52RWTYQ6AeLmLi4=;
 b=jzD0XFz/AiIXhsi2FeutAJsQrHMAt6qxuHQ4YfEaw4+I4wY7QL4LFcspdMtVUwLOnv
 cLp1Vcdm1j9JnEB368iwnmCD1xDiZNLBypIyoCoEguO0LhjEpMxiLem1F07TtIAJdjY7
 qTPwz1TVpQf8w5C+1mkXQBdWnwL9T3Y8ZFDyvXm2Lw0H7E4/furLFFhFseTaJsGzCuH2
 njIfM1gQA5NeQPOo5ueb5+nHxWJYQ2HpOawyBmoHquTuTIGa1y+ik2PXUxMWvbCPPfFu
 PBTzrtYvAZL9JZghD7fEEUeZ3AXJXXQ3rzmm4mQW1h9ajhLj6mKbJz6/27uMc8Mwef0n
 JADA==
X-Gm-Message-State: APjAAAXj6BxsmPK4nHKXmIcc3kE7Iiwwj0p49rXH0HzBV6ZPoinOi85K
 p9TLyhe8zULfZO94v5IYuOuX3g==
X-Google-Smtp-Source: APXvYqzO6LbWzavgn72G6A+0EOIfYy61hYzHBRFP7wsbENdfR8kCcy0NdKymncddMg560GDPBD6PTw==
X-Received: by 2002:ac8:6601:: with SMTP id c1mr85606991qtp.93.1564689077770; 
 Thu, 01 Aug 2019 12:51:17 -0700 (PDT)
Received: from localhost.localdomain (205-201-16-55.starry-inc.net.
 [205.201.16.55])
 by smtp.gmail.com with ESMTPSA id h4sm31271944qkk.39.2019.08.01.12.51.16
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 01 Aug 2019 12:51:17 -0700 (PDT)
From: Matt Pelland <mpelland@starry.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 1/4] phy: marvell: phy-mvebu-cp110-comphy: implement RXAUI
 support
Date: Thu,  1 Aug 2019 15:50:58 -0400
Message-Id: <20190801195059.24005-2-mpelland@starry.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190801195059.24005-1-mpelland@starry.com>
References: <20190801195059.24005-1-mpelland@starry.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_125119_012907_70267572 
X-CRM114-Status: GOOD (  14.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: antoine.tenart@bootlin.com, Matt Pelland <mpelland@starry.com>,
 linux-arm-kernel@lists.infradead.org, kishon@ti.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Marvell's cp110 phy supports RXAUI on lanes 2, 3, 4, and 5 when
connected to port zero. When used in this mode, lanes operate in pairs
of two (2 and 3, 4 and 5).

Signed-off-by: Matt Pelland <mpelland@starry.com>
---
 drivers/phy/marvell/phy-mvebu-cp110-comphy.c | 127 ++++++++++++++++++-
 1 file changed, 120 insertions(+), 7 deletions(-)

diff --git a/drivers/phy/marvell/phy-mvebu-cp110-comphy.c b/drivers/phy/marvell/phy-mvebu-cp110-comphy.c
index d98e0451f6a1..f7f8d2bfd641 100644
--- a/drivers/phy/marvell/phy-mvebu-cp110-comphy.c
+++ b/drivers/phy/marvell/phy-mvebu-cp110-comphy.c
@@ -22,6 +22,7 @@
 #define     MVEBU_COMPHY_SERDES_CFG0_PU_RX	BIT(11)
 #define     MVEBU_COMPHY_SERDES_CFG0_PU_TX	BIT(12)
 #define     MVEBU_COMPHY_SERDES_CFG0_HALF_BUS	BIT(14)
+#define     MVEBU_COMPHY_SERDES_CFG0_RXAUI_MODE	BIT(15)
 #define MVEBU_COMPHY_SERDES_CFG1(n)		(0x4 + (n) * 0x1000)
 #define     MVEBU_COMPHY_SERDES_CFG1_RESET	BIT(3)
 #define     MVEBU_COMPHY_SERDES_CFG1_RX_INIT	BIT(4)
@@ -111,6 +112,9 @@
 #define     MVEBU_COMPHY_SELECTOR_PHY(n)	((n) * 0x4)
 #define MVEBU_COMPHY_PIPE_SELECTOR		0x1144
 #define     MVEBU_COMPHY_PIPE_SELECTOR_PIPE(n)	((n) * 0x4)
+#define MVEBU_COMPHY_SD1_CTRL1			0x1148
+#define     MVEBU_COMPHY_SD1_CTRL1_RXAUI1_EN	BIT(26)
+#define     MVEBU_COMPHY_SD1_CTRL1_RXAUI0_EN	BIT(27)
 
 #define MVEBU_COMPHY_LANES	6
 #define MVEBU_COMPHY_PORTS	3
@@ -142,16 +146,20 @@ static const struct mvebu_comphy_conf mvebu_comphy_cp110_modes[] = {
 	/* lane 2 */
 	MVEBU_COMPHY_CONF(2, 0, PHY_INTERFACE_MODE_SGMII, 0x1),
 	MVEBU_COMPHY_CONF(2, 0, PHY_INTERFACE_MODE_2500BASEX, 0x1),
+	MVEBU_COMPHY_CONF(2, 0, PHY_INTERFACE_MODE_RXAUI, 0x1),
 	MVEBU_COMPHY_CONF(2, 0, PHY_INTERFACE_MODE_10GKR, 0x1),
 	/* lane 3 */
+	MVEBU_COMPHY_CONF(3, 0, PHY_INTERFACE_MODE_RXAUI, 0x1),
 	MVEBU_COMPHY_CONF(3, 1, PHY_INTERFACE_MODE_SGMII, 0x2),
 	MVEBU_COMPHY_CONF(3, 1, PHY_INTERFACE_MODE_2500BASEX, 0x2),
 	/* lane 4 */
 	MVEBU_COMPHY_CONF(4, 0, PHY_INTERFACE_MODE_SGMII, 0x2),
 	MVEBU_COMPHY_CONF(4, 0, PHY_INTERFACE_MODE_2500BASEX, 0x2),
+	MVEBU_COMPHY_CONF(4, 0, PHY_INTERFACE_MODE_RXAUI, 0x2),
 	MVEBU_COMPHY_CONF(4, 0, PHY_INTERFACE_MODE_10GKR, 0x2),
 	MVEBU_COMPHY_CONF(4, 1, PHY_INTERFACE_MODE_SGMII, 0x1),
 	/* lane 5 */
+	MVEBU_COMPHY_CONF(5, 0, PHY_INTERFACE_MODE_RXAUI, 0x2),
 	MVEBU_COMPHY_CONF(5, 2, PHY_INTERFACE_MODE_SGMII, 0x1),
 	MVEBU_COMPHY_CONF(5, 2, PHY_INTERFACE_MODE_2500BASEX, 0x1),
 };
@@ -193,7 +201,7 @@ static int mvebu_comphy_get_mux(int lane, int port,
 	return mvebu_comphy_cp110_modes[i].mux;
 }
 
-static void mvebu_comphy_ethernet_init_reset(struct mvebu_comphy_lane *lane)
+static int mvebu_comphy_ethernet_init_reset(struct mvebu_comphy_lane *lane)
 {
 	struct mvebu_comphy_priv *priv = lane->priv;
 	u32 val;
@@ -210,20 +218,61 @@ static void mvebu_comphy_ethernet_init_reset(struct mvebu_comphy_lane *lane)
 		 MVEBU_COMPHY_SERDES_CFG0_PU_TX |
 		 MVEBU_COMPHY_SERDES_CFG0_HALF_BUS |
 		 MVEBU_COMPHY_SERDES_CFG0_GEN_RX(0xf) |
-		 MVEBU_COMPHY_SERDES_CFG0_GEN_TX(0xf));
-	if (lane->submode == PHY_INTERFACE_MODE_10GKR)
+		 MVEBU_COMPHY_SERDES_CFG0_GEN_TX(0xf) |
+		 MVEBU_COMPHY_SERDES_CFG0_RXAUI_MODE);
+
+	switch (lane->submode) {
+	case PHY_INTERFACE_MODE_10GKR:
 		val |= MVEBU_COMPHY_SERDES_CFG0_GEN_RX(0xe) |
 		       MVEBU_COMPHY_SERDES_CFG0_GEN_TX(0xe);
-	else if (lane->submode == PHY_INTERFACE_MODE_2500BASEX)
+		break;
+	case PHY_INTERFACE_MODE_RXAUI:
+		val |= MVEBU_COMPHY_SERDES_CFG0_GEN_RX(0xb) |
+		       MVEBU_COMPHY_SERDES_CFG0_GEN_TX(0xb) |
+		       MVEBU_COMPHY_SERDES_CFG0_RXAUI_MODE;
+		break;
+	case PHY_INTERFACE_MODE_2500BASEX:
 		val |= MVEBU_COMPHY_SERDES_CFG0_GEN_RX(0x8) |
 		       MVEBU_COMPHY_SERDES_CFG0_GEN_TX(0x8) |
 		       MVEBU_COMPHY_SERDES_CFG0_HALF_BUS;
-	else if (lane->submode == PHY_INTERFACE_MODE_SGMII)
+		break;
+	case PHY_INTERFACE_MODE_SGMII:
 		val |= MVEBU_COMPHY_SERDES_CFG0_GEN_RX(0x6) |
 		       MVEBU_COMPHY_SERDES_CFG0_GEN_TX(0x6) |
 		       MVEBU_COMPHY_SERDES_CFG0_HALF_BUS;
+		break;
+	default:
+		dev_err(priv->dev,
+			"unsupported comphy submode (%d) on lane %d\n",
+			lane->submode,
+			lane->id);
+		return -ENOTSUPP;
+	}
+
 	writel(val, priv->base + MVEBU_COMPHY_SERDES_CFG0(lane->id));
 
+	if (lane->submode == PHY_INTERFACE_MODE_RXAUI) {
+		regmap_read(priv->regmap, MVEBU_COMPHY_SD1_CTRL1, &val);
+
+		switch (lane->id) {
+		case 2:
+		case 3:
+			val |= MVEBU_COMPHY_SD1_CTRL1_RXAUI0_EN;
+			break;
+		case 4:
+		case 5:
+			val |= MVEBU_COMPHY_SD1_CTRL1_RXAUI1_EN;
+			break;
+		default:
+			dev_err(priv->dev,
+				"RXAUI is not supported on comphy lane %d\n",
+				lane->id);
+			return -EINVAL;
+		}
+
+		regmap_write(priv->regmap, MVEBU_COMPHY_SD1_CTRL1, val);
+	}
+
 	/* reset */
 	val = readl(priv->base + MVEBU_COMPHY_SERDES_CFG1(lane->id));
 	val &= ~(MVEBU_COMPHY_SERDES_CFG1_RESET |
@@ -264,6 +313,8 @@ static void mvebu_comphy_ethernet_init_reset(struct mvebu_comphy_lane *lane)
 	val &= ~MVEBU_COMPHY_LOOPBACK_DBUS_WIDTH(0x7);
 	val |= MVEBU_COMPHY_LOOPBACK_DBUS_WIDTH(0x1);
 	writel(val, priv->base + MVEBU_COMPHY_LOOPBACK(lane->id));
+
+	return 0;
 }
 
 static int mvebu_comphy_init_plls(struct mvebu_comphy_lane *lane)
@@ -312,8 +363,11 @@ static int mvebu_comphy_set_mode_sgmii(struct phy *phy)
 	struct mvebu_comphy_lane *lane = phy_get_drvdata(phy);
 	struct mvebu_comphy_priv *priv = lane->priv;
 	u32 val;
+	int err;
 
-	mvebu_comphy_ethernet_init_reset(lane);
+	err = mvebu_comphy_ethernet_init_reset(lane);
+	if (err)
+		return err;
 
 	val = readl(priv->base + MVEBU_COMPHY_RX_CTRL1(lane->id));
 	val &= ~MVEBU_COMPHY_RX_CTRL1_CLK8T_EN;
@@ -337,13 +391,69 @@ static int mvebu_comphy_set_mode_sgmii(struct phy *phy)
 	return mvebu_comphy_init_plls(lane);
 }
 
+static int mvebu_comphy_set_mode_rxaui(struct phy *phy)
+{
+	struct mvebu_comphy_lane *lane = phy_get_drvdata(phy);
+	struct mvebu_comphy_priv *priv = lane->priv;
+	u32 val;
+	int err;
+
+	err = mvebu_comphy_ethernet_init_reset(lane);
+	if (err)
+		return err;
+
+	val = readl(priv->base + MVEBU_COMPHY_RX_CTRL1(lane->id));
+	val |= MVEBU_COMPHY_RX_CTRL1_RXCLK2X_SEL |
+	       MVEBU_COMPHY_RX_CTRL1_CLK8T_EN;
+	writel(val, priv->base + MVEBU_COMPHY_RX_CTRL1(lane->id));
+
+	val = readl(priv->base + MVEBU_COMPHY_DLT_CTRL(lane->id));
+	val |= MVEBU_COMPHY_DLT_CTRL_DLT_FLOOP_EN;
+	writel(val, priv->base + MVEBU_COMPHY_DLT_CTRL(lane->id));
+
+	val = readl(priv->base + MVEBU_COMPHY_SERDES_CFG2(lane->id));
+	val |= MVEBU_COMPHY_SERDES_CFG2_DFE_EN;
+	writel(val, priv->base + MVEBU_COMPHY_SERDES_CFG2(lane->id));
+
+	val = readl(priv->base + MVEBU_COMPHY_DFE_RES(lane->id));
+	val |= MVEBU_COMPHY_DFE_RES_FORCE_GEN_TBL;
+	writel(val, priv->base + MVEBU_COMPHY_DFE_RES(lane->id));
+
+	val = readl(priv->base + MVEBU_COMPHY_GEN1_S0(lane->id));
+	val &= ~MVEBU_COMPHY_GEN1_S0_TX_EMPH(0xf);
+	val |= MVEBU_COMPHY_GEN1_S0_TX_EMPH(0xd);
+	writel(val, priv->base + MVEBU_COMPHY_GEN1_S0(lane->id));
+
+	val = readl(priv->base + MVEBU_COMPHY_GEN1_S1(lane->id));
+	val &= ~(MVEBU_COMPHY_GEN1_S1_RX_MUL_PI(0x7) |
+		 MVEBU_COMPHY_GEN1_S1_RX_MUL_PF(0x7));
+	val |= MVEBU_COMPHY_GEN1_S1_RX_MUL_PI(0x1) |
+	       MVEBU_COMPHY_GEN1_S1_RX_MUL_PF(0x1) |
+	       MVEBU_COMPHY_GEN1_S1_RX_DFE_EN;
+	writel(val, priv->base + MVEBU_COMPHY_GEN1_S1(lane->id));
+
+	val = readl(priv->base + MVEBU_COMPHY_COEF(lane->id));
+	val &= ~(MVEBU_COMPHY_COEF_DFE_EN | MVEBU_COMPHY_COEF_DFE_CTRL);
+	writel(val, priv->base + MVEBU_COMPHY_COEF(lane->id));
+
+	val = readl(priv->base + MVEBU_COMPHY_GEN1_S4(lane->id));
+	val &= ~MVEBU_COMPHY_GEN1_S4_DFE_RES(0x3);
+	val |= MVEBU_COMPHY_GEN1_S4_DFE_RES(0x1);
+	writel(val, priv->base + MVEBU_COMPHY_GEN1_S4(lane->id));
+
+	return mvebu_comphy_init_plls(lane);
+}
+
 static int mvebu_comphy_set_mode_10gkr(struct phy *phy)
 {
 	struct mvebu_comphy_lane *lane = phy_get_drvdata(phy);
 	struct mvebu_comphy_priv *priv = lane->priv;
 	u32 val;
+	int err;
 
-	mvebu_comphy_ethernet_init_reset(lane);
+	err = mvebu_comphy_ethernet_init_reset(lane);
+	if (err)
+		return err;
 
 	val = readl(priv->base + MVEBU_COMPHY_RX_CTRL1(lane->id));
 	val |= MVEBU_COMPHY_RX_CTRL1_RXCLK2X_SEL |
@@ -502,6 +612,9 @@ static int mvebu_comphy_power_on(struct phy *phy)
 	case PHY_INTERFACE_MODE_2500BASEX:
 		ret = mvebu_comphy_set_mode_sgmii(phy);
 		break;
+	case PHY_INTERFACE_MODE_RXAUI:
+		ret = mvebu_comphy_set_mode_rxaui(phy);
+		break;
 	case PHY_INTERFACE_MODE_10GKR:
 		ret = mvebu_comphy_set_mode_10gkr(phy);
 		break;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
