Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 159A75CDB6
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 12:38:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=I1iOQSXRor5sJkR8IBncF/n0ydVSxUk4Fwppwz9wCgI=; b=sIX64dL1GaaHy2yU3F9EIQanLN
	UJUDDyvmdVaQkBLCqx93nOT9xbrVEgYVwBc5/A1ZNz7Oc5iglh2uZ/Mu/QbR5e9W+BRwB0D3/TcmE
	cicwvxQc9jhvZ8Q9+yzcdbYp+IzJ+VY8mSw0OBWpwHuVTKHKHLyN90OsuUchrpFO7s/3g3fhRqmMI
	JQNcC+xE+Lcie9y9AEljk5amld/2ztQtCBK0IIFPUCtRa3dXKeM/Fmp3ZXp6TY2osHlBL3CJxI31v
	F5OijZ7fAT5SDZdeJHBt6rUph/BBV27sME/1Aoex5K1lgRbYkU7AzqdPVxX0KlBhLjNwiJGSXWNkg
	m/PZxYwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiGAw-0005iY-3f; Tue, 02 Jul 2019 10:38:14 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiG8k-0004Ao-Dm
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 10:36:01 +0000
Received: by mail-ot1-x341.google.com with SMTP id b7so16616290otl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jul 2019 03:35:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=oEKxu+SRBR2p4slj10y4/Ir+izytEa7NCXuzbUYce7M=;
 b=wEvS8XbwFUFKdw+GxKZqyPYxrcjlJT6R7i4Djuo1pSo+8XRmo7dDVof0wJA6PCR3vd
 qFIwAcP7pDtAB8QbnK8W71bnfDTiUGrGvzNBaQ0BVXdhbpi92FhKXZpRzcCfxHl/1lrQ
 0cnaFXJ4pGbGcg1Yj4KSf+weubc02b4z+z7aH8vZoygulTfyy1oCju1llcUE2/B5TAxO
 CBNT+MRWqFb+e57BQqcIPMsbBIg6p2JsXmSoO7EAI5kgLk7RIPuGCzZnvROcdx4biUl9
 MWos28VX/AKKwLxXLoiRvshrmKgM0HO7EpW4LV9lPKGSBYUH2dyccIMucEgvK6w26lQT
 61Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=oEKxu+SRBR2p4slj10y4/Ir+izytEa7NCXuzbUYce7M=;
 b=Rl/Ix3caQ4GzMN5HmWm1BAE/MwomWep0ZdZ3NrTArm9YL/+UAfuT7Mxi8TRV2tscci
 WJKROyFp5ac4ekQ6BGZQ3yN1Coz8hQvprAVYV1gDMbABhD2LfMgq5AKBp9onzlyoWkg3
 diAZ8aZgL3y3/AQTrQENDNDVO93xsx3CQm5Yn9JhcW4tN3fXoqbp5VAfzS3A8hDm0ogS
 /7iIEmOmxIAnoLiBDuO4zA/QIQtj8DmwK/p1mBmEjpyqxUyPDn81ua4V9t8u5hH+BKvs
 dirRMzk05COaL9N/Vwi/vr+8V9WPj1Vc+cDUsOzjI2vP9bl6vgmXcK1f6dxH4U6hx9fL
 NZOQ==
X-Gm-Message-State: APjAAAVWJmCX80/cu26BHwYObVOFgSSf660d3xeWbZp/VA55KODIht0D
 1FhZoFWouRU427nek1VnFa3vZQ==
X-Google-Smtp-Source: APXvYqzv573LaZWJ+oWSjYOyiWtpwFtAqVjEDnjXIEMctJXO5xnl/SqqwZcakrrKfpTXJTxRUb5hOw==
X-Received: by 2002:a9d:664c:: with SMTP id q12mr21775879otm.175.1562063757276; 
 Tue, 02 Jul 2019 03:35:57 -0700 (PDT)
Received: from localhost.localdomain (li964-79.members.linode.com.
 [45.33.10.79])
 by smtp.gmail.com with ESMTPSA id 61sm5139805otx.8.2019.07.02.03.35.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 02 Jul 2019 03:35:56 -0700 (PDT)
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
Subject: [PATCH v1 09/11] perf intel-bts: Smatch: Fix potential NULL pointer
 dereference
Date: Tue,  2 Jul 2019 18:34:18 +0800
Message-Id: <20190702103420.27540-10-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190702103420.27540-1-leo.yan@linaro.org>
References: <20190702103420.27540-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_033558_522551_5249394F 
X-CRM114-Status: GOOD (  13.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
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

  tools/perf/util/intel-bts.c:898
  intel_bts_process_auxtrace_info() error: we previously assumed
  'session->itrace_synth_opts' could be null (see line 894)

  tools/perf/util/intel-bts.c:899
  intel_bts_process_auxtrace_info() warn: variable dereferenced before
  check 'session->itrace_synth_opts' (see line 898)

tools/perf/util/intel-bts.c
894         if (session->itrace_synth_opts && session->itrace_synth_opts->set) {
895                 bts->synth_opts = *session->itrace_synth_opts;
896         } else {
897                 itrace_synth_opts__set_default(&bts->synth_opts,
898                                 session->itrace_synth_opts->default_no_sample);
                                    ^^^^^^^^^^^^^^^^^^^^^^^^^^
899                 if (session->itrace_synth_opts)
                        ^^^^^^^^^^^^^^^^^^^^^^^^^^
900                         bts->synth_opts.thread_stack =
901                                 session->itrace_synth_opts->thread_stack;
902         }

To dismiss the potential NULL pointer dereference, this patch validates
the pointer 'session->itrace_synth_opts' before access its elements.

Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 tools/perf/util/intel-bts.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/tools/perf/util/intel-bts.c b/tools/perf/util/intel-bts.c
index e32dbffebb2f..332e647fecaa 100644
--- a/tools/perf/util/intel-bts.c
+++ b/tools/perf/util/intel-bts.c
@@ -893,11 +893,10 @@ int intel_bts_process_auxtrace_info(union perf_event *event,
 
 	if (session->itrace_synth_opts && session->itrace_synth_opts->set) {
 		bts->synth_opts = *session->itrace_synth_opts;
-	} else {
+	} else if (session->itrace_synth_opts) {
 		itrace_synth_opts__set_default(&bts->synth_opts,
 				session->itrace_synth_opts->default_no_sample);
-		if (session->itrace_synth_opts)
-			bts->synth_opts.thread_stack =
+		bts->synth_opts.thread_stack =
 				session->itrace_synth_opts->thread_stack;
 	}
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
