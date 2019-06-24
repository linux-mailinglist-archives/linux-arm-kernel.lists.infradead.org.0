Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2D4250348
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 09:26:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bl8ihaAtdUkRbf72lPwtlcxo0qgZcSbUEQv66EMkbkU=; b=s1hS7FRLlXM34/
	CAVdUM5yHOpqrhmGtOPYTFka4/QRqstVYKrBffH51k4t96dS9Vjrt51TUBov/KVPfjrXsNHKPwVab
	Ifz+qlHhew7K85OTs1NHrVSCkcyNm7qQr3WCdBKuv0B9sa+pjjJuMOEdxtQ/wrB0PUaFUhSkUF+x1
	f5zMz6hZ1hQUsIy8gTUHoiC6vcGog2Ectd7sZmuBwBhYhudVFG4PK6g2PZkGQeeMaNYvBJkXmET8V
	qd2M5Ndw9RvoU+lfdkqOCQm5YobWsLyPAA1KV02G3DwcYou+zboAE4H7WVfFm8F5koh01UjwIuSke
	Y34h3mvQX/vtprGNlWvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfJMm-0000jW-Ey; Mon, 24 Jun 2019 07:26:16 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfJLF-0006s3-Oe; Mon, 24 Jun 2019 07:24:43 +0000
