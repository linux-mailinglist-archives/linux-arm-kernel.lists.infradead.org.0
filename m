Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6E6B7BBF5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 10:41:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vZEyPlE7Uw4RVdD94hn+jya60cnoK3pVyLDYiNCSumo=; b=muse9zX40sPYl7
	gOx1Z8pRXFCvwt79QYoOfOcMU+xM7rbLYGtxr5AVKCrO4IUWue406EFaUnZHqjoXk9Cv1ApLCbLNJ
	Ywpf164kC56MOSUBVKnE4eoMGhBzoj8TEvcN/8kaDML7SP/9aYk26jVbOLRfp48vRLj3e18qE3twj
	xJKkE0TYIoPFLjD2FBjAUniE1/KpqXG/lIK4hcQk02UtiF6ENTm//UDCP6CY3ZIFSr73/53J3JcB8
	Dwax329xGdPvq91QuE4ho6prYkH+Knk5sAk11i2YDjs8arYC32DcbtxJmXS9V/uewjF2XSlDdbgUy
	hJZYmxs55cYJdDen/tLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hskAo-0006eS-1d; Wed, 31 Jul 2019 08:41:26 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsk9q-00061W-01
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 08:40:28 +0000
Received: by mail-wr1-x442.google.com with SMTP id p13so68664141wru.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 01:40:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UZEGkmIeWiT5hBpyp0ACkTcmSjWFn04wW/+HzMQyHDk=;
 b=Zn9ACM7HfkJSQhAq/MdKwCmYbB4LvQnv3KVxTCqTN5sHdG2qRaW+STulLmmsCF5MIL
 uhem8pAiAIuqz7ljFbcwEm57+V4FZC6ZKxWaTGBtUsyTevnGJgpi7ltHZK54ZVftaX+H
 OLSMchk2atWUOmL7NmtBzJ7kINfD3AqmPB8C2n6FA+WGQNYGgYsbIbRIHzYOgXr5qfnF
 X9OryCdUALlBgl3ehY/hb1OGxuUn7yKjxmHegYTqNsVdFwbzNcbagUch6K1hN+QQvMkq
 +KONfOu0nm9tlaLYiyDAUIl1Yds+HLOzl3gbCrx+H6XVyOk158D1DPtsBQZr01XZiAsy
 PbDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UZEGkmIeWiT5hBpyp0ACkTcmSjWFn04wW/+HzMQyHDk=;
 b=sGR6C8nLZ7R2lV8TIlq/fCUEpKhwdI7stQzVyJgbWpVpoX2E14FgcoIq4ZuyxO9lQQ
 2w0385vudThZbPjebLh82ViRUW4w9m/DUEqbaTUcZ7BREV84Cykvc73u/VdKsKPtDXFZ
 IrIInB7Zf6thcNoXdjTdA+CEqh7InwiIaiYidHWOYi7CbNPJw/V9pWIRFy8Ww5F3SD5H
 wQp0rMueQzxXibeMJPU5+xTadYU6SqjjOmjgD2M6EqoGxyAAqIOHdg7NNMyAJu2lxb0K
 6Fum/R68GSmo/3IMNlWKUOnYPEgyzeNXA7YbqEj3pFLomgtA2bZZ3zt8s13pxg2HazWm
 S2yQ==
X-Gm-Message-State: APjAAAWUIXBDWYHFEQO9CbRMGDmbSF5dMipZ4hlb/pWv2ZkibctvRNes
 NRA/SuENkjuAstmhBR9vv8pgpz25FZs=
