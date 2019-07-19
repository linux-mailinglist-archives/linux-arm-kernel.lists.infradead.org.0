Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B68A56DA68
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 06:02:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OZO82GQA0ode2PeUbv0GXl/EW8xnxiSaWncvUIbd1fQ=; b=M1blV/ydQKLcjs
	AG/dmgsQkahH3jVuIga8pne6Hj3uiJEEPNedraqsj3C0mBv945/3Hn+dBjGhSDvcJK2ot4IGwue7D
	77uJJkjgrriZDTjRk1z4VRiO2z3GKSDKFPnoxoIVyvv81oUybwX3xY5Ke8KlaOxficReOTfwElV9t
	86GUKpCg8QTPlK9qkHGXhIEmXPqNJHnAYO7gXkmYo5b9zDqnrY1G4p1GvWxdIwOMoUqTMIEaUdJ5P
	g2et7dn2WwUSV40z4/rKqrPBvQbs0UrqnpnEd5HRl3bfZV4w1D7hCv2sn4ZwgFPsfs0uuaIvcHC17
	VKlLk0srhBfw5DJCxjfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoK5r-0006tH-18; Fri, 19 Jul 2019 04:02:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoK4n-0006Lg-H7
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 04:00:59 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C5536218B8;
 Fri, 19 Jul 2019 04:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563508857;
 bh=FkgbKeolixybgF47goQbMIzkk7W9cL1VvAvdzo1O9+Y=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=nvnDPLF+XnQdeRpRvSezEsdwb6j7GxHOfzZuhg8KErX2jdRyvYCCr9TZ3CQTm4fqs
 IcpiexmbfNKeHguc/YnXSmZ/AmHneLWjRqqq0LJ8F5KsKLdgagSJqy2rKIbmF94SIC
 DARRl80TF6xdnY2gh6mmJz5DbP+l3BzhupVgmc4g=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.2 126/171] perf trace: Fix potential NULL pointer
 dereference found by the smatch tool
Date: Thu, 18 Jul 2019 23:55:57 -0400
Message-Id: <20190719035643.14300-126-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190719035643.14300-1-sashal@kernel.org>
References: <20190719035643.14300-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_210057_914920_47ABDFAC 
X-CRM114-Status: GOOD (  13.65  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, Jin Yao <yao.jin@linux.intel.com>,
 Sasha Levin <sashal@kernel.org>, Andi Kleen <ak@linux.intel.com>,
 Alexey Budankov <alexey.budankov@linux.intel.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Suzuki Poulouse <suzuki.poulose@arm.com>,
 Arnaldo Carvalho de Melo <acme@redhat.com>,
 Alexios Zavras <alexios.zavras@intel.com>, Davidlohr Bueso <dave@stgolabs.net>,
 Namhyung Kim <namhyung@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Thomas Richter <tmricht@linux.ibm.com>,
 Adrian Hunter <adrian.hunter@intel.com>,
 "David S . Miller" <davem@davemloft.net>, Changbin Du <changbin.du@intel.com>,
 Peter Zijlstra <peterz@infradead.org>, Jiri Olsa <jolsa@kernel.org>,
 Leo Yan <leo.yan@linaro.org>,
 Eric Saint-Etienne <eric.saint.etienne@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Leo Yan <leo.yan@linaro.org>

[ Upstream commit 7a6d49dc8cad8fa1f3d63994102af8f9ae9c859f ]

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
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 tools/perf/builtin-trace.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/tools/perf/builtin-trace.c b/tools/perf/builtin-trace.c
index 52fadc858ef0..909e68545bb8 100644
--- a/tools/perf/builtin-trace.c
+++ b/tools/perf/builtin-trace.c
@@ -997,10 +997,10 @@ static struct thread_trace *thread_trace__new(void)
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
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
