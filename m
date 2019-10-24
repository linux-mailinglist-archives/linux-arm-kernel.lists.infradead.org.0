Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C89DDE384D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 18:40:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=TWnkFxzJe6vazQMSvYNfcBlCtioqlR+HF/QrEd7PjQw=; b=WNDVVMLwsR4vfHvTyEFYD1/JjW
	pAr9KgX2dx1TplL+YzorKkZjYIH8fV8IVTDmQQXTgn7Foz6SwwEGAcjEknrU9AINZrGpMWush55bh
	KjYvxADr++VmLMuDusDnMGIEYD9fXhmfd7ldo57MHAToR4Lgc2qKcstHS+sLTUp1afaWshMo7aW/p
	Q7CSzQsVzahCoeXvYZey+Dfca7UqWuudt2VFOnM3K6/ffg0MuwqR4lSChPxZUwsLKMqvYEsrzKMP8
	TApwnAv83K59ZlHa3SfCjs9xRLs3FUBgBaHNLWr/OIXaoqPGoTAx1I4CUZZ0NVLsyzhcQbFi1GNSc
	4UjuaoMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNg9M-0005xV-OW; Thu, 24 Oct 2019 16:39:48 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNg8I-0005Lx-7n
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 16:38:45 +0000
Received: by mail-wr1-x441.google.com with SMTP id a11so10751335wra.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 09:38:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=QdHIheq0u1kbfETofjh9zy8pkEBm58YeSTndJs2NHac=;
 b=gPwrn6NPz7e9qabl6w9R3rqJrhVP14D5VEoM/nG38JSXosj+EzFKlTPlVNYElFho00
 +o+M2rHC0YjYffk6XVRDD8OSdWVwqxIOndJ67G98SIzgVGfeyu2GtRUJFmD/WG6dTihy
 1TN9flRSC9i7K1ODhHNV5mHaS7EfS9ZS7dluqdJNoUNzUatqHVKaSg2272m4QJQv9ZET
 Yat6gdQYo4VoX02nxBEIbJBiFvNigZs/epeRYtuOw5uqzGc5QFRr639xcuDCcKg7YKDZ
 tEBy/uFvDYMKF2GfDzfZ17TxIKWKBh1DcbZBNXHAlzAEar7zo8EHVVFXUKDoS5K4oPzC
 ygHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=QdHIheq0u1kbfETofjh9zy8pkEBm58YeSTndJs2NHac=;
 b=K3MQx9cZ3TKV+xG/4tkBYYuu/iRuPpiIJdvvjN9IhXFA17i38K+mf9EDrJm8yovgGV
 RbrCGEEU5pREz/GwHqEuxAg/G0o7cMrYBR6s3EG3pbcSBPyzy4/9HI18eQ1tqTgKqEUj
 HVMsjDmAen1dOTxQb3QX9qNRE+5zB860USHFf7/AKklweYRrzjG3y3qKuzkZrLyMuOrR
 ytSL7ynZYm/7plvIP84LUhlgN73vtQGwHLA4FKqUIbCM1I6RMtCSnfwOCLTeDc0+bniX
 9gf85rCco919gMCteV3Za7O5ULh7V5aqsbF8dFPPBZnnkHMFb94YE3N8O8UDET9SkB4N
 VG5Q==
X-Gm-Message-State: APjAAAWi0k6QkPdSR69uF7mrhbBerS/g6I3upCoK28mNIm4V6IlCr8RU
 Ypv5f6GzLE/FPkdzVPH/czEQYA==
X-Google-Smtp-Source: APXvYqybGriaBIIX8G9nnstV8F9MgTGty7bBvcB5f3SnrbhVCru8DjpTB8Hxjodr97qZgRKtmB4Igg==
X-Received: by 2002:adf:f04e:: with SMTP id t14mr4491900wro.106.1571935119378; 
 Thu, 24 Oct 2019 09:38:39 -0700 (PDT)
Received: from localhost.localdomain ([95.149.164.99])
 by smtp.gmail.com with ESMTPSA id 6sm3446175wmd.36.2019.10.24.09.38.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 09:38:38 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: daniel.thompson@linaro.org, arnd@arndb.de, broonie@kernel.org,
 linus.walleij@linaro.org
