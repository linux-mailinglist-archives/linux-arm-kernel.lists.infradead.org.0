Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B51597969C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 21:53:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8SuQMV4luZO83H+XYAL4BwlDxuFMrEkH04fEveEQLBU=; b=roOqFm3VqUc0OQ
	yMpRosBXPCZeCpg26eTtF4yebmjltAt8aiWg/+vZvrw1Y8V57FbWPE8U7Gwx1HiZXtomVkyq70g6o
	ki40V8V1BbGOu5J3nETcRdvHQd3gQkuIXD4NgGmwtACOAWazjUGg+Q/AVRwTCD3A8PQwiUAclH9mw
	yG1rlKsgsa1lpZy0sM6i6oweAp1baNe+Uhna/xb8MOMzAldJMFF0WDn/0VW3vlUEWWIfPwq8AmbGZ
	QuUExkTOQPriqwYPoKEA/rjpNTb6YxP7MpSINnFxpMJEF5juicwxro5UQFkcqzoNcj7kgrZ6f0cPL
	UQUF9MfwQxGHb3ytDvpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsBiI-0005OB-BU; Mon, 29 Jul 2019 19:53:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsBhi-000563-9H
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 19:53:08 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6EA40217D7;
 Mon, 29 Jul 2019 19:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564429985;
 bh=sFfn2UZdTEp+YrDjG7uK+E7T6yPIR+C9ODctvnIzeqw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=GIJBWt8KBhnaTgg92tnCAhkfMATK+SwYDxjvm3S+lqV6GaF/ykWUSq/DK2vK4XH4R
 y+d7P8XlmmrcOC/lhCwJHqRBjOqtuODPVEgZtqCRDyhdx602iCJygyAhoOaLisWEEI
 OzQYRqbeSc6rljNwsoSLef04MCKE8hqBPrtQsbLY=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 5.2 122/215] perf top: Fix potential NULL pointer dereference
 detected by the smatch tool
Date: Mon, 29 Jul 2019 21:21:58 +0200
Message-Id: <20190729190800.312232580@linuxfoundation.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190729190739.971253303@linuxfoundation.org>
References: <20190729190739.971253303@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_125306_447699_AA032582 
X-CRM114-Status: GOOD (  13.01  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thomas Richter <tmricht@linux.ibm.com>,
 Adrian Hunter <adrian.hunter@intel.com>, stable@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, Changbin Du <changbin.du@intel.com>,
 Peter Zijlstra <peterz@infradead.org>, Jiri Olsa <jolsa@kernel.org>,
 Leo Yan <leo.yan@linaro.org>,
 Eric Saint-Etienne <eric.saint.etienne@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[ Upstream commit 111442cfc8abdeaa7ec1407f07ef7b3e5f76654e ]

Based on the following report from Smatch, fix the potential NULL
pointer dereference check.

  tools/perf/builtin-top.c:109
  perf_top__parse_source() warn: variable dereferenced before check 'he'
  (see line 103)

  tools/perf/builtin-top.c:233
  perf_top__show_details() warn: variable dereferenced before check 'he'
  (see line 228)

  tools/perf/builtin-top.c
  101 static int perf_top__parse_source(struct perf_top *top, struct hist_entry *he)
  102 {
  103         struct perf_evsel *evsel = hists_to_evsel(he->hists);
                                                        ^^^^
  104         struct symbol *sym;
  105         struct annotation *notes;
  106         struct map *map;
  107         int err = -1;
  108
  109         if (!he || !he->ms.sym)
  110                 return -1;

This patch moves the values assignment after validating pointer 'he'.

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
Link: http://lkml.kernel.org/r/20190702103420.27540-4-leo.yan@linaro.org
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 tools/perf/builtin-top.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/tools/perf/builtin-top.c b/tools/perf/builtin-top.c
index 466621cd1017..8a9ff4b11df0 100644
--- a/tools/perf/builtin-top.c
+++ b/tools/perf/builtin-top.c
@@ -100,7 +100,7 @@ static void perf_top__resize(struct perf_top *top)
 
 static int perf_top__parse_source(struct perf_top *top, struct hist_entry *he)
 {
-	struct perf_evsel *evsel = hists_to_evsel(he->hists);
+	struct perf_evsel *evsel;
 	struct symbol *sym;
 	struct annotation *notes;
 	struct map *map;
@@ -109,6 +109,8 @@ static int perf_top__parse_source(struct perf_top *top, struct hist_entry *he)
 	if (!he || !he->ms.sym)
 		return -1;
 
+	evsel = hists_to_evsel(he->hists);
+
 	sym = he->ms.sym;
 	map = he->ms.map;
 
@@ -225,7 +227,7 @@ static void perf_top__record_precise_ip(struct perf_top *top,
 static void perf_top__show_details(struct perf_top *top)
 {
 	struct hist_entry *he = top->sym_filter_entry;
-	struct perf_evsel *evsel = hists_to_evsel(he->hists);
+	struct perf_evsel *evsel;
 	struct annotation *notes;
 	struct symbol *symbol;
 	int more;
@@ -233,6 +235,8 @@ static void perf_top__show_details(struct perf_top *top)
 	if (!he)
 		return;
 
+	evsel = hists_to_evsel(he->hists);
+
 	symbol = he->ms.sym;
 	notes = symbol__annotation(symbol);
 
-- 
2.20.1




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
