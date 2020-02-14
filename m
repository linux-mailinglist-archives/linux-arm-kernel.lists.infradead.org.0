Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67B4A15E749
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 17:53:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SQ4wSTyRpAelkO87c5P8IP7Hv/qBFre/Wivsf46CYaY=; b=p6gJDpLcUApdUW
	FsJBP0c7g/ZP3xkhEX9sJ134uIDau5/g6dB/Ld3SVKvu7K0SPruD1r4qfhlJDaRCXkfjEJlPX+pi1
	jXmHeZdbkKXs4XcXgy6G7G7B7eRqnq6XLaXnczQVuEYnO9jdnsdXP+w0Il3914l0rkAm/00zSq5ue
	P4/gIQPfhcwjRhhwqts4IFxdkeQvvG/ys7cJpgeb0YJHt1rwcDEY2AUl3HZgJ676RqN8OzDqHVRg/
	8pA+1T1oKRJp1fIfmQCG4UdpTLGi6TtG6K+q4tM109462inrGQyqROUZPNpPZnS0hSZeb4NUE9kAf
	AWTRZSEKNEF5j1ml7sJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2eDS-000146-Ub; Fri, 14 Feb 2020 16:53:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2diZ-0005Fh-HM
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 16:21:29 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 98D30246B1;
 Fri, 14 Feb 2020 16:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581697286;
 bh=dFYtIWFy2BER3tZTIWKN+5yoO3kFDbgxCTEuKu9oAsA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=N+7f9YlRhBQgfm29ZeNe/WqRPLN+tvc1WYk7Z9lqBBEBEV8NsJnVDcKhsmOzLj1xB
 Hb8QzQeNbu/3chMyiQgcE9+Izr8v7s87YKD6K8/ocSCqN0fNPAQIi6Y9jGXViz0Dye
 bhzhScuUZgL3yTd4POEi9Y/ZDlLL+pY59IKpRPDM=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.9 003/141] soc: fsl: qe: change return type of
 cpm_muram_alloc() to s32
