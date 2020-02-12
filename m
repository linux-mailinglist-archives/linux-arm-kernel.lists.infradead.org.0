Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B586159E4B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 01:46:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ln2G3ovYQpfjEU8fy53QTY102p7XQcyXwOXG2bqDCHI=; b=BoeKtg2t/elCsq
	vAaGaiPzLiXwmbXgOFDTefYw3vhW6SwdokgzdZ+GnrMssfV5Iu0Mnkmm8pb31KIAzztniD7YNLjQb
	tTgfTFhgTqxscAq+L+fdesGbsJ8zrCv+UIe5UlZ36SFOKMyDiq0wtjGzAjYW3PicBsKLTMPUs7tzz
	bvMupMIyPOvxDkLCOr42ivCuV/p6h8md5y7kMQBhqQ+vQrX42hN4L4Y1bDYwJXJjjlhcNyL+8eIJ6
	iP/XV/nWpQKgDt59lT4ABWckEKEfSUOuJ0e9sEBgKuLwVsqK2I89HFSQKfiDs8R7hzM5nA9EkAL0+
	kUWy0xTsm1HqtZV6BKxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1gAY-0006HJ-9v; Wed, 12 Feb 2020 00:46:22 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1g4t-0008Ns-Bx; Wed, 12 Feb 2020 00:40:34 +0000
Received: by mail-lf1-x144.google.com with SMTP id 203so248974lfa.12;
 Tue, 11 Feb 2020 16:40:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=HTf58YpqwaY9/ZfsDIcfANNUH88w2zXw+jSn3ywd04g=;
 b=dAoEyqxeOjz7A2KEREadDZ6VqZVRMhPyaTDrRZZW+C4fdJOBFYiwcabV31xKiYs8bs
 mD9PWUrXqqx+/EQndIe89NMR2DuQUpfkDvTc41UXohGgHD2WxHOLebxME02T0EJtVuXH
 GMgf9JRWjf8ZUjhbow6HqVrrIh9gPsTKmIhprve6OB9y5PBjyLKHQ+2i6K7h7M3H1RJ1
 qTxRPYWYbmLnsz14c6lefULFIeaC15ufIop7jj1xvILyxanpeE8APDDXMfZirs59IHsI
 hb3tVfXPr39bHqvSOFoBkktCHplzqz796hsWSbczDlQTOMbLKv9zKJHGPSrtAA9JUsk1
 HCiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=HTf58YpqwaY9/ZfsDIcfANNUH88w2zXw+jSn3ywd04g=;
 b=HpJJ7adZZZrTeK3AgPZNheiU1vXaquANykKbdUvd4lB135TgK25jjvbF8XXtDp7gK8
 9IbPzVqHIiKkrKF4CHnP1X+Xr9k+M2veaOqo8WGq4sp4UPjBRjiG19ZzNggdMIzjUyxE
 Pq5LmV99gm+r3iSGetj0BdkXDSUlraBqcTdFlmRTYLJ9eIybovat+z5ixuwvIehwSooq
 MCpLFPGKjDU4atUkg/HCH+KP3/hTA9IMhC4MX7r7F0kTZvcnseR+txtmqw4CPihKMUdV
 jkNVxTjtz7syr/TkUiNtP4Y5Y0iYd9ZUHb/Kb3PI4T8gOhMiBuC0iqe9TYMJ83y2ihpS
 DNSw==
X-Gm-Message-State: APjAAAUBplAMqIoF14AxepMjZogLl/zTcx0+3ZcXPMF500rgkJsd6xBd
 zBPsQ2Gt+opNiJFGfn6jQ9g=
X-Google-Smtp-Source: APXvYqwwX3ih/dlP/s6h+fr2ICYq2BrPHs02sfYs8lBXyp00LNq1eN3hIoCLnQCndwzdhNiBZFV+jA==
X-Received: by 2002:a19:748:: with SMTP id 69mr5238603lfh.40.1581468029430;
 Tue, 11 Feb 2020 16:40:29 -0800 (PST)
Received: from z50.gdansk-morena.vectranet.pl
 (109241122244.gdansk.vectranet.pl. [109.241.122.244])
 by smtp.gmail.com with ESMTPSA id e8sm3621935ljb.45.2020.02.11.16.40.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Feb 2020 16:40:28 -0800 (PST)
From: Janusz Krzysztofik <jmkrzyszt@gmail.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>
Subject: [RFC PATCH 13/14] mtd: rawnand: ams-delta: Make the driver custom I/O
 ready
