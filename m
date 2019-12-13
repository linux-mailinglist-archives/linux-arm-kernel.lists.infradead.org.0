Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3067011E5EF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 15:55:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jET8tFgxvDtpzyaDia/TYBtv5ME5gXrk3lBJPhyv4Kw=; b=PVZNyECg+xHI4SBcIGIO5cV3qw
	nFJqdLSn4FmjwB6TAhxa/Nmpo1UGzXUcewSSFJd+aVcDxNJ9Xv5+GuiTy71gZg3NKEy9ThQYnDK9c
	aduM0453yhdPkFWzzR1CpG84JMgapYqyzRqvrpcq1slygigTAJ0D7rMlrf7RJKnosq8KC4bWk11zu
	xV0il600+gCmLTr2htPLbiVr5R2Pa8aOJzzrkFYau1sOx2i4/e4J2Tlf7TWTl+q0bZTxnVv7Cl+fj
	fmb+P/+FmRdk4squRdv4GmJbXLdbkbEBrAC257VlU+dUMShTxxFGplty/DeXMffvtnjuwwnQFLfcH
	pysFN2yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifmLv-0001t0-4K; Fri, 13 Dec 2019 14:55:35 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifmL8-0000Dw-Kf
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 14:54:48 +0000
Received: by mail-wr1-x442.google.com with SMTP id j42so6904609wrj.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Dec 2019 06:54:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=bmgktRCRd7EQ3fhXppyO1nhH6Ozd77Nfmts8qC4Te8Y=;
 b=GcTP7vxdBMUscRzzW2nP6+fJJTSfxoU9S/+UXNcwsh41VTpmPEdx+kjAookSS1Mi+V
 UEZDHvd8g44lePAZe6DRilrzvDNLxMoi5Cuc1viK67Yl4+iuiOGPKyWorAT6U1ssjnQs
 KFsZAtiu7NInmTtW29dTCtGsFiRExP9rZmL6EM+zm1OyQ/fR9fPA7MrjW09pHNv5OS5r
 qfYmlxjbhv0T45meZD7zqfczEehivA2PRvDNAOU9nbBAHc0d/6vQPH8MReJmP0a5TU/U
 rRW3waiAE9uFtrLQBGeu8jcfy+dP6AtrR9Nb362YRnoKJEaBCogppZWM3v1y3jAJcJAU
 JUMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=bmgktRCRd7EQ3fhXppyO1nhH6Ozd77Nfmts8qC4Te8Y=;
 b=QO6SySPB3VnO96Ydk5zk+Vov5it6KS+2GX5tZpOiEpGi0+bJiZ8pkBTl4zB/fF9Igk
 P+hfcYJESEqmNjOAeoiltZ6og/lU+g3rGV7JhZD7D1Jgvio3EHHkTwaf+8hbWWbq2+zS
 OMJQD1iDaSZm0pP39f1GRyjd0phDj7qSMa0zCKoi2HXrmXThLAvpU6liIlxElocK8Z/i
 re0f0NFslLD1JA3r+bhyKVqYqo9b0TAZWP0PKFkJ59qZluhklzLx1+IIQctowimrXnPw
 jx5g4S1i5Ep7lRHiJWO9FwuYtvbuDdmwX3a8UuLQn5uxkMN7MJhXa1F/TW4b/fh6MOf8
 52nw==
X-Gm-Message-State: APjAAAXnf1PBkWBKA3kfmfsbvqFdEJxbRneCZlJTDn6wRgFz8HqdsiwN
 Iexdu/6DG3GBfQ1qfCTruZIkXrq3tho=
X-Google-Smtp-Source: APXvYqxKVaNvPIaaq9RJyM+DPmMe2h/PBwwsrFvW8ty74vUg5nEsdx0TB194Nh7m7RbaIcy+d/sh2g==
X-Received: by 2002:adf:d848:: with SMTP id k8mr12830935wrl.328.1576248882393; 
 Fri, 13 Dec 2019 06:54:42 -0800 (PST)
Received: from linaro.org ([2a00:23c5:6815:3901:54:d457:4f7b:f42c])
 by smtp.gmail.com with ESMTPSA id n189sm10002979wme.33.2019.12.13.06.54.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Dec 2019 06:54:41 -0800 (PST)
