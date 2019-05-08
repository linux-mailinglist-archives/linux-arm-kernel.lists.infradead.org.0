Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E56C417AD3
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 15:40:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=m3vmq4zisCLGyfDrjALntkDSQT7pkhvqlDAkY8jIBMo=; b=T7w
	b8Wn8xNNzKUTna5oOVJD1ad+RsPI6USwARCCnNCCaYHXeFPCc1qaY8wPSUZ39TeQkap0pyR38bAjQ
	drQFHwMEKMVKVQMOSjhoDkvxoVdaw5rcEfV/Uc67KhWvX7nkPVOmEn+q3hvqYrTCZL5s28JFsH8sj
	6C5TX7lng9CtmXw/0iGsR2yqQdVcQ77Vdd7mEEuwb6MtbOUB1uJOUWKTmMoYM/lhQPkVfcIxiZn/S
	rUzclVdWxTLiGEnOXafVzxh3clF1Dq2W+REPrbJDprgvJjE7goKYvCmvTGfm50/nXuftF9sYZcA1w
	q8GFVm/8jvT2c++G+0boc4ZcCv/H+zQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOMnq-0003r7-Dv; Wed, 08 May 2019 13:40:10 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOMnf-0003mH-6h
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 13:40:01 +0000
Received: by mail-wm1-x341.google.com with SMTP id m20so1950660wmg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 May 2019 06:39:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=p0DIC9RoOTp6SzQmmO8Edvcsn7tr0urB+LYy5B+wiis=;
 b=kiAi5r4hnzo2DMsXy9EeVN564hgsEzALAvkBuFWKjvCsjTiPNXJubqo4k9Nom946/w
 FzWDLuiFoWejHVJ1Xw54rZVeGj0JhSLkHWRL2u6rMLvKlnOTX+1TX06G/BptEkqCSHl7
 CEvdAF0VrlLnqvoTm6wd85Md7LHejrWWzh4ICC/7hqS/Cx31XqIPyPXT0enZbvF9OCCD
 6ha+lhi0ptpWGlhOadaA3HEpenAjNVibEp5AYK7tJ/FcaVV3njwL4AUGcaA9+mDvYR3X
 2IkLUnqfy3xam3MmQL/+wWcGQrqDNrV8Hn4KwIrWmpQXusif34TXjc7EtoNUALGrApaj
 PAgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=p0DIC9RoOTp6SzQmmO8Edvcsn7tr0urB+LYy5B+wiis=;
 b=bS8wB2gYDxJMqVheCpkH5qNvzx03e5xe7Fw6oN21u4TB6jbqjIfJvLrZDtuq03zJA5
 mXTd6J3Hvk6BNKyzkvXmCxpCaL8/pTmD4U9OWvAR42Er/VtoCjM9FrLrVsnB8gCxFWMe
 qmbH/kzSDuhVNIuXUnl4F1Uer92BkX7uTag6w9UFJOHvGOGMdxMfdiVX/DxWJrHCuFKh
 Ic81EyiQinWS6msGTCIJ8Oz/I6+gA5dY0LAf52Mm/SUQZeA/Btb/Cw4E3Bv2GhM8XOSY
 KWaqJoEfDGRwvQ+KXfjTUJ6xK6UfZsk1bgzaBUq5ORHAQgTSJDASoXyW0pwLihSbFa/M
 32Og==
X-Gm-Message-State: APjAAAUCas7LwIXHCjz+WF2wxHJCNbaWeD0dqpQXs5rWAg4JxuBi5jEZ
 vttAG4joALx6vGSc4lr6X/PXdg==
X-Google-Smtp-Source: APXvYqztyBWRZRTM8YEZX/QDkF5TkOozNVED+JH3xbn0pn6zJMQtLN5K+O70+NmUkBxM3lB1H59mKw==
X-Received: by 2002:a1c:7f97:: with SMTP id a145mr3226937wmd.139.1557322796137; 
 Wed, 08 May 2019 06:39:56 -0700 (PDT)
Received: from loys-ubuntu-BY1835A49200471.thefacebook.com
 ([2620:10d:c092:180::1:3d10])
 by smtp.googlemail.com with ESMTPSA id 19sm1633060wmf.44.2019.05.08.06.39.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 08 May 2019 06:39:55 -0700 (PDT)
