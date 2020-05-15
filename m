Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53D261D578D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 19:22:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jZr6DDzowFXcomRTH3r1cRd3owDH81tBq2q9Vb/KbEg=; b=V4Oa6uMQTkN29J
	LTyqRZQXcUWU/pKfR475pQpE8IDapiXUcRqRpzmLZQljivXSRbZCLSlqs7U/l3pfSZIVgP4zI8ZRb
	r+RdYLcxYTjqpf+XrWS+ZrTjQNUjDvUAe2KqMHTyGK01vTC4B/UqNMhLSqo9HBXPtF/47IFTu3zcF
	tPfN26UhBW7Ra4MEK2MXZ5G9/NCldEki/Byn/Y8S2wlb8m7KuqVqhI1qmqDNtTKPWBy/5/tc66rjQ
	GqaeF5eElHp2bYWw+5Ynf5QF4P58PZjJMqwn6T/xoIv1evQDuEX8sXk1JiVa49+V2Qg4J3KF5LOvQ
	LX3nQYsLaGWst/lnvyuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZe2G-0000rE-1r; Fri, 15 May 2020 17:22:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZdx9-00025U-HV
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 17:17:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 67ADB1042;
 Fri, 15 May 2020 10:16:55 -0700 (PDT)
Received: from localhost.localdomain (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id D37A73F305;
 Fri, 15 May 2020 10:16:53 -0700 (PDT)
From: Catalin Marinas <catalin.marinas@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 17/26] arm64: mte: Restore the GCR_EL1 register after a
 suspend
Date: Fri, 15 May 2020 18:16:03 +0100
Message-Id: <20200515171612.1020-18-catalin.marinas@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200515171612.1020-1-catalin.marinas@arm.com>
References: <20200515171612.1020-1-catalin.marinas@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_101655_664495_7B200E2C 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-arch@vger.kernel.org, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Peter Collingbourne <pcc@google.com>,
 linux-mm@kvack.org, Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Will Deacon <will@kernel.org>, Dave P Martin <Dave.Martin@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The CPU resume/suspend routines only take care of the common system
registers. Restore GCR_EL1 in addition via the __cpu_suspend_exit()
function.

Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Reviewed-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
---

Notes:
    New in v3.

 arch/arm64/include/asm/mte.h | 4 ++++
 arch/arm64/kernel/mte.c      | 8 ++++++++
 arch/arm64/kernel/suspend.c  | 4 ++++
 3 files changed, 16 insertions(+)

diff --git a/arch/arm64/include/asm/mte.h b/arch/arm64/include/asm/mte.h
index c79dbffd30c4..7435f6619bf1 100644
--- a/arch/arm64/include/asm/mte.h
+++ b/arch/arm64/include/asm/mte.h
@@ -22,6 +22,7 @@ void mte_sync_tags(pte_t *ptep, pte_t pte);
 void mte_copy_page_tags(void *kto, const void *kfrom);
 void flush_mte_state(void);
 void mte_thread_switch(struct task_struct *next);
+void mte_suspend_exit(void);
 long set_mte_ctrl(unsigned long arg);
 long get_mte_ctrl(void);
 
@@ -42,6 +43,9 @@ static inline void flush_mte_state(void)
 static inline void mte_thread_switch(struct task_struct *next)
 {
 }
+static inline void mte_suspend_exit(void)
+{
+}
 static inline long set_mte_ctrl(unsigned long arg)
 {
 	return 0;
diff --git a/arch/arm64/kernel/mte.c b/arch/arm64/kernel/mte.c
index 999300e2110e..cda09bc8caf4 100644
--- a/arch/arm64/kernel/mte.c
+++ b/arch/arm64/kernel/mte.c
@@ -116,6 +116,14 @@ void mte_thread_switch(struct task_struct *next)
 	update_gcr_el1_excl(next->thread.gcr_incl);
 }
 
+void mte_suspend_exit(void)
+{
+	if (!system_supports_mte())
+		return;
+
+	update_gcr_el1_excl(current->thread.gcr_incl);
+}
+
 long set_mte_ctrl(unsigned long arg)
 {
 	u64 tcf0;
diff --git a/arch/arm64/kernel/suspend.c b/arch/arm64/kernel/suspend.c
index 9405d1b7f4b0..1d405b73d009 100644
--- a/arch/arm64/kernel/suspend.c
+++ b/arch/arm64/kernel/suspend.c
@@ -9,6 +9,7 @@
 #include <asm/daifflags.h>
 #include <asm/debug-monitors.h>
 #include <asm/exec.h>
+#include <asm/mte.h>
 #include <asm/pgtable.h>
 #include <asm/memory.h>
 #include <asm/mmu_context.h>
@@ -74,6 +75,9 @@ void notrace __cpu_suspend_exit(void)
 	 */
 	if (arm64_get_ssbd_state() == ARM64_SSBD_FORCE_DISABLE)
 		arm64_set_ssbd_mitigation(false);
+
+	/* Restore additional MTE-specific configuration */
+	mte_suspend_exit();
 }
 
 /*

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
