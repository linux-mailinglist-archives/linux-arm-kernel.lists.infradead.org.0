Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D08129C3C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 18:28:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rc2pPM1/r5yYOjWywzx49U8oaOtDg2ysdF0rSlhAn0U=; b=l6G3vV6FUElabP
	QMLLsh0WowkUHShiIs7vkbnH/4fXlRRjXWSEfl4yi/m1CiW46oyxkarohHWKWLTVv0c6YrZjcMqGX
	jomVRcAMIDu2NopNJpYi11hhVSu/W25MwpP1xd2VVdZLoGv0vuCJ8tWVKZz1LJ9QJIV2I2CtQxLi3
	HhGqLwVgNttWGGLJUYL6CiWVHtSB+74rfFpzNCI3jrqUHSVbS6F7ekG3/Dg8V+V775MqvmwARbdRQ
	u+dc/BY8Lr5MZ4lj0CJqioPJkBsb86hL8nCfL6H0cfJGmPVy6S04mbGnFskcYkF8FbgyFywBUF1GN
	XiZ2Gb0mfJE4KWGkbAvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUD3O-0001gs-Ji; Fri, 24 May 2019 16:28:22 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUD2l-00013R-Cb
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 16:27:49 +0000
Received: by mail-wr1-x444.google.com with SMTP id m3so10638965wrv.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 09:27:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fEjtPdaBAqYRZI8UVsqNWtXwmYQF0pkPjODsBVdhtdo=;
 b=EAEiG0Slgf2dbGN1ZsAmwlM5Tw6BOTdlwNxgjGUJjZGjGBni+Sdfph0avf/Abgm9mT
 n5wtJEO5hw2Myhpzx6upQtWmbH0ERyZh548xHOu+Px9Dtlf8JfMBxR9ttiteYr3rbsZM
 zZ+lGgHGfvzQOt1nFnBYNhts8lWC3rwwbZb0l1dXNiZt3lt8sGXy463gfoFkQUQmtIjY
 cFKNC9uNUbeTRlM5fSu75uhD0Q1JzKWdV7gjXLbkdzHO5FEkX13F3RN5oqK3x7vgHakT
 EPpweoBzV0y/C0Hp4i/mno1z7lac7yQqZEfvU3EMzAMmFOqpEvzh/FDbJ7oNXjp2ezzO
 xBwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fEjtPdaBAqYRZI8UVsqNWtXwmYQF0pkPjODsBVdhtdo=;
 b=KVpzvU/a2KfdEqcGKeQhBikBNXG/5lJ1OZRTeDv4USh6z9n1eRM4otfGMdgA5fBkm+
 LhPpMdkmIwFhUpZoUhWSoVIUPR3WSaFEGttSmRSJcYo9Lr8Ru3iI/f9PrTNvnDXUQEkc
 gPNQHQPOWF0pD1SdXzXQTy17q3F4Zr+Me5Z9wV0q7FjA6Ym7HwK02EkYenyflkq0S2/c
 Brj7q//y0JgK9xFSHSklGv4luW9Howm7ZGh9TjQ7NhkWcj6P4nM/zMETzf7mVyXXcJLI
 Vw3e153HSvoGn6G3Vjif5zM8/540C0gGwAVMIz0D/CvpQ6ztnCeSdffcQSD12BrobDjA
 6kNQ==
X-Gm-Message-State: APjAAAU3Nxr4/Le3X01MYowwWmzkxnuK/pAqK48gr+3wNhz0Xykwx0+5
 ZpXKz5UREWKvLAaBXe4rA7FiFw==
X-Google-Smtp-Source: APXvYqwn97jtLkvQRpG+CAHXUBfIhALTlPkBLVQdKQffyzM73YAtjwSSH4BYWEQO5ZLXskCqZNlEEA==
X-Received: by 2002:a5d:68d2:: with SMTP id p18mr59634313wrw.56.1558715262003; 
 Fri, 24 May 2019 09:27:42 -0700 (PDT)
Received: from sudo.home ([2a01:cb1d:112:6f00:2042:d8f2:ded8:fa95])
 by smtp.gmail.com with ESMTPSA id l6sm2200320wmi.24.2019.05.24.09.27.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 09:27:41 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-crypto@vger.kernel.org
Subject: [PATCH v2 4/6] crypto: atmel-i2c: add support for SHA204A random
 number generator
