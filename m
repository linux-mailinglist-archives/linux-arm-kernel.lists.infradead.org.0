Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20E251FBCE6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 19:29:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KZF+4+j7gIKeTN1O7HdTf0Ea/QLamXcHkV9MiHBgpsI=; b=b3SUcsumDU9t48
	ZrBsgdXJWEwWWT/LZArTx8wbU7ngVFDG77WDNDXAQR7FXTKN0b9cJ7Y/o1hL45t9pqOgRPxhKTAjP
	Q5BGuia/QrpyVKlGXwYnJJIlnpzv4Wzjo6pxnUPE+2SXDZfkq3dG70ebmsvpaWUiLo2kWA/p9l+8q
	zSdy2QIChY73HPo2aOJLrKW/vBdpyHQboTS4HPa2jaME/3CZ+7vNGC0dTNNrpo+6KkazBzsHkZYuJ
	MOXA6rIOlpWpH/3YwTvrW9bVScufcRkFYd2X7LPVvJRLXiMY4ik4HVN94Qj91pB/fEHnFlE9drnVi
	BwGBO5JZuSZ9B4NWidwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlFOm-000635-7H; Tue, 16 Jun 2020 17:29:24 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlFOd-00062d-2I
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 17:29:16 +0000
Received: by mail-wm1-x342.google.com with SMTP id f185so3931083wmf.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 10:29:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LOu0n3RUGeuxEjMp2F5UGa7yErDx6HF4q3voQT9ZrEk=;
 b=M/uiV1HtnpmWa6vznTJVZhsTnLtWaYLlOM0rCpKzs/0JNSLepkO5b6P2CRRDpTvgqL
 5ymoNqekfqFvZFBk2I2yaxh3Erh6jKFRshf+X/waUBGuopFQLDxhs37bFqEcED95mUIg
 7z02rAV/LzLm050rUf6eVq0p7yvVXJSXIbtTVYHe0pRp+/51qF4JUri4K5RCoinUXMqD
 L7ao4BoWXcWn3P3h4GVD/Qcf90fBEroysgqmFizS1TgKyiQkO9joOsdstLXoZ3Y7EyAd
 ylhCLneIMe2fyFpoUoId6F2lgrPknUm3FmHMldlVsKYbCZaNTG9xIpmOrgnXIiYVcynA
 JTcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LOu0n3RUGeuxEjMp2F5UGa7yErDx6HF4q3voQT9ZrEk=;
 b=TJTH9Vtc12JpDurk83i4Vm5EcaoHDiVtjUzZxKtGAokCRBfOnq70pCC1QnPAkbvvaR
 hHXw6dJqT0pIrOTTyLq24zGz5kuokeB2eeeflrYBVU6rPX3wtwc8jdvU/7un3ptEUUyO
 8RzOHxVAxk4BNIYcUQNOUama898ov9p+2jiWNNIBSZbZ82gVgQ3v7wGTXoGM1mItHMkt
 ywBtp/BVoWe5adj3HEyxfz5s6/FFIxUtqa7rpaemWa1p7vqCj0ThHjFyXcXEn/tA4gpm
 sgW0TbFIXd0LEGimlVzW4EJIodeFBx6mK1ZP1+Bxn14mmlByb4D/zFyO8VrBlswBj3Sa
 tXfA==
X-Gm-Message-State: AOAM531JX/qKv/Ax01HNI1HWiAgpTgj1iF2ZxWb4iX/Y6GnAucZPlsXz
 OPDLoxlEGEG2PHYCOsFpFofTOg==
X-Google-Smtp-Source: ABdhPJxjIS/eDvr9cU2j95v4CdQVYG3A3JM5PZLfD5mYzD4jjBMoqson+Wrwa5YWxruNQtFvyJBMVw==
X-Received: by 2002:a1c:4857:: with SMTP id v84mr4194000wma.96.1592328553695; 
 Tue, 16 Jun 2020 10:29:13 -0700 (PDT)
Received: from localhost.localdomain ([2.27.167.65])
 by smtp.gmail.com with ESMTPSA id z6sm29444739wrh.79.2020.06.16.10.29.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 10:29:13 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: michael@walle.cc, robh+dt@kernel.org, broonie@kernel.org,
 gregkh@linuxfoundation.org, andriy.shevchenko@linux.intel.com,
 devicetree@vger.kernel.org, linus.walleij@linaro.org,
 bgolaszewski@baylibre.com, arnd@arndb.de
