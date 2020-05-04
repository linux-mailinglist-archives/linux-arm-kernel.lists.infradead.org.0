Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D05EB1C38B4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 13:57:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QG98IpJr3K4Um0VC5q5cwgKtAV+mzhOOWSWvPKfpLYk=; b=Y1xf856x33BGLRwaNxd9ByyTjG
	ddHomBOnp98bzpfqU548SYvKXecN6CN3DzjXaQ6EfaJdFptVyQtjXnrdyzowVDh6O+1LReqvQ8ChR
	zoqeMlKmMG5qr3UfIXOIo2o10DHCDTz0FTmX6uTqCE+o4/Lc+fqD7dRo/59H+QeIM4UMtC1jgE7cy
	gsWrSunc4+FqSF0gXXCLzoNdZHhLV2JShDFlsacDtjx5rBSITOW2Rkxa0rg9C+dc/ixTyIJ+tt7q3
	ZbX0TzWfccmUUp25Z2xLvixADItVdCs8n0y9oPlcui9rI+cQ2gvqQM9xFsyy26ZTYarnXgT3yLZCJ
	7XcTK1Fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVZj6-0003aE-FU; Mon, 04 May 2020 11:57:36 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVZif-0003Mx-3E
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 11:57:16 +0000
Received: by mail-pj1-x1041.google.com with SMTP id a5so3670207pjh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 May 2020 04:57:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=dDMdhA1J/PXwJ7cytk+Gd2ae/h9pbnoEOEFHw9kxEcI=;
 b=Fr6a0fW5PVndjmkLW5ozKqykneOiyZm0NrNczIhVo404fal7ul4sp+xwnpJYCi6/Tz
 O31iweNvNkKRi5rGjRLnGh4p+C1Q9NTFyCqElGMwYbrXJi3mBZpMH3nJ5/SKjviI+3k9
 DdPRkUdF4eVKiFqP0fC1DqwPVyEnO5DXOsEgfoXCxikplZw9EJ+be8AQ1O1UJiiJP8of
 oVQarPtyyxQ9zLHYqlk277JNxlGuMenf64moElUbDGWrrQX1DXIH5xsyVZCGeBiqFgJh
 UDCtWZfRkq+2q0+bPj7wqVuB8aQmCawDNqWVgEN3vCcHMZzrIJmr7+I7rERwZ4tIbRc+
 4lCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=dDMdhA1J/PXwJ7cytk+Gd2ae/h9pbnoEOEFHw9kxEcI=;
 b=nfOn1ohLtkg4w0DqeYjH1+cMuJ8dQZCj0AmtYXGA+r53ZgXZLmdLOhlxU8qiwYlNTy
 CCEjt6k+Vn4S4tVGrzj3tG64GZPc3SZpTmOde6OGf36/TC67v+OpS36gpEnaGNfQ705g
 q5JOAE0tK5sm2GbMaVzBIjg9/WlCtfa+zXwZL7npZXWl88ihDVhEsoIyj+p6QjopwF3h
 8IOo7ZIoVZnIEURELwgWY3/zeM+sagnUD28rVwHVY2y3U3tEIhsWyH9F4XtqYsKWoOMd
 k7HxSNLA9qHT+j+gJTy7BTFH2ZClID+DaJqL1s8lpSrMTYXx5xlAfAXY/dQ2Z2XI+OX/
 mm3g==
X-Gm-Message-State: AGi0PuY0dDi3V8QuTDKrJHo0eXrUXZHWo77hWHgXkFqihFTDgFM4EKpH
 qhn8ezpm0QBeCrvWdLYeBPUaJA==
X-Google-Smtp-Source: APiQypIhRdu2Cs4oPIFo/TuWkAU3/LyBEC8XZmLO3XiXFNY5FcwMxSvUcNkgWbJ9LLoN9spIAvMWbg==
X-Received: by 2002:a17:902:76c6:: with SMTP id
 j6mr15333498plt.342.1588593427450; 
 Mon, 04 May 2020 04:57:07 -0700 (PDT)
Received: from localhost ([2400:8904::f03c:91ff:fe8a:bbe4])
 by smtp.gmail.com with ESMTPSA id b12sm8419166pfd.165.2020.05.04.04.57.05
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 04 May 2020 04:57:07 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>, Jiri Olsa <jolsa@redhat.com>,
 Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 James Clark <james.clark@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Ingo Molnar <mingo@redhat.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Al Grant <al.grant@arm.com>, Namhyung Kim <namhyung@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Mike Leach <mike.leach@linaro.org>
