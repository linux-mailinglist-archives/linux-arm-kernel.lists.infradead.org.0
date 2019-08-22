Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11D1B9973D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 16:46:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=z1qCQx5wE5TCkBvQpRq8qzaEj7z3U8CCGVEL9RxOTI4=; b=eKcGCHj/Y0oHSj
	zben6reFhovrSRvclfwyAneJDQ7ZLsnh2azZULPVnJH+aXZNs1VoxKwsZciH85UzEFytn5AqTzrSs
	aH0xdtQEVUKrJouT/M1TZFug4pM1MFDF0phJ1GGmwKzc6MBQxNAZApGBa5y1GBtrHtrBSzBv29rQq
	SM1F4/n+f4yZvC4LcIpnjtL7euRXCqH07Ha3gvx8EvosNvobfETpeNI5mEkHgdFj7bUqb/G4zvqy/
	ROjwAsD/YhCR3ZJCul/k9ewfvTmVCyHRuVBh4IPS+urFZbwgX8jJDehbZcxqLd7aOyofwXASzyXdY
	21YbRxy+XwMv1I8XQZ4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0oLg-000853-Ua; Thu, 22 Aug 2019 14:46:01 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0oLQ-00084c-TI
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 14:45:46 +0000
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 2ACEC49C283CA29A4ED7;
 Thu, 22 Aug 2019 22:45:42 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS405-HUB.china.huawei.com
 (10.3.19.205) with Microsoft SMTP Server id 14.3.439.0; Thu, 22 Aug 2019
 22:45:34 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <herbert@gondor.apana.org.au>, <davem@davemloft.net>,
 <nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <ludovic.desroches@microchip.com>
Subject: [PATCH -next] crypto: atmel - Fix -Wunused-const-variable warning
Date: Thu, 22 Aug 2019 22:44:44 +0800
Message-ID: <20190822144444.74872-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_074545_144043_29FA6CD2 
X-CRM114-Status: UNSURE (   9.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: YueHaibing <yuehaibing@huawei.com>, linux-crypto@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

drivers/crypto/atmel-i2c.h:68:3: warning:
 error_list defined but not used [-Wunused-const-variable=]

error_list is only used in atmel-i2c.c,
so just move the definition over there.

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/crypto/atmel-i2c.c | 12 ++++++++++++
 drivers/crypto/atmel-i2c.h | 12 ------------
 2 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/crypto/atmel-i2c.c b/drivers/crypto/atmel-i2c.c
index dc876fab..1d33559 100644
--- a/drivers/crypto/atmel-i2c.c
+++ b/drivers/crypto/atmel-i2c.c
@@ -21,6 +21,18 @@
 #include <linux/workqueue.h>
 #include "atmel-i2c.h"
 
+static const struct {
+	u8 value;
+	const char *error_text;
+} error_list[] = {
+	{ 0x01, "CheckMac or Verify miscompare" },
+	{ 0x03, "Parse Error" },
+	{ 0x05, "ECC Fault" },
+	{ 0x0F, "Execution Error" },
+	{ 0xEE, "Watchdog about to expire" },
+	{ 0xFF, "CRC or other communication error" },
+};
+
 /**
  * atmel_i2c_checksum() - Generate 16-bit CRC as required by ATMEL ECC.
  * CRC16 verification of the count, opcode, param1, param2 and data bytes.
diff --git a/drivers/crypto/atmel-i2c.h b/drivers/crypto/atmel-i2c.h
index 21860b9..63b97b1 100644
--- a/drivers/crypto/atmel-i2c.h
+++ b/drivers/crypto/atmel-i2c.h
@@ -62,18 +62,6 @@ struct atmel_i2c_cmd {
 #define STATUS_NOERR			0x00
 #define STATUS_WAKE_SUCCESSFUL		0x11
 
-static const struct {
-	u8 value;
-	const char *error_text;
-} error_list[] = {
-	{ 0x01, "CheckMac or Verify miscompare" },
-	{ 0x03, "Parse Error" },
-	{ 0x05, "ECC Fault" },
-	{ 0x0F, "Execution Error" },
-	{ 0xEE, "Watchdog about to expire" },
-	{ 0xFF, "CRC or other communication error" },
-};
-
 /* Definitions for eeprom organization */
 #define CONFIG_ZONE			0
 
-- 
2.7.4



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
