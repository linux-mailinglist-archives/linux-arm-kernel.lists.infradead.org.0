Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFF1BF4CD9
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 14:12:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dJZRAMLXT6yWoShUFbKkPltNupOTtOpQz2/a0qgNmTM=; b=Skt1hUTkZTbeoe
	Oc805Yb6/0FZnAqAAM1hGtY91zFxl2oKUZVVqIyEag4Kqkg6MS2SvaYROs24toJ1D3VtnsLEPZjVJ
	r+s3IjsOTBKTAa5j7XkQENRa6eHjfJfRNrjDxUzkPz7mfRO8eQXgmwGYaQ5HmlM8TAoSKRGGRtxaq
	EnrXhXbEF4D8Th/ADPJMyToEEQHn1XVPmlY+kMGtA/YAGVJ4T2yXhX6zZJ2N4i4J1Zv8z382oxlua
	d75EOjTNQFqBAYAcjngTa/YeLAwTFsb2i7rZmTkRes88SyMP6GaVS98J35F3pXw8DBu41uXSGAUR3
	nqEH3V+QplRPgsHcGXMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT44D-0007QU-FD; Fri, 08 Nov 2019 13:12:45 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT3u1-0004mN-5t
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 13:02:16 +0000
Received: by mail-lj1-x242.google.com with SMTP id v8so6133197ljh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 Nov 2019 05:02:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sKXWGKE2hJnX3KS13PAL5ShHJjGXx4HK2hpojfTk/KY=;
 b=Wd8jlhlrNoR8vSP62k5UaqWRiK+nvDs5ICXuM6pcJ1syXOE5Uy6SdSPnRaqleX/18p
 xnht3FCO06C6nQXwtjVdIjwIQ3VWoJ2FnTK0saZ2Cq2J6kEz5BOGnM/0MkJq9oJZc2CJ
 syO7hxAtxdvkTZ4UCegVO6iXF14ExTffno5PM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sKXWGKE2hJnX3KS13PAL5ShHJjGXx4HK2hpojfTk/KY=;
 b=JfA9JyCvfIwBjwjxEAyAq+dEYVeDik5OUssvYLb1uOpHWU8yVfWddXVRki//LqLbOl
 AiZMs9+pLqQDnbRdHilV9MdSg8Z3xlv2hUjsggaL4Y3QuJh9MXG91SRQy0KfMnIUb4ay
 MRcRj8vpCXhOCrRS4tg1JjGE7JZsv8/aCXM8EPt1CoJPvNMhWkcYyckw4xbL0hl7j1A5
 pBLZWWS6gx+usDivU0Zf/I/t+h0fEawwByHjmv0rDcgKVqWoKbxak1zqlaMo3gc/hPb9
 Adx8prytkgwa8OZKkFroMWnKjP6FBRZjfWzO6mHBcHUQet4lVpckIX1L0BEjtmGiuuZI
 j3fg==
X-Gm-Message-State: APjAAAXY7pa4nbcVNXTptnlhqzONLbvMM452xDnwIAZisIB7PLgv/TGk
 MxeNcJxnqup2dZEFhHCJHvjSfA==
X-Google-Smtp-Source: APXvYqzQt94JN6S91SYODDE7DWrTPiopp9NX09dPKGBykjy6EmJomIkdbCDQ1O1wLfaGhH99Gg0u2A==
X-Received: by 2002:a05:651c:209:: with SMTP id
 y9mr6416091ljn.65.1573218131200; 
 Fri, 08 Nov 2019 05:02:11 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id d28sm2454725lfn.33.2019.11.08.05.02.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Nov 2019 05:02:10 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v4 34/47] soc: fsl: qe: change return type of
 cpm_muram_alloc() to s32
Date: Fri,  8 Nov 2019 14:01:10 +0100
Message-Id: <20191108130123.6839-35-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
References: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_050213_349714_ECAF32C6 
X-CRM114-Status: GOOD (  16.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Scott Wood <oss@buserror.net>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
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
index 83e85e61669f..50be59678903 100644
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
+	long start;
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
