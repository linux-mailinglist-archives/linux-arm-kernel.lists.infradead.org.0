Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0FD91B20DB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 10:02:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pFTII/yfjmiJHaCmF5QKwV9fIR/VFEiJFLxdv6sx3Go=; b=CqJ8DXgAhC3EpD
	ID0HTklE6XG6rH1bMOBrIId6r2vpnYwog4aD9nEtyQ/Wzlt3s8O5GviGAg9PpWwU2Glqg4RfEptCi
	OLSSZd6joe1cV9+7RtpcandAxGjLIuBsukFyB2xTr0Ggfrgftd5qCrDHh8ur/IwxuwASAgAHd2bLO
	sj8ujkcDhX89PNsB6DpqO4pF+GCIY0RFyXPqU78qsVA3RHuzIbYoTXmmqUJ5x7NS2QQJY4Bj7pSEc
	csoRlev0g5tLFzjcdRELQzMdyN+C8f93OdWRaohbwJBkTKJ5aSdMM6Sdb4gQ5QRt9pHhL87lFN+ul
	gKFrK/j6XXaX+/m17Q9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQnrj-0002Sr-4H; Tue, 21 Apr 2020 08:02:47 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQnqE-0001BE-Rn
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 08:01:18 +0000
Received: by mail-wm1-x344.google.com with SMTP id h2so2451562wmb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Apr 2020 01:01:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Y7Fjt5IgWK4L8ZaTfnqiN9Z1czwHhj1bMsFl3W8CxoM=;
 b=ha1EhZTrXKUsj9NuoE1itCGNDmEaBBo2GjdzWF1OreI69GTM5lZk1hhpO3kvkHk8zo
 XjzrWBZsnN/Q8csthmQWV8hqRkw7PAFdh9WA8CFGKGcm7Qx3CctudF2FJK+9jEbKLCmo
 WZ7G0mjBe6gC3cCM93lviLhkWCB8ERrs8nuM92Mv1EQl4kzIVKRfbGoF5MkiAgzWa1Pn
 u3DNLUregN0KvcmooXOT+11ND8dzJwMBb0MyZUas5vapR17S8iul5NLQxhJc7+yJh8vH
 2BUhqjgru0JXOrPbkLFaoHeHgwX28Z+BTa6l1iyHwSYywkm/ym8wUOm9uAbqvQsPbfGu
 2rsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Y7Fjt5IgWK4L8ZaTfnqiN9Z1czwHhj1bMsFl3W8CxoM=;
 b=iBvF+xIdWOZB9/w2DObvYAC/ymOEI0NPCpI18opozyvRMZu7PN3hXR5oKpqUaZUBuH
 PRXUKjX+eqXdyHngWbqD+kZj4hqwR0sfUde4BI/fPDmhXamd4rakbNbi/LAFyjD9Bzbf
 YWKLSuS9ZOccJVqL5szSuXB1Jrs7DKVlDaykfMh+ojNhp9/oUBP6zWZqv+H++PueAWSB
 PsIxt44/FA7nens8pBD87RMnF1TJmwDs9IbxLaxxzQSs17ukCQxuDMunFLlU6WORgjPG
 Yi1PzqUEY4DAc/ZgoQJebRZY+Z/AEbH06Lc2f8Iww/b/QiuBwSNL04WSAhvc1EmZhzNB
 3piQ==
X-Gm-Message-State: AGi0Puat+cL+ctnb+Lej59NV/Ynzcvew5WFuex9jQELAEAd0nyoq1Nco
 psG+sycZtwBm6rdXTh58jnIgtQ==
X-Google-Smtp-Source: APiQypKUJ/cjTU5KdVOCEhHx4v5y/Sf1RAOTdDgskIOOCXQ8YXmV5MGxkoDqUwhWM+8v+GBo+qgS1Q==
X-Received: by 2002:a1c:ed18:: with SMTP id l24mr3481548wmh.122.1587456073043; 
 Tue, 21 Apr 2020 01:01:13 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e35:2ec0:82b0:39cc:a07:8b48:cc56])
 by smtp.gmail.com with ESMTPSA id
 x132sm2561552wmg.33.2020.04.21.01.01.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Apr 2020 01:01:12 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: lee.jones@linaro.org, jdelvare@suse.com, linux@roeck-us.net,
 srinivas.kandagatla@linaro.org
