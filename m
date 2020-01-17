Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 824E8140CD5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 15:41:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=aRNouAo267RwfKEZ3ZL9Bbj9EEjOtlp5mf5xmqIP4qo=; b=FKHdAEj1M9sBrSJJ6ti2LFYqVD
	MJkMYNT86tewWPUehnUeWZV1pRpnW3czJpAz0ZgFwbTMxnkLHbG4jg/ky/lJTlP26Ojyv6J4BygfC
	S8ay5DYjvWeL+9LSKkZ7P9kk0NWyJYTBWWjdzjXNrCVirSGPSwXugQXeWrClamBAnIyb5L7FFKFb8
	s5lA/ZM/fQ7W87I4PALT6iQJnqWdIB8AOiuYIUNH23ESk+yxBhXbVi156rji8YHKLio2JAaucOZSX
	8w6fZLiIto+MKqg0zcUC+pVyAsSxhOYODCfB1Rx1wv/nm71qAbPbuHYwnXzK7RFlyJ/IlneMDJwhl
	qN/XXKug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isSoT-0001Iy-Vj; Fri, 17 Jan 2020 14:41:29 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isSmA-0006lU-RN
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 14:39:09 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 025A7ACD7;
 Fri, 17 Jan 2020 14:39:05 +0000 (UTC)
From: Mian Yousaf Kaukab <ykaukab@suse.de>
To: linux-arm-kernel@lists.infradead.org,
	mathieu.poirier@linaro.org
Subject: [PATCH RFC 08/15] coresight: tmc-etr: add function to register catu
 ops
Date: Fri, 17 Jan 2020 15:40:03 +0100
Message-Id: <20200117144010.11149-9-ykaukab@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20200117144010.11149-1-ykaukab@suse.de>
References: <20200117144010.11149-1-ykaukab@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_063907_188580_A567D4C7 
X-CRM114-Status: GOOD (  12.85  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: alexander.shishkin@linux.intel.com, paul.gortmaker@windriver.com,
 Mian Yousaf Kaukab <ykaukab@suse.de>, linux-kernel@vger.kernel.org,
 suzuki.poulose@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Make etr_catu_buf_ops static. Instead of directly accessing it in
etr_buf_ops[], add a function to let catu driver register the ops at
runtime. Break circular dependency between tmc-etr and catu drivers.

Signed-off-by: Mian Yousaf Kaukab <ykaukab@suse.de>
---
 drivers/hwtracing/coresight/coresight-catu.c    |  4 +++-
 drivers/hwtracing/coresight/coresight-catu.h    |  2 --
 drivers/hwtracing/coresight/coresight-tmc-etr.c | 17 +++++++++++++++--
 drivers/hwtracing/coresight/coresight-tmc.h     |  3 +++
 4 files changed, 21 insertions(+), 5 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-catu.c b/drivers/hwtracing/coresight/coresight-catu.c
index 6fc76b776744..6c77ccc04842 100644
--- a/drivers/hwtracing/coresight/coresight-catu.c
+++ b/drivers/hwtracing/coresight/coresight-catu.c
@@ -359,7 +359,7 @@ static int catu_alloc_etr_buf(struct tmc_drvdata *tmc_drvdata,
 	return 0;
 }
 
-const struct etr_buf_operations etr_catu_buf_ops = {
+static const struct etr_buf_operations etr_catu_buf_ops = {
 	.alloc = catu_alloc_etr_buf,
 	.free = catu_free_etr_buf,
 	.sync = catu_sync_etr_buf,
@@ -559,6 +559,8 @@ static int catu_probe(struct amba_device *adev, const struct amba_id *id)
 	catu_desc.subtype.helper_subtype = CORESIGHT_DEV_SUBTYPE_HELPER_CATU;
 	catu_desc.ops = &catu_ops;
 
+	tmc_etr_set_catu_ops(&etr_catu_buf_ops);
+
 	drvdata->csdev = coresight_register(&catu_desc);
 	if (IS_ERR(drvdata->csdev))
 		ret = PTR_ERR(drvdata->csdev);
diff --git a/drivers/hwtracing/coresight/coresight-catu.h b/drivers/hwtracing/coresight/coresight-catu.h
index 80ceee3c739c..6160c2d75a56 100644
--- a/drivers/hwtracing/coresight/coresight-catu.h
+++ b/drivers/hwtracing/coresight/coresight-catu.h
@@ -108,6 +108,4 @@ static inline bool coresight_is_catu_device(struct coresight_device *csdev)
 	return true;
 }
 
-extern const struct etr_buf_operations etr_catu_buf_ops;
-
 #endif
diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
index 625882bc8b08..5b2a515af1ae 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
@@ -788,10 +788,23 @@ static inline void tmc_etr_disable_catu(struct tmc_drvdata *drvdata)
 static const struct etr_buf_operations *etr_buf_ops[] = {
 	[ETR_MODE_FLAT] = &etr_flat_buf_ops,
 	[ETR_MODE_ETR_SG] = &etr_sg_buf_ops,
-	[ETR_MODE_CATU] = IS_ENABLED(CONFIG_CORESIGHT_CATU)
-						? &etr_catu_buf_ops : NULL,
+	[ETR_MODE_CATU] = NULL,
 };
 
+void tmc_etr_set_catu_ops(const struct etr_buf_operations *catu)
+{
+	etr_buf_ops[ETR_MODE_CATU] = catu;
+}
+EXPORT_SYMBOL_GPL(tmc_etr_set_catu_ops);
+
+void tmc_etr_remove_catu_ops(void)
+{
+	etr_buf_ops[ETR_MODE_CATU] = NULL;
+	/* TODO: cleanup old etr_buf->ops and anything inflight */
+	wmb();
+}
+EXPORT_SYMBOL_GPL(tmc_etr_remove_catu_ops);
+
 static inline int tmc_etr_mode_alloc_buf(int mode,
 					 struct tmc_drvdata *drvdata,
 					 struct etr_buf *etr_buf, int node,
diff --git a/drivers/hwtracing/coresight/coresight-tmc.h b/drivers/hwtracing/coresight/coresight-tmc.h
index 71de978575f3..db431e230a40 100644
--- a/drivers/hwtracing/coresight/coresight-tmc.h
+++ b/drivers/hwtracing/coresight/coresight-tmc.h
@@ -325,4 +325,7 @@ tmc_sg_table_buf_size(struct tmc_sg_table *sg_table)
 
 struct coresight_device *tmc_etr_get_catu_device(struct tmc_drvdata *drvdata);
 
+void tmc_etr_set_catu_ops(const struct etr_buf_operations *catu);
+void tmc_etr_remove_catu_ops(void);
+
 #endif
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
