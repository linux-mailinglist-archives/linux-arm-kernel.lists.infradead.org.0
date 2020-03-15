Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CD5B185BD7
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Mar 2020 11:05:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7ZFKCeWrSoAMJlUwW6BFlmPYTzxsv6To0LmyYFJWN7M=; b=Jhlq+Ac3E5C9JP
	/Bem2xZoGxr0Ixx5mVDoxSp3btXbnWO7rxNer+Mw9fg7XHMtTRiZuPa4hpBKsFC/1IG2xSb0ql8MV
	n5PWylFIdhXWPnnMv8Rfo44VqwWPba3nVvjv3GamaiKJupqc/hh4naVSAK9o1mGsPAa2dC14vAOGP
	SqOHEh2Al+g4z7GOU2HFesji/i8JSmYUUZcf2oNho2enQGlARJZZUrIM58C+t7GgeRbLL7wnFU3M3
	bK3Pws0b8hKeB2zeU5wLnRtkYjRKcdO6JQj/MjIcTgt8mfJzXIxVxh6eTR3cm68u9VoHmnaaUVS4N
	lgEMuWfWvz8nNVCq8JXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDQ8q-0000cQ-Sf; Sun, 15 Mar 2020 10:05:08 +0000
Received: from outils.crapouillou.net ([89.234.176.41] helo=crapouillou.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDQ8U-0000W5-EE
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Mar 2020 10:04:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
 s=mail; t=1584266662; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=8K4at98VmVZ/sFGzndyiaIeGeVtmYp4j33U5NwycmlE=;
 b=XXxWrlPvXOPw8dW7Zjt0Mj2VJjdLgy7L/rL79sPujQA4p3Kw5LOsk6GmefWjmi6Y/W7EaQ
 AS4rdhpXZo6VXsaaiDQKlpFNrWS44lsEacQ6DjKK1nY6W73CA4tzAKm7iu1ckJl2MU6vNF
 5KrkOENWf1EGUI4ieLRvp5VxTfQtlvU=
From: Paul Cercueil <paul@crapouillou.net>
To: Nick Dyer <nick@shmanahar.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 2/2] input: atmel_mxt_ts: Add support for optional regulator
Date: Sun, 15 Mar 2020 11:04:16 +0100
Message-Id: <20200315100416.14151-2-paul@crapouillou.net>
In-Reply-To: <20200315100416.14151-1-paul@crapouillou.net>
References: <20200315100416.14151-1-paul@crapouillou.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_030446_685311_85966F11 
X-CRM114-Status: GOOD (  11.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Paul Cercueil <paul@crapouillou.net>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-input@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for an optional "vdd" regulator, as some platforms require a
regulator to be enabled for the touchscreen to be enabled.

Signed-off-by: Paul Cercueil <paul@crapouillou.net>
---
 drivers/input/touchscreen/atmel_mxt_ts.c | 25 +++++++++++++++++++++++-
 1 file changed, 24 insertions(+), 1 deletion(-)

diff --git a/drivers/input/touchscreen/atmel_mxt_ts.c b/drivers/input/touchscreen/atmel_mxt_ts.c
index ae60442efda0..b3511dad475a 100644
--- a/drivers/input/touchscreen/atmel_mxt_ts.c
+++ b/drivers/input/touchscreen/atmel_mxt_ts.c
@@ -22,6 +22,7 @@
 #include <linux/interrupt.h>
 #include <linux/of.h>
 #include <linux/property.h>
+#include <linux/regulator/consumer.h>
 #include <linux/slab.h>
 #include <linux/gpio/consumer.h>
 #include <asm/unaligned.h>
@@ -308,6 +309,7 @@ struct mxt_data {
 	struct t7_config t7_cfg;
 	struct mxt_dbg dbg;
 	struct gpio_desc *reset_gpio;
+	struct regulator *vdd;
 
 	/* Cached parameters from object table */
 	u16 T5_address;
@@ -3103,6 +3105,22 @@ static int mxt_probe(struct i2c_client *client, const struct i2c_device_id *id)
 
 	disable_irq(client->irq);
 
+	data->vdd = devm_regulator_get_optional(&client->dev, "vdd");
+	if (IS_ERR(data->vdd)) {
+		error = PTR_ERR(data->vdd);
+		dev_err(&client->dev, "Failed to get regulator: %d\n", error);
+		return error;
+	}
+
+	if (data->vdd) {
+		error = regulator_enable(data->vdd);
+		if (error) {
+			dev_err(&client->dev,
+				"Failed to enable regulator: %d\n", error);
+			return error;
+		}
+	}
+
 	if (data->reset_gpio) {
 		msleep(MXT_RESET_GPIO_TIME);
 		gpiod_set_value(data->reset_gpio, 1);
@@ -3111,7 +3129,7 @@ static int mxt_probe(struct i2c_client *client, const struct i2c_device_id *id)
 
 	error = mxt_initialize(data);
 	if (error)
-		return error;
+		goto err_disable_regulator;
 
 	error = sysfs_create_group(&client->dev.kobj, &mxt_attr_group);
 	if (error) {
@@ -3125,6 +3143,9 @@ static int mxt_probe(struct i2c_client *client, const struct i2c_device_id *id)
 err_free_object:
 	mxt_free_input_device(data);
 	mxt_free_object_table(data);
+err_disable_regulator:
+	if (data->vdd)
+		regulator_disable(data->vdd);
 	return error;
 }
 
@@ -3136,6 +3157,8 @@ static int mxt_remove(struct i2c_client *client)
 	sysfs_remove_group(&client->dev.kobj, &mxt_attr_group);
 	mxt_free_input_device(data);
 	mxt_free_object_table(data);
+	if (data->vdd)
+		regulator_disable(data->vdd);
 
 	return 0;
 }
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