X-UUID: bd06e2ab37ca4602adc7139a0b52618f-20190623
X-UUID: bd06e2ab37ca4602adc7139a0b52618f-20190623
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <neal.liu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 478244655; Sun, 23 Jun 2019 23:24:32 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 24 Jun 2019 00:24:31 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 24 Jun 2019 15:24:29 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 24 Jun 2019 15:24:28 +0800
From: Neal Liu <neal.liu@mediatek.com>
To: Matt Mackall <mpm@selenic.com>, Herbert Xu <herbert@gondor.apana.org.au>, 
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Sean Wang <sean.wang@kernel.org>
Subject: [PATCH v4 3/3] hwrng: add mtk-sec-rng driver
Date: Mon, 24 Jun 2019 15:24:12 +0800
Message-ID: <1561361052-13072-4-git-send-email-neal.liu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1561361052-13072-1-git-send-email-neal.liu@mediatek.com>
References: <1561361052-13072-1-git-send-email-neal.liu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_002441_987813_A1A2DF89 
X-CRM114-Status: GOOD (  15.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org, wsd_upstream@mediatek.com,
 linux-kernel@vger.kernel.org, Crystal Guo <Crystal.Guo@mediatek.com>,
 linux-crypto@vger.kernel.org, Neal Liu <neal.liu@mediatek.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For MediaTek SoCs on ARMv8 with TrustZone enabled, peripherals like
entropy sources is not accessible from normal world (linux) and
rather accessible from secure world (ATF/TEE) only. This driver aims
to provide a generic interface to ATF rng service.

Signed-off-by: Neal Liu <neal.liu@mediatek.com>
---
 drivers/char/hw_random/Kconfig       |   16 ++++++
 drivers/char/hw_random/Makefile      |    1 +
 drivers/char/hw_random/mtk-sec-rng.c |   97 ++++++++++++++++++++++++++++++++++
 3 files changed, 114 insertions(+)
 create mode 100644 drivers/char/hw_random/mtk-sec-rng.c

diff --git a/drivers/char/hw_random/Kconfig b/drivers/char/hw_random/Kconfig
index 25a7d8f..6c82a3b 100644
--- a/drivers/char/hw_random/Kconfig
+++ b/drivers/char/hw_random/Kconfig
@@ -398,6 +398,22 @@ config HW_RANDOM_MTK
 
 	  If unsure, say Y.
 
+config HW_RANDOM_MTK_SEC
+	tristate "MediaTek Security Random Number Generator support"
+	depends on HW_RANDOM
+	depends on ARCH_MEDIATEK || COMPILE_TEST
+	default HW_RANDOM
+	help
+	  This driver provides kernel-side support for the Random Number
+	  Generator hardware found on MediaTek SoCs. The difference with
+	  mtk-rng is the Random Number Generator hardware is secure
+	  access only.
+
+	  To compile this driver as a module, choose M here. the
+	  module will be called mtk-sec-rng.
+
+	  If unsure, say Y.
+
 config HW_RANDOM_S390
 	tristate "S390 True Random Number Generator support"
 	depends on S390
diff --git a/drivers/char/hw_random/Makefile b/drivers/char/hw_random/Makefile
index 7c9ef4a..0ae4993 100644
--- a/drivers/char/hw_random/Makefile
+++ b/drivers/char/hw_random/Makefile
@@ -36,6 +36,7 @@ obj-$(CONFIG_HW_RANDOM_PIC32) += pic32-rng.o
 obj-$(CONFIG_HW_RANDOM_MESON) += meson-rng.o
 obj-$(CONFIG_HW_RANDOM_CAVIUM) += cavium-rng.o cavium-rng-vf.o
 obj-$(CONFIG_HW_RANDOM_MTK)	+= mtk-rng.o
+obj-$(CONFIG_HW_RANDOM_MTK_SEC) += mtk-sec-rng.o
 obj-$(CONFIG_HW_RANDOM_S390) += s390-trng.o
 obj-$(CONFIG_HW_RANDOM_KEYSTONE) += ks-sa-rng.o
 obj-$(CONFIG_HW_RANDOM_OPTEE) += optee-rng.o
diff --git a/drivers/char/hw_random/mtk-sec-rng.c b/drivers/char/hw_random/mtk-sec-rng.c
new file mode 100644
index 0000000..ecd2e29
--- /dev/null
+++ b/drivers/char/hw_random/mtk-sec-rng.c
@@ -0,0 +1,97 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2019 MediaTek Inc.
+ */
+
+#include <linux/arm-smccc.h>
+#include <linux/hw_random.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/platform_device.h>
+#include <linux/soc/mediatek/mtk_sip_svc.h>
+
+#define MT67XX_RNG_MAGIC	0x74726e67
+#define SMC_RET_NUM		4
+#define MTK_SEC_RND_SIZE	(sizeof(u32) * SMC_RET_NUM)
+
+struct mtk_sec_rng_priv {
+	struct hwrng rng;
+};
+
+static void mtk_sec_get_rnd(uint32_t *val)
+{
+	struct arm_smccc_res res;
+
+	arm_smccc_smc(MTK_SIP_KERNEL_GET_RND,
+		      MT67XX_RNG_MAGIC, 0, 0, 0, 0, 0, 0, &res);
+
+	val[0] = res.a0;
+	val[1] = res.a1;
+	val[2] = res.a2;
+	val[3] = res.a3;
+}
+
+static int mtk_sec_rng_read(struct hwrng *rng, void *buf, size_t max, bool wait)
+{
+	u32 val[4] = {0};
+	int retval = 0;
+	int i;
+
+	while (max >= MTK_SEC_RND_SIZE) {
+		mtk_sec_get_rnd(val);
+
+		for (i = 0; i < SMC_RET_NUM; i++) {
+			*(u32 *)buf = val[i];
+			buf += sizeof(u32);
+		}
+
+		retval += MTK_SEC_RND_SIZE;
+		max -= MTK_SEC_RND_SIZE;
+	}
+
+	return retval;
+}
+
+static int mtk_sec_rng_probe(struct platform_device *pdev)
+{
+	struct mtk_sec_rng_priv *priv;
+	int ret;
+
+	priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
+	if (!priv)
+		return -ENOMEM;
+
+	priv->rng.name = pdev->name;
+	priv->rng.read = mtk_sec_rng_read;
+	priv->rng.priv = (unsigned long)&pdev->dev;
+	priv->rng.quality = 900;
+
+	ret = devm_hwrng_register(&pdev->dev, &priv->rng);
+	if (ret) {
+		dev_err(&pdev->dev, "failed to register rng device: %d\n", ret);
+		return ret;
+	}
+
+	return 0;
+}
+
+static const struct of_device_id mtk_sec_rng_match[] = {
+	{ .compatible = "mediatek,mtk-sec-rng", },
+	{}
+};
+MODULE_DEVICE_TABLE(of, mtk_sec_rng_match);
+
+static struct platform_driver mtk_sec_rng_driver = {
+	.probe = mtk_sec_rng_probe,
+	.driver = {
+		.name = KBUILD_MODNAME,
+		.owner = THIS_MODULE,
+		.of_match_table = mtk_sec_rng_match,
+	},
+};
+
+module_platform_driver(mtk_sec_rng_driver);
+
+MODULE_DESCRIPTION("MediaTek Security Random Number Generator Driver");
+MODULE_AUTHOR("Neal Liu <neal.liu@mediatek.com>");
+MODULE_LICENSE("GPL");
-- 
1.7.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
