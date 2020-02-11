Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86280159185
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 15:05:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=frV4isWiQgvhLd3CKBqjVGzfuHwk/IiTPT/dHZE5VOo=; b=I/8P4XnPRqO/dihZMwqiuGum7O
	SNR4o4oGqqN82S1Bsp8LEVaxh1Zb5+i9LOwKy2B9aKGcWctF1Z9exR+zsfzPeHuebqRpJ7KpIOece
	eWyMj6+lbr1XfLztEBNVKf1klVIhoPGQj7M+0Om+IVnNPkJ2P/ktx/ljnCFSchNjxmQXL1X9MBqav
	xf7qzC23vn7x2ryz+uWl+SjUQbVuE7AjuusaSrYmn/SYqSLddEPgvc5toghauQlxnsptHk56GTa+I
	Td/hHz+tpG2VobIfxuxtmcht1FD9o8yatUWp7d/8it7QDEZhRJOirgMCnePhwYqguoq8r71DeiIie
	zcxdaQkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1WAk-0004t2-0C; Tue, 11 Feb 2020 14:05:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1W9w-0003AK-Lk
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 14:05:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 15D8D30E;
 Tue, 11 Feb 2020 06:05:04 -0800 (PST)
Received: from e121896.warwick.arm.com (e121896.warwick.arm.com [10.32.36.33])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id
 17CE53F68F; Tue, 11 Feb 2020 06:05:00 -0800 (PST)
From: James Clark <james.clark@arm.com>
To: jolsa@redhat.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v4 2/4] perf tools: Add support for "report" for some spe
 events
Date: Tue, 11 Feb 2020 14:04:43 +0000
Message-Id: <20200211140445.21986-3-james.clark@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200211140445.21986-1-james.clark@arm.com>
References: <20200210122509.GA2005279@krava>
 <20200211140445.21986-1-james.clark@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_060504_960725_FE9AC772 
