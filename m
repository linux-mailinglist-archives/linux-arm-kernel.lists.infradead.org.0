Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1EBE7E387
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 21:51:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t/WOjk3sSCJCiFUHSPhw4xPZZH1WcinyGUjL4Jnp4cE=; b=jcYAcXsjr6QeKv
	QB/15AWQRiKkar3PIwWqbkrezeBYe4VSF3TAzjBya0nb7fNV0uTD+fnwdjZ1cuQkgefTQTkV8bUF1
	ODgHH1Ot4bwM25Y2bhfnSrxY3R1P+WylK+ydHKwfwX7i4rzzVXHvsFdK2BfJh5kLhxKcPZ4+gZVnI
	IYHg20dh01VYara8cckGufjZgOiy2tVrcO74ylMbZbRq7w0T/KoHB6h27OpafpuJfI7o7bO1tuIHY
	Utn3aFkwal7YuKMoUZhWCz106S9l18U7M2aclHhpQkhLXJFVPaL3Zuu0gCghdXzgPXYVk3dFx7rXT
	O4W1NW6HYDa6ha79QJ8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htH6x-0002h7-GZ; Thu, 01 Aug 2019 19:51:39 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htH6f-0002Se-M4
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 19:51:23 +0000
Received: by mail-qk1-x741.google.com with SMTP id a27so53047446qkk.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 12:51:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=starry.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=D/K1loka/6zG6DwB1243dPqmb+YIeBE9Vk0BGquD0uA=;
 b=rIipgiyV6ztL0sGjZbtl7FSbZnK6AWnBURAv//sDJBYMTnS44ruLL89eJi2Fc1gLzf
 41SpNZDk0PPEdu7mZJZrFG4Eqq+UpRyQol5rIF7ux6MnmEoYVaINcs9H7ljfBo5Kw2N5
 4SHpe6rJ+0kGH7Ra8uHZjfro5oYgcqM/LxdRY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=D/K1loka/6zG6DwB1243dPqmb+YIeBE9Vk0BGquD0uA=;
 b=R2kkOYciKdRfHY2j/E+lj04xTaMU93gjPOVCnJW2U1AkGd6qSZlb01XN6YhgM7l2Ly
 e17qmHC6zwU7l8dj6CEB4Y6AwSdUUAM39ti91DuT4Gc9xFN/s9T+C9Ih2GWGc54cVY9w
 k1I2fW7ObUDW1eomPkx8wz5IkjsFcX/RlcluRW2QPMNWSNiU95WBi3El1GxN7JYV2nQ5
 +65hk/pZWbN++Bu98PXAtYjN3DSLfYofcd6t9+W+8D4N/x3tnkQiuvG9UyTxzHiYC8Gv
 pNP7zjpsoUs2LP4+lHnTnONTULbjSv72Kq0PDPg7Ld7lOU0k9yR+ueR/WK0yyJSDiUFZ
 kXOA==
X-Gm-Message-State: APjAAAX0lMrxs/ENzDM0oG7Gpqag+TILjr+dw/QaDVz8MSGwOJgPGXth
 wR637HdMVhHGxfrs2f0wZjhcnw==
X-Google-Smtp-Source: APXvYqwqVy85RtMqklKEkeAy3tMF0/TY1NNt7W0rkaAzUBYOP3aIXfdsS+aNntrY/aIgejujnk3SAA==
X-Received: by 2002:ae9:ea17:: with SMTP id f23mr67338580qkg.236.1564689079639; 
 Thu, 01 Aug 2019 12:51:19 -0700 (PDT)
Received: from localhost.localdomain (205-201-16-55.starry-inc.net.
 [205.201.16.55])
 by smtp.gmail.com with ESMTPSA id h4sm31271944qkk.39.2019.08.01.12.51.18
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 01 Aug 2019 12:51:19 -0700 (PDT)
From: Matt Pelland <mpelland@starry.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 2/4] phy: marvell: phy-mvebu-cp110-comphy: rename instances of
 DLT
