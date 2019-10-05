Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4348CC8FA
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  5 Oct 2019 11:17:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=iU1wfyejp1Co/0iUSei7HJ0De3+QvmpBWwI31hlVjf8=; b=UmW
	qXrfEm6jnHvgSh4YYA2RsK2pJmJSyJ4CDO2VBSCZwlTwSItUBUv+hPPtRsxMKBIzoC8npgsg8/RrU
	I5EIgI0UW6Ad5jje8zV9gyFxf0IC5KthPEoThMl08jPBL1LXUncfKUQq8UtDq8Kq064whAZbPeelO
	qmoggtM50axSg9ryegVJvWRYUq26r+wC94i3ZqrYZ5y0LKM6qHp5Lwn0Ua82WROkfgzdq5oAixWAo
	x4k+kYTOShSdYUA71LIR6xaZ9M4TdOQuyi9FI6zoTSPoiBSUCdOEKx5XWoCxrDV3lTdL2FA09H/lZ
	AMDvqVlGCCrTSbjUr1UDKaHLDSXYtVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGgBM-0003Wo-MD; Sat, 05 Oct 2019 09:16:56 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGgB3-0003W7-AI
 for linux-arm-kernel@lists.infradead.org; Sat, 05 Oct 2019 09:16:41 +0000
Received: by mail-qk1-x744.google.com with SMTP id u22so8137333qkk.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 05 Oct 2019 02:16:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=Exi5UyL0PhH33Ps5pBXqP1xNMfxsYGUrj1r7XnToftM=;
 b=HBsvOaZBhNgUpos1V33McIYsUXTiRKItvww8OG7PAidxLUZJxFHXJ+BhcZmBe4YVHz
 L+kRN2TarhZKp6d4YLX3tyoMpHC0j8g8wMvJx1bItTgdhfx3GT/fgdqdHB8HYye/ZNvo
 crv5ALgNYzvEtIx75anB3HAwRMyRWjFH9z4LjYT/gJKwQab+uflqfn9ACGHxkkNxx04x
 thFAur1Zq8VCybtnzOvF7gkAJbnMy6NDN++wbeZOZG0ShJzLlVxcjxKO7e7uBH+OU1b9
 Gz3un43hxB0MrkdmCZbxdf9CgUsSwbUL9+7XoE5PVIFPZRQsClQL3S2EcjMA9LlPwk+q
 uikw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Exi5UyL0PhH33Ps5pBXqP1xNMfxsYGUrj1r7XnToftM=;
 b=tyXnImNp6W4cJwHMCOLXxcHsT7vA5lSKKCMFQx3OIUGJjo9tMK6HKJd/hO14NcuESz
 2on9DaY5NriziH+VXZ+Oh/gFASQStzBxtees9cC7i+o2/Bpc4nYwoatRuWaWTkFy0kwG
 JBV2MfVHzHUbn57yascIJwUmDOJ4EhaGB9mXYC0Nh8Z0xyBw24xznY7Wd1DNga/TmtV4
 8xpAZOozjZw4K2lyQhwBkxRfg3/Aqenea+V0Pnzt7/kHaHmbSbhqJnHx6RUOxgsgNwjc
 LEKF2yGWBT6gsrh77K/S9BShbzd1cIso+77CUyH2N8W415ZpIdRMbzu9DKRd5MAZrjpH
 Zn6w==
X-Gm-Message-State: APjAAAXwYhFzRHpZjqs9M0BlRT9onuq4ltKp5K3DbjBMmIu/oe4s74+h
 S8JZhUoRyuzc7pR4/WBfazhMAg==
X-Google-Smtp-Source: APXvYqz0E7B560FCkqn4XP7U4uK6vA5nHplvaCeGOYvqT3lal/PIKxer0ocPHwmadlXJgUOHkRXcMA==
X-Received: by 2002:a37:a695:: with SMTP id
 p143mr14707173qke.144.1570266993361; 
 Sat, 05 Oct 2019 02:16:33 -0700 (PDT)
Received: from localhost.localdomain (li937-157.members.linode.com.
 [45.56.119.157])
 by smtp.gmail.com with ESMTPSA id u132sm4384621qka.50.2019.10.05.02.16.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 05 Oct 2019 02:16:32 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mark Rutland <mark.rutland@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Mike Leach <mike.leach@linaro.org>,
 Coresight ML <coresight@lists.linaro.org>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>
