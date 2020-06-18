Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 480E81FED20
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 10:03:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dw3foiVaP9k8rspYatoJ6HtMl4tvq63lXIZgrlbeRgg=; b=CMVJ972a2xBSZU
	/hii/Apv7K1UT/wufxj15WHViRzyLxEUxhcXvRJszho510ZbR9rx2TYBFnrvZnSCEKS/IUYnUqWQC
	IsivBnoljpWIjtGQ3jh6cLua9OveC/R49dMpz46NfWEkBRI2jLOfg3Y8IZcZjyX36usu+mk7Ud/1A
	Rc6+/patIv+u4X6pQOY9A/PbwTbzrOr3FPvM6OtLZds7BNuzh+riAZjh17VQpI2bNR6R39Q+OcCgi
	MqVZZtfpOAzKxY9oeMq6sFEZQA14C8BFlG1530qpOkREfjTJKniNglxSy5jbknzZeDpxiRDheEYrl
	Sv3em0NoIhrIsA42fHoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlpWL-0003mM-Kh; Thu, 18 Jun 2020 08:03:37 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlpWC-0003lZ-6F
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 08:03:31 +0000
Received: by mail-wr1-x441.google.com with SMTP id r7so5023839wro.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 01:03:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/SU7W2GJKeHJvbcABLTspqPlvuU+fo28Kd5ODOQRwk4=;
 b=DJkBYiuucTO/DfAGSZdUlUh8cxXQmxceh05pT+8VxUyh3WiCS0DCPC7LZ5NI6Ts/lN
 ZhnlA2qGFXvIZcbpPEG8dmsGeQxWAA9sGmdLO3ShUJWOvyMq5yPT98Yq0f76kvRbs7bc
 LY+bMF5DiUWSG1frJcxziEiCdsIF11rMVLxDxmlvPTDJZwYiVwaZqNsIkS6BPnlot8o+
 Jv1xk+pOLWxVlgZQR213Enj1kOYdDufZXejqZ/Jurpzz5SnHQzQr593iQo/X+jwgAKK7
 EoHW2PG2twbHH7PZIAMHbZOejjilvUV5AEAS0ojmpCTXcar399OfEiR47tS22udQfgfK
 A2MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/SU7W2GJKeHJvbcABLTspqPlvuU+fo28Kd5ODOQRwk4=;
 b=tyfwsjk+3NiL2NMfrZo0+dD8aZWiS3jiWXYTWqxFP0dJhPDDtKEyzxbj38txb1EmI2
 RJPljBsFUF96xJr2V9AahqdaYY+FGS7wqF+VNjZgaco8Vc7LdGaEHYWrHIygyKSRf+S+
 Qiso8GpqjZzo+zfObHeEaw6QFu4f+BTzoacFfv2m8CbhvaxwhK6LnrbnUIYZ/Lk4qPnJ
 f6XGnu3RXlNY+9oN8fQyKqN45030B3mTwc2bZ2E8vgF75o8RsHWNFMNZvrKftbu3Yfnk
 PGs8zgKsCpBKHbBa0e3DMfK7Z9trql6/vd+x9YcJiwr1V/Dy9pVvhUCQDcsoyW18R+ZZ
 24zg==
X-Gm-Message-State: AOAM530TAOIoXhlXeLmoel2fkXNer2jPK1dV+75+oc5uEHD4QAfOj1GU
 A5QICfaSpHYMMr/OFLBqTBSYWQ==
X-Google-Smtp-Source: ABdhPJw8crlDMOPpr0aGwPsYxTgWEqV4OSpPoGwLOBz+MSwKjw0ga6Ri2WLdBSY6VXkBi1+BubrBYQ==
X-Received: by 2002:a5d:6087:: with SMTP id w7mr3603718wrt.158.1592467405816; 
 Thu, 18 Jun 2020 01:03:25 -0700 (PDT)
Received: from localhost.localdomain ([95.149.164.118])
 by smtp.gmail.com with ESMTPSA id z16sm2425174wrm.70.2020.06.18.01.03.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 01:03:25 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: michael@walle.cc, robh+dt@kernel.org, broonie@kernel.org,
 gregkh@linuxfoundation.org, andriy.shevchenko@linux.intel.com,
 devicetree@vger.kernel.org, linus.walleij@linaro.org,
 bgolaszewski@baylibre.com, arnd@arndb.de
Subject: [PATCH v3 1/1] mfd: Add I2C based System Configuaration (SYSCON)
 access
