Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0F336DC28
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 06:14:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2PeofB1MhBRIrM0aaQtLoQvAN6HGAdOcoFYdxhNdgbI=; b=i8yEL24q8whHqL
	oNzEKoeB80cO59JaCVQUzTDhTAEheLEv2aoSg9viU/Ae2FBEkmDC9V8D1nHuw/6VoEbAFJXevX5Zo
	3/f4DU1CEOtn/aAxuQhWEsF0+4CDZPdI1aIm9w2krxY2NbeCb+NGu/SINCjq0eXBfibIUQlpO5Wg/
	sOP6BmLr4gynhlYOT+KXuGQ9Skd5AlU4toK3LrMEFWZ4S1fLtsGgE716EGopwR/2uXVe9tiDuJ9Ou
	9AhJ69R8wPyVD+TFv4oWqU9og5+262V2k8F6Rh80HYmR1hIWxRETfz0bm3XNYtWM8HVzHPUoXb1Bk
	DUdUbTsYfo3eQj3Tgq5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoKI8-0000Yl-TG; Fri, 19 Jul 2019 04:14:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoKG5-0007lB-3U
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 04:12:39 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 334B4218B6;
 Fri, 19 Jul 2019 04:12:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563509556;
 bh=RHZ6b2Jzz+8JZbsEUZXAGl+ziVEvVIz3Qs3//1mqvsc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=nX4L9k5niEtTMZTuX2iRTabP4xpQkcdTqMneb/l689PhUmQjGWoslBInbj3ZqlGDh
 xnRq3gTNkV2p7kinMM0ZoreXAnPFSWbCN8s1ZKkPFbcI563dkG5eB1KjDWC+u9zNaN
 sxNiYI0VZ4Ogs2wx6Gs0pyX+1UhKLifMie3gMisM=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.14 45/60] perf annotate: Fix dereferencing freed
 memory found by the smatch tool
Date: Fri, 19 Jul 2019 00:10:54 -0400
Message-Id: <20190719041109.18262-45-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190719041109.18262-1-sashal@kernel.org>
References: <20190719041109.18262-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_211237_355907_B6993580 
X-CRM114-Status: GOOD (  13.28  )
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

[ Upstream commit 600c787dbf6521d8d07ee717ab7606d5070103ea ]

Based on the following report from Smatch, fix the potential
dereferencing freed memory check.

  tools/perf/util/annotate.c:1125
  disasm_line__parse() error: dereferencing freed memory 'namep'

  tools/perf/util/annotate.c
  1100 static int disasm_line__parse(char *line, const char **namep, char **rawp)
  1101 {
  1102         char tmp, *name = ltrim(line);

  [...]

  1114         *namep = strdup(name);
  1115
  1116         if (*namep == NULL)
  1117                 goto out_free_name;

  [...]

  1124 out_free_name:
  1125         free((void *)namep);
                            ^^^^^
  1126         *namep = NULL;
               ^^^^^^
  1127         return -1;
  1128 }

If strdup() fails to allocate memory space for *namep, we don't need to
free memory with pointer 'namep', which is resident in data structure
disasm_line::ins::name; and *namep is NULL pointer for this failure, so
it's pointless to assign NULL to *namep again.

Committer note:

Freeing namep, which is the address of the first entry of the 'struct
ins' that is the first member of struct disasm_line would in fact free
that disasm_line instance, if it was allocated via malloc/calloc, which,
later, would a dereference of freed memory.

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
Link: http://lkml.kernel.org/r/20190702103420.27540-5-leo.yan@linaro.org
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 tools/perf/util/annotate.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/tools/perf/util/annotate.c b/tools/perf/util/annotate.c
index 398d4cc2f0e4..2a8d2a6723f6 100644
--- a/tools/perf/util/annotate.c
+++ b/tools/perf/util/annotate.c
@@ -868,16 +868,14 @@ static int disasm_line__parse(char *line, const char **namep, char **rawp)
 	*namep = strdup(name);
 
 	if (*namep == NULL)
-		goto out_free_name;
+		goto out;
 
 	(*rawp)[0] = tmp;
 	*rawp = ltrim(*rawp);
 
 	return 0;
 
-out_free_name:
-	free((void *)namep);
-	*namep = NULL;
+out:
 	return -1;
 }
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
