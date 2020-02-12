Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F37B159E3A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 01:43:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=poiESoOU0KZmT8wdf3Z3DQQNxPHEM78NhjqBZUzbDUs=; b=f9glVEsb6cbWfE
	r26fG38YMLGyfEK1/il7DTVh2VHCMTiWvkx+oWkX+WVlJ6GQIu5iXi3aJ6mkNad246hGCyRVofOf1
	7LOgv8Laowyf1ZHJ4O8C8ERmdB3scjlKLMlUIis+9FJaFpJnxJLQrpKIA/wfQFVGewX4m0enhCj8r
	vfKtv32RHFKi1AbKQ9NsZB0jTOEZSTeCpOgI401MFgHe8zdDwNRVoHta8B+22M74SxolHb8LPtJtI
	K72QrfrZcR4hyqNPt1H54IDUUi56ycLmmFTHaG9bDdLyMYio0GtJzG/qHjZLOVOcL5C9+JDehZ+JF
	fwZdv1ezNX+NsDvTcY1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1g7V-0002IW-3a; Wed, 12 Feb 2020 00:43:13 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1g4k-0008Fb-1x; Wed, 12 Feb 2020 00:40:23 +0000
Received: by mail-lf1-x143.google.com with SMTP id z18so289573lfe.2;
 Tue, 11 Feb 2020 16:40:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rcbXhKxbLXfiAbDzRSziEIn2ltFWOw8uQS3zIVYn+gg=;
 b=Q5Sp8zgS0ILV/I/WeleMtccq3UCbAnE537Le10n/7S71lcR/QnIXWrrz/FhpSuiDpe
 TyPGuMA4oBihm/7pjxNXPlwtK+y54OsOaDxOP5lBDX4BVVp/wx7q2V7fICW0cIYM9WgN
 Cl7REP3zzC9ukuTA4cXHD+qzOhsr5eMr3X2VUpjvYuBjZi9WVH3RnRA7R/X50C2eEF4g
 1/y7nw8uDN26gwQ/a9I8fjMym4EYDBjzEsXozT6SASYY6fYbrbOQ8FeJevr+yJ0B8Gzk
 OopPjxQSSW+BPfugOOXK+0Tj6rWU93XFFLrj7beOTvxv/i5Wf1CfwlubNDx7QJsic1de
 dXag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rcbXhKxbLXfiAbDzRSziEIn2ltFWOw8uQS3zIVYn+gg=;
 b=QjGc0qImyiC+Ct94bOKqUEWOW6FIw7LrAXC3pmoLTSYzVzMJakaSlu1LYntGe3zOEr
 Nz9rJVPKQYZNvyOvYuDYmVeI/nvpkOuL0WfvUnOQD8kIEXPuEvftlPx8pa1hculWQ26U
 iVdGQiDP2WNq9/G+8mqrqLViggILSlZITxus5SZ377dJxPA4t0FcC+XRS6LAvrzP5NZY
 J0CyrqYEOuQk4xMaSoW5MLqIlitT4g9WTThM/MD96UFrROUG2+suGICx9wRQv7/JDSMB
 ODfVb/Bpnc6fuUBe37H2jRAEvxhqLorNuHAk0KJjhbaMbLsYm+FdWq6RidQ9OpObyroO
 CASQ==
X-Gm-Message-State: APjAAAWY11JcX3Lfn6BzPwvZ8niB79e36nGW910lg7FkAkNQ3piRuct+
 7bUkTCgrG/q7lH/P6ms3Uqo=
X-Google-Smtp-Source: APXvYqwodYVhDD1l/Apthg8LfXfLDg0cdZ2iqObzjbj+/p0QSGtj25rfHAqLSEKqv2DwJdUxnOeDww==
X-Received: by 2002:ac2:44d5:: with SMTP id d21mr5090125lfm.188.1581468020153; 
 Tue, 11 Feb 2020 16:40:20 -0800 (PST)
Received: from z50.gdansk-morena.vectranet.pl
 (109241122244.gdansk.vectranet.pl. [109.241.122.244])
 by smtp.gmail.com with ESMTPSA id e8sm3621935ljb.45.2020.02.11.16.40.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Feb 2020 16:40:19 -0800 (PST)
From: Janusz Krzysztofik <jmkrzyszt@gmail.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>
Subject: [RFC PATCH 06/14] mtd: rawnand: ams-delta: Push inversion handling to
 gpiolib
