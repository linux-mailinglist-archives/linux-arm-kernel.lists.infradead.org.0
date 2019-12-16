Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ED6612004F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 09:53:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vKRgAmVo7DJ0SW6TeQjuh0+A9aK35bt/5ChQ6jja+tw=; b=Wewhz8o1X63LIpspA0kP6n5hVb
	ys57nRnZWxcy7/gDApGayhzjQzJGOIUYGI+e+U4JFYUV4ySySIZaki9gkDBQnxlW+oxnxTu/jwj92
	OC9k1ndph2Z3wVyF3K0+EMyrXk38Gb2/3TAdfUNfGB8te7fONF5uYR7KEx3+2sMtJSqEC56CPTUo+
	YT7CCYn+auEaYLv0FqsXwq4QVSx5RcyZfFdGGnPxx6xJTUNxmxxjzmUvSXzgAdwKkZ+RrlOA541Yv
	8G8Kp18IRRng/DE+RROwAwyAcBIyyYYDsxNDV1YkcneXfBqBeevsCP5UWM4RfJWy79HPDr9csbdN+
	+RhkZyGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igm87-0001qT-KP; Mon, 16 Dec 2019 08:53:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igm3d-00059S-3q
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 08:48:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E27BF1045;
 Mon, 16 Dec 2019 00:48:47 -0800 (PST)
Received: from a075553-lin.blr.arm.com (a075553-lin.blr.arm.com [10.162.0.144])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 2E2C23F6CF;
 Mon, 16 Dec 2019 00:51:58 -0800 (PST)
From: Amit Daniel Kachhap <amit.kachhap@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 16/16] lkdtm: arm64: test kernel pointer authentication
Date: Mon, 16 Dec 2019 14:17:18 +0530
Message-Id: <1576486038-9899-17-git-send-email-amit.kachhap@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1576486038-9899-1-git-send-email-amit.kachhap@arm.com>
References: <1576486038-9899-1-git-send-email-amit.kachhap@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_004849_271162_DBF549D7 
X-CRM114-Status: GOOD (  15.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Richard Henderson <richard.henderson@linaro.org>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>, Mark Brown <Mark.Brown@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>
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
Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
---
Changes since last version:
* The pointer authentication error is now caused by changing the
  kernel keys as suggested by Ard.
* Richard [1] suggested to iterate till a new pac value is generated
  but variables required to compute the pac cannot be acquired
  in a generic way so this test just retries crashing for some time and
  then stops.

[1]: http://lists.infradead.org/pipermail/linux-arm-kernel/2019-November/696084.html

 drivers/misc/lkdtm/bugs.c  | 36 ++++++++++++++++++++++++++++++++++++
 drivers/misc/lkdtm/core.c  |  1 +
 drivers/misc/lkdtm/lkdtm.h |  1 +
 3 files changed, 38 insertions(+)

diff --git a/drivers/misc/lkdtm/bugs.c b/drivers/misc/lkdtm/bugs.c
index a4fdad0..b9ef583 100644
--- a/drivers/misc/lkdtm/bugs.c
+++ b/drivers/misc/lkdtm/bugs.c
@@ -376,3 +376,39 @@ void lkdtm_DOUBLE_FAULT(void)
 	panic("tried to double fault but didn't die\n");
 }
 #endif
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
