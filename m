Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F38A2E8D6C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 17:59:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Ex8Hlkv/X5EiB2TqTRMjN+1QXw2dx1Vem/QjtWHYksc=; b=h6GnS44u0UuLcA7p7JR589RM+K
	0EWDrmQlRj27R4R+z/p3vmMmeyoQJ8MvgPB40I1Fk2hcS7pXLDDoWApng7vganUsdiKDmzDtSpSlO
	ga93tNObgVvJ5YwpRESmngwZ5WWlhzcGNMkLmt6OvOWGDNKMV5Akk3BuyXhYdXmVWYwmxWJ2LBiWZ
	zapXZ7ehWE2BTMt5LVJnb/0IvXpGYlanUV2z4BicOMqR63u+WhlHgWvgaUmG/ATepxh6u3kfgOLLI
	dF0h11wIZlFJfzRRaZ46USKeXkcCPim5Z/b/yNJW5TJayt8suStvO2uhHZ3nOsHM4VxxZbwIG7l2R
	jEp1RNYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPUq0-0005R8-7I; Tue, 29 Oct 2019 16:59:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPUpU-0005BK-71
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 16:58:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1F44C337;
 Tue, 29 Oct 2019 09:58:45 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id C11D13F71F;
 Tue, 29 Oct 2019 09:58:42 -0700 (PDT)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org, Steven Rostedt <rostedt@goodmis.org>
Subject: [PATCHv2 1/8] ftrace: add ftrace_init_nop()
Date: Tue, 29 Oct 2019 16:58:25 +0000
Message-Id: <20191029165832.33606-2-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20191029165832.33606-1-mark.rutland@arm.com>
References: <20191029165832.33606-1-mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_095848_392496_319E0549 
X-CRM114-Status: GOOD (  19.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, jthierry@redhat.com, linux-parisc@vger.kernel.org,
 peterz@infradead.org, catalin.marinas@arm.com, deller@gmx.de,
 jpoimboe@redhat.com, linux-kernel@vger.kernel.org,
 James.Bottomley@HansenPartnership.com, takahiro.akashi@linaro.org,
 will@kernel.org, mingo@redhat.com, james.morse@arm.com, jeyu@kernel.org,
 amit.kachhap@arm.com, svens@stackframe.org, duwe@suse.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Architectures may need to perform special initialization of ftrace
callsites, and today they do so by special-casing ftrace_make_nop() when
the expected branch address is MCOUNT_ADDR. In some cases (e.g. for
patchable-function-entry), we don't have an mcount-like symbol and don't
want a synthetic MCOUNT_ADDR, but we may need to perform some
initialization of callsites.

To make it possible to separate initialization from runtime
modification, and to handle cases without an mcount-like symbol, this
patch adds an optional ftrace_init_nop() function that architectures can
implement, which does not pass a branch address.

Where an architecture does not provide ftrace_init_nop(), we will fall
back to the existing behaviour of calling ftrace_make_nop() with
MCOUNT_ADDR.

At the same time, ftrace_code_disable() is renamed to
ftrace_nop_initialize() to make it clearer that it is intended to
intialize a callsite into a disabled state, and is not for disabling a
callsite that has been runtime enabled. The kerneldoc description of rec
arguments is updated to cover non-mcount callsites.

Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Reviewed-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Steven Rostedt <rostedt@goodmis.org>
Cc: Torsten Duwe <duwe@suse.de>
---
 include/linux/ftrace.h | 35 ++++++++++++++++++++++++++++++++---
 kernel/trace/ftrace.c  |  6 +++---
 2 files changed, 35 insertions(+), 6 deletions(-)

diff --git a/include/linux/ftrace.h b/include/linux/ftrace.h
index 8a8cb3c401b2..9867d90d635e 100644
--- a/include/linux/ftrace.h
+++ b/include/linux/ftrace.h
@@ -499,7 +499,7 @@ static inline int ftrace_disable_ftrace_graph_caller(void) { return 0; }
 /**
  * ftrace_make_nop - convert code into nop
  * @mod: module structure if called by module load initialization
- * @rec: the mcount call site record
+ * @rec: the call site record (e.g. mcount/fentry)
  * @addr: the address that the call site should be calling
  *
  * This is a very sensitive operation and great care needs
@@ -520,9 +520,38 @@ static inline int ftrace_disable_ftrace_graph_caller(void) { return 0; }
 extern int ftrace_make_nop(struct module *mod,
 			   struct dyn_ftrace *rec, unsigned long addr);
 
+
+/**
+ * ftrace_init_nop - initialize a nop call site
+ * @mod: module structure if called by module load initialization
+ * @rec: the call site record (e.g. mcount/fentry)
+ *
+ * This is a very sensitive operation and great care needs
+ * to be taken by the arch.  The operation should carefully
+ * read the location, check to see if what is read is indeed
+ * what we expect it to be, and then on success of the compare,
+ * it should write to the location.
+ *
+ * The code segment at @rec->ip should contain the contents created by
+ * the compiler
+ *
+ * Return must be:
+ *  0 on success
+ *  -EFAULT on error reading the location
+ *  -EINVAL on a failed compare of the contents
+ *  -EPERM  on error writing to the location
+ * Any other value will be considered a failure.
+ */
+#ifndef ftrace_init_nop
+static inline int ftrace_init_nop(struct module *mod, struct dyn_ftrace *rec)
+{
+	return ftrace_make_nop(mod, rec, MCOUNT_ADDR);
+}
+#endif
+
 /**
  * ftrace_make_call - convert a nop call site into a call to addr
- * @rec: the mcount call site record
+ * @rec: the call site record (e.g. mcount/fentry)
  * @addr: the address that the call site should call
  *
  * This is a very sensitive operation and great care needs
@@ -545,7 +574,7 @@ extern int ftrace_make_call(struct dyn_ftrace *rec, unsigned long addr);
 #ifdef CONFIG_DYNAMIC_FTRACE_WITH_REGS
 /**
  * ftrace_modify_call - convert from one addr to another (no nop)
- * @rec: the mcount call site record
+ * @rec: the call site record (e.g. mcount/fentry)
  * @old_addr: the address expected to be currently called to
  * @addr: the address to change to
  *
diff --git a/kernel/trace/ftrace.c b/kernel/trace/ftrace.c
index f296d89be757..5259d4dea675 100644
--- a/kernel/trace/ftrace.c
+++ b/kernel/trace/ftrace.c
@@ -2494,14 +2494,14 @@ struct dyn_ftrace *ftrace_rec_iter_record(struct ftrace_rec_iter *iter)
 }
 
 static int
-ftrace_code_disable(struct module *mod, struct dyn_ftrace *rec)
+ftrace_nop_initialize(struct module *mod, struct dyn_ftrace *rec)
 {
 	int ret;
 
 	if (unlikely(ftrace_disabled))
 		return 0;
 
-	ret = ftrace_make_nop(mod, rec, MCOUNT_ADDR);
+	ret = ftrace_init_nop(mod, rec);
 	if (ret) {
 		ftrace_bug_type = FTRACE_BUG_INIT;
 		ftrace_bug(ret, rec);
@@ -2943,7 +2943,7 @@ static int ftrace_update_code(struct module *mod, struct ftrace_page *new_pgs)
 			 * to the NOP instructions.
 			 */
 			if (!__is_defined(CC_USING_NOP_MCOUNT) &&
-			    !ftrace_code_disable(mod, p))
+			    !ftrace_nop_initialize(mod, p))
 				break;
 
 			update_cnt++;
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
