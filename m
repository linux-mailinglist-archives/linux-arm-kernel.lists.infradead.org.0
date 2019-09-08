Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E872CACF0C
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Sep 2019 15:44:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Kb7V7h3/puB/d2HBj+ISufAVpzAdLZpZ5wC6zX5SXJM=; b=fh+8/C2/rSHbMLlkRKlCgZtY+6
	paZU3ihLDLnsjtfHKDfaoBOxToYlzF28HmHa73KJA1HqlxK3tyhK+GgTYzkWnKvHd2Y7zmaPHxAXV
	xbBcibI5NXx2M/OEfqk+/2gWX9U+H+lf3N5deYqJcUOMA9BIFQPXoSOFI/pyvzpcKmQ8qJ4RQhZ5J
	WJG5Z3ohIgrvHNQHKKuzHAoz3YmPx+wkRZVVsYz1bYyaqXD4JthjR3KFM1MrW2DC8JFYlXpPdvrGl
	5hgDpxFtLUD8aTc5RMF9tapHtfA5cGB0VRmp1lIMUDFAwKsJVTf2n+XYCcqJh26pv5e+F49qW+IJQ
	Ia0zDSUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6xU4-0006Bx-KU; Sun, 08 Sep 2019 13:44:04 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6xTC-0004r0-MU
 for linux-arm-kernel@lists.infradead.org; Sun, 08 Sep 2019 13:43:15 +0000
Received: by mail-wm1-x344.google.com with SMTP id r195so11749113wme.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 08 Sep 2019 06:43:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=q+gXveabjDvHhpC6qc1CpmFJ+TUvrJis+m/C9VqLzqg=;
 b=oyzu7bG1+xZEGvR7Q39Urdd69S90lU+u85NJ3+bouVhgvWfcTkeZKIML4knyo+zEGY
 qIiNlXKSIlPDz4FKoEZ0tY2S795jdYq+42rvpKTnuDlbQfcI0DBNRDbHp1WUSyvhx74S
 iOI8IBPQeSOoEnHq9kk+PXvSKq+d0dH9n6eqKZq7Z0uNO0TbtswNp1LvOnBiKSDcleD9
 Q3OooNLwF9aNi6EZpwYQLyvRs2BrXyke692fgLx+GtcYuJ8aRiI5tCYq0R2QfC43aXpy
 zzdopT+xtX9s9zbKzFiPmYkysxZ2jlcnYn4ZIJYyN1qgwOFe7tYhOe+bAIhYsE1d3Opl
 DmVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=q+gXveabjDvHhpC6qc1CpmFJ+TUvrJis+m/C9VqLzqg=;
 b=Q6oxV7baf4ys7WD8lQn9mmtl+l1aow2oGtaGaD2+qJVrZiiRhIRyfK0tEW+21YzEnC
 TaW0969h8RXyCwpgbQcMzG9nH00LbfofYMvxmUwuYj3q2oZWce7NyrI/SgWcUCqBoGus
 ZUcbNCZCEn+kVbc7JgCkrmis99oeLzqkbR50dQ2D0QSMUYrLoVvgUG0hptZRN/swvKSC
 ODTBprQEXq8mMIigHCBB9tybx7q3MVJW3e6XH/xYWqPtfDfFH6QsdB3pJGvI4KXLj7db
 kSv+KB7ipILLBI7xalNBMinBu153AIkXElrJVBmsP/LsLQ1GEJ4AGyxH6eHjLVgOOoE0
 yClQ==
X-Gm-Message-State: APjAAAXnKwd1/ucwbIF33gM10E3AvtWejVQOFIqkDirKz13M4pdAD028
 4KdBQpD0jSK3NjDsDYqPoXCpbA==
X-Google-Smtp-Source: APXvYqxg5Y6Z+b5UiFBPJdp9at+q+phrtN1UeWj0gzoHG8ymBgjCeT8PdTC/1TlSmNMAondOSSD/8A==
X-Received: by 2002:a1c:ef18:: with SMTP id n24mr14961141wmh.29.1567950188879; 
 Sun, 08 Sep 2019 06:43:08 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.gmail.com with ESMTPSA id t203sm14313902wmf.42.2019.09.08.06.43.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 08 Sep 2019 06:43:08 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com, bhelgaas@google.com, lorenzo.pieralisi@arm.com,
 yue.wang@Amlogic.com, kishon@ti.com