Date: Fri, 24 May 2019 18:26:49 +0200
Message-Id: <20190524162651.28189-5-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190524162651.28189-1-ard.biesheuvel@linaro.org>
References: <20190524162651.28189-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_092743_929383_F4D8D70B 
X-CRM114-Status: GOOD (  21.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Herbert Xu <herbert@gondor.apana.org.au>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Mika Westerberg <mika.westerberg@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Linaro/96boards Secure96 mezzanine contains (among other things)
an Atmel SHA204A symmetric crypto processor. This chip implements a
number of different functionalities, but one that is highly useful
for many different 96boards platforms is the random number generator.

So let's implement a driver for the SHA204A, and for the time being,
implement support for the random number generator only.

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 drivers/crypto/Kconfig         |  14 ++
 drivers/crypto/Makefile        |   1 +
 drivers/crypto/atmel-i2c.c     |  15 ++
 drivers/crypto/atmel-i2c.h     |  10 ++
 drivers/crypto/atmel-sha204a.c | 171 ++++++++++++++++++++
 5 files changed, 211 insertions(+)

diff --git a/drivers/crypto/Kconfig b/drivers/crypto/Kconfig
index ca7a5564e9ce..fe01a9905ab1 100644
--- a/drivers/crypto/Kconfig
+++ b/drivers/crypto/Kconfig
@@ -537,6 +537,20 @@ config CRYPTO_DEV_ATMEL_ECC
 	  To compile this driver as a module, choose M here: the module
 	  will be called atmel-ecc.
 
+config CRYPTO_DEV_ATMEL_SHA204A
+	tristate "Support for Microchip / Atmel SHA accelerator and RNG"
+	depends on I2C
+	select CRYPTO_DEV_ATMEL_I2C
+	select HW_RANDOM
+	help
+	  Microhip / Atmel SHA accelerator and RNG.
+	  Select this if you want to use the Microchip / Atmel SHA204A
+	  module as a random number generator. (Other functions of the
+	  chip are currently not exposed by this driver)
+
+	  To compile this driver as a module, choose M here: the module
+	  will be called atmel-sha204a.
+
 config CRYPTO_DEV_CCP
 	bool "Support for AMD Secure Processor"
 	depends on ((X86 && PCI) || (ARM64 && (OF_ADDRESS || ACPI))) && HAS_IOMEM
diff --git a/drivers/crypto/Makefile b/drivers/crypto/Makefile
index 394e84089924..afc4753b5d28 100644
--- a/drivers/crypto/Makefile
+++ b/drivers/crypto/Makefile
@@ -4,6 +4,7 @@ obj-$(CONFIG_CRYPTO_DEV_ATMEL_SHA) += atmel-sha.o
 obj-$(CONFIG_CRYPTO_DEV_ATMEL_TDES) += atmel-tdes.o
 obj-$(CONFIG_CRYPTO_DEV_ATMEL_I2C) += atmel-i2c.o
 obj-$(CONFIG_CRYPTO_DEV_ATMEL_ECC) += atmel-ecc.o
+obj-$(CONFIG_CRYPTO_DEV_ATMEL_SHA204A) += atmel-sha204a.o
 obj-$(CONFIG_CRYPTO_DEV_CAVIUM_ZIP) += cavium/
 obj-$(CONFIG_CRYPTO_DEV_CCP) += ccp/
 obj-$(CONFIG_CRYPTO_DEV_CCREE) += ccree/
diff --git a/drivers/crypto/atmel-i2c.c b/drivers/crypto/atmel-i2c.c
index 5e099368d120..be49ab7f4338 100644
--- a/drivers/crypto/atmel-i2c.c
+++ b/drivers/crypto/atmel-i2c.c
@@ -58,6 +58,21 @@ void atmel_i2c_init_read_cmd(struct atmel_i2c_cmd *cmd)
 }
 EXPORT_SYMBOL(atmel_i2c_init_read_cmd);
 
