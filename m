Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2EE6173ED5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 18:49:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wtWOZv6WidShV1Skoc8K/MOrKqfI9segj84EM8+QiTg=; b=gL+spLCvv92ADj
	2RfJSEywn4eCp7reLTVN9K+4TKotbj7qskWPUg2CPJFxLywrh/z1fo+HtLfjolxVYAOcvgpv0solZ
	Jn/GpQAHtm6wQYqP6owfH5IU/iCXoShL2XXkdsAvrGSy31/ouJAgBUEYgHyLYuXydBjFtdIzXJ5y3
	vilUtHop/oiPAfoIUaVDVv1omBZSSXmaAqbV+kRSAPCA6a9IGJ0UA6shHWFBqKYrfZAXSIDbehqxZ
	m5UpT9w1jtlDTFJEYC5BKiyP16v6PQ6uBm2DB31qnGxtdlODBXQe6vVupDtGhfvezTg222w0im43Y
	bb/btuum+4L0h2rZbeCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7jky-0007bM-Bn; Fri, 28 Feb 2020 17:49:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7jkT-0007RO-F4
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 17:48:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E3DA8FEC;
 Fri, 28 Feb 2020 09:48:28 -0800 (PST)
Received: from eglon.cambridge.arm.com (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 10AD13F7B4;
 Fri, 28 Feb 2020 09:48:26 -0800 (PST)
From: James Morse <james.morse@arm.com>
To: linux-mm@kvack.org, linux-acpi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/3] mm/memory-failure: Add memory_failure_queue_kick()
Date: Fri, 28 Feb 2020 17:48:15 +0000
Message-Id: <20200228174817.74278-2-james.morse@arm.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200228174817.74278-1-james.morse@arm.com>
References: <20200228174817.74278-1-james.morse@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_094829_543291_02AB659A 
X-CRM114-Status: GOOD (  13.63  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Tony Luck <tony.luck@intel.com>,
 Xie XiuQi <xiexiuqi@huawei.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Rafael Wysocki <rjw@rjwysocki.net>, Tyler Baicar <tyler@amperecomputing.com>,
 Borislav Petkov <bp@alien8.de>, James Morse <james.morse@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 Naoya Horiguchi <n-horiguchi@ah.jp.nec.com>, Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The GHES code calls memory_failure_queue() from IRQ context to schedule
work on the current CPU so that memory_failure() can sleep.

For synchronous memory errors the arch code needs to know any signals
that memory_failure() will trigger are pending before it returns to
user-space, possibly when exiting from the IRQ.

Add a helper to kick the memory failure queue, to ensure the scheduled
work has happened. This has to be called from process context, so may
have been migrated from the original cpu. Pass the cpu the work was
queued on.

Change memory_failure_work_func() to permit being called on the 'wrong'
cpu.

Signed-off-by: James Morse <james.morse@arm.com>
---
 include/linux/mm.h  |  1 +
 mm/memory-failure.c | 15 ++++++++++++++-
 2 files changed, 15 insertions(+), 1 deletion(-)

diff --git a/include/linux/mm.h b/include/linux/mm.h
index 52269e56c514..389460de3ee6 100644
--- a/include/linux/mm.h
+++ b/include/linux/mm.h
@@ -2806,6 +2806,7 @@ enum mf_flags {
 };
 extern int memory_failure(unsigned long pfn, int flags);
 extern void memory_failure_queue(unsigned long pfn, int flags);
+extern void memory_failure_queue_kick(int cpu);
 extern int unpoison_memory(unsigned long pfn);
 extern int get_hwpoison_page(struct page *page);
 #define put_hwpoison_page(page)	put_page(page)
diff --git a/mm/memory-failure.c b/mm/memory-failure.c
index 41c634f45d45..afdf1fd5ef9c 100644
--- a/mm/memory-failure.c
+++ b/mm/memory-failure.c
@@ -1468,7 +1468,7 @@ static void memory_failure_work_func(struct work_struct *work)
 	unsigned long proc_flags;
 	int gotten;
 
-	mf_cpu = this_cpu_ptr(&memory_failure_cpu);
+	mf_cpu = container_of(work, struct memory_failure_cpu, work);
 	for (;;) {
 		spin_lock_irqsave(&mf_cpu->lock, proc_flags);
 		gotten = kfifo_get(&mf_cpu->fifo, &entry);
@@ -1482,6 +1482,19 @@ static void memory_failure_work_func(struct work_struct *work)
 	}
 }
 
+/*
+ * Process memory_failure work queued on the specified CPU.
+ * Used to avoid return-to-userspace racing with the memory_failure workqueue.
+ */
+void memory_failure_queue_kick(int cpu)
+{
+	struct memory_failure_cpu *mf_cpu;
+
+	mf_cpu = &per_cpu(memory_failure_cpu, cpu);
+	cancel_work_sync(&mf_cpu->work);
+	memory_failure_work_func(&mf_cpu->work);
+}
+
 static int __init memory_failure_init(void)
 {
 	struct memory_failure_cpu *mf_cpu;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
