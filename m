Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9310F9E9C5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 15:44:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6TJsUeV05nM1K7JRK/+CM2Fxwu6yN5YjtIICjN65ydw=; b=DR6nkz+ox43ezV
	iSa7wvOZMnqXuEbxl116g8Wjxsca2MLXcKEfzSHKVZobZl772GMUufE4EZJI89XYrDFUhgL+Xdnew
	DNEps0WwsUScDcGmJ+PqueV/YVGFJsO51wFKeTnaKLWy04mnh/DK7lnfoSctmSMwuJ+yno2BIcdqe
	6K3QB4S4a4Od/nOBLAfBmKS/Th/MIeXgZWCqXRPk0HtBylNLjCUJvpwwysAVaEIcAKF1ETEHbrs5A
	xOklhmtRHJODELeqpCWwcONQV4YWeHBaMPauH6Xpb/53SKA1WBWilCJALcKDFUYUsD0EoZZEDaI5N
	zYNCiRbn2PPylGrsN0Gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2blm-000243-0O; Tue, 27 Aug 2019 13:44:22 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2blc-00023p-KK
 for linux-arm-kernel@bombadil.infradead.org; Tue, 27 Aug 2019 13:44:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hXlXVXRXdhaabHSd8C1eZYIYW9fAq7xfTNbYO5WWwxA=; b=shAFU7qQntr4BbxQhAXW47zpd
 Zor3HUNY2ipGwquo1ZDWl9oBvjC5drYf7eBk4efFciPdbZlWnI+v8yWuZKrcWuOkSCdXeoYdM0oym
 glbsExgjVtNRhold6AkteO/C/ekTRqHUsgnK8ZMGRaa1920g1w/M6IFzjuf+1egSFgYWdPHDtItLG
 VMrtBFLmPPGUO6A3ZASq642lwxyHB2YyZO0c396oKmvyuxGwYT+fEYhZfMTzS9XBkBvqkY66N/Uiw
 ru80Dq5FDTlF1Q8SriDz8TeUOur33l8hVBsqxIg0lvLuFSfR7HKt4mIHLj5VjJZCehSF9c8BbV2Wo
 BRDcXlbYQ==;
Received: from [179.97.35.50] (helo=sandy.ghostprotocols.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i2bla-0004Tq-Iu; Tue, 27 Aug 2019 13:44:10 +0000
Received: by sandy.ghostprotocols.net (Postfix, from userid 1000)
 id 6DEC012E; Tue, 27 Aug 2019 10:44:04 -0300 (BRT)
Date: Tue, 27 Aug 2019 10:44:04 -0300
From: Arnaldo Carvalho de Melo <acme@redhat.com>
To: Igor Lubashev <ilubashe@akamai.com>
Subject: Re: [PATCH 3/5] perf util: kernel profiling is disallowed only when
 perf_event_paranoid > 1
Message-ID: <20190827134404.GB8761@redhat.com>
References: <1566869956-7154-1-git-send-email-ilubashe@akamai.com>
 <1566869956-7154-4-git-send-email-ilubashe@akamai.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1566869956-7154-4-git-send-email-ilubashe@akamai.com>
X-Url: http://acmel.wordpress.com
User-Agent: Mutt/1.5.20 (2009-12-10)
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
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki Poulouse <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Alexey Budankov <alexey.budankov@linux.intel.com>,
 James Morris <jmorris@namei.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Jiri Olsa <jolsa@kernel.org>,
 Namhyung Kim <namhyung@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Em Mon, Aug 26, 2019 at 09:39:14PM -0400, Igor Lubashev escreveu:
> Perf was too restrictive about sysctl kernel.perf_event_paranoid. The
> kernel only disallows profiling when perf_event_paranoid > 1. Make perf do
> the same.

Thanks for following up on this, I added these notes to this cset commit
log message:

--------------------------------- 8< ------------------------------------

perf evsel: Kernel profiling is disallowed only when perf_event_paranoid > 1

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
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Alexey Budankov <alexey.budankov@linux.intel.com>
Cc: James Morris <jmorris@namei.org>
Cc: Jiri Olsa <jolsa@kernel.org>
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Suzuki Poulouse <suzuki.poulose@arm.com>
Cc: linux-arm-kernel@lists.infradead.org
Link: http://lkml.kernel.org/r/1566869956-7154-4-git-send-email-ilubashe@akamai.com
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>

# Please enter the commit message for your changes. Lines starting
# with '#' will be ignored, and an empty message aborts the commit.
#
# Author:    Igor Lubashev <ilubashe@akamai.com>
# Date:      Mon Aug 26 21:39:14 2019 -0400
#
# On branch perf/core
# Changes to be committed:
#	modified:   tools/perf/util/evsel.c
#
# Untracked files:
#	a
#	a.c
#	bla
#	f_mode
#	perf.data
#	perf.data.old
#	q
#
# ------------------------ >8 ------------------------
# Do not modify or remove the line above.
# Everything below it will be ignored.
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

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
