Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F4AB140CCE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 15:41:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NewPZipbTrS7qZW72xeTvmaX2urd/IlNnG52PK2px6c=; b=cruoiv/sS/1nkO00cP9lE4nQQ8
	8fP5c4o0+NstYkKmQjc/zbF1N5oqERK7G5qTWjj6vlHqqSRxoIJwXzUjHovUu4QJFujGJMmQLGS6/
	WhK2wIj4XHjZQqVUPVEunDOjZRWvKBn9QVbNpyl4UwSNBntBDHjDAYQoReLZQUhTG+W2YRVFR3Gom
	a+GnTQALWpPXRQSu+QeXEtnk9R3C3Hs/BovWRdzdTRJHeDCNjSzJHFdSeqyilsEEhL4IRsrF7c++Y
	N5hnhuDz/RKiLrMTmgBCHJ2FRjsZexzyZO+Q8INXh/ZxeYF5NW2AqaGSj7kHRzG+pEC5f3935NP3X
	MVEWNPuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isSnn-0000aX-TB; Fri, 17 Jan 2020 14:40:47 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isSm7-0006jf-Kp
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 14:39:06 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 69388AC8B;
 Fri, 17 Jan 2020 14:39:02 +0000 (UTC)
From: Mian Yousaf Kaukab <ykaukab@suse.de>
To: linux-arm-kernel@lists.infradead.org,
	mathieu.poirier@linaro.org
Subject: [PATCH RFC 04/15] coresight: make API private
Date: Fri, 17 Jan 2020 15:39:59 +0100
Message-Id: <20200117144010.11149-5-ykaukab@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20200117144010.11149-1-ykaukab@suse.de>
References: <20200117144010.11149-1-ykaukab@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_063903_993936_2D0D7409 
X-CRM114-Status: GOOD (  10.68  )
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

There are no external users of coresight API. Move the function
prototypes to coresight-priv.h.

Not removing the whole file as there are following two users of it:
arch/arm/kernel/hw_breakpoint.c
drivers/misc/habanalabs/goya/goya_coresight.c

Lets clean this in a future patch.

Signed-off-by: Mian Yousaf Kaukab <ykaukab@suse.de>
---
 drivers/hwtracing/coresight/coresight-priv.h | 22 ++++++++++++
 include/linux/coresight.h                    | 50 ----------------------------
 2 files changed, 22 insertions(+), 50 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-priv.h b/drivers/hwtracing/coresight/coresight-priv.h
index 82e563cdc879..e6eec9f46e13 100644
--- a/drivers/hwtracing/coresight/coresight-priv.h
+++ b/drivers/hwtracing/coresight/coresight-priv.h
@@ -202,4 +202,26 @@ static inline void *coresight_get_uci_data(const struct amba_id *id)
 
 void coresight_release_platform_data(struct coresight_platform_data *pdata);
 
+extern struct coresight_device *
+coresight_register(struct coresight_desc *desc);
+extern void coresight_unregister(struct coresight_device *csdev);
+extern int coresight_enable(struct coresight_device *csdev);
+extern void coresight_disable(struct coresight_device *csdev);
+extern int coresight_timeout(void __iomem *addr, u32 offset,
+			     int position, int value);
+
+extern int coresight_claim_device(void __iomem *base);
+extern int coresight_claim_device_unlocked(void __iomem *base);
+
+extern void coresight_disclaim_device(void __iomem *base);
+extern void coresight_disclaim_device_unlocked(void __iomem *base);
+extern char *coresight_alloc_device_name(struct coresight_dev_list *devs,
+					 struct device *dev);
+
+extern bool coresight_loses_context_with_cpu(struct device *dev);
+
+extern int coresight_get_cpu(struct device *dev);
+
+struct coresight_platform_data *coresight_get_platform_data(struct device *dev);
+
 #endif
diff --git a/include/linux/coresight.h b/include/linux/coresight.h
index 44e552de419c..8b39a83732b8 100644
--- a/include/linux/coresight.h
+++ b/include/linux/coresight.h
@@ -269,54 +269,4 @@ struct coresight_ops {
 	const struct coresight_ops_helper *helper_ops;
 };
 
-#ifdef CONFIG_CORESIGHT
-extern struct coresight_device *
-coresight_register(struct coresight_desc *desc);
-extern void coresight_unregister(struct coresight_device *csdev);
-extern int coresight_enable(struct coresight_device *csdev);
-extern void coresight_disable(struct coresight_device *csdev);
-extern int coresight_timeout(void __iomem *addr, u32 offset,
-			     int position, int value);
-
-extern int coresight_claim_device(void __iomem *base);
-extern int coresight_claim_device_unlocked(void __iomem *base);
-
-extern void coresight_disclaim_device(void __iomem *base);
-extern void coresight_disclaim_device_unlocked(void __iomem *base);
-extern char *coresight_alloc_device_name(struct coresight_dev_list *devs,
-					 struct device *dev);
-
-extern bool coresight_loses_context_with_cpu(struct device *dev);
-#else
-static inline struct coresight_device *
-coresight_register(struct coresight_desc *desc) { return NULL; }
-static inline void coresight_unregister(struct coresight_device *csdev) {}
-static inline int
-coresight_enable(struct coresight_device *csdev) { return -ENOSYS; }
-static inline void coresight_disable(struct coresight_device *csdev) {}
-static inline int coresight_timeout(void __iomem *addr, u32 offset,
-				     int position, int value) { return 1; }
-static inline int coresight_claim_device_unlocked(void __iomem *base)
-{
-	return -EINVAL;
-}
-
-static inline int coresight_claim_device(void __iomem *base)
-{
-	return -EINVAL;
-}
-
-static inline void coresight_disclaim_device(void __iomem *base) {}
-static inline void coresight_disclaim_device_unlocked(void __iomem *base) {}
-
-static inline bool coresight_loses_context_with_cpu(struct device *dev)
-{
-	return false;
-}
-#endif
-
-extern int coresight_get_cpu(struct device *dev);
-
-struct coresight_platform_data *coresight_get_platform_data(struct device *dev);
-
 #endif
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
