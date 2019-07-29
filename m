Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDE207965B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 21:51:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EizjeXzxWAlN2vmeBpgAQFToSJtWBJyxNhHG8j3h5v0=; b=qarRrMVsW6e5t7
	YOjv7EMNJr08+dEIKJNWd/IYeFMUpoMi2lewTruiT7PkGqCbIzwvumRiWlLbtKyf4yzruPWJQK7LY
	8gR4j77JjJsGl8909TVTJ/pey8eyi8aGJPXhZeOsNtjX6Z8FhCeoPFNOUlf0SNnOpCnR558JPFFPk
	m2w5WC4+N49OR7RBvYs4Jo8TM9a/i7grYO8vzQU3oQG8sSk7Kxf0gXaXMqXUfeSfISfydYsxJE58/
	axB2ZFiAw+xyY0yf9uAU5nLjxVWpzIneBDeNReCtTmo3L5IphU4mVd+6ib9/4SlO3F5UzKsaskK1R
	wiTJISif98acVlY3wcVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsBgE-0003cG-71; Mon, 29 Jul 2019 19:51:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsBfv-0003ZT-ST
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 19:51:18 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 04F32205F4;
 Mon, 29 Jul 2019 19:51:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564429875;
 bh=PDKRh3yLK17oXfBPui/lkXXZPI+YwZkLMHVsggm9pio=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ki67qqRe2WKDPD0ZG6UskLmM4UXr6AgsHu4tvqbJuUGrt/6vCkmUDcZRIKGCjupLb
 VYELJ8ybHE4pxMxQVQRD04qHyOj8ibU2K1zqVnqfC05W/fukxEZ/NeJUL263EdIEay
 ISx9Uf76OwQwyy11zmS1DY3ah/+MkUIA8d3tFHAI=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 5.2 124/215] perf session: Fix potential NULL pointer
 dereference found by the smatch tool
Date: Mon, 29 Jul 2019 21:22:00 +0200
Message-Id: <20190729190800.716035519@linuxfoundation.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190729190739.971253303@linuxfoundation.org>
References: <20190729190739.971253303@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_125116_260023_2E09352D 
X-CRM114-Status: GOOD (  11.61  )
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

[ Upstream commit f3c8d90757724982e5f07cd77d315eb64ca145ac ]

Based on the following report from Smatch, fix the potential
NULL pointer dereference check.

  tools/perf/util/session.c:1252
  dump_read() error: we previously assumed 'evsel' could be null
  (see line 1249)

  tools/perf/util/session.c
  1240 static void dump_read(struct perf_evsel *evsel, union perf_event *event)
  1241 {
  1242         struct read_event *read_event = &event->read;
  1243         u64 read_format;
  1244
  1245         if (!dump_trace)
  1246                 return;
  1247
  1248         printf(": %d %d %s %" PRIu64 "\n", event->read.pid, event->read.tid,
  1249                evsel ? perf_evsel__name(evsel) : "FAIL",
  1250                event->read.value);
  1251
  1252         read_format = evsel->attr.read_format;
                             ^^^^^^^

'evsel' could be NULL pointer, for this case this patch directly bails
out without dumping read_event.

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
Link: http://lkml.kernel.org/r/20190702103420.27540-9-leo.yan@linaro.org
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 tools/perf/util/session.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/tools/perf/util/session.c b/tools/perf/util/session.c
index 54cf163347f7..2e61dd6a3574 100644
--- a/tools/perf/util/session.c
+++ b/tools/perf/util/session.c
@@ -1249,6 +1249,9 @@ static void dump_read(struct perf_evsel *evsel, union perf_event *event)
 	       evsel ? perf_evsel__name(evsel) : "FAIL",
 	       event->read.value);
 
+	if (!evsel)
+		return;
+
 	read_format = evsel->attr.read_format;
 
 	if (read_format & PERF_FORMAT_TOTAL_TIME_ENABLED)
-- 
2.20.1




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
