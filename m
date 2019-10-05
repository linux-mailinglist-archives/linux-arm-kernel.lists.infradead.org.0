Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A9F8CC905
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  5 Oct 2019 11:18:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wQek2MFLR28/2hprnEFoNaRIxe93LSQ+AYmSBlLjfVg=; b=euVKko3294iuNg3xwrQTNNg1s2
	lY1PgHX25XMbuwiIT7isTX7hqce/hEgqDLZuti49hXQik9SLziFmkr+cPrjycCxDVUoinz7rdRSf7
	nyoh1G9gwC0/hw/5ExkABuYr5jpXVhPnYQ9IK80+fAT+ipo/9+GLNkd8w6m4AXNY4UlSgzwJdv6mK
	ILvi3pBdP0W6wJ5UagnbDzlT6B70lJZ30QxmXpEigau9TCDEHgMWG73QV0s0msgrPuSzXLi2rk9KA
	tgZ3/ALcecrpDyewwEc1t/SSCtFMYOE/t4+ECfpvIuwg6fAzA+nHGydhoOSSc92PcAwaIXUd7A2pd
	T//ytJng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGgD3-0004cn-DZ; Sat, 05 Oct 2019 09:18:41 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGgBR-0003iv-1d
 for linux-arm-kernel@lists.infradead.org; Sat, 05 Oct 2019 09:17:03 +0000
Received: by mail-qk1-x741.google.com with SMTP id x134so8198001qkb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 05 Oct 2019 02:16:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=eKAXVWwQgPpjvwNZSw/jMr+jLfq8J9kO6B2NrEvZfHo=;
 b=iK2pdsCdWaOc1I0g+2fPqCFgiDMtjeHznV8u0RGoNSxR8r/zz+UYDQ0+NvkRupaUGl
 3m76XCA2lDeeOinMME+ErfKvXxK2G8UHBsyoH/Fvz6ZfGk4lwVSoamSf1KBuCIuCOD+Z
 q2MqqEpomwpsiLrsTLEfpRF1HcHjXw9avjBNhTyTm4FhdFjo29aQv4ofZtb2acJtYf6a
 GWXNFhxPMhBT4Fp8Mo42tYkrsYvjNNUG9H80iO1vYqEey9Kk9CLgr5/Z3ELokdaKIicn
 ylgrNGAUUpkum2dx/jbMU+BD/S7TjVHZVT3v3CQGJM7D2N26oyS0i+AlXh8ZBOtErEtv
 hB4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=eKAXVWwQgPpjvwNZSw/jMr+jLfq8J9kO6B2NrEvZfHo=;
 b=rFVnqFvzV/eTcMQqBUawRr8C9oPoMKsalq/i0T9S5Np0B9o3f8KzRvg6KhQD6bbuZY
 TUGZpFlYSXUJa1qqhvjZjR0yt0zPPVwfOaegx+ixdlrqQNYGfFuIuSNX6k1ku19m1iK+
 w5IQ19dNemAkOdsFTFkhuzDZdEhoy/fWV9Mq4AU3BT7MNghnm/sjnFSe1nj08EdBUtTx
 oRiC4fAhWdmoYSAXXB0iQN8UWunRBRisNCaIsrDwSBU+oft6qfio78d1O74UI33/7+LI
 53bxh8U2fW4BavNn/a7BlFpRb2tIq38cRQMwSclc3vGpQ8cxeF8qDzG6zYNZc4VGfZr8
 RaVQ==
X-Gm-Message-State: APjAAAWU7/+q5608kvTL18JhzJTndeQmY1avGzL7jCh9KwyakGDyhTHl
 ryXXM3zfvTPLhbyJRXSdfsFE0w==
X-Google-Smtp-Source: APXvYqwev03+HLZf+Xm7qZD7x4pEtZFPcBIJhW5afdaPDbV1ZTQQxjNVZ1W3wOk+BkTcdqdSwLifdg==
X-Received: by 2002:a37:a612:: with SMTP id p18mr13816710qke.56.1570267017479; 
 Sat, 05 Oct 2019 02:16:57 -0700 (PDT)
Received: from localhost.localdomain (li937-157.members.linode.com.
 [45.56.119.157])
 by smtp.gmail.com with ESMTPSA id u132sm4384621qka.50.2019.10.05.02.16.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 05 Oct 2019 02:16:56 -0700 (PDT)
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
Subject: [PATCH v3 4/6] perf cs-etm: Support branch filter
Date: Sat,  5 Oct 2019 17:16:12 +0800
Message-Id: <20191005091614.11635-5-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191005091614.11635-1-leo.yan@linaro.org>
References: <20191005091614.11635-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_021701_320236_535465CF 
X-CRM114-Status: GOOD (  11.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
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
index 780abbfd1833..4b42f9c9bd34 100644
--- a/tools/perf/util/cs-etm.c
+++ b/tools/perf/util/cs-etm.c
@@ -56,6 +56,7 @@ struct cs_etm_auxtrace {
 
 	int num_cpu;
 	u32 auxtrace_type;
+	u32 branches_filter;
 	u64 branches_sample_type;
 	u64 branches_id;
 	u64 instructions_sample_type;
@@ -1223,6 +1224,10 @@ static int cs_etm__synth_branch_sample(struct cs_etm_queue *etmq,
 	} dummy_bs;
 	u64 ip;
 
+	if (etm->branches_filter &&
+	    !(etm->branches_filter & tidq->prev_packet->flags))
+		return 0;
+
 	ip = cs_etm__last_executed_instr(tidq->prev_packet);
 
 	event->sample.header.type = PERF_RECORD_SAMPLE;
@@ -2639,6 +2644,13 @@ int cs_etm__process_auxtrace_info(union perf_event *event,
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
