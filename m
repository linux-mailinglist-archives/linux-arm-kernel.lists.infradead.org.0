Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F9BA6DA6D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 06:02:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bn4ysp+3hLbJd6TaWKFsv0JtYsGs10EtZSmX1fmrX8w=; b=cxlzNpu0Sw0eMw
	ckZ8o9paJ6aG6A3yeSLTBfnCn6bONBlBHobTSAWpP+deNlqihxr+4dRP1FaoK/BE9UuGzO4y4oHfQ
	FUxmTudsZba57CDui5UW3/P6seyArQJcd5mvHZW/36WVC86Anx37VFex+muE6Lr7IDtj2Pas0aARX
	ggK+oWmbLdIRKt7InAn9PqtxdoS6u5OoF/2tcqY9nszABbiyNa8sqH7mye5XtxbIiXASBXVFU3rQG
	BJBOPelum3EJFuRp1XpCnr1250YPIBPi8iMSeti0dDFPz+lWpVQrMxl56rzrQBgkXNwMFkxImqHP9
	XGPwro/SqzKmQNMduD4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoK6R-0007QW-Ho; Fri, 19 Jul 2019 04:02:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoK4w-0006T2-FN
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 04:01:14 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AA3AB218BA;
 Fri, 19 Jul 2019 04:01:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563508866;
 bh=DFafnbAHopfkugyR/u2EBGYtfhirSvbWGoa3dRt0uaQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=gz6+rTugbr1rNkKcKRCTMm8M5FYcrGPBQY0x3zX7kHzpj796ssfuh96kvF4Z3lZsa
 L3j74SKhGFm49IS3l50DSjlEia7G3RaCi/iLmjP0PVlgxXpWgfA8kU/o+D3fhwZJfJ
 vjaxOf5Gjad/BdghK2z/6FRynE+dfwS5b6pRnvJ4=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.2 128/171] perf map: Fix potential NULL pointer
 dereference found by smatch tool
Date: Thu, 18 Jul 2019 23:55:59 -0400
Message-Id: <20190719035643.14300-128-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190719035643.14300-1-sashal@kernel.org>
References: <20190719035643.14300-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_210106_728903_3C3CC81C 
X-CRM114-Status: GOOD (  11.77  )
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

[ Upstream commit 363bbaef63ffebcc745239fe80a953ebb5ac9ec9 ]

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
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 tools/perf/util/map.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/tools/perf/util/map.c b/tools/perf/util/map.c
index ee71efb9db62..9c81ee092784 100644
--- a/tools/perf/util/map.c
+++ b/tools/perf/util/map.c
@@ -470,8 +470,11 @@ int map__fprintf_srccode(struct map *map, u64 addr,
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
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
