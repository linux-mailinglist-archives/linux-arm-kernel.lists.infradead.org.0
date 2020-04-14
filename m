Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 409B91A86CC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 19:05:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=koPZZrtMZ7ouX9M2CJFkcXXCV7y26sPDhyhltq4IiRw=; b=ODLSAV+T/6RKl1
	NSwE+EQFe8Z6/1p6gPofaF8yxE1v4gFQmi0GlSF+PUruSmBscSLFhWOuQZC61hS1fZ0CAzQDFBUzA
	KaTRnsJxbe1RCdCwIjQCYliGLWcSug1OPtGq9KC/1KYcRb9hTX/4uNcQ6REJVWMhqVaI7apzHd2iC
	tZSNToXD6OWgNINIaLb6ODwuu2P3fysHTZKEINEO/iJsd+HKY5YeU4+iFMSj8DoI3oTtFNX/2eCX4
	jI+CYgCpDptoJ03BQPCF4LyrKK+RsSXNMH00jws+HGT85Y29hWcDdU0d3+HOFiStJMIThAHHbAqUF
	qWIXyFkMhacVRF4CS/mQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOOzv-0002PP-VU; Tue, 14 Apr 2020 17:05:19 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOOyy-0001yW-7L
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 17:04:24 +0000
Received: by mail-wm1-x341.google.com with SMTP id o81so8229149wmo.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 10:04:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=b6r9zjaLOb/GY5SoRpnEsPfEzGNaayu9MqJdVBCZ20o=;
 b=iWE+Ha3lwIqVGIoKielsz3b3GDoqi8l3C468or7bgi54G/h1gdEn0dD/YvuAMHgCeJ
 EMqOZbJZx5U5awxLOQAd2pINRO8y8sNmo7jLhIBYvGyt19LoEB9d7iUIzre18QneTMXO
 LqFGxoLmiYcy+EhTcPGD3P50QcwUTSk+obkjlzR6wyD7Cu8axRt34C4qoR19Q4fY/qPu
 6cYohrZxSw/fNyRoRu7miy+Fp0/LP/4nC/zrXgblHo9xmLPZQrrkD5FpmmKK22xAGV8L
 lCjeZ0jBo7yLQuG0hyuY2ROHJ2xc1P/6x6Aq3o5kGd0600JT2eI6K17NmBDNHw+mYaTf
 G5eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=b6r9zjaLOb/GY5SoRpnEsPfEzGNaayu9MqJdVBCZ20o=;
 b=sC80kYC+Xn4fbQ3u5ELnzscjrlSaV56qGax1gPjUesjxxQ1f69hjUqJwnBFspZH4bF
 ols1pYrfU/pPkJI+ufg+Asp46w9OlAKh9bZGntAxTGrRexS3ZvZdHKPPUnPj93bXNXf5
 2/BfhZ+d5CoT/fEzJ8hM5oagUddsru7IakEcru3BZ2gpTPLqiBLRTq9NzJ+3Ts5gCqa6
 81tStr4azJhQGa8YW0RBoOW6Vmcrt6PW6MqSZHvbffHrnLGfylJfmQB+Oml1UbpjTg4S
 /da5nU9nF8zrKx7xv5Uub7OYFORo0EsnTz6d4Rhet1qgB1LepfXDX4yjR3Vd0/4ASoF4
 w5Iw==
X-Gm-Message-State: AGi0PuaPdg9RpoN4A0m1r/bq33YYvp8qYehX6T37PHgcdZvZzGqzCwh5
 fc5dANBykqAO+m08CzOIx1ffiw==
X-Google-Smtp-Source: APiQypLthjr9z+as/UbmGxH1LFQNNhaVrNfKWpaF3zHP/bGjSokMXTPjjI6Xd6SCr4lJr4d8XHGMDw==
X-Received: by 2002:a1c:3281:: with SMTP id y123mr814161wmy.30.1586883858934; 
 Tue, 14 Apr 2020 10:04:18 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:171b:226b:54a0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id x18sm19549147wrs.11.2020.04.14.10.04.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 10:04:18 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-mm@kvack.org
Subject: [PATCH v5 01/25] mm/mmu_notifiers: pass private data down to
 alloc_notifier()
