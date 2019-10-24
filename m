Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 232B3E384F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 18:40:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=sqZLfnvQabTAqZIEuEun6BzOyaLkdbxT77gcWzlGZls=; b=nrMtmpzPd50R7VM76vIqeQ0qPG
	dv8UOc9Pb65YqQHifMwzXFygH3mENM4LzS8Gz5aSrxJH7AQW5jGszAXHnvvR+wMCwbhIRP1Kccg9g
	aS/96dCYpjoLFpsSDIi+/GM2s4DLkEsKG1/Pw7eJaT4fbUO9jw4DkbhPYaBNRO+D8Ed1cvuKGBtlB
	rjoJdPbYxppT4WLWXikS0/ki8CMlvZjL7jhGVnPkI3mAlkVGVQkSL2HOjkt4/qp/IwIsTUor0tBKP
	4m3cTGlUq2jukF2X9mZqPZWRXIo7l8WMTBDerwVM7oSl96GehWbpqBtHUGaZlBMjTbXWQzx83kZGK
	uGzt68mQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNg9q-0006Jp-Vq; Thu, 24 Oct 2019 16:40:18 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNg8I-0005Mw-QY
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 16:38:44 +0000
Received: by mail-wm1-x343.google.com with SMTP id q130so3080666wme.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 09:38:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=e4HNR/0VM5m4e7dMrNKrSD8efxMPd+5rZb481ikFf74=;
 b=M7WkmfL0zrA5DnctlcBxlGdxMtMvI7tb2Et+EcJD17XeKNEcanCAnSlnnFtfrQBuM3
 sDhf5LBd626wET1CuSWyl/rNSMkVh7OT3aDCOds4shDrMV1BOqn/YQFAjcw5wHDP541P
 1/KOQc4D2Q7cPOFKXNBlEJmLOHeUPfL218/n4FP/xi+GZncaONIbCHbY3wj8Ui4KD2w1
 efGgPXWk+q/VIFUq9zoDrdj/MKBbzRWvdbAMOHU8q6g3mk2yO4zDLW0HKVtQslGanI6m
 yJaTeQurgB38QyJxOF/EQuEb5uHiE/GtD2I2MEEBn+DHfT1q9WyC8IMLjupNUcM8DF8w
 2oAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=e4HNR/0VM5m4e7dMrNKrSD8efxMPd+5rZb481ikFf74=;
 b=N8u5AHLTRu0zMaiMCXWtgamxn4wxm/enlPt0MfhyS3zKZwGRowE2Lc1Zw2I3KQML/1
 yZE2fyAPBeXMa0g8hW0yfvBVRB3d9z2gKByFzCn86kweH6WqiV5Kxe/yU5SLCDU2vvI5
 kmHHZjnQq5k7XeFJ3TtqK6GQDOp2MFKRVWsBc6TT+nblgW+j966LlY2NyR/GSrx/BuKU
 kTaSGgihBln5Y1iRtxY8LcWlMY+3lggb3cLrxzkB4vjy6/u2h2r2goBz80E8L1q+bELQ
 dD9dRevKVXCxQD8MdlipCrXWi1fwIIMwG19oQM+PneWQu2FhXgGN3lMOlIUy3VbN4x/g
 WpNg==
X-Gm-Message-State: APjAAAX4LLOle1UyZIhr+dHprgm904WZghtrVUHxhK5FNoH6FlOZHYMq
 pmhbOtv2bnzYc/g1P+cHviaV1g==
X-Google-Smtp-Source: APXvYqxEHli1uD77KL/ELWWxWiIIpMJMsjHrKFyV9fTmvffZSzc7lJEAUYH66gJFBm49CiohcZ1L0Q==
X-Received: by 2002:a1c:2884:: with SMTP id o126mr6171815wmo.153.1571935121495; 
 Thu, 24 Oct 2019 09:38:41 -0700 (PDT)
Received: from localhost.localdomain ([95.149.164.99])
 by smtp.gmail.com with ESMTPSA id 6sm3446175wmd.36.2019.10.24.09.38.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 09:38:40 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: daniel.thompson@linaro.org, arnd@arndb.de, broonie@kernel.org,
 linus.walleij@linaro.org
Subject: [PATCH v3 05/10] mfd: mfd-core: Remove mfd_clone_cell()
Date: Thu, 24 Oct 2019 17:38:27 +0100
Message-Id: <20191024163832.31326-6-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191024163832.31326-1-lee.jones@linaro.org>
References: <20191024163832.31326-1-lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_093842_855623_C60D23D4 
X-CRM114-Status: GOOD (  13.74  )
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
