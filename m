Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 787F51FCCA4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 13:41:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fciWmXAZD6AUUDkyc0HOAvfb9jfV5NVzsLGiIcC2Fps=; b=bxzJF1Zk/wqqh3
	d3xk3lW+pliiT52jnycm26xXOYb3w83pMgPZpQNFL9NR5G84qMlgVk4YGSGns7PRMDpfb2XAxFxGE
	hLm/PB/xmw2Q+1lF3VjNHF94vf6u4SlzHOTIfo62FdRQ20/HyYU9Ns3SjlOOc/t1M8UE2dg1vkGho
	EsGVCJYh0CyMfZpf0FnbB+G/qQ7bfkCa2I9y+yIzQpW76llpqodxhqoi9GoZGYotCHtcf5DAgpdvQ
	1gC+AyOwBE5XnhJ/O9j4+tZMLy+hfiQSDH4MLZXI49RXy5a/G4MGni4ETjGLqz3F5Fkrd752P95Ii
	9OA4NYpUk9wKln26m2vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlWRa-0006Nn-2X; Wed, 17 Jun 2020 11:41:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlWOc-0001Ws-BD
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 11:38:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 371C81045;
 Wed, 17 Jun 2020 04:38:21 -0700 (PDT)
Received: from monolith.arm.com (unknown [10.37.8.7])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 89A583F71F;
 Wed, 17 Jun 2020 04:38:18 -0700 (PDT)
From: Alexandru Elisei <alexandru.elisei@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 1/7] arm64: perf: Add missing ISB in armv8pmu_enable_event()
Date: Wed, 17 Jun 2020 12:38:45 +0100
Message-Id: <20200617113851.607706-2-alexandru.elisei@arm.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200617113851.607706-1-alexandru.elisei@arm.com>
References: <20200617113851.607706-1-alexandru.elisei@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_043822_501515_7295C6A7 
X-CRM114-Status: GOOD (  12.48  )
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
Cc: mark.rutland@arm.com, Julien Thierry <julien.thierry@arm.com>,
 Peter Zijlstra <peterz@infradead.org>, maz@kernel.org,
 Jiri Olsa <jolsa@redhat.com>, Will Deacon <will.deacon@arm.com>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, catalin.marinas@arm.com,
 Namhyung Kim <namhyung@kernel.org>, will@kernel.org,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Writes to the PMXEVTYPER_EL0 register are not self-synchronising. In
armv8pmu_enable_event(), the PE can reorder configuring the event type
after we have enabled the counter and the interrupt. This can lead to an
interrupt being asserted because the of the previous event type that we
were counting, not the one that we've just enabled.

The same rationale applies to writes to the PMINTENSET_EL1 register. The PE
can reorder enabling the interrupt at any point in the future after we have
enabled the event.

Prevent both situations from happening by adding an ISB just before we
enable the event counter.

Cc: Julien Thierry <julien.thierry.kdev@gmail.com>
Cc: Will Deacon <will.deacon@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Arnaldo Carvalho de Melo <acme@kernel.org>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Jiri Olsa <jolsa@redhat.com>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Fixes: 030896885ade ("arm64: Performance counters support")
Reported-by: Julien Thierry <julien.thierry@arm.com>
Signed-off-by: Alexandru Elisei <alexandru.elisei@arm.com>
---
 arch/arm64/kernel/perf_event.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
index 4d7879484cec..ee180b2a5b39 100644
--- a/arch/arm64/kernel/perf_event.c
+++ b/arch/arm64/kernel/perf_event.c
@@ -605,6 +605,7 @@ static void armv8pmu_enable_event(struct perf_event *event)
 	 * Enable interrupt for this counter
 	 */
 	armv8pmu_enable_event_irq(event);
+	isb();
 
 	/*
 	 * Enable counter
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
