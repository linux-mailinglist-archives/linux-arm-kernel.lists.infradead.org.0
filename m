Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC168150076
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 03:07:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Hrper8JXga3Pu2bFXi4tyaOyr/aBKTNEbjH5d8ZspAg=; b=ELV
	JoTZV/5A18BCV2q0T2U/4aDZ/DyU5/QY4D1h3gOhw2xEJ92xiniRrCUFNq0Twg/7mM5DRTONe8dZt
	iuAHtqFcHP4XTHeo4/rMOxsR5l1Fjud3UP0zKA6AAeFa185BVDsBOHcpOb716qzzoMcd8Ym+DDB+m
	2F3AdqNddni73sUzBweoeq/cCBCgorC/tevAo3Wm5YuMpGIUvtz7712rPpRo9zoi/2iicgqEbwKlG
	1VbvJIPFwpVx7i2T7BPKfAca7ZvdkdvJyn8dPs05qLJ+mjF4D/9/IZAss8HvPA5RpDH2/n8pZE2l+
	WjkX21XS3zieOg009eigED53JDamBJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyR9R-0005Ja-Hh; Mon, 03 Feb 2020 02:07:49 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyR9H-0005JF-Md
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 02:07:41 +0000
Received: by mail-pj1-x1042.google.com with SMTP id gv17so5684993pjb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 02 Feb 2020 18:07:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=V88riAXlZ3Lt6WD4YILY+go/52mtOZTQuqZNCMK0kYU=;
 b=vqL05V7yQvq4qRC5RXkSwh6yPq8Se34I62mBzvrI3p6MhB+pI+e87Vxv3xXDgKxhU3
 RwgLrBs/IyyU+M7QxYJAH7hbnTuH9ubPf91GJzltl+06elPTA15+MvSMbtPaK/raDPxL
 TfE8yfsGnbYnhCvx34N/DOFuwQ+NWr94y9chnaNkoqcuj2QSc2AMAMXUEoZRn2okfim+
 UVCsim0CH7um58iLa719gOzEkue84HIghDJcXWqmSHkd9p5Dl2prj4GhWAtao9rwcK9a
 ip3YQeEPiYIiDiVI/WIR6JBv9TdfIb4Y6r6ARIMVqALtYo5lGbZZtkcIpxM0aIXoHt+c
 mT1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=V88riAXlZ3Lt6WD4YILY+go/52mtOZTQuqZNCMK0kYU=;
 b=Dh0eq/2iVnxk+yEweFiz33HqgLJJlVB3u1oRE97PPVRozJlyQrskfY4mx0IjshOlav
 Kz5Vu36MyyYsHHyTavlg1w2uRi4IjFzJcfguBG3l+7/KxUWCLsVgnRtPPItKhRQoXzuS
 PrWv+7yQElA9hhopHPXA5ecAjKjMmATyqiOisRr60ZNRcE7+VPXdhbEkUqfgT6Zgi9KG
 WJaKrYrALm3wOQUt97WymNNRA+8FiCoelbmeg07yWLohUCjaFOHYcSk383YQw1seQ3Ro
 Y1eoGs588q8olJlA3V3Ejy8tiwipSDxKK66s8vcfs7gwV7vPsI67HMFIlr9h+FqO81wh
 C5JA==
X-Gm-Message-State: APjAAAWWziRdVsX9sGKr/tFw4T0ci5FbqeykNRqD0xsq1DZu4qqlFQNv
 ssmOOjfOYVvqiN4uy4GiFEmbXA==
X-Google-Smtp-Source: APXvYqxKANzDItRx7KBEyi76Jve2TRT9dCT7shgy2FwK9iO9bQSniDxoOgAkNPPHqn+9gEdxDVkihA==
X-Received: by 2002:a17:90a:da04:: with SMTP id
 e4mr24960801pjv.26.1580695658796; 
 Sun, 02 Feb 2020 18:07:38 -0800 (PST)
Received: from localhost.localdomain (li1441-214.members.linode.com.
 [45.118.134.214])
 by smtp.gmail.com with ESMTPSA id z29sm17521201pgc.21.2020.02.02.18.07.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 02 Feb 2020 18:07:38 -0800 (PST)
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Mark Rutland <mark.rutland@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Mike Leach <mike.leach@linaro.org>, Robert Walker <robert.walker@arm.com>,
 Coresight ML <coresight@lists.linaro.org>
