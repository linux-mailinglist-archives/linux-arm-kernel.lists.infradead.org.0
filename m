Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D5D81AE828
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Apr 2020 00:24:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wK+ruWfnzfGD+3SVjKoMnmAmpQz5znwx4KiiJtY9Idc=; b=tfZI/mCCxpBgwF
	v3VX1wSbpoGfWUUkYUhzrzaLYdDfvRg0rVMBz7SEZq3oSCoeh4p6B9fAFxfZyLUNyPoEMnZfgvhro
	916Q84yvTD9ZDAsC9VRCYiU7suAkedY+sgKQLmy+ftBiqj0uctKAx3aZEydCb70Zuhs31THoWrjTX
	2m5ktE2i1m6SEpLvVUGPffYVA1Nh1kqMtUddcO4PkSBj9007Db9XgI8m3GQUFhCyNPYUONBtXsP/g
	O5xMLJWitkbpIKgGqSP5ym8EJj+fHWLThtRtWgZcBLWXpb2YTzat/qRA7wV8GSiIujuYkPL5uN86O
	7IdLZe9N/JSiJIAuvdBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPZOy-0001qH-Hg; Fri, 17 Apr 2020 22:24:00 +0000
Received: from plaes.org ([188.166.43.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPZOl-0001pU-Dg
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 22:23:49 +0000
Received: from localhost (unknown [IPv6:2001:1530:1000:9d4d:940e:6b9e:3deb:4])
 by plaes.org (Postfix) with ESMTPSA id A7D8840F77;
 Fri, 17 Apr 2020 22:17:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=plaes.org; s=mail;
 t=1587161875; bh=R/e4AeS+hYtR1SV4lPnHnWWGgqogYvwGJXb2bJni8Gs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=TZclkybauT9AxtT/TF3Gf+6lkIYgIDJ33SAAPA7Z1QS2G+JfTqiHhragEBFO3DhFS
 OfUoqA4fOMbc5KFs9+r3FpQLDgaFVWdr3dMj5h+Gl8u1njA4Rw8oUzRVddcgTdUJGi
 yCKykq9IOyV7KLmIszFsL69mqkL3vTNhmE7zydscV2AlVepJgGL9832h8TD2dUaofB
 onfU46E8V+TyUsQg6k8UN7Qk+nlmqSNNA/RCPybFbkTu0am88SnX18QAJN4m3UqLgQ
 BgiZ7wwuHfUJ019K34mfd9zZDYNqF3ALiyU+aKhyAKARtd5Gvnzt2X+voW8qTld69L
 RNhCre324KBBg==
From: Priit Laes <plaes@plaes.org>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-sunxi@googlegroups.com
Subject: [PATCH 2/4] clk: sunxi-ng: a20: export a regmap to access the GMAC
 register
Date: Sat, 18 Apr 2020 01:17:28 +0300
Message-Id: <20200417221730.555954-3-plaes@plaes.org>
X-Mailer: git-send-email 2.25.2
In-Reply-To: <20200417221730.555954-1-plaes@plaes.org>
References: <20200417221730.555954-1-plaes@plaes.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_152347_675914_B8744CF7 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Priit Laes <plaes@plaes.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Only GMAC register is allowed to be written, read access to registers
is not restricted.

Export a regmap of the CCU.

Signed-off-by: Priit Laes <plaes@plaes.org>
---
 drivers/clk/sunxi-ng/ccu-sun4i-a10.c | 31 ++++++++++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/drivers/clk/sunxi-ng/ccu-sun4i-a10.c b/drivers/clk/sunxi-ng/ccu-sun4i-a10.c
index 839e9d5a1cff..cba51c2c7eba 100644
--- a/drivers/clk/sunxi-ng/ccu-sun4i-a10.c
+++ b/drivers/clk/sunxi-ng/ccu-sun4i-a10.c
@@ -1426,6 +1426,30 @@ static const struct sunxi_ccu_desc sun7i_a20_ccu_desc = {
 	.num_resets	= ARRAY_SIZE(sunxi_a10_a20_ccu_resets),
 };
 
+/*
+ * Add regmap for the GMAC driver (dwmac-sun8i) to allow access to
+ * GMAC configuration register.
+ */
+
+#define SUN7I_A20_GMAC_CFG_REG 0x164
+static bool sun7i_a20_ccu_regmap_accessible_reg(struct device *dev,
+						unsigned int reg)
+{
+	if (reg == SUN7I_A20_GMAC_CFG_REG)
+		return true;
+	return false;
+}
+
+static struct regmap_config sun7i_a20_ccu_regmap_config = {
+	.reg_bits	= 32,
+	.val_bits	= 32,
+	.reg_stride	= 4,
+	.max_register	= 0x1f4, /* clk_out_b */
+
+	.readable_reg	= sun7i_a20_ccu_regmap_accessible_reg,
+	.writeable_reg	= sun7i_a20_ccu_regmap_accessible_reg,
+};
+
 static void bootstrap_clocks(void __iomem *reg)
 {
 	u32 val;
@@ -1474,6 +1498,7 @@ static int sun4i_a10_ccu_probe(struct platform_device *pdev)
 
 static int sun7i_a20_ccu_probe(struct platform_device *pdev)
 {
+	struct regmap *regmap;
 	struct resource *res;
 	void __iomem *reg;
 
@@ -1484,6 +1509,12 @@ static int sun7i_a20_ccu_probe(struct platform_device *pdev)
 
 	bootstrap_clocks(reg);
 
+	regmap = devm_regmap_init_mmio(&pdev->dev, reg,
+				       &sun7i_a20_ccu_regmap_config);
+	if (IS_ERR(regmap))
+		return PTR_ERR(regmap);
+
+
 	return sunxi_ccu_probe(pdev->dev.of_node, reg, &sun7i_a20_ccu_desc);
 }
 
-- 
2.25.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
