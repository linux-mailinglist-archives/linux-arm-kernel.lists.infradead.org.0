Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FAB3620AA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 16:41:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Jm0Gjp5wdIdZUR7GvQt4in+h9zKviXTLipu1CyOQdrc=; b=uqhzfnxE5Z1rvK4B7w7kuARD/N
	5tEyCaLXajGKW1MUEl0ZV0DK2wOt0oZThugaN/cvpuNkWpwpryn8jy8hXP7qZu0EbANAyaOSxfVyO
	zpoHunLGJpaxX+yuFj6RLc0cultR7Ju9rO5JYhWd4GshqsA5BtlAa5nt36tXk4eecTDJgkBPDMKiG
	cOFRY8LGZyRMZjqmfVZcqvhOJel+5XQe3psLPWs9CFutf4E6lBVsNAVQ4HpFHI+A/4z4JGSmZs5i5
	ABcMf0Gtp7ZSYC3dyQdeoJL+Y12jBHDf++O+BZsPp3/RS1gmf1hJNEOJhHaCYYylWNmBpUfdR4efX
	PEac2XMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkUpH-0007Vg-TL; Mon, 08 Jul 2019 14:41:08 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkUoX-000725-4e
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 14:40:22 +0000
Received: by mail-ot1-x344.google.com with SMTP id r6so16441545oti.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jul 2019 07:40:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=P0UfYuSIVn3ZdoCHgmfMQcQ4Bx5Zeyc6tJ2jWiXjhtc=;
 b=MQqQMln6WxFnwJIxVdQq725CZ83Q5i8yiXXUbwPqunDJgW98k01CN/JD82UlujQDg/
 xvc5BqdXrI7B2KwEaXdC6hl4VQKtrnKVZNmiYbAWtYG0kDWAgtu+3JxUWrfZzNAoOIhL
 iLWZiyTa8qIrbYcNkUidLc/TpnZMFhl7DFZ/eiwZ9LXKbHVhU8HFHrRgacH66/AzYTtM
 G3oDjb17sTWOV7mptFn+ZvPtuFddiAyZ6dtWk/RlotyddhooGD197KRCHZPP/pf9M1yb
 RNLqLQ18cPnZqslKQNDY6jmTbFexEJZ2Ywgxy6iQSeP4Ys2LGPb6I8y91dmORZAsw9jG
 c13A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=P0UfYuSIVn3ZdoCHgmfMQcQ4Bx5Zeyc6tJ2jWiXjhtc=;
 b=UqKI8P1EaKECVg5riyd/RQI1PEur/FTHBzGl2pRUCWdDrUzO1pDsmDHKK0u2oG7Wr5
 1uspnVuqXH75dc/uceyhxyWktoXD/WeVMpxsybRivoMINipN4e9Qt5d38ajaa1kV8f1u
 uiNAUBt2V1bOmMFGzn+nemlBtVlywVg9sWxk7bzvJbHpgKmhTS+QD7o8uYamg1v8idyL
 bezG7g1PgPxRDM2UZzpnfV++AR4c7zDn/+Dc+N7GCmt/lsB5Q4X9plELiO1cOWTGqira
 ls//7Z2Nghl6IXLe18eTbOunRGeCCMxvhjA3L9dxfaRMcUbkjleT98m3cvKrRZFr45Xc
 RsYw==
X-Gm-Message-State: APjAAAWL0q+lQQZUZmVzqne2iZewRAOKGH+WtvTx63omiVxnx+6Xr0DA
 wy0L42VxH91hxhjtd9Co8/cbEw==
X-Google-Smtp-Source: APXvYqwwTW9A3b+wXlBAVQIpYYoeWSItpKpNNsXpU0V7ZdJPO57xQJQciFgrGOSa91Y67e+LLHjOFQ==
X-Received: by 2002:a9d:5f1a:: with SMTP id f26mr15287602oti.91.1562596819691; 
 Mon, 08 Jul 2019 07:40:19 -0700 (PDT)
