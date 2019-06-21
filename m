Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 505CF4EDE5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 19:39:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xbnt3+iQ3AzuX4UXDEGt4ir2Rey7qqhtloN3gilg9Qk=; b=l2P1MiPTi38qer
	1wghBvucYcKSVbRp3trbf5rfSZaQCMCLLQ6wB0RRuHWcv//w0MIzAGS6R9uAQZljgx9tjfjbnWaHX
	KywKzyJ3+xPTiCup7VedpUwhvc/bGdrDM4zm1s5+iVnZhxDSAIB4wRZQged3ba5RSrbUWBAtYcNRp
	SfvtSY4CvZRipEpInpZhm9E94NTy0vtbHnyFNsqxAKVoTyTH1G5AwERvbXpH9Jlo5VJalWJRBNOUs
	Ho5Y6ebJhmp5EOImHZOAjKmSxLEvYfNrXCFEztu0P+zhVJc32ooKjWLWnUwCqFX1O2bTo5Ezf/WGQ
	3VfnCOfJ9zbfQvROGw8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heNVW-000241-6z; Fri, 21 Jun 2019 17:39:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heNVK-00023i-2E
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 17:39:15 +0000
Received: from quaco.ghostprotocols.net (187-26-104-93.3g.claro.net.br
 [187.26.104.93])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 34FB62083B;
 Fri, 21 Jun 2019 17:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561138752;
 bh=7eMeE7dt+M7EOEz6Yd2aF+eYztz13iKanKtWGcn0EWI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Mjgnbhni5LDpqy51b8kC3P2uXPtEqZma/r1C4+yUJ4kEeMU5m6xF89vRAIfjwxwND
 MuSPCDWOdndHPm39Dfzn7GWYnrLVt1tzGAAID467YjZyQBPQ6rV1CIBQurv9reJ37b
 sZyhZn//nwnJ+DpId1L1x1aT5C1sGU/dd3yZ7eq8=
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Ingo Molnar <mingo@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH 01/25] perf tests arm64: Compile tests unconditionally
Date: Fri, 21 Jun 2019 14:38:07 -0300
Message-Id: <20190621173831.13780-2-acme@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190621173831.13780-1-acme@kernel.org>
References: <20190621173831.13780-1-acme@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_103914_129145_2ABA71BF 
X-CRM114-Status: GOOD (  10.30  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Arnaldo Carvalho de Melo <acme@redhat.com>,
 Clark Williams <williams@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, linux-perf-users@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>, Raphael Gault <raphael.gault@arm.com>,
 Jiri Olsa <jolsa@kernel.org>, Namhyung Kim <namhyung@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Raphael Gault <raphael.gault@arm.com>

In order to subsequently add more tests for the arm64 architecture we
compile the tests target for arm64 systematically.

Further explanation provided by Mark Rutland:

Given prior questions regarding this commit, it's probably worth
spelling things out more explicitly, e.g.

  Currently we only build the arm64/tests directory if
  CONFIG_DWARF_UNWIND is selected, which is fine as the only test we
  have is arm64/tests/dwarf-unwind.o.

  So that we can add more tests to the test directory, let's
  unconditionally build the directory, but conditionally build
  dwarf-unwind.o depending on CONFIG_DWARF_UNWIND.

  There should be no functional change as a result of this patch.

Signed-off-by: Raphael Gault <raphael.gault@arm.com>
Acked-by: Mark Rutland <mark.rutland@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Will Deacon <will.deacon@arm.com>
Cc: linux-arm-kernel@lists.infradead.org
Link: http://lkml.kernel.org/r/20190611125315.18736-2-raphael.gault@arm.com
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 tools/perf/arch/arm64/Build       | 2 +-
 tools/perf/arch/arm64/tests/Build | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/tools/perf/arch/arm64/Build b/tools/perf/arch/arm64/Build
index 36222e64bbf7..a7dd46a5b678 100644
--- a/tools/perf/arch/arm64/Build
+++ b/tools/perf/arch/arm64/Build
@@ -1,2 +1,2 @@
 perf-y += util/
-perf-$(CONFIG_DWARF_UNWIND) += tests/
+perf-y += tests/
diff --git a/tools/perf/arch/arm64/tests/Build b/tools/perf/arch/arm64/tests/Build
index 41707fea74b3..a61c06bdb757 100644
--- a/tools/perf/arch/arm64/tests/Build
+++ b/tools/perf/arch/arm64/tests/Build
@@ -1,4 +1,4 @@
 perf-y += regs_load.o
-perf-y += dwarf-unwind.o
+perf-$(CONFIG_DWARF_UNWIND) += dwarf-unwind.o
 
 perf-y += arch-tests.o
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
