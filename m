Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 052D66B809
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 10:19:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=IJtXYMZ9mZJw4rdNFez4WVSuHvIHhd5wBmuXqEcvAfA=; b=BZRNP3QN8Q0ZzBcJL1JHhAQ9md
	rgn5ObTDjEpnt7ozXX5JJQHgE1cA1rNgCbTvN/x8wnlq3rost5DZAwYxAlL+yvRvI6koE+nFNTNyz
	RFJi2YETntjLdMBJ5Kc7bk+ZNRBZSGC6oeRhVcT1v0lnS2idMJXiVDcRaP6zrrIPwSUyv9J6XKHjV
	YASDIQyN69Evp8jXsEC9CW/fmRkvzp62cVZtp6J2TI9Q8Kxa9JN32GxsHRdwag6l23UGoJPT6RcEL
	4OveGuUTFDBmAk2mWvzjwxUWTr7kDgpWAiWUaYbCji+NOxcE25UW8dXCFtzqY8X5J1oK3leCTEVIy
	iO284uyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnf9y-00054k-7k; Wed, 17 Jul 2019 08:19:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hnf7y-0003Om-AV
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 08:17:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B7EE81529;
 Wed, 17 Jul 2019 01:17:29 -0700 (PDT)
Received: from e112298-lin.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 066733F71A;
 Wed, 17 Jul 2019 01:19:27 -0700 (PDT)
From: Julien Thierry <julien.thierry@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 6/9] arm64: perf: Do not call irq_work_run in NMI context
Date: Wed, 17 Jul 2019 09:17:09 +0100
Message-Id: <1563351432-55652-7-git-send-email-julien.thierry@arm.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1563351432-55652-1-git-send-email-julien.thierry@arm.com>
References: <1563351432-55652-1-git-send-email-julien.thierry@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_011730_484899_AF103B6C 
X-CRM114-Status: GOOD (  10.11  )
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
Cc: mark.rutland@arm.com, Julien Thierry <julien.thierry@arm.com>,
 peterz@infradead.org, jolsa@redhat.com, will.deacon@arm.com, acme@kernel.org,
 alexander.shishkin@linux.intel.com, mingo@redhat.com,
 Catalin Marinas <catalin.marinas@arm.com>, namhyung@kernel.org,
 sthotton@marvell.com, liwei391@huawei.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Function irq_work_run is not NMI safe and should not be called from NMI
context.

When PMU interrupt is an NMI do not call irq_work_run. Instead rely on the
IRQ work IPI to run the irq_work queue once NMI/IRQ contexts have been
exited.

Signed-off-by: Julien Thierry <julien.thierry@arm.com>
Cc: Will Deacon <will.deacon@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Arnaldo Carvalho de Melo <acme@kernel.org>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Jiri Olsa <jolsa@redhat.com>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>
---
 arch/arm64/kernel/perf_event.c | 14 +++++---------
 1 file changed, 5 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
index 0e2cf5d..9c959ad 100644
--- a/arch/arm64/kernel/perf_event.c
+++ b/arch/arm64/kernel/perf_event.c
@@ -776,20 +776,16 @@ static irqreturn_t armv8pmu_handle_irq(struct arm_pmu *cpu_pmu)
 		if (!armpmu_event_set_period(event))
 			continue;
 
+		/*
+		 * Perf event overflow will queue the processing of the event as
+		 * an irq_work which will be taken care of in the handling of
+		 * IPI_IRQ_WORK.
+		 */
 		if (perf_event_overflow(event, &data, regs))
 			cpu_pmu->disable(event);
 	}
 	armv8pmu_start(cpu_pmu);
 
-	/*
-	 * Handle the pending perf events.
-	 *
-	 * Note: this call *must* be run with interrupts disabled. For
-	 * platforms that can have the PMU interrupts raised as an NMI, this
-	 * will not work.
-	 */
-	irq_work_run();
-
 	return IRQ_HANDLED;
 }
 
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
