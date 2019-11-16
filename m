Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96A2CFEC5B
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 16 Nov 2019 13:54:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Lk4CjGtp1Ec4X6k/PT20iEM6n9N+4WKB6UVViIA3x2U=; b=pPf
	e6TnOA1dP9w0/53IgcIRTa+GdKAe+5ECWfI4Rh6m6os582a44pampCNVyCYldHqwkEiHCtGUQRq1o
	rdkUGm+PLe2Wp+sHlig3Ygl02V5m2ZEAx0eUHHi4+GuBSFFww3LZjp5KZxCGI2XNXY4BecIrNc7Tm
	0c2VOgvzzI18vgSx5ck+/3gXADWORqAVQ/sUrixqaF4Oq1W5Jb/UKkFm96BF1cFi1ewIB/2T0x5Mu
	r/caOYBYSAMXTiVs1oknQzT1qiac9UWvN99/v3gJ/9cDQbrPgsRxw4UQfyhoBX5iF0BmY8cuRbUfB
	pOywpdiANphzCj8K6jOBTDBMlnQ9JMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVxb9-0000dt-54; Sat, 16 Nov 2019 12:54:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVxay-0000dI-Nk; Sat, 16 Nov 2019 12:54:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DC58830E;
 Sat, 16 Nov 2019 04:54:31 -0800 (PST)
Received: from DESKTOP-VLO843J.lan (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 608483F534;
 Sat, 16 Nov 2019 04:54:30 -0800 (PST)
From: Robin Murphy <robin.murphy@arm.com>
To: shawn.lin@rock-chips.com, lorenzo.pieralisi@arm.com, andrew.murray@arm.com
Subject: [PATCH 1/2] PCI: rockchip: Make some regulators non-optional
Date: Sat, 16 Nov 2019 12:54:19 +0000
Message-Id: <1eebc002101931012d337cda23d18f85b0326361.1573908530.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_045432_862922_C6709848 
X-CRM114-Status: GOOD (  13.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: heiko@sntech.de, linux-pci@vger.kernel.org, lgirdwood@gmail.com,
 linux-rockchip@lists.infradead.org, broonie@kernel.org, bhelgaas@google.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The 0V9 and 1V8 supplies power the PCIe block in the SoC itself, and
are thus fundamental to PCIe being usable at all. As such, it makes
sense to treat them as non-optional and rely on dummy regulators if
not explicitly described.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/pci/controller/pcie-rockchip-host.c | 69 ++++++++-------------
 1 file changed, 25 insertions(+), 44 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
index ef8e677ce9d1..68525f8ac4d9 100644
--- a/drivers/pci/controller/pcie-rockchip-host.c
+++ b/drivers/pci/controller/pcie-rockchip-host.c
@@ -620,19 +620,13 @@ static int rockchip_pcie_parse_host_dt(struct rockchip_pcie *rockchip)
 		dev_info(dev, "no vpcie3v3 regulator found\n");
 	}
 
-	rockchip->vpcie1v8 = devm_regulator_get_optional(dev, "vpcie1v8");
-	if (IS_ERR(rockchip->vpcie1v8)) {
-		if (PTR_ERR(rockchip->vpcie1v8) != -ENODEV)
-			return PTR_ERR(rockchip->vpcie1v8);
-		dev_info(dev, "no vpcie1v8 regulator found\n");
-	}
+	rockchip->vpcie1v8 = devm_regulator_get(dev, "vpcie1v8");
+	if (IS_ERR(rockchip->vpcie1v8))
+		return PTR_ERR(rockchip->vpcie1v8);
 
-	rockchip->vpcie0v9 = devm_regulator_get_optional(dev, "vpcie0v9");
-	if (IS_ERR(rockchip->vpcie0v9)) {
-		if (PTR_ERR(rockchip->vpcie0v9) != -ENODEV)
-			return PTR_ERR(rockchip->vpcie0v9);
-		dev_info(dev, "no vpcie0v9 regulator found\n");
-	}
+	rockchip->vpcie0v9 = devm_regulator_get(dev, "vpcie0v9");
+	if (IS_ERR(rockchip->vpcie0v9))
+		return PTR_ERR(rockchip->vpcie0v9);
 
 	return 0;
 }
@@ -658,27 +652,22 @@ static int rockchip_pcie_set_vpcie(struct rockchip_pcie *rockchip)
 		}
 	}
 