Subject: [PATCH v4 0/5] perf cs-etm: Support thread stack and callchain
Date: Mon,  3 Feb 2020 10:07:11 +0800
Message-Id: <20200203020716.31832-1-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_180739_757610_0159B48C 
X-CRM114-Status: GOOD (  14.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Leo Yan <leo.yan@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series adds support for thread stack and callchain; this is a
sequential version from v3 [1] but reorgnized the patches, some changes
have been refactored into the instruction sample fix patch set [2], and
this patch set is only to focus on thread stack and callchain support.

Patch 01 is to refactor the instruction size calculation; this patch is
used by patch 02.

Patch 02 is to add thread stack support, after applying this patch the
option '-F,+callindent' can be used by perf script tool; patch 03 is to
add branch filter thus the Perf tool can display branch samples only
for function calls and returns after enable the call indentation or call
chain related options.

Patch 04 is to synthesize call chain for the instruction samples.

Patch 05 allows the instruction sample can be handled synchronously with
the thread stack, thus it fixes an error for the callchain generation.

This patch set has been tested on Juno-r2 after applied on perf/core
branch with latest commit 85fc95d75970 ("perf maps: Add missing unlock
to maps__insert() error case"), and this patch set is dependent on the
instruction sample fix patch set [2].


Test for option '-F,+callindent':

Before:

  # perf script -F,+callindent
            main   840          1          branches: main                                 ffffa2319d20 __libc_start_main+0xe0 (/usr/lib/aarch64-linux-gnu/libc-2.28.so)
            main   840          1          branches:                                      aaaab94cb7d0 main+0xc (/root/coresight_test/main)
            main   840          1          branches:                                      aaaab94cb808 main+0x44 (/root/coresight_test/main)
            main   840          1          branches: lib_loop_test@plt                    aaaab94cb7dc main+0x18 (/root/coresight_test/main)
            main   840          1          branches: lib_loop_test@plt                    aaaab94cb67c lib_loop_test@plt+0xc (/root/coresight_test/main)
            main   840          1          branches: _init                                aaaab94cb650 _init+0x30 (/root/coresight_test/main)
            main   840          1          branches: _dl_fixup                            ffffa24a5b44 _dl_runtime_resolve+0x40 (/usr/lib/aarch64-linux-gnu/ld-2.28.so)
            main   840          1          branches: _dl_lookup_symbol_x                  ffffa24a0070 _dl_fixup+0xb8 (/usr/lib/aarch64-linux-gnu/ld-2.28.so)

  [...]

After:

  # perf script -F,+callindent
            main   840          1          branches:             main                                                     ffffa2319d20 __libc_start_main+0xe0 (/usr/lib/aarch64-linux-gnu/libc-2.28.so)
            main   840          1          branches:                 lib_loop_test@plt                                    aaaab94cb7dc main+0x18 (/root/coresight_test/main)
            main   840          1          branches:                     _dl_fixup                                        ffffa24a5b44 _dl_runtime_resolve+0x40 (/usr/lib/aarch64-linux-gnu/ld-2.28.so)
            main   840          1          branches:                         _dl_lookup_symbol_x                          ffffa24a0070 _dl_fixup+0xb8 (/usr/lib/aarch64-linux-gnu/ld-2.28.so)
            main   840          1          branches:                             do_lookup_x                              ffffa249c4a4 _dl_lookup_symbol_x+0x104 (/usr/lib/aarch64-linux-gnu/ld-2.28.so)
            main   840          1          branches:                                 check_match                          ffffa249bbf8 do_lookup_x+0x238 (/usr/lib/aarch64-linux-gnu/ld-2.28.so)
            main   840          1          branches:                                     strcmp                           ffffa249b890 check_match+0x70 (/usr/lib/aarch64-linux-gnu/ld-2.28.so)
            main   840          1          branches:                 printf@plt                                           aaaab94cb7f0 main+0x2c (/root/coresight_test/main)
            main   840          1          branches:                     _dl_fixup                                        ffffa24a5b44 _dl_runtime_resolve+0x40 (/usr/lib/aarch64-linux-gnu/ld-2.28.so)
            main   840          1          branches:                         _dl_lookup_symbol_x                          ffffa24a0070 _dl_fixup+0xb8 (/usr/lib/aarch64-linux-gnu/ld-2.28.so)
            main   840          1          branches:                             do_lookup_x                              ffffa249c4a4 _dl_lookup_symbol_x+0x104 (/usr/lib/aarch64-linux-gnu/ld-2.28.so)
            main   840          1          branches:                                 _dl_name_match_p                     ffffa249baf8 do_lookup_x+0x138 (/usr/lib/aarch64-linux-gnu/ld-2.28.so)
            main   840          1          branches:                                     strcmp                           ffffa24a17e8 _dl_name_match_p+0x18 (/usr/lib/aarch64-linux-gnu/ld-2.28.so)
            main   840          1          branches:                                     strcmp                           ffffa24a180c _dl_name_match_p+0x3c (/usr/lib/aarch64-linux-gnu/ld-2.28.so)
            main   840          1          branches:                                 _dl_name_match_p                     ffffa249baf8 do_lookup_x+0x138 (/usr/lib/aarch64-linux-gnu/ld-2.28.so)
            main   840          1          branches:                                     strcmp                           ffffa24a17e8 _dl_name_match_p+0x18 (/usr/lib/aarch64-linux-gnu/ld-2.28.so)
            main   840          1          branches:                                     strcmp                           ffffa24a180c _dl_name_match_p+0x3c (/usr/lib/aarch64-linux-gnu/ld-2.28.so)
            main   840          1          branches:                                 check_match                          ffffa249bbf8 do_lookup_x+0x238 (/usr/lib/aarch64-linux-gnu/ld-2.28.so)
            main   840          1          branches:                                     strcmp                           ffffa249b890 check_match+0x70 (/usr/lib/aarch64-linux-gnu/ld-2.28.so)
            main   840          1          branches:                                     strcmp                           ffffa249b968 check_match+0x148 (/usr/lib/aarch64-linux-gnu/ld-2.28.so)

  [...]


Test for option '--itrace=g':

Before:

  # perf script --itrace=g16l64i100
            main   840        100      instructions:  ffff8000102642c0 event_sched_in.isra.119+0x140 ([kernel.kallsyms])
            main   840        100      instructions:  ffff800010264794 flexible_sched_in+0xe4 ([kernel.kallsyms])
            main   840        100      instructions:  ffff800010263024 perf_pmu_disable+0x4 ([kernel.kallsyms])
            main   840        100      instructions:  ffff80001026b0e0 perf_swevent_add+0xb8 ([kernel.kallsyms])
            main   840        100      instructions:  ffff80001025b504 calc_timer_values+0x34 ([kernel.kallsyms])
            main   840        100      instructions:  ffff80001019bd24 clocks_calc_mult_shift+0x3c ([kernel.kallsyms])
            main   840        100      instructions:  ffff80001026556c perf_event_update_userpage+0xec ([kernel.kallsyms])
            main   840        100      instructions:  ffff80001025c5e4 visit_groups_merge+0x194 ([kernel.kallsyms])

  [...]

After:

  # perf script --itrace=g16l64i100

  main   840        100      instructions: 
  	ffff800010264794 flexible_sched_in+0xe4 ([kernel.kallsyms])
  	ffff80001025c57c visit_groups_merge+0x12c ([kernel.kallsyms])

  main   840        100      instructions: 
  	ffff800010263024 perf_pmu_disable+0x4 ([kernel.kallsyms])
  	ffff8000102641f0 event_sched_in.isra.119+0x70 ([kernel.kallsyms])
  	ffff8000102643d8 group_sched_in+0x60 ([kernel.kallsyms])
  	ffff8000102647b0 flexible_sched_in+0x100 ([kernel.kallsyms])
  	ffff80001025c57c visit_groups_merge+0x12c ([kernel.kallsyms])

  main   840        100      instructions: 
  	ffff80001026b0e0 perf_swevent_add+0xb8 ([kernel.kallsyms])
  	ffff80001026423c event_sched_in.isra.119+0xbc ([kernel.kallsyms])
  	ffff8000102643d8 group_sched_in+0x60 ([kernel.kallsyms])
  	ffff8000102647b0 flexible_sched_in+0x100 ([kernel.kallsyms])
  	ffff80001025c57c visit_groups_merge+0x12c ([kernel.kallsyms])

  [...]


Changes from v3:
* Splitted out separate patch set for instruction samples fixing.
* Rebased on latest perf/core branch.

Changes from v2:
* Added patch 01 to fix the unsigned variable comparison to zero
  (Suzuki).
* Refined commit logs.

Changes from v1:
* Added comments for task thread handling (Mathieu).
* Split patch 02 into two patches, one is for support thread stack and
  another is for callchain support (Mathieu).
* Added a new patch to support branch filter.

[1] https://lkml.org/lkml/2019/10/5/51
[2] https://lkml.org/lkml/2020/2/2/228


Leo Yan (5):
  perf cs-etm: Refactor instruction size handling
  perf cs-etm: Support thread stack
  perf cs-etm: Support branch filter
  perf cs-etm: Support callchain for instruction sample
  perf cs-etm: Synchronize instruction sample with the thread stack

 tools/perf/util/cs-etm.c | 145 ++++++++++++++++++++++++++++++++-------
 1 file changed, 121 insertions(+), 24 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