Date: Tue, 14 Apr 2020 19:02:29 +0200
Message-Id: <20200414170252.714402-2-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200414170252.714402-1-jean-philippe@linaro.org>
References: <20200414170252.714402-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_100420_259956_F56CFB40 
X-CRM114-Status: GOOD (  18.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>, kevin.tian@intel.com,
 jacob.jun.pan@linux.intel.com, Andrew Morton <akpm@linux-foundation.org>,
 Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 catalin.marinas@arm.com, joro@8bytes.org, robin.murphy@arm.com,
 Christoph Hellwig <hch@infradead.org>, jgg@ziepe.ca,
 Dimitri Sivanich <sivanich@sgi.com>, Jonathan.Cameron@huawei.com,
 zhangfei.gao@linaro.org, xuzaibo@huawei.com, will@kernel.org,
 christian.koenig@amd.com, baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The new allocation scheme introduced by commit 2c7933f53f6b
("mm/mmu_notifiers: add a get/put scheme for the registration") provides
a convenient way for users to attach notifier data to an mm. However, it
would be even better to create this notifier data atomically.

Since the alloc_notifier() callback only takes an mm argument at the
moment, some users have to perform the allocation in two times.
alloc_notifier() initially creates an incomplete structure, which is
then finalized using more context once mmu_notifier_get() returns. This
second step requires extra care to order memory accesses against live
invalidation.

The IOMMU SVA module, which attaches an mm to multiple devices,
exemplifies this situation. In essence it does:

	mmu_notifier_get()
	  alloc_notifier()
	     A = kzalloc()
	  /* MMU notifier is published */
	A->ctx = ctx;				// (1)
	device->A = A;
	list_add_rcu(device, A->devices);	// (2)

The invalidate notifier, which may start running before A is fully
initialized, does the following:

	io_mm_invalidate(A)
	  list_for_each_entry_rcu(device, A->devices)
	    device->invalidate(A->ctx)

The invalidate() thread must observe the initialization (1) before (2),
which is easily solved by fully initializing object A in
alloc_notifier(), before publishing the MMU notifier.

Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Christoph Hellwig <hch@infradead.org>
Cc: Dimitri Sivanich <sivanich@sgi.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Jason Gunthorpe <jgg@ziepe.ca>
Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
v4->v5: provide example in commit message, fix style.
---
 include/linux/mmu_notifier.h       | 11 +++++++----
 drivers/misc/sgi-gru/grutlbpurge.c |  5 +++--
 mm/mmu_notifier.c                  |  6 ++++--
 3 files changed, 14 insertions(+), 8 deletions(-)

diff --git a/include/linux/mmu_notifier.h b/include/linux/mmu_notifier.h
index 736f6918335ed..0536fe85e7457 100644
--- a/include/linux/mmu_notifier.h
+++ b/include/linux/mmu_notifier.h
@@ -207,7 +207,8 @@ struct mmu_notifier_ops {
 	 * callbacks are currently running. It is called from a SRCU callback
 	 * and cannot sleep.
 	 */
-	struct mmu_notifier *(*alloc_notifier)(struct mm_struct *mm);
+	struct mmu_notifier *(*alloc_notifier)(struct mm_struct *mm,
+					       void *privdata);
 	void (*free_notifier)(struct mmu_notifier *subscription);
 };
 
@@ -271,14 +272,16 @@ static inline int mm_has_notifiers(struct mm_struct *mm)
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
diff --git a/drivers/misc/sgi-gru/grutlbpurge.c b/drivers/misc/sgi-gru/grutlbpurge.c
index 10921cd2608df..336e1b1df072f 100644
--- a/drivers/misc/sgi-gru/grutlbpurge.c
+++ b/drivers/misc/sgi-gru/grutlbpurge.c
@@ -235,7 +235,8 @@ static void gru_invalidate_range_end(struct mmu_notifier *mn,
 		gms, range->start, range->end);
 }
 
-static struct mmu_notifier *gru_alloc_notifier(struct mm_struct *mm)
+static struct mmu_notifier *gru_alloc_notifier(struct mm_struct *mm,
+					       void *privdata)
 {
 	struct gru_mm_struct *gms;
 
@@ -266,7 +267,7 @@ struct gru_mm_struct *gru_register_mmu_notifier(void)
 {
 	struct mmu_notifier *mn;
 
-	mn = mmu_notifier_get_locked(&gru_mmuops, current->mm);
+	mn = mmu_notifier_get_locked(&gru_mmuops, current->mm, NULL);
 	if (IS_ERR(mn))
 		return ERR_CAST(mn);
 
diff --git a/mm/mmu_notifier.c b/mm/mmu_notifier.c
index 06852b896fa63..6b9bfb8ca94d2 100644
--- a/mm/mmu_notifier.c
+++ b/mm/mmu_notifier.c
@@ -743,6 +743,7 @@ find_get_mmu_notifier(struct mm_struct *mm, const struct mmu_notifier_ops *ops)
  *                           the mm & ops
  * @ops: The operations struct being subscribe with
  * @mm : The mm to attach notifiers too
+ * @privdata: Initialization data passed down to ops->alloc_notifier()
  *
  * This function either allocates a new mmu_notifier via
  * ops->alloc_notifier(), or returns an already existing notifier on the
@@ -756,7 +757,8 @@ find_get_mmu_notifier(struct mm_struct *mm, const struct mmu_notifier_ops *ops)
  * and can be converted to an active mm pointer via mmget_not_zero().
  */
 struct mmu_notifier *mmu_notifier_get_locked(const struct mmu_notifier_ops *ops,
-					     struct mm_struct *mm)
+					     struct mm_struct *mm,
+					     void *privdata)
 {
 	struct mmu_notifier *subscription;
 	int ret;
@@ -769,7 +771,7 @@ struct mmu_notifier *mmu_notifier_get_locked(const struct mmu_notifier_ops *ops,
 			return subscription;
 	}
 
-	subscription = ops->alloc_notifier(mm);
+	subscription = ops->alloc_notifier(mm, privdata);
 	if (IS_ERR(subscription))
 		return subscription;
 	subscription->ops = ops;
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
