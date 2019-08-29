Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A589A1D6E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 16:42:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X++sJ3Fi0uVe0oKBGBNnywqHvzQ3/FU7VqJ0EDmaSTg=; b=fG90n0eW4uNopu
	WdQDic9v79/NGi9T2xohBszgKBKv/189FfwR4AySnOxj88Q7uGJ1FCJP9TIEquuPV+8PWcBXwagA7
	oucArC0jdP6aZI4Hksnd//8M7h7TUrS0C7CZPr4ci/hUhyKv1sAfTeMpDjVvEC529bQGtcifztCbi
	vpjHpS5+AFCLZ1Dob6YKyqeF6UN+7rimSqGacO9kRN1gFGdjw1xnPkm2pgdEhERXsl9Z1/cmKma6v
	RZxvXbSSkt+I/bD5DgydPAzzqmdQX0xPBm0GOz+/1QUrVgPplEL5tL5ShVNn51hmbfZJPhN4ni6JU
	P+b0tBG5CFwPoourQHOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3LdT-0001by-CG; Thu, 29 Aug 2019 14:42:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3LaY-0008HW-64
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 14:39:54 +0000
Received: from quaco.ghostprotocols.net (unknown [179.97.35.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CEA7823407;
 Thu, 29 Aug 2019 14:39:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567089587;
 bh=uDqbdBuhP1ybWO26e7nw/Zs1qPgjlmnImdxzHTf5pjU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=sr1uDFL0ReGbbsBRLZMfTE4qbYgiuDtFWrZtR3RYGgZOaKp+GxcBq+bfFb/o0QSyZ
 dLFXUbxi6lC6FztMeA1sPmNWzPTEmXweCwZsEmvQHSTJvltxIDb3xS+tEOCBMTPj+6
 dACQaAqr84dX+CLgOrHVxpJVVM3NbkC0mKftGG7s=
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Ingo Molnar <mingo@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH 02/37] perf event: Check ref_reloc_sym before using it
Date: Thu, 29 Aug 2019 11:38:42 -0300
Message-Id: <20190829143917.29745-3-acme@kernel.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190829143917.29745-1-acme@kernel.org>
References: <20190829143917.29745-1-acme@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_073952_562215_42067187 
X-CRM114-Status: GOOD (  10.96  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Arnaldo Carvalho de Melo <acme@redhat.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki Poulouse <suzuki.poulose@arm.com>, Clark Williams <williams@redhat.com>,
 Alexey Budankov <alexey.budankov@linux.intel.com>,
 Igor Lubashev <ilubashe@akamai.com>, linux-kernel@vger.kernel.org,
 James Morris <jmorris@namei.org>, linux-perf-users@vger.kernel.org,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Peter Zijlstra <peterz@infradead.org>, Jiri Olsa <jolsa@kernel.org>,
 Namhyung Kim <namhyung@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Igor Lubashev <ilubashe@akamai.com>

Check for ref_reloc_sym before using it instead of checking
symbol_conf.kptr_restrict and relying solely on that check.

Reported-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Signed-off-by: Igor Lubashev <ilubashe@akamai.com>
Tested-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Alexey Budankov <alexey.budankov@linux.intel.com>
Cc: James Morris <jmorris@namei.org>
Cc: Jiri Olsa <jolsa@kernel.org>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Suzuki Poulouse <suzuki.poulose@arm.com>
Cc: linux-arm-kernel@lists.infradead.org
Link: http://lkml.kernel.org/r/1566869956-7154-2-git-send-email-ilubashe@akamai.com
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 tools/perf/util/event.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/tools/perf/util/event.c b/tools/perf/util/event.c
index 33616ea62a47..e33dd1a040cc 100644
--- a/tools/perf/util/event.c
+++ b/tools/perf/util/event.c
@@ -913,11 +913,13 @@ static int __perf_event__synthesize_kernel_mmap(struct perf_tool *tool,
 	int err;
 	union perf_event *event;
 
-	if (symbol_conf.kptr_restrict)
-		return -1;
 	if (map == NULL)
 		return -1;
 
+	kmap = map__kmap(map);
+	if (!kmap->ref_reloc_sym)
+		return -1;
+
 	/*
 	 * We should get this from /sys/kernel/sections/.text, but till that is
 	 * available use this, and after it is use this as a fallback for older
@@ -940,7 +942,6 @@ static int __perf_event__synthesize_kernel_mmap(struct perf_tool *tool,
 		event->header.misc = PERF_RECORD_MISC_GUEST_KERNEL;
 	}
 
-	kmap = map__kmap(map);
 	size = snprintf(event->mmap.filename, sizeof(event->mmap.filename),
 			"%s%s", machine->mmap_name, kmap->ref_reloc_sym->name) + 1;
 	size = PERF_ALIGN(size, sizeof(u64));
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
