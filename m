Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34F3B10044A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 12:35:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NsPigixsH9Ky5T1xLzxlKE9PNRjkasgHOH5GvvfrfHU=; b=sLqWNe/7H5eqc3
	HtQ17q4FXqsKkgHhr9ps/qDnLESWzC3avZ3kZoRgwf2xbwCQYuOy6G+4kR9ER6UtIhORcGbko89gR
	qwvY2AZ87Z2Ozrma3gLbDGpUxjNbFbBTnHuj7u+18unThKFZMM5wjzEQTM20wtFV+vssuSt7iHpnm
	au4hvyMeiOHXcckBUXfDqNsmZWJvCZG+v3h4ueLfT9Wx+zYjeo4WitLyGc+30L/YqPCTzH7AFT7a8
	ZrNJVovauRVPIt3tLzNlnt4U3cM6OEwsiMahjlPv8xnYW5+vdRv9jvowBGS9Om/B3br/9oarc4Zcm
	PxFPnfw+1tsaoxxKAQVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWfJi-0005Zh-Eq; Mon, 18 Nov 2019 11:35:38 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWf8l-0001Wn-2q
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 11:24:21 +0000
Received: by mail-wr1-x441.google.com with SMTP id l7so18974941wrp.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 03:24:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XFGZmHkb+1b0kA/dgNv2SqlCMzz2YyoMovWg0BJ2kb4=;
 b=bwA5hR1s7BCv92y+47Z4EAIxhhe/4O5Rk9wvzDjl7moxcYrzXM19z+x5pp4IkgCC6c
 NvIxf/mnhpICh+Y7JjN5Gj7yI1nTVcQ/+EUaMMfK4a0+CIsyl1eQGeD5dA6cbfP4O1IS
 miE4btfybwW6sRR723lSDwp/GAcPDZWqIkCa4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XFGZmHkb+1b0kA/dgNv2SqlCMzz2YyoMovWg0BJ2kb4=;
 b=r9F0TzD/M2A+JU1D6mmr6BwA7sinD7F7IKdvRI6GtKuJg0XAcRG1KQIPgR+dzOvAkk
 4zCioVVa2Ac6Wnt7q9BpID9G46ggvYnRY7yluinymxy1fVLW2iXzCXXAQUM8ow4/37Vi
 rhNf6EILx0Hwbmoil2BF7WIQiDN+rogppBcz4GpmWpM5iSw7ThEBLDOw6liSVpAFsnIh
 kp2VuK9sLBW4hOcguG1mcNSUJgH62AXJy67k/IO0FUUqHa6qDll/Zw/c0F7ndS3PTvuN
 340jde7ewSq/35XwILtSf0IpulHADDfQzshrsfShIj0DyamimqPFi40lQ6Wai+1xAnFW
 hLUw==
X-Gm-Message-State: APjAAAU+kVoo4oo7cLsJsZ9qbZhsldyHlOx1WrvRslvjS0voENtmALwR
 V4qaHpOEqEpq5QYRVI1F9xb8bMXY7Woj9w==
X-Google-Smtp-Source: APXvYqxjzfNIKsWTLmb3bVSisVqW3D/qfZZVrWkw1pImlK4mnBQkxnLwGPi9GjXGoifFxHKGiYdJxA==
X-Received: by 2002:a5d:490c:: with SMTP id x12mr16430603wrq.301.1574076257628; 
 Mon, 18 Nov 2019 03:24:17 -0800 (PST)
Received: from prevas-ravi.prevas.se (ip-5-186-115-54.cgn.fibianet.dk.
 [5.186.115.54])
 by smtp.gmail.com with ESMTPSA id y2sm21140815wmy.2.2019.11.18.03.24.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 03:24:17 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v5 35/48] soc: fsl: qe: change return type of
 cpm_muram_alloc() to s32
Date: Mon, 18 Nov 2019 12:23:11 +0100
Message-Id: <20191118112324.22725-36-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191118112324.22725-1-linux@rasmusvillemoes.dk>
References: <20191118112324.22725-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_032419_171581_2BF4BC45 
X-CRM114-Status: GOOD (  17.02  )
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [5.186.115.54 listed in zen.spamhaus.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Timur Tabi <timur@kernel.org>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linux-kernel@vger.kernel.org, Scott Wood <oss@buserror.net>,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

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

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/soc/fsl/qe/qe_common.c | 29 ++++++++++++++++-------------
 include/soc/fsl/qe/qe.h        | 16 ++++++++--------
 2 files changed, 24 insertions(+), 21 deletions(-)

diff --git a/drivers/soc/fsl/qe/qe_common.c b/drivers/soc/fsl/qe/qe_common.c
index 83e85e61669f..84c90105e588 100644
--- a/drivers/soc/fsl/qe/qe_common.c
+++ b/drivers/soc/fsl/qe/qe_common.c
@@ -32,7 +32,7 @@ static phys_addr_t muram_pbase;
 
 struct muram_block {
 	struct list_head head;
-	unsigned long start;
+	s32 start;
 	int size;
 };
 
@@ -110,13 +110,14 @@ int cpm_muram_init(void)
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
@@ -137,7 +138,7 @@ static unsigned long cpm_muram_alloc_common(unsigned long size,
 out1:
 	gen_pool_free(muram_pool, start, size);
 out2:
-	return (unsigned long)-ENOMEM;
+	return -ENOMEM;
 }
 
 /*
@@ -145,13 +146,14 @@ static unsigned long cpm_muram_alloc_common(unsigned long size,
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
 
@@ -168,7 +170,7 @@ EXPORT_SYMBOL(cpm_muram_alloc);
  * cpm_muram_free - free a chunk of multi-user ram
  * @offset: The beginning of the chunk as returned by cpm_muram_alloc().
  */
-int cpm_muram_free(unsigned long offset)
+int cpm_muram_free(s32 offset)
 {
 	unsigned long flags;
 	int size;
@@ -194,13 +196,14 @@ EXPORT_SYMBOL(cpm_muram_free);
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
index 521fa3a177e0..f589ae3f1216 100644
--- a/include/soc/fsl/qe/qe.h
+++ b/include/soc/fsl/qe/qe.h
@@ -98,26 +98,26 @@ static inline void qe_reset(void) {}
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
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
