Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 540FB1656EB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 06:29:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9Qt7ye/4OHkdlrDiE3FtXdrTTWOUtzaJ8bKxkUOzafA=; b=C6v2egTSz1BRGB7VDzfqeTxyp1
	GTCGGLHi42ePCjgsJnR8TvTX8yyofzzX00hZUMqFkzkSRFHvvnpQxr6sBadPsncNtPrLaq0oQIO38
	Yol4aLLsyhkBtd/c384/YRaJxgDjeshr4blhMnEV/KdGv7ytsGLTVj0VAUIqDx4eNREsDGbQRX0Dj
	QVDqHdftaLl376d5mYdnE0S65nNfNZOdT+lnbYSogdh96SGzoP2UNg2SzL6hcWS4yNCLSpm6brJjD
	rYT5Eq2PXZHZwAdlsOTylC5kAmYhnmfsq44qRLStGF3NGYOkz2xWtRBn5BB8xhgi8H3GKTjJd9Qaf
	A1voDqaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4eOm-0002kZ-NN; Thu, 20 Feb 2020 05:29:20 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4eO5-00029a-Gx
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 05:28:40 +0000
Received: by mail-pf1-x444.google.com with SMTP id j9so1314107pfa.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 21:28:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Qm7dOX6BJPU8t8EeV5guhioxUn3G/S82qxut/ZQCG/Y=;
 b=YMJWJ76PiWBpfKwBtY8n224agzsTTrpvlIh1EsZtXyIRZtGFoXj2+ruqGUJ3mQxvFm
 nAI7m/LvA/Qx7/ydA9uI4gl+cQXG2QOxF1DKy8xA8Ng2h8dvLAsEj93WZ3JUJgB5TPBl
 ftl0OLn47eRr/getcCwiSvKZi75qCrkfmu3mUxMRfO2olgiBmsc7BjM/ED9GyUunWGQo
 0r1NOGJE4q2a/umAg4MvWunk6uuOwtC/019bczrehXplTfwgCYTYE9yV+OvXbVXJ/nX4
 QPOSD214OHcJQMLrrO5vtbXh0WYZexx0oMvbZCKcPqwHv993tOGZ9PvLzkaEfZcI+4NX
 4Mbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Qm7dOX6BJPU8t8EeV5guhioxUn3G/S82qxut/ZQCG/Y=;
 b=Of+uvb5rkCbZbKqphPjvmzthTcOROYWaff4QklMRnm3PcO6Gwr4LNZxsDFzJKYv47Y
 bNUOQAjqsmxwUp9+QVq1TSZA6wWF3GkCzHYA+34KQftN9xkmvyG7UrqcnLN2bey67LO1
 213tRw4YNfvcqMtk61oCi1J96X/0jBOiYWJ1Hd8N2EUrB4qtr6YejzVzAbvwr0LGxHEY
 QOnbddyWE69NSkZRJliMe2L+L9nOqfwelJ4NO6Z3pIhq65HE0KSkUDJYGO6dZMmQvEF/
 afwizIdJCWUKbt6lfjbkSjpVeKbBjclSxdM/vK93+rBcBt2rlSR828NBrBEpUhKXSYJn
 GPUQ==
X-Gm-Message-State: APjAAAWb62AHcuC5qy9rrlhrD3sYP1rfSLRWJmQkQb0D2trvwfl6z/Td
 /j9PHwkxFH4N5VoYsDaR2V6/kg==
X-Google-Smtp-Source: APXvYqytjzoPU7uU68W8L5mqwVAqh1Cd4Cj3JOjjKWOXfVSRBhO6GePmtB+F7KLWfHYso5/mAmMCIA==
X-Received: by 2002:a63:9856:: with SMTP id l22mr29974631pgo.344.1582176516647; 
 Wed, 19 Feb 2020 21:28:36 -0800 (PST)
Received: from localhost.localdomain (li1441-214.members.linode.com.
 [45.118.134.214])
 by smtp.gmail.com with ESMTPSA id l69sm1535663pgd.1.2020.02.19.21.28.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 21:28:36 -0800 (PST)
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, Mike Leach <mike.leach@linaro.org>,
 Robert Walker <robert.walker@arm.com>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Coresight ML <coresight@lists.linaro.org>
