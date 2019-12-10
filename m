Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0A3F196799
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Mar 2020 17:45:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Date:
	From:Message-Id:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=OxFlM/dEyO6h8oho0oyL2snATyieOkKTxDThhE1H5+g=; b=jzP
	cj/gf81Kla1wQjv/WerzYcacbqaD2dGpHk24En0qNN7Qp+/bPWAXZn8MS6vzmBrY4YfkkTNAvQcFz
	rqRCL2psyrpC3CzFDHE8Q/uI3wTig6kxfkR/vzF3Oad+F65rPvLisjiVw72T5mLYrUZN94G6aqm9N
	Hys6I6aV4p07XtlCbDTSKRPTs9ZouX6pVhEjbK0wmMXsZY18u44kDlDY/hrnK+ovseJ/iyKv4sSgJ
	3sm59Z0J9HsraXyI8qWH5kq2KNNQ5UMweikC03MTKFhrnRMslV8LTy+Yf1l1ZJWYgoKUPzLDu+1JH
	DfHA/wntg0ry73FajrqvKcI2VqMQlTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIEaV-00063u-2T; Sat, 28 Mar 2020 16:45:35 +0000
Received: from mx.sdf.org ([205.166.94.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIEaJ-00062d-V8
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Mar 2020 16:45:27 +0000
Received: from sdf.org (IDENT:lkml@sdf.lonestar.org [205.166.94.16])
 by mx.sdf.org (8.15.2/8.14.5) with ESMTPS id 02SGhObs019651
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits) verified NO);
 Sat, 28 Mar 2020 16:43:24 GMT
Received: (from lkml@localhost)
 by sdf.org (8.15.2/8.12.8/Submit) id 02SGhOi3016886;
 Sat, 28 Mar 2020 16:43:24 GMT
Message-Id: <202003281643.02SGhOi3016886@sdf.org>
From: George Spelvin <lkml@sdf.org>
Date: Tue, 10 Dec 2019 07:15:55 -0500
Subject: [RFC PATCH v1 44/50] arm64: ptr auth: Use get_random_u64 instead of
 _bytes