Subject: [PATCH v3 0/6] perf cs-etm: Support thread stack and callchain
Date: Sat,  5 Oct 2019 17:16:08 +0800
Message-Id: <20191005091614.11635-1-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_021637_420122_D31573B2 
X-CRM114-Status: GOOD (  13.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

This patch series adds support for thread stack and callchain.

Patch 01 is to fix the unsigned variable comparison to zero; patch 02 is
to refactor the instruction size calculation; these two patches are
preparation for patch 03.

Patch 03 is to add thread stack support, after applying this patch the
option '-F,+callindent' can be used by perf script tool; patch 04 is to
add branch filter thus the Perf tool can display branch samples only
for function calls and returns after enable the call indentation or call
chain related options.

Patch 05 is to synthesize call chain for the instruction samples.

Patch 06 allows the instruction sample can be handled synchronously with
the thread stack, thus it fixes an error for the callchain generation.

This patch set has been tested on 96boards Hikey620 after applied on
perf/core branch with latest commit f7bf75a78095 ("perf annotate: Don't
return -1 for error when doing BPF disassembly").


Test for option '-F,+callindent':

Before:

  # perf script -F,+callindent
            main  2808          1          branches: coresight_test1                      ffff8634f5c8 coresight_test1+0x3c (/root/coresight_test/libcstest.so)
            main  2808          1          branches: printf@plt                           aaaaba8d37ec main+0x28 (/root/coresight_test/main)
            main  2808          1          branches: printf@plt                           aaaaba8d36bc printf@plt+0xc (/root/coresight_test/main)
            main  2808          1          branches: _init                                aaaaba8d3650 _init+0x30 (/root/coresight_test/main)
            main  2808          1          branches: _dl_fixup                            ffff86373b4c _dl_runtime_resolve+0x40 (/lib/aarch64-linux-gnu/ld-2.28.so)
            main  2808          1          branches: _dl_lookup_symbol_x                  ffff8636e078 _dl_fixup+0xb8 (/lib/aarch64-linux-gnu/ld-2.28.so)
  [...]

After:

  # perf script -F,+callindent
            main  2808          1          branches:                 coresight_test1@plt                                  aaaaba8d37d8 main+0x14 (/root/coresight_test/main)
            main  2808          1          branches:                     _dl_fixup                                        ffff86373b4c _dl_runtime_resolve+0x40 (/lib/aarch64-linux-gnu/ld-2.28.s
            main  2808          1          branches:                         _dl_lookup_symbol_x                          ffff8636e078 _dl_fixup+0xb8 (/lib/aarch64-linux-gnu/ld-2.28.so)
            main  2808          1          branches:                             do_lookup_x                              ffff8636a49c _dl_lookup_symbol_x+0x104 (/lib/aarch64-linux-gnu/ld-2.28.
            main  2808          1          branches:                                 check_match                          ffff86369bf0 do_lookup_x+0x238 (/lib/aarch64-linux-gnu/ld-2.28.so)
            main  2808          1          branches:                                     strcmp                           ffff86369888 check_match+0x70 (/lib/aarch64-linux-gnu/ld-2.28.so)
            main  2808          1          branches:                 printf@plt                                           aaaaba8d37ec main+0x28 (/root/coresight_test/main)
            main  2808          1          branches:                     _dl_fixup                                        ffff86373b4c _dl_runtime_resolve+0x40 (/lib/aarch64-linux-gnu/ld-2.28.s
            main  2808          1          branches:                         _dl_lookup_symbol_x                          ffff8636e078 _dl_fixup+0xb8 (/lib/aarch64-linux-gnu/ld-2.28.so)
            main  2808          1          branches:                             do_lookup_x                              ffff8636a49c _dl_lookup_symbol_x+0x104 (/lib/aarch64-linux-gnu/ld-2.28.
            main  2808          1          branches:                                 _dl_name_match_p                     ffff86369af0 do_lookup_x+0x138 (/lib/aarch64-linux-gnu/ld-2.28.so)
            main  2808          1          branches:                                     strcmp                           ffff8636f7f0 _dl_name_match_p+0x18 (/lib/aarch64-linux-gnu/ld-2.28.so)
  [...]


Test for option '--itrace=g':

Before:

  # perf script --itrace=g16l64i100
            main  1579        100      instructions:  ffff0000102137f0 group_sched_in+0xb0 ([kernel.kallsyms])
            main  1579        100      instructions:  ffff000010213b78 flexible_sched_in+0xf0 ([kernel.kallsyms])
            main  1579        100      instructions:  ffff0000102135ac event_sched_in.isra.57+0x74 ([kernel.kallsyms])
            main  1579        100      instructions:  ffff000010219344 perf_swevent_add+0x6c ([kernel.kallsyms])
            main  1579        100      instructions:  ffff000010214854 perf_event_update_userpage+0x4c ([kernel.kallsyms])
  [...]

After:

  # perf script --itrace=g16l64i100

  main  1579        100      instructions:
          ffff000010213b78 flexible_sched_in+0xf0 ([kernel.kallsyms])
          ffff00001020c0b4 visit_groups_merge+0x12c ([kernel.kallsyms])

  main  1579        100      instructions:
          ffff0000102135ac event_sched_in.isra.57+0x74 ([kernel.kallsyms])
          ffff0000102137a0 group_sched_in+0x60 ([kernel.kallsyms])
          ffff000010213b84 flexible_sched_in+0xfc ([kernel.kallsyms])
          ffff00001020c0b4 visit_groups_merge+0x12c ([kernel.kallsyms])

  main  1579        100      instructions:
          ffff000010219344 perf_swevent_add+0x6c ([kernel.kallsyms])
          ffff0000102135f4 event_sched_in.isra.57+0xbc ([kernel.kallsyms])
          ffff0000102137a0 group_sched_in+0x60 ([kernel.kallsyms])
          ffff000010213b84 flexible_sched_in+0xfc ([kernel.kallsyms])
          ffff00001020c0b4 visit_groups_merge+0x12c ([kernel.kallsyms])
  [...]


Changes from v2:
* Added patch 01 to fix the unsigned variable comparison to zero
  (Suzuki).
* Refined commit logs.

Changes from v1:
* Added comments for task thread handling (Mathieu).
* Split patch 02 into two patches, one is for support thread stack and
  another is for callchain support (Mathieu).
* Added a new patch to support branch filter.


Leo Yan (6):
  perf cs-etm: Fix unsigned variable comparison to zero
  perf cs-etm: Refactor instruction size handling
  perf cs-etm: Support thread stack
  perf cs-etm: Support branch filter
  perf cs-etm: Support callchain for instruction sample
  perf cs-etm: Synchronize instruction sample with the thread stack

 tools/perf/util/cs-etm.c | 145 ++++++++++++++++++++++++++++++++-------
 1 file changed, 120 insertions(+), 25 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
