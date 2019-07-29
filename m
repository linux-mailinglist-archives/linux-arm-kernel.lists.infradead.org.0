Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 169A178C33
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 15:02:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Eh3R75IubsBfHL0qX66KQlwLwhjh43GoeK4SlDyuHgM=; b=Xnhi9rSWD9RBHB
	3V6N+3Qkb5t9Mdt0Bpr/O5IiyMOe08NzzBnA5CwXWs1IAhc7XYCo4dEFruFusLeTij6OQ/p46/6g0
	pfdunZVFGrlhbGXrZYx/1VNb29YYCu5ykVcVrFItH80rAuBBL5hRugSt5ABjme3QWXjCgqlQ9kcCm
	nSOnFy58YeyHdLAhoFhhKNjdmcyzVF1bhdDZQlxKzpIeRJTh0GTAnKx5J2DcA4n99BF9OED2xAf6U
	Rr4ZmGhbkmVTxOMFR/72vRwfipMXE2msg2zOodAeOm5783e/1DYJ0KQ+bkpkCg5fkWfXc8V/+aQf8
	UM7gtGJiV9ohHocXCwjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs5If-000855-O3; Mon, 29 Jul 2019 13:02:49 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs5II-0007mM-2m
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 13:02:28 +0000
Received: by mail-wm1-x343.google.com with SMTP id v15so53798587wml.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 06:02:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=EvlHbCW1OevHbW9Yaby9CFqayEK2s/Y2m4Jve2BO5WQ=;
 b=VlPXaYyPE4XBjSsfVxe3EjW4kowH8F7+G6YW+blqO2MW2TSUgeQr0Zuos0Ma6FWy/Q
 5jcd3ND8KK+L+x0oslsy145/BK7NM9ViNdZo/8QCWFQprAkPDSwl2KYfBBp6HiI2qZE2
 rdQyfzIZwe0u/l9+AyZKwG+LVikNAaoJwCMevQEkp+n1IpRQXYiF2NnpIB2iXNBQZ6KF
 94G4LF7tuhl/TLiFfMZ9THMM5mSQLg+tdfLsLD0x1JagkBkV2Q9sc7UV4TzvAvJyZDgf
 k8pu5zAAvVwvgZi7bvs7ogdjx7dL6M3AZ42kEuUVUXwcGX03X4tQAA/PN7iXN/iAcahm
 iOew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EvlHbCW1OevHbW9Yaby9CFqayEK2s/Y2m4Jve2BO5WQ=;
 b=q+DfiEGO7DfpcnScppfvyAC0R7ZkYLiOmSacmcLuajNHwPLBnzxftSxsHsl4xVutwI
 afDMZ6HnLvKxDPm1Ch6QZzLCqgb3In4lSOlHzqXXSTArTi14a/WEhjNh5OAcRDJsAcSQ
 40AeHWuH17oWgHdXEfpNwUqOPuvXmGyPDBJYV9ZuhUCDjqf73CqkieGqQZxifof42hmI
 aaj6b1YVvhgGmen8R/f7NEuYPfx/CMwOyICd8kiBS99vsX6GNl7Ha84byvWWp0oE94hx
 fIk9kSu1usdTc46cV8MFxncHlE0n7T65PttcFncDHZFtb1VA+jWwrav/8mT4pR1yeLvz
 MwEw==
X-Gm-Message-State: APjAAAUXlLPqcVXqC2LOzw2t4CarvHPd3eadc15l8uZ23tML+E3wg7Af
 DzzjbW6iHhpNkzqDtrp3STlJOQ==
X-Google-Smtp-Source: APXvYqwQo1q5iaW3jvl4f3ZJ8VQMUpxNO5ykvWK67eymaccK4cp71AzuQkWF8mYx0Mt+HvpBngFHmw==
X-Received: by 2002:a7b:c1c1:: with SMTP id a1mr104511842wmj.31.1564405343272; 
 Mon, 29 Jul 2019 06:02:23 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id x185sm52990545wmg.46.2019.07.29.06.02.22
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 29 Jul 2019 06:02:22 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 1/2] soc: amlogic: meson-clk-measure: protect measure with a
 mutex
Date: Mon, 29 Jul 2019 15:02:17 +0200
Message-Id: <20190729130218.6635-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190729130218.6635-1-narmstrong@baylibre.com>
References: <20190729130218.6635-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_060226_128063_02F417BD 
X-CRM114-Status: GOOD (  12.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In order to protect clock measuring when multiple process asks for
a measure, protect the main measure function with mutexes.

Reviewed-by: Kevin Hilman <khilman@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/soc/amlogic/meson-clk-measure.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/soc/amlogic/meson-clk-measure.c b/drivers/soc/amlogic/meson-clk-measure.c
index 19d4cbc93a17..c470e24f1dfa 100644
--- a/drivers/soc/amlogic/meson-clk-measure.c
+++ b/drivers/soc/amlogic/meson-clk-measure.c
@@ -11,6 +11,8 @@
 #include <linux/debugfs.h>
 #include <linux/regmap.h>
 
+static DEFINE_MUTEX(measure_lock);
+
 #define MSR_CLK_DUTY		0x0
 #define MSR_CLK_REG0		0x4
 #define MSR_CLK_REG1		0x8
@@ -360,6 +362,10 @@ static int meson_measure_id(struct meson_msr_id *clk_msr_id,
 	unsigned int val;
 	int ret;
 
+	ret = mutex_lock_interruptible(&measure_lock);
+	if (ret)
+		return ret;
+
 	regmap_write(priv->regmap, MSR_CLK_REG0, 0);
 
 	/* Set measurement duration */
@@ -377,8 +383,10 @@ static int meson_measure_id(struct meson_msr_id *clk_msr_id,
 
 	ret = regmap_read_poll_timeout(priv->regmap, MSR_CLK_REG0,
 				       val, !(val & MSR_BUSY), 10, 10000);
-	if (ret)
+	if (ret) {
+		mutex_unlock(&measure_lock);
 		return ret;
+	}
 
 	/* Disable */
 	regmap_update_bits(priv->regmap, MSR_CLK_REG0, MSR_ENABLE, 0);
@@ -386,6 +394,8 @@ static int meson_measure_id(struct meson_msr_id *clk_msr_id,
 	/* Get the value in multiple of gate time counts */
 	regmap_read(priv->regmap, MSR_CLK_REG2, &val);
 
+	mutex_unlock(&measure_lock);
+
 	if (val >= MSR_VAL_MASK)
 		return -EINVAL;
 
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
