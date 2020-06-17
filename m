Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FBA51FC97B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 11:06:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z27LJbXHF30RqJNTmrWC1NpQjMoo6ADo7HpwZn8QUlk=; b=ZPYiE45PQz74fR
	Jn4KlUCNKKJ4eZiTaZcK3L3rGE4JLww+jomnGbGtyDS7aM/PPb3jjsDkWrRRgXJGNfAdlT+hlTHjH
	mZhmyFSDcYPb2yU4QC/Pc2GI5+lewoQhNkxX8irefGGxgSwQZJ/bhc+e2uhFuSGB/WUR/8UyRkR7F
	k2Aqeji6JGaXkVy7qpBp8HAlG+YW8oVzN+E3SjS7cOzfs6HYSWEsOnidHsYWwD1qo4rbO9kAO3Nu5
	F/hadCDxd+klGd0MBpGTX7PrGJOfykYuLwGaVjj0qcsgZF+MP/l9E492wdMBhazXnRSLMv4frwcQi
	8dUWcY0jB2SCBD+TiBZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlU1y-0004lr-0h; Wed, 17 Jun 2020 09:06:50 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlU1U-0004YD-41
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 09:06:22 +0000
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 16EB71A64CE3E46FD16E;
 Wed, 17 Jun 2020 17:06:15 +0800 (CST)
Received: from localhost.localdomain (10.69.192.58) by
 DGGEMS402-HUB.china.huawei.com (10.3.19.202) with Microsoft SMTP Server id
 14.3.487.0; Wed, 17 Jun 2020 17:06:07 +0800
From: John Garry <john.garry@huawei.com>
To: <peterz@infradead.org>, <mingo@redhat.com>, <acme@kernel.org>,
 <mark.rutland@arm.com>, <alexander.shishkin@linux.intel.com>,
 <jolsa@redhat.com>, <namhyung@kernel.org>
Subject: [PATCH v2 2/2] perf pmu: Improve CPU core PMU HW event list ordering
Date: Wed, 17 Jun 2020 17:01:54 +0800
Message-ID: <1592384514-119954-3-git-send-email-john.garry@huawei.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <1592384514-119954-1-git-send-email-john.garry@huawei.com>
References: <1592384514-119954-1-git-send-email-john.garry@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.69.192.58]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_020620_510915_9D591F60 
X-CRM114-Status: GOOD (  11.23  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.191 listed in wl.mailspike.net]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: irogers@google.com, ak@linux.intel.com, John Garry <john.garry@huawei.com>,
 linuxarm@huawei.com, linux-kernel@vger.kernel.org, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For perf list, the CPU core PMU HW event ordering is such that not all
events may will be listed adjacent - consider this example:

$ tools/perf/perf list

List of pre-defined events (to be used in -e):

  duration_time                                      [Tool event]

  branch-instructions OR cpu/branch-instructions/    [Kernel PMU event]
  branch-misses OR cpu/branch-misses/                [Kernel PMU event]
  bus-cycles OR cpu/bus-cycles/                      [Kernel PMU event]
  cache-misses OR cpu/cache-misses/                  [Kernel PMU event]
  cache-references OR cpu/cache-references/          [Kernel PMU event]
  cpu-cycles OR cpu/cpu-cycles/                      [Kernel PMU event]
  cstate_core/c3-residency/                          [Kernel PMU event]
  cstate_core/c6-residency/                          [Kernel PMU event]
  cstate_core/c7-residency/                          [Kernel PMU event]
  cstate_pkg/c2-residency/                           [Kernel PMU event]
  cstate_pkg/c3-residency/                           [Kernel PMU event]
  cstate_pkg/c6-residency/                           [Kernel PMU event]
  cstate_pkg/c7-residency/                           [Kernel PMU event]
  cycles-ct OR cpu/cycles-ct/                        [Kernel PMU event]
  cycles-t OR cpu/cycles-t/                          [Kernel PMU event]
  el-abort OR cpu/el-abort/                          [Kernel PMU event]
  el-capacity OR cpu/el-capacity/                    [Kernel PMU event]

