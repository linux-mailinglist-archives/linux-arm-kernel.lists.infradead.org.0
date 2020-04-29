Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31C341BE8F7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 22:46:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tk91amooFRubrqmHvcLukFPYavF6dReGOy9NKtl7SMk=; b=TG2IHjFC89ZD2l
	pbDysCXVy4u6mrlGjVgw4Vnik83fcj6VsLzHguPMB6WqQ4BrfHjSBh416ea+8Qhl8t7v22Kc77BoK
	l15gRSnniWg8+Q8I5qKchuYDMNXzR/da3Eog2xL6hActN2y0EGSlk86+Snw14/6zkQqPLZMT4NB6u
	ky2ogdmlF8NklQ6RQcL17u6fK6KwbbOVcHbetLs8//6D9LbnGftjVCTclCa8PvZIRBmIOr58/yFss
	WAlL9dGGpB+K45CHOZFOkDr9LgU7KmuGs5HgOwopwvwidzXD/dutF9UGut5kkUvPjKRAOcRCFJgLO
	Xqdm5aH+b+zhKtRmBvbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTtbJ-0004hh-5d; Wed, 29 Apr 2020 20:46:37 +0000
Received: from plaes.org ([188.166.43.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTtb8-0004es-8b
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 20:46:27 +0000
Received: from localhost (unknown [IPv6:2001:1530:1000:d397:940e:6b9e:3deb:3])
 by plaes.org (Postfix) with ESMTPSA id 92F91406D2;
 Wed, 29 Apr 2020 20:46:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=plaes.org; s=mail;
 t=1588193180; bh=oXxncios4NGf2aktHiZX8FnCvunPuUkRAB5eO78zbrg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=IQhJtA3O6U6JCR32OoY0yGZk+wkoR+mazjBOT2uiJTHCusppZ2YPufw/sgfbmANCu
 UDqRAeOOmk8wz4ILHVCOJkGEH6SEsUfzdkPSadRR/GLi/ataECoiQx7PoN568Zx4nO
 qFsPMesW6/IxRbvUMYm0cAW83f+vIjQh26akHkO17W31aaLyBgEFdk+gJwacuNMmYO
 oAh2spSY91Fz6L7j7oENLHG56F3M+Dfp4dhOxE2+tbzQgLvWORrYsbd/DecsKwjBUy
 5dYJe+HQQ7ZTEtx80OjzkiXYYqZsgcbCvJ3gAp4PN62a/deQhNVdx0kCUIyomm2yBd
 frsWFybK4wQNQ==
From: Priit Laes <plaes@plaes.org>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-sunxi@googlegroups.com
Subject: [PATCH v2 1/6] clk: sunxi-ng: a20: Register regmap for sun7i CCU
Date: Wed, 29 Apr 2020 23:46:07 +0300
Message-Id: <20200429204612.31883-2-plaes@plaes.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200429204612.31883-1-plaes@plaes.org>
References: <20200429204612.31883-1-plaes@plaes.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_134626_606646_9EEC8639 
X-CRM114-Status: GOOD (  14.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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

On sun7i, the gmac clock is handled by the dwmac-sunxi driver, but
its configuration register is located in the CCU register range,
requiring proper regmap setup.

In order to do that, we use CLK_OF_DECLARE_DRIVER to initialize
sun7i ccu, which clears the OF_POPULATED flag, allowing the
platform device to probe the same resource with proper device node.

Signed-off-by: Priit Laes <plaes@plaes.org>
---
 drivers/clk/sunxi-ng/ccu-sun4i-a10.c | 60 +++++++++++++++++++++++++++-
 1 file changed, 59 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/sunxi-ng/ccu-sun4i-a10.c b/drivers/clk/sunxi-ng/ccu-sun4i-a10.c
index f32366d9336e..fbdf9ecf21b8 100644
--- a/drivers/clk/sunxi-ng/ccu-sun4i-a10.c
+++ b/drivers/clk/sunxi-ng/ccu-sun4i-a10.c
@@ -8,6 +8,8 @@
 #include <linux/clk-provider.h>
 #include <linux/io.h>
 #include <linux/of_address.h>
+#include <linux/platform_device.h>
+#include <linux/regmap.h>
 
 #include "ccu_common.h"
 #include "ccu_reset.h"
@@ -1478,5 +1480,61 @@ static void __init sun7i_a20_ccu_setup(struct device_node *node)
 {
 	sun4i_ccu_init(node, &sun7i_a20_ccu_desc);
 }
-CLK_OF_DECLARE(sun7i_a20_ccu, "allwinner,sun7i-a20-ccu",
+CLK_OF_DECLARE_DRIVER(sun7i_a20_ccu, "allwinner,sun7i-a20-ccu",
 	       sun7i_a20_ccu_setup);
+
+/*
+ * Regmap for the GMAC driver (dwmac-sunxi) to allow access to
+ * GMAC configuration register.
+ */
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
+static int sun7i_a20_ccu_probe_regmap(struct platform_device *pdev)
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
+				       &sun7i_a20_ccu_regmap_config);
+	if (IS_ERR(regmap))
+		return PTR_ERR(regmap);
+
+	return 0;
+}
+
+static const struct of_device_id sun7i_a20_ccu_ids[] = {
+	{ .compatible = "allwinner,sun7i-a20-ccu"},
+	{ }
+};
+
+static struct platform_driver sun7i_a20_ccu_driver = {
+	.probe = sun7i_a20_ccu_probe_regmap,
+	.driver = {
+		.name = "sun7i-a20-ccu",
+		.of_match_table = sun7i_a20_ccu_ids,
+	},
+};
+builtin_platform_driver(sun7i_a20_ccu_driver);
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