From: Mike Leach <mike.leach@linaro.org>
To: linux-arm-kernel@lists.infradead.org, coresight@lists.linaro.org,
 linux-doc@vger.kernel.org
Subject: [PATCH v3 1/6] coresight: Pass coresight_device for
 coresight_release_platform_data
Date: Fri, 13 Dec 2019 14:54:26 +0000
Message-Id: <20191213145431.24067-2-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191213145431.24067-1-mike.leach@linaro.org>
References: <20191213145431.24067-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_065446_678627_2A31EDE6 
X-CRM114-Status: GOOD (  13.90  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mike Leach <mike.leach@linaro.org>, mathieu.poirier@linaro.org,
 suzuki.poulose@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Suzuki K Poulose <suzuki.poulose@arm.com>

As we prepare to expose the links between the devices in
sysfs, pass the coresight_device instance to the
coresight_release_platform_data in order to free up the connections
when the device is removed.

No functional changes as such in this patch.

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Mike Leach <mike.leach@linaro.org>
---
 drivers/hwtracing/coresight/coresight-platform.c | 2 +-
 drivers/hwtracing/coresight/coresight-priv.h     | 3 ++-
 drivers/hwtracing/coresight/coresight.c          | 7 ++++---
 3 files changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-platform.c b/drivers/hwtracing/coresight/coresight-platform.c
index 421d4fc95f41..1621a85748d1 100644
--- a/drivers/hwtracing/coresight/coresight-platform.c
+++ b/drivers/hwtracing/coresight/coresight-platform.c
@@ -823,7 +823,7 @@ coresight_get_platform_data(struct device *dev)
 error:
 	if (!IS_ERR_OR_NULL(pdata))
 		/* Cleanup the connection information */
-		coresight_release_platform_data(pdata);
+		coresight_release_platform_data(NULL, pdata);
 	return ERR_PTR(ret);
 }
 EXPORT_SYMBOL_GPL(coresight_get_platform_data);
diff --git a/drivers/hwtracing/coresight/coresight-priv.h b/drivers/hwtracing/coresight/coresight-priv.h
index 890f9a5c97c6..1cad642f27aa 100644
--- a/drivers/hwtracing/coresight/coresight-priv.h
+++ b/drivers/hwtracing/coresight/coresight-priv.h
@@ -211,7 +211,8 @@ static inline void *coresight_get_uci_data(const struct amba_id *id)
 	return 0;
 }
 
-void coresight_release_platform_data(struct coresight_platform_data *pdata);
+void coresight_release_platform_data(struct coresight_device *csdev,
+				     struct coresight_platform_data *pdata);
 struct coresight_device *
 coresight_find_csdev_by_fwnode(struct fwnode_handle *r_fwnode);
 void coresight_set_assoc_ectdev_mutex(struct coresight_device *csdev,
diff --git a/drivers/hwtracing/coresight/coresight.c b/drivers/hwtracing/coresight/coresight.c
index c71553c09f8e..10e756410d3c 100644
--- a/drivers/hwtracing/coresight/coresight.c
+++ b/drivers/hwtracing/coresight/coresight.c
@@ -1213,7 +1213,8 @@ postcore_initcall(coresight_init);
  * coresight_release_platform_data: Release references to the devices connected
  * to the output port of this device.
  */
-void coresight_release_platform_data(struct coresight_platform_data *pdata)
+void coresight_release_platform_data(struct coresight_device *csdev,
+				     struct coresight_platform_data *pdata)
 {
 	int i;
 
@@ -1316,7 +1317,7 @@ struct coresight_device *coresight_register(struct coresight_desc *desc)
 	kfree(csdev);
 err_out:
 	/* Cleanup the connection information */
-	coresight_release_platform_data(desc->pdata);
+	coresight_release_platform_data(NULL, desc->pdata);
 	return ERR_PTR(ret);
 }
 EXPORT_SYMBOL_GPL(coresight_register);
@@ -1326,7 +1327,7 @@ void coresight_unregister(struct coresight_device *csdev)
 	etm_perf_del_symlink_sink(csdev);
 	/* Remove references of that device in the topology */
 	coresight_remove_conns(csdev);
-	coresight_release_platform_data(csdev->pdata);
+	coresight_release_platform_data(csdev, csdev->pdata);
 	device_unregister(&csdev->dev);
 }
 EXPORT_SYMBOL_GPL(coresight_unregister);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
