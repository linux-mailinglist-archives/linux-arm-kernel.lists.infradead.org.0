Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D34ACF37F8
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 20:06:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hAYn0aWUB0xEJnXP5NO6kHB8Sk0aaLe3Q5h731hvu+Y=; b=gMKwZ6y5tB26i2
	9dB9l4/q6jDQqYKd6/YdCbjB2I9b3KwVrtmO7131If7wh5q1uD0BkDsmYfxa0bZxKtNT7g9KdIjot
	tpzSTzCDYMuHcu2nWSKWE5e7/7hnnl7w1/0L9ZgFB6Ug6gFOAqdy9WcVqtzbagserLPonX+7zlUOf
	Qln5u71QnHqkUq0uBLyxfDVtb518JAUqTTz3vBmqgKOr9NvvoUHOWSKgreYe4pRvq7gxg/bDbBRY9
	3NhA4OKXRLAevrW18M2iMl0VsxpiqEOK3m22tv3y8Z97KcQFBfz5XtIeZ+Fro1fckiaN3sGczsgbK
	7yl6muLfV7FJKpgqnErQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSn75-0003Jn-LS; Thu, 07 Nov 2019 19:06:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSn6z-0003J5-0Q
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 19:06:30 +0000
Received: from quaco.ghostprotocols.net (179-240-172-58.3g.claro.net.br
 [179.240.172.58])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7C4C8222C6;
 Thu,  7 Nov 2019 19:06:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573153588;
 bh=obswrDG1ZxfUiXZJ7jUiqEfLNTSGT592OfqCFlY8FxQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=qvS7IjMt1UP18lkoUCiTLu6F5DzUcHkUBA23zt5nCPQnqNnJhJzlr7x6Lzm6rE/yw
 1sCqMle/1ZDQaGyDr/v0m72IDQklPDiJqZqMVsLkyKZU5XSM6RHdhpc2dEZQmgEuhW
 W/9qe98+6CnP4b1vTd5uYfKRb0+MUzHp4ziFQuUI=
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Ingo Molnar <mingo@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH 39/63] perf tools: Fix cross compile for ARM64
Date: Thu,  7 Nov 2019 15:59:47 -0300
Message-Id: <20191107190011.23924-40-acme@kernel.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191107190011.23924-1-acme@kernel.org>
References: <20191107190011.23924-1-acme@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_110629_067909_42C6EC5C 
X-CRM114-Status: GOOD (  11.31  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Arnaldo Carvalho de Melo <acme@redhat.com>,
 Clark Williams <williams@redhat.com>, Will Deacon <will@kernel.org>,
 John Garry <john.garry@huawei.com>, linux-kernel@vger.kernel.org,
 linux-perf-users@vger.kernel.org,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Peter Zijlstra <peterz@infradead.org>, Jiri Olsa <jolsa@kernel.org>,
 Namhyung Kim <namhyung@kernel.org>, Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: John Garry <john.garry@huawei.com>

Currently when cross compiling perf tool for ARM64 on my x86 machine I
get this error:

  arch/arm64/util/sym-handling.c:9:10: fatal error: gelf.h: No such file or directory
   #include <gelf.h>

For the build, libelf is reported off:

  Auto-detecting system features:
  ...
  ...                        libelf: [ OFF ]

Indeed, test-libelf is not built successfully:

  more ./build/feature/test-libelf.make.output
  test-libelf.c:2:10: fatal error: libelf.h: No such file or directory
   #include <libelf.h>
          ^~~~~~~~~~
  compilation terminated.

I have no such problems natively compiling on ARM64, and I did not
previously have this issue for cross compiling. Fix by relocating the
gelf.h include.

Signed-off-by: John Garry <john.garry@huawei.com>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Jiri Olsa <jolsa@redhat.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Will Deacon <will@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org
Link: http://lore.kernel.org/lkml/1573045254-39833-1-git-send-email-john.garry@huawei.com
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 tools/perf/arch/arm64/util/sym-handling.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/tools/perf/arch/arm64/util/sym-handling.c b/tools/perf/arch/arm64/util/sym-handling.c
index 5df788985130..8dfa3e5229f1 100644
--- a/tools/perf/arch/arm64/util/sym-handling.c
+++ b/tools/perf/arch/arm64/util/sym-handling.c
@@ -6,9 +6,10 @@
 
 #include "symbol.h" // for the elf__needs_adjust_symbols() prototype
 #include <stdbool.h>
-#include <gelf.h>
 
 #ifdef HAVE_LIBELF_SUPPORT
+#include <gelf.h>
+
 bool elf__needs_adjust_symbols(GElf_Ehdr ehdr)
 {
 	return ehdr.e_type == ET_EXEC ||
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