+void atmel_i2c_init_random_cmd(struct atmel_i2c_cmd *cmd)
+{
+	cmd->word_addr = COMMAND;
+	cmd->opcode = OPCODE_RANDOM;
+	cmd->param1 = 0;
+	cmd->param2 = 0;
+	cmd->count = RANDOM_COUNT;
+
+	atmel_i2c_checksum(cmd);
+
+	cmd->msecs = MAX_EXEC_TIME_RANDOM;
+	cmd->rxsize = RANDOM_RSP_SIZE;
+}
+EXPORT_SYMBOL(atmel_i2c_init_random_cmd);
+
 void atmel_i2c_init_genkey_cmd(struct atmel_i2c_cmd *cmd, u16 keyid)
 {
 	cmd->word_addr = COMMAND;
diff --git a/drivers/crypto/atmel-i2c.h b/drivers/crypto/atmel-i2c.h
index 82de5166acfa..c6bd43b78f33 100644
--- a/drivers/crypto/atmel-i2c.h
+++ b/drivers/crypto/atmel-i2c.h
@@ -7,6 +7,8 @@
 #ifndef __ATMEL_I2C_H__
 #define __ATMEL_I2C_H__
 
+#include <linux/hw_random.h>
+
 #define ATMEL_ECC_PRIORITY		300
 
 #define COMMAND				0x03 /* packet function */
@@ -28,6 +30,7 @@
 #define GENKEY_RSP_SIZE			(ATMEL_ECC_PUBKEY_SIZE + \
 					 CMD_OVERHEAD_SIZE)
 #define READ_RSP_SIZE			(4 + CMD_OVERHEAD_SIZE)
+#define RANDOM_RSP_SIZE			(32 + CMD_OVERHEAD_SIZE)
 #define MAX_RSP_SIZE			GENKEY_RSP_SIZE
 
 /**
@@ -96,15 +99,20 @@ static const struct {
 #define MAX_EXEC_TIME_ECDH		58
 #define MAX_EXEC_TIME_GENKEY		115
 #define MAX_EXEC_TIME_READ		1
+#define MAX_EXEC_TIME_RANDOM		50
 
 /* Command opcode */
 #define OPCODE_ECDH			0x43
 #define OPCODE_GENKEY			0x40
 #define OPCODE_READ			0x02
+#define OPCODE_RANDOM			0x1b
 
 /* Definitions for the READ Command */
 #define READ_COUNT			7
 
+/* Definitions for the RANDOM Command */
+#define RANDOM_COUNT			7
+
 /* Definitions for the GenKey Command */
 #define GENKEY_COUNT			7
 #define GENKEY_MODE_PRIVATE		0x04