Subject: [PATCH 1/1] mfd: Add I2C based System Configuaration (SYSCON) access
Date: Tue, 16 Jun 2020 18:29:04 +0100
Message-Id: <20200616172904.373045-1-lee.jones@linaro.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_102915_104982_C8EC2F72 
X-CRM114-Status: GOOD (  14.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Lee Jones <lee.jones@linaro.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The existing SYSCON implementation only supports MMIO (memory mapped)
accesses, facilitated by Regmap.  This extends support for registers
held behind I2C busses.

Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 drivers/mfd/Kconfig            |  7 +++
 drivers/mfd/Makefile           |  1 +
 drivers/mfd/syscon-i2c.c       | 89 ++++++++++++++++++++++++++++++++++
 include/linux/mfd/syscon-i2c.h | 26 ++++++++++
 4 files changed, 123 insertions(+)
 create mode 100644 drivers/mfd/syscon-i2c.c
 create mode 100644 include/linux/mfd/syscon-i2c.h

diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index 0a59249198d34..63ae78b92b086 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -1300,6 +1300,13 @@ config MFD_SYSCON
 	  Select this option to enable accessing system control registers
 	  via regmap.
 
+config MFD_SYSCON_I2C
+	bool "System Controller Register R/W Based on I2C Regmap"
+	select REGMAP_I2C
+	help
+	  Select this option to enable accessing system control registers
+	  via I2C using regmap.
+
 config MFD_DAVINCI_VOICECODEC
 	tristate
 	select MFD_CORE
diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
index f935d10cbf0fc..0aec1f42ac979 100644
--- a/drivers/mfd/Makefile
+++ b/drivers/mfd/Makefile
@@ -219,6 +219,7 @@ obj-$(CONFIG_MFD_RK808)		+= rk808.o
 obj-$(CONFIG_MFD_RN5T618)	+= rn5t618.o
 obj-$(CONFIG_MFD_SEC_CORE)	+= sec-core.o sec-irq.o
 obj-$(CONFIG_MFD_SYSCON)	+= syscon.o
+obj-$(CONFIG_MFD_SYSCON_I2C)	+= syscon-i2c.o
 obj-$(CONFIG_MFD_LM3533)	+= lm3533-core.o lm3533-ctrlbank.o
 obj-$(CONFIG_MFD_VEXPRESS_SYSREG)	+= vexpress-sysreg.o
 obj-$(CONFIG_MFD_RETU)		+= retu-mfd.o
diff --git a/drivers/mfd/syscon-i2c.c b/drivers/mfd/syscon-i2c.c
new file mode 100644
index 0000000000000..404e595d7646c
--- /dev/null
+++ b/drivers/mfd/syscon-i2c.c
@@ -0,0 +1,89 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * System Control Driver accessed over I2C
+ *
+ * Copyright (C) 2020 Linaro Ltd.
+ *
+ * Author: Lee Jones <lee.jones@linaro.org>
+ */
+
+#include <linux/err.h>
+#include <linux/i2c.h>
+#include <linux/list.h>
+#include <linux/mfd/syscon-i2c.h>
+#include <linux/regmap.h>
+
+static DEFINE_SPINLOCK(syscon_i2c_list_slock);
+static LIST_HEAD(syscon_i2c_list);
+
+struct syscon {
+	struct device_node *np;
+	struct regmap *regmap;
+	struct list_head list;
+};
+
+static const struct regmap_config syscon_i2c_regmap_config = {
+	.reg_bits = 8,
+	.val_bits = 8,
+};
+
+static struct syscon *of_syscon_i2c_register(struct i2c_client *client)
+{
+	struct regmap_config syscon_config = syscon_i2c_regmap_config;
+	struct device_node *np = client->dev.of_node;
+	struct syscon *syscon;
+	struct regmap *regmap;
+	int ret;
+
+	syscon = devm_kzalloc(&client->dev, sizeof(*syscon), GFP_KERNEL);
+	if (!syscon)
+		return ERR_PTR(-ENOMEM);
+
+	syscon_config.name = of_node_full_name(np);
+
+	regmap = devm_regmap_init_i2c(client, &syscon_config);
+	if (IS_ERR(regmap)) {
+		dev_err(&client->dev, "Failed to initialise Regmap I2C\n");
+		ret = PTR_ERR(regmap);
+		return ERR_PTR(ret);
+	}
+
+	syscon->regmap = regmap;
+	syscon->np = np;
+
+	spin_lock(&syscon_i2c_list_slock);
+	list_add_tail(&syscon->list, &syscon_i2c_list);
+	spin_unlock(&syscon_i2c_list_slock);
+
+	return syscon;
+}
+
+static struct regmap *i2c_device_node_get_regmap(struct i2c_client *client)
+{
+	struct device_node *np = client->dev.of_node;
+	struct syscon *entry, *syscon = NULL;
+
+	spin_lock(&syscon_i2c_list_slock);
+
+	list_for_each_entry(entry, &syscon_i2c_list, list)
+		if (entry->np == np) {
+			syscon = entry;
+			break;
+		}
+
+	spin_unlock(&syscon_i2c_list_slock);
+
+	if (!syscon)
+		syscon = of_syscon_i2c_register(client);
+
+	if (IS_ERR(syscon))
+		return ERR_CAST(syscon);
+
+	return syscon->regmap;
+}
+
+struct regmap *i2c_device_node_to_regmap(struct i2c_client *client)
+{
+	return i2c_device_node_get_regmap(client);
+}
+EXPORT_SYMBOL_GPL(i2c_device_node_to_regmap);
diff --git a/include/linux/mfd/syscon-i2c.h b/include/linux/mfd/syscon-i2c.h
new file mode 100644
index 0000000000000..854e316fec93e
--- /dev/null
+++ b/include/linux/mfd/syscon-i2c.h
@@ -0,0 +1,26 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/*
+ * System Control Driver accessed via I2C
+ *
+ * Copyright (C) 2020 Linaro Ltd.
+ *
+ * Author: Lee Jones <lee.jones@linaro.org>
+ */
+
+#ifndef __LINUX_MFD_SYSCON_I2C_H__
+#define __LINUX_MFD_SYSCON_I2C_H__
+
+#include <linux/err.h>
+#include <linux/errno.h>
+#include <linux/i2c.h>
+
+#ifdef CONFIG_MFD_SYSCON_I2C
+extern struct regmap *i2c_device_node_to_regmap(struct i2c_client *client);
+#else
+static inline struct regmap *i2c_device_node_to_regmap(struct i2c_client *client)
+{
+	return ERR_PTR(-ENOTSUPP);
+}
+#endif
+
+#endif /* __LINUX_MFD_SYSCON_I2C_H__ */
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