Date: Thu, 18 Jun 2020 09:02:23 +0100
Message-Id: <20200618080223.951737-1-lee.jones@linaro.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_010328_303359_906155F4 
X-CRM114-Status: GOOD (  14.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
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
Changelog:

v2 => v3
  - Change 'is CONFIG' present check to include loadable modules
    - s/#ifdef CONFIG_MFD_SYSCON_I2C/#if IS_ENABLED(CONFIG_MFD_SYSCON_I2C)/

v1 => v2
  - Remove legacy references to OF
  - Allow building as a module (fixes h8300 0-day issue)

drivers/mfd/Kconfig            |  7 +++
 drivers/mfd/Makefile           |  1 +
 drivers/mfd/syscon-i2c.c       | 90 ++++++++++++++++++++++++++++++++++
 include/linux/mfd/syscon-i2c.h | 26 ++++++++++
 4 files changed, 124 insertions(+)
 create mode 100644 drivers/mfd/syscon-i2c.c
 create mode 100644 include/linux/mfd/syscon-i2c.h

diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index 0a59249198d34..f25f80f68edca 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -1300,6 +1300,13 @@ config MFD_SYSCON
 	  Select this option to enable accessing system control registers
 	  via regmap.
 
+config MFD_SYSCON_I2C
+	tristate "System Controller Register R/W Based on I2C Regmap"
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
index 0000000000000..be20ff45ece07
--- /dev/null
+++ b/drivers/mfd/syscon-i2c.c
@@ -0,0 +1,90 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * System Control Driver accessed over I2C
+ *
+ * Copyright (C) 2020 Linaro Ltd.
+ *
+ * Author: Lee Jones <lee.jones@linaro.org>
+ */
+
+#include <linux/device.h>
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
+	struct device *dev;
+	struct regmap *regmap;
+	struct list_head list;
+};
+
+static const struct regmap_config syscon_i2c_regmap_config = {
+	.reg_bits = 8,
+	.val_bits = 8,
+};
+
+static struct syscon *syscon_i2c_register(struct i2c_client *client)
+{
+	struct regmap_config syscon_config = syscon_i2c_regmap_config;
+	struct device *dev = &client->dev;
+	struct syscon *syscon;
+	struct regmap *regmap;
+	int ret;
+
+	syscon = devm_kzalloc(dev, sizeof(*syscon), GFP_KERNEL);
+	if (!syscon)
+		return ERR_PTR(-ENOMEM);
+
+	syscon_config.name = dev_name(dev);
+
+	regmap = devm_regmap_init_i2c(client, &syscon_config);
+	if (IS_ERR(regmap)) {
+		dev_err(dev, "Failed to initialise Regmap I2C\n");
+		ret = PTR_ERR(regmap);
+		return ERR_PTR(ret);
+	}
+
+	syscon->regmap = regmap;
+	syscon->dev = dev;
+
+	spin_lock(&syscon_i2c_list_slock);
+	list_add_tail(&syscon->list, &syscon_i2c_list);
+	spin_unlock(&syscon_i2c_list_slock);
+
+	return syscon;
+}
+
+static struct regmap *syscon_i2c_get_regmap(struct i2c_client *client)
+{
+	struct device *dev = &client->dev;
+	struct syscon *entry, *syscon = NULL;
+
+	spin_lock(&syscon_i2c_list_slock);
+
+	list_for_each_entry(entry, &syscon_i2c_list, list)
+		if (entry->dev == dev) {
+			syscon = entry;
+			break;
+		}
+
+	spin_unlock(&syscon_i2c_list_slock);
+
+	if (!syscon)
+		syscon = syscon_i2c_register(client);
+
+	if (IS_ERR(syscon))
+		return ERR_CAST(syscon);
+
+	return syscon->regmap;
+}
+
+struct regmap *syscon_i2c_to_regmap(struct i2c_client *client)
+{
+	return syscon_i2c_get_regmap(client);
+}
+EXPORT_SYMBOL_GPL(syscon_i2c_to_regmap);
diff --git a/include/linux/mfd/syscon-i2c.h b/include/linux/mfd/syscon-i2c.h
new file mode 100644
index 0000000000000..490bc37b603cb
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
+#if IS_ENABLED(CONFIG_MFD_SYSCON_I2C)
+extern struct regmap *syscon_i2c_to_regmap(struct i2c_client *client);
+#else
+static inline struct regmap *syscon_i2c_to_regmap(struct i2c_client *client)
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