@@ -142,6 +150,7 @@ struct atmel_i2c_client_priv {
 	u8 wake_token[WAKE_TOKEN_MAX_SIZE];
 	size_t wake_token_sz;
 	atomic_t tfm_count ____cacheline_aligned;
+	struct hwrng hwrng;
 };
 
 /**
@@ -179,6 +188,7 @@ void atmel_i2c_enqueue(struct atmel_i2c_work_data *work_data,
 int atmel_i2c_send_receive(struct i2c_client *client, struct atmel_i2c_cmd *cmd);
 
 void atmel_i2c_init_read_cmd(struct atmel_i2c_cmd *cmd);
+void atmel_i2c_init_random_cmd(struct atmel_i2c_cmd *cmd);
 void atmel_i2c_init_genkey_cmd(struct atmel_i2c_cmd *cmd, u16 keyid);
 int atmel_i2c_init_ecdh_cmd(struct atmel_i2c_cmd *cmd,
 			    struct scatterlist *pubkey);
diff --git a/drivers/crypto/atmel-sha204a.c b/drivers/crypto/atmel-sha204a.c
new file mode 100644
index 000000000000..ea0d2068ea4f
--- /dev/null
+++ b/drivers/crypto/atmel-sha204a.c
@@ -0,0 +1,171 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Microchip / Atmel SHA204A (I2C) driver.
+ *
+ * Copyright (c) 2019 Linaro, Ltd. <ard.biesheuvel@linaro.org>
+ */
+
+#include <linux/delay.h>
+#include <linux/device.h>
+#include <linux/err.h>
+#include <linux/errno.h>
+#include <linux/i2c.h>
+#include <linux/init.h>
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/scatterlist.h>
+#include <linux/slab.h>
+#include <linux/workqueue.h>
+#include "atmel-i2c.h"
+
+static void atmel_sha204a_rng_done(struct atmel_i2c_work_data *work_data,
+				   void *areq, int status)
+{
+	struct atmel_i2c_client_priv *i2c_priv = work_data->ctx;
+	struct hwrng *rng = areq;
+
+	if (status)
+		dev_warn_ratelimited(&i2c_priv->client->dev,
+				     "i2c transaction failed (%d)\n",
+				     status);
+
+	rng->priv = (unsigned long)work_data;
+	atomic_dec(&i2c_priv->tfm_count);
+}
+
+static int atmel_sha204a_rng_read_nonblocking(struct hwrng *rng, void *data,
+					      size_t max)
+{
+	struct atmel_i2c_client_priv *i2c_priv;
+	struct atmel_i2c_work_data *work_data;
+
+	i2c_priv = container_of(rng, struct atmel_i2c_client_priv, hwrng);
+
+	/* keep maximum 1 asynchronous read in flight at any time */
+	if (!atomic_add_unless(&i2c_priv->tfm_count, 1, 1))
+		return 0;
+
+	if (rng->priv) {
+		work_data = (struct atmel_i2c_work_data *)rng->priv;
+		max = min(sizeof(work_data->cmd.data), max);
+		memcpy(data, &work_data->cmd.data, max);
+		rng->priv = 0;
+	} else {
+		work_data = kmalloc(sizeof(*work_data), GFP_ATOMIC);
+		if (!work_data)
+			return -ENOMEM;
+
+		work_data->ctx = i2c_priv;
+		work_data->client = i2c_priv->client;
+
+		max = 0;
+	}
+
+	atmel_i2c_init_random_cmd(&work_data->cmd);
+	atmel_i2c_enqueue(work_data, atmel_sha204a_rng_done, rng);
+
+	return max;
+}
+
+static int atmel_sha204a_rng_read(struct hwrng *rng, void *data, size_t max,
+				  bool wait)
+{
+	struct atmel_i2c_client_priv *i2c_priv;
+	struct atmel_i2c_cmd cmd;
+	int ret;
+
+	if (!wait)
+		return atmel_sha204a_rng_read_nonblocking(rng, data, max);
+
+	i2c_priv = container_of(rng, struct atmel_i2c_client_priv, hwrng);
+
+	atmel_i2c_init_random_cmd(&cmd);
+
+	ret = atmel_i2c_send_receive(i2c_priv->client, &cmd);
+	if (ret)
+		return ret;
+
+	max = min(sizeof(cmd.data), max);
+	memcpy(data, cmd.data, max);
+
+	return max;
+}
+
+static int atmel_sha204a_probe(struct i2c_client *client,
+			       const struct i2c_device_id *id)
+{
+	struct atmel_i2c_client_priv *i2c_priv;
+	int ret;
+
+	ret = atmel_i2c_probe(client, id);
+	if (ret)
+		return ret;
+
+	i2c_priv = i2c_get_clientdata(client);
+
+	memset(&i2c_priv->hwrng, 0, sizeof(i2c_priv->hwrng));
+
+	i2c_priv->hwrng.name = dev_name(&client->dev);
+	i2c_priv->hwrng.read = atmel_sha204a_rng_read;
+	i2c_priv->hwrng.quality = 1024;
+
+	ret = hwrng_register(&i2c_priv->hwrng);
+	if (ret)
+		dev_warn(&client->dev, "failed to register RNG (%d)\n", ret);
+
+	return ret;
+}
+
+static int atmel_sha204a_remove(struct i2c_client *client)
+{
+	struct atmel_i2c_client_priv *i2c_priv = i2c_get_clientdata(client);
+
+	if (atomic_read(&i2c_priv->tfm_count)) {
+		dev_err(&client->dev, "Device is busy\n");
+		return -EBUSY;
+	}
+
+	if (i2c_priv->hwrng.priv)
+		kfree((void *)i2c_priv->hwrng.priv);
+	hwrng_unregister(&i2c_priv->hwrng);
+
+	return 0;
+}
+
+static const struct of_device_id atmel_sha204a_dt_ids[] = {
+	{ .compatible = "atmel,atsha204a", },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, atmel_sha204a_dt_ids);
+
+static const struct i2c_device_id atmel_sha204a_id[] = {
+	{ "atsha204a", 0 },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(i2c, atmel_sha204a_id);
+
+static struct i2c_driver atmel_sha204a_driver = {
+	.probe			= atmel_sha204a_probe,
+	.remove			= atmel_sha204a_remove,
+	.id_table		= atmel_sha204a_id,
+
+	.driver.name		= "atmel-sha204a",
+	.driver.of_match_table	= of_match_ptr(atmel_sha204a_dt_ids),
+};
+
+static int __init atmel_sha204a_init(void)
+{
+	return i2c_add_driver(&atmel_sha204a_driver);
+}
+
+static void __exit atmel_sha204a_exit(void)
+{
+	flush_scheduled_work();
+	i2c_del_driver(&atmel_sha204a_driver);
+}
+
+module_init(atmel_sha204a_init);
+module_exit(atmel_sha204a_exit);
+
+MODULE_AUTHOR("Ard Biesheuvel <ard.biesheuvel@linaro.org>");
+MODULE_LICENSE("GPL v2");
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
