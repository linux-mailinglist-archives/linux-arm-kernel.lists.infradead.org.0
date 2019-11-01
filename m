Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 078A0EBE9E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 08:46:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=TUwoX8/HFyhtv8FP42t+RotSmQWCj0ldRCAp+xB1Yr4=; b=SW4+RDsPVoEGcSVgNakIrNbSk8
	1p/hm5LJouXGc9Uenh7ac7TnwzMkCytXEn8X0QmRUOfp2lJhN8eLndz9L+Yh/+g7GoFrJKBIg9KC5
	fH5ptmSMbKGrTgabWnIMljQVQocipZWJaBQLzK3DABIE7dUaDJro3DgfE1ThOXMTVEbhxTTpYiDad
	6ot7ZZZZ13H4oK5PwfdpTIU0EhYF6GCzsOLqm+JMdyVjHHaw/g9N1yZ7O39n637gTkXJrtCp8uT3P
	rNh9vJORXm6xPigD//yJgHQssGhoGtKYV2N3AloNQH/cE/Jj89qSoUBQQ8oRA6zsCG7qPFvQ14lw+
	gxBxowEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQRdT-0000HM-Cw; Fri, 01 Nov 2019 07:46:19 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQRcc-00082R-8O
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 07:45:27 +0000
Received: by mail-wm1-x343.google.com with SMTP id c22so8254274wmd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 00:45:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=YwP+Ou3x0Xq501y6yZMGhDxJBzedJFnXI45wlydnDjg=;
 b=At9PfBtnr200Qg5yCgwaj6cV7dJ1Xi6kY3lokTY5Um/mHszQ9tQ+oE0Fjdi27WE2t9
 rhbGMrbX/WTBMw5kFNO9WoiX86d+KsjMX31m+b3OI4FhvnOqTDs1pzpNL8aH6R0lHkxW
 rIBOf0w6MlhnutR0f9HYYnStgyMhE5bsGFxKe5/b/SI+/PH5FXzb8DrcKt6+JlOYYBiA
 w7dk4wFw2cJGqmwTAuFVYf2F+WoOKbafPV8vZDGik639QE64nAb/ABYNof59zIsL8KNy
 +jmYlSanPX1wsWSZv1VeBm3REATgSbK1eJkuULXZAHIXHgTR5YEAHrOJjGoZm07HAkXw
 aWeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=YwP+Ou3x0Xq501y6yZMGhDxJBzedJFnXI45wlydnDjg=;
 b=N4uAS3XARW6sKemXK+aOG0qJFtMOqGx9n7o2lrqrzxqdIQRQT+4uH8d/sZjzNX7QG1
 NAQqA044o27I4+u59LSTn1YV93hhBQKNZZQLxwRn/MQo2HT03GxOJxiS9VDhJMQhA3X9
 xUC9fANAhTPT1stP5Vq7VVX0QXfmTpqHTJ2vs0Ghf4zhwSgxxaqn3ioMkhcqr2GccyOG
 P/YFLwwwVxpdMzlmoyM805qH9uX3X3CRBLSKGD+r2kOOmQXH1qIBjBRZ7DtrzccKh2MB
 iCMoiEGE+Gaw2bzeYU64Ptro79OSYQrQrEUEPKbTAIX8VLcPvtgDcl38WEfQmhxCKAjd
 uebA==
X-Gm-Message-State: APjAAAUlRSO+O07niWR01Z0bJLGHUBHzpy9x7zF6s5o10GJlTqEXpSyw
 X91Q8AVAd2U2yDPXBF2Xvxuyig==
X-Google-Smtp-Source: APXvYqwzG7xFGETqQwWZl8YIeOq/BmnWWaWF/NJEgC1YTqaXF15LUaWJSOUGpw0PnQpFretUd/rZGw==
X-Received: by 2002:a7b:cb43:: with SMTP id v3mr8689669wmj.137.1572594324646; 
 Fri, 01 Nov 2019 00:45:24 -0700 (PDT)
Received: from localhost.localdomain ([2.31.163.64])
 by smtp.gmail.com with ESMTPSA id b1sm576215wrw.77.2019.11.01.00.45.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Nov 2019 00:45:24 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: daniel.thompson@linaro.org,
	broonie@kernel.org
Subject: [PATCH v4 03/10] mfd: cs5535-mfd: Request shared IO regions centrally
Date: Fri,  1 Nov 2019 07:45:11 +0000
Message-Id: <20191101074518.26228-4-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191101074518.26228-1-lee.jones@linaro.org>
References: <20191101074518.26228-1-lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_004526_295511_CCCC09BE 
X-CRM114-Status: GOOD (  15.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: baohua@kernel.org, stephan@gerhold.net, arnd@arndb.de,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 Lee Jones <lee.jones@linaro.org>, linux-arm-kernel@lists.infradead.org
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
 drivers/mfd/cs5535-mfd.c | 74 ++++++++++++++++++----------------------
 1 file changed, 33 insertions(+), 41 deletions(-)

diff --git a/drivers/mfd/cs5535-mfd.c b/drivers/mfd/cs5535-mfd.c
index b35f1efa01f6..3b569b231510 100644
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
@@ -141,6 +128,11 @@ static int cs5535_mfd_probe(struct pci_dev *pdev,
 static void cs5535_mfd_remove(struct pci_dev *pdev)
 {
 	mfd_remove_devices(&pdev->dev);
+
+	if (machine_is_olpc())
+		pci_release_region(pdev, ACPI_BAR);
+
+	pci_release_region(pdev, PMS_BAR);
 	pci_disable_device(pdev);
 }
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
