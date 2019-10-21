Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C000CDEA46
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 13:00:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=twJNHOzH+OUELZu8udSFL0IFENK+kd0joXUBikeTy0o=; b=AOFKzmS85jJtfMmaLOJzif4IJ2
	E2utQeJMJOUOy7GkZNSB25zD/HnWsk0VZ5iJILPk8Dbx2+PU9PlrKAtVdp7F2fdeYshMS+zPUWQf+
	4s/11HvqGI6SoMGLAjpW/j/NUHRvAFnoonSrcGuEBrrT44Bdi7BMNX9ekwc7CK5YT0W3utmKvD67H
	hjzDQZLw6tyHXNaoKosUL1kF0BGR+CClH91l4uruOF/JBkQboPQ8hIjzWtdOSUstjq+hOpQlW+qOH
	2PRHRwkrd9A/k9Kkng5sRZKlnttdDIRs0zxafio/ucTI6uf9fVBdPHRb36cFKOCz98e9fAoC6RFDu
	XJQ1Qe+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMVPq-0001SX-Ur; Mon, 21 Oct 2019 10:59:58 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMVOT-0000FO-KT
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 10:58:36 +0000
Received: by mail-wr1-x441.google.com with SMTP id v9so2161108wrq.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 03:58:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=AcYtOZZC3SDgF/F2fzm0VNHT2ydT5TrPWwuuSdTpFkI=;
 b=p6Ft5TcxLv+E+Nqn4V5r3Z58b7aTm2FHSTanPxT+z0HEeTqd5XVYhGwVw9rXy2e2Pv
 ShO6+JNNqzwtdzkUSZiwdqdw35pIai0tvvC89yyO7e0z33vfpn27aB5zrgvTbiJOiRnY
 uzXXeUp/RXxKV5IqixhMIyoZxdNHMxd9kQ77EHBg4FyapVI6c1s0E+zXjEUmpxjwgz8L
 Goj349p6YjkM2EEa0vcVX9qZs2QI3b1HtnDHAfVXhiZBjkqr1sOeH3B+NC6PYqymug+G
 aoB1UFpaD/iWX2tPqvGUEG/QH8U+ZFubBV6eZv5XR8d7mnmFru2cJfx2bXkEMkAbnJL7
 exCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=AcYtOZZC3SDgF/F2fzm0VNHT2ydT5TrPWwuuSdTpFkI=;
 b=hLqgDF+2oA14veQLcO4gbL58vJ5osDYpWeL3byv+3NBBEksExhi7HJ6YCuzUbWxW1m
 KtkLeFpPR6Dff0hfSPV7oW5aArgTL+3pNQqP4e12fUgC+g61fASWMe7R48wRh6ptMnmE
 aNbENj4brZrgmZT8tgu3GvJe80z0I5A3Qsk8kT2bKKuasAciajXHifp2N5Gm8Bq2DUFu
 IRMZyXgNjAsS32v/ty2c/2y96y0rJHN7x9j5BBMk8ZpNyGgTkmHemsq18JGOTJ6PTqzY
 S1Ah/idvIi9ru0/gZAGztGTMAOOU4bQCLptohVoJDoFgy7HGh9EsYJOemBsp6TT85hcY
 7mWQ==
X-Gm-Message-State: APjAAAUuuhrDJf+63geG3lQqt1P2aBRej6a0qCsM0U33fHt9TOe8d9Cd
 rEiNvoIPq4fwbGAxJrkRdAC+cw==
X-Google-Smtp-Source: APXvYqwKV/AXCQB95tq4t5oleALTQ+3vAn+xOudSOk3HFRWKBU99hqCcMG+NFe8mA6BczXlus5RICQ==
X-Received: by 2002:a5d:5101:: with SMTP id s1mr3913120wrt.339.1571655510311; 
 Mon, 21 Oct 2019 03:58:30 -0700 (PDT)
Received: from localhost.localdomain ([95.149.164.99])
 by smtp.gmail.com with ESMTPSA id q22sm12544289wmj.31.2019.10.21.03.58.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 03:58:29 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: daniel.thompson@linaro.org, arnd@arndb.de, broonie@kernel.org,
 linus.walleij@linaro.org
Subject: [PATCH v2 5/9] mfd: mfd-core: Remove mfd_clone_cell()
Date: Mon, 21 Oct 2019 11:58:18 +0100
Message-Id: <20191021105822.20271-6-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191021105822.20271-1-lee.jones@linaro.org>
References: <20191021105822.20271-1-lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_035833_699773_0AB5D2BF 
X-CRM114-Status: GOOD (  14.03  )
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

Providing a subsystem-level API helper seems over-kill just to save a
few lines of C-code.  Previous commits saw us convert mfd_clone_cell()'s
only user over to use a more traditional style of MFD child-device
registration.  Now we can remove the superfluous helper from the MFD API.

Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 drivers/mfd/mfd-core.c   | 33 ---------------------------------
 include/linux/mfd/core.h | 18 ------------------
 2 files changed, 51 deletions(-)

diff --git a/drivers/mfd/mfd-core.c b/drivers/mfd/mfd-core.c
index 23276a80e3b4..8126665bb2d8 100644
--- a/drivers/mfd/mfd-core.c
+++ b/drivers/mfd/mfd-core.c
@@ -382,38 +382,5 @@ int devm_mfd_add_devices(struct device *dev, int id,
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