Notice in the above example how the cstate_core PMU events are mixed in
the middle of the CPU core events.

For my arm64 platform, all the uncore events get mixed in, making the list
very disorganised:
 page-faults OR faults                              [Software event]
  task-clock                                         [Software event]
  duration_time                                      [Tool event]
  L1-dcache-load-misses                              [Hardware cache event]
  L1-dcache-loads                                    [Hardware cache event]
  L1-icache-load-misses                              [Hardware cache event]
  L1-icache-loads                                    [Hardware cache event]
  branch-load-misses                                 [Hardware cache event]
  branch-loads                                       [Hardware cache event]
  dTLB-load-misses                                   [Hardware cache event]
  dTLB-loads                                         [Hardware cache event]
  iTLB-load-misses                                   [Hardware cache event]
  iTLB-loads                                         [Hardware cache event]
  br_mis_pred OR armv8_pmuv3_0/br_mis_pred/          [Kernel PMU event]
  br_mis_pred_retired OR armv8_pmuv3_0/br_mis_pred_retired/ [Kernel PMU event]
  br_pred OR armv8_pmuv3_0/br_pred/                  [Kernel PMU event]
  br_retired OR armv8_pmuv3_0/br_retired/            [Kernel PMU event]
  br_return_retired OR armv8_pmuv3_0/br_return_retired/ [Kernel PMU event]
  bus_access OR armv8_pmuv3_0/bus_access/            [Kernel PMU event]
  bus_cycles OR armv8_pmuv3_0/bus_cycles/            [Kernel PMU event]
  cid_write_retired OR armv8_pmuv3_0/cid_write_retired/ [Kernel PMU event]
  cpu_cycles OR armv8_pmuv3_0/cpu_cycles/            [Kernel PMU event]
  dtlb_walk OR armv8_pmuv3_0/dtlb_walk/              [Kernel PMU event]
  exc_return OR armv8_pmuv3_0/exc_return/            [Kernel PMU event]
  exc_taken OR armv8_pmuv3_0/exc_taken/              [Kernel PMU event]
  hisi_sccl1_ddrc0/act_cmd/                          [Kernel PMU event]
  hisi_sccl1_ddrc0/flux_rcmd/                        [Kernel PMU event]
  hisi_sccl1_ddrc0/flux_rd/                          [Kernel PMU event]
  hisi_sccl1_ddrc0/flux_wcmd/                        [Kernel PMU event]
  hisi_sccl1_ddrc0/flux_wr/                          [Kernel PMU event]
  hisi_sccl1_ddrc0/pre_cmd/                          [Kernel PMU event]
  hisi_sccl1_ddrc0/rnk_chg/                          [Kernel PMU event]

...

  hisi_sccl7_l3c21/wr_hit_cpipe/                     [Kernel PMU event]
  hisi_sccl7_l3c21/wr_hit_spipe/                     [Kernel PMU event]
  hisi_sccl7_l3c21/wr_spipe/                         [Kernel PMU event]
  inst_retired OR armv8_pmuv3_0/inst_retired/        [Kernel PMU event]
  inst_spec OR armv8_pmuv3_0/inst_spec/              [Kernel PMU event]
  itlb_walk OR armv8_pmuv3_0/itlb_walk/              [Kernel PMU event]
  l1d_cache OR armv8_pmuv3_0/l1d_cache/              [Kernel PMU event]
  l1d_cache_refill OR armv8_pmuv3_0/l1d_cache_refill/ [Kernel PMU event]
  l1d_cache_wb OR armv8_pmuv3_0/l1d_cache_wb/        [Kernel PMU event]
  l1d_tlb OR armv8_pmuv3_0/l1d_tlb/                  [Kernel PMU event]
  l1d_tlb_refill OR armv8_pmuv3_0/l1d_tlb_refill/    [Kernel PMU event]