Date: Thu,  1 Aug 2019 15:50:59 -0400
Message-Id: <20190801195059.24005-3-mpelland@starry.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190801195059.24005-1-mpelland@starry.com>
References: <20190801195059.24005-1-mpelland@starry.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_125121_718808_4E4F6202 
X-CRM114-Status: GOOD (  11.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
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

The documentation for Marvell's cp110 phy refers to these
registers/register regions as DTL control, DTL frequency loop enable,
etc. This patch aligns the relevant code for these accordingly.

Signed-off-by: Matt Pelland <mpelland@starry.com>
---
 drivers/phy/marvell/phy-mvebu-cp110-comphy.c | 22 ++++++++++----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/phy/marvell/phy-mvebu-cp110-comphy.c b/drivers/phy/marvell/phy-mvebu-cp110-comphy.c
index f7f8d2bfd641..f0c02e426da4 100644
--- a/drivers/phy/marvell/phy-mvebu-cp110-comphy.c
+++ b/drivers/phy/marvell/phy-mvebu-cp110-comphy.c
@@ -78,8 +78,8 @@
 #define MVEBU_COMPHY_TX_SLEW_RATE(n)		(0x974 + (n) * 0x1000)
 #define     MVEBU_COMPHY_TX_SLEW_RATE_EMPH(n)	((n) << 5)
 #define     MVEBU_COMPHY_TX_SLEW_RATE_SLC(n)	((n) << 10)
-#define MVEBU_COMPHY_DLT_CTRL(n)		(0x984 + (n) * 0x1000)
-#define     MVEBU_COMPHY_DLT_CTRL_DTL_FLOOP_EN	BIT(2)
+#define MVEBU_COMPHY_DTL_CTRL(n)		(0x984 + (n) * 0x1000)
+#define     MVEBU_COMPHY_DTL_CTRL_DTL_FLOOP_EN	BIT(2)
 #define MVEBU_COMPHY_FRAME_DETECT0(n)		(0xa14 + (n) * 0x1000)
 #define     MVEBU_COMPHY_FRAME_DETECT0_PATN(n)	((n) << 7)
 #define MVEBU_COMPHY_FRAME_DETECT3(n)		(0xa20 + (n) * 0x1000)
@@ -374,9 +374,9 @@ static int mvebu_comphy_set_mode_sgmii(struct phy *phy)
 	val |= MVEBU_COMPHY_RX_CTRL1_RXCLK2X_SEL;
 	writel(val, priv->base + MVEBU_COMPHY_RX_CTRL1(lane->id));
 
-	val = readl(priv->base + MVEBU_COMPHY_DLT_CTRL(lane->id));
-	val &= ~MVEBU_COMPHY_DLT_CTRL_DTL_FLOOP_EN;
-	writel(val, priv->base + MVEBU_COMPHY_DLT_CTRL(lane->id));
+	val = readl(priv->base + MVEBU_COMPHY_DTL_CTRL(lane->id));
+	val &= ~MVEBU_COMPHY_DTL_CTRL_DTL_FLOOP_EN;
+	writel(val, priv->base + MVEBU_COMPHY_DTL_CTRL(lane->id));
 
 	regmap_read(priv->regmap, MVEBU_COMPHY_CONF1(lane->id), &val);
 	val &= ~MVEBU_COMPHY_CONF1_USB_PCIE;
@@ -407,9 +407,9 @@ static int mvebu_comphy_set_mode_rxaui(struct phy *phy)
 	       MVEBU_COMPHY_RX_CTRL1_CLK8T_EN;
 	writel(val, priv->base + MVEBU_COMPHY_RX_CTRL1(lane->id));
 
-	val = readl(priv->base + MVEBU_COMPHY_DLT_CTRL(lane->id));
-	val |= MVEBU_COMPHY_DLT_CTRL_DLT_FLOOP_EN;
-	writel(val, priv->base + MVEBU_COMPHY_DLT_CTRL(lane->id));
+	val = readl(priv->base + MVEBU_COMPHY_DTL_CTRL(lane->id));
+	val |= MVEBU_COMPHY_DTL_CTRL_DTL_FLOOP_EN;
+	writel(val, priv->base + MVEBU_COMPHY_DTL_CTRL(lane->id));
 
 	val = readl(priv->base + MVEBU_COMPHY_SERDES_CFG2(lane->id));
 	val |= MVEBU_COMPHY_SERDES_CFG2_DFE_EN;
@@ -460,9 +460,9 @@ static int mvebu_comphy_set_mode_10gkr(struct phy *phy)
 	       MVEBU_COMPHY_RX_CTRL1_CLK8T_EN;
 	writel(val, priv->base + MVEBU_COMPHY_RX_CTRL1(lane->id));
 
-	val = readl(priv->base + MVEBU_COMPHY_DLT_CTRL(lane->id));
-	val |= MVEBU_COMPHY_DLT_CTRL_DTL_FLOOP_EN;
-	writel(val, priv->base + MVEBU_COMPHY_DLT_CTRL(lane->id));
+	val = readl(priv->base + MVEBU_COMPHY_DTL_CTRL(lane->id));
+	val |= MVEBU_COMPHY_DTL_CTRL_DTL_FLOOP_EN;
+	writel(val, priv->base + MVEBU_COMPHY_DTL_CTRL(lane->id));
 
 	/* Speed divider */
 	val = readl(priv->base + MVEBU_COMPHY_SPEED_DIV(lane->id));
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