Date: Wed, 12 Feb 2020 01:39:28 +0100
Message-Id: <20200212003929.6682-14-jmkrzyszt@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200212003929.6682-1-jmkrzyszt@gmail.com>
References: <20200212003929.6682-1-jmkrzyszt@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_164031_461923_3E06C84A 
X-CRM114-Status: GOOD (  13.55  )
X-Spam-Score: 1.4 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
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

In order to be merged with "gpio-nand", the driver must support custom
(non-GPIO) I/O accessors.

Allow platforms to omit data GPIO port as well as NWE pin info from
device setup.  For the driver to still work on such platform, custom
I/O accessors as well as a custom probe function which initialises the
driver private structure with those accessors must be added to the
driver.

Signed-off-by: Janusz Krzysztofik <jmkrzyszt@gmail.com>
---
 drivers/mtd/nand/raw/ams-delta.c | 32 ++++++++++++++++++++++++++------
 1 file changed, 26 insertions(+), 6 deletions(-)

diff --git a/drivers/mtd/nand/raw/ams-delta.c b/drivers/mtd/nand/raw/ams-delta.c
index a68b7006ed69..9e659984bf59 100644
--- a/drivers/mtd/nand/raw/ams-delta.c
+++ b/drivers/mtd/nand/raw/ams-delta.c
@@ -43,6 +43,9 @@ struct ams_delta_nand {
 	bool			data_in;
 	unsigned int		tRP;
 	unsigned int		tWP;
+	u8			(*io_read)(struct ams_delta_nand *this);
+	void			(*io_write)(struct ams_delta_nand *this,
+					    u8 byte);
 };
 
 static void ams_delta_write_commit(struct ams_delta_nand *priv)
@@ -116,18 +119,18 @@ static void ams_delta_write_buf(struct ams_delta_nand *priv, const u8 *buf,
 		ams_delta_dir_output(priv, buf[i++]);
 
 	while (i < len)
-		ams_delta_io_write(priv, buf[i++]);
+		priv->io_write(priv, buf[i++]);
 }
 
 static void ams_delta_read_buf(struct ams_delta_nand *priv, u8 *buf, int len)
 {
 	int i;
 
-	if (!priv->data_in)
+	if (priv->data_gpiods && !priv->data_in)
 		ams_delta_dir_input(priv);
 
 	for (i = 0; i < len; i++)
-		buf[i] = ams_delta_io_read(priv);
+		buf[i] = priv->io_read(priv);
 }
 
 static void ams_delta_ctrl_cs(struct ams_delta_nand *priv, bool assert)
@@ -289,7 +292,8 @@ static int ams_delta_init(struct platform_device *pdev)
 		return err;
 	}
 
-	priv->gpiod_nwe = devm_gpiod_get(&pdev->dev, "nwe", GPIOD_OUT_LOW);
+	priv->gpiod_nwe = devm_gpiod_get_optional(&pdev->dev, "nwe",
+						  GPIOD_OUT_LOW);
 	if (IS_ERR(priv->gpiod_nwe)) {
 		err = PTR_ERR(priv->gpiod_nwe);
 		dev_err(&pdev->dev, "NWE GPIO request failed (%d)\n", err);
@@ -311,13 +315,24 @@ static int ams_delta_init(struct platform_device *pdev)
 	}
 
 	/* Request array of data pins, initialize them as input */
-	priv->data_gpiods = devm_gpiod_get_array(&pdev->dev, "data", GPIOD_IN);
+	priv->data_gpiods = devm_gpiod_get_array_optional(&pdev->dev, "data",
+							  GPIOD_IN);
 	if (IS_ERR(priv->data_gpiods)) {
 		err = PTR_ERR(priv->data_gpiods);
 		dev_err(&pdev->dev, "data GPIO request failed: %d\n", err);
 		return err;
 	}
-	priv->data_in = true;
+	if (priv->data_gpiods) {
+		if (!priv->gpiod_nwe) {
+			dev_err(&pdev->dev,
+				"mandatory NWE pin not provided by platform\n");
+			return -ENODEV;
+		}
+
+		priv->io_read = ams_delta_io_read;
+		priv->io_write = ams_delta_io_write;
+		priv->data_in = true;
+	}
 
 	if (pdev->id_entry)
 		probe = (void *) pdev->id_entry->driver_data;
@@ -328,6 +343,11 @@ static int ams_delta_init(struct platform_device *pdev)
 	if (err)
 		return err;
 
+	if (!priv->io_read || !priv->io_write) {
+		dev_err(&pdev->dev, "incomplete device configuration\n");
+		return -ENODEV;
+	}
+
 	/* Initialize the NAND controller object embedded in ams_delta_nand. */
 	priv->base.ops = &ams_delta_ops;
 	nand_controller_init(&priv->base);
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
