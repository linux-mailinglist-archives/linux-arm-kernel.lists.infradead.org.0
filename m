Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5264CF1687
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 14:04:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ttwm08eGKK8EcjfyaohC9rIHkhqH0zzzouFSMLWZwaM=; b=LnFCXXlEejAxsH
	AVXFRvEcYP/3pJwe/W+2L6r0TKQp4ObYnzeW6cDgWZIg4Fx3gDaQRAQGu+lfax7Y4vUkoNARcf0Pq
	VvozencIigYoMzHY2ujVfPINfN38W28yjmTN4EejJhqJe/xpLS0oS6QWU1uVLM1YQVaZf8xo6/mIS
	o0v+FHPm4NNvWZPAWq+bY/2lEfHrGeaLGMR4TRbbFwcTuNtWeRk7RitL5UYWzl1doOki0aMtzMeTH
	Raq2m5P2rWFmCbWDb+QBKGXkOotGcaBef+62cZU8C6NeVwqN5hpfnvRn3cMsu4r4dL9kmNDzsqc5n
	UqQtcSvs2D2B6HS6bv5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSKz8-0002YA-Cc; Wed, 06 Nov 2019 13:04:30 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSKz0-0002XN-19
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 13:04:23 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id C32D1F37FB2D9B81F177;
 Wed,  6 Nov 2019 21:04:16 +0800 (CST)
Received: from localhost.localdomain (10.69.192.58) by
 DGGEMS409-HUB.china.huawei.com (10.3.19.209) with Microsoft SMTP Server id
 14.3.439.0; Wed, 6 Nov 2019 21:04:07 +0800
From: John Garry <john.garry@huawei.com>
To: <peterz@infradead.org>, <mingo@redhat.com>, <acme@kernel.org>,
 <alexander.shishkin@linux.intel.com>, <jolsa@redhat.com>,
 <namhyung@kernel.org>, <mark.rutland@arm.com>
Subject: [RFC PATCH] perf tools: Fix cross compile for ARM64
Date: Wed, 6 Nov 2019 21:00:54 +0800
Message-ID: <1573045254-39833-1-git-send-email-john.garry@huawei.com>
X-Mailer: git-send-email 2.8.1
MIME-Version: 1.0
X-Originating-IP: [10.69.192.58]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_050422_246257_D4BCCE18 
X-CRM114-Status: UNSURE (   7.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: John Garry <john.garry@huawei.com>, will@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently when cross compiling perf tool for ARM64 on my x86 machine I get
this error:
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
previously have this issue for cross compiling. Fix by relocating
the gelf.h include.

Signed-off-by: John Garry <john.garry@huawei.com>
---

I marked this as RFC as I am suspicious that I have seen no other
reports, and whether fixing up the libelf.h include issue is the proper
approach.

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
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
