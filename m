Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23FD1FEC5D
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 16 Nov 2019 13:55:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+pq461RwsGfeAKNwiqRmcG1C7YFq0zLN5r81+qF6Gz0=; b=kbGgrv+uic4GQhqzQlwrWp1Aay
	3BdUxTK4KoYN/SSdpGpJuB8vMoTD2m8yO6D/AJYq1YQHCoW+oBBkdWtKoenbupiZgbTUxMdP8zmYI
	XL2RLXB/P4SMF+dGS6XukrrVuOgxs8xMNRApal9SAhQZxKGWfUhoNoARImUU2jZM1JkCjmTjCJFkV
	ic8lV+9OxGje4WyqU4yQsya7UaQXmlJSo7RXxM2NP+XRYdxPpB/N5lcePj+Ljex3ruWAtnwhVXZwp
	oRolYZU8VMTI0+bFYk2NB0O1ZCNViE/PIHJp1iV7x3g13q/AmY465KnQhon4VuwrGIGT6++vttS/1
	xwaorz6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVxbe-0000uw-CW; Sat, 16 Nov 2019 12:55:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVxb0-0000df-SN; Sat, 16 Nov 2019 12:54:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AC8F1C86;
 Sat, 16 Nov 2019 04:54:33 -0800 (PST)
Received: from DESKTOP-VLO843J.lan (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 2FFBB3F534;
 Sat, 16 Nov 2019 04:54:32 -0800 (PST)
From: Robin Murphy <robin.murphy@arm.com>
To: shawn.lin@rock-chips.com, lorenzo.pieralisi@arm.com, andrew.murray@arm.com
Subject: [PATCH 2/2] PCI: rockchip: Simplify optional regulator handling
Date: Sat, 16 Nov 2019 12:54:20 +0000
Message-Id: <347bc3ef8399577e4cef3fdbf3af34d20b4ad27e.1573908530.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <1eebc002101931012d337cda23d18f85b0326361.1573908530.git.robin.murphy@arm.com>
References: <1eebc002101931012d337cda23d18f85b0326361.1573908530.git.robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_045435_000210_EED0E3AE 
X-CRM114-Status: GOOD (  12.72  )
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

Null checks are both cheaper and more readable than having !IS_ERR()
splattered everywhere.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/pci/controller/pcie-rockchip-host.c | 20 +++++++++++---------
 1 file changed, 11 insertions(+), 9 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
index 68525f8ac4d9..a61819efc0c1 100644
--- a/drivers/pci/controller/pcie-rockchip-host.c
+++ b/drivers/pci/controller/pcie-rockchip-host.c
@@ -262,7 +262,7 @@ static void rockchip_pcie_set_power_limit(struct rockchip_pcie *rockchip)
 	int curr;
 	u32 status, scale, power;
 
-	if (IS_ERR(rockchip->vpcie3v3))
+	if (!rockchip->vpcie3v3)
 		return;
 
 	/*
@@ -611,6 +611,7 @@ static int rockchip_pcie_parse_host_dt(struct rockchip_pcie *rockchip)
 		if (PTR_ERR(rockchip->vpcie12v) != -ENODEV)
 			return PTR_ERR(rockchip->vpcie12v);
 		dev_info(dev, "no vpcie12v regulator found\n");
+		rockchip->vpcie12v = NULL;
 	}
 
 	rockchip->vpcie3v3 = devm_regulator_get_optional(dev, "vpcie3v3");
@@ -618,6 +619,7 @@ static int rockchip_pcie_parse_host_dt(struct rockchip_pcie *rockchip)
 		if (PTR_ERR(rockchip->vpcie3v3) != -ENODEV)
 			return PTR_ERR(rockchip->vpcie3v3);
 		dev_info(dev, "no vpcie3v3 regulator found\n");
+		rockchip->vpcie3v3 = NULL;
 	}
 
 	rockchip->vpcie1v8 = devm_regulator_get(dev, "vpcie1v8");
@@ -636,7 +638,7 @@ static int rockchip_pcie_set_vpcie(struct rockchip_pcie *rockchip)
 	struct device *dev = rockchip->dev;
 	int err;
 
-	if (!IS_ERR(rockchip->vpcie12v)) {
+	if (rockchip->vpcie12v) {
 		err = regulator_enable(rockchip->vpcie12v);
 		if (err) {
 			dev_err(dev, "fail to enable vpcie12v regulator\n");
@@ -644,7 +646,7 @@ static int rockchip_pcie_set_vpcie(struct rockchip_pcie *rockchip)
 		}
 	}
 
-	if (!IS_ERR(rockchip->vpcie3v3)) {
+	if (rockchip->vpcie3v3) {
 		err = regulator_enable(rockchip->vpcie3v3);
 		if (err) {
 			dev_err(dev, "fail to enable vpcie3v3 regulator\n");
@@ -669,10 +671,10 @@ static int rockchip_pcie_set_vpcie(struct rockchip_pcie *rockchip)
 err_disable_1v8:
 	regulator_disable(rockchip->vpcie1v8);
 err_disable_3v3:
-	if (!IS_ERR(rockchip->vpcie3v3))
+	if (rockchip->vpcie3v3)
 		regulator_disable(rockchip->vpcie3v3);
 err_disable_12v:
-	if (!IS_ERR(rockchip->vpcie12v))
+	if (rockchip->vpcie12v)
 		regulator_disable(rockchip->vpcie12v);
 err_out:
 	return err;
@@ -1062,9 +1064,9 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
 err_deinit_port:
 	rockchip_pcie_deinit_phys(rockchip);
 err_vpcie:
-	if (!IS_ERR(rockchip->vpcie12v))
+	if (rockchip->vpcie12v)
 		regulator_disable(rockchip->vpcie12v);
-	if (!IS_ERR(rockchip->vpcie3v3))
+	if (rockchip->vpcie3v3)
 		regulator_disable(rockchip->vpcie3v3);
 	regulator_disable(rockchip->vpcie1v8);
 	regulator_disable(rockchip->vpcie0v9);
@@ -1087,9 +1089,9 @@ static int rockchip_pcie_remove(struct platform_device *pdev)
 
 	rockchip_pcie_disable_clocks(rockchip);
 
-	if (!IS_ERR(rockchip->vpcie12v))
+	if (rockchip->vpcie12v)
 		regulator_disable(rockchip->vpcie12v);
-	if (!IS_ERR(rockchip->vpcie3v3))
+	if (rockchip->vpcie3v3)
 		regulator_disable(rockchip->vpcie3v3);
 	regulator_disable(rockchip->vpcie1v8);
 	regulator_disable(rockchip->vpcie0v9);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