-	if (!IS_ERR(rockchip->vpcie1v8)) {
-		err = regulator_enable(rockchip->vpcie1v8);
-		if (err) {
-			dev_err(dev, "fail to enable vpcie1v8 regulator\n");
-			goto err_disable_3v3;
-		}
+	err = regulator_enable(rockchip->vpcie1v8);
+	if (err) {
+		dev_err(dev, "fail to enable vpcie1v8 regulator\n");
+		goto err_disable_3v3;
 	}
 
-	if (!IS_ERR(rockchip->vpcie0v9)) {
-		err = regulator_enable(rockchip->vpcie0v9);
-		if (err) {
-			dev_err(dev, "fail to enable vpcie0v9 regulator\n");
-			goto err_disable_1v8;
-		}
+	err = regulator_enable(rockchip->vpcie0v9);
+	if (err) {
+		dev_err(dev, "fail to enable vpcie0v9 regulator\n");
+		goto err_disable_1v8;
 	}
 
 	return 0;
 
 err_disable_1v8:
-	if (!IS_ERR(rockchip->vpcie1v8))
-		regulator_disable(rockchip->vpcie1v8);
+	regulator_disable(rockchip->vpcie1v8);
 err_disable_3v3:
 	if (!IS_ERR(rockchip->vpcie3v3))
 		regulator_disable(rockchip->vpcie3v3);
@@ -897,8 +886,7 @@ static int __maybe_unused rockchip_pcie_suspend_noirq(struct device *dev)
 
 	rockchip_pcie_disable_clocks(rockchip);
 
-	if (!IS_ERR(rockchip->vpcie0v9))
-		regulator_disable(rockchip->vpcie0v9);
+	regulator_disable(rockchip->vpcie0v9);
 
 	return ret;
 }
@@ -908,12 +896,10 @@ static int __maybe_unused rockchip_pcie_resume_noirq(struct device *dev)
 	struct rockchip_pcie *rockchip = dev_get_drvdata(dev);
 	int err;
 
-	if (!IS_ERR(rockchip->vpcie0v9)) {
-		err = regulator_enable(rockchip->vpcie0v9);
-		if (err) {
-			dev_err(dev, "fail to enable vpcie0v9 regulator\n");
-			return err;
-		}
+	err = regulator_enable(rockchip->vpcie0v9);
+	if (err) {
+		dev_err(dev, "fail to enable vpcie0v9 regulator\n");
+		return err;
 	}
 
 	err = rockchip_pcie_enable_clocks(rockchip);
@@ -939,8 +925,7 @@ static int __maybe_unused rockchip_pcie_resume_noirq(struct device *dev)
 err_pcie_resume:
 	rockchip_pcie_disable_clocks(rockchip);
 err_disable_0v9:
-	if (!IS_ERR(rockchip->vpcie0v9))
-		regulator_disable(rockchip->vpcie0v9);
+	regulator_disable(rockchip->vpcie0v9);
 	return err;
 }
 
@@ -1081,10 +1066,8 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
 		regulator_disable(rockchip->vpcie12v);
 	if (!IS_ERR(rockchip->vpcie3v3))
 		regulator_disable(rockchip->vpcie3v3);
-	if (!IS_ERR(rockchip->vpcie1v8))
-		regulator_disable(rockchip->vpcie1v8);
-	if (!IS_ERR(rockchip->vpcie0v9))
-		regulator_disable(rockchip->vpcie0v9);
+	regulator_disable(rockchip->vpcie1v8);
+	regulator_disable(rockchip->vpcie0v9);
 err_set_vpcie:
 	rockchip_pcie_disable_clocks(rockchip);
 	return err;
@@ -1108,10 +1091,8 @@ static int rockchip_pcie_remove(struct platform_device *pdev)
 		regulator_disable(rockchip->vpcie12v);
 	if (!IS_ERR(rockchip->vpcie3v3))
 		regulator_disable(rockchip->vpcie3v3);
-	if (!IS_ERR(rockchip->vpcie1v8))
-		regulator_disable(rockchip->vpcie1v8);
-	if (!IS_ERR(rockchip->vpcie0v9))
-		regulator_disable(rockchip->vpcie0v9);
+	regulator_disable(rockchip->vpcie1v8);
+	regulator_disable(rockchip->vpcie0v9);
 
 	return 0;
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
