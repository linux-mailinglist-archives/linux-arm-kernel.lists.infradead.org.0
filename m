Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE34AEBEA1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 08:47:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=v2waBVPfp5c2ik/OCFAq8xajzl9e7GLN7o64dTCXOyg=; b=rkDGZ+yoXE729LKZYQsTlTFIVr
	hI/YXmla0no/bIbRjwkcCVQHO+Hidab6y6A2bhcMGWE4vGlXBgra3BcL40zUBtDm4BdIHhHDl/lYj
	dzxxGnHVZm7VZV9K3a0w8wUzuRsrgkGRR3T/D/SBYP8gpU0gZIOvjAquYbMOKHOn/dnnlh3twciqs
	B175mAr4EmAY9YBHWcUTzS/iHGmHlgRnBt7QRLDVgoOPlEfCO71wpEXf09gfGAq6TJA8hCrZEbouc
	IYdtc3pdOzZjz16OkZQQAJRzxzKOs5EDHjyJY0w4ff7ftS3ELlzfLOcA8k7wYif7TGqN6iiN6AK+h
	KOsiXn4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQReD-00012u-8q; Fri, 01 Nov 2019 07:47:05 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQRcf-00086N-Ts
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 07:45:31 +0000
Received: by mail-wr1-x442.google.com with SMTP id b3so3019437wrs.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 00:45:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=n8Ucez02iItku1JzTTgA4X0TOQF7g37QZ5FK6iQhubQ=;
 b=B6R+1JCSAwgKyR+aoys7iRUcEXhF3L/eli9PKppCN67iGTa5dHpuJBYW8X2vtxWRJe
 V7wTxydHk4Ct8YvnSw2UcLuTwXtjjbLQ666IT3NUpkXd5O1k08xxXtaEZwTcY64P7ngp
 +dpgTwiVaWNesy6RsktWd0EzF2wbkDF/rHJsF9tCQRKmKZi/3eYjzK4erdj7rbfyICJC
 jk6Jvl6IzMdWBLl8ebqJodEwDq8zVW63CGjUcX+SY0YJCfTuHzcxc4gMLkgx1Cf8ZrAa
 mUjSsKuDsvrttJrGmFIvqY8i6iPQPLpTQtCbWumn6yv6GTf5KqGthZt2jhVOdnHk/oRz
 G50Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=n8Ucez02iItku1JzTTgA4X0TOQF7g37QZ5FK6iQhubQ=;
 b=FsjxXsNlbz48TjUj1TDiES3dhwtbO++WnisdH+nE8hSGOAD3JBkZRxgP3Qu3dLPFAP
 Ru9EPpkOyWce2E7AmvuxqajWqMjJOlU1e+HYzHOzrJWxEREZJrBznBu8qWD48cjt+DnT
 PAwcaExD2d6Fq30Fh8xYe7v7GLRLGG7kIAf4RsG1ldvuF2zYqveRIlRG2bEcn0vJVe4u
 O4SgI8XGC/Ey9oeyjiH9RXWFwo/IIFJ5aNMV8S1xBOhWJKrXftmBlOF7BNUk67wPnySA
 icyY72XrvU/iLEHpNA31WYekCW5kNxfisG3forHwWgLB56PVNOWpKICgy59WHVaYKrNj
 uW8w==
X-Gm-Message-State: APjAAAXWahqiNYZWBHQgsrzYahjFR+6f+ThgKQSpoigoh8s7eNqa7ELP
 4ywaGsgsCOrCaH0OjfG/kbJFbQ==
X-Google-Smtp-Source: APXvYqyKsKbyPv0zQ3Ni6kKILb9D2GUOzJUzrwbEAhG0ONH4/fOkO9nO+pmIrK6g7PN7ao0thJ1obA==
X-Received: by 2002:adf:fe90:: with SMTP id l16mr9255966wrr.81.1572594328646; 
 Fri, 01 Nov 2019 00:45:28 -0700 (PDT)
Received: from localhost.localdomain ([2.31.163.64])
 by smtp.gmail.com with ESMTPSA id b1sm576215wrw.77.2019.11.01.00.45.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Nov 2019 00:45:28 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: daniel.thompson@linaro.org,
	broonie@kernel.org