Subject: [PATCH 4/6] phy: meson-g12a-usb3-pcie: Add support for PCIe mode
Date: Sun,  8 Sep 2019 13:42:56 +0000
Message-Id: <1567950178-4466-5-git-send-email-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1567950178-4466-1-git-send-email-narmstrong@baylibre.com>
References: <1567950178-4466-1-git-send-email-narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190908_064310_732603_DF84C1BF 
X-CRM114-Status: GOOD (  16.87  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, maz@kernel.org,
 linux-kernel@vger.kernel.org, repk@triplefau.lt, linux-pci@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds extended PCIe PHY functions for the Amlogic G12A
USB3+PCIE Combo PHY to support reset, power_on and power_off for
PCIe exclusively.

With these callbacks, we can handle all the needed operations of the
Amlogic PCIe controller driver.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../phy/amlogic/phy-meson-g12a-usb3-pcie.c    | 70 ++++++++++++++++---
 1 file changed, 61 insertions(+), 9 deletions(-)

diff --git a/drivers/phy/amlogic/phy-meson-g12a-usb3-pcie.c b/drivers/phy/amlogic/phy-meson-g12a-usb3-pcie.c
index ac322d643c7a..08e322789e59 100644
--- a/drivers/phy/amlogic/phy-meson-g12a-usb3-pcie.c
+++ b/drivers/phy/amlogic/phy-meson-g12a-usb3-pcie.c
@@ -50,6 +50,8 @@
 	#define PHY_R5_PHY_CR_ACK				BIT(16)
 	#define PHY_R5_PHY_BS_OUT				BIT(17)
 
+#define PCIE_RESET_DELAY					500
+
 struct phy_g12a_usb3_pcie_priv {
 	struct regmap		*regmap;
 	struct regmap		*regmap_cr;
@@ -196,6 +198,10 @@ static int phy_g12a_usb3_init(struct phy *phy)
 	struct phy_g12a_usb3_pcie_priv *priv = phy_get_drvdata(phy);
 	int data, ret;
 
+	ret = reset_control_reset(priv->reset);
+	if (ret)
+		return ret;
+
 	/* Switch PHY to USB3 */
 	/* TODO figure out how to handle when PCIe was set in the bootloader */
 	regmap_update_bits(priv->regmap, PHY_R0,
@@ -272,24 +278,64 @@ static int phy_g12a_usb3_init(struct phy *phy)
 	return 0;
 }
 
-static int phy_g12a_usb3_pcie_init(struct phy *phy)
+static int phy_g12a_usb3_pcie_power_on(struct phy *phy)
+{
+	struct phy_g12a_usb3_pcie_priv *priv = phy_get_drvdata(phy);
+
+	if (priv->mode == PHY_TYPE_USB3)
+		return 0;
+
+	regmap_update_bits(priv->regmap, PHY_R0,
+			   PHY_R0_PCIE_POWER_STATE,
+			   FIELD_PREP(PHY_R0_PCIE_POWER_STATE, 0x1c));
+
+	return 0;
+}
+
+static int phy_g12a_usb3_pcie_power_off(struct phy *phy)
+{
+	struct phy_g12a_usb3_pcie_priv *priv = phy_get_drvdata(phy);
+
+	if (priv->mode == PHY_TYPE_USB3)
+		return 0;
+
+	regmap_update_bits(priv->regmap, PHY_R0,
+			   PHY_R0_PCIE_POWER_STATE,
+			   FIELD_PREP(PHY_R0_PCIE_POWER_STATE, 0x1d));
+
+	return 0;
+}
+
+static int phy_g12a_usb3_pcie_reset(struct phy *phy)
 {
 	struct phy_g12a_usb3_pcie_priv *priv = phy_get_drvdata(phy);
 	int ret;
 
-	ret = reset_control_reset(priv->reset);
+	if (priv->mode == PHY_TYPE_USB3)
+		return 0;
+
+	ret = reset_control_assert(priv->reset);
 	if (ret)
 		return ret;
 
+	udelay(PCIE_RESET_DELAY);
+
+	ret = reset_control_deassert(priv->reset);
+	if (ret)
+		return ret;
+
+	udelay(PCIE_RESET_DELAY);
+
+	return 0;
+}
+
+static int phy_g12a_usb3_pcie_init(struct phy *phy)
+{
+	struct phy_g12a_usb3_pcie_priv *priv = phy_get_drvdata(phy);
+
 	if (priv->mode == PHY_TYPE_USB3)
 		return phy_g12a_usb3_init(phy);
 
-	/* Power UP PCIE */
-	/* TODO figure out when the bootloader has set USB3 mode before */
-	regmap_update_bits(priv->regmap, PHY_R0,
-			   PHY_R0_PCIE_POWER_STATE,
-			   FIELD_PREP(PHY_R0_PCIE_POWER_STATE, 0x1c));
-
 	return 0;
 }
 
@@ -297,7 +343,10 @@ static int phy_g12a_usb3_pcie_exit(struct phy *phy)
 {
 	struct phy_g12a_usb3_pcie_priv *priv = phy_get_drvdata(phy);
 
-	return reset_control_reset(priv->reset);
+	if (priv->mode == PHY_TYPE_USB3)
+		return reset_control_reset(priv->reset);
+
+	return 0;
 }
 
 static struct phy *phy_g12a_usb3_pcie_xlate(struct device *dev,
@@ -326,6 +375,9 @@ static struct phy *phy_g12a_usb3_pcie_xlate(struct device *dev,
 static const struct phy_ops phy_g12a_usb3_pcie_ops = {
 	.init		= phy_g12a_usb3_pcie_init,
 	.exit		= phy_g12a_usb3_pcie_exit,
+	.power_on	= phy_g12a_usb3_pcie_power_on,
+	.power_off	= phy_g12a_usb3_pcie_power_off,
+	.reset		= phy_g12a_usb3_pcie_reset,
 	.owner		= THIS_MODULE,
 };
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