Subject: [RFC 4/8] nvmem: add support for the Khadas MCU Programmable User
 Memory
Date: Tue, 21 Apr 2020 10:00:58 +0200
Message-Id: <20200421080102.22796-5-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200421080102.22796-1-narmstrong@baylibre.com>
References: <20200421080102.22796-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_010114_977009_A29604F7 
X-CRM114-Status: GOOD (  18.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
Cc: linux-hwmon@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>,
 linux-kernel@vger.kernel.org, nick@khadas.com,
 linux-amlogic@lists.infradead.org, art@khadas.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The new Khadas VIM2, VIM3 and Edge boards embeds an on-board microcontroller
offering a 56bytes User Programmable NVMEM array.

This array needs a password to be writable, thus a password sysfs file
has been added on the device node to unlock the NVMEM.

The default 6bytes password id: "Khadas"

This implements the user NVMEM devices as cell of the Khadas MCU MFD driver.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/nvmem/Kconfig               |   8 ++
 drivers/nvmem/Makefile              |   2 +
 drivers/nvmem/khadas-mcu-user-mem.c | 128 ++++++++++++++++++++++++++++
 3 files changed, 138 insertions(+)
 create mode 100644 drivers/nvmem/khadas-mcu-user-mem.c

diff --git a/drivers/nvmem/Kconfig b/drivers/nvmem/Kconfig
index d7b7f6d688e7..92cd4f6aa931 100644
--- a/drivers/nvmem/Kconfig
+++ b/drivers/nvmem/Kconfig
@@ -67,6 +67,14 @@ config JZ4780_EFUSE
 	  To compile this driver as a module, choose M here: the module
 	  will be called nvmem_jz4780_efuse.
 
+config NVMEM_KHADAS_MCU_USER_MEM
+	tristate "Khadas MCU User programmable memory support"
+	depends on MFD_KHADAS_MCU
+	depends on REGMAP
+	help
+	  This is a driver for the MCU User programmable memory
+	  available on the Khadas VIM and Edge boards.
+
 config NVMEM_LPC18XX_EEPROM
 	tristate "NXP LPC18XX EEPROM Memory Support"
 	depends on ARCH_LPC18XX || COMPILE_TEST
diff --git a/drivers/nvmem/Makefile b/drivers/nvmem/Makefile
index a7c377218341..0516a309542d 100644
--- a/drivers/nvmem/Makefile
+++ b/drivers/nvmem/Makefile
@@ -17,6 +17,8 @@ obj-$(CONFIG_NVMEM_IMX_OCOTP_SCU)	+= nvmem-imx-ocotp-scu.o
 nvmem-imx-ocotp-scu-y		:= imx-ocotp-scu.o
 obj-$(CONFIG_JZ4780_EFUSE)		+= nvmem_jz4780_efuse.o
 nvmem_jz4780_efuse-y		:= jz4780-efuse.o
+obj-$(CONFIG_NVMEM_KHADAS_MCU_USER_MEM)	+= nvmem-khadas-mcu-user-mem.o
+nvmem-khadas-mcu-user-mem-y	:= khadas-mcu-user-mem.o
 obj-$(CONFIG_NVMEM_LPC18XX_EEPROM)	+= nvmem_lpc18xx_eeprom.o
 nvmem_lpc18xx_eeprom-y	:= lpc18xx_eeprom.o
 obj-$(CONFIG_NVMEM_LPC18XX_OTP)	+= nvmem_lpc18xx_otp.o
diff --git a/drivers/nvmem/khadas-mcu-user-mem.c b/drivers/nvmem/khadas-mcu-user-mem.c
new file mode 100644
index 000000000000..a1d5ae9a030c
--- /dev/null
+++ b/drivers/nvmem/khadas-mcu-user-mem.c
@@ -0,0 +1,128 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Driver for Khadas MCU User programmable Memory
+ *
+ * Copyright (C) 2020 BayLibre SAS
+ * Author(s): Neil Armstrong <narmstrong@baylibre.com>
+ */
+
+#include <linux/clk.h>
+#include <linux/module.h>
+#include <linux/nvmem-provider.h>
+#include <linux/mfd/khadas-mcu.h>
+#include <linux/regmap.h>
+#include <linux/of.h>
+#include <linux/platform_device.h>
+
+static int khadas_mcu_user_mem_read(void *context, unsigned int offset,
+			    void *val, size_t bytes)
+{
+	struct khadas_mcu *khadas_mcu = context;
+
+	return regmap_bulk_read(khadas_mcu->map,
+				KHADAS_MCU_USER_DATA_0_REG + offset,
+				val, bytes);
+}
+
+static int khadas_mcu_user_mem_write(void *context, unsigned int offset,
+			     void *val, size_t bytes)
+{
+	struct khadas_mcu *khadas_mcu = context;
+
+	return regmap_bulk_write(khadas_mcu->map,
+				KHADAS_MCU_USER_DATA_0_REG + offset,
+				val, bytes);
+}
+
+static ssize_t password_store(struct device *dev, struct device_attribute *attr,
+			     const char *buf, size_t count)
+{
+	struct khadas_mcu *khadas_mcu = dev_get_drvdata(dev);
+	int i, ret;
+
+	if (count < 6)
+		return -EINVAL;
+
+	ret = regmap_write(khadas_mcu->map, KHADAS_MCU_PASSWD_START_REG, 1);
+	if (ret)
+		return ret;
+
+	for (i = 0 ; i < 6 ; ++i) {
+		ret = regmap_write(khadas_mcu->map,
+				   KHADAS_MCU_CHECK_USER_PASSWD_REG,
+				   buf[i]);
+		if (ret)
+			goto out;
+	}
+
+	ret = regmap_write(khadas_mcu->map, KHADAS_MCU_PASSWD_START_REG, 0);
+	if (ret)
+		return ret;
+
+	return count;
+out:
+	regmap_write(khadas_mcu->map, KHADAS_MCU_PASSWD_START_REG, 0);
+
+	return ret;
+}
+
+static DEVICE_ATTR_WO(password);
+
+static struct attribute *khadas_mcu_user_mem_sysfs_attributes[] = {
+	&dev_attr_password.attr,
+	NULL,
+};
+
+static const struct attribute_group khadas_mcu_user_mem_sysfs_attr_group = {
+	.attrs = khadas_mcu_user_mem_sysfs_attributes,
+};
+
+static int khadas_mcu_user_mem_probe(struct platform_device *pdev)
+{
+	struct khadas_mcu *khadas_mcu = dev_get_drvdata(pdev->dev.parent);
+	struct device *dev = &pdev->dev;
+	struct nvmem_device *nvmem;
+	struct nvmem_config *econfig;
+
+	econfig = devm_kzalloc(dev, sizeof(*econfig), GFP_KERNEL);
+	if (!econfig)
+		return -ENOMEM;
+
+	econfig->dev = pdev->dev.parent;
+	econfig->name = dev_name(pdev->dev.parent);
+	econfig->stride = 1;
+	econfig->word_size = 1;
+	econfig->reg_read = khadas_mcu_user_mem_read;
+	econfig->reg_write = khadas_mcu_user_mem_write;
+	econfig->size = 56;
+	econfig->priv = khadas_mcu;
+
+	platform_set_drvdata(pdev, khadas_mcu);
+
+	nvmem = devm_nvmem_register(&pdev->dev, econfig);
+	if (IS_ERR(nvmem))
+		return PTR_ERR(nvmem);
+
+	return sysfs_create_group(&pdev->dev.kobj,
+				  &khadas_mcu_user_mem_sysfs_attr_group);
+}
+
+static const struct platform_device_id khadas_mcu_user_mem_id_table[] = {
+	{ .name = "khadas-mcu-user-mem", },
+	{},
+};
+MODULE_DEVICE_TABLE(platform, khadas_mcu_user_mem_id_table);
+
+static struct platform_driver khadas_mcu_user_mem_driver = {
+	.probe = khadas_mcu_user_mem_probe,
+	.driver = {
+		.name = "khadas-mcu-user-mem",
+	},
+	.id_table = khadas_mcu_user_mem_id_table,
+};
+
+module_platform_driver(khadas_mcu_user_mem_driver);
+
+MODULE_AUTHOR("Neil Armstrong <narmstrong@baylibre.com>");
+MODULE_DESCRIPTION("Khadas MCU User MEM driver");
+MODULE_LICENSE("GPL v2");
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
