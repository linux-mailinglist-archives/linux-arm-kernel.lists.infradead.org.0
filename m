Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4D4FB3ABD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 14:52:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vWjv5oEAxN9YfqVIMLWjRM1EWl+cGiL2tLUlkwsrgdU=; b=aRFSx0M7WuGlcu
	pPFMYWFZVUd3ZQ9fL+rU2wBJZ9Sfr+QaudwbwY5fKK5Hsujoi7KBb/gBEmQQf7FO5flqshShQWNzy
	QDJ/FXPf5OyWN/WQ1VWhkoKuX0DQZ5ND7WYI3oR8G7ixUXcffHP6HU/7FmigBmf0GCjafFBFjGFlL
	sfQ1L8GkvbogiBmlYixbBJNvybGVTdLldOb91ZpsBc4JqoWYsnLVNdhKOXNM1/sUn0+Vpg+1oLpkr
	IGFtbzx7lqw0QRBNonchtlraVvePnaWN75hdIJK0eyBlxznQbPyASPxFP+sQIcDOAk3dZnHQcZo9c
	cp98RlLlJslV27E9XOKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9qUn-00044i-6w; Mon, 16 Sep 2019 12:52:45 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9qSb-0002oA-Dx
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 12:50:33 +0000
Received: by mail-wr1-x442.google.com with SMTP id i18so8058586wru.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Sep 2019 05:50:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=l+Hjb1KZXu9Y+kfoSzj2+UuCM6t2hRuLtjmW3mDPljc=;
 b=KUcpVPrDi8HaBFJDSDar0cFx9ymhhGZ5WqfIzWJdIf8xz+ylf9qIUl9u++yqbV6aSA
 ZQNKyxh/EqwXceW6W8coRjudYwFXRsDpeNHA6fqzn9BxqmdTlVqKayFXbdQqDzawgI4d
 LepD21ZFu386GTyTW3I7aOaJon1cS6nh8K0UhE/6A0uBnmVRZeFIteeljbB5zIZkDOqt
 BEnBk0b1HmQuVCGSvew1pouuuFKx919qztABNpbZo6W396GzJyZo1KxwSKiGSueCr/UC
 VFaahvA/YssGc38soZ3xr0MLMxZ7SvDaSI/ahCuwWtD+v6dIfEQ6jitSaGfwiBoZohCi
 aHkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=l+Hjb1KZXu9Y+kfoSzj2+UuCM6t2hRuLtjmW3mDPljc=;
 b=FnusjwkO3a5apa3GA2kn/lg/bUD2Q9sGDbSw8IpDBrL80KL0aQaBRE3c3xOtqeQxxu
 Dlzl7SnCHzrXIwbmysohgFLUvRJ00Ms4856hLhQm+InWgbXMLoz/tHs4fkHfvTSwdFzz
 96nernX405ccExe69pev8R90cVdxF8gHSqRKLoMkGGRpEkGa3qHPH5JElNzEUbc+qe8n
 bNkkO9zLIqHxVk81vJZy/vvPkE2CZcI3bzjq9xb0o1qHEjenDHJ8e2+4u2p5VjL6Ws0Y
 mGrxtohwntDP5SwgXzkUXEllINONDZeFZU90T2vUHa1IOzrjfkjCfgwaW7VEktn/robk
 Je5w==
X-Gm-Message-State: APjAAAVyniVlO4ATsMloBCzDJFs/lAyvSUzj6TUMD4yHZuBlL0tpWN4N
 195ocrAz1D++35Q48lJIVB4Fgg==
X-Google-Smtp-Source: APXvYqxwnkva6dHx+V5SOAT97517JhRt9Wr5dcN5qaTd/V2MxMj7/CjmemHmTPjBqBjwDNxDLI+kGw==
X-Received: by 2002:a5d:6088:: with SMTP id w8mr9806148wrt.31.1568638227671;
 Mon, 16 Sep 2019 05:50:27 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id o12sm15109960wrm.23.2019.09.16.05.50.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Sep 2019 05:50:27 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com, lorenzo.pieralisi@arm.com, kishon@ti.com,
 bhelgaas@google.com, andrew.murray@arm.com
