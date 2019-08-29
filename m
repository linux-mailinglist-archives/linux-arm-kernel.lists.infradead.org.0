Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE345A1D72
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 16:44:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ob2UbNHhr02SRfiGdWIEfBJNmBh+fjwTrqtIBcVek6E=; b=DWmNC1X49eQGJn
	bJpE8YRPN/ohzWm50jtdHl8+Id+tye05g9yBsINiX4Kf5OmWgWlcceJcA3NQHp3rd62Y5L+p8XmS5
	kez7wXBJWAOUD8JP2DN4p46gG5HRFLzGV21Cby8Mn7Fs+FIhlROgykGoY8VgnlaDURDbw5DNzjZY+
	1fen7cc2OolHg7K2ecuq1crW42DHKbGTnxelvrPelnZ70alJqdjHALSf/rEHvLq85y7XK61IsqIIZ
	VaT7q/hQyH2wVlrIyGiy81e0SY/Y/aJv34YX2M+HEClutBCm2M41fL5wh581l6/vy/UdrS95y8SO5
	ZzDWq2sOe0zqKH0Z28pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Led-000269-Tr; Thu, 29 Aug 2019 14:44:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Lad-0008KU-AD
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 14:39:57 +0000
Received: from quaco.ghostprotocols.net (unknown [179.97.35.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8AAB823426;
 Thu, 29 Aug 2019 14:39:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567089594;
 bh=TochmD8e7qzqFLR0WCPOK49a7FZE2iB3hCnR623HysY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=MHb+YqYZ+60lmJgO25DJPhW/tocErLs2GmdmguqP7VVgb2yoVFm+Ss3H7x/sALLOf
 4/FlmUVMLsyMTmZaJq6ZCFYOXs6mC4rr04+wn1Th2vyA/im/MpAi1GA8o2LIcpdf0g
 4E53zwssAc8nYmeeHwqANZEajFDENHhKw7gz1dOQ=
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Ingo Molnar <mingo@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH 04/37] perf evsel: Kernel profiling is disallowed only when
 perf_event_paranoid > 1
Date: Thu, 29 Aug 2019 11:38:44 -0300
Message-Id: <20190829143917.29745-5-acme@kernel.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190829143917.29745-1-acme@kernel.org>
References: <20190829143917.29745-1-acme@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_073955_403480_C6B31A63 
X-CRM114-Status: GOOD (  11.59  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Arnaldo Carvalho de Melo <acme@redhat.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki Poulouse <suzuki.poulose@arm.com>, Clark Williams <williams@redhat.com>,
 Alexey Budankov <alexey.budankov@linux.intel.com>,
 Igor Lubashev <ilubashe@akamai.com>, linux-kernel@vger.kernel.org,
 James Morris <jmorris@namei.org>, linux-perf-users@vger.kernel.org,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Peter Zijlstra <peterz@infradead.org>, Jiri Olsa <jolsa@kernel.org>,
 Namhyung Kim <namhyung@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Igor Lubashev <ilubashe@akamai.com>

Perf was too restrictive about sysctl kernel.perf_event_paranoid. The
kernel only disallows profiling when perf_event_paranoid > 1. Make perf
do the same.

Committer testing:

For a non-root user:

  $ id
  uid=1000(acme) gid=1000(acme) groups=1000(acme),10(wheel) context=unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023
  $

Before:

We were restricting it to just userspace (:u suffix) even for a
workload started by the user:

  $ perf record sleep 1
  [ perf record: Woken up 1 times to write data ]
  [ perf record: Captured and wrote 0.001 MB perf.data (8 samples) ]
  $ perf evlist
  cycles:u
  $ perf evlist -v
  cycles:u: size: 112, { sample_period, sample_freq }: 4000, sample_type: IP|TID|TIME|PERIOD, read_format: ID, disabled: 1, inherit: 1, exclude_kernel: 1, mmap: 1, comm: 1, freq: 1, enable_on_exec: 1, task: 1, precise_ip: 3, sample_id_all: 1, exclude_guest: 1, mmap2: 1, comm_exec: 1, ksymbol: 1, bpf_event: 1
  $ perf report --stdio
  # To display the perf.data header info, please use --header/--header-only options.
  #
  # Total Lost Samples: 0
  #
  # Samples: 8  of event 'cycles:u'
  # Event count (approx.): 1040396
  #
  # Overhead  Command  Shared Object     Symbol
  # ........  .......  ................  ......................
  #
      68.36%  sleep    libc-2.29.so      [.] _dl_addr
      27.33%  sleep    ld-2.29.so        [.] dl_main
       3.80%  sleep    ld-2.29.so        [.] _dl_setup_hash
  #
  # (Tip: Order by the overhead of source file name and line number: perf report -s srcline)
  #
  $
  $

After:

When the kernel allows profiling the kernel in that scenario:

  $ perf record sleep 1
  [ perf record: Woken up 1 times to write data ]
  [ perf record: Captured and wrote 0.023 MB perf.data (11 samples) ]
  $ perf evlist
  cycles
  $ perf evlist -v
  cycles: size: 112, { sample_period, sample_freq }: 4000, sample_type: IP|TID|TIME|PERIOD, read_format: ID, disabled: 1, inherit: 1, mmap: 1, comm: 1, freq: 1, enable_on_exec: 1, task: 1, precise_ip: 3, sample_id_all: 1, exclude_guest: 1, mmap2: 1, comm_exec: 1, ksymbol: 1, bpf_event: 1
  $
  $ perf report --stdio
  # To display the perf.data header info, please use --header/--header-only options.
  #
  # Total Lost Samples: 0
  #
  # Samples: 11  of event 'cycles'
  # Event count (approx.): 1601964
  #
  # Overhead  Command  Shared Object     Symbol
  # ........  .......  ................  ..........................
  #
      28.14%  sleep    [kernel.vmlinux]  [k] __rb_erase_color
      27.21%  sleep    [kernel.vmlinux]  [k] unmap_page_range
      27.20%  sleep    ld-2.29.so        [.] __tunable_get_val
      15.24%  sleep    [kernel.vmlinux]  [k] thp_get_unmapped_area
       1.96%  perf     [kernel.vmlinux]  [k] perf_event_exec
       0.22%  perf     [kernel.vmlinux]  [k] native_sched_clock
       0.02%  perf     [kernel.vmlinux]  [k] intel_bts_enable_local
       0.00%  perf     [kernel.vmlinux]  [k] native_write_msr
  #
  # (Tip: Boolean options have negative forms, e.g.: perf report --no-children)
  #
  $

Reported-by: Arnaldo Carvalho de Melo <acme@redhat.com>
Signed-off-by: Igor Lubashev <ilubashe@akamai.com>
Tested-by: Arnaldo Carvalho de Melo <acme@redhat.com>
Tested-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Alexey Budankov <alexey.budankov@linux.intel.com>
Cc: James Morris <jmorris@namei.org>
Cc: Jiri Olsa <jolsa@kernel.org>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Suzuki Poulouse <suzuki.poulose@arm.com>
Cc: linux-arm-kernel@lists.infradead.org
Link: http://lkml.kernel.org/r/1566869956-7154-4-git-send-email-ilubashe@akamai.com
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 tools/perf/util/evsel.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tools/perf/util/evsel.c b/tools/perf/util/evsel.c
index 7c704b8f0e5c..d4540bfe4574 100644
--- a/tools/perf/util/evsel.c
+++ b/tools/perf/util/evsel.c
@@ -282,7 +282,7 @@ struct evsel *perf_evsel__new_idx(struct perf_event_attr *attr, int idx)
 
 static bool perf_event_can_profile_kernel(void)
 {
-	return perf_event_paranoid_check(-1);
+	return perf_event_paranoid_check(1);
 }
 
 struct evsel *perf_evsel__new_cycles(bool precise)
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
