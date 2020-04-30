Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8987C1BF766
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 13:59:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5zf72x3Vbs8nQiINV7veTkTlbzFZu5K7a6PG9aYp1b8=; b=ue6589yEnFI0rn
	BGNA7BvGjyuIEAu+jBFe2tHIWcBtqb5q9C4j8KPCCgaLN++ouOC/BlLhR7ThzYRgkv8yvo+4PVmJW
	olKoqNCGIuld6QzjqQoDYc79uk3/gyNq8maYi2RTdRjJDI+zgYafZsnsRQI/coSzFr8HqErUB0MRd
	elD/YOMc/2Jq3foVChOBcAB4EpXzI3vRwdbMd2UBgOqqd/YrcqtKIaxgLCTpgtgLTNqE2QqdhbzPb
	dL6QV+zUvgwhrJhtBq0zpVgefdDfQuewhhoGIhBpb7XEDTMdYP99Bhb/vwMyyzPui/eNV6ruWtDJ6
	kV66NBBG4Xl+mFuVR9KQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU7q5-0006rN-Ok; Thu, 30 Apr 2020 11:58:49 +0000
Received: from plaes.org ([188.166.43.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU7p0-00061U-Rc
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 11:57:46 +0000
Received: from localhost (unknown [IPv6:2001:1530:1000:d397:940e:6b9e:3deb:3])
 by plaes.org (Postfix) with ESMTPSA id A676D4066A;
 Thu, 30 Apr 2020 11:57:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=plaes.org; s=mail;
 t=1588247830; bh=KtrNDTyIYly28OFcUiv1CrKTihke56ToqkXK8VtrLnE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=BpLAHAYxOT56SoKWq8eNcb1vPxjkJV2WJVmtWEl+zOHPQi6PR78R4bLys2kodvc5r
 h3c0u6sizZblpY0lCm0OZHyk7+Qstv6FLC8CrD1oYXEdqeLVH19v2YR4xQGevjxry4
 eYKGBnFgbIrxMrTweE/WW3snMGPm2WgkNwCvCo98cuRsUqrW6HpIuJd0BhR2KNz0nD
 8mHbvuaS0j1mw56hXN8P6aSLn2GN2is99R4XxSEqLEMl9EM7Pwqr1rE97RGgWnQYyY
 WqeSx6Ak+uXtdj1Hk29Ti+TbFNf7tsMVawh2N7R4VGLWYJIjbJ4QebZjYjUmc0HjMd
 48yIjieRaNlEw==
From: Priit Laes <plaes@plaes.org>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-sunxi@googlegroups.com
Subject: [PATCH v3 2/6] clk: sunxi-ng: a31: Register regmap for sun6i CCU
Date: Thu, 30 Apr 2020 14:56:58 +0300
Message-Id: <20200430115702.5768-3-plaes@plaes.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200430115702.5768-1-plaes@plaes.org>
References: <20200430115702.5768-1-plaes@plaes.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_045743_034517_AAE7353B 
X-CRM114-Status: GOOD (  15.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Priit Laes <plaes@plaes.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On sun6i, the gmac clock is handled by the dwmac-sunxi driver, but
its configuration register is located in the CCU register range,
requiring proper regmap setup.

In order to do that, we use CLK_OF_DECLARE_DRIVER to initialize
sun7i ccu, which clears the OF_POPULATED flag, allowing the
platform device to probe the same resource with device node.

Signed-off-by: Priit Laes <plaes@plaes.org>
---
 drivers/clk/sunxi-ng/ccu-sun6i-a31.c | 62 +++++++++++++++++++++++++++-
 1 file changed, 60 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/sunxi-ng/ccu-sun6i-a31.c b/drivers/clk/sunxi-ng/ccu-sun6i-a31.c
index 9b40d53266a3..3f6f9824b2ca 100644
--- a/drivers/clk/sunxi-ng/ccu-sun6i-a31.c
+++ b/drivers/clk/sunxi-ng/ccu-sun6i-a31.c
@@ -10,6 +10,8 @@
 #include <linux/clk-provider.h>
 #include <linux/io.h>
 #include <linux/of_address.h>
+#include <linux/platform_device.h>
+#include <linux/regmap.h>
 
 #include "ccu_common.h"
 #include "ccu_reset.h"
@@ -1262,5 +1264,61 @@ static void __init sun6i_a31_ccu_setup(struct device_node *node)
 	ccu_mux_notifier_register(pll_cpu_clk.common.hw.clk,
 				  &sun6i_a31_cpu_nb);
 }
-CLK_OF_DECLARE(sun6i_a31_ccu, "allwinner,sun6i-a31-ccu",
-	       sun6i_a31_ccu_setup);
+CLK_OF_DECLARE_DRIVER(sun6i_a31_ccu, "allwinner,sun6i-a31-ccu",
+		      sun6i_a31_ccu_setup);
+
+/*
+ * Regmap for the GMAC driver (dwmac-sunxi) to allow access to
+ * GMAC configuration register.
+ */
+#define SUN6I_A31_GMAC_CFG_REG 0xD0
+static bool sun6i_a31_ccu_regmap_accessible_reg(struct device *dev,
+						unsigned int reg)
+{
+	if (reg == SUN6I_A31_GMAC_CFG_REG)
+		return true;
+	return false;
+}
+
+static struct regmap_config sun6i_a31_ccu_regmap_config = {
+	.reg_bits	= 32,
+	.val_bits	= 32,
+	.reg_stride	= 4,
+	.max_register	= 0x308, /* clk_out_b */
+
+	.readable_reg	= sun6i_a31_ccu_regmap_accessible_reg,
+	.writeable_reg	= sun6i_a31_ccu_regmap_accessible_reg,
+};
+
+static int sun6i_a31_ccu_probe_regmap(struct platform_device *pdev)
+{
+	void __iomem *reg;
+	struct resource *res;
+	struct regmap *regmap;
+
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	reg = devm_ioremap(&pdev->dev, res->start, resource_size(res));
+	if (IS_ERR(reg))
+		return PTR_ERR(reg);
+
+	regmap = devm_regmap_init_mmio(&pdev->dev, reg,
+				       &sun6i_a31_ccu_regmap_config);
+	if (IS_ERR(regmap))
+		return PTR_ERR(regmap);
+
+	return 0;
+}
+
+static const struct of_device_id sun6i_a31_ccu_ids[] = {
+	{ .compatible = "allwinner,sun6i-a31-ccu"},
+	{ }
+};
+
+static struct platform_driver sun6i_a31_ccu_driver = {
+	.probe = sun6i_a31_ccu_probe_regmap,
+	.driver = {
+		.name = "sun6i-a31-ccu",
+		.of_match_table = sun6i_a31_ccu_ids,
+	},
+};
+builtin_platform_driver(sun6i_a31_ccu_driver);
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