From: Loys Ollivier <lollivier@baylibre.com>
To: Johan Hovold <johan@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [RESEND PATCH] gnss: get serial speed from subdrivers
Date: Wed,  8 May 2019 15:39:48 +0200
Message-Id: <1557322788-10403-1-git-send-email-lollivier@baylibre.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_063959_255541_9C2040B3 
X-CRM114-Status: GOOD (  16.01  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Colin Ian King <colin.king@canonical.com>,
 Loys Ollivier <lollivier@baylibre.com>, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The default serial speed was hardcoded in the code.
Rename current-speed to default-speed.
Add a function parameter that lets the subdrivers specify their
default speed.
If not specified fallback to the device-tree default-speed.

Signed-off-by: Loys Ollivier <lollivier@baylibre.com>
---
Hello,

This patch moves the currently hardcoded, default serial speed
to the subdrivers.
If the default speed is not specified by the subdriver then it is read
from the device tree.

Cheers,
Loys

 drivers/gnss/mtk.c    |  6 +++++-
 drivers/gnss/serial.c | 21 +++++++++++++--------
 drivers/gnss/serial.h |  3 ++-
 drivers/gnss/ubx.c    |  3 ++-
 4 files changed, 22 insertions(+), 11 deletions(-)

diff --git a/drivers/gnss/mtk.c b/drivers/gnss/mtk.c
index d1fc55560daf..a1a89f0cc75c 100644
--- a/drivers/gnss/mtk.c
+++ b/drivers/gnss/mtk.c
@@ -16,6 +16,10 @@
 
 #include "serial.h"
 
+static uint serial_speed = 9600; /* Serial speed (baud rate) */
+module_param(serial_speed, uint, 0644);
+MODULE_PARM_DESC(serial_speed, "Serial baud rate (bit/s), (default = 9600)");
+
 struct mtk_data {
 	struct regulator *vbackup;
 	struct regulator *vcc;
@@ -69,7 +73,7 @@ static int mtk_probe(struct serdev_device *serdev)
 	struct mtk_data *data;
 	int ret;
 
-	gserial = gnss_serial_allocate(serdev, sizeof(*data));
+	gserial = gnss_serial_allocate(serdev, sizeof(*data), serial_speed);
 	if (IS_ERR(gserial)) {
 		ret = PTR_ERR(gserial);
 		return ret;
diff --git a/drivers/gnss/serial.c b/drivers/gnss/serial.c
index def64b36d994..706fc5b46811 100644
--- a/drivers/gnss/serial.c
+++ b/drivers/gnss/serial.c
@@ -103,17 +103,13 @@ static int gnss_serial_set_power(struct gnss_serial *gserial,
 	return gserial->ops->set_power(gserial, state);
 }
 
-/*
- * FIXME: need to provide subdriver defaults or separate dt parsing from
- * allocation.
- */
 static int gnss_serial_parse_dt(struct serdev_device *serdev)
 {
 	struct gnss_serial *gserial = serdev_device_get_drvdata(serdev);
 	struct device_node *node = serdev->dev.of_node;
-	u32 speed = 4800;
+	uint speed;
 
-	of_property_read_u32(node, "current-speed", &speed);
+	of_property_read_u32(node, "default-speed", &speed);
 
 	gserial->speed = speed;
 
@@ -121,7 +117,8 @@ static int gnss_serial_parse_dt(struct serdev_device *serdev)
 }
 
 struct gnss_serial *gnss_serial_allocate(struct serdev_device *serdev,
-						size_t data_size)
+					 size_t data_size,
+					 uint serial_speed)
 {
 	struct gnss_serial *gserial;
 	struct gnss_device *gdev;
@@ -146,10 +143,18 @@ struct gnss_serial *gnss_serial_allocate(struct serdev_device *serdev,
 	serdev_device_set_drvdata(serdev, gserial);
 	serdev_device_set_client_ops(serdev, &gnss_serial_serdev_ops);
 
-	ret = gnss_serial_parse_dt(serdev);
+	/* Serial speed provided by subdriver takes precedence over dt*/
+	if (!serial_speed)
+		ret = gnss_serial_parse_dt(serdev);
+	else
+		gserial->speed = serial_speed;
+
 	if (ret)
 		goto err_put_device;
 
+	if (!gserial->speed)
+		return -EINVAL;
+
 	return gserial;
 
 err_put_device:
diff --git a/drivers/gnss/serial.h b/drivers/gnss/serial.h
index 980ffdc86c2a..29212b57a739 100644
--- a/drivers/gnss/serial.h
+++ b/drivers/gnss/serial.h
@@ -33,7 +33,8 @@ struct gnss_serial_ops {
 extern const struct dev_pm_ops gnss_serial_pm_ops;
 
 struct gnss_serial *gnss_serial_allocate(struct serdev_device *gserial,
-						size_t data_size);
+					 size_t data_size,
+					 uint serial_speed);
 void gnss_serial_free(struct gnss_serial *gserial);
 
 int gnss_serial_register(struct gnss_serial *gserial);
diff --git a/drivers/gnss/ubx.c b/drivers/gnss/ubx.c
index 7b05bc40532e..26a278c7e2fd 100644
--- a/drivers/gnss/ubx.c
+++ b/drivers/gnss/ubx.c
@@ -68,8 +68,9 @@ static int ubx_probe(struct serdev_device *serdev)
 	struct gnss_serial *gserial;
 	struct ubx_data *data;
 	int ret;
+	uint speed = 4800;
 
-	gserial = gnss_serial_allocate(serdev, sizeof(*data));
+	gserial = gnss_serial_allocate(serdev, sizeof(*data), speed);
 	if (IS_ERR(gserial)) {
 		ret = PTR_ERR(gserial);
 		return ret;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
