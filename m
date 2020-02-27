Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58A2C172869
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 20:15:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hx9ilFaoD3D1YccE9KYyLVHLIA0Qzb8mkGmBQ8WtCGw=; b=V0xJcpI6L39eis
	QtFxTh/3aX/N15wLaI15AXUhywuPCzlVImefRusEUIvci9dV82z51g23fEpaTWW8eq6F5Yq6sZ5eN
	SdZ9UyE0G60Fg29jIk1xRUkdEQGAdMH2tIWPYRLC1DNJp7hZOJ5+8D+9yPrPJIT968k+Sx0xJkTEQ
	3mg0qXG917qh1o137U3ZziB5mXVE0GdzzGkbVsSbY4qx2Di/ZINM/B6Glk17TZ9VUjE6Y/jEEUB+a
	l3Jqx0fet75Xb8c2nc51D2x3v85ibpwGZkC6E04hgSyiKHUpeRLw1S649XPcWIjIiGhtedprBcMWh
	dPztxN5M94I0H1fxGPuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Od9-0006P9-0n; Thu, 27 Feb 2020 19:15:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Ocd-000518-Nh
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 19:15:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E9A8930E;
 Thu, 27 Feb 2020 11:14:58 -0800 (PST)
Received: from e113632-lin.cambridge.arm.com (e113632-lin.cambridge.arm.com
 [10.1.194.46])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 6670E3F73B;
 Thu, 27 Feb 2020 11:14:57 -0800 (PST)
From: Valentin Schneider <valentin.schneider@arm.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 1/2] sched/topology: Don't enable EAS on SMT systems
Date: Thu, 27 Feb 2020 19:14:32 +0000
Message-Id: <20200227191433.31994-2-valentin.schneider@arm.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200227191433.31994-1-valentin.schneider@arm.com>
References: <20200227191433.31994-1-valentin.schneider@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_111459_808739_3D3D57E9 
X-CRM114-Status: GOOD (  13.20  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, qperret@google.com,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, morten.rasmussen@arm.com,
 Will Deacon <will@kernel.org>, Ingo Molnar <mingo@kernel.org>,
 Dietmar Eggemann <dietmar.eggemann@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

EAS already requires asymmetric CPU capacities to be enabled, and mixing
this with SMT is an aberration, but better be safe than sorry.

Signed-off-by: Valentin Schneider <valentin.schneider@arm.com>
Acked-by: Quentin Perret <qperret@google.com>
Reviewed-by: Dietmar Eggemann <dietmar.eggemann@arm.com>
---
 kernel/sched/topology.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/kernel/sched/topology.c b/kernel/sched/topology.c
index 00911884b7e7..8344757bba6e 100644
--- a/kernel/sched/topology.c
+++ b/kernel/sched/topology.c
@@ -317,8 +317,9 @@ static void sched_energy_set(bool has_eas)
  * EAS can be used on a root domain if it meets all the following conditions:
  *    1. an Energy Model (EM) is available;
  *    2. the SD_ASYM_CPUCAPACITY flag is set in the sched_domain hierarchy.
- *    3. the EM complexity is low enough to keep scheduling overheads low;
- *    4. schedutil is driving the frequency of all CPUs of the rd;
+ *    3. no SMT is detected.
+ *    4. the EM complexity is low enough to keep scheduling overheads low;
+ *    5. schedutil is driving the frequency of all CPUs of the rd;
  *
  * The complexity of the Energy Model is defined as:
  *
@@ -360,6 +361,13 @@ static bool build_perf_domains(const struct cpumask *cpu_map)
 		goto free;
 	}
 
+	/* EAS definitely does *not* handle SMT */
+	if (sched_smt_active()) {
+		pr_warn("rd %*pbl: Disabling EAS, SMT is not supported\n",
+			cpumask_pr_args(cpu_map));
+		goto free;
+	}
+
 	for_each_cpu(i, cpu_map) {
 		/* Skip already covered CPUs. */
 		if (find_pd(pd, i))
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