Subject: [PATCH v2 3/6] PCI: amlogic: meson: Add support for G12A
Date: Mon, 16 Sep 2019 14:50:19 +0200
Message-Id: <20190916125022.10754-4-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190916125022.10754-1-narmstrong@baylibre.com>
References: <20190916125022.10754-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_055029_466128_E549CCFD 
X-CRM114-Status: GOOD (  17.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: gouwa@khadas.com, Neil Armstrong <narmstrong@baylibre.com>,
 linux-pci@vger.kernel.org, nick@khadas.com, linux-kernel@vger.kernel.org,
 yue.wang@Amlogic.com, repk@triplefau.lt, maz@kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for the Amlogic G12A SoC using a separate shared PHY.

This adds support for fetching a PHY phandle and call the PHY init,
reset and power on/off calls instead of writing in the PHY register or
toggling the PHY reset line.

The MIPI clock and the PHY memory resource are only required for the
Amlogic AXG SoC PCIe PHY setup, thus these elements are ignored for
the Amlogic G12A having a separate shared PHY.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/pci/controller/dwc/pci-meson.c | 128 ++++++++++++++++++++-----
 1 file changed, 105 insertions(+), 23 deletions(-)

diff --git a/drivers/pci/controller/dwc/pci-meson.c b/drivers/pci/controller/dwc/pci-meson.c
index ab79990798f8..3772b02a5c55 100644
--- a/drivers/pci/controller/dwc/pci-meson.c
+++ b/drivers/pci/controller/dwc/pci-meson.c
@@ -16,6 +16,7 @@
 #include <linux/reset.h>
 #include <linux/resource.h>
 #include <linux/types.h>
+#include <linux/phy/phy.h>
 
 #include "pcie-designware.h"
 
@@ -96,12 +97,18 @@ struct meson_pcie_rc_reset {
 	struct reset_control *apb;
 };
 
+struct meson_pcie_param {
+	bool has_shared_phy;
+};
+
 struct meson_pcie {
 	struct dw_pcie pci;
 	struct meson_pcie_mem_res mem_res;
 	struct meson_pcie_clk_res clk_res;
 	struct meson_pcie_rc_reset mrst;
 	struct gpio_desc *reset_gpio;
+	struct phy *phy;
+	const struct meson_pcie_param *param;
 };
 
 static struct reset_control *meson_pcie_get_reset(struct meson_pcie *mp,
@@ -123,10 +130,12 @@ static int meson_pcie_get_resets(struct meson_pcie *mp)
 {
 	struct meson_pcie_rc_reset *mrst = &mp->mrst;
 
-	mrst->phy = meson_pcie_get_reset(mp, "phy", PCIE_SHARED_RESET);
-	if (IS_ERR(mrst->phy))
-		return PTR_ERR(mrst->phy);
-	reset_control_deassert(mrst->phy);
+	if (!mp->param->has_shared_phy) {
+		mrst->phy = meson_pcie_get_reset(mp, "phy", PCIE_SHARED_RESET);
+		if (IS_ERR(mrst->phy))
+			return PTR_ERR(mrst->phy);
+		reset_control_deassert(mrst->phy);
+	}
 
 	mrst->port = meson_pcie_get_reset(mp, "port", PCIE_NORMAL_RESET);
 	if (IS_ERR(mrst->port))
@@ -180,27 +189,52 @@ static int meson_pcie_get_mems(struct platform_device *pdev,
 	if (IS_ERR(mp->mem_res.cfg_base))
 		return PTR_ERR(mp->mem_res.cfg_base);
 
-	/* Meson SoC has two PCI controllers use same phy register*/
-	mp->mem_res.phy_base = meson_pcie_get_mem_shared(pdev, mp, "phy");
-	if (IS_ERR(mp->mem_res.phy_base))
-		return PTR_ERR(mp->mem_res.phy_base);
+	/* Meson AXG SoC has two PCI controllers use same phy register */
+	if (!mp->param->has_shared_phy) {
+		mp->mem_res.phy_base =
+			meson_pcie_get_mem_shared(pdev, mp, "phy");
+		if (IS_ERR(mp->mem_res.phy_base))
+			return PTR_ERR(mp->mem_res.phy_base);
+	}
 
 	return 0;
 }
 
-static void meson_pcie_power_on(struct meson_pcie *mp)
+static int meson_pcie_power_on(struct meson_pcie *mp)
 {
-	writel(MESON_PCIE_PHY_POWERUP, mp->mem_res.phy_base);
+	int ret = 0;
+
+	if (mp->param->has_shared_phy) {
+		ret = phy_init(mp->phy);
+		if (ret)
+			return ret;
+
+		ret = phy_power_on(mp->phy);
+		if (ret) {
+			phy_exit(mp->phy);
+			return ret;
+		}
+	} else
+		writel(MESON_PCIE_PHY_POWERUP, mp->mem_res.phy_base);
+
+	return 0;
 }
 
-static void meson_pcie_reset(struct meson_pcie *mp)
+static int meson_pcie_reset(struct meson_pcie *mp)
 {
 	struct meson_pcie_rc_reset *mrst = &mp->mrst;
-
-	reset_control_assert(mrst->phy);
-	udelay(PCIE_RESET_DELAY);
-	reset_control_deassert(mrst->phy);
-	udelay(PCIE_RESET_DELAY);
+	int ret = 0;
+
+	if (mp->param->has_shared_phy) {
+		ret = phy_reset(mp->phy);
+		if (ret)
+			return ret;
+	} else {
+		reset_control_assert(mrst->phy);
+		udelay(PCIE_RESET_DELAY);
+		reset_control_deassert(mrst->phy);
+		udelay(PCIE_RESET_DELAY);
+	}
 
 	reset_control_assert(mrst->port);
 	reset_control_assert(mrst->apb);
@@ -208,6 +242,8 @@ static void meson_pcie_reset(struct meson_pcie *mp)
 	reset_control_deassert(mrst->port);
 	reset_control_deassert(mrst->apb);
 	udelay(PCIE_RESET_DELAY);
+
+	return 0;
 }
 
 static inline struct clk *meson_pcie_probe_clock(struct device *dev,
@@ -250,9 +286,11 @@ static int meson_pcie_probe_clocks(struct meson_pcie *mp)
 	if (IS_ERR(res->port_clk))
 		return PTR_ERR(res->port_clk);
 
-	res->mipi_gate = meson_pcie_probe_clock(dev, "mipi", 0);
-	if (IS_ERR(res->mipi_gate))
-		return PTR_ERR(res->mipi_gate);
+	if (!mp->param->has_shared_phy) {
+		res->mipi_gate = meson_pcie_probe_clock(dev, "mipi", 0);
+		if (IS_ERR(res->mipi_gate))
+			return PTR_ERR(res->mipi_gate);
+	}
 
 	res->general_clk = meson_pcie_probe_clock(dev, "general", 0);
 	if (IS_ERR(res->general_clk))
@@ -524,6 +562,7 @@ static const struct dw_pcie_ops dw_pcie_ops = {
 
 static int meson_pcie_probe(struct platform_device *pdev)
 {
+	const struct meson_pcie_param *match_data;
 	struct device *dev = &pdev->dev;
 	struct dw_pcie *pci;
 	struct meson_pcie *mp;
@@ -537,6 +576,19 @@ static int meson_pcie_probe(struct platform_device *pdev)
 	pci->dev = dev;
 	pci->ops = &dw_pcie_ops;
 
+	match_data = of_device_get_match_data(dev);
+	if (!match_data) {
+		dev_err(dev, "failed to get match data\n");
+		return -ENODEV;
+	}
+	mp->param = match_data;
+
+	if (mp->param->has_shared_phy) {
+		mp->phy = devm_phy_get(dev, "pcie");
+		if (IS_ERR(mp->phy))
+			return PTR_ERR(mp->phy);
+	}
+
 	mp->reset_gpio = devm_gpiod_get(dev, "reset", GPIOD_OUT_LOW);
 	if (IS_ERR(mp->reset_gpio)) {
 		dev_err(dev, "get reset gpio failed\n");
@@ -555,13 +607,22 @@ static int meson_pcie_probe(struct platform_device *pdev)
 		return ret;
 	}
 
-	meson_pcie_power_on(mp);
-	meson_pcie_reset(mp);
+	ret = meson_pcie_power_on(mp);
+	if (ret) {
+		dev_err(dev, "phy power on failed, %d\n", ret);
+		return ret;
+	}
+
+	ret = meson_pcie_reset(mp);
+	if (ret) {
+		dev_err(dev, "reset failed, %d\n", ret);
+		goto err_phy;
+	}
 
 	ret = meson_pcie_probe_clocks(mp);
 	if (ret) {
 		dev_err(dev, "init clock resources failed, %d\n", ret);
-		return ret;
+		goto err_phy;
 	}
 
 	platform_set_drvdata(pdev, mp);
@@ -569,15 +630,36 @@ static int meson_pcie_probe(struct platform_device *pdev)
 	ret = meson_add_pcie_port(mp, pdev);
 	if (ret < 0) {
 		dev_err(dev, "Add PCIe port failed, %d\n", ret);
-		return ret;
+		goto err_phy;
 	}
 
 	return 0;
+
+err_phy:
+	if (mp->param->has_shared_phy) {
+		phy_power_off(mp->phy);
+		phy_exit(mp->phy);
+	}
+
+	return ret;
 }
 
+static struct meson_pcie_param meson_pcie_axg_param = {
+	.has_shared_phy = false,
+};
+
+static struct meson_pcie_param meson_pcie_g12a_param = {
+	.has_shared_phy = true,
+};
+
 static const struct of_device_id meson_pcie_of_match[] = {
 	{
 		.compatible = "amlogic,axg-pcie",
+		.data = &meson_pcie_axg_param,
+	},
+	{
+		.compatible = "amlogic,g12a-pcie",
+		.data = &meson_pcie_g12a_param,
 	},
 	{},
 };
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
