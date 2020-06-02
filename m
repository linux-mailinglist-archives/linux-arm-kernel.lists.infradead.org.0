Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 051A91EB74D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 10:25:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jCVpqen6trbsGtKvilPOEOdV1FaaSoIghaqbSBOBhfE=; b=BbKyEU5fb/UwKs
	wnK3h4mqRvQnI0A3uts9a6n+Y1CpZjDY2Q/jNnSYqy6aUjZjx4YjfmP+7EiEWbV6k4BkFLYwSNt/r
	ISRCR9mO7S4ryilQLv5RTl+MwqQYYXBNulCUrUDSfJ3pO/zp5roRj5QI53ptzxOOxc1NyU/I34Q7e
	1xBNuA2N2dDhQKPmZJEXK00oCuaadOkEmUc+0BpPNmqvDSgnPa0Dlh8XBpMJZnixsD0o7aEkJQETa
	yEJyi3lQBvXf9ltB01aBmun5IrZgN8XINfg3Ge0Sw+5aJ0oVHqbEVxulYuwhlOioR4xxOB39ME2kw
	zEN7E8v3cdBxUlwRkTmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg2F2-0005Es-0m; Tue, 02 Jun 2020 08:25:48 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg2EY-0004ye-I3; Tue, 02 Jun 2020 08:25:20 +0000
X-UUID: 1534da590d414aaeaf5a5b60ce0eac3e-20200602
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=L04bYCk8wivAACUMFnflEPSxZwU86UwuPofSNkaCMCU=; 
 b=jbX9s15LImbS1lMlL4qHc72C4/E7MkqS/qkQri6OS47xtgGtW6E7PrMgmuxo/TvBiI1wfLaXbxVs3fvoNnrdWM+hOCLRKPWQwiTahehaPEqmaPt7aRojDe6CytW4yT0PwniCGciFiCu0K8/X+sninvj15NtsUF5w2jNCXSq+Lg8=;
X-UUID: 1534da590d414aaeaf5a5b60ce0eac3e-20200602
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <neal.liu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1968415831; Tue, 02 Jun 2020 00:25:16 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 2 Jun 2020 01:15:12 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 2 Jun 2020 16:14:59 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Tue, 2 Jun 2020 16:14:58 +0800
From: Neal Liu <neal.liu@mediatek.com>
To: Matt Mackall <mpm@selenic.com>, Herbert Xu <herbert@gondor.apana.org.au>, 
 Rob Herring <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Sean Wang <sean.wang@kernel.org>, Arnd Bergmann <arnd@arndb.de>, "Greg
 Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [PATCH v6 2/2] hwrng: add sec-rng driver
