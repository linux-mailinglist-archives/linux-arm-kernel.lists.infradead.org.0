Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95956DEA49
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 13:00:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3RRX9xK1cPzgjDoU9ZKgEECPdsg902+Kjd/9INANWCY=; b=ROSlLaNKBnnYmr91xZij8UHsDT
	7++DU/rwPIFdHnzF/wbyw/JNeJD0S9FmRsqmGpgLuBSwx0hGIcLMGExcQJO6mXQvHFrvmFQl/djPf
	pfLGJBAdNHOHvm3CHU43Jpx2VZ6dce8E3IUoiSlisRkffKlDR3wOoABw98As2IdpYgJGKJw/vRy96
	mm+y3zEz+ELHSVsKtIfvftXYjz2v/6DcmSucMLTlEhtYtRZiQHI75NcFqP+USW4YaIJrU/9NEEMk1
	4buB202R9C3szsuYQc0O7c7pcXYWWq96r3Ve08Vy6FMt/c623MYWrpCuQDLtAFnhZCGc/y4mgAoWm
	rUDJfeIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMVQM-0003Av-Px; Mon, 21 Oct 2019 11:00:30 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMVOU-0000Ew-TR
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 10:58:37 +0000
Received: by mail-wr1-x443.google.com with SMTP id n15so2612727wrw.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 03:58:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=45AT36kNkG6TuZTs0Da4Zkgj9k+BoulBorMLvGdJTSQ=;
 b=FFP1C61B/LvUJEmQ2mYw/K2hW8FBRzhLSkQ9m4i27lqiPrqi/dCTKUbwP/XUTjLdNO
 7q1nDyGJp4p3+IJgrl9OJ/C9HrbG5yFg5V6+hu8LVzjyWNxQhH3sa1zXaBa+cWjIj+sV
 CRoqgJ3JWtWrKBIHWK+WlEZDrlOHLkmyepoWU+YaTtoSmw9FmgsARPv8h+/iuaBJ79Bk
 kmAdJRqiSPJwczawk0wtx0PSK6k83mj0MiC1FfKB3ZYgGTRMrEXa9+iGeCQJtT48m7uv
 1yg75JMBbBoIwGBtIUwPus87jWSfu+OfzaeVCLEPZ0dM4ZBS2/0CqAOMHILGica8DXUU
 dbag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=45AT36kNkG6TuZTs0Da4Zkgj9k+BoulBorMLvGdJTSQ=;
 b=J7cpJlUbcEGgIpnCYyeQsI6JBccTClQYvBuEzbgTVjrRlL60q/xUz9eqlhGFzWeo9O
 M+/WPnE+hthejyWuYYykM5oHGJUGSMFBHBuaMvwOucXBUNAiJmOgY/qqIvT2q6fTwP78
 LyOfgwUJyLLsOewMB6tZ47UPJvltFY1mUEexeHgrrH1daSNWtkYEDqIB+BqVIP2pBLYV
 43u3IqU3Wl4zCvgX0LFMnF0YllD+MCXHCbUYwO/VgJY6UOg/abQGrvizwgW7HLr7GU8Q
 SmsgYoVNOOwP0s/CG79X35L7rZQvFBLJXjCkgDgpRi0elOf50d3GxbcC+hWFyEeSXDvr
 3i9A==
X-Gm-Message-State: APjAAAUEKG/+wYdZSoocURl/fCbb5FkQb+yJuSRAPzRtD4SopGdD8F7o
 WvMdC1fCkRfNghWpa5sjLGCGqA==
X-Google-Smtp-Source: APXvYqwCfB1GEi1vIrmvERSut1ef1m6svBhU9PBaX+IYPMcyfDknKO0cVM9VqPhgbyJpf+0H6MCsrQ==
X-Received: by 2002:adf:e28f:: with SMTP id v15mr18585655wri.130.1571655508272; 
 Mon, 21 Oct 2019 03:58:28 -0700 (PDT)
Received: from localhost.localdomain ([95.149.164.99])
 by smtp.gmail.com with ESMTPSA id q22sm12544289wmj.31.2019.10.21.03.58.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 03:58:27 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: daniel.thompson@linaro.org, arnd@arndb.de, broonie@kernel.org,
 linus.walleij@linaro.org
Subject: [PATCH v2 3/9] mfd: cs5535-mfd: Request shared IO regions centrally
Date: Mon, 21 Oct 2019 11:58:16 +0100
Message-Id: <20191021105822.20271-4-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191021105822.20271-1-lee.jones@linaro.org>
References: <20191021105822.20271-1-lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_035835_009443_C3E3F83F 
X-CRM114-Status: GOOD (  16.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 drivers/mfd/cs5535-mfd.c | 72 +++++++++++++++++-----------------------
 1 file changed, 30 insertions(+), 42 deletions(-)

diff --git a/drivers/mfd/cs5535-mfd.c b/drivers/mfd/cs5535-mfd.c
index 9ce6bbcdbda1..053e33447808 100644
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
 	[ACPI_BAR] = {
 		.name = "cs5535-acpi",
 		.num_resources = 1,
 		.resources = &cs5535_mfd_resources[ACPI_BAR],
-
-		.enable = cs5535_mfd_res_enable,
-		.disable = cs5535_mfd_res_disable,
 	},
 };
 
@@ -109,7 +71,6 @@ static int cs5535_mfd_probe(struct pci_dev *pdev,
 	if (err)
 		return err;
 
-	/* fill in IO range for each cell; subdrivers handle the region */
 	for (i = 0; i < NR_BARS; i++) {
 		struct mfd_cell *cell = &cs5535_mfd_cells[i];
 		struct resource *r = &cs5535_mfd_resources[i];
@@ -122,22 +83,47 @@ static int cs5535_mfd_probe(struct pci_dev *pdev,
 		r->end = pci_resource_end(pdev, i);
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
 			"Failed to add CS5532 sub-devices: %d\n", err);
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
@@ -145,6 +131,8 @@ static int cs5535_mfd_probe(struct pci_dev *pdev,
 
 static void cs5535_mfd_remove(struct pci_dev *pdev)
 {
+	pci_release_region(pdev, PMS_BAR);
+	pci_release_region(pdev, ACPI_BAR);
 	mfd_remove_devices(&pdev->dev);
 	pci_disable_device(pdev);
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