Subject: [PATCH v4 06/10] mfd: mfd-core: Remove mfd_clone_cell()
Date: Fri,  1 Nov 2019 07:45:14 +0000
Message-Id: <20191101074518.26228-7-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191101074518.26228-1-lee.jones@linaro.org>
References: <20191101074518.26228-1-lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_004529_970804_B50B900B 
X-CRM114-Status: GOOD (  13.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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

Providing a subsystem-level API helper seems over-kill just to save a
few lines of C-code.  Previous commits saw us convert mfd_clone_cell()'s
only user over to use a more traditional style of MFD child-device
registration.  Now we can remove the superfluous helper from the MFD API.

Signed-off-by: Lee Jones <lee.jones@linaro.org>
Reviewed-by: Daniel Thompson <daniel.thompson@linaro.org>
---
 drivers/mfd/mfd-core.c   | 33 ---------------------------------
 include/linux/mfd/core.h | 18 ------------------
 2 files changed, 51 deletions(-)

diff --git a/drivers/mfd/mfd-core.c b/drivers/mfd/mfd-core.c
index 96d02b6f06fd..e38e411ca775 100644
--- a/drivers/mfd/mfd-core.c
+++ b/drivers/mfd/mfd-core.c
@@ -392,38 +392,5 @@ int devm_mfd_add_devices(struct device *dev, int id,
 }
 EXPORT_SYMBOL(devm_mfd_add_devices);
 
-int mfd_clone_cell(const char *cell, const char **clones, size_t n_clones)
-{
-	struct mfd_cell cell_entry;
-	struct device *dev;
-	struct platform_device *pdev;
-	int i;
-
-	/* fetch the parent cell's device (should already be registered!) */
-	dev = bus_find_device_by_name(&platform_bus_type, NULL, cell);
-	if (!dev) {
-		printk(KERN_ERR "failed to find device for cell %s\n", cell);
-		return -ENODEV;
-	}
-	pdev = to_platform_device(dev);
-	memcpy(&cell_entry, mfd_get_cell(pdev), sizeof(cell_entry));
-
-	WARN_ON(!cell_entry.enable);
-
-	for (i = 0; i < n_clones; i++) {
-		cell_entry.name = clones[i];
-		/* don't give up if a single call fails; just report error */
-		if (mfd_add_device(pdev->dev.parent, -1, &cell_entry,
-				   cell_entry.usage_count, NULL, 0, NULL))
-			dev_err(dev, "failed to create platform device '%s'\n",
-					clones[i]);
-	}
-
-	put_device(dev);
-
-	return 0;
-}
-EXPORT_SYMBOL(mfd_clone_cell);
-
 MODULE_LICENSE("GPL");
 MODULE_AUTHOR("Ian Molton, Dmitry Baryshkov");
diff --git a/include/linux/mfd/core.h b/include/linux/mfd/core.h
index b43fc5773ad7..bd8c0e089164 100644
--- a/include/linux/mfd/core.h
+++ b/include/linux/mfd/core.h
@@ -86,24 +86,6 @@ struct mfd_cell {
 extern int mfd_cell_enable(struct platform_device *pdev);
 extern int mfd_cell_disable(struct platform_device *pdev);
 
-/*
- * "Clone" multiple platform devices for a single cell. This is to be used
- * for devices that have multiple users of a cell.  For example, if an mfd
- * driver wants the cell "foo" to be used by a GPIO driver, an MTD driver,
- * and a platform driver, the following bit of code would be use after first
- * calling mfd_add_devices():
- *
- * const char *fclones[] = { "foo-gpio", "foo-mtd" };
- * err = mfd_clone_cells("foo", fclones, ARRAY_SIZE(fclones));
- *
- * Each driver (MTD, GPIO, and platform driver) would then register
- * platform_drivers for "foo-mtd", "foo-gpio", and "foo", respectively.
- * The cell's .enable/.disable hooks should be used to deal with hardware
- * resource contention.
- */
-extern int mfd_clone_cell(const char *cell, const char **clones,
-		size_t n_clones);
-
 /*
  * Given a platform device that's been created by mfd_add_devices(), fetch
  * the mfd_cell that created it.
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
