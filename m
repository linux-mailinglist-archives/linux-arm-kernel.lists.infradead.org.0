Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D19410F8F0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 08:37:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JtOoFSeXKAx3jfWKN72O8cvr1iPTz4H96TX1gB2xRHg=; b=qEsksGgm3Hy62o
	An4tYeX4zBxM8U/e56K/4d7WyOPdEh8GVFHWQ47DZK++g5v+vWZeH61CGrTGtdFOkbgtUdW33A60y
	7E25cHDTeTCoKliyfhzYvO2tjxd1cN04F/+ys61PzGvvdqAcPaQ/enUFt+P2NSPBq7xmBf6CaP+cG
	ZCPDQuSWGLZ8eBek9lSoymCIr77MZWXIu5udUCJy0rQAf/5sLtBIJXNbNN63vtqa9Y+8G6oU/cLW4
	AwHgiUTSv2gPGjxUieRYf8mE4znN5IxFR2L+eOZwV53CceLAk78vkggWzp42FxRFmO/mJdbQ6jFec
	KjhfuPCpd2kWf6DVSHLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic2kG-0001IJ-LL; Tue, 03 Dec 2019 07:37:16 +0000
Received: from rtits2.realtek.com ([211.75.126.72] helo=rtits2.realtek.com.tw)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1ic2j3-0000Df-T5; Tue, 03 Dec 2019 07:36:05 +0000
Authenticated-By: 
X-SpamFilter-By: BOX Solutions SpamTrap 5.62 with qID xB37ZrtC014065,
 This message is accepted by code: ctloc85258
