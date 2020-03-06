Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81B2917C1B5
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 16:26:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9Oa/0yMIoiwESi+0V+zOT13LMridBWKYOR7HTCslT2c=; b=Nfz94SOuC6Mkt84w5ZoROz0x+4
	NAhdawH+jS/6bbGrzWhY2QBfQ/bPHtkZ00gC4rNvjGGuVF8c0j138TrGK1d5XulCLGRhMCAkmky3v
	o59OMdqfPd2na2L5KjIFjPPUZlrkTgj/okoXWB0PXAsSwx+NEhvjpDnwU2kjzj0KHfQNi2tWrqXzZ
	BlIrryLqFigZl1HqbgXBjc7p+N80neK/hcvGBPs6A8g4jBUGX47lhbbLx/L+I8Jxo50i4Hrxsomm9
	5TvZz50MmjRw15PiTeT5DXlIiVobgDgnN1JRpVYstLjwwiOFmVKeE4/5rGjbQNGRoTO2Y/47fGhUn
	CcXifKuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAEsA-0004PR-DZ; Fri, 06 Mar 2020 15:26:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAErI-0003tR-GZ
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 15:25:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0E3B8113E;
 Fri,  6 Mar 2020 07:25:52 -0800 (PST)
Received: from e121896.warwick.arm.com (e121896.warwick.arm.com [10.32.36.26])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id
 D45643F237; Fri,  6 Mar 2020 07:25:48 -0800 (PST)
From: James Clark <james.clark@arm.com>
To: mark.rutland@arm.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v6 3/3] perf report: Add SPE options to --itrace argument
Date: Fri,  6 Mar 2020 15:25:20 +0000
Message-Id: <20200306152520.28233-4-james.clark@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200306152520.28233-1-james.clark@arm.com>
References: <20200228160126.GI36089@lakrids.cambridge.arm.com>
 <20200306152520.28233-1-james.clark@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_072552_647005_F4063D6C 
X-CRM114-Status: UNSURE (   8.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Al Grant <al.grant@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Jiri Olsa <jolsa@redhat.com>, Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, James Clark <james.clark@arm.com>,
 Namhyung Kim <namhyung@kernel.org>, nd@arm.com, Will Deacon <will@kernel.org>,
 Tan Xiaojun <tanxiaojun@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tan Xiaojun <tanxiaojun@huawei.com>

The previous patch added support in "perf report" for some arm-spe
events(llc-miss, tlb-miss, branch-miss, remote_access). This patch
adds their help instructions.

Signed-off-by: Tan Xiaojun <tanxiaojun@huawei.com>
Tested-by: Qi Liu <liuqi115@hisilicon.com>
Signed-off-by: James Clark <james.clark@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Arnaldo Carvalho de Melo <acme@kernel.org>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Jiri Olsa <jolsa@redhat.com>
Cc: Tan Xiaojun <tanxiaojun@huawei.com>
Cc: Al Grant <al.grant@arm.com>
Cc: Namhyung Kim <namhyung@kernel.org>
---
 tools/perf/Documentation/itrace.txt | 5 ++++-
 tools/perf/util/auxtrace.h          | 5 ++++-
 2 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/tools/perf/Documentation/itrace.txt b/tools/perf/Documentation/itrace.txt
index 82ff7dad40c2..da3e5ccc039e 100644
--- a/tools/perf/Documentation/itrace.txt
+++ b/tools/perf/Documentation/itrace.txt
@@ -1,5 +1,5 @@
 		i	synthesize instructions events
-		b	synthesize branches events
+		b	synthesize branches events (branch misses on Arm)
 		c	synthesize branches events (calls only)
 		r	synthesize branches events (returns only)
 		x	synthesize transactions events
@@ -9,6 +9,9 @@
 			of aux-output (refer to perf record)
 		e	synthesize error events
 		d	create a debug log
+		m	synthesize LLC miss events
+		t	synthesize TLB miss events
+		a	synthesize remote access events
 		g	synthesize a call chain (use with i or x)
 		l	synthesize last branch entries (use with i or x)
 		s       skip initial number of events
diff --git a/tools/perf/util/auxtrace.h b/tools/perf/util/auxtrace.h
index 80617b0d044d..52e148eea7f8 100644
--- a/tools/perf/util/auxtrace.h
+++ b/tools/perf/util/auxtrace.h
@@ -587,7 +587,7 @@ void auxtrace__free(struct perf_session *session);
 
 #define ITRACE_HELP \
 "				i:	    		synthesize instructions events\n"		\
-"				b:	    		synthesize branches events\n"		\
+"				b:	    		synthesize branches events (branch misses on Arm)\n" \
 "				c:	    		synthesize branches events (calls only)\n"	\
 "				r:	    		synthesize branches events (returns only)\n" \
 "				x:	    		synthesize transactions events\n"		\
@@ -595,6 +595,9 @@ void auxtrace__free(struct perf_session *session);
 "				p:	    		synthesize power events\n"			\
 "				e:	    		synthesize error events\n"			\
 "				d:	    		create a debug log\n"			\
+"				m:	    		synthesize LLC miss events\n" \
+"				t:	    		synthesize TLB miss events\n" \
+"				a:	    		synthesize remote access events\n" \
 "				g[len]:     		synthesize a call chain (use with i or x)\n" \
 "				l[len]:     		synthesize last branch entries (use with i or x)\n" \
 "				sNUMBER:    		skip initial number of events\n"		\
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
