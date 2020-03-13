Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2A15184356
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 10:11:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GrRGNzEV+9pVMQE5U8QaYPdBImLQVbZSYu+YzQ+0/3w=; b=gpIF5Ip8RfAfsP5SlI0hRMo7jg
	XiA3Tabycor/DdmTI0k8u4SMW9tIVZt7lSDpCfr53RjMJ/4ePd/mW+HC7onF+7w1A+VvToY4LIhUf
	HatQIuD1YSANXnnhgJB5ypK4MOU++/0yeUnxiXtKvZKdequfnjjgfrILia8Kyvho7ZQ7joPE2A8WL
	fn0eqpkaHCa8LCmuLbfgZT326ddr9EtPM3HEvWuiNy7VOuhIoLYv3VaQXr/X7sHScEJ1qZbADqaxu
	QNvIr4jGTOQ7gR/2SptPQwVMBXKztxNeC4ZlzrbMSFVY6J0AgyW+PL8LUTasBODgmUIbAZglwTjsm
	OdogtR5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCgLE-0008Ra-46; Fri, 13 Mar 2020 09:10:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCgH9-00038Y-7q
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 09:06:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7DA4FFEC;
 Fri, 13 Mar 2020 02:06:38 -0700 (PDT)
Received: from a075553-lin.blr.arm.com (a075553-lin.blr.arm.com [10.162.17.32])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id B945F3F67D;
 Fri, 13 Mar 2020 02:06:34 -0700 (PDT)
From: Amit Daniel Kachhap <amit.kachhap@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v7 17/17] lkdtm: arm64: test kernel pointer authentication
Date: Fri, 13 Mar 2020 14:35:04 +0530
Message-Id: <1584090304-18043-18-git-send-email-amit.kachhap@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1584090304-18043-1-git-send-email-amit.kachhap@arm.com>
References: <1584090304-18043-1-git-send-email-amit.kachhap@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_020639_375543_0F407496 
X-CRM114-Status: GOOD (  13.81  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, Mark Brown <broonie@kernel.org>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This test is specific for arm64. When in-kernel Pointer Authentication
config is enabled, the return address stored in the stack is signed.
This feature helps in ROP kind of attack. If any parameters used to
generate the pac (<key, sp, lr>) is modified then this will fail in
the authentication stage and will lead to abort.

This test changes the input parameter APIA kernel keys to cause abort.
The pac computed from the new key can be same as last due to hash
collision so this is retried for few times as there is no reliable way
to compare the pacs. Even though this test may fail even after retries
but this may cause authentication failure at a later stage in earlier
function returns.

This test can be invoked as,
echo CORRUPT_PAC > /sys/kernel/debug/provoke-crash/DIRECT

or as below if inserted as a module,
insmod lkdtm.ko cpoint_name=DIRECT cpoint_type=CORRUPT_PAC cpoint_count=1

[   13.118166] lkdtm: Performing direct entry CORRUPT_PAC
[   13.118298] lkdtm: Clearing PAC from the return address
[   13.118466] Unable to handle kernel paging request at virtual address bfff8000108648ec
[   13.118626] Mem abort info:
[   13.118666]   ESR = 0x86000004
[   13.118866]   EC = 0x21: IABT (current EL), IL = 32 bits
[   13.118966]   SET = 0, FnV = 0
[   13.119117]   EA = 0, S1PTW = 0

Cc: Kees Cook <keescook@chromium.org>
Acked-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
---
 drivers/misc/lkdtm/bugs.c  | 36 ++++++++++++++++++++++++++++++++++++
 drivers/misc/lkdtm/core.c  |  1 +
 drivers/misc/lkdtm/lkdtm.h |  1 +
 3 files changed, 38 insertions(+)

diff --git a/drivers/misc/lkdtm/bugs.c b/drivers/misc/lkdtm/bugs.c
index de87693..cc92bc3 100644
--- a/drivers/misc/lkdtm/bugs.c
+++ b/drivers/misc/lkdtm/bugs.c
@@ -378,3 +378,39 @@ void lkdtm_DOUBLE_FAULT(void)
 	pr_err("XFAIL: this test is ia32-only\n");
 #endif
 }
+
+#ifdef CONFIG_ARM64_PTR_AUTH
+static noinline void change_pac_parameters(void)
+{
+	/* Reset the keys of current task */
+	ptrauth_thread_init_kernel(current);
+	ptrauth_thread_switch_kernel(current);
+}
+
+#define CORRUPT_PAC_ITERATE	10
+noinline void lkdtm_CORRUPT_PAC(void)
+{
+	int i;
+
+	if (!system_supports_address_auth()) {
+		pr_err("FAIL: arm64 pointer authentication feature not present\n");
+		return;
+	}
+
+	pr_info("Change the PAC parameters to force function return failure\n");
+	/*
+	 * Pac is a hash value computed from input keys, return address and
+	 * stack pointer. As pac has fewer bits so there is a chance of
+	 * collision, so iterate few times to reduce the collision probability.
+	 */
+	for (i = 0; i < CORRUPT_PAC_ITERATE; i++)
+		change_pac_parameters();
+
+	pr_err("FAIL: %s test failed. Kernel may be unstable from here\n", __func__);
+}
+#else /* !CONFIG_ARM64_PTR_AUTH */
+noinline void lkdtm_CORRUPT_PAC(void)
+{
+	pr_err("FAIL: arm64 pointer authentication config disabled\n");
+}
+#endif
diff --git a/drivers/misc/lkdtm/core.c b/drivers/misc/lkdtm/core.c
index ee0d6e7..5ce4ac8 100644
--- a/drivers/misc/lkdtm/core.c
+++ b/drivers/misc/lkdtm/core.c
@@ -116,6 +116,7 @@ static const struct crashtype crashtypes[] = {
 	CRASHTYPE(STACK_GUARD_PAGE_LEADING),
 	CRASHTYPE(STACK_GUARD_PAGE_TRAILING),
 	CRASHTYPE(UNSET_SMEP),
+	CRASHTYPE(CORRUPT_PAC),
 	CRASHTYPE(UNALIGNED_LOAD_STORE_WRITE),
 	CRASHTYPE(OVERWRITE_ALLOCATION),
 	CRASHTYPE(WRITE_AFTER_FREE),
diff --git a/drivers/misc/lkdtm/lkdtm.h b/drivers/misc/lkdtm/lkdtm.h
index c56d23e..8d13d01 100644
--- a/drivers/misc/lkdtm/lkdtm.h
+++ b/drivers/misc/lkdtm/lkdtm.h
@@ -31,6 +31,7 @@ void lkdtm_UNSET_SMEP(void);
 #ifdef CONFIG_X86_32
 void lkdtm_DOUBLE_FAULT(void);
 #endif
+void lkdtm_CORRUPT_PAC(void);
 
 /* lkdtm_heap.c */
 void __init lkdtm_heap_init(void);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
