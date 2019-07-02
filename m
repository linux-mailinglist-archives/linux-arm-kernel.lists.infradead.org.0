Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C3DF5CDB8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 12:38:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PMH2xnwyr/5SQ3MebKxdKHTO5Tn3UA0Hintwshe4NaY=; b=ZuTX7b6Z+OLsXzMNcUJd8FVCs1
	LLubrGFZIycLZOeIOZV0uWVdzqJgEjKOqzYeja5jY8IB+hE1eTzwnaSPukJiucuPfZvdWbnpwIuAW
	icljDt9AK/fO+kNV0hLjO/QfX/Nh6HhZnf1yn+b0w8SQj2dXaPsDNZ6f9pwfjhz8xctxOjsInNkyw
	ULXdID9trEXbKorkw0NIkK048oh4KCydCBS4mbh05G9pzvanbQlT3pPhC+KvCDn6uzHT8d+yOmM2C
	x9RSWAJoI5VnxoagItVdHBeHjIIkGU0+pUFcWIB/FFRKgqR3y7/Jnu2xKLaY98PF/FImZ5klFiDcH
	0KQFot9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiGBc-0006Gl-NX; Tue, 02 Jul 2019 10:38:56 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiG8z-0004Na-3B
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 10:36:14 +0000
Received: by mail-oi1-x243.google.com with SMTP id 65so12602492oid.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jul 2019 03:36:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=dQcQ7p8oORqYUmw8MhMOFx6e3+qYvK2rxF9oxDoZM7o=;
 b=JjPXkNjNwzvim2+CUz73ozuGlX5deuQwPQXRLkI9Fyk/R2nArA59R51YaLMo8npnVO
 oDx52w/nnl82obHSJkgpF8mTIFXGgbsPgPRY0VhOjMmYjUfylrDBve/OsYv5SO5HwI/t
 fJtTAVO+HkS47kqFPjOMzwwEZDDJvwgP7lEbyF1Voea5leDzo8xMvT97Wip/cBsMj5HC
 qb+vN0sL1ae3v1Lp2+ZMoD6/7mRVeEM/HozhAt6Nchk7yTPvTc9H31mPH+gFGlRyx5hx
 n8EIseeSRFabSWYYZvbYMFwVKE8LJaUpguIJXOkH/Nu/sENoYoO49Zw4nIctWDhGf81L
 pkfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=dQcQ7p8oORqYUmw8MhMOFx6e3+qYvK2rxF9oxDoZM7o=;
 b=qYhzhvJ/pzS1xK4T6/u2eL/0wThrt9As+9AE6ifmu9JLpAN5NkRjslyJlFUOiqWOKj
 VVO3XWq/rrpTiYaOcnBSiCT9WD+xqKrDeJ4P1pItwTzDM3NLdKBX8RXlAJuuFluFuPRD
 r4NXN4hcc9xEysGkQMzZ2Z+e+Lpg94Ies3aY6dJDy4z4ZETdpCHowL3s8udIx6AsRv71
 KqREiiC7P918O9tRpaqC7K1N5XUbOM9loC1+TECGmg0enPU2R0ZyfnjoBDQVXM2XsUA0
 y5n+VJ5beTjgpW7Gskl+YKr4GzyB4J6HAgmrZWBqd70XlAPcH+vOOcWiZcXIEw8TfO4n
 B5Og==
X-Gm-Message-State: APjAAAUmzMQ9aLTXZTEOEbWkhMBXZA/f+H+2ogb9uVk51HqaBqu4fmdp
 SdnnNB7UF198vs/vBWzJhPAmcg==
X-Google-Smtp-Source: APXvYqy4PfZ2f8WzbFVNWCQAGxoRu5uiQd1w+JSL9GGeOLIehFvhdbjrx+tZn3DQYJaC+vao4GhoPg==
X-Received: by 2002:aca:be88:: with SMTP id o130mr2506821oif.122.1562063772431; 
 Tue, 02 Jul 2019 03:36:12 -0700 (PDT)
Received: from localhost.localdomain (li964-79.members.linode.com.
 [45.33.10.79])
 by smtp.gmail.com with ESMTPSA id 61sm5139805otx.8.2019.07.02.03.36.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 02 Jul 2019 03:36:11 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Andi Kleen <ak@linux.intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Davidlohr Bueso <dave@stgolabs.net>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Jin Yao <yao.jin@linux.intel.com>, Song Liu <songliubraving@fb.com>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Alexios Zavras <alexios.zavras@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>, Changbin Du <changbin.du@intel.com>,
 Eric Saint-Etienne <eric.saint.etienne@oracle.com>,
 Konstantin Khlebnikov <khlebnikov@yandex-team.ru>,
 Thomas Richter <tmricht@linux.ibm.com>,
 Alexey Budankov <alexey.budankov@linux.intel.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v1 11/11] perf cs-etm: Smatch: Fix potential NULL pointer
 dereference
Date: Tue,  2 Jul 2019 18:34:20 +0800
Message-Id: <20190702103420.27540-12-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190702103420.27540-1-leo.yan@linaro.org>
References: <20190702103420.27540-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_033613_207763_D7CEE580 
X-CRM114-Status: GOOD (  13.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
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

Based on the following report from Smatch, fix the potential
NULL pointer dereference check.

  tools/perf/util/cs-etm.c:2545
  cs_etm__process_auxtrace_info() error: we previously assumed
  'session->itrace_synth_opts' could be null (see line 2541)

tools/perf/util/cs-etm.c
2541         if (session->itrace_synth_opts && session->itrace_synth_opts->set) {
2542                 etm->synth_opts = *session->itrace_synth_opts;
2543         } else {
2544                 itrace_synth_opts__set_default(&etm->synth_opts,
2545                                 session->itrace_synth_opts->default_no_sample);
                                     ^^^^^^^^^^^^^^^^^^^^^^^^^^
2546                 etm->synth_opts.callchain = false;
2547         }

To dismiss the potential NULL pointer dereference, this patch validates
the pointer 'session->itrace_synth_opts' before access its elements.

Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 tools/perf/util/cs-etm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
index 0c7776b51045..b79df56eb9df 100644
--- a/tools/perf/util/cs-etm.c
+++ b/tools/perf/util/cs-etm.c
@@ -2540,7 +2540,7 @@ int cs_etm__process_auxtrace_info(union perf_event *event,
 
 	if (session->itrace_synth_opts && session->itrace_synth_opts->set) {
 		etm->synth_opts = *session->itrace_synth_opts;
-	} else {
+	} else if (session->itrace_synth_opts) {
 		itrace_synth_opts__set_default(&etm->synth_opts,
 				session->itrace_synth_opts->default_no_sample);
 		etm->synth_opts.callchain = false;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
