Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 814D363B06
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 20:33:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y68WhIOiS3drlGwsU4XarQPAIesSzcFvYsQUdOYLkfM=; b=YyQ+e4VRTNiDL7
	5If9iX/7YOXIVDWAd9v5/TNsjHepq1XczHtl3zcJY/lUSQ6aBN4JtHPI1IKIeFzqOTpnn72bs47Ya
	+wSdBx8qFSKqkhwRTPFVLe/DBEUUzKhwO7kLZ4iXhmwZVeV5274P/2wrwlhbO356+xyixhRxr2Mam
	qatxNa7w63KJDPk/qWoiR0FUROL0KnmdLLcurrOvYorgPrNdEMI8mQxkJiteT/4AEjbEciULgJIlK
	zyNJ+VdKsE2ZHlfLWwVZ4g3/arLqaQFY0yL754vrJbYcTUCtE0JlDd61Bq1AXS1gIeuugsGQLoGrd
	I7V0wp+S/HnnvRRuvB0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkuvK-0006eD-2Y; Tue, 09 Jul 2019 18:33:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkuuW-00062c-H7
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 18:32:18 +0000
Received: from quaco.ghostprotocols.net (unknown [179.97.35.11])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2FE342171F;
 Tue,  9 Jul 2019 18:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562697136;
 bh=JjyDoauJ+WYz56YyYDKCZ3keOnFJy6NiR6Q0BlDn5EY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ESqkemMNPwhyxKwOQR1gPTIAR2g071vi5m0lY8XDTWTk9gxiQcipmE/K7Zan3h6h4
 Hf3SBt9jwNbo5P0pUS1hf4uidv2b5RDrvxbykDHuwGO8ZT1TTc4GojtJ/VnVOuxZet
 b7Jb7VD996e5+fP2saq8AJCYYDH9elce/osSNPYE=
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Ingo Molnar <mingo@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH 06/25] perf map: Fix potential NULL pointer dereference found
 by smatch tool
Date: Tue,  9 Jul 2019 15:31:07 -0300
Message-Id: <20190709183126.30257-7-acme@kernel.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190709183126.30257-1-acme@kernel.org>
References: <20190709183126.30257-1-acme@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_113216_753724_907C7DCD 
X-CRM114-Status: GOOD (  10.23  )
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

  tools/perf/util/map.c:479
  map__fprintf_srccode() error: we previously assumed 'state' could be
  null (see line 466)

  tools/perf/util/map.c
  465         /* Avoid redundant printing */
  466         if (state &&
  467             state->srcfile &&
  468             !strcmp(state->srcfile, srcfile) &&
  469             state->line == line) {
  470                 free(srcfile);
  471                 return 0;
  472         }
  473
  474         srccode = find_sourceline(srcfile, line, &len);
  475         if (!srccode)
  476                 goto out_free_line;
  477
  478         ret = fprintf(fp, "|%-8d %.*s", line, len, srccode);
  479         state->srcfile = srcfile;
              ^^^^^^^
  480         state->line = line;
              ^^^^^^^

This patch validates 'state' pointer before access its elements.

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
Fixes: dd2e18e9ac20 ("perf tools: Support 'srccode' output")
Link: http://lkml.kernel.org/r/20190702103420.27540-8-leo.yan@linaro.org
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 tools/perf/util/map.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/tools/perf/util/map.c b/tools/perf/util/map.c
index 6fce983c6115..5f87975d2562 100644
--- a/tools/perf/util/map.c
+++ b/tools/perf/util/map.c
@@ -476,8 +476,11 @@ int map__fprintf_srccode(struct map *map, u64 addr,
 		goto out_free_line;
 
 	ret = fprintf(fp, "|%-8d %.*s", line, len, srccode);
-	state->srcfile = srcfile;
-	state->line = line;
+
+	if (state) {
+		state->srcfile = srcfile;
+		state->line = line;
+	}
 	return ret;
 
 out_free_line:
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