Date: Wed, 12 Feb 2020 01:39:21 +0100
Message-Id: <20200212003929.6682-7-jmkrzyszt@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200212003929.6682-1-jmkrzyszt@gmail.com>
References: <20200212003929.6682-1-jmkrzyszt@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_164022_118621_49B95B46 
X-CRM114-Status: GOOD (  12.57  )
X-Spam-Score: 1.4 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 1.0 HK_RANDOM_FROM         From username looks random
 0.6 HK_RANDOM_ENVFROM      Envelope sender username looks random
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jmkrzyszt[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Aaro Koskinen <aaro.koskinen@iki.fi>,
 Tony Lindgren <tony@atomide.com>, Janusz Krzysztofik <jmkrzyszt@gmail.com>,
 linux-mtd@lists.infradead.org, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Let platforms take care of declaring correct GPIO pin polarity so we
can just ask a GPIO line to be asserted or deasserted and gpiolib deals
with the rest depending on how the platform is configured.

Inspired by similar changes to regulator drivers by Linus Walleij
<linus.walleij@linaro.org>, thanks!

Signed-off-by: Janusz Krzysztofik <jmkrzyszt@gmail.com>
---
 arch/arm/mach-omap1/board-ams-delta.c | 12 ++++++++----
 drivers/mtd/nand/raw/ams-delta.c      | 22 +++++++++++-----------
 2 files changed, 19 insertions(+), 15 deletions(-)

diff --git a/arch/arm/mach-omap1/board-ams-delta.c b/arch/arm/mach-omap1/board-ams-delta.c
index f4d2ef97099e..8d32894ecd2e 100644
--- a/arch/arm/mach-omap1/board-ams-delta.c
+++ b/arch/arm/mach-omap1/board-ams-delta.c
@@ -341,10 +341,14 @@ static struct gpiod_lookup_table ams_delta_nand_gpio_table = {
 	.table = {
 		GPIO_LOOKUP(OMAP_GPIO_LABEL, AMS_DELTA_GPIO_PIN_NAND_RB, "rdy",
 			    0),
-		GPIO_LOOKUP(LATCH2_LABEL, LATCH2_PIN_NAND_NCE, "nce", 0),
-		GPIO_LOOKUP(LATCH2_LABEL, LATCH2_PIN_NAND_NRE, "nre", 0),
-		GPIO_LOOKUP(LATCH2_LABEL, LATCH2_PIN_NAND_NWP, "nwp", 0),
-		GPIO_LOOKUP(LATCH2_LABEL, LATCH2_PIN_NAND_NWE, "nwe", 0),
+		GPIO_LOOKUP(LATCH2_LABEL, LATCH2_PIN_NAND_NCE, "nce",
+			    GPIO_ACTIVE_LOW),
+		GPIO_LOOKUP(LATCH2_LABEL, LATCH2_PIN_NAND_NRE, "nre",
+			    GPIO_ACTIVE_LOW),
+		GPIO_LOOKUP(LATCH2_LABEL, LATCH2_PIN_NAND_NWP, "nwp",
+			    GPIO_ACTIVE_LOW),
+		GPIO_LOOKUP(LATCH2_LABEL, LATCH2_PIN_NAND_NWE, "nwe",
+			    GPIO_ACTIVE_LOW),
 		GPIO_LOOKUP(LATCH2_LABEL, LATCH2_PIN_NAND_ALE, "ale", 0),
 		GPIO_LOOKUP(LATCH2_LABEL, LATCH2_PIN_NAND_CLE, "cle", 0),
 		GPIO_LOOKUP_IDX(OMAP_MPUIO_LABEL, 0, "data", 0, 0),
diff --git a/drivers/mtd/nand/raw/ams-delta.c b/drivers/mtd/nand/raw/ams-delta.c
index fb96f6a3b0b3..c7aeb940accd 100644
--- a/drivers/mtd/nand/raw/ams-delta.c
+++ b/drivers/mtd/nand/raw/ams-delta.c
@@ -44,9 +44,9 @@ struct ams_delta_nand {
 
 static void ams_delta_write_commit(struct ams_delta_nand *priv)
 {
-	gpiod_set_value(priv->gpiod_nwe, 0);
-	ndelay(40);
 	gpiod_set_value(priv->gpiod_nwe, 1);
+	ndelay(40);
+	gpiod_set_value(priv->gpiod_nwe, 0);
 }
 
 static void ams_delta_io_write(struct ams_delta_nand *priv, u8 byte)
@@ -81,13 +81,13 @@ static u8 ams_delta_io_read(struct ams_delta_nand *priv)
 	struct gpio_descs *data_gpiods = priv->data_gpiods;
 	DECLARE_BITMAP(values, BITS_PER_TYPE(res)) = { 0, };
 
-	gpiod_set_value(priv->gpiod_nre, 0);
+	gpiod_set_value(priv->gpiod_nre, 1);
 	ndelay(40);
 
 	gpiod_get_raw_array_value(data_gpiods->ndescs, data_gpiods->desc,
 				  data_gpiods->info, values);
 
-	gpiod_set_value(priv->gpiod_nre, 1);
+	gpiod_set_value(priv->gpiod_nre, 0);
 
 	res = values[0];
 	return res;
@@ -129,7 +129,7 @@ static void ams_delta_read_buf(struct ams_delta_nand *priv, u8 *buf, int len)
 
 static void ams_delta_ctrl_cs(struct ams_delta_nand *priv, bool assert)
 {
-	gpiod_set_value(priv->gpiod_nce, assert ? 0 : 1);
+	gpiod_set_value(priv->gpiod_nce, assert);
 }
 
 static int ams_delta_exec_op(struct nand_chip *this,
@@ -237,28 +237,28 @@ static int ams_delta_init(struct platform_device *pdev)
 	platform_set_drvdata(pdev, priv);
 
 	/* Set chip enabled but write protected */
-	priv->gpiod_nwp = devm_gpiod_get(&pdev->dev, "nwp", GPIOD_OUT_LOW);
+	priv->gpiod_nwp = devm_gpiod_get(&pdev->dev, "nwp", GPIOD_OUT_HIGH);
 	if (IS_ERR(priv->gpiod_nwp)) {
 		err = PTR_ERR(priv->gpiod_nwp);
 		dev_err(&pdev->dev, "NWP GPIO request failed (%d)\n", err);
 		return err;
 	}
 
-	priv->gpiod_nce = devm_gpiod_get(&pdev->dev, "nce", GPIOD_OUT_HIGH);
+	priv->gpiod_nce = devm_gpiod_get(&pdev->dev, "nce", GPIOD_OUT_LOW);
 	if (IS_ERR(priv->gpiod_nce)) {
 		err = PTR_ERR(priv->gpiod_nce);
 		dev_err(&pdev->dev, "NCE GPIO request failed (%d)\n", err);
 		return err;
 	}
 
-	priv->gpiod_nre = devm_gpiod_get(&pdev->dev, "nre", GPIOD_OUT_HIGH);
+	priv->gpiod_nre = devm_gpiod_get(&pdev->dev, "nre", GPIOD_OUT_LOW);
 	if (IS_ERR(priv->gpiod_nre)) {
 		err = PTR_ERR(priv->gpiod_nre);
 		dev_err(&pdev->dev, "NRE GPIO request failed (%d)\n", err);
 		return err;
 	}
 
-	priv->gpiod_nwe = devm_gpiod_get(&pdev->dev, "nwe", GPIOD_OUT_HIGH);
+	priv->gpiod_nwe = devm_gpiod_get(&pdev->dev, "nwe", GPIOD_OUT_LOW);
 	if (IS_ERR(priv->gpiod_nwe)) {
 		err = PTR_ERR(priv->gpiod_nwe);
 		dev_err(&pdev->dev, "NWE GPIO request failed (%d)\n", err);
@@ -303,7 +303,7 @@ static int ams_delta_init(struct platform_device *pdev)
 	 * chip detection/initialization.
 	 */
 	/* Release write protection */
-	gpiod_set_value(priv->gpiod_nwp, 1);
+	gpiod_set_value(priv->gpiod_nwp, 0);
 
 	/* Scan to find existence of the device */
 	err = nand_scan(this, 1);
@@ -332,7 +332,7 @@ static int ams_delta_cleanup(struct platform_device *pdev)
 	struct mtd_info *mtd = nand_to_mtd(&priv->nand_chip);
 
 	/* Apply write protection */
-	gpiod_set_value(priv->gpiod_nwp, 0);
+	gpiod_set_value(priv->gpiod_nwp, 1);
 
 	/* Unregister device */
 	nand_release(mtd_to_nand(mtd));
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
