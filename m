Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 652E526210
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 12:39:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1swfMVklfbBveY3eATPNaDiSMz66qsaSZAIBJP9Chqo=; b=fQ85jBfv0m7Nv6pr1724MyggwZ
	O0iMpt1IzkeIyz1yho03reW9Osm6w79JJHT49XVmqYIhkWdwyn0vHAiw3BwE/sXlpJ56TCBg+Qo14
	Oi2oDQBsGzP+l82n7pR/EyI2XW50G+ueJSno0L7+QPkojwbiKlUWXAlKjyiNzLAM29XGl6jddFvaP
	hWeGhe8xNUYtc/Oc8cRz04cZbRKmkwBDU3+Z28bm4HeqkbYxVbGaMSixo2oGEx+JnnM+yKnYkFcbp
	1bxMS1ywnmqeB5qF91S8fctknbz1u7Oz04znBqBKpPzg7oLBrml25zaA7JjnqSpNXqfRfsHodTDyY
	u6VQazXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTOeb-0000mV-EY; Wed, 22 May 2019 10:39:25 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTOb6-0005G1-Gy
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 10:36:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3D9DB169E;
 Wed, 22 May 2019 03:35:48 -0700 (PDT)
Received: from en101.cambridge.arm.com (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id
 2CF943F575; Wed, 22 May 2019 03:35:47 -0700 (PDT)
From: Suzuki K Poulose <suzuki.poulose@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 23/30] coresight: Add support for releasing platform
 specific data
Date: Wed, 22 May 2019 11:34:56 +0100
Message-Id: <1558521304-27469-24-git-send-email-suzuki.poulose@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1558521304-27469-1-git-send-email-suzuki.poulose@arm.com>
References: <1558521304-27469-1-git-send-email-suzuki.poulose@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_033549_068070_0F9A495B 
X-CRM114-Status: GOOD (  14.70  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: coresight@lists.linaro.org, linux-kernel@vger.kernel.org,
 mathieu.poirier@linaro.org, Suzuki K Poulose <suzuki.poulose@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a helper to clean up the platform specific data provided
by the firmware. This will be later used for dropping the necessary
references when we switch to the fwnode handles for tracking
connections.

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 drivers/hwtracing/coresight/coresight-platform.c | 6 +++++-
 drivers/hwtracing/coresight/coresight-priv.h     | 4 ++++
 drivers/hwtracing/coresight/coresight.c          | 3 +++
 3 files changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/hwtracing/coresight/coresight-platform.c b/drivers/hwtracing/coresight/coresight-platform.c
index f500de6..53d6eed 100644
--- a/drivers/hwtracing/coresight/coresight-platform.c
+++ b/drivers/hwtracing/coresight/coresight-platform.c
@@ -17,6 +17,7 @@
 #include <linux/cpumask.h>
 #include <asm/smp_plat.h>
 
+#include "coresight-priv.h"
 /*
  * coresight_alloc_conns: Allocate connections record for each output
  * port from the device.
@@ -311,7 +312,7 @@ struct coresight_platform_data *
 coresight_get_platform_data(struct device *dev)
 {
 	int ret = -ENOENT;
-	struct coresight_platform_data *pdata;
+	struct coresight_platform_data *pdata = NULL;
 	struct fwnode_handle *fwnode = dev_fwnode(dev);
 
 	if (IS_ERR_OR_NULL(fwnode))
@@ -329,6 +330,9 @@ coresight_get_platform_data(struct device *dev)
 	if (!ret)
 		return pdata;
 error:
+	if (!IS_ERR_OR_NULL(pdata))
+		/* Cleanup the connection information */
+		coresight_release_platform_data(pdata);
 	return ERR_PTR(ret);
 }
 EXPORT_SYMBOL_GPL(coresight_get_platform_data);
diff --git a/drivers/hwtracing/coresight/coresight-priv.h b/drivers/hwtracing/coresight/coresight-priv.h
index e0684d0..c216421 100644
--- a/drivers/hwtracing/coresight/coresight-priv.h
+++ b/drivers/hwtracing/coresight/coresight-priv.h
@@ -200,4 +200,8 @@ static inline void *coresight_get_uci_data(const struct amba_id *id)
 	return 0;
 }
 
+static inline void
+coresight_release_platform_data(struct coresight_platform_data *pdata)
+{}
+
 #endif
diff --git a/drivers/hwtracing/coresight/coresight.c b/drivers/hwtracing/coresight/coresight.c
index 96e1515..526141c 100644
--- a/drivers/hwtracing/coresight/coresight.c
+++ b/drivers/hwtracing/coresight/coresight.c
@@ -1250,6 +1250,8 @@ struct coresight_device *coresight_register(struct coresight_desc *desc)
 err_free_csdev:
 	kfree(csdev);
 err_out:
+	/* Cleanup the connection information */
+	coresight_release_platform_data(desc->pdata);
 	return ERR_PTR(ret);
 }
 EXPORT_SYMBOL_GPL(coresight_register);
@@ -1259,6 +1261,7 @@ void coresight_unregister(struct coresight_device *csdev)
 	etm_perf_del_symlink_sink(csdev);
 	/* Remove references of that device in the topology */
 	coresight_remove_conns(csdev);
+	coresight_release_platform_data(csdev->pdata);
 	device_unregister(&csdev->dev);
 }
 EXPORT_SYMBOL_GPL(coresight_unregister);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