Received: from localhost.localdomain (li964-79.members.linode.com.
 [45.33.10.79])
 by smtp.gmail.com with ESMTPSA id x5sm6386021otb.6.2019.07.08.07.40.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 08 Jul 2019 07:40:19 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Adrian Hunter <adrian.hunter@intel.com>, Andi Kleen <ak@linux.intel.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 3/4] perf intel-pt: Smatch: Fix potential NULL pointer
 dereference
Date: Mon,  8 Jul 2019 22:39:36 +0800
Message-Id: <20190708143937.7722-4-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190708143937.7722-1-leo.yan@linaro.org>
References: <20190708143937.7722-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_074021_197373_AF92C472 
X-CRM114-Status: GOOD (  14.60  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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

Based on the following report from Smatch, fix the potential
NULL pointer dereference check.

  tools/perf/util/intel-pt.c:3200
  intel_pt_process_auxtrace_info() error: we previously assumed
  'session->itrace_synth_opts' could be null (see line 3196)

  tools/perf/util/intel-pt.c:3206
  intel_pt_process_auxtrace_info() warn: variable dereferenced before
  check 'session->itrace_synth_opts' (see line 3200)

tools/perf/util/intel-pt.c
3196         if (session->itrace_synth_opts && session->itrace_synth_opts->set) {
3197                 pt->synth_opts = *session->itrace_synth_opts;
3198         } else {
3199                 itrace_synth_opts__set_default(&pt->synth_opts,
3200                                 session->itrace_synth_opts->default_no_sample);
                                     ^^^^^^^^^^^^^^^^^^^^^^^^^^
3201                 if (!session->itrace_synth_opts->default_no_sample &&
3202                     !session->itrace_synth_opts->inject) {
3203                         pt->synth_opts.branches = false;
3204                         pt->synth_opts.callchain = true;
3205                 }
3206                 if (session->itrace_synth_opts)
                         ^^^^^^^^^^^^^^^^^^^^^^^^^^
3207                         pt->synth_opts.thread_stack =
3208                                 session->itrace_synth_opts->thread_stack;
3209         }

'session->itrace_synth_opts' is impossible to be a NULL pointer in
intel_pt_process_auxtrace_info(), thus this patch removes the NULL
test for 'session->itrace_synth_opts'.

Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 tools/perf/util/intel-pt.c | 13 +++++--------
 1 file changed, 5 insertions(+), 8 deletions(-)

diff --git a/tools/perf/util/intel-pt.c b/tools/perf/util/intel-pt.c
index c76a96f777fb..df061599fef4 100644
--- a/tools/perf/util/intel-pt.c
+++ b/tools/perf/util/intel-pt.c
@@ -3210,7 +3210,7 @@ int intel_pt_process_auxtrace_info(union perf_event *event,
 		goto err_delete_thread;
 	}
 
-	if (session->itrace_synth_opts && session->itrace_synth_opts->set) {
+	if (session->itrace_synth_opts->set) {
 		pt->synth_opts = *session->itrace_synth_opts;
 	} else {
 		itrace_synth_opts__set_default(&pt->synth_opts,
@@ -3220,8 +3220,7 @@ int intel_pt_process_auxtrace_info(union perf_event *event,
 			pt->synth_opts.branches = false;
 			pt->synth_opts.callchain = true;
 		}
-		if (session->itrace_synth_opts)
-			pt->synth_opts.thread_stack =
+		pt->synth_opts.thread_stack =
 				session->itrace_synth_opts->thread_stack;
 	}
 
@@ -3241,11 +3240,9 @@ int intel_pt_process_auxtrace_info(union perf_event *event,
 		pt->cbr2khz = tsc_freq / pt->max_non_turbo_ratio / 1000;
 	}
 
-	if (session->itrace_synth_opts) {
-		err = intel_pt_setup_time_ranges(pt, session->itrace_synth_opts);
-		if (err)
-			goto err_delete_thread;
-	}
+	err = intel_pt_setup_time_ranges(pt, session->itrace_synth_opts);
+	if (err)
+		goto err_delete_thread;
 
 	if (pt->synth_opts.calls)
 		pt->branches_filter |= PERF_IP_FLAG_CALL | PERF_IP_FLAG_ASYNC |
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