X-CRM114-Status: GOOD (  20.79  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, Al Grant <al.grant@arm.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, James Clark <james.clark@arm.com>,
 Namhyung Kim <namhyung@kernel.org>, nd@arm.com, Will Deacon <will@kernel.org>,
 Tan Xiaojun <tanxiaojun@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tan Xiaojun <tanxiaojun@huawei.com>

After the commit ffd3d18c20b8 ("perf tools: Add ARM Statistical
Profiling Extensions (SPE) support") is merged, "perf record" and
"perf report --dump-raw-trace" have been supported. However, the
raw data that is dumped cannot be used without parsing.

This patch is to improve the "perf report" support for spe, and
further process the data. Currently, support for the four events
of llc-miss, tlb-miss, branch-miss, and remote-access is added.

Example usage:

$ ./perf record -c 1024 -e arm_spe_0/branch_filter=1,ts_enable=1,pct_enable=1,pa_enable=1,load_filter=1,jitter=1,store_filter=1,min_latency=0/ -o perf-armspe-dd.data dd if=/dev/zero of=/dev/null count=10000

$ ./perf report -i perf-armspe-dd.data --stdio
--------------------------------------------------------------------
...
 # Samples: 23  of event 'llc-miss'
 # Event count (approx.): 23
...
    33.33%    33.33%  dd       [kernel.kallsyms]  [k] perf_iterate_ctx.constprop.64
    12.12%    12.12%  dd       [kernel.kallsyms]  [k] perf_event_mmap
     6.06%     6.06%  dd       [kernel.kallsyms]  [k] copy_page
     6.06%     6.06%  dd       ld-2.28.so         [.] _dl_relocate_object
     3.03%     3.03%  dd       [kernel.kallsyms]  [k] change_protection_range
     3.03%     3.03%  dd       [kernel.kallsyms]  [k] filemap_map_pages
     3.03%     3.03%  dd       [kernel.kallsyms]  [k] free_pages_and_swap_cache
     3.03%     3.03%  dd       [kernel.kallsyms]  [k] generic_permission
     3.03%     3.03%  dd       [kernel.kallsyms]  [k] kmem_cache_alloc
     3.03%     3.03%  dd       [kernel.kallsyms]  [k] lookup_fast
     3.03%     3.03%  dd       [kernel.kallsyms]  [k] perf_event_exec
     3.03%     3.03%  dd       [kernel.kallsyms]  [k] radix_tree_next_chunk
     3.03%     3.03%  dd       [kernel.kallsyms]  [k] ring_buffer_record_is_on
     3.03%     3.03%  dd       ld-2.28.so         [.] _dl_lookup_symbol_x
     3.03%     3.03%  dd       ld-2.28.so         [.] _dl_start
     3.03%     3.03%  dd       ld-2.28.so         [.] dl_main
     3.03%     3.03%  dd       ld-2.28.so         [.] strcmp
     3.03%     3.03%  dd       libc-2.28.so       [.] _dl_addr
...
 # Samples: 3  of event 'tlb-miss'
 # Event count (approx.): 3
...
    33.33%    33.33%  dd       [kernel.kallsyms]  [k] filemap_map_pages
    33.33%    33.33%  dd       ld-2.28.so         [.] _dl_start
    33.33%    33.33%  dd       ld-2.28.so         [.] dl_main
...
 # Samples: 20  of event 'branch-miss'
 # Event count (approx.): 20
...
    15.38%    15.38%  dd       [kernel.kallsyms]  [k] __fput
     7.69%     7.69%  dd       [kernel.kallsyms]  [k] do_el0_ia_bp_hardening
     7.69%     7.69%  dd       [kernel.kallsyms]  [k] filemap_map_pages
     7.69%     7.69%  dd       [kernel.kallsyms]  [k] pagevec_lru_move_fn
     7.69%     7.69%  dd       [kernel.kallsyms]  [k] perf_event_mmap_output
     7.69%     7.69%  dd       [kernel.kallsyms]  [k] task_work_run
     7.69%     7.69%  dd       [kernel.kallsyms]  [k] unmap_single_vma
     7.69%     7.69%  dd       libc-2.28.so       [.] _IO_flush_all_lockp
     7.69%     7.69%  dd       libc-2.28.so       [.] __memcpy_generic
     7.69%     7.69%  dd       libc-2.28.so       [.] _dl_addr
     7.69%     7.69%  dd       libc-2.28.so       [.] msort_with_tmp.part.0
     7.69%     7.69%  dd       libc-2.28.so       [.] read_alias_file
...
 # Samples: 5  of event 'remote-access'
 # Event count (approx.): 5
...
    27.78%    27.78%  dd       [kernel.kallsyms]  [k] perf_iterate_ctx.constprop.64
    16.67%    16.67%  dd       [kernel.kallsyms]  [k] perf_event_mmap
     5.56%     5.56%  dd       [kernel.kallsyms]  [k] change_protection_range
     5.56%     5.56%  dd       [kernel.kallsyms]  [k] filemap_map_pages
     5.56%     5.56%  dd       [kernel.kallsyms]  [k] free_pages_and_swap_cache
     5.56%     5.56%  dd       [kernel.kallsyms]  [k] generic_permission
     5.56%     5.56%  dd       [kernel.kallsyms]  [k] lookup_fast
     5.56%     5.56%  dd       [kernel.kallsyms]  [k] perf_event_exec
     5.56%     5.56%  dd       [kernel.kallsyms]  [k] radix_tree_next_chunk
     5.56%     5.56%  dd       ld-2.28.so         [.] _dl_relocate_object
     5.56%     5.56%  dd       ld-2.28.so         [.] _dl_start
     5.56%     5.56%  dd       ld-2.28.so         [.] dl_main

--------------------------------------------------------------------
After that, more analysis and processing of the raw data of spe
will be done.

Signed-off-by: Tan Xiaojun <tanxiaojun@huawei.com>
Tested-by: Qi Liu <liuqi115@hisilicon.com>
Signed-off-by: James Clark <james.clark@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Arnaldo Carvalho de Melo <acme@kernel.org>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Jiri Olsa <jolsa@redhat.com>
Cc: Tan Xiaojun <tanxiaojun@huawei.com>
Cc: Al Grant <al.grant@arm.com>
Cc: Namhyung Kim <namhyung@kernel.org>
---
 tools/perf/util/arm-spe-decoder/Build         |   2 +-
 .../util/arm-spe-decoder/arm-spe-decoder.c    | 225 ++++++
 .../util/arm-spe-decoder/arm-spe-decoder.h    |  66 ++
 .../arm-spe-decoder/arm-spe-pkt-decoder.h     |   2 +
 tools/perf/util/arm-spe.c                     | 745 +++++++++++++++++-
 tools/perf/util/auxtrace.c                    |  13 +
 tools/perf/util/auxtrace.h                    |   8 +-
 7 files changed, 1022 insertions(+), 39 deletions(-)
 create mode 100644 tools/perf/util/arm-spe-decoder/arm-spe-decoder.c
 create mode 100644 tools/perf/util/arm-spe-decoder/arm-spe-decoder.h

diff --git a/tools/perf/util/arm-spe-decoder/Build b/tools/perf/util/arm-spe-decoder/Build
index 16efbc245028..f8dae13fc876 100644
--- a/tools/perf/util/arm-spe-decoder/Build
+++ b/tools/perf/util/arm-spe-decoder/Build
@@ -1 +1 @@
-perf-$(CONFIG_AUXTRACE) += arm-spe-pkt-decoder.o
+perf-$(CONFIG_AUXTRACE) += arm-spe-pkt-decoder.o arm-spe-decoder.o
diff --git a/tools/perf/util/arm-spe-decoder/arm-spe-decoder.c b/tools/perf/util/arm-spe-decoder/arm-spe-decoder.c
new file mode 100644
index 000000000000..50e796b89a95
--- /dev/null
+++ b/tools/perf/util/arm-spe-decoder/arm-spe-decoder.c
@@ -0,0 +1,225 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * arm_spe_decoder.c: ARM SPE support
+ */
+
+#ifndef _GNU_SOURCE
+#define _GNU_SOURCE
+#endif
+#include <stdlib.h>
+#include <stdbool.h>
+#include <string.h>
+#include <errno.h>
+#include <stdint.h>
+#include <inttypes.h>
+#include <linux/compiler.h>
+#include <linux/zalloc.h>
+
+#include "../util.h"
+#include "../debug.h"
+#include "../auxtrace.h"
+
+#include "arm-spe-pkt-decoder.h"
+#include "arm-spe-decoder.h"
+
+#ifndef BIT
+#define BIT(n)		(1UL << (n))
+#endif
+
+struct arm_spe_decoder {
+	int (*get_trace)(struct arm_spe_buffer *buffer, void *data);
+	void *data;
+	struct arm_spe_state state;
+	const unsigned char *buf;
+	size_t len;
+	uint64_t pos;
+	struct arm_spe_pkt packet;
+	int pkt_step;
+	int pkt_len;
+	int last_packet_type;
+
+	uint64_t last_ip;
+	uint64_t ip;
+	uint64_t timestamp;
+	uint64_t sample_timestamp;
+	const unsigned char *next_buf;
+	size_t next_len;
+	unsigned char temp_buf[ARM_SPE_PKT_MAX_SZ];
+};
+
+static uint64_t arm_spe_calc_ip(uint64_t payload)
+{
+	uint64_t ip = (payload & ~(0xffULL << 56));
+
+	/* fill high 8 bits for kernel virtual address */
+	/* In Armv8 Architecture Reference Manual: Xn[55] determines
+	 * whether the address lies in the upper or lower address range
+	 * for the purpose of determining whether address tagging is
+	 * used */
+	if (ip & BIT(55))
+		ip |= (uint64_t)(0xffULL << 56);
+
+	return ip;
+}
+
+struct arm_spe_decoder *arm_spe_decoder_new(struct arm_spe_params *params)
+{
+	struct arm_spe_decoder *decoder;
+
+	if (!params->get_trace)
+		return NULL;
+
+	decoder = zalloc(sizeof(struct arm_spe_decoder));
+	if (!decoder)
+		return NULL;
+
+	decoder->get_trace          = params->get_trace;
+	decoder->data               = params->data;
+
+	return decoder;
+}
+
+void arm_spe_decoder_free(struct arm_spe_decoder *decoder)
+{
+	free(decoder);
+}
+
+static int arm_spe_bad_packet(struct arm_spe_decoder *decoder)
+{
+	decoder->pkt_len = 1;
+	decoder->pkt_step = 1;
+	pr_debug("ERROR: Bad packet\n");
+
+	return -EBADMSG;
+}
+
+
+static int arm_spe_get_data(struct arm_spe_decoder *decoder)
+{
+	struct arm_spe_buffer buffer = { .buf = 0, };
+	int ret;
+
+	decoder->pkt_step = 0;
+
+	pr_debug("Getting more data\n");
+	ret = decoder->get_trace(&buffer, decoder->data);
+	if (ret)
+		return ret;
+
+	decoder->buf = buffer.buf;
+	decoder->len = buffer.len;
+	if (!decoder->len) {
+		pr_debug("No more data\n");
+		return -ENODATA;
+	}
+
+	return 0;
+}
+
+static int arm_spe_get_next_data(struct arm_spe_decoder *decoder)
+{
+	return arm_spe_get_data(decoder);
+}
+
+static int arm_spe_get_next_packet(struct arm_spe_decoder *decoder)
+{
+	int ret;
+
+	decoder->last_packet_type = decoder->packet.type;
+
+	do {
+		decoder->pos += decoder->pkt_step;
+		decoder->buf += decoder->pkt_step;
+		decoder->len -= decoder->pkt_step;
+
+
+		if (!decoder->len) {
+			ret = arm_spe_get_next_data(decoder);
+			if (ret)
+				return ret;
+		}
+
+		ret = arm_spe_get_packet(decoder->buf, decoder->len,
+				&decoder->packet);
+		if (ret <= 0)
+			return arm_spe_bad_packet(decoder);
+
+		decoder->pkt_len = ret;
+		decoder->pkt_step = ret;
+	} while (decoder->packet.type == ARM_SPE_PAD);
+
+	return 0;
+}
+
+static int arm_spe_walk_trace(struct arm_spe_decoder *decoder)
+{
+	int err;
+	int idx;
+	uint64_t payload;
+
+	while (1) {
+		err = arm_spe_get_next_packet(decoder);
+		if (err)
+			return err;
+
+		idx = decoder->packet.index;
+		payload = decoder->packet.payload;
+
+		switch (decoder->packet.type) {
+		case ARM_SPE_TIMESTAMP:
+			decoder->sample_timestamp = payload;
+			return 0;
+		case ARM_SPE_END:
+			decoder->sample_timestamp = 0;
+			return 0;
+		case ARM_SPE_ADDRESS:
+			decoder->ip = arm_spe_calc_ip(payload);
+			if (idx == 0)
+				decoder->state.from_ip = decoder->ip;
+			else if (idx == 1)
+				decoder->state.to_ip = decoder->ip;
+			break;
+		case ARM_SPE_COUNTER:
+			break;
+		case ARM_SPE_CONTEXT:
+			break;
+		case ARM_SPE_OP_TYPE:
+			break;
+		case ARM_SPE_EVENTS:
+			if (payload & BIT(EV_TLB_REFILL))
+				decoder->state.type |= ARM_SPE_TLB_MISS;
+			if (payload & BIT(EV_MISPRED))
+				decoder->state.type |= ARM_SPE_BRANCH_MISS;
+			if (idx > 1 && (payload & BIT(EV_LLC_REFILL)))
+				decoder->state.type |= ARM_SPE_LLC_MISS;
+			if (idx > 1 && (payload & BIT(EV_REMOTE_ACCESS)))
+				decoder->state.type |= ARM_SPE_REMOTE_ACCESS;
+
+			break;
+		case ARM_SPE_DATA_SOURCE:
+			break;
+		case ARM_SPE_BAD:
+			break;
+		case ARM_SPE_PAD:
+			break;
+		default:
+			pr_err("Get Packet Error!\n");
+			return -ENOSYS;
+		}
+	}
+}
+
+const struct arm_spe_state *arm_spe_decode(struct arm_spe_decoder *decoder)
+{
+	int err;
+
+	decoder->state.type = 0;
+
+	err = arm_spe_walk_trace(decoder);
+	if (err)
+		decoder->state.err = err;
+
+	decoder->state.timestamp = decoder->sample_timestamp;
+
+	return &decoder->state;
+}
diff --git a/tools/perf/util/arm-spe-decoder/arm-spe-decoder.h b/tools/perf/util/arm-spe-decoder/arm-spe-decoder.h
new file mode 100644
index 000000000000..330f9e1e71ab
--- /dev/null
+++ b/tools/perf/util/arm-spe-decoder/arm-spe-decoder.h
@@ -0,0 +1,66 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * arm_spe_decoder.c: ARM SPE support
+ */
+
+#ifndef INCLUDE__ARM_SPE_DECODER_H__
+#define INCLUDE__ARM_SPE_DECODER_H__
+
+#include <stdint.h>
+#include <stddef.h>
+#include <stdbool.h>
+
+enum arm_spe_events {
+	EV_EXCEPTION_GEN,
+	EV_RETIRED,
+	EV_L1D_ACCESS,
+	EV_L1D_REFILL,
+	EV_TLB_ACCESS,
+	EV_TLB_REFILL,
+	EV_NOT_TAKEN,
+	EV_MISPRED,
+	EV_LLC_ACCESS,
+	EV_LLC_REFILL,
+	EV_REMOTE_ACCESS,
+};
+
+enum arm_spe_sample_type {
+	ARM_SPE_LLC_MISS	= 1 << 0,
+	ARM_SPE_TLB_MISS	= 1 << 1,
+	ARM_SPE_BRANCH_MISS	= 1 << 2,
+	ARM_SPE_REMOTE_ACCESS	= 1 << 3,
+	ARM_SPE_EX_STOP		= 1 << 6,
+};
+
+struct arm_spe_state {
+	enum arm_spe_sample_type type;
+	int err;
+	uint64_t from_ip;
+	uint64_t to_ip;
+	uint64_t timestamp;
+};
+
+struct arm_spe_insn;
+
+struct arm_spe_buffer {
+	const unsigned char *buf;
+	size_t len;
+	u64 offset;
+	bool consecutive;
+	uint64_t ref_timestamp;
+	uint64_t trace_nr;
+};
+
+struct arm_spe_params {
+	int (*get_trace)(struct arm_spe_buffer *buffer, void *data);
+	void *data;
+};
+
+struct arm_spe_decoder;
+
+struct arm_spe_decoder *arm_spe_decoder_new(struct arm_spe_params *params);
+void arm_spe_decoder_free(struct arm_spe_decoder *decoder);
+
+const struct arm_spe_state *arm_spe_decode(struct arm_spe_decoder *decoder);
+
+#endif
diff --git a/tools/perf/util/arm-spe-decoder/arm-spe-pkt-decoder.h b/tools/perf/util/arm-spe-decoder/arm-spe-pkt-decoder.h
index d786ef65113f..865d1e35b401 100644
--- a/tools/perf/util/arm-spe-decoder/arm-spe-pkt-decoder.h
+++ b/tools/perf/util/arm-spe-decoder/arm-spe-pkt-decoder.h
@@ -15,6 +15,8 @@
 #define ARM_SPE_NEED_MORE_BYTES		-1
 #define ARM_SPE_BAD_PACKET		-2
 
+#define ARM_SPE_PKT_MAX_SZ		16
+
 enum arm_spe_pkt_type {
 	ARM_SPE_BAD,
 	ARM_SPE_PAD,
diff --git a/tools/perf/util/arm-spe.c b/tools/perf/util/arm-spe.c
index f3382a38d48e..4ef22a0775a9 100644
--- a/tools/perf/util/arm-spe.c
+++ b/tools/perf/util/arm-spe.c
@@ -16,34 +16,68 @@
 #include <linux/log2.h>
 #include <linux/zalloc.h>
 
+#include "auxtrace.h"
 #include "color.h"
+#include "debug.h"
 #include "evsel.h"
+#include "evlist.h"
 #include "machine.h"
 #include "session.h"
-#include "debug.h"
-#include "auxtrace.h"
+#include "symbol.h"
+#include "thread.h"
+#include "thread-stack.h"
+#include "tool.h"
+#include "util/synthetic-events.h"
+
 #include "arm-spe.h"
+#include "arm-spe-decoder/arm-spe-decoder.h"
 #include "arm-spe-decoder/arm-spe-pkt-decoder.h"
 
+#define MAX_TIMESTAMP (~0ULL)
+
 struct arm_spe {
 	struct auxtrace			auxtrace;
 	struct auxtrace_queues		queues;
 	struct auxtrace_heap		heap;
+        struct itrace_synth_opts        synth_opts;
 	u32				auxtrace_type;
 	struct perf_session		*session;
 	struct machine			*machine;
 	u32				pmu_type;
+
+	u8				timeless_decoding;
+	u8				data_queued;
+
+	u8				sample_llc_miss;
+	u8				sample_tlb_miss;
+	u8				sample_branch_miss;
+	u8				sample_remote_access;
+	u64				llc_miss_id;
+	u64				tlb_miss_id;
+	u64				branch_miss_id;
+	u64				remote_access_id;
+	u64				kernel_start;
+
+	unsigned long			num_events;
 };
 
 struct arm_spe_queue {
-	struct arm_spe		*spe;
-	unsigned int		queue_nr;
-	struct auxtrace_buffer	*buffer;
-	bool			on_heap;
-	bool			done;
-	pid_t			pid;
-	pid_t			tid;
-	int			cpu;
+	struct arm_spe			*spe;
+	unsigned int			queue_nr;
+	struct auxtrace_buffer		*buffer;
+	struct auxtrace_buffer		*old_buffer;
+	union perf_event		*event_buf;
+	bool				on_heap;
+	bool				done;
+	pid_t				pid;
+	pid_t				tid;
+	int				cpu;
+	void				*decoder;
+	const struct arm_spe_state	*state;
+	u64				time;
+	u64				timestamp;
+	struct thread			*thread;
+	bool				have_sample;
 };
 
 static void arm_spe_dump(struct arm_spe *spe __maybe_unused,
@@ -92,44 +126,494 @@ static void arm_spe_dump_event(struct arm_spe *spe, unsigned char *buf,
 	arm_spe_dump(spe, buf, len);
 }
 
-static int arm_spe_process_event(struct perf_session *session __maybe_unused,
-				 union perf_event *event __maybe_unused,
-				 struct perf_sample *sample __maybe_unused,
-				 struct perf_tool *tool __maybe_unused)
+static int arm_spe_get_trace(struct arm_spe_buffer *b, void *data)
+{
+	struct arm_spe_queue *speq = data;
+	struct auxtrace_buffer *buffer = speq->buffer;
+	struct auxtrace_buffer *old_buffer = speq->old_buffer;
+	struct auxtrace_queue *queue;
+
+	queue = &speq->spe->queues.queue_array[speq->queue_nr];
+
+	buffer = auxtrace_buffer__next(queue, buffer);
+	/* If no more data, drop the previous auxtrace_buffer and return */
+	if (!buffer) {
+		if (old_buffer)
+			auxtrace_buffer__drop_data(old_buffer);
+		b->len = 0;
+		return 0;
+	}
+
+	speq->buffer = buffer;
+
+	/* If the aux_buffer doesn't have data associated, try to load it */
+	if (!buffer->data) {
+		/* get the file desc associated with the perf data file */
+		int fd = perf_data__fd(speq->spe->session->data);
+
+		buffer->data = auxtrace_buffer__get_data(buffer, fd);
+		if (!buffer->data)
+			return -ENOMEM;
+	}
+
+	if (buffer->use_data) {
+		b->len = buffer->use_size;
+		b->buf = buffer->use_data;
+	} else {
+		b->len = buffer->size;
+		b->buf = buffer->data;
+	}
+
+	b->ref_timestamp = buffer->reference;
+
+	if (b->len) {
+		if (old_buffer)
+			auxtrace_buffer__drop_data(old_buffer);
+		speq->old_buffer = buffer;
+	} else {
+		auxtrace_buffer__drop_data(buffer);
+		return arm_spe_get_trace(b, data);
+	}
+
+	return 0;
+}
+
+static struct arm_spe_queue *arm_spe__alloc_queue(struct arm_spe *spe,
+		unsigned int queue_nr)
+{
+	struct arm_spe_params params = { .get_trace = 0, };
+	struct arm_spe_queue *speq;
+
+	speq = zalloc(sizeof(*speq));
+	if (!speq)
+		return NULL;
+
+	speq->event_buf = malloc(PERF_SAMPLE_MAX_SIZE);
+	if (!speq->event_buf)
+		goto out_free;
+
+	speq->spe = spe;
+	speq->queue_nr = queue_nr;
+	speq->pid = -1;
+	speq->tid = -1;
+	speq->cpu = -1;
+
+	/* params set */
+	params.get_trace = arm_spe_get_trace;
+	params.data = speq;
+
+	/* create new decoder */
+	speq->decoder = arm_spe_decoder_new(&params);
+	if (!speq->decoder)
+		goto out_free;
+
+	return speq;
+
+out_free:
+	zfree(&speq->event_buf);
+	free(speq);
+
+	return NULL;
+}
+
+static inline u8 arm_spe_cpumode(struct arm_spe *spe, uint64_t ip)
+{
+	return ip >= spe->kernel_start ?
+		PERF_RECORD_MISC_KERNEL :
+		PERF_RECORD_MISC_USER;
+}
+
+static void arm_spe_prep_sample(struct arm_spe *spe,
+				struct arm_spe_queue *speq,
+				union perf_event *event,
+				struct perf_sample *sample)
+{
+	if (!spe->timeless_decoding)
+		sample->time = speq->timestamp;
+
+	sample->ip = speq->state->from_ip;
+	sample->cpumode = arm_spe_cpumode(spe, sample->ip);
+	sample->pid = speq->pid;
+	sample->tid = speq->tid;
+	sample->addr = speq->state->to_ip;
+	sample->period = 1;
+	sample->cpu = speq->cpu;
+
+	event->sample.header.type = PERF_RECORD_SAMPLE;
+	event->sample.header.misc = sample->cpumode;
+	event->sample.header.size = sizeof(struct perf_event_header);
+}
+
+static inline int
+arm_spe_deliver_synth_event(struct arm_spe *spe,
+			    struct arm_spe_queue *speq __maybe_unused,
+			    union perf_event *event,
+			    struct perf_sample *sample)
+{
+	int ret;
+
+	ret = perf_session__deliver_synth_event(spe->session, event, sample);
+	if (ret)
+		pr_err("ARM SPE: failed to deliver event, error %d\n", ret);
+
+	return ret;
+}
+
+static int
+arm_spe_synth_spe_events_sample(struct arm_spe_queue *speq,
+				u64 spe_events_id)
+{
+	struct arm_spe *spe = speq->spe;
+	union perf_event *event = speq->event_buf;
+	struct perf_sample sample = { .ip = 0, };
+
+	arm_spe_prep_sample(spe, speq, event, &sample);
+
+	sample.id = spe_events_id;
+	sample.stream_id = spe_events_id;
+
+	return arm_spe_deliver_synth_event(spe, speq, event, &sample);
+}
+
+static int arm_spe_sample(struct arm_spe_queue *speq)
+{
+	const struct arm_spe_state *state = speq->state;
+	struct arm_spe *spe = speq->spe;
+	int err;
+
+	if (!speq->have_sample)
+		return 0;
+
+	speq->have_sample = false;
+
+	if (spe->sample_llc_miss && (state->type & ARM_SPE_LLC_MISS)) {
+		err = arm_spe_synth_spe_events_sample(speq, spe->llc_miss_id);
+		if (err)
+			return err;
+	}
+
+	if (spe->sample_tlb_miss && (state->type & ARM_SPE_TLB_MISS)) {
+		err = arm_spe_synth_spe_events_sample(speq, spe->tlb_miss_id);
+		if (err)
+			return err;
+	}
+
+	if (spe->sample_branch_miss && (state->type & ARM_SPE_BRANCH_MISS)) {
+		err = arm_spe_synth_spe_events_sample(speq,
+						      spe->branch_miss_id);
+		if (err)
+			return err;
+	}
+
+	if (spe->sample_remote_access && (state->type & ARM_SPE_REMOTE_ACCESS)) {
+		err = arm_spe_synth_spe_events_sample(speq, spe->remote_access_id);
+		if (err)
+			return err;
+	}
+
+	return 0;
+}
+
+static int arm_spe_run_decoder(struct arm_spe_queue *speq, u64 *timestamp)
+{
+	const struct arm_spe_state *state = speq->state;
+	struct arm_spe *spe = speq->spe;
+	int err;
+
+	if (!spe->kernel_start)
+		spe->kernel_start = machine__kernel_start(spe->machine);
+
+	while (1) {
+		err = arm_spe_sample(speq);
+		if (err)
+			return err;
+
+		state = arm_spe_decode(speq->decoder);
+		if (state->err) {
+			if (state->err == -ENODATA) {
+				pr_debug("No data or all data has been processed.\n");
+				return 1;
+			}
+			continue;
+		}
+
+		speq->state = state;
+		speq->have_sample = true;
+
+		if (!spe->timeless_decoding && speq->timestamp >= *timestamp) {
+			*timestamp = speq->timestamp;
+			return 0;
+		}
+	}
+
+	return 0;
+}
+
+static int arm_spe__setup_queue(struct arm_spe *spe,
+			       struct auxtrace_queue *queue,
+			       unsigned int queue_nr)
+{
+	struct arm_spe_queue *speq = queue->priv;
+
+	if (list_empty(&queue->head) || speq)
+		return 0;
+
+	speq = arm_spe__alloc_queue(spe, queue_nr);
+
+	if (!speq)
+		return -ENOMEM;
+
+	queue->priv = speq;
+
+	if (queue->cpu != -1)
+		speq->cpu = queue->cpu;
+
+	if (!speq->on_heap) {
+		const struct arm_spe_state *state;
+		int ret;
+
+		if (spe->timeless_decoding)
+			return 0;
+
+retry:
+		state = arm_spe_decode(speq->decoder);
+		if (state->err) {
+			if (state->err == -ENODATA) {
+				pr_debug("queue %u has no timestamp\n",
+						queue_nr);
+				return 0;
+			}
+			goto retry;
+		}
+
+		speq->timestamp = state->timestamp;
+		speq->state = state;
+		speq->have_sample = true;
+		ret = auxtrace_heap__add(&spe->heap, queue_nr, speq->timestamp);
+		if (ret)
+			return ret;
+		speq->on_heap = true;
+	}
+
+	return 0;
+}
+
+static int arm_spe__setup_queues(struct arm_spe *spe)
 {
+	unsigned int i;
+	int ret;
+
+	for (i = 0; i < spe->queues.nr_queues; i++) {
+		ret = arm_spe__setup_queue(spe, &spe->queues.queue_array[i], i);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
+static int arm_spe__update_queues(struct arm_spe *spe)
+{
+	if (spe->queues.new_data) {
+		spe->queues.new_data = false;
+		return arm_spe__setup_queues(spe);
+	}
+
 	return 0;
 }
 
+static bool arm_spe__is_timeless_decoding(struct arm_spe *spe)
+{
+	struct evsel *evsel;
+	struct evlist *evlist = spe->session->evlist;
+	bool timeless_decoding = true;
+
+	/*
+	 * Circle through the list of event and complain if we find one
+	 * with the time bit set.
+	 */
+	evlist__for_each_entry(evlist, evsel) {
+		if ((evsel->core.attr.sample_type & PERF_SAMPLE_TIME))
+			timeless_decoding = false;
+	}
+
+	return timeless_decoding;
+}
+
+static void arm_spe_set_pid_tid_cpu(struct arm_spe *spe,
+				    struct auxtrace_queue *queue)
+{
+	struct arm_spe_queue *speq = queue->priv;
+	pid_t tid;
+
+	tid = machine__get_current_tid(spe->machine, speq->cpu);
+	if (tid != -1) {
+		speq->tid = tid;
+		thread__zput(speq->thread);
+	} else
+		speq->tid = queue->tid;
+
+	if ((!speq->thread) && (speq->tid != -1)) {
+		speq->thread = machine__find_thread(spe->machine, -1,
+						    speq->tid);
+	}
+
+	if (speq->thread) {
+		speq->pid = speq->thread->pid_;
+		if (queue->cpu == -1)
+			speq->cpu = speq->thread->cpu;
+	}
+}
+
+static int arm_spe_process_queues(struct arm_spe *spe, u64 timestamp)
+{
+	unsigned int queue_nr;
+	u64 ts;
+	int ret;
+
+	while (1) {
+		struct auxtrace_queue *queue;
+		struct arm_spe_queue *speq;
+
+		if (!spe->heap.heap_cnt)
+			return 0;
+
+		if (spe->heap.heap_array[0].ordinal >= timestamp)
+			return 0;
+
+		queue_nr = spe->heap.heap_array[0].queue_nr;
+		queue = &spe->queues.queue_array[queue_nr];
+		speq = queue->priv;
+
+		auxtrace_heap__pop(&spe->heap);
+
+		if (spe->heap.heap_cnt) {
+			ts = spe->heap.heap_array[0].ordinal + 1;
+			if (ts > timestamp)
+				ts = timestamp;
+		} else {
+			ts = timestamp;
+		}
+
+		arm_spe_set_pid_tid_cpu(spe, queue);
+
+		ret = arm_spe_run_decoder(speq, &ts);
+		if (ret < 0) {
+			auxtrace_heap__add(&spe->heap, queue_nr, ts);
+			return ret;
+		}
+
+		if (!ret) {
+			ret = auxtrace_heap__add(&spe->heap, queue_nr, ts);
+			if (ret < 0)
+				return ret;
+		} else {
+			speq->on_heap = false;
+		}
+	}
+
+	return 0;
+}
+
+static int arm_spe_process_timeless_queues(struct arm_spe *spe, pid_t tid,
+					    u64 time_)
+{
+	struct auxtrace_queues *queues = &spe->queues;
+	unsigned int i;
+	u64 ts = 0;
+
+	for (i = 0; i < queues->nr_queues; i++) {
+		struct auxtrace_queue *queue = &spe->queues.queue_array[i];
+		struct arm_spe_queue *speq = queue->priv;
+
+		if (speq && (tid == -1 || speq->tid == tid)) {
+			speq->time = time_;
+			arm_spe_set_pid_tid_cpu(spe, queue);
+			arm_spe_run_decoder(speq, &ts);
+		}
+	}
+	return 0;
+}
+
+static int arm_spe_process_event(struct perf_session *session,
+				 union perf_event *event,
+				 struct perf_sample *sample,
+				 struct perf_tool *tool)
+{
+	int err = 0;
+	u64 timestamp;
+	struct arm_spe *spe = container_of(session->auxtrace,
+			struct arm_spe, auxtrace);
+
+	if (dump_trace)
+		return 0;
+
+	if (!tool->ordered_events) {
+		pr_err("CoreSight SPE Trace requires ordered events\n");
+		return -EINVAL;
+	}
+
+	if (sample->time && (sample->time != (u64) -1))
+		timestamp = sample->time;
+	else
+		timestamp = 0;
+
+	if (timestamp || spe->timeless_decoding) {
+		err = arm_spe__update_queues(spe);
+		if (err)
+			return err;
+	}
+
+	if (spe->timeless_decoding) {
+		if (event->header.type == PERF_RECORD_EXIT) {
+			err = arm_spe_process_timeless_queues(spe,
+					event->fork.tid,
+					sample->time);
+		}
+	} else if (timestamp) {
+		if (event->header.type == PERF_RECORD_EXIT) {
+			err = arm_spe_process_queues(spe, timestamp);
+			if (err)
+				return err;
+		}
+	}
+
+	return err;
+}
+
 static int arm_spe_process_auxtrace_event(struct perf_session *session,
 					  union perf_event *event,
 					  struct perf_tool *tool __maybe_unused)
 {
 	struct arm_spe *spe = container_of(session->auxtrace, struct arm_spe,
 					     auxtrace);
-	struct auxtrace_buffer *buffer;
-	off_t data_offset;
-	int fd = perf_data__fd(session->data);
-	int err;
 
-	if (perf_data__is_pipe(session->data)) {
-		data_offset = 0;
-	} else {
-		data_offset = lseek(fd, 0, SEEK_CUR);
-		if (data_offset == -1)
-			return -errno;
-	}
+	if (!spe->data_queued) {
+		struct auxtrace_buffer *buffer;
+		off_t data_offset;
+		int fd = perf_data__fd(session->data);
+		int err;
 
-	err = auxtrace_queues__add_event(&spe->queues, session, event,
-					 data_offset, &buffer);
-	if (err)
-		return err;
-
-	/* Dump here now we have copied a piped trace out of the pipe */
-	if (dump_trace) {
-		if (auxtrace_buffer__get_data(buffer, fd)) {
-			arm_spe_dump_event(spe, buffer->data,
-					     buffer->size);
-			auxtrace_buffer__put_data(buffer);
+		if (perf_data__is_pipe(session->data)) {
+			data_offset = 0;
+		} else {
+			data_offset = lseek(fd, 0, SEEK_CUR);
+			if (data_offset == -1)
+				return -errno;
+		}
+
+		err = auxtrace_queues__add_event(&spe->queues, session, event,
+				data_offset, &buffer);
+		if (err)
+			return err;
+
+		/* Dump here now we have copied a piped trace out of the pipe */
+		if (dump_trace) {
+			if (auxtrace_buffer__get_data(buffer, fd)) {
+				arm_spe_dump_event(spe, buffer->data,
+						buffer->size);
+				auxtrace_buffer__put_data(buffer);
+			}
 		}
 	}
 
@@ -139,7 +623,25 @@ static int arm_spe_process_auxtrace_event(struct perf_session *session,
 static int arm_spe_flush(struct perf_session *session __maybe_unused,
 			 struct perf_tool *tool __maybe_unused)
 {
-	return 0;
+	struct arm_spe *spe = container_of(session->auxtrace, struct arm_spe,
+			auxtrace);
+	int ret;
+
+	if (dump_trace)
+		return 0;
+
+	if (!tool->ordered_events)
+		return -EINVAL;
+
+	ret = arm_spe__update_queues(spe);
+	if (ret < 0)
+		return ret;
+
+	if (spe->timeless_decoding)
+		return arm_spe_process_timeless_queues(spe, -1,
+				MAX_TIMESTAMP - 1);
+
+	return arm_spe_process_queues(spe, MAX_TIMESTAMP);
 }
 
 static void arm_spe_free_queue(void *priv)
@@ -148,6 +650,9 @@ static void arm_spe_free_queue(void *priv)
 
 	if (!speq)
 		return;
+	thread__zput(speq->thread);
+	arm_spe_decoder_free(speq->decoder);
+	zfree(&speq->event_buf);
 	free(speq);
 }
 
@@ -188,6 +693,149 @@ static void arm_spe_print_info(__u64 *arr)
 	fprintf(stdout, arm_spe_info_fmts[ARM_SPE_PMU_TYPE], arr[ARM_SPE_PMU_TYPE]);
 }
 
+struct arm_spe_synth {
+	struct perf_tool dummy_tool;
+	struct perf_session *session;
+};
+
+static int arm_spe_event_synth(struct perf_tool *tool,
+			       union perf_event *event,
+			       struct perf_sample *sample __maybe_unused,
+			       struct machine *machine __maybe_unused)
+{
+	struct arm_spe_synth *arm_spe_synth =
+		      container_of(tool, struct arm_spe_synth, dummy_tool);
+
+	return perf_session__deliver_synth_event(arm_spe_synth->session,
+						 event, NULL);
+}
+
+static int arm_spe_synth_event(struct perf_session *session,
+			       struct perf_event_attr *attr, u64 id)
+{
+	struct arm_spe_synth arm_spe_synth;
+
+	memset(&arm_spe_synth, 0, sizeof(struct arm_spe_synth));
+	arm_spe_synth.session = session;
+
+	return perf_event__synthesize_attr(&arm_spe_synth.dummy_tool, attr, 1,
+					   &id, arm_spe_event_synth);
+}
+
+static void arm_spe_set_event_name(struct evlist *evlist, u64 id,
+				    const char *name)
+{
+	struct evsel *evsel;
+
+	evlist__for_each_entry(evlist, evsel) {
+		if (evsel->core.id && evsel->core.id[0] == id) {
+			if (evsel->name)
+				zfree(&evsel->name);
+			evsel->name = strdup(name);
+			break;
+		}
+	}
+}
+
+static int
+arm_spe_synth_events(struct arm_spe *spe, struct perf_session *session)
+{
+	struct evlist *evlist = session->evlist;
+	struct evsel *evsel;
+	struct perf_event_attr attr;
+	bool found = false;
+	u64 id;
+	int err;
+
+	evlist__for_each_entry(evlist, evsel) {
+		if (evsel->core.attr.type == spe->pmu_type) {
+			found = true;
+			break;
+		}
+	}
+
+	if (!found) {
+		pr_debug("No selected events with CoreSight Trace data\n");
+		return 0;
+	}
+
+	memset(&attr, 0, sizeof(struct perf_event_attr));
+	attr.size = sizeof(struct perf_event_attr);
+	attr.type = PERF_TYPE_HARDWARE;
+	attr.sample_type = evsel->core.attr.sample_type & PERF_SAMPLE_MASK;
+	attr.sample_type |= PERF_SAMPLE_IP | PERF_SAMPLE_TID |
+		PERF_SAMPLE_PERIOD;
+	if (spe->timeless_decoding)
+		attr.sample_type &= ~(u64)PERF_SAMPLE_TIME;
+	else
+		attr.sample_type |= PERF_SAMPLE_TIME;
+
+	attr.exclude_user = evsel->core.attr.exclude_user;
+	attr.exclude_kernel = evsel->core.attr.exclude_kernel;
+	attr.exclude_hv = evsel->core.attr.exclude_hv;
+	attr.exclude_host = evsel->core.attr.exclude_host;
+	attr.exclude_guest = evsel->core.attr.exclude_guest;
+	attr.sample_id_all = evsel->core.attr.sample_id_all;
+	attr.read_format = evsel->core.attr.read_format;
+
+	/* create new id val to be a fixed offset from evsel id */
+	id = evsel->core.id[0] + 1000000000;
+
+	if (!id)
+		id = 1;
+
+	/* spe events set */
+	if (spe->synth_opts.llc_miss) {
+		spe->sample_llc_miss = true;
+
+		/* llc-miss */
+		err = arm_spe_synth_event(session, &attr, id);
+		if (err)
+			return err;
+		spe->llc_miss_id = id;
+		arm_spe_set_event_name(evlist, id, "llc-miss");
+		id += 1;
+	}
+
+	if (spe->synth_opts.tlb_miss) {
+		spe->sample_tlb_miss = true;
+
+		/* tlb-miss */
+		err = arm_spe_synth_event(session, &attr, id);
+		if (err)
+			return err;
+		spe->tlb_miss_id = id;
+		arm_spe_set_event_name(evlist, id, "tlb-miss");
+		id += 1;
+	}
+
+	if (spe->synth_opts.branches) {
+		spe->sample_branch_miss = true;
+
+		/* branch-miss */
+		err = arm_spe_synth_event(session, &attr, id);
+		if (err)
+			return err;
+		spe->branch_miss_id = id;
+		arm_spe_set_event_name(evlist, id, "branch-miss");
+		id += 1;
+	}
+
+	if (spe->synth_opts.remote_access) {
+		spe->sample_remote_access = true;
+
+		/* remote-access */
+		err = arm_spe_synth_event(session, &attr, id);
+		if (err)
+			return err;
+		spe->remote_access_id = id;
+		arm_spe_set_event_name(evlist, id, "remote-access");
+		id += 1;
+	}
+
+	return 0;
+}
+
 int arm_spe_process_auxtrace_info(union perf_event *event,
 				  struct perf_session *session)
 {
@@ -213,6 +861,7 @@ int arm_spe_process_auxtrace_info(union perf_event *event,
 	spe->auxtrace_type = auxtrace_info->type;
 	spe->pmu_type = auxtrace_info->priv[ARM_SPE_PMU_TYPE];
 
+	spe->timeless_decoding = arm_spe__is_timeless_decoding(spe);
 	spe->auxtrace.process_event = arm_spe_process_event;
 	spe->auxtrace.process_auxtrace_event = arm_spe_process_auxtrace_event;
 	spe->auxtrace.flush_events = arm_spe_flush;
@@ -222,8 +871,30 @@ int arm_spe_process_auxtrace_info(union perf_event *event,
 
 	arm_spe_print_info(&auxtrace_info->priv[0]);
 
+	if (dump_trace)
+		return 0;
+
+	if (session->itrace_synth_opts && session->itrace_synth_opts->set)
+		spe->synth_opts = *session->itrace_synth_opts;
+	else
+		itrace_synth_opts__set_default(&spe->synth_opts, false);
+
+	err = arm_spe_synth_events(spe, session);
+	if (err)
+		goto err_free_queues;
+
+	err = auxtrace_queues__process_index(&spe->queues, session);
+	if (err)
+		goto err_free_queues;
+
+	if (spe->queues.populated)
+		spe->data_queued = true;
+
 	return 0;
 
+err_free_queues:
+	auxtrace_queues__free(&spe->queues);
+	session->auxtrace = NULL;
 err_free:
 	free(spe);
 	return err;
diff --git a/tools/perf/util/auxtrace.c b/tools/perf/util/auxtrace.c
index eb087e7df6f4..2901b07a9293 100644
--- a/tools/perf/util/auxtrace.c
+++ b/tools/perf/util/auxtrace.c
@@ -1279,6 +1279,10 @@ void itrace_synth_opts__set_default(struct itrace_synth_opts *synth_opts,
 	synth_opts->pwr_events = true;
 	synth_opts->other_events = true;
 	synth_opts->errors = true;
+	synth_opts->llc_miss = true;
+	synth_opts->tlb_miss = true;
+	synth_opts->remote_access = true;
+
 	if (no_sample) {
 		synth_opts->period_type = PERF_ITRACE_PERIOD_INSTRUCTIONS;
 		synth_opts->period = 1;
@@ -1431,6 +1435,15 @@ int itrace_parse_synth_opts(const struct option *opt, const char *str,
 				goto out_err;
 			p = endptr;
 			break;
+		case 'm':
+			synth_opts->llc_miss = true;
+			break;
+		case 't':
+			synth_opts->tlb_miss = true;
+			break;
+		case 'a':
+			synth_opts->remote_access = true;
+			break;
 		case ' ':
 		case ',':
 			break;
diff --git a/tools/perf/util/auxtrace.h b/tools/perf/util/auxtrace.h
index 749d72cd9c7b..80617b0d044d 100644
--- a/tools/perf/util/auxtrace.h
+++ b/tools/perf/util/auxtrace.h
@@ -60,7 +60,7 @@ enum itrace_period_type {
  * @inject: indicates the event (not just the sample) must be fully synthesized
  *          because 'perf inject' will write it out
  * @instructions: whether to synthesize 'instructions' events
- * @branches: whether to synthesize 'branches' events
+ * @branches: whether to synthesize 'branches' events (branch misses only on Arm)
  * @transactions: whether to synthesize events for transactions
  * @ptwrites: whether to synthesize events for ptwrites
  * @pwr_events: whether to synthesize power events
@@ -74,6 +74,9 @@ enum itrace_period_type {
  * @callchain: add callchain to 'instructions' events
  * @thread_stack: feed branches to the thread_stack
  * @last_branch: add branch context to 'instruction' events
+ * @llc_miss: whether to synthesize last level cache miss events
+ * @tlb_miss: whether to synthesize TLB miss events
+ * @remote_access: whether to synthesize Remote access events
  * @callchain_sz: maximum callchain size
  * @last_branch_sz: branch context size
  * @period: 'instructions' events period
@@ -101,6 +104,9 @@ struct itrace_synth_opts {
 	bool			callchain;
 	bool			thread_stack;
 	bool			last_branch;
+	bool			llc_miss;
+	bool			tlb_miss;
+	bool			remote_access;
 	unsigned int		callchain_sz;
 	unsigned int		last_branch_sz;
 	unsigned long long	period;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
