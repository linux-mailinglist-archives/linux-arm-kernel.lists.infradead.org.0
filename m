Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96C45DC58B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 14:57:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=s1BDcw36jHKjZytMAaID6Ta4WUUKSe5uiNKeKuKrYuM=; b=TEORmXCRA5Xu/stSwWeV0dq/Fe
	Es2m9WX6ZcVwFOWpqK5XM3zqqwEU4KqruG15wCR+ntaku7cptq1lKiXG4HraW0Pd1FpfJcULJ5DJ+
	eFQh//tYxKKX29ySox346mq2+TGzHeK+M24p22OLK+duofNkptMXeRHwzsqGDzNH/izRsf/rBDsEJ
	JUi/ha072qEk4TYfu4TBScw6praF9zCIOpgPekUq7+rsLHTmm7xXuKkKe856FZTVz/yhDKY0eitea
	E7EEnsy4XIcNR4aDsYeNgR+EnhQZQhDFFqNmBBwSHL+34zVkieFumW5EuwMxop3eZQyJzrT4Gdrer
	GwgAhokA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLRoj-0000Bu-Rm; Fri, 18 Oct 2019 12:57:17 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLRnj-0007wi-Q8
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 12:56:17 +0000
Received: by mail-wm1-x344.google.com with SMTP id v17so5994329wml.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 05:56:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=H4mTo2HGqwmy0EIuop2B1GXHxjKBlt/sTDf6EAka3Lg=;
 b=ylikPevI+WeeuVyJHM9diR5Ll0ND42DwvS62otpbOR7NpeVRkv/QxIllgr1dp+sUV4
 YugopkImYD6Wj4mho/7VDBT/WB5E1hGmeKZr+6C6pkRCjmgxpBlZFOkbN1nLCw1cPBKN
 051SK/eiFMelfug6/IP+D7VAHuvPuB93d6m8GPe4hQuWMLxaoGCzMfuNyuqC+WmMZ1Xa
 AMCQpURQHcxKPIDPBwE1rud0PcXzgk2aApAx5Do2GJRNKhaNLb5tjDzaIHglatPa+rQD
 BEdF5iSLd0em235wEA+/oVIphuMvjRnI52cipOAmb/qVkUy8KDxrYqAd5btpAwxJYn7D
 4Ulw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=H4mTo2HGqwmy0EIuop2B1GXHxjKBlt/sTDf6EAka3Lg=;
 b=i3zTkrgFzi8phyMzKP2UrSG9VcU+P8UwJDiodzuj/d8TxdGFTXXZ1Xg7oeZq0yu5ND
 OZHI+nyOdj4T91p2LYAOS24Jbm6PBoayyaSChVFIgBQANWrl39q/AJc0fOunCTPuhtKF
 WiFznnu8CCHq1NhRBWED9BjgPXGHTaT8tzKMbczAXyi9FVMjUVkoBrar0jEmxYz6nyH4
 YVKGjLHAMDbyhe4jVPzTQiQIVI3U1eEcVBli7QaNyYctFNopmHzhBMlOQyrHO45dMuGv
 4Ifrv/N7acFl5jYhOPY/HPcWrAuxAXRscTY+9iJMidRDuhZ05qzgqhHYT59tbG1VmQYL
 Z1YA==
X-Gm-Message-State: APjAAAXeg3WK+q8r6zzOLth042BoWax7JneJJxBd/zyG/sQFG6ChvmVJ
 xiBV231nSTARVzDv7StiPfdqTg==
X-Google-Smtp-Source: APXvYqwjuqXxWbaJcNR4hvNrAAl8FCGcVA33t80VEPmWfUUZjWl5jkUWYdIodtBWFtS4oAlBC71k/Q==
X-Received: by 2002:a1c:4805:: with SMTP id v5mr7961246wma.130.1571403374485; 
 Fri, 18 Oct 2019 05:56:14 -0700 (PDT)
Received: from localhost.localdomain ([95.149.164.47])
 by smtp.gmail.com with ESMTPSA id q14sm6058491wre.27.2019.10.18.05.56.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Oct 2019 05:56:14 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: broonie@kernel.org, linus.walleij@linaro.org, daniel.thompson@linaro.org,
 arnd@arndb.de
Subject: [PATCH 4/4] mfd: mfd-core: Remove mfd_clone_cell()
Date: Fri, 18 Oct 2019 13:56:08 +0100
Message-Id: <20191018125608.5362-5-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191018125608.5362-1-lee.jones@linaro.org>
References: <20191018125608.5362-1-lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_055615_882210_CACBA68D 
X-CRM114-Status: GOOD (  13.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Lee Jones <lee.jones@linaro.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, dilinger@queued.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Providing an subsystem-level API helper seems over-kill just to save a
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