X-Google-Smtp-Source: APXvYqxsBYOyVGb8BxpjIKvFabYmPG59X3eLGU9JynBZjIFkT+4mN5ikBb3M4GW5QsRsgHYs7L1tyQ==
X-Received: by 2002:adf:ce88:: with SMTP id r8mr7706080wrn.42.1564562424599;
 Wed, 31 Jul 2019 01:40:24 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id 18sm56049308wmg.43.2019.07.31.01.40.23
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 31 Jul 2019 01:40:24 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: jbrunet@baylibre.com
Subject: [PATCH v2 2/4] clk: meson: add g12a cpu dynamic divider driver
Date: Wed, 31 Jul 2019 10:40:17 +0200
Message-Id: <20190731084019.8451-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190731084019.8451-1-narmstrong@baylibre.com>
References: <20190731084019.8451-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_014026_039343_6ADA182D 
X-CRM114-Status: GOOD (  15.93  )
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
Cc: linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a clock driver for the cpu dynamic divider, this divider needs
to have a flag set before setting the divider value then removed
while writing the new value to the register.

This drivers implements this behavior and will be used essentially
on the Amlogic G12A and G12B SoCs for cpu clock trees.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/clk/meson/Kconfig          |  5 ++
 drivers/clk/meson/Makefile         |  1 +
 drivers/clk/meson/clk-cpu-dyndiv.c | 73 ++++++++++++++++++++++++++++++
 drivers/clk/meson/clk-cpu-dyndiv.h | 20 ++++++++
 4 files changed, 99 insertions(+)
 create mode 100644 drivers/clk/meson/clk-cpu-dyndiv.c
 create mode 100644 drivers/clk/meson/clk-cpu-dyndiv.h

diff --git a/drivers/clk/meson/Kconfig b/drivers/clk/meson/Kconfig
index 500be0b0d473..dabeb435d067 100644
--- a/drivers/clk/meson/Kconfig
+++ b/drivers/clk/meson/Kconfig
@@ -36,6 +36,10 @@ config COMMON_CLK_MESON_EE_CLKC
 	tristate
 	select COMMON_CLK_MESON_REGMAP
 
+config COMMON_CLK_MESON_CPU_DYNDIV
+	tristate
+	select COMMON_CLK_MESON_REGMAP
+
 config COMMON_CLK_MESON8B
 	bool
 	depends on ARCH_MESON
@@ -98,6 +102,7 @@ config COMMON_CLK_G12A
 	select COMMON_CLK_MESON_PLL
 	select COMMON_CLK_MESON_AO_CLKC
 	select COMMON_CLK_MESON_EE_CLKC
+	select COMMON_CLK_MESON_CPU_DYNDIV
 	select MFD_SYSCON
 	help
 	  Support for the clock controller on Amlogic S905D2, S905X2 and S905Y2
diff --git a/drivers/clk/meson/Makefile b/drivers/clk/meson/Makefile
index f09d83dc3d60..3939f218587a 100644
--- a/drivers/clk/meson/Makefile
+++ b/drivers/clk/meson/Makefile
@@ -2,6 +2,7 @@
 # Amlogic clock drivers
 
 obj-$(CONFIG_COMMON_CLK_MESON_AO_CLKC) += meson-aoclk.o
+obj-$(CONFIG_COMMON_CLK_MESON_CPU_DYNDIV) += clk-cpu-dyndiv.o
 obj-$(CONFIG_COMMON_CLK_MESON_DUALDIV) += clk-dualdiv.o
 obj-$(CONFIG_COMMON_CLK_MESON_EE_CLKC) += meson-eeclk.o
 obj-$(CONFIG_COMMON_CLK_MESON_MPLL) += clk-mpll.o
