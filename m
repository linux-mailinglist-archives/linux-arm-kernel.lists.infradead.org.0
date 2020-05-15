Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26B771D57DB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 19:29:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MNzSOir9NxluuuKIfZC3xXe1ksSUCpqX2bQt3SWLshk=; b=AHm6Ugtmhf2CUR
	5jSNGJJrjf4XMsUjAGEO07KYAcKiraXzC0/LS2jvRdscc0ACmoaI0az00zqmNZ/x2t7oA3hlcneg0
	svPv+WR36pZNRA7QlUySIcMUaWTsibDC8M//5MmJ/lazssOF59jzAzS8RVLe3/aoiy2msZ4FExm4l
	u1wic23phQAc6r5B2e94r9fqvxBAwvylFGxJx5Lbcgatx0Y9/XnBuk1JJsnvZh/zh1XsG4tMpttIK
	pGHqNf+5f+qOVE1MQAZ8xkwgcU7ezDTsb+wuFUmxUYxXG+zK1uIhy3b1HwLyqgw0mhBS1oDa1j6Gh
	XsTlHbBb/ldLZvHTxDpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZe8m-0000b6-OT; Fri, 15 May 2020 17:28:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZe83-00007Y-9H
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 17:28:12 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 299A7207D5;
 Fri, 15 May 2020 17:28:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589563691;
 bh=kv5mnSWLjr5fBV4nQ8+dYNhj0aVw4GQo+4yHT59GbLg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=1GUhQpkPHCiFNiBceCCvlyDAK8CSvD8Ee+z6+TNY03ORfuvnrDGahbWBzDJLE3SJI
 ElQ3TdQYN1ZeTFygNbIjUgfTcHBTFWqs9GgNc3Xi1IjtfF9UcOsf1SScwVaQb6xTNM
 F2nfBQBOOuvL2DpUBLY371Ls/BS28+5ZPiat51oU=
From: Will Deacon <will@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 2/6] scs: Move accounting into alloc/free functions
Date: Fri, 15 May 2020 18:27:52 +0100
Message-Id: <20200515172756.27185-3-will@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200515172756.27185-1-will@kernel.org>
References: <20200515172756.27185-1-will@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_102811_341282_12769641 
X-CRM114-Status: GOOD (  14.09  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: kernel-team@android.com, Kees Cook <keescook@chromium.org>,
 Jann Horn <jannh@google.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Mark Rutland <mark.rutland@am.com>,
 Sami Tolvanen <samitolvanen@google.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There's no need to perform the shadow stack page accounting independently
of the lifetime of the underlying allocation, so call the accounting code
from the {alloc,free}() functions and simplify the code in the process.

Signed-off-by: Will Deacon <will@kernel.org>
---
 kernel/scs.c | 45 +++++++++++++++++++++------------------------
 1 file changed, 21 insertions(+), 24 deletions(-)

diff --git a/kernel/scs.c b/kernel/scs.c
index 5ff8663e4a67..aea841cd7586 100644
--- a/kernel/scs.c
+++ b/kernel/scs.c
@@ -14,25 +14,35 @@
 
 static struct kmem_cache *scs_cache;
 
+static void __scs_account(void *s, int account)
+{
+	struct page *scs_page = virt_to_page(s);
+
+	mod_zone_page_state(page_zone(scs_page), NR_KERNEL_SCS_KB,
+			    account * (SCS_SIZE / SZ_1K));
+}
+
 static void *scs_alloc(int node)
 {
-	void *s;
-
-	s = kmem_cache_alloc_node(scs_cache, GFP_SCS, node);
-	if (s) {
-		*__scs_magic(s) = SCS_END_MAGIC;
-		/*
-		 * Poison the allocation to catch unintentional accesses to
-		 * the shadow stack when KASAN is enabled.
-		 */
-		kasan_poison_object_data(scs_cache, s);
-	}
+	void *s = kmem_cache_alloc_node(scs_cache, GFP_SCS, node);
+
+	if (!s)
+		return NULL;
 
+	*__scs_magic(s) = SCS_END_MAGIC;
+
+	/*
+	 * Poison the allocation to catch unintentional accesses to
+	 * the shadow stack when KASAN is enabled.
+	 */
+	kasan_poison_object_data(scs_cache, s);
+	__scs_account(s, 1);
 	return s;
 }
 
 static void scs_free(void *s)
 {
+	__scs_account(s, -1);
 	kasan_unpoison_object_data(scs_cache, s);
 	kmem_cache_free(scs_cache, s);
 }
@@ -42,17 +52,6 @@ void __init scs_init(void)
 	scs_cache = kmem_cache_create("scs_cache", SCS_SIZE, 0, 0, NULL);
 }
 
-static struct page *__scs_page(struct task_struct *tsk)
-{
-	return virt_to_page(task_scs(tsk));
-}
-
-static void scs_account(struct task_struct *tsk, int account)
-{
-	mod_zone_page_state(page_zone(__scs_page(tsk)), NR_KERNEL_SCS_KB,
-		account * (SCS_SIZE / 1024));
-}
-
 int scs_prepare(struct task_struct *tsk, int node)
 {
 	void *s = scs_alloc(node);
@@ -61,7 +60,6 @@ int scs_prepare(struct task_struct *tsk, int node)
 		return -ENOMEM;
 
 	task_scs(tsk) = task_scs_sp(tsk) = s;
-	scs_account(tsk, 1);
 	return 0;
 }
 
@@ -102,6 +100,5 @@ void scs_release(struct task_struct *tsk)
 
 	WARN(scs_corrupted(tsk), "corrupted shadow stack detected when freeing task\n");
 	scs_check_usage(tsk);
-	scs_account(tsk, -1);
 	scs_free(s);
 }
-- 
2.26.2.761.g0e0b3e54be-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