Subject: [PATCH v5 5/9] perf cs-etm: Support branch filter
Date: Thu, 20 Feb 2020 13:26:57 +0800
Message-Id: <20200220052701.7754-6-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200220052701.7754-1-leo.yan@linaro.org>
References: <20200220052701.7754-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_212837_604690_DF51BEC3 
X-CRM114-Status: GOOD (  12.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Leo Yan <leo.yan@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If user specifies option '-F,+callindent' or call chain related options,
it means users only care about function calls and returns; for these
cases, it's pointless to generate samples for the branches within
function.  But unlike other hardware trace handling (e.g. Intel's pt or
bts), Arm CoreSight doesn't filter branch types for these options and
generate samples for all branches, this causes Perf to output many
spurious blanks if the branch is not a function call or return.

To only output pairs of calls and returns, this patch introduces branch
filter and the filter is set according to synthetic options.  Finally,
Perf can output only for calls and returns and avoid to output other
unnecessary blanks.

Before:

  # perf script -F,+callindent
            main  2808          1          branches:                 coresight_test1@plt                                  aaaaba8d37d8 main+0x14 (/root/coresight_test/main)
            main  2808          1          branches:                     coresight_test1@plt                              aaaaba8d367c coresight_test1@plt+0xc (/root/coresight_test/main)
            main  2808          1          branches:                     _init                                            aaaaba8d3650 _init+0x30 (/root/coresight_test/main)
            main  2808          1          branches:                     _dl_fixup                                        ffff86373b4c _dl_runtime_resolve+0x40 (/lib/aarch64-linux-gnu/ld-2.28.s
            main  2808          1          branches:                         _dl_lookup_symbol_x                          ffff8636e078 _dl_fixup+0xb8 (/lib/aarch64-linux-gnu/ld-2.28.so)
            main  2808          1          branches:                                                                      ffff8636a3f4 _dl_lookup_symbol_x+0x5c (/lib/aarch64-linux-gnu/ld-2.28.s
            main  2808          1          branches:                                                                      ffff8636a3f4 _dl_lookup_symbol_x+0x5c (/lib/aarch64-linux-gnu/ld-2.28.s
            main  2808          1          branches:                                                                      ffff8636a3f4 _dl_lookup_symbol_x+0x5c (/lib/aarch64-linux-gnu/ld-2.28.s
            main  2808          1          branches:                                                                      ffff8636a3f4 _dl_lookup_symbol_x+0x5c (/lib/aarch64-linux-gnu/ld-2.28.s
            main  2808          1          branches:                                                                      ffff8636a3f4 _dl_lookup_symbol_x+0x5c (/lib/aarch64-linux-gnu/ld-2.28.s
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

Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 tools/perf/util/cs-etm.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
index 08ca919aa2b1..1b08b650b090 100644
--- a/tools/perf/util/cs-etm.c
+++ b/tools/perf/util/cs-etm.c
@@ -56,6 +56,7 @@ struct cs_etm_auxtrace {
 
 	int num_cpu;
 	u32 auxtrace_type;
+	u32 branches_filter;
 	u64 branches_sample_type;
 	u64 branches_id;
 	u64 instructions_sample_type;
@@ -1239,6 +1240,10 @@ static int cs_etm__synth_branch_sample(struct cs_etm_queue *etmq,
 	} dummy_bs;
 	u64 ip;
 
+	if (etm->branches_filter &&
+	    !(etm->branches_filter & tidq->prev_packet->flags))
+		return 0;
+
 	ip = cs_etm__last_executed_instr(tidq->prev_packet);
 
 	event->sample.header.type = PERF_RECORD_SAMPLE;
@@ -2776,6 +2781,13 @@ int cs_etm__process_auxtrace_info(union perf_event *event,
 				session->itrace_synth_opts->thread_stack;
 	}
 
+	if (etm->synth_opts.calls)
+		etm->branches_filter |= PERF_IP_FLAG_CALL | PERF_IP_FLAG_ASYNC |
+					PERF_IP_FLAG_TRACE_END;
+	if (etm->synth_opts.returns)
+		etm->branches_filter |= PERF_IP_FLAG_RETURN |
+					PERF_IP_FLAG_TRACE_BEGIN;
+
 	err = cs_etm__synth_events(etm, session);
 	if (err)
 		goto err_delete_thread;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
