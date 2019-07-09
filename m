Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B496C63B05
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 20:32:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a/yuvIqjMUo+5gxrkisbZrrp4xtNWscvXY/QYN7cooI=; b=G4hQTIygrxU8V0
	frw4tIsAL5noGD5i9iZDZio2BxrWFuOtckzqkBw+NTVWQahISeoIB9iE2VNjCG+VDsBXTzQpHLHC/
	L5i56CotQdEU3NnFoLMn7rEs5BGexLidXtMjLKHQph953GJ0mGSiwURdCPJo2qQZwqJ2kJOg/eu70
	1lN6VWm8icXpZfxt6eA8bfgy22AkzvDFfdSmR8bELieOZtOf5TJeE0k9g33Est1vP6MUbWak8B9pH
	25SpCCP0Qf7QjmnLU2MPF5YSwM/DToHPFSR8Z6SmOPoCCtACZyO+ZqIZ2NM38f/9Gc/9smwTXXoZE
	3cKIbLLFVhWqhwFiItFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkuv6-0006Lb-3a; Tue, 09 Jul 2019 18:32:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkuuP-0005v7-76
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 18:32:12 +0000
Received: from quaco.ghostprotocols.net (unknown [179.97.35.11])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CFCAC2087F;
 Tue,  9 Jul 2019 18:32:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562697128;
 bh=uKY1upGstB9eyiC2tvMjOQrnpwH5zhKS9cvZBMmwlRY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=R5NqjC4skuB80xSqY6Wwp1WwLiCweXwZ4voKnG+hZZIIGLatgkiHk+63fQN4xEqr8
 SvuRJwGK0s2OPCDFsud6JvVO/9KhewPXZZLlxe6R8inbDBGyOn/YUFfL1UrrWJ82oC
 /KSRamxD4VurvzRcHPHPaEYLPpkeV2JjNtjxj8Q4=
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Ingo Molnar <mingo@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH 05/25] perf trace: Fix potential NULL pointer dereference
 found by the smatch tool
Date: Tue,  9 Jul 2019 15:31:06 -0300
Message-Id: <20190709183126.30257-6-acme@kernel.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190709183126.30257-1-acme@kernel.org>
References: <20190709183126.30257-1-acme@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_113209_327051_CCC32A38 
X-CRM114-Status: GOOD (  12.11  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Song Liu <songliubraving@fb.com>,
 Konstantin Khlebnikov <khlebnikov@yandex-team.ru>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Adrian Hunter <adrian.hunter@intel.com>, Jin Yao <yao.jin@linux.intel.com>,
 Andi Kleen <ak@linux.intel.com>,
 Alexey Budankov <alexey.budankov@linux.intel.com>,
 Clark Williams <williams@redhat.com>, Suzuki Poulouse <suzuki.poulose@arm.com>,
 Arnaldo Carvalho de Melo <acme@redhat.com>,
 Alexios Zavras <alexios.zavras@intel.com>, Davidlohr Bueso <dave@stgolabs.net>,
 Namhyung Kim <namhyung@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Thomas Richter <tmricht@linux.ibm.com>, linux-kernel@vger.kernel.org,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 "David S . Miller" <davem@davemloft.net>, linux-perf-users@vger.kernel.org,
 Changbin Du <changbin.du@intel.com>, Peter Zijlstra <peterz@infradead.org>,
 Jiri Olsa <jolsa@kernel.org>, Leo Yan <leo.yan@linaro.org>,
 Eric Saint-Etienne <eric.saint.etienne@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Leo Yan <leo.yan@linaro.org>

Based on the following report from Smatch, fix the potential NULL
pointer dereference check.

  tools/perf/builtin-trace.c:1044
  thread_trace__new() error: we previously assumed 'ttrace' could be
  null (see line 1041).

  tools/perf/builtin-trace.c
  1037 static struct thread_trace *thread_trace__new(void)
  1038 {
  1039         struct thread_trace *ttrace =  zalloc(sizeof(struct thread_trace));
  1040
  1041         if (ttrace)
  1042                 ttrace->files.max = -1;
  1043
  1044         ttrace->syscall_stats = intlist__new(NULL);
               ^^^^^^^^
  1045
  1046         return ttrace;
  1047 }

Signed-off-by: Leo Yan <leo.yan@linaro.org>
Acked-by: Jiri Olsa <jolsa@kernel.org>
Cc: Adrian Hunter <adrian.hunter@intel.com>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Alexey Budankov <alexey.budankov@linux.intel.com>
Cc: Alexios Zavras <alexios.zavras@intel.com>
Cc: Andi Kleen <ak@linux.intel.com>
Cc: Changbin Du <changbin.du@intel.com>
Cc: David S. Miller <davem@davemloft.net>
Cc: Davidlohr Bueso <dave@stgolabs.net>
Cc: Eric Saint-Etienne <eric.saint.etienne@oracle.com>
Cc: Jin Yao <yao.jin@linux.intel.com>
Cc: Konstantin Khlebnikov <khlebnikov@yandex-team.ru>
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Cc: Song Liu <songliubraving@fb.com>
Cc: Suzuki Poulouse <suzuki.poulose@arm.com>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Thomas Richter <tmricht@linux.ibm.com>
Cc: linux-arm-kernel@lists.infradead.org
Link: http://lkml.kernel.org/r/20190702103420.27540-6-leo.yan@linaro.org
[ Just made it look like other tools/perf constructors, same end result ]
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 tools/perf/builtin-trace.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/tools/perf/builtin-trace.c b/tools/perf/builtin-trace.c
index d0eb7224dd36..e3fc9062f136 100644
--- a/tools/perf/builtin-trace.c
+++ b/tools/perf/builtin-trace.c
@@ -1038,10 +1038,10 @@ static struct thread_trace *thread_trace__new(void)
 {
 	struct thread_trace *ttrace =  zalloc(sizeof(struct thread_trace));
 
-	if (ttrace)
+	if (ttrace) {
 		ttrace->files.max = -1;
-
-	ttrace->syscall_stats = intlist__new(NULL);
+		ttrace->syscall_stats = intlist__new(NULL);
+	}
 
 	return ttrace;
 }
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
