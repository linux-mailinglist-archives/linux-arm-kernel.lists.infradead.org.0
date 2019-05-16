Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B275820D26
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 18:37:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=6DZbZheqjx7yDLXwnTJ53TKO2j2YZLNyc95ySmhVyZs=; b=bkI
	+Rl6xH+iJhq3cIkT7Znk1uEygfig8bfaZDO1n2mgiPTRFlKWFgZsC9VFh5Oy+K3gEZHj9WNxlmSm/
	sFd6nTeG5F7n9jw+szg9JzxYBsaRM2VxKvzOf1Noz64W3+/oygwd6Ibd366PNWvC9L9JuMemJmB7T
	JWDFNEO3j9hRIxZHn3wETW7zKfAR8H7Ey/arZkOrny4cQ96vrHnok0VBP4JVZXJnq2GrgaMV0SaAy
	1cK3CS1nt1euZa6kwGKlS0qmLTwskpeQJisyr6D5lhjxDq10E+7jgeyxxQZfJpWx86V0ixYewmsLX
	GOVAgR4Z51t8Pt2Lq537Oypp0vG9fEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRJNk-0004GO-VV; Thu, 16 May 2019 16:37:24 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRJNb-0004EF-3R
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 16:37:17 +0000
Received: by mail-wm1-x341.google.com with SMTP id 15so100772wmg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 09:37:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=ThsUgCnRiH2xV7RaQ5eyyKQF0jGHePi2XouhM2DCtVc=;
 b=qi6MyDpzUBi/YhH3EIVRa9In2VP4i8/Rqo8r4u+l2ILm5g/G2aH1ZkO2/tkZJzAz+4
 fP3htptmdBLOK1x23VJVUHtY2KnUbze/RsIZyaDFGvx7uSAOWifUSoQUrBeEOo6Z9JEx
 UJBXkkffA169xraI5y96uDyl+P+i1AqTKrqfqcXDZeVKHP44f4+RfHrbVPDj2EzMhBij
 bZCJ7Po/trm6o16eQHuuiwHfXslowAzpx7CsB1A1XWwMYZo348VaoFUGdTxC8RnlSsB+
 /iCrhFXuRYx21k05rd3DgNt4GDVe4/Huxf5QAxwLlbuPQbm74I5EsNkyp3ap1yJF/89E
 OY7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=ThsUgCnRiH2xV7RaQ5eyyKQF0jGHePi2XouhM2DCtVc=;
 b=B5kNZxUwQY8TOlTHSJtfzY3kXD6y1dl/7TcFWIWousGV7sC8Aunxfhopm7jsBunqgL
 ZV9xkf4KeUI3IzZ5VDlgfEoZAEKBXlxslGzmgEJBLGkUEIDv/AqiMl/3QbC6KXe+EogD
 JNW46ZqmdCcBPkuXDvaCM9EDXdGmzKwK2gMpKRVH4Jfd0ykh1NcOAHqiuxORZ+MitOQ/
 w+qOKh26J/vh089Nb8O0ITq5ftzjK2zcynBezy85zqK4qU+gP4wmh3hbLLXuZulgUI9z
 xOcfaCAuewMXf6GT5dmaW8SFAPRdceRsu4f2OrKNB4Y67c41uf0E3DfTEJujhodiYk4T
 p9Ig==
X-Gm-Message-State: APjAAAWZVAXqYvHmdXrT8F6bVAb2sAJ0Ag1g3ePaKXxzgNqfLeLhhFkI
 9fskh0nnPSf1SapQtMar/Jm0Bg==
X-Google-Smtp-Source: APXvYqybn3Y6301Af98XjzaiHZSg4KGov0qU7mWWN97Wd731o4jzd/edN9W3fJ1YKaXz9qJGZniWPg==
X-Received: by 2002:a1c:1f47:: with SMTP id f68mr18234178wmf.57.1558024632927; 
 Thu, 16 May 2019 09:37:12 -0700 (PDT)
