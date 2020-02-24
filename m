Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4855E16AEF9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 19:25:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Nzew6fHS+L1UTfcAZJ29OnDSKfI1U8HWj0lBhX7o4g=; b=I0+7Y53mXejiSK
	lSmZ2lF+T3ux4WmBjnCwHZWioyjT+57m2Z+0K28AYxodQXs26ev+tO8Q1TrebPhP5SHF3/0ANVLhv
	nOJqvRT71szOk1Uk5Ll7wS+Kthdc0AE88keoCH/6VyMRUAwhT0zNaZ2kAHcAWmR8xkfeMLp/28scz
	A7H6jblmVeZHA2p1/SlslWdUBrOMGedWoaU6VUubge+ChFLL5sSKH+XqVFEc5L3ct9gu3NqgVw9oZ
	r+kPOQ/TuZ1/4io6z7cDXGtcZ5WT6CImSVD6aBuvoNOcWhx0x1BRFsZa3KaUyH8qsK7F1zuD2llp2
	hs+0EcDK5t71x+MXvA1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6IPy-0005wS-Ne; Mon, 24 Feb 2020 18:25:22 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6IPA-0005S3-4v
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 18:24:33 +0000
Received: by mail-wm1-x344.google.com with SMTP id c84so335895wme.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 10:24:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kbHJ4C4uglc6rYdZYTlW3Ff7m1UL228yD2k/lvDMteQ=;
 b=BxwepHpIFjHRcQQpVZG+EplOFBe3rPSTVBngLVdFteqRT2sLkmijWsDNxP3gXAef7v
 A9Ki3xgUFAgIDFoku0kKMZVVruyvYqZ8P8ImelWV3mtAtcAJTUGNA/kEnXYxrutWTloe
 fmjk12xB0K+ir7axe3XxEzuiqhFr0/u9/5K9kFOyGIdcu5bt5VVq83gQymC8zsmkJCrv
 voT9EkmQHwO+gN+4rzvID2aVflV2VnNv2bi6U866Sm6W2RilOTdNfOLgBgPttVSwqcS3
 OsiGL9oPhNzw8EjsxCP7KMoEV62b+oEAsAdB6DLym25mnnvzgc/nSHXSofYo+yTjBwRE
 C0Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kbHJ4C4uglc6rYdZYTlW3Ff7m1UL228yD2k/lvDMteQ=;
 b=o6gV6AxX/admk/Z/l9dtJde7eMP8gqM/418OCDsWSpfA5z7L5MSlgrozHpQKo/8so4
 ssXrL3TyRjywZaWtqgEoAKmg4rB78qETzN5x2+/DW6lZ9bO3k7k9IgIYAbFUwyWJgMmY
 yBYFJvCMHe+eTodE9dL4JUJ8iLZsHPWRWTdlsG+8ncp1CPesgTZFBDr8mxvm9n8cfUNQ
 gqPIcGt7eUpq+6lZhPcuyQbLoD68Vk3mrKsW1u6dYeAkmNIOWki+/LmgAYAGlLpRk2Fr
 v2VjffV/X6tfXdmlmyYT71DqTCm7l2et7O5TWRbo7AFiujfCQCWJgITBi/7Yw1d041sT
 2gXA==
X-Gm-Message-State: APjAAAXJlzG3zXfXA4E2GVgP1x3BNBBNQJFyXa8KAcUSB/mE4il13tQ1
 /kuV7K4dxZs2UJeZA8qtwgNoKw==
X-Google-Smtp-Source: APXvYqxeEVL2FgAN9u8VRKK0cl4gGMwWc0V5xlt1mC7IWnfDQ/iqcXGTBT4xHtfN+pJg9F8k5m70JQ==
X-Received: by 2002:a1c:7919:: with SMTP id l25mr284798wme.135.1582568670689; 
 Mon, 24 Feb 2020 10:24:30 -0800 (PST)