To: linux-kernel@vger.kernel.org, lkml@sdf.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_094526_415969_97B930C6 
X-CRM114-Status: GOOD (  12.29  )
X-Spam-Score: 2.1 (++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.166.94.20 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 2.1 DATE_IN_PAST_96_XX     Date: is 96 hours or more before Received:
 date
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since these are authentication keys, stored in the kernel as long
as they're important, get_random_u64 is fine.  In particular,
get_random_bytes has significant per-call overhead, so five
separate calls is painful.

This ended up being a more extensive change, since the previous
code was unrolled and 10 calls to get_random_u64() seems excessive.
So the code was rearranged to have smaller object size.

Currently fields[i] = { 1 << i, 16 * i } for all i could be computed
rather than looked up, but the table seemed more future-proof.

For ptrauth_keys_switch(), the MSR instructions must be unrolled and
are much faster than get_random, so although a similar flags-based
interface is possible, it's probably not worth it.

Signed-off-by: George Spelvin <lkml@sdf.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org
---
 arch/arm64/include/asm/pointer_auth.h | 20 +++++----
 arch/arm64/kernel/pointer_auth.c      | 62 +++++++++++++++------------
 2 files changed, 46 insertions(+), 36 deletions(-)

diff --git a/arch/arm64/include/asm/pointer_auth.h b/arch/arm64/include/asm/pointer_auth.h
index 7a24bad1a58b8..b7ef71362a3ae 100644
--- a/arch/arm64/include/asm/pointer_auth.h
+++ b/arch/arm64/include/asm/pointer_auth.h
@@ -30,17 +30,19 @@ struct ptrauth_keys {
 	struct ptrauth_key apga;
 };
 
+static inline unsigned long ptrauth_keys_supported(void)
+{
+	return (system_supports_address_auth() ?
+			PR_PAC_APIAKEY | PR_PAC_APIBKEY |
+			PR_PAC_APDAKEY | PR_PAC_APDBKEY : 0) |
+	       (system_supports_generic_auth() ? PR_PAC_APGAKEY : 0);
+}
+
+void ptrauth_keys_generate(struct ptrauth_keys *keys, unsigned long flags);
+
 static inline void ptrauth_keys_init(struct ptrauth_keys *keys)
 {
-	if (system_supports_address_auth()) {
-		get_random_bytes(&keys->apia, sizeof(keys->apia));
-		get_random_bytes(&keys->apib, sizeof(keys->apib));
-		get_random_bytes(&keys->apda, sizeof(keys->apda));
-		get_random_bytes(&keys->apdb, sizeof(keys->apdb));
-	}
-
-	if (system_supports_generic_auth())
-		get_random_bytes(&keys->apga, sizeof(keys->apga));
+	ptrauth_keys_generate(keys, ptrauth_keys_supported());
 }
 
 #define __ptrauth_key_install(k, v)				\
diff --git a/arch/arm64/kernel/pointer_auth.c b/arch/arm64/kernel/pointer_auth.c
index c507b584259d0..1604ed246128c 100644
--- a/arch/arm64/kernel/pointer_auth.c
+++ b/arch/arm64/kernel/pointer_auth.c
@@ -7,40 +7,48 @@
 #include <asm/cpufeature.h>
 #include <asm/pointer_auth.h>
 
+/*
+ * Generating crypto-quality random numbers is expensive enough that
+ * there's no point unrolling this.
+ */
+void ptrauth_keys_generate(struct ptrauth_keys *keys, unsigned long flags)
+{
+	size_t i;
+	static const struct {
+		/*
+		 * 8 bits is enough for now.  Compiler will complain
+		 * if/when we need more.
+		 */
+		unsigned char flag, offset;
+	} fields[] = {
+		{ PR_PAC_APIAKEY, offsetof(struct ptrauth_keys, apia) },
+		{ PR_PAC_APIBKEY, offsetof(struct ptrauth_keys, apib) },
+		{ PR_PAC_APDAKEY, offsetof(struct ptrauth_keys, apda) },
+		{ PR_PAC_APDBKEY, offsetof(struct ptrauth_keys, apdb) },
+		{ PR_PAC_APGAKEY, offsetof(struct ptrauth_keys, apga) }
+	};
+
+	for (i = 0; i < ARRAY_SIZE(fields); i++) {
+		if (flags & fields[i].flag) {
+			struct ptrauth_key *k = (void *)keys + fields[i].offset;
+			k->lo = get_random_u64();
+			k->hi = get_random_u64();
+		}
+	}
+}
+
 int ptrauth_prctl_reset_keys(struct task_struct *tsk, unsigned long arg)
 {
+	unsigned long supported = ptrauth_keys_supported();
 	struct ptrauth_keys *keys = &tsk->thread.keys_user;
-	unsigned long addr_key_mask = PR_PAC_APIAKEY | PR_PAC_APIBKEY |
-				      PR_PAC_APDAKEY | PR_PAC_APDBKEY;
-	unsigned long key_mask = addr_key_mask | PR_PAC_APGAKEY;
 
-	if (!system_supports_address_auth() && !system_supports_generic_auth())
+	if (!supported || arg & ~supported)
 		return -EINVAL;
 
-	if (!arg) {
-		ptrauth_keys_init(keys);
-		ptrauth_keys_switch(keys);
-		return 0;
-	}
-
-	if (arg & ~key_mask)
-		return -EINVAL;
-
-	if (((arg & addr_key_mask) && !system_supports_address_auth()) ||
-	    ((arg & PR_PAC_APGAKEY) && !system_supports_generic_auth()))
-		return -EINVAL;
-
-	if (arg & PR_PAC_APIAKEY)
-		get_random_bytes(&keys->apia, sizeof(keys->apia));
-	if (arg & PR_PAC_APIBKEY)
-		get_random_bytes(&keys->apib, sizeof(keys->apib));
-	if (arg & PR_PAC_APDAKEY)
-		get_random_bytes(&keys->apda, sizeof(keys->apda));
-	if (arg & PR_PAC_APDBKEY)
-		get_random_bytes(&keys->apdb, sizeof(keys->apdb));
-	if (arg & PR_PAC_APGAKEY)
-		get_random_bytes(&keys->apga, sizeof(keys->apga));
+	if (!arg)
+		arg = supported;
 
+	ptrauth_keys_generate(keys, arg);
 	ptrauth_keys_switch(keys);
 
 	return 0;
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