Date: Tue, 2 Jun 2020 16:14:38 +0800
Message-ID: <1591085678-22764-3-git-send-email-neal.liu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1591085678-22764-1-git-send-email-neal.liu@mediatek.com>
References: <1591085678-22764-1-git-send-email-neal.liu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 909ABA3B6E64AD00041CC4B3A9BF7D20E656DA2E14FD0DBC349B80906CF174CA2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_012518_602880_D9150D9A 
X-CRM114-Status: GOOD (  16.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 lkml <linux-kernel@vger.kernel.org>, Crystal Guo <Crystal.Guo@mediatek.com>,
 linux-mediatek@lists.infradead.org, linux-crypto@vger.kernel.org,
 Neal Liu <neal.liu@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For security awareness SoCs on ARMv8 with TrustZone enabled,
peripherals like entropy sources is not accessible from normal world
(linux) and rather accessible from secure world (HYP/ATF/TEE) only.
This driver aims to provide a generic interface to Arm Trusted
Firmware or Hypervisor rng service.

Signed-off-by: Neal Liu <neal.liu@mediatek.com>
---
 drivers/char/hw_random/Kconfig   |   13 ++++
 drivers/char/hw_random/Makefile  |    1 +
 drivers/char/hw_random/sec-rng.c |  155 ++++++++++++++++++++++++++++++++++++++
 3 files changed, 169 insertions(+)
 create mode 100644 drivers/char/hw_random/sec-rng.c

diff --git a/drivers/char/hw_random/Kconfig b/drivers/char/hw_random/Kconfig
index 9bc46da..cb9c8a9 100644
--- a/drivers/char/hw_random/Kconfig
+++ b/drivers/char/hw_random/Kconfig
@@ -474,6 +474,19 @@ config HW_RANDOM_KEYSTONE
 	help
 	  This option enables Keystone's hardware random generator.
 
+config HW_RANDOM_SECURE
+	tristate "Arm Security Random Number Generator support"
+	depends on HAVE_ARM_SMCCC || COMPILE_TEST
+	default HW_RANDOM
+	help
+	  This driver provides kernel-side support for the Arm Security
+	  Random Number Generator.
+
+	  To compile this driver as a module, choose M here. the
+	  module will be called sec-rng.
+
+	  If unsure, say Y.
+
 endif # HW_RANDOM
 
 config UML_RANDOM
diff --git a/drivers/char/hw_random/Makefile b/drivers/char/hw_random/Makefile
index a7801b4..04533d1 100644
--- a/drivers/char/hw_random/Makefile
+++ b/drivers/char/hw_random/Makefile
@@ -41,3 +41,4 @@ obj-$(CONFIG_HW_RANDOM_S390) += s390-trng.o
 obj-$(CONFIG_HW_RANDOM_KEYSTONE) += ks-sa-rng.o
 obj-$(CONFIG_HW_RANDOM_OPTEE) += optee-rng.o
 obj-$(CONFIG_HW_RANDOM_NPCM) += npcm-rng.o
+obj-$(CONFIG_HW_RANDOM_SECURE) += sec-rng.o
diff --git a/drivers/char/hw_random/sec-rng.c b/drivers/char/hw_random/sec-rng.c
new file mode 100644
index 0000000..c6d3872
--- /dev/null
+++ b/drivers/char/hw_random/sec-rng.c
@@ -0,0 +1,155 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2020 MediaTek Inc.
+ */
+
+#include <linux/arm-smccc.h>
+#include <linux/hw_random.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/platform_device.h>
+
+#define SMC_RET_NUM	4
+#define SEC_RND_SIZE	(sizeof(u32) * SMC_RET_NUM)
+
+#define HWRNG_SMC_FAST_CALL_VAL(func_num) \
+	ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL, ARM_SMCCC_SMC_32, \
+			   ARM_SMCCC_OWNER_SIP, (func_num))
+
+#define to_sec_rng(p)	container_of(p, struct sec_rng_priv, rng)
+
+typedef void (sec_rng_fn)(unsigned long, unsigned long, unsigned long,
+			  unsigned long, unsigned long, unsigned long,
+			  unsigned long, unsigned long,
+			  struct arm_smccc_res *);
+
+struct sec_rng_priv {
+	u16 func_num;
+	sec_rng_fn *rng_fn;
+	struct hwrng rng;
+};
+
+/* Simple wrapper functions to be able to use a function pointer */
+static void sec_rng_smc(unsigned long a0, unsigned long a1,
+			unsigned long a2, unsigned long a3,
+			unsigned long a4, unsigned long a5,
+			unsigned long a6, unsigned long a7,
+			struct arm_smccc_res *res)
+{
+	arm_smccc_smc(a0, a1, a2, a3, a4, a5, a6, a7, res);
+}
+
+static void sec_rng_hvc(unsigned long a0, unsigned long a1,
+			unsigned long a2, unsigned long a3,
+			unsigned long a4, unsigned long a5,
+			unsigned long a6, unsigned long a7,
+			struct arm_smccc_res *res)
+{
+	arm_smccc_hvc(a0, a1, a2, a3, a4, a5, a6, a7, res);
+}
+
+static bool __sec_get_rnd(struct sec_rng_priv *priv, uint32_t *val)
+{
+	struct arm_smccc_res res;
+
+	priv->rng_fn(HWRNG_SMC_FAST_CALL_VAL(priv->func_num),
+			0, 0, 0, 0, 0, 0, 0, &res);
+
+	if (!res.a0 && !res.a1 && !res.a2 && !res.a3)
+		return false;
+
+	val[0] = res.a0;
+	val[1] = res.a1;
+	val[2] = res.a2;
+	val[3] = res.a3;
+
+	return true;
+}
+
+static int sec_rng_read(struct hwrng *rng, void *buf, size_t max, bool wait)
+{
+	struct sec_rng_priv *priv = to_sec_rng(rng);
+	u32 val[4] = {0};
+	int retval = 0;
+	int i;
+
+	while (max >= SEC_RND_SIZE) {
+		if (!__sec_get_rnd(priv, val))
+			return retval;
+
+		for (i = 0; i < SMC_RET_NUM; i++) {
+			*(u32 *)buf = val[i];
+			buf += sizeof(u32);
+		}
+
+		retval += SEC_RND_SIZE;
+		max -= SEC_RND_SIZE;
+	}
+
+	return retval;
+}
+
+static int sec_rng_probe(struct platform_device *pdev)
+{
+	struct sec_rng_priv *priv;
+	const char *method;
+	int ret;
+
+	priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
+	if (!priv)
+		return -ENOMEM;
+
+	if (of_property_read_string(pdev->dev.of_node, "method", &method))
+		return -ENXIO;
+
+	if (!strncmp("smc", method, strlen("smc")))
+		priv->rng_fn = sec_rng_smc;
+	else if (!strncmp("hvc", method, strlen("hvc")))
+		priv->rng_fn = sec_rng_hvc;
+
+	if (IS_ERR(priv->rng_fn)) {
+		dev_err(&pdev->dev, "method %s is not supported\n", method);
+		return -EINVAL;
+	}
+
+	if (of_property_read_u16(pdev->dev.of_node, "method-fid",
+				 &priv->func_num))
+		return -ENXIO;
+
+	if (of_property_read_u16(pdev->dev.of_node, "quality",
+				 &priv->rng.quality))
+		return -ENXIO;
+
+	priv->rng.name = pdev->name;
+	priv->rng.read = sec_rng_read;
+	priv->rng.priv = (unsigned long)&pdev->dev;
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
+static const struct of_device_id sec_rng_match[] = {
+	{ .compatible = "arm,sec-rng", },
+	{}
+};
+MODULE_DEVICE_TABLE(of, sec_rng_match);
+
+static struct platform_driver sec_rng_driver = {
+	.probe = sec_rng_probe,
+	.driver = {
+		.name = KBUILD_MODNAME,
+		.owner = THIS_MODULE,
+		.of_match_table = sec_rng_match,
+	},
+};
+
+module_platform_driver(sec_rng_driver);
+
+MODULE_DESCRIPTION("Security Random Number Generator Driver");
+MODULE_AUTHOR("Neal Liu <neal.liu@mediatek.com>");
+MODULE_LICENSE("GPL");
-- 
1.7.9.5
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