Received: from loys-ubuntu-BY1835A49200471.thefacebook.com
 ([2620:10d:c092:180::1:e504])
 by smtp.googlemail.com with ESMTPSA id x68sm2112515wmf.13.2019.05.16.09.37.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 16 May 2019 09:37:12 -0700 (PDT)
From: Loys Ollivier <lollivier@baylibre.com>
To: Johan Hovold <johan@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v2] gnss: get serial speed from subdrivers
Date: Thu, 16 May 2019 18:37:06 +0200
Message-Id: <1558024626-19395-1-git-send-email-lollivier@baylibre.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_093715_205442_6F0876D8 
X-CRM114-Status: GOOD (  16.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: baylibre-upstreaming@groups.io, Loys Ollivier <lollivier@baylibre.com>,
 linux-kernel@vger.kernel.org, Corentin Labbe <clabbe.montjoie@gmail.com>,
 linux-mediatek@lists.infradead.org, Colin Ian King <colin.king@canonical.com>,
 linux-arm-kernel@lists.infradead.org
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

Changes since v1[0]
- Use u32 data types instead of uint

[0]: https://lore.kernel.org/lkml/1557322788-10403-1-git-send-email-lollivier@baylibre.com/

Cheers,
Loys

 drivers/gnss/mtk.c    |  7 ++++++-
 drivers/gnss/serial.c | 21 +++++++++++++--------
 drivers/gnss/serial.h |  3 ++-
 drivers/gnss/ubx.c    |  3 ++-
 4 files changed, 23 insertions(+), 11 deletions(-)

diff --git a/drivers/gnss/mtk.c b/drivers/gnss/mtk.c
index d1fc55560daf..1d35bcb52072 100644
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
@@ -69,7 +73,8 @@ static int mtk_probe(struct serdev_device *serdev)
 	struct mtk_data *data;
 	int ret;
 
-	gserial = gnss_serial_allocate(serdev, sizeof(*data));
+	gserial = gnss_serial_allocate(serdev, sizeof(*data),
+				       (u32)serial_speed);
 	if (IS_ERR(gserial)) {
 		ret = PTR_ERR(gserial);
 		return ret;
diff --git a/drivers/gnss/serial.c b/drivers/gnss/serial.c
index def64b36d994..3be799702291 100644
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
+	u32 speed;
 
-	of_property_read_u32(node, "current-speed", &speed);
+	of_property_read_u32(node, "default-speed", &speed);
 
 	gserial->speed = speed;
 
@@ -121,7 +117,8 @@ static int gnss_serial_parse_dt(struct serdev_device *serdev)
 }
 
 struct gnss_serial *gnss_serial_allocate(struct serdev_device *serdev,
-						size_t data_size)
+					 size_t data_size,
+					 u32 serial_speed)
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
index 980ffdc86c2a..17df61e399e6 100644
--- a/drivers/gnss/serial.h
+++ b/drivers/gnss/serial.h
@@ -33,7 +33,8 @@ struct gnss_serial_ops {
 extern const struct dev_pm_ops gnss_serial_pm_ops;
 
 struct gnss_serial *gnss_serial_allocate(struct serdev_device *gserial,
-						size_t data_size);
+					 size_t data_size,
+					 u32 serial_speed);
 void gnss_serial_free(struct gnss_serial *gserial);
 
 int gnss_serial_register(struct gnss_serial *gserial);
diff --git a/drivers/gnss/ubx.c b/drivers/gnss/ubx.c
index 7b05bc40532e..52ae6e4987e0 100644
--- a/drivers/gnss/ubx.c
+++ b/drivers/gnss/ubx.c
@@ -68,8 +68,9 @@ static int ubx_probe(struct serdev_device *serdev)
 	struct gnss_serial *gserial;
 	struct ubx_data *data;
 	int ret;
+	u32 speed = 4800;
 
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