So the events are list alphabetically. However, CPU core event listing is
special from commit dc098b35b56f ("perf list: List kernel supplied event
aliases"), in that the alias and full event is shown (in that order).
As such, the core events may become sparse.

Improve this by grouping the CPU core events and ensure that they are
listed first for kernel PMU events. For the first example, above, this
now looks like:

duration_time                                      [Tool event]
  branch-instructions OR cpu/branch-instructions/    [Kernel PMU event]
  branch-misses OR cpu/branch-misses/                [Kernel PMU event]
  bus-cycles OR cpu/bus-cycles/                      [Kernel PMU event]
  cache-misses OR cpu/cache-misses/                  [Kernel PMU event]
  cache-references OR cpu/cache-references/          [Kernel PMU event]
  cpu-cycles OR cpu/cpu-cycles/                      [Kernel PMU event]
  cycles-ct OR cpu/cycles-ct/                        [Kernel PMU event]
  cycles-t OR cpu/cycles-t/                          [Kernel PMU event]
  el-abort OR cpu/el-abort/                          [Kernel PMU event]
  el-capacity OR cpu/el-capacity/                    [Kernel PMU event]
  el-commit OR cpu/el-commit/                        [Kernel PMU event]
  el-conflict OR cpu/el-conflict/                    [Kernel PMU event]
  el-start OR cpu/el-start/                          [Kernel PMU event]
  instructions OR cpu/instructions/                  [Kernel PMU event]
  mem-loads OR cpu/mem-loads/                        [Kernel PMU event]
  mem-stores OR cpu/mem-stores/                      [Kernel PMU event]
  ref-cycles OR cpu/ref-cycles/                      [Kernel PMU event]
  topdown-fetch-bubbles OR cpu/topdown-fetch-bubbles/ [Kernel PMU event]
  topdown-recovery-bubbles OR cpu/topdown-recovery-bubbles/ [Kernel PMU event]
  topdown-slots-issued OR cpu/topdown-slots-issued/  [Kernel PMU event]
  topdown-slots-retired OR cpu/topdown-slots-retired/ [Kernel PMU event]
  topdown-total-slots OR cpu/topdown-total-slots/    [Kernel PMU event]
  tx-abort OR cpu/tx-abort/                          [Kernel PMU event]
  tx-capacity OR cpu/tx-capacity/                    [Kernel PMU event]
  tx-commit OR cpu/tx-commit/                        [Kernel PMU event]
  tx-conflict OR cpu/tx-conflict/                    [Kernel PMU event]
  tx-start OR cpu/tx-start/                          [Kernel PMU event]
  cstate_core/c3-residency/                          [Kernel PMU event]
  cstate_core/c6-residency/                          [Kernel PMU event]
  cstate_core/c7-residency/                          [Kernel PMU event]
  cstate_pkg/c2-residency/                           [Kernel PMU event]
  cstate_pkg/c3-residency/                           [Kernel PMU event]
  cstate_pkg/c6-residency/                           [Kernel PMU event]
  cstate_pkg/c7-residency/                           [Kernel PMU event]

Signed-off-by: John Garry <john.garry@huawei.com>
---
 tools/perf/util/pmu.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/tools/perf/util/pmu.c b/tools/perf/util/pmu.c
index a375364537cd..faa3e0619740 100644
--- a/tools/perf/util/pmu.c
+++ b/tools/perf/util/pmu.c
@@ -1400,6 +1400,7 @@ struct sevent {
 	char *pmu;
 	char *metric_expr;
 	char *metric_name;
+	int is_cpu;
 };
 
 static int cmp_sevent(const void *a, const void *b)
@@ -1416,6 +1417,11 @@ static int cmp_sevent(const void *a, const void *b)
 		if (n)
 			return n;
 	}
+
+	/* Order CPU core events to be first */
+	if (as->is_cpu != bs->is_cpu)
+		return bs->is_cpu - as->is_cpu;
+
 	return strcmp(as->name, bs->name);
 }
 
@@ -1507,6 +1513,7 @@ void print_pmu_events(const char *event_glob, bool name_only, bool quiet_flag,
 			aliases[j].pmu = pmu->name;
 			aliases[j].metric_expr = alias->metric_expr;
 			aliases[j].metric_name = alias->metric_name;
+			aliases[j].is_cpu = is_cpu;
 			j++;
 		}
 		if (pmu->selectable &&
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
