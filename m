Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D6F71C1AC7
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 18:46:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GFEBWIMseLT53floibi0+JEwPXHMXi2BSmeOc4MzuVY=; b=lgNDUSBsEk3DDS
	Vd9t8pwDsEQDh9IQfBl0gpbGMVxCoxrbIpRlquQFpu3Ei5GNwsNimRae1gnfr1AZ9vkBYaWfK4UnH
	Xcf/+b3dDXyvnVswYa9MWQOLGlGfCsGo9T73FL6Z4+44o3kbNtuYu8Ldv9VAtiCTl4FtkHM0EJyFN
	Jr57UI7JQW4y452D0yyBLIyEBrrSfyH99Dvnkg8SNub7rogfHo06FypBj+WrGYGpiBgAHCiRDowoT
	yTMSsWB8ZQMO3IGU7pBnSnYvic8GTE9F0dsh6EuqAp2gDsXnoTymCHJ+gEP3m2LV7azaI7Rxj3Qmj
	xsURk17w23qEqHPN8QmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUYo4-0003Wc-5p; Fri, 01 May 2020 16:46:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUYnb-0003GB-Vc
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 16:46:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9A1E7C14;
 Fri,  1 May 2020 09:46:03 -0700 (PDT)
Received: from melchizedek.cambridge.arm.com (melchizedek.cambridge.arm.com
 [10.1.196.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B77653F305;
 Fri,  1 May 2020 09:46:01 -0700 (PDT)
From: James Morse <james.morse@arm.com>
To: linux-mm@kvack.org, linux-acpi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Naoya Horiguchi <n-horiguchi@ah.jp.nec.com>
Subject: [PATCH v2 2/3] ACPI / APEI: Kick the memory_failure() queue for
 synchronous errors
Date: Fri,  1 May 2020 17:45:42 +0100
Message-Id: <20200501164543.24423-3-james.morse@arm.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20200501164543.24423-1-james.morse@arm.com>
References: <20200501164543.24423-1-james.morse@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_094604_117218_411D1734 
X-CRM114-Status: GOOD (  21.25  )
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

memory_failure() offlines or repairs pages of memory that have been
discovered to be corrupt. These may be detected by an external
component, (e.g. the memory controller), and notified via an IRQ.
In this case the work is queued as not all of memory_failure()s work
can happen in IRQ context.

If the error was detected as a result of user-space accessing a
corrupt memory location the CPU may take an abort instead. On arm64
this is a 'synchronous external abort', and on a firmware first
system it is replayed using NOTIFY_SEA.

This notification has NMI like properties, (it can interrupt
IRQ-masked code), so the memory_failure() work is queued. If we
return to user-space before the queued memory_failure() work is
processed, we will take the fault again. This loop may cause platform
firmware to exceed some threshold and reboot when Linux could have
recovered from this error.

For NMIlike notifications keep track of whether memory_failure() work
was queued, and make task_work pending to flush out the queue.
To save memory allocations, the task_work is allocated as part of
the ghes_estatus_node, and free()ing it back to the pool is deferred.

Signed-off-by: James Morse <james.morse@arm.com>
Tested-by: Tyler Baicar <baicar@os.amperecomputing.com>

---
current->mm == &init_mm ? I couldn't find a helper for this.
The intent is not to set TIF flags on kernel threads. What happens
if a kernel-thread takes on of these? Its just one of the many
not-handled-very-well cases we have already, as memory_failure()
puts it: "try to be lucky".

I assume that if NOTIFY_NMI is coming from SMM it must suffer from
this problem too.
---
 drivers/acpi/apei/ghes.c | 67 +++++++++++++++++++++++++++++++++-------
 include/acpi/ghes.h      |  3 ++
 2 files changed, 59 insertions(+), 11 deletions(-)

diff --git a/drivers/acpi/apei/ghes.c b/drivers/acpi/apei/ghes.c
index 24c9642e8fc7..5abca09455ad 100644
--- a/drivers/acpi/apei/ghes.c
+++ b/drivers/acpi/apei/ghes.c
@@ -40,6 +40,7 @@
 #include <linux/sched/clock.h>
 #include <linux/uuid.h>
 #include <linux/ras.h>
+#include <linux/task_work.h>
 
 #include <acpi/actbl1.h>
 #include <acpi/ghes.h>
@@ -414,23 +415,46 @@ static void ghes_clear_estatus(struct ghes *ghes,
 		ghes_ack_error(ghes->generic_v2);
 }
 
-static void ghes_handle_memory_failure(struct acpi_hest_generic_data *gdata, int sev)
+/*
+ * Called as task_work before returning to user-space.
+ * Ensure any queued work has been done before we return to the context that
+ * triggered the notification.
+ */
+static void ghes_kick_task_work(struct callback_head *head)
+{
+	struct acpi_hest_generic_status *estatus;
+	struct ghes_estatus_node *estatus_node;
+	u32 node_len;
+
+	estatus_node = container_of(head, struct ghes_estatus_node, task_work);
+	if (IS_ENABLED(CONFIG_ACPI_APEI_MEMORY_FAILURE))
+		memory_failure_queue_kick(estatus_node->task_work_cpu);
+
+	estatus = GHES_ESTATUS_FROM_NODE(estatus_node);
+	node_len = GHES_ESTATUS_NODE_LEN(cper_estatus_len(estatus));
+	gen_pool_free(ghes_estatus_pool, (unsigned long)estatus_node, node_len);
+}
+
+static bool ghes_handle_memory_failure(struct acpi_hest_generic_data *gdata,
+				       int sev)
 {
-#ifdef CONFIG_ACPI_APEI_MEMORY_FAILURE
 	unsigned long pfn;
 	int flags = -1;
 	int sec_sev = ghes_severity(gdata->error_severity);
 	struct cper_sec_mem_err *mem_err = acpi_hest_get_payload(gdata);
 
+	if (!IS_ENABLED(CONFIG_ACPI_APEI_MEMORY_FAILURE))
+		return false;
+
 	if (!(mem_err->validation_bits & CPER_MEM_VALID_PA))
-		return;
+		return false;
 
 	pfn = mem_err->physical_addr >> PAGE_SHIFT;
 	if (!pfn_valid(pfn)) {
 		pr_warn_ratelimited(FW_WARN GHES_PFX
 		"Invalid address in generic error data: %#llx\n",
 		mem_err->physical_addr);
-		return;
+		return false;
 	}
 
 	/* iff following two events can be handled properly by now */
@@ -440,9 +464,12 @@ static void ghes_handle_memory_failure(struct acpi_hest_generic_data *gdata, int
 	if (sev == GHES_SEV_RECOVERABLE && sec_sev == GHES_SEV_RECOVERABLE)
 		flags = 0;
 
-	if (flags != -1)
+	if (flags != -1) {
 		memory_failure_queue(pfn, flags);
-#endif
+		return true;
+	}
+
+	return false;
 }
 
 /*
@@ -490,7 +517,7 @@ static void ghes_handle_aer(struct acpi_hest_generic_data *gdata)
 #endif
 }
 
-static void ghes_do_proc(struct ghes *ghes,
+static bool ghes_do_proc(struct ghes *ghes,
 			 const struct acpi_hest_generic_status *estatus)
 {
 	int sev, sec_sev;
@@ -498,6 +525,7 @@ static void ghes_do_proc(struct ghes *ghes,
 	guid_t *sec_type;
 	const guid_t *fru_id = &guid_null;
 	char *fru_text = "";
+	bool queued = false;
 
 	sev = ghes_severity(estatus->error_severity);
 	apei_estatus_for_each_section(estatus, gdata) {
@@ -515,7 +543,7 @@ static void ghes_do_proc(struct ghes *ghes,
 			ghes_edac_report_mem_error(sev, mem_err);
 
 			arch_apei_report_mem_error(sev, mem_err);
-			ghes_handle_memory_failure(gdata, sev);
+			queued = ghes_handle_memory_failure(gdata, sev);
 		}
 		else if (guid_equal(sec_type, &CPER_SEC_PCIE)) {
 			ghes_handle_aer(gdata);
@@ -532,6 +560,8 @@ static void ghes_do_proc(struct ghes *ghes,
 					       gdata->error_data_length);
 		}
 	}
+
+	return queued;
 }
 
 static void __ghes_print_estatus(const char *pfx,
@@ -827,7 +857,9 @@ static void ghes_proc_in_irq(struct irq_work *irq_work)
 	struct ghes_estatus_node *estatus_node;
 	struct acpi_hest_generic *generic;
 	struct acpi_hest_generic_status *estatus;
+	bool task_work_pending;
 	u32 len, node_len;
+	int ret;
 
 	llnode = llist_del_all(&ghes_estatus_llist);
 	/*
@@ -842,14 +874,26 @@ static void ghes_proc_in_irq(struct irq_work *irq_work)
 		estatus = GHES_ESTATUS_FROM_NODE(estatus_node);
 		len = cper_estatus_len(estatus);
 		node_len = GHES_ESTATUS_NODE_LEN(len);
-		ghes_do_proc(estatus_node->ghes, estatus);
+		task_work_pending = ghes_do_proc(estatus_node->ghes, estatus);
 		if (!ghes_estatus_cached(estatus)) {
 			generic = estatus_node->generic;
 			if (ghes_print_estatus(NULL, generic, estatus))
 				ghes_estatus_cache_add(generic, estatus);
 		}
-		gen_pool_free(ghes_estatus_pool, (unsigned long)estatus_node,
-			      node_len);
+
+		if (task_work_pending && current->mm != &init_mm) {
+			estatus_node->task_work.func = ghes_kick_task_work;
+			estatus_node->task_work_cpu = smp_processor_id();
+			ret = task_work_add(current, &estatus_node->task_work,
+					    true);
+			if (ret)
+				estatus_node->task_work.func = NULL;
+		}
+
+		if (!estatus_node->task_work.func)
+			gen_pool_free(ghes_estatus_pool,
+				      (unsigned long)estatus_node, node_len);
+
 		llnode = next;
 	}
 }
@@ -909,6 +953,7 @@ static int ghes_in_nmi_queue_one_entry(struct ghes *ghes,
 
 	estatus_node->ghes = ghes;
 	estatus_node->generic = ghes->generic;
+	estatus_node->task_work.func = NULL;
 	estatus = GHES_ESTATUS_FROM_NODE(estatus_node);
 
 	if (__ghes_read_estatus(estatus, buf_paddr, fixmap_idx, len)) {
diff --git a/include/acpi/ghes.h b/include/acpi/ghes.h
index e3f1cddb4ac8..517a5231cc1b 100644
--- a/include/acpi/ghes.h
+++ b/include/acpi/ghes.h
@@ -33,6 +33,9 @@ struct ghes_estatus_node {
 	struct llist_node llnode;
 	struct acpi_hest_generic *generic;
 	struct ghes *ghes;
+
+	int task_work_cpu;
+	struct callback_head task_work;
 };
 
 struct ghes_estatus_cache {
-- 
2.26.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