Received: from mail.realtek.com (RTITCASV01.realtek.com.tw[172.21.6.18])
 by rtits2.realtek.com.tw (8.15.2/2.57/5.78) with ESMTPS id xB37ZrtC014065
 (version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
 Tue, 3 Dec 2019 15:35:53 +0800
Received: from james-BS01.localdomain (172.21.190.33) by
 RTITCASV01.realtek.com.tw (172.21.6.18) with Microsoft SMTP Server id
 14.3.468.0; Tue, 3 Dec 2019 15:35:51 +0800
From: James Tai <james.tai@realtek.com>
To: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
Subject: [PATCH 4/6] clk: realtek: add reset controller support for Realtek
 SoCs
Date: Tue, 3 Dec 2019 15:35:38 +0800
Message-ID: <20191203073540.9321-5-james.tai@realtek.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191203073540.9321-1-james.tai@realtek.com>
References: <20191203073540.9321-1-james.tai@realtek.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_233602_240609_DADE8DF9 
X-CRM114-Status: GOOD (  13.11  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.75.126.72 listed in list.dnswl.org]
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
Cc: cylee12 <cylee12@realtek.com>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Paul Walmsley <paul.walmsley@sifive.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-riscv@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: cylee12 <cylee12@realtek.com>

This patch add reset control support for Realtek SoCs.

Signed-off-by: Cheng-Yu Lee <cylee12@realtek.com>
Signed-off-by: James Tai <james.tai@realtek.com>
---
 drivers/clk/realtek/Kconfig  |   1 +
 drivers/clk/realtek/Makefile |   1 +
 drivers/clk/realtek/reset.c  | 107 +++++++++++++++++++++++++++++++++++
 drivers/clk/realtek/reset.h  |  37 ++++++++++++
 4 files changed, 146 insertions(+)
 create mode 100644 drivers/clk/realtek/reset.c
 create mode 100644 drivers/clk/realtek/reset.h

diff --git a/drivers/clk/realtek/Kconfig b/drivers/clk/realtek/Kconfig
index 5bca757dddfa..8e7e7edf64dd 100644
--- a/drivers/clk/realtek/Kconfig
+++ b/drivers/clk/realtek/Kconfig
@@ -1,6 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
 config COMMON_CLK_REALTEK
 	bool "Clock driver for realtek"
+	select RESET_CONTROLLER
 	select MFD_SYSCON
 
 config CLK_PLL_PSAUD
diff --git a/drivers/clk/realtek/Makefile b/drivers/clk/realtek/Makefile
index 050d450db067..43f8bd71c0c8 100644
--- a/drivers/clk/realtek/Makefile
+++ b/drivers/clk/realtek/Makefile
@@ -7,3 +7,4 @@ clk-rtk-y += clk-regmap-gate.o
 clk-rtk-y += clk-pll.o
 clk-rtk-$(CONFIG_CLK_PLL_PSAUD) += clk-pll-psaud.o
 clk-rtk-$(CONFIG_CLK_PLL_DIF) += clk-pll-dif.o
+clk-rtk-y += reset.o
diff --git a/drivers/clk/realtek/reset.c b/drivers/clk/realtek/reset.c
new file mode 100644
index 000000000000..3f4d1a723b2a
--- /dev/null
+++ b/drivers/clk/realtek/reset.c
@@ -0,0 +1,107 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2019 Realtek Semiconductor Corporation
+ */
+
+#include <linux/of.h>
+#include <linux/device.h>
+#include <linux/regmap.h>
+#include <linux/reset-controller.h>
+#include <linux/slab.h>
+#include "reset.h"
+
+static int rtk_reset_assert(struct reset_controller_dev *rcdev,
+			    unsigned long idx)
+{
+	struct rtk_reset_data *data = to_rtk_reset_controller(rcdev);
+	struct rtk_reset_bank *bank = &data->banks[idx >> 8];
+	uint32_t id   = idx & 0xff;
+	uint32_t mask = bank->write_en ? (0x3 << id) : BIT(id);
+	uint32_t val  = bank->write_en ? (0x2 << id) : 0;
+
+	return regmap_update_bits(data->regmap, bank->ofs, mask, val);
+}
+
+static int rtk_reset_deassert(struct reset_controller_dev *rcdev,
+			      unsigned long idx)
+{
+	struct rtk_reset_data *data = to_rtk_reset_controller(rcdev);
+	struct rtk_reset_bank *bank = &data->banks[idx >> 8];
+	uint32_t id   = idx & 0xff;
+	uint32_t mask = bank->write_en ? (0x3 << id) : BIT(id);
+	uint32_t val  = mask;
+
+	return regmap_update_bits(data->regmap, bank->ofs, mask, val);
+}
+
+static int rtk_reset_reset(struct reset_controller_dev *rcdev,
+			   unsigned long idx)
+{
+	int ret;
+
+	ret = rtk_reset_assert(rcdev, idx);
+	if (ret)
+		return ret;
+
+	return rtk_reset_deassert(rcdev, idx);
+}
+
+static int rtk_reset_status(struct reset_controller_dev *rcdev,
+			    unsigned long idx)
+{
+	struct rtk_reset_data *data = to_rtk_reset_controller(rcdev);
+	struct rtk_reset_bank *bank = &data->banks[idx >> 8];
+	uint32_t id = idx & 0xff;
+	uint32_t val;
+
+	regmap_read(data->regmap, bank->ofs, &val);
+	return !((val >> id) & 1);
+}
+
+static struct reset_control_ops rtk_reset_ops = {
+	.assert   = rtk_reset_assert,
+	.deassert = rtk_reset_deassert,
+	.reset    = rtk_reset_reset,
+	.status   = rtk_reset_status,
+};
+
+static int rtk_of_reset_xlate(struct reset_controller_dev *rcdev,
+			      const struct of_phandle_args *reset_spec)
+{
+	struct rtk_reset_data *data = to_rtk_reset_controller(rcdev);
+	int val;
+
+	val = reset_spec->args[0];
+	if (val >= rcdev->nr_resets)
+		return -EINVAL;
+
+	if (data->id_xlate)
+		return data->id_xlate(val);
+	return val;
+}
+
+
+int rtk_reset_controller_add(struct device *dev, struct regmap *regmap,
+			     struct rtk_reset_initdata *initdata)
+{
+	struct rtk_reset_data *data;
+	struct device_node *np = dev->of_node;
+
+	data = kzalloc(sizeof(*data), GFP_KERNEL);
+	if (!data)
+		return -ENOMEM;
+	data->regmap    = regmap;
+	data->num_banks = initdata->num_banks;
+	data->banks     = initdata->banks;
+	data->id_xlate  = initdata->id_xlate;
+
+	data->rcdev.owner     = THIS_MODULE;
+	data->rcdev.ops       = &rtk_reset_ops;
+	data->rcdev.of_node   = np;
+	data->rcdev.nr_resets = initdata->num_banks * 0x100;
+	data->rcdev.of_xlate  = rtk_of_reset_xlate;
+	data->rcdev.of_reset_n_cells = 1;
+
+	return reset_controller_register(&data->rcdev);
+}
+
diff --git a/drivers/clk/realtek/reset.h b/drivers/clk/realtek/reset.h
new file mode 100644
index 000000000000..f0cc7b1045ee
--- /dev/null
+++ b/drivers/clk/realtek/reset.h
@@ -0,0 +1,37 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2019 Realtek Semiconductor Corporation
+ * Author: Cheng-Yu Lee <cylee12@realtek.com>
+ */
+
+#ifndef __CLK_REALTEK_RESET_H
+#define __CLK_REALTEK_RESET_H
+
+#include <linux/reset-controller.h>
+
+struct rtk_reset_bank {
+	uint32_t ofs;
+	uint32_t write_en;
+};
+
+struct rtk_reset_data {
+	struct reset_controller_dev rcdev;
+	struct rtk_reset_bank *banks;
+	uint32_t num_banks;
+	struct regmap *regmap;
+	unsigned long (*id_xlate)(unsigned long id);
+};
+
+#define to_rtk_reset_controller(r) \
+	container_of(r, struct rtk_reset_data, rcdev)
+
+struct rtk_reset_initdata {
+	struct rtk_reset_bank *banks;
+	uint32_t num_banks;
+	unsigned long (*id_xlate)(unsigned long id);
+};
+
+int rtk_reset_controller_add(struct device *dev, struct regmap *regmap,
+			     struct rtk_reset_initdata *initdata);
+
+#endif /* __CLK_REALTEK_RESET_H */
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
