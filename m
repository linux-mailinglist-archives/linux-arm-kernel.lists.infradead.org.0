Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D5711C1AC8
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 18:46:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QFowGvZna6DZoqcTB8vx0nOXcMt5T+dynJCDzNnIgao=; b=OKxKma523eA8jC
	1Up6FJnGCCzy+u4yFrIi47B3hTsSKa3axCiCpOMdLB7csg/JrddTkBi8SXJL5GJX4THPMwI3xoBTj
	6/VfTqD+wQhMONjmQuWWVnzyL7mk/NVAGj36CLqDilB6odPpR9NjLKN5swbipZN4/NYpsyQ1qvsou
	53JxQLu05QjgatTfAaoI9+BWd3c5YMoz3N14gzZ6zvGQUMzRQjSXG4I8ZfCPmoGmcJibQdkyHrkl5
	bdoc0cNzAm6HiruvnbEVcdS2eFPg4phv2lOXZ2SzIXC3B06I8h24lM2vKFiOuy9FgxFuanJ91r4Qu
	bAFk1SMkxKpGEkjhAdpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUYoM-0003nn-3M; Fri, 01 May 2020 16:46:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUYnf-0003L0-KM
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 16:46:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 94BF1101E;
 Fri,  1 May 2020 09:46:06 -0700 (PDT)
Received: from melchizedek.cambridge.arm.com (melchizedek.cambridge.arm.com
 [10.1.196.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B58813F305;
 Fri,  1 May 2020 09:46:04 -0700 (PDT)
From: James Morse <james.morse@arm.com>
To: linux-mm@kvack.org, linux-acpi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Naoya Horiguchi <n-horiguchi@ah.jp.nec.com>
Subject: [PATCH v2 3/3] arm64: acpi: Make apei_claim_sea() synchronise with
 APEI's irq work
Date: Fri,  1 May 2020 17:45:43 +0100
Message-Id: <20200501164543.24423-4-james.morse@arm.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20200501164543.24423-1-james.morse@arm.com>
References: <20200501164543.24423-1-james.morse@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_094607_789038_AAFAD592 
X-CRM114-Status: GOOD (  17.07  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, Tony Luck <tony.luck@intel.com>,
 Xie XiuQi <xiexiuqi@huawei.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Rafael Wysocki <rjw@rjwysocki.net>, Tyler Baicar <tyler@amperecomputing.com>,
 Borislav Petkov <bp@alien8.de>, James Morse <james.morse@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

APEI is unable to do all of its error handling work in nmi-context, so
it defers non-fatal work onto the irq_work queue. arch_irq_work_raise()
sends an IPI to the calling cpu, but this is not guaranteed to be taken
before returning to user-space.

Unless the exception interrupted a context with irqs-masked,
irq_work_run() can run immediately. Otherwise return -EINPROGRESS to
indicate ghes_notify_sea() found some work to do, but it hasn't
finished yet.

With this apei_claim_sea() returning '0' means this external-abort was
also notification of a firmware-first RAS error, and that APEI has
processed the CPER records.

Signed-off-by: James Morse <james.morse@arm.com>
Tested-by: Tyler Baicar <baicar@os.amperecomputing.com>
Acked-by: Catalin Marinas <catalin.marinas@arm.com>
---
 arch/arm64/kernel/acpi.c | 25 +++++++++++++++++++++++++
 arch/arm64/mm/fault.c    | 12 +++++++-----
 2 files changed, 32 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/kernel/acpi.c b/arch/arm64/kernel/acpi.c
index a100483b47c4..46ec402e97ed 100644
--- a/arch/arm64/kernel/acpi.c
+++ b/arch/arm64/kernel/acpi.c
@@ -19,6 +19,7 @@
 #include <linux/init.h>
 #include <linux/irq.h>
 #include <linux/irqdomain.h>
+#include <linux/irq_work.h>
 #include <linux/memblock.h>
 #include <linux/of_fdt.h>
 #include <linux/smp.h>
@@ -269,6 +270,7 @@ pgprot_t __acpi_get_mem_attribute(phys_addr_t addr)
 int apei_claim_sea(struct pt_regs *regs)
 {
 	int err = -ENOENT;
+	bool return_to_irqs_enabled;
 	unsigned long current_flags;
 
 	if (!IS_ENABLED(CONFIG_ACPI_APEI_GHES))
@@ -276,6 +278,12 @@ int apei_claim_sea(struct pt_regs *regs)
 
 	current_flags = local_daif_save_flags();
 
+	/* current_flags isn't useful here as daif doesn't tell us about pNMI */
+	return_to_irqs_enabled = !irqs_disabled_flags(arch_local_save_flags());
+
+	if (regs)
+		return_to_irqs_enabled = interrupts_enabled(regs);
+
 	/*
 	 * SEA can interrupt SError, mask it and describe this as an NMI so
 	 * that APEI defers the handling.
@@ -284,6 +292,23 @@ int apei_claim_sea(struct pt_regs *regs)
 	nmi_enter();
 	err = ghes_notify_sea();
 	nmi_exit();
+
+	/*
+	 * APEI NMI-like notifications are deferred to irq_work. Unless
+	 * we interrupted irqs-masked code, we can do that now.
+	 */
+	if (!err) {
+		if (return_to_irqs_enabled) {
+			local_daif_restore(DAIF_PROCCTX_NOIRQ);
+			__irq_enter();
+			irq_work_run();
+			__irq_exit();
+		} else {
+			pr_warn_ratelimited("APEI work queued but not completed");
+			err = -EINPROGRESS;
+		}
+	}
+
 	local_daif_restore(current_flags);
 
 	return err;
diff --git a/arch/arm64/mm/fault.c b/arch/arm64/mm/fault.c
index c9cedc0432d2..dff2d72b0883 100644
--- a/arch/arm64/mm/fault.c
+++ b/arch/arm64/mm/fault.c
@@ -635,11 +635,13 @@ static int do_sea(unsigned long addr, unsigned int esr, struct pt_regs *regs)
 
 	inf = esr_to_fault_info(esr);
 
-	/*
-	 * Return value ignored as we rely on signal merging.
-	 * Future patches will make this more robust.
-	 */
-	apei_claim_sea(regs);
+	if (user_mode(regs) && apei_claim_sea(regs) == 0) {
+		/*
+		 * APEI claimed this as a firmware-first notification.
+		 * Some processing deferred to task_work before ret_to_user().
+		 */
+		return 0;
+	}
 
 	if (esr & ESR_ELx_FnV)
 		siaddr = NULL;
-- 
2.26.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