Date: Fri, 14 Feb 2020 11:19:03 -0500
Message-Id: <20200214162122.19794-3-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214162122.19794-1-sashal@kernel.org>
References: <20200214162122.19794-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_082127_748803_8B84AFE5 
X-CRM114-Status: GOOD (  16.46  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, Timur Tabi <timur@kernel.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, Li Yang <leoyang.li@nxp.com>,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Rasmus Villemoes <linux@rasmusvillemoes.dk>

[ Upstream commit 800cd6fb76f0ec7711deb72a86c924db1ae42648 ]

There are a number of problems with cpm_muram_alloc() and its
callers. Most callers assign the return value to some variable and
then use IS_ERR_VALUE to check for allocation failure. However, when
that variable is not sizeof(long), this leads to warnings - and it is
indeed broken to do e.g.

  u32 foo = cpm_muram_alloc();
  if (IS_ERR_VALUE(foo))

on a 64-bit platform, since the condition

  foo >= (unsigned long)-ENOMEM

is tautologically false. There are also callers that ignore the
possibility of error, and then there are those that check for error by
comparing the return value to 0...

One could fix that by changing all callers to store the return value
temporarily in an "unsigned long" and test that. However, use of
IS_ERR_VALUE() is error-prone and should be restricted to things which
are inherently long-sized (stuff in pt_regs etc.). Instead, let's aim
for changing to the standard kernel style

  int foo = cpm_muram_alloc();
  if (foo < 0)
    deal_with_it()
  some->where = foo;

Changing the return type from unsigned long to s32 (aka signed int)
doesn't change the value that gets stored into any of the callers'
variables except if the caller was storing the result in a u64 _and_
the allocation failed, so in itself this patch should be a no-op.

Another problem with cpm_muram_alloc() is that it can certainly
validly return 0 - and except if some cpm_muram_alloc_fixed() call
interferes, the very first cpm_muram_alloc() call will return just
that. But that shows that both ucc_slow_free() and ucc_fast_free() are
buggy, since they assume that a value of 0 means "that field was never
allocated". We'll later change cpm_muram_free() to accept (and ignore)
a negative offset, so callers can use a sentinel of -1 instead of 0
and just unconditionally call cpm_muram_free().

Reviewed-by: Timur Tabi <timur@kernel.org>
Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Signed-off-by: Li Yang <leoyang.li@nxp.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/soc/fsl/qe/qe_common.c | 29 ++++++++++++++++-------------
 include/soc/fsl/qe/qe.h        | 16 ++++++++--------
 2 files changed, 24 insertions(+), 21 deletions(-)

diff --git a/drivers/soc/fsl/qe/qe_common.c b/drivers/soc/fsl/qe/qe_common.c
index 104e68d9b84f2..4f60724b06b7c 100644
--- a/drivers/soc/fsl/qe/qe_common.c
+++ b/drivers/soc/fsl/qe/qe_common.c
@@ -35,7 +35,7 @@ static phys_addr_t muram_pbase;
 
 struct muram_block {
 	struct list_head head;
-	unsigned long start;
+	s32 start;
 	int size;
 };
 
@@ -113,13 +113,14 @@ int cpm_muram_init(void)
  * @algo: algorithm for alloc.
  * @data: data for genalloc's algorithm.
  *
- * This function returns an offset into the muram area.
+ * This function returns a non-negative offset into the muram area, or
+ * a negative errno on failure.
  */
-static unsigned long cpm_muram_alloc_common(unsigned long size,
-		genpool_algo_t algo, void *data)
+static s32 cpm_muram_alloc_common(unsigned long size,
+				  genpool_algo_t algo, void *data)
 {
 	struct muram_block *entry;
-	unsigned long start;
+	s32 start;
 
 	if (!muram_pool && cpm_muram_init())
 		goto out2;
@@ -140,7 +141,7 @@ static unsigned long cpm_muram_alloc_common(unsigned long size,
 out1:
 	gen_pool_free(muram_pool, start, size);
 out2:
-	return (unsigned long)-ENOMEM;
+	return -ENOMEM;
 }
 
 /*
@@ -148,13 +149,14 @@ static unsigned long cpm_muram_alloc_common(unsigned long size,
  * @size: number of bytes to allocate
  * @align: requested alignment, in bytes
  *
- * This function returns an offset into the muram area.
+ * This function returns a non-negative offset into the muram area, or
+ * a negative errno on failure.
  * Use cpm_dpram_addr() to get the virtual address of the area.
  * Use cpm_muram_free() to free the allocation.
  */
-unsigned long cpm_muram_alloc(unsigned long size, unsigned long align)
+s32 cpm_muram_alloc(unsigned long size, unsigned long align)
 {
-	unsigned long start;
+	s32 start;
 	unsigned long flags;
 	struct genpool_data_align muram_pool_data;
 
@@ -171,7 +173,7 @@ EXPORT_SYMBOL(cpm_muram_alloc);
  * cpm_muram_free - free a chunk of multi-user ram
  * @offset: The beginning of the chunk as returned by cpm_muram_alloc().
  */
-int cpm_muram_free(unsigned long offset)
+int cpm_muram_free(s32 offset)
 {
 	unsigned long flags;
 	int size;
@@ -197,13 +199,14 @@ EXPORT_SYMBOL(cpm_muram_free);
  * cpm_muram_alloc_fixed - reserve a specific region of multi-user ram
  * @offset: offset of allocation start address
  * @size: number of bytes to allocate
- * This function returns an offset into the muram area
+ * This function returns @offset if the area was available, a negative
+ * errno otherwise.
  * Use cpm_dpram_addr() to get the virtual address of the area.
  * Use cpm_muram_free() to free the allocation.
  */
-unsigned long cpm_muram_alloc_fixed(unsigned long offset, unsigned long size)
+s32 cpm_muram_alloc_fixed(unsigned long offset, unsigned long size)
 {
-	unsigned long start;
+	s32 start;
 	unsigned long flags;
 	struct genpool_data_fixed muram_pool_data_fixed;
 
diff --git a/include/soc/fsl/qe/qe.h b/include/soc/fsl/qe/qe.h
index 226f915a68c28..55907f7ace82e 100644
--- a/include/soc/fsl/qe/qe.h
+++ b/include/soc/fsl/qe/qe.h
@@ -102,26 +102,26 @@ static inline void qe_reset(void) {}
 int cpm_muram_init(void);
 
 #if defined(CONFIG_CPM) || defined(CONFIG_QUICC_ENGINE)
-unsigned long cpm_muram_alloc(unsigned long size, unsigned long align);
-int cpm_muram_free(unsigned long offset);
-unsigned long cpm_muram_alloc_fixed(unsigned long offset, unsigned long size);
+s32 cpm_muram_alloc(unsigned long size, unsigned long align);
+int cpm_muram_free(s32 offset);
+s32 cpm_muram_alloc_fixed(unsigned long offset, unsigned long size);
 void __iomem *cpm_muram_addr(unsigned long offset);
 unsigned long cpm_muram_offset(void __iomem *addr);
 dma_addr_t cpm_muram_dma(void __iomem *addr);
 #else
-static inline unsigned long cpm_muram_alloc(unsigned long size,
-					    unsigned long align)
+static inline s32 cpm_muram_alloc(unsigned long size,
+				  unsigned long align)
 {
 	return -ENOSYS;
 }
 
-static inline int cpm_muram_free(unsigned long offset)
+static inline int cpm_muram_free(s32 offset)
 {
 	return -ENOSYS;
 }
 
-static inline unsigned long cpm_muram_alloc_fixed(unsigned long offset,
-						  unsigned long size)
+static inline s32 cpm_muram_alloc_fixed(unsigned long offset,
+					unsigned long size)
 {
 	return -ENOSYS;
 }
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