diff --git a/drivers/clk/meson/clk-cpu-dyndiv.c b/drivers/clk/meson/clk-cpu-dyndiv.c
new file mode 100644
index 000000000000..36976927fe82
--- /dev/null
+++ b/drivers/clk/meson/clk-cpu-dyndiv.c
@@ -0,0 +1,73 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright (c) 2019 BayLibre, SAS.
+ * Author: Neil Armstrong <narmstrong@baylibre.com>
+ */
+
+#include <linux/clk-provider.h>
+#include <linux/module.h>
+
+#include "clk-regmap.h"
+#include "clk-cpu-dyndiv.h"
+
+static inline struct meson_clk_cpu_dyndiv_data *
+meson_clk_cpu_dyndiv_data(struct clk_regmap *clk)
+{
+	return (struct meson_clk_cpu_dyndiv_data *)clk->data;
+}
+
+static unsigned long meson_clk_cpu_dyndiv_recalc_rate(struct clk_hw *hw,
+						      unsigned long prate)
+{
+	struct clk_regmap *clk = to_clk_regmap(hw);
+	struct meson_clk_cpu_dyndiv_data *data = meson_clk_cpu_dyndiv_data(clk);
+
+	return divider_recalc_rate(hw, prate,
+				   meson_parm_read(clk->map, &data->div),
+				   NULL, 0, data->div.width);
+}
+
+static long meson_clk_cpu_dyndiv_round_rate(struct clk_hw *hw,
+					    unsigned long rate,
+					    unsigned long *prate)
+{
+	struct clk_regmap *clk = to_clk_regmap(hw);
+	struct meson_clk_cpu_dyndiv_data *data = meson_clk_cpu_dyndiv_data(clk);
+
+	return divider_round_rate(hw, rate, prate, NULL, data->div.width, 0);
+}
+
+static int meson_clk_cpu_dyndiv_set_rate(struct clk_hw *hw, unsigned long rate,
+					  unsigned long parent_rate)
+{
+	struct clk_regmap *clk = to_clk_regmap(hw);
+	struct meson_clk_cpu_dyndiv_data *data = meson_clk_cpu_dyndiv_data(clk);
+	unsigned int val;
+	int ret;
+
+	ret = divider_get_val(rate, parent_rate, NULL, data->div.width, 0);
+	if (ret < 0)
+		return ret;
+
+	val = (unsigned int)ret << data->div.shift;
+
+	/* Write the SYS_CPU_DYN_ENABLE bit before changing the divider */
+	meson_parm_write(clk->map, &data->dyn, 1);
+
+	/* Update the divider while removing the SYS_CPU_DYN_ENABLE bit */
+	return regmap_update_bits(clk->map, data->div.reg_off,
+				  SETPMASK(data->div.width, data->div.shift) |
+				  SETPMASK(data->dyn.width, data->dyn.shift),
+				  val);
+};
+
+const struct clk_ops meson_clk_cpu_dyndiv_ops = {
+	.recalc_rate = meson_clk_cpu_dyndiv_recalc_rate,
+	.round_rate = meson_clk_cpu_dyndiv_round_rate,
+	.set_rate = meson_clk_cpu_dyndiv_set_rate,
+};
+EXPORT_SYMBOL_GPL(meson_clk_cpu_dyndiv_ops);
+
+MODULE_DESCRIPTION("Amlogic CPU Dynamic Clock divider");
+MODULE_AUTHOR("Neil Armstrong <narmstrong@baylibre.com>");
+MODULE_LICENSE("GPL v2");
diff --git a/drivers/clk/meson/clk-cpu-dyndiv.h b/drivers/clk/meson/clk-cpu-dyndiv.h
new file mode 100644
index 000000000000..f4908404792e
--- /dev/null
+++ b/drivers/clk/meson/clk-cpu-dyndiv.h
@@ -0,0 +1,20 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2019 BayLibre, SAS.
+ * Author: Neil Armstrong <narmstrong@baylibre.com>
+ */
+
+#ifndef __MESON_CLK_CPU_DYNDIV_H
+#define __MESON_CLK_CPU_DYNDIV_H
+
+#include <linux/clk-provider.h>
+#include "parm.h"
+
+struct meson_clk_cpu_dyndiv_data {
+	struct parm div;
+	struct parm dyn;
+};
+
+extern const struct clk_ops meson_clk_cpu_dyndiv_ops;
+
+#endif /* __MESON_CLK_CPU_DYNDIV_H */
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
