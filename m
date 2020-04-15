Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 976461A9367
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 08:41:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LrqB2QNmsT7Y3hIdlQddmym8j2napAEtleOTC06dtYk=; b=QLC9j+y4QLIBHve8bH3XRtBc78
	bdPw40EtzHTRyug1vqjyevwKcYE/GX6J05DWznMazSD2FAHuxtUwcNfXwH0qFsRHHAHLD4UT7cvoW
	nifduOMbnFnpHau8zw9Hx3zNbXiX6iHQrsUIAwfSODbaFtZXxfzgn8f8W+FGJ6ZLcKDd3Mxk8XRHm
	R+nvUQZTO0zwSkU+Ss7hU7cFez6MpplNC/94X5QAU/9Dut+wGIZ01BxteYf7S3Xm40RSM5lOdBe5N
	qiqa3hRHYXODaAM/4t+HvkNnd4dM0vGwRVaLtvccgWgAnL4xgzK/oMEEhNqpNXIJT4Rc2ZkEkLaMf
	q81S7RkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jObjQ-0000eA-1G; Wed, 15 Apr 2020 06:41:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jObiq-0000R2-Ll
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 06:40:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1FC971042;
 Tue, 14 Apr 2020 23:40:31 -0700 (PDT)
Received: from p8cg001049571a15.arm.com (unknown [10.163.1.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 14A233F73D;
 Tue, 14 Apr 2020 23:44:37 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-mm@kvack.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/2] arm64/hotplug: Process MEM_OFFLINE and MEM_CANCEL_OFFLINE
Date: Wed, 15 Apr 2020 12:09:44 +0530
Message-Id: <1586932784-16315-3-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1586932784-16315-1-git-send-email-anshuman.khandual@arm.com>
References: <1586932784-16315-1-git-send-email-anshuman.khandual@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_234032_829000_ED87D5CB 
X-CRM114-Status: GOOD (  14.54  )
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
Cc: mark.rutland@arm.com, will@kernel.com, Steve Capper <steve.capper@arm.com>,
 catalin.marinas@arm.com, Anshuman Khandual <anshuman.khandual@arm.com>,
 David Hildenbrand <david@redhat.com>, linux-kernel@vger.kernel.org,
 Hsin-Yi Wang <hsinyi@chromium.org>, akpm@linux-foundation.org,
 Thomas Gleixner <tglx@linutronix.de>, Yu Zhao <yuzhao@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Process MEM_OFFLINE and MEM_CANCEL_OFFLINE memory events to intercept any
possible error conditions during memory offline operation. This includes if
boot memory still got offlined even after an expilicit notifier failure or
if non-boot memory got declined for an offline request. This help improve
memory notifier robustness while also enhancing debug capabilities during
various potential memory offlining error conditions.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.com>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Steve Capper <steve.capper@arm.com>
Cc: David Hildenbrand <david@redhat.com>
Cc: Yu Zhao <yuzhao@google.com>
Cc: Hsin-Yi Wang <hsinyi@chromium.org>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-mm@kvack.org
Cc: linux-kernel@vger.kernel.org
Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
---
 arch/arm64/mm/mmu.c | 52 ++++++++++++++++++++++++++++++++++++++++-----
 1 file changed, 47 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
index a374e4f51a62..48c71d8a29b2 100644
--- a/arch/arm64/mm/mmu.c
+++ b/arch/arm64/mm/mmu.c
@@ -1422,13 +1422,55 @@ static int prevent_bootmem_remove_notifier(struct notifier_block *nb,
 	unsigned long end_pfn = arg->start_pfn + arg->nr_pages;
 	unsigned long pfn = arg->start_pfn;
 
-	if (action != MEM_GOING_OFFLINE)
+	if ((action != MEM_GOING_OFFLINE) && (action != MEM_OFFLINE) &&
+		(action != MEM_CANCEL_OFFLINE))
 		return NOTIFY_OK;
 
-	for (; pfn < end_pfn; pfn += PAGES_PER_SECTION) {
-		ms = __pfn_to_section(pfn);
-		if (early_section(ms))
-			return NOTIFY_BAD;
+	if (action == MEM_GOING_OFFLINE) {
+		for (; pfn < end_pfn; pfn += PAGES_PER_SECTION) {
+			ms = __pfn_to_section(pfn);
+			if (early_section(ms)) {
+				pr_warn("Boot memory offlining attempted\n");
+				return NOTIFY_BAD;
+			}
+		}
+	} else if (action == MEM_OFFLINE) {
+		for (; pfn < end_pfn; pfn += PAGES_PER_SECTION) {
+			ms = __pfn_to_section(pfn);
+			if (early_section(ms)) {
+
+				/*
+				 * This should have never happened. Boot memory
+				 * offlining should have been prevented by this
+				 * very notifier. Probably some memory removal
+				 * procedure might have changed which would then
+				 * require further debug.
+				 */
+				pr_err("Boot memory offlined\n");
+				return NOTIFY_BAD;
+			}
+		}
+	} else if (action == MEM_CANCEL_OFFLINE) {
+		enum offline_failure_reason reason = *(int *)arg->data;
+
+		if (reason != OFFLINE_FAILURE_NOTIFIER)
+			return NOTIFY_OK;
+
+		for (; pfn < end_pfn; pfn += PAGES_PER_SECTION) {
+			ms = __pfn_to_section(pfn);
+			if (early_section(ms))
+				return NOTIFY_OK;
+		}
+
+		/*
+		 * This should have never happened. Non boot memory
+		 * offlining should never have been prevented from
+		 * this notifier. Probably some memory hot removal
+		 * procedure might have changed which would then
+		 * require further debug.
+		 */
+		pr_err("Notifier declined non boot memory offlining\n");
+		return NOTIFY_BAD;
 	}
 	return NOTIFY_OK;
 }
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