Subject: [PATCH v7 3/3] perf arm-spe: Support synthetic events
Date: Mon,  4 May 2020 19:56:25 +0800
Message-Id: <20200504115625.12589-4-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200504115625.12589-1-leo.yan@linaro.org>
References: <20200504115625.12589-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_045709_246045_8DCCFE4F 
X-CRM114-Status: GOOD (  18.86  )
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [2400:8904:0:0:f03c:91ff:fe8a:bbe4 listed in] [zen.spamhaus.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Tan Xiaojun <tanxiaojun@huawei.com>, Leo Yan <leo.yan@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tan Xiaojun <tanxiaojun@huawei.com>

After the commit ffd3d18c20b8 ("perf tools: Add ARM Statistical
Profiling Extensions (SPE) support") has been merged, it supports to
output raw data with option "--dump-raw-trace".  However, it misses
for support synthetic events so cannot output any statistical info.

This patch is to improve the "perf report" support for ARM SPE for four
types synthetic events:

  First level cache synthetic events, including L1 data cache accessing
  and missing events;
  Last level cache synthetic events, including last level cache
  accessing and missing events;
  TLB synthetic events, including TLB accessing and missing events;
  Remote access events, which is used to account load/store operations
  caused to another socket.

Example usage:

$ perf record -c 1024 -e arm_spe_0/branch_filter=1,ts_enable=1,pct_enable=1,pa_enable=1,load_filter=1,jitter=1,store_filter=1,min_latency=0/ dd if=/dev/zero of=/dev/null count=10000
$ perf report --stdio

  # Samples: 59  of event 'l1d-miss'
  # Event count (approx.): 59
  #
  # Children      Self  Command  Shared Object      Symbol
  # ........  ........  .......  .................  ..................................
  #
      23.73%    23.73%  dd       [kernel.kallsyms]  [k] perf_iterate_ctx.constprop.135
      20.34%    20.34%  dd       [kernel.kallsyms]  [k] filemap_map_pages
       5.08%     5.08%  dd       [kernel.kallsyms]  [k] perf_event_mmap
       5.08%     5.08%  dd       [kernel.kallsyms]  [k] unlock_page_memcg
       5.08%     5.08%  dd       [kernel.kallsyms]  [k] unmap_page_range
       3.39%     3.39%  dd       [kernel.kallsyms]  [k] PageHuge
       3.39%     3.39%  dd       [kernel.kallsyms]  [k] release_pages
       3.39%     3.39%  dd       ld-2.28.so         [.] 0x0000000000008b5c
       1.69%     1.69%  dd       [kernel.kallsyms]  [k] __alloc_fd
       [...]

  # Samples: 3K of event 'l1d-access'
  # Event count (approx.): 3980
  #
  # Children      Self  Command  Shared Object      Symbol
  # ........  ........  .......  .................  ......................................
  #
      26.98%    26.98%  dd       [kernel.kallsyms]  [k] ret_to_user
      10.53%    10.53%  dd       [kernel.kallsyms]  [k] fsnotify
       7.51%     7.51%  dd       [kernel.kallsyms]  [k] new_sync_read
       4.57%     4.57%  dd       [kernel.kallsyms]  [k] vfs_read
       4.35%     4.35%  dd       [kernel.kallsyms]  [k] vfs_write
       3.69%     3.69%  dd       [kernel.kallsyms]  [k] __fget_light
       3.69%     3.69%  dd       [kernel.kallsyms]  [k] rw_verify_area
       3.44%     3.44%  dd       [kernel.kallsyms]  [k] security_file_permission
       2.76%     2.76%  dd       [kernel.kallsyms]  [k] __fsnotify_parent
       2.44%     2.44%  dd       [kernel.kallsyms]  [k] ksys_write
       2.24%     2.24%  dd       [kernel.kallsyms]  [k] iov_iter_zero
       2.19%     2.19%  dd       [kernel.kallsyms]  [k] read_iter_zero
       1.81%     1.81%  dd       dd                 [.] 0x0000000000002960
       1.78%     1.78%  dd       dd                 [.] 0x0000000000002980
       [...]

  # Samples: 35  of event 'llc-miss'
  # Event count (approx.): 35
  #
  # Children      Self  Command  Shared Object      Symbol
  # ........  ........  .......  .................  ...........................
  #
      34.29%    34.29%  dd       [kernel.kallsyms]  [k] filemap_map_pages
       8.57%     8.57%  dd       [kernel.kallsyms]  [k] unlock_page_memcg
       8.57%     8.57%  dd       [kernel.kallsyms]  [k] unmap_page_range
       5.71%     5.71%  dd       [kernel.kallsyms]  [k] PageHuge
       5.71%     5.71%  dd       [kernel.kallsyms]  [k] release_pages
       5.71%     5.71%  dd       ld-2.28.so         [.] 0x0000000000008b5c
       2.86%     2.86%  dd       [kernel.kallsyms]  [k] __queue_work
       2.86%     2.86%  dd       [kernel.kallsyms]  [k] __radix_tree_lookup
       2.86%     2.86%  dd       [kernel.kallsyms]  [k] copy_page
       [...]

  # Samples: 2  of event 'llc-access'
  # Event count (approx.): 2
  #
  # Children      Self  Command  Shared Object      Symbol
  # ........  ........  .......  .................  .............
  #
      50.00%    50.00%  dd       [kernel.kallsyms]  [k] copy_page
      50.00%    50.00%  dd       libc-2.28.so       [.] _dl_addr

  # Samples: 48  of event 'tlb-miss'
  # Event count (approx.): 48
  #
  # Children      Self  Command  Shared Object      Symbol
  # ........  ........  .......  .................  ..................................
  #
      20.83%    20.83%  dd       [kernel.kallsyms]  [k] perf_iterate_ctx.constprop.135
      12.50%    12.50%  dd       [kernel.kallsyms]  [k] __arch_clear_user
      10.42%    10.42%  dd       [kernel.kallsyms]  [k] clear_page
       4.17%     4.17%  dd       [kernel.kallsyms]  [k] copy_page
       4.17%     4.17%  dd       [kernel.kallsyms]  [k] filemap_map_pages
       2.08%     2.08%  dd       [kernel.kallsyms]  [k] __alloc_fd
       2.08%     2.08%  dd       [kernel.kallsyms]  [k] __mod_memcg_state.part.70
       2.08%     2.08%  dd       [kernel.kallsyms]  [k] __queue_work
       2.08%     2.08%  dd       [kernel.kallsyms]  [k] __rcu_read_unlock
       2.08%     2.08%  dd       [kernel.kallsyms]  [k] d_path
       2.08%     2.08%  dd       [kernel.kallsyms]  [k] destroy_inode
       2.08%     2.08%  dd       [kernel.kallsyms]  [k] do_dentry_open
       [...]

  # Samples: 9K of event 'tlb-access'
  # Event count (approx.): 9573
  #
  # Children      Self  Command  Shared Object      Symbol
  # ........  ........  .......  .................  ......................................
  #
      25.79%    25.79%  dd       [kernel.kallsyms]  [k] __arch_clear_user
      11.22%    11.22%  dd       [kernel.kallsyms]  [k] ret_to_user
       8.56%     8.56%  dd       [kernel.kallsyms]  [k] fsnotify
       4.06%     4.06%  dd       [kernel.kallsyms]  [k] new_sync_read
       3.67%     3.67%  dd       [kernel.kallsyms]  [k] el0_svc_common.constprop.2
       3.04%     3.04%  dd       [kernel.kallsyms]  [k] __fsnotify_parent
       2.90%     2.90%  dd       [kernel.kallsyms]  [k] vfs_write
       2.82%     2.82%  dd       [kernel.kallsyms]  [k] vfs_read
       2.52%     2.52%  dd       libc-2.28.so       [.] write
       2.26%     2.26%  dd       [kernel.kallsyms]  [k] security_file_permission
       2.08%     2.08%  dd       [kernel.kallsyms]  [k] ksys_write
       1.96%     1.96%  dd       [kernel.kallsyms]  [k] rw_verify_area
       1.95%     1.95%  dd       [kernel.kallsyms]  [k] read_iter_zero
       [...]

  # Samples: 9  of event 'branch-miss'
  # Event count (approx.): 9
  #
  # Children      Self  Command  Shared Object      Symbol
  # ........  ........  .......  .................  .........................
  #
      22.22%    22.22%  dd       libc-2.28.so       [.] _dl_addr
      11.11%    11.11%  dd       [kernel.kallsyms]  [k] __arch_clear_user
      11.11%    11.11%  dd       [kernel.kallsyms]  [k] __arch_copy_from_user
      11.11%    11.11%  dd       [kernel.kallsyms]  [k] __dentry_kill
      11.11%    11.11%  dd       [kernel.kallsyms]  [k] __efistub_memcpy
      11.11%    11.11%  dd       ld-2.28.so         [.] 0x0000000000012b7c
      11.11%    11.11%  dd       libc-2.28.so       [.] 0x000000000002a980
      11.11%    11.11%  dd       libc-2.28.so       [.] 0x0000000000083340

  # Samples: 29  of event 'remote-access'
  # Event count (approx.): 29
  #
  # Children      Self  Command  Shared Object      Symbol
  # ........  ........  .......  .................  ...........................
  #
      41.38%    41.38%  dd       [kernel.kallsyms]  [k] filemap_map_pages
      10.34%    10.34%  dd       [kernel.kallsyms]  [k] unlock_page_memcg
      10.34%    10.34%  dd       [kernel.kallsyms]  [k] unmap_page_range
       6.90%     6.90%  dd       [kernel.kallsyms]  [k] release_pages
       3.45%     3.45%  dd       [kernel.kallsyms]  [k] PageHuge
       3.45%     3.45%  dd       [kernel.kallsyms]  [k] __queue_work
       3.45%     3.45%  dd       [kernel.kallsyms]  [k] page_add_file_rmap
       3.45%     3.45%  dd       [kernel.kallsyms]  [k] page_counter_try_charge
       3.45%     3.45%  dd       [kernel.kallsyms]  [k] page_remove_rmap
       3.45%     3.45%  dd       [kernel.kallsyms]  [k] xas_start
       3.45%     3.45%  dd       ld-2.28.so         [.] 0x0000000000002a1c
       3.45%     3.45%  dd       ld-2.28.so         [.] 0x0000000000008b5c
       3.45%     3.45%  dd       ld-2.28.so         [.] 0x00000000000093cc

Signed-off-by: Tan Xiaojun <tanxiaojun@huawei.com>
Signed-off-by: James Clark <james.clark@arm.com>
Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 tools/perf/util/arm-spe-decoder/Build         |   2 +-
 .../util/arm-spe-decoder/arm-spe-decoder.c    | 219 +++++
 .../util/arm-spe-decoder/arm-spe-decoder.h    |  82 ++
 .../arm-spe-decoder/arm-spe-pkt-decoder.h     |  16 +
 tools/perf/util/arm-spe.c                     | 821 +++++++++++++++++-
 5 files changed, 1097 insertions(+), 43 deletions(-)
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
index 000000000000..302a14d0aca9
--- /dev/null
+++ b/tools/perf/util/arm-spe-decoder/arm-spe-decoder.c
@@ -0,0 +1,219 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * arm_spe_decoder.c: ARM SPE support
+ */
+
+#ifndef _GNU_SOURCE
+#define _GNU_SOURCE
+#endif
+#include <errno.h>
+#include <inttypes.h>
+#include <stdbool.h>
+#include <string.h>
+#include <stdint.h>
+#include <stdlib.h>
+#include <linux/compiler.h>
+#include <linux/zalloc.h>
+
+#include "../auxtrace.h"
+#include "../debug.h"
+#include "../util.h"
+
+#include "arm-spe-decoder.h"
+
+#ifndef BIT
+#define BIT(n)		(1UL << (n))
+#endif
+
+static u64 arm_spe_calc_ip(int index, u64 payload)
+{
+	u8 *addr = (u8 *)&payload;
+	int ns, el;
+
+	/* Instruction virtual address or Branch target address */
+	if (index == SPE_ADDR_PKT_HDR_INDEX_INS ||
+	    index == SPE_ADDR_PKT_HDR_INDEX_BRANCH) {
+		ns = addr[7] & SPE_ADDR_PKT_NS;
+		el = (addr[7] & SPE_ADDR_PKT_EL_MASK) >> SPE_ADDR_PKT_EL_OFFSET;
+
+		/* Fill highest byte for EL1 or EL2 (VHE) mode */
+		if (ns && (el == SPE_ADDR_PKT_EL1 || el == SPE_ADDR_PKT_EL2))
+			addr[7] = 0xff;
+		/* Clean highest byte for other cases */
+		else
+			addr[7] = 0x0;
+
+	/* Data access virtual address */
+	} else if (index == SPE_ADDR_PKT_HDR_INDEX_DATA_VIRT) {
+
+		/* Fill highest byte if bits [48..55] is 0xff */
+		if (addr[6] == 0xff)
+			addr[7] = 0xff;
+		/* Otherwise, cleanup tags */
+		else
+			addr[7] = 0x0;
+
+	/* Data access physical address */
+	} else if (index == SPE_ADDR_PKT_HDR_INDEX_DATA_PHYS) {
+		/* Cleanup byte 7 */
+		addr[7] = 0x0;
+	} else {
+		pr_err("unsupported address packet index: 0x%x\n", index);
+	}
+
+	return payload;
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
+	decoder->get_trace = params->get_trace;
+	decoder->data = params->data;
+
+	return decoder;
+}
+
+void arm_spe_decoder_free(struct arm_spe_decoder *decoder)
+{
+	free(decoder);
+}
+
+static int arm_spe_get_data(struct arm_spe_decoder *decoder)
+{
+	struct arm_spe_buffer buffer = { .buf = 0, };
+	int ret;
+
+	pr_debug("Getting more data\n");
+	ret = decoder->get_trace(&buffer, decoder->data);
+	if (ret < 0)
+		return ret;
+
+	decoder->buf = buffer.buf;
+	decoder->len = buffer.len;
+
+	if (!decoder->len)
+		pr_debug("No more data\n");
+
+	return decoder->len;
+}
+
+static int arm_spe_get_next_packet(struct arm_spe_decoder *decoder)
+{
+	int ret;
+
+	do {
+		if (!decoder->len) {
+			ret = arm_spe_get_data(decoder);
+
+			/* Failed to read out trace data */
+			if (ret <= 0)
+				return ret;
+		}
+
+		ret = arm_spe_get_packet(decoder->buf, decoder->len,
+					 &decoder->packet);
+		if (ret <= 0) {
+			/* Move forward for 1 byte */
+			decoder->buf += 1;
+			decoder->len -= 1;
+			return -EBADMSG;
+		}
+
+		decoder->buf += ret;
+		decoder->len -= ret;
+	} while (decoder->packet.type == ARM_SPE_PAD);
+
+	return 1;
+}
+
+static int arm_spe_read_record(struct arm_spe_decoder *decoder)
+{
+	int err;
+	int idx;
+	u64 payload, ip;
+
+	memset(&decoder->record, 0x0, sizeof(decoder->record));
+
+	while (1) {
+		err = arm_spe_get_next_packet(decoder);
+		if (err <= 0)
+			return err;
+
+		idx = decoder->packet.index;
+		payload = decoder->packet.payload;
+
+		switch (decoder->packet.type) {
+		case ARM_SPE_TIMESTAMP:
+			decoder->record.timestamp = payload;
+			return 1;
+		case ARM_SPE_END:
+			return 1;
+		case ARM_SPE_ADDRESS:
+			ip = arm_spe_calc_ip(idx, payload);
+			if (idx == SPE_ADDR_PKT_HDR_INDEX_INS)
+				decoder->record.from_ip = ip;
+			else if (idx == SPE_ADDR_PKT_HDR_INDEX_BRANCH)
+				decoder->record.to_ip = ip;
+			break;
+		case ARM_SPE_COUNTER:
+			break;
+		case ARM_SPE_CONTEXT:
+			break;
+		case ARM_SPE_OP_TYPE:
+			break;
+		case ARM_SPE_EVENTS:
+			if (payload & BIT(EV_L1D_REFILL))
+				decoder->record.type |= ARM_SPE_L1D_MISS;
+
+			if (payload & BIT(EV_L1D_ACCESS))
+				decoder->record.type |= ARM_SPE_L1D_ACCESS;
+
+			if (payload & BIT(EV_TLB_WALK))
+				decoder->record.type |= ARM_SPE_TLB_MISS;
+
+			if (payload & BIT(EV_TLB_ACCESS))
+				decoder->record.type |= ARM_SPE_TLB_ACCESS;
+
+			if ((idx == 1 || idx == 2 || idx == 3) &&
+			    (payload & BIT(EV_LLC_MISS)))
+				decoder->record.type |= ARM_SPE_LLC_MISS;
+
+			if ((idx == 1 || idx == 2 || idx == 3) &&
+			    (payload & BIT(EV_LLC_ACCESS)))
+				decoder->record.type |= ARM_SPE_LLC_ACCESS;
+
+			if ((idx == 1 || idx == 2 || idx == 3) &&
+			    (payload & BIT(EV_REMOTE_ACCESS)))
+				decoder->record.type |= ARM_SPE_REMOTE_ACCESS;
+
+			if (payload & BIT(EV_MISPRED))
+				decoder->record.type |= ARM_SPE_BRANCH_MISS;
+
+			break;
+		case ARM_SPE_DATA_SOURCE:
+			break;
+		case ARM_SPE_BAD:
+			break;
+		case ARM_SPE_PAD:
+			break;
+		default:
+			pr_err("Get packet error!\n");
+			return -1;
+		}
+	}
+
+	return 0;
+}
+
+int arm_spe_decode(struct arm_spe_decoder *decoder)
+{
+	return arm_spe_read_record(decoder);
+}
diff --git a/tools/perf/util/arm-spe-decoder/arm-spe-decoder.h b/tools/perf/util/arm-spe-decoder/arm-spe-decoder.h
new file mode 100644
index 000000000000..a5111a8d4360
--- /dev/null
+++ b/tools/perf/util/arm-spe-decoder/arm-spe-decoder.h
@@ -0,0 +1,82 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * arm_spe_decoder.h: Arm Statistical Profiling Extensions support
+ * Copyright (c) 2019-2020, Arm Ltd.
+ */
+
+#ifndef INCLUDE__ARM_SPE_DECODER_H__
+#define INCLUDE__ARM_SPE_DECODER_H__
+
+#include <stdbool.h>
+#include <stddef.h>
+#include <stdint.h>
+
+#include "arm-spe-pkt-decoder.h"
+
+enum arm_spe_events {
+	EV_EXCEPTION_GEN	= 0,
+	EV_RETIRED		= 1,
+	EV_L1D_ACCESS		= 2,
+	EV_L1D_REFILL		= 3,
+	EV_TLB_ACCESS		= 4,
+	EV_TLB_WALK		= 5,
+	EV_NOT_TAKEN		= 6,
+	EV_MISPRED		= 7,
+	EV_LLC_ACCESS		= 8,
+	EV_LLC_MISS		= 9,
+	EV_REMOTE_ACCESS	= 10,
+	EV_ALIGNMENT		= 11,
+	EV_PARTIAL_PREDICATE	= 17,
+	EV_EMPTY_PREDICATE	= 18,
+};
+
+enum arm_spe_sample_type {
+	ARM_SPE_L1D_ACCESS	= 1 << 0,
+	ARM_SPE_L1D_MISS	= 1 << 1,
+	ARM_SPE_LLC_ACCESS	= 1 << 2,
+	ARM_SPE_LLC_MISS	= 1 << 3,
+	ARM_SPE_TLB_ACCESS	= 1 << 4,
+	ARM_SPE_TLB_MISS	= 1 << 5,
+	ARM_SPE_BRANCH_MISS	= 1 << 6,
+	ARM_SPE_REMOTE_ACCESS	= 1 << 7,
+};
+
+struct arm_spe_record {
+	enum arm_spe_sample_type type;
+	int err;
+	u64 from_ip;
+	u64 to_ip;
+	u64 timestamp;
+};
+
+struct arm_spe_insn;
+
+struct arm_spe_buffer {
+	const unsigned char *buf;
+	size_t len;
+	u64 offset;
+	u64 trace_nr;
+};
+
+struct arm_spe_params {
+	int (*get_trace)(struct arm_spe_buffer *buffer, void *data);
+	void *data;
+};
+
+struct arm_spe_decoder {
+	int (*get_trace)(struct arm_spe_buffer *buffer, void *data);
+	void *data;
+	struct arm_spe_record record;
+
+	const unsigned char *buf;
+	size_t len;
+
+	struct arm_spe_pkt packet;
+};
+
+struct arm_spe_decoder *arm_spe_decoder_new(struct arm_spe_params *params);
+void arm_spe_decoder_free(struct arm_spe_decoder *decoder);
+
+int arm_spe_decode(struct arm_spe_decoder *decoder);
+
+#endif
diff --git a/tools/perf/util/arm-spe-decoder/arm-spe-pkt-decoder.h b/tools/perf/util/arm-spe-decoder/arm-spe-pkt-decoder.h
index d786ef65113f..4c870521b8eb 100644
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
@@ -34,6 +36,20 @@ struct arm_spe_pkt {
 	uint64_t		payload;
 };
 
+#define SPE_ADDR_PKT_HDR_INDEX_INS		(0x0)
+#define SPE_ADDR_PKT_HDR_INDEX_BRANCH		(0x1)
+#define SPE_ADDR_PKT_HDR_INDEX_DATA_VIRT	(0x2)
+#define SPE_ADDR_PKT_HDR_INDEX_DATA_PHYS	(0x3)
+
+#define SPE_ADDR_PKT_NS				BIT(7)
+#define SPE_ADDR_PKT_CH				BIT(6)
+#define SPE_ADDR_PKT_EL_OFFSET			(5)
+#define SPE_ADDR_PKT_EL_MASK			(0x3 << SPE_ADDR_PKT_EL_OFFSET)
+#define SPE_ADDR_PKT_EL0			(0)
+#define SPE_ADDR_PKT_EL1			(1)
+#define SPE_ADDR_PKT_EL2			(2)
+#define SPE_ADDR_PKT_EL3			(3)
+
 const char *arm_spe_pkt_name(enum arm_spe_pkt_type);
 
 int arm_spe_get_packet(const unsigned char *buf, size_t len,
diff --git a/tools/perf/util/arm-spe.c b/tools/perf/util/arm-spe.c
index 235de3d0b062..3882a5360ada 100644
--- a/tools/perf/util/arm-spe.c
+++ b/tools/perf/util/arm-spe.c
@@ -4,46 +4,85 @@
  * Copyright (c) 2017-2018, Arm Ltd.
  */
 
+#include <byteswap.h>
 #include <endian.h>
 #include <errno.h>
-#include <byteswap.h>
 #include <inttypes.h>
-#include <unistd.h>
-#include <stdlib.h>
-#include <linux/kernel.h>
-#include <linux/types.h>
 #include <linux/bitops.h>
+#include <linux/kernel.h>
 #include <linux/log2.h>
+#include <linux/types.h>
 #include <linux/zalloc.h>
+#include <stdlib.h>
+#include <unistd.h>
 
+#include "auxtrace.h"
 #include "color.h"
+#include "debug.h"
+#include "evlist.h"
 #include "evsel.h"
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
+	struct itrace_synth_opts        synth_opts;
 	u32				auxtrace_type;
 	struct perf_session		*session;
 	struct machine			*machine;
 	u32				pmu_type;
+
+	u8				timeless_decoding;
+	u8				data_queued;
+
+	u8				sample_flc;
+	u8				sample_llc;
+	u8				sample_tlb;
+	u8				sample_branch;
+	u8				sample_remote_access;
+
+	u64				l1d_miss_id;
+	u64				l1d_access_id;
+	u64				llc_miss_id;
+	u64				llc_access_id;
+	u64				tlb_miss_id;
+	u64				tlb_access_id;
+	u64				branch_miss_id;
+	u64				remote_access_id;
+
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
+	struct arm_spe_decoder		*decoder;
+	u64				time;
+	u64				timestamp;
+	struct thread			*thread;
 };
 
 static void arm_spe_dump(struct arm_spe *spe __maybe_unused,
@@ -92,44 +131,520 @@ static void arm_spe_dump_event(struct arm_spe *spe, unsigned char *buf,
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
+	b->len = buffer->size;
+	b->buf = buffer->data;
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
+static inline u8 arm_spe_cpumode(struct arm_spe *spe, u64 ip)
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
+	struct arm_spe_record *record = &speq->decoder->record;
+
+	if (!spe->timeless_decoding)
+		sample->time = speq->timestamp;
+
+	sample->ip = record->from_ip;
+	sample->cpumode = arm_spe_cpumode(spe, sample->ip);
+	sample->pid = speq->pid;
+	sample->tid = speq->tid;
+	sample->addr = record->to_ip;
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
+	const struct arm_spe_record *record = &speq->decoder->record;
+	struct arm_spe *spe = speq->spe;
+	int err;
+
+	if (spe->sample_flc) {
+		if (record->type & ARM_SPE_L1D_MISS) {
+			err = arm_spe_synth_spe_events_sample(
+					speq, spe->l1d_miss_id);
+			if (err)
+				return err;
+		}
+
+		if (record->type & ARM_SPE_L1D_ACCESS) {
+			err = arm_spe_synth_spe_events_sample(
+					speq, spe->l1d_access_id);
+			if (err)
+				return err;
+		}
+	}
+
+	if (spe->sample_llc) {
+		if (record->type & ARM_SPE_LLC_MISS) {
+			err = arm_spe_synth_spe_events_sample(
+					speq, spe->llc_miss_id);
+			if (err)
+				return err;
+		}
+
+		if (record->type & ARM_SPE_LLC_ACCESS) {
+			err = arm_spe_synth_spe_events_sample(
+					speq, spe->llc_access_id);
+			if (err)
+				return err;
+		}
+	}
+
+	if (spe->sample_tlb) {
+		if (record->type & ARM_SPE_TLB_MISS) {
+			err = arm_spe_synth_spe_events_sample(
+					speq, spe->tlb_miss_id);
+			if (err)
+				return err;
+		}
+
+		if (record->type & ARM_SPE_TLB_ACCESS) {
+			err = arm_spe_synth_spe_events_sample(
+					speq, spe->tlb_access_id);
+			if (err)
+				return err;
+		}
+	}
+
+	if (spe->sample_branch && (record->type & ARM_SPE_BRANCH_MISS)) {
+		err = arm_spe_synth_spe_events_sample(speq,
+						      spe->branch_miss_id);
+		if (err)
+			return err;
+	}
+
+	if (spe->sample_remote_access &&
+	    (record->type & ARM_SPE_REMOTE_ACCESS)) {
+		err = arm_spe_synth_spe_events_sample(speq,
+						      spe->remote_access_id);
+		if (err)
+			return err;
+	}
+
+	return 0;
+}
+
+static int arm_spe_run_decoder(struct arm_spe_queue *speq, u64 *timestamp)
+{
+	struct arm_spe *spe = speq->spe;
+	int ret;
+
+	if (!spe->kernel_start)
+		spe->kernel_start = machine__kernel_start(spe->machine);
+
+	while (1) {
+		ret = arm_spe_decode(speq->decoder);
+		if (!ret) {
+			pr_debug("No data or all data has been processed.\n");
+			return 1;
+		}
+
+		/*
+		 * Error is detected when decode SPE trace data, continue to
+		 * the next trace data and find out more records.
+		 */
+		if (ret < 0)
+			continue;
+
+		ret = arm_spe_sample(speq);
+		if (ret)
+			return ret;
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
+	struct arm_spe_record *record;
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
+		int ret;
+
+		if (spe->timeless_decoding)
+			return 0;
+
+retry:
+		ret = arm_spe_decode(speq->decoder);
+
+		if (!ret)
+			return 0;
+
+		if (ret < 0)
+			goto retry;
+
+		record = &speq->decoder->record;
+
+		speq->timestamp = record->timestamp;
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
+{
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
 {
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
+		pr_err("SPE trace requires ordered events\n");
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
+		if (perf_data__is_pipe(session->data)) {
+			data_offset = 0;
+		} else {
+			data_offset = lseek(fd, 0, SEEK_CUR);
+			if (data_offset == -1)
+				return -errno;
+		}
 
-	/* Dump here now we have copied a piped trace out of the pipe */
-	if (dump_trace) {
-		if (auxtrace_buffer__get_data(buffer, fd)) {
-			arm_spe_dump_event(spe, buffer->data,
-					     buffer->size);
-			auxtrace_buffer__put_data(buffer);
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
 
@@ -139,7 +654,25 @@ static int arm_spe_process_auxtrace_event(struct perf_session *session,
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
@@ -148,6 +681,9 @@ static void arm_spe_free_queue(void *priv)
 
 	if (!speq)
 		return;
+	thread__zput(speq->thread);
+	arm_spe_decoder_free(speq->decoder);
+	zfree(&speq->event_buf);
 	free(speq);
 }
 
@@ -196,11 +732,189 @@ static void arm_spe_print_info(__u64 *arr)
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
+		pr_debug("No selected events with SPE trace data\n");
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
+	if (spe->synth_opts.flc) {
+		spe->sample_flc = true;
+
+		/* Level 1 data cache miss */
+		err = arm_spe_synth_event(session, &attr, id);
+		if (err)
+			return err;
+		spe->l1d_miss_id = id;
+		arm_spe_set_event_name(evlist, id, "l1d-miss");
+		id += 1;
+
+		/* Level 1 data cache access */
+		err = arm_spe_synth_event(session, &attr, id);
+		if (err)
+			return err;
+		spe->l1d_access_id = id;
+		arm_spe_set_event_name(evlist, id, "l1d-access");
+		id += 1;
+	}
+
+	if (spe->synth_opts.llc) {
+		spe->sample_llc = true;
+
+		/* Last level cache miss */
+		err = arm_spe_synth_event(session, &attr, id);
+		if (err)
+			return err;
+		spe->llc_miss_id = id;
+		arm_spe_set_event_name(evlist, id, "llc-miss");
+		id += 1;
+
+		/* Last level cache access */
+		err = arm_spe_synth_event(session, &attr, id);
+		if (err)
+			return err;
+		spe->llc_access_id = id;
+		arm_spe_set_event_name(evlist, id, "llc-access");
+		id += 1;
+	}
+
+	if (spe->synth_opts.tlb) {
+		spe->sample_tlb = true;
+
+		/* TLB miss */
+		err = arm_spe_synth_event(session, &attr, id);
+		if (err)
+			return err;
+		spe->tlb_miss_id = id;
+		arm_spe_set_event_name(evlist, id, "tlb-miss");
+		id += 1;
+
+		/* TLB access */
+		err = arm_spe_synth_event(session, &attr, id);
+		if (err)
+			return err;
+		spe->tlb_access_id = id;
+		arm_spe_set_event_name(evlist, id, "tlb-access");
+		id += 1;
+	}
+
+	if (spe->synth_opts.branches) {
+		spe->sample_branch = true;
+
+		/* Branch miss */
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
+		/* Remote access */
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
 	struct perf_record_auxtrace_info *auxtrace_info = &event->auxtrace_info;
-	size_t min_sz = sizeof(u64) * ARM_SPE_PMU_TYPE;
+	size_t min_sz = sizeof(u64) * ARM_SPE_AUXTRACE_PRIV_MAX;
 	struct arm_spe *spe;
 	int err;
 
@@ -221,6 +935,7 @@ int arm_spe_process_auxtrace_info(union perf_event *event,
 	spe->auxtrace_type = auxtrace_info->type;
 	spe->pmu_type = auxtrace_info->priv[ARM_SPE_PMU_TYPE];
 
+	spe->timeless_decoding = arm_spe__is_timeless_decoding(spe);
 	spe->auxtrace.process_event = arm_spe_process_event;
 	spe->auxtrace.process_auxtrace_event = arm_spe_process_auxtrace_event;
 	spe->auxtrace.flush_events = arm_spe_flush;
@@ -231,8 +946,30 @@ int arm_spe_process_auxtrace_info(union perf_event *event,
 
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
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
