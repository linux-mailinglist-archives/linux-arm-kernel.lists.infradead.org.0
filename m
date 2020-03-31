Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1B6C199A13
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 17:45:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:From:
	Message-Id:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=WFZNGetBnmobbnL4ISp1hPFCTO6z9llqJnndCWi21js=; b=AkK
	Et1mYMScdvj1L2ZepLbJ4BOOt/j0eyM5qt0yh1xp0pSmcWpFRybZ4Wbrb8rU0JowxfxfCNbtfhPWp
	mSmDYGmNyIEAlpaMQHL/V6RZj+HGKt1JXjKGjl7OPBZ+T1xZZN209tnD1fAaiPVE3FSYeJPC0jX72
	IBBlGSe6j0gQx0x6nnN62FZPyNzp+F2OgZbZUWIXaHS13qwussGtJ9gf5zZ+igJxzdcJux9VJdlnv
	mZL5i3ghCrbrj4X6LrlsFI9Xi0nG1Wnq+k8in49g2v7dnzVxvmmeJj19jf3AzrqYh9zikIvrDK+hz
	BzBLXYQP7ICcfy/fUooJ0WClpV1/3cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJ53-00049S-Ef; Tue, 31 Mar 2020 15:45:33 +0000
Received: from mx.sdf.org ([205.166.94.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJ3r-000103-HY
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 15:44:26 +0000
Received: from sdf.org (IDENT:lkml@sdf.lonestar.org [205.166.94.16])
 by mx.sdf.org (8.15.2/8.14.5) with ESMTPS id 02VFiCPn012439
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits) verified NO);
 Tue, 31 Mar 2020 15:44:12 GMT
Received: (from lkml@localhost)
 by sdf.org (8.15.2/8.12.8/Submit) id 02VFiClP011630;
 Tue, 31 Mar 2020 15:44:12 GMT
Date: Tue, 31 Mar 2020 15:44:12 GMT
Message-Id: <202003311544.02VFiClP011630@sdf.org>
From: George Spelvin <lkml@sdf.org>
Subject: [PATCH v2] arm64: ptr auth: Use get_random_u64 instead of _bytes
To: Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_084419_631275_4656D4BB 
X-CRM114-Status: UNSURE (   7.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.166.94.20 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 linux-arm-kernel@lists.infradead.org, George Spelvin <lkml@sdf.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

get_random_bytes() is approximately 4x the cost of two
get_random_u64() calls, because the former implements
anti-backtracking.

Because these are authentication keys, useless to an attacker
as soon as the kernel stops using them, there is no security
benefit from anti-backtracking.

Signed-off-by: George Spelvin <lkml@sdf.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: linux-arm-kernel@lists.infradead.org
---
v2: Took out all the clever bitmap-based stuff and made a simple
    boring helper function to replace get_random_bytes(&key, 16).

 arch/arm64/include/asm/pointer_auth.h | 16 +++++++++++-----
 arch/arm64/kernel/pointer_auth.c      | 10 +++++-----
 2 files changed, 16 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/include/asm/pointer_auth.h b/arch/arm64/include/asm/pointer_auth.h
index 7a24bad1a58b8..1a4590d05785e 100644
--- a/arch/arm64/include/asm/pointer_auth.h
+++ b/arch/arm64/include/asm/pointer_auth.h
@@ -30,17 +30,23 @@ struct ptrauth_keys {
 	struct ptrauth_key apga;
 };
 
+static inline void __ptrauth_key_init(struct ptrauth_key *key)
+{
+	key->lo = get_random_u64();
+	key->hi = get_random_u64();
+}
+
 static inline void ptrauth_keys_init(struct ptrauth_keys *keys)
 {
 	if (system_supports_address_auth()) {
-		get_random_bytes(&keys->apia, sizeof(keys->apia));
-		get_random_bytes(&keys->apib, sizeof(keys->apib));
-		get_random_bytes(&keys->apda, sizeof(keys->apda));
-		get_random_bytes(&keys->apdb, sizeof(keys->apdb));
+		__ptrauth_key_init(&keys->apia);
+		__ptrauth_key_init(&keys->apib);
+		__ptrauth_key_init(&keys->apda);
+		__ptrauth_key_init(&keys->apdb);
 	}
 
 	if (system_supports_generic_auth())
-		get_random_bytes(&keys->apga, sizeof(keys->apga));
+		__ptrauth_key_init(&keys->apga);
 }
 
 #define __ptrauth_key_install(k, v)				\
diff --git a/arch/arm64/kernel/pointer_auth.c b/arch/arm64/kernel/pointer_auth.c
index c507b584259d0..05e2e3d174010 100644
--- a/arch/arm64/kernel/pointer_auth.c
+++ b/arch/arm64/kernel/pointer_auth.c
@@ -31,15 +31,15 @@ int ptrauth_prctl_reset_keys(struct task_struct *tsk, unsigned long arg)
 		return -EINVAL;
 
 	if (arg & PR_PAC_APIAKEY)
-		get_random_bytes(&keys->apia, sizeof(keys->apia));
+		__ptrauth_key_init(&keys->apia);
 	if (arg & PR_PAC_APIBKEY)
-		get_random_bytes(&keys->apib, sizeof(keys->apib));
+		__ptrauth_key_init(&keys->apib);
 	if (arg & PR_PAC_APDAKEY)
-		get_random_bytes(&keys->apda, sizeof(keys->apda));
+		__ptrauth_key_init(&keys->apda);
 	if (arg & PR_PAC_APDBKEY)
-		get_random_bytes(&keys->apdb, sizeof(keys->apdb));
+		__ptrauth_key_init(&keys->apdb);
 	if (arg & PR_PAC_APGAKEY)
-		get_random_bytes(&keys->apga, sizeof(keys->apga));
+		__ptrauth_key_init(&keys->apga);
 
 	ptrauth_keys_switch(keys);
 
-- 
2.26.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