Subject: [PATCH v3 03/10] mfd: cs5535-mfd: Request shared IO regions centrally
Date: Thu, 24 Oct 2019 17:38:25 +0100
Message-Id: <20191024163832.31326-4-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191024163832.31326-1-lee.jones@linaro.org>
References: <20191024163832.31326-1-lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_093842_276546_58446593 
X-CRM114-Status: GOOD (  16.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Lee Jones <lee.jones@linaro.org>, baohua@kernel.org, stephan@gerhold.net,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Prior to this patch, IO regions were requested via an MFD subsytem-level
.enable() call-back and similarly released by a .disable() call-back.
Double requests/releases were avoided by a centrally handled usage count
mechanism.

This complexity can all be avoided by handling IO regions only once during
.probe() and .remove() of the parent device.  Since this is the only
legitimate user of the aforementioned usage count mechanism, this patch
will allow it to be removed from MFD core in subsequent steps.

Suggested-by: Daniel Thompson <daniel.thompson@linaro.org>
Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 drivers/mfd/cs5535-mfd.c | 71 +++++++++++++++++-----------------------
 1 file changed, 30 insertions(+), 41 deletions(-)

diff --git a/drivers/mfd/cs5535-mfd.c b/drivers/mfd/cs5535-mfd.c
index b35f1efa01f6..27fa8fa1ec9b 100644
--- a/drivers/mfd/cs5535-mfd.c
+++ b/drivers/mfd/cs5535-mfd.c
@@ -27,38 +27,6 @@ enum cs5535_mfd_bars {
 	NR_BARS,
 };
 
-static int cs5535_mfd_res_enable(struct platform_device *pdev)
-{
-	struct resource *res;
-
-	res = platform_get_resource(pdev, IORESOURCE_IO, 0);
-	if (!res) {
-		dev_err(&pdev->dev, "can't fetch device resource info\n");
-		return -EIO;
-	}
-
-	if (!request_region(res->start, resource_size(res), DRV_NAME)) {
-		dev_err(&pdev->dev, "can't request region\n");
-		return -EIO;
-	}
-
-	return 0;
-}
-
-static int cs5535_mfd_res_disable(struct platform_device *pdev)
-{
-	struct resource *res;
-
-	res = platform_get_resource(pdev, IORESOURCE_IO, 0);
-	if (!res) {
-		dev_err(&pdev->dev, "can't fetch device resource info\n");
-		return -EIO;
-	}
-
-	release_region(res->start, resource_size(res));
-	return 0;
-}
-
 static struct resource cs5535_mfd_resources[NR_BARS];
 
 static struct mfd_cell cs5535_mfd_cells[] = {
@@ -81,17 +49,11 @@ static struct mfd_cell cs5535_mfd_cells[] = {
 		.name = "cs5535-pms",
 		.num_resources = 1,
 		.resources = &cs5535_mfd_resources[PMS_BAR],
-
-		.enable = cs5535_mfd_res_enable,
-		.disable = cs5535_mfd_res_disable,
 	},
 	{
 		.name = "cs5535-acpi",
 		.num_resources = 1,
 		.resources = &cs5535_mfd_resources[ACPI_BAR],
-
-		.enable = cs5535_mfd_res_enable,
-		.disable = cs5535_mfd_res_disable,
 	},
 };
 
@@ -117,22 +79,47 @@ static int cs5535_mfd_probe(struct pci_dev *pdev,
 		r->end = pci_resource_end(pdev, bar);
 	}
 
+	err = pci_request_region(pdev, PMS_BAR, DRV_NAME);
+	if (err) {
+		dev_err(&pdev->dev, "Failed to request PMS_BAR's IO region\n");
+		goto err_disable;
+	}
+
 	err = mfd_add_devices(&pdev->dev, PLATFORM_DEVID_NONE, cs5535_mfd_cells,
 			      ARRAY_SIZE(cs5535_mfd_cells), NULL, 0, NULL);
 	if (err) {
 		dev_err(&pdev->dev,
 			"Failed to add CS5535 sub-devices: %d\n", err);
-		goto err_disable;
+		goto err_release_pms;
 	}
 
-	if (machine_is_olpc())
-		mfd_clone_cell("cs5535-acpi", olpc_acpi_clones, ARRAY_SIZE(olpc_acpi_clones));
+	if (machine_is_olpc()) {
+		err = pci_request_region(pdev, ACPI_BAR, DRV_NAME);
+		if (err) {
+			dev_err(&pdev->dev,
+				"Failed to request ACPI_BAR's IO region\n");
+			goto err_remove_devices;
+		}
+
+		err = mfd_clone_cell("cs5535-acpi", olpc_acpi_clones,
+				     ARRAY_SIZE(olpc_acpi_clones));
+		if (err) {
+			dev_err(&pdev->dev, "Failed to clone MFD cell\n");
+			goto err_release_acpi;
+		}
+	}
 
 	dev_info(&pdev->dev, "%zu devices registered.\n",
 			ARRAY_SIZE(cs5535_mfd_cells));
 
 	return 0;
 
+err_release_acpi:
+	pci_release_region(pdev, ACPI_BAR);
+err_remove_devices:
+	mfd_remove_devices(&pdev->dev);
+err_release_pms:
+	pci_release_region(pdev, PMS_BAR);
 err_disable:
 	pci_disable_device(pdev);
 	return err;
@@ -141,6 +128,8 @@ static int cs5535_mfd_probe(struct pci_dev *pdev,
 static void cs5535_mfd_remove(struct pci_dev *pdev)
 {
 	mfd_remove_devices(&pdev->dev);
+	pci_release_region(pdev, ACPI_BAR);
+	pci_release_region(pdev, PMS_BAR);
 	pci_disable_device(pdev);
 }
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