Received: from localhost.localdomain
 ([2001:171b:c9a8:fbc0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id n3sm304255wmc.27.2020.02.24.10.24.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Feb 2020 10:24:30 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-mm@kvack.org
Subject: [PATCH v4 01/26] mm/mmu_notifiers: pass private data down to
 alloc_notifier()
Date: Mon, 24 Feb 2020 19:23:36 +0100
Message-Id: <20200224182401.353359-2-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200224182401.353359-1-jean-philippe@linaro.org>
References: <20200224182401.353359-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_102432_185463_BCAAC554 
X-CRM114-Status: GOOD (  17.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, kevin.tian@intel.com, jacob.jun.pan@linux.intel.com,
 Dimitri Sivanich <sivanich@sgi.com>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, catalin.marinas@arm.com,
 joro@8bytes.org, robin.murphy@arm.com, Jason Gunthorpe <jgg@ziepe.ca>,
 robh+dt@kernel.org, yi.l.liu@intel.com, Jonathan.Cameron@huawei.com,
 zhangfei.gao@linaro.org, Andrew Morton <akpm@linux-foundation.org>,
 will@kernel.org, christian.koenig@amd.com, baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The new allocation scheme introduced by 2c7933f53f6b ("mm/mmu_notifiers:
add a get/put scheme for the registration") provides a convenient way
for users to attach notifier data to an mm. However, it would be even
better to create this notifier data atomically.

Since the alloc_notifier() callback only takes an mm argument at the
moment, some users have to perform the allocation in two times.
alloc_notifier() initially creates an incomplete structure, which is
then finalized using more context once mmu_notifier_get() returns. This
second step requires carrying an initialization lock in the notifier
data and playing dirty tricks to order memory accesses against live
invalidation.

To simplify MMU notifier allocation, pass an allocation context to
mmu_notifier_get().

Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Dimitri Sivanich <sivanich@sgi.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Jason Gunthorpe <jgg@ziepe.ca>
Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/misc/sgi-gru/grutlbpurge.c |  4 ++--
 include/linux/mmu_notifier.h       | 10 ++++++----
 mm/mmu_notifier.c                  |  6 ++++--
 3 files changed, 12 insertions(+), 8 deletions(-)

diff --git a/drivers/misc/sgi-gru/grutlbpurge.c b/drivers/misc/sgi-gru/grutlbpurge.c
index 10921cd2608d..77610e1704f6 100644
--- a/drivers/misc/sgi-gru/grutlbpurge.c
+++ b/drivers/misc/sgi-gru/grutlbpurge.c
@@ -235,7 +235,7 @@ static void gru_invalidate_range_end(struct mmu_notifier *mn,
 		gms, range->start, range->end);
 }
 
-static struct mmu_notifier *gru_alloc_notifier(struct mm_struct *mm)
+static struct mmu_notifier *gru_alloc_notifier(struct mm_struct *mm, void *privdata)
 {
 	struct gru_mm_struct *gms;
 
@@ -266,7 +266,7 @@ struct gru_mm_struct *gru_register_mmu_notifier(void)
 {
 	struct mmu_notifier *mn;
 
-	mn = mmu_notifier_get_locked(&gru_mmuops, current->mm);
+	mn = mmu_notifier_get_locked(&gru_mmuops, current->mm, NULL);
 	if (IS_ERR(mn))
 		return ERR_CAST(mn);
 
diff --git a/include/linux/mmu_notifier.h b/include/linux/mmu_notifier.h
index 736f6918335e..06e68fa2b019 100644
--- a/include/linux/mmu_notifier.h
+++ b/include/linux/mmu_notifier.h
@@ -207,7 +207,7 @@ struct mmu_notifier_ops {
 	 * callbacks are currently running. It is called from a SRCU callback
 	 * and cannot sleep.
 	 */
-	struct mmu_notifier *(*alloc_notifier)(struct mm_struct *mm);
+	struct mmu_notifier *(*alloc_notifier)(struct mm_struct *mm, void *privdata);
 	void (*free_notifier)(struct mmu_notifier *subscription);
 };
 
@@ -271,14 +271,16 @@ static inline int mm_has_notifiers(struct mm_struct *mm)
 }
 
 struct mmu_notifier *mmu_notifier_get_locked(const struct mmu_notifier_ops *ops,
-					     struct mm_struct *mm);
+					     struct mm_struct *mm,
+					     void *privdata);
 static inline struct mmu_notifier *
-mmu_notifier_get(const struct mmu_notifier_ops *ops, struct mm_struct *mm)
+mmu_notifier_get(const struct mmu_notifier_ops *ops, struct mm_struct *mm,
+		 void *privdata)
 {
 	struct mmu_notifier *ret;
 
 	down_write(&mm->mmap_sem);
-	ret = mmu_notifier_get_locked(ops, mm);
+	ret = mmu_notifier_get_locked(ops, mm, privdata);
 	up_write(&mm->mmap_sem);
 	return ret;
 }
diff --git a/mm/mmu_notifier.c b/mm/mmu_notifier.c
index ef3973a5d34a..8beb9dcbe0fd 100644
--- a/mm/mmu_notifier.c
+++ b/mm/mmu_notifier.c
@@ -734,6 +734,7 @@ find_get_mmu_notifier(struct mm_struct *mm, const struct mmu_notifier_ops *ops)
  *                           the mm & ops
  * @ops: The operations struct being subscribe with
  * @mm : The mm to attach notifiers too
+ * @privdata: Initialization data passed down to ops->alloc_notifier()
  *
  * This function either allocates a new mmu_notifier via
  * ops->alloc_notifier(), or returns an already existing notifier on the
@@ -747,7 +748,8 @@ find_get_mmu_notifier(struct mm_struct *mm, const struct mmu_notifier_ops *ops)
  * and can be converted to an active mm pointer via mmget_not_zero().
  */
 struct mmu_notifier *mmu_notifier_get_locked(const struct mmu_notifier_ops *ops,
-					     struct mm_struct *mm)
+					     struct mm_struct *mm,
+					     void *privdata)
 {
 	struct mmu_notifier *subscription;
 	int ret;
@@ -760,7 +762,7 @@ struct mmu_notifier *mmu_notifier_get_locked(const struct mmu_notifier_ops *ops,
 			return subscription;
 	}
 
-	subscription = ops->alloc_notifier(mm);
+	subscription = ops->alloc_notifier(mm, privdata);
 	if (IS_ERR(subscription))
 		return subscription;
 	subscription->ops = ops;
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
