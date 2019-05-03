Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D5D212574
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 02:26:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7dyF3PLEL/sZ7o5CVOI/fc6V6cTc4es4xAovMUZg6qs=; b=dMNaY1tko9vt2u
	9si9UjbsXmMWLv3VDUOMLv82KQI9qSEoooogDwqbmmxqF/abG2tahG/81rmo5/tcjuy4jTqd2MeOh
	ri3DziRCa84qu1w3Od2fq5xZ8dbsl8xgJGcB8bPMzdneSnsdzWH3wpuAzVko25m8STa/6LCVl026d
	u1W0jGve0ClO6BYxLHM8XH0wDO0cpPlOKzu0FJHZMu4rYhh4Yr/59EbTGfLT/7jYgRh+tSbDvcixB
	BGNJiUPHYj596X9M+i1Y+gZyOPuRIz6giAKFiueqZjBNjLkW5+FUe9m9e7PWflHpL71Yp8IthH4FD
	4ck3Xyf0g8MPe2iZocHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMM1v-0005TU-O8; Fri, 03 May 2019 00:26:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMM1h-0005Mc-2p
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 00:26:10 +0000
Received: from quaco.ghostprotocols.net (adsl-173-228-226-134.prtc.net
 [173.228.226.134])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 62D8B217D4;
 Fri,  3 May 2019 00:26:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556843168;
 bh=0W/IEo/M2/Xmyn/H5AkhZO7nQPFZLmoXQI5hS0C/M78=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=VTo6q/l2qk438aHpNfAnJH+BOBJkFvQFuSCy2mO9/y5QOUdX546/hkDlN49DmNTPy
 MtnXUyP/c2c5SsFnEux+Zj+jm24+0M3lc4emxPL77xyP+Qihg3dzVg8EjSXm3IBby9
 dkhpOS5FNKkcqsbb+Xnk/VrNao/9ePm/QPa1gALY=
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Ingo Molnar <mingo@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH 08/11] perf cs-etm: Always allocate memory for
 cs_etm_queue::prev_packet
Date: Thu,  2 May 2019 20:25:30 -0400
Message-Id: <20190503002533.29359-9-acme@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190503002533.29359-1-acme@kernel.org>
References: <20190503002533.29359-1-acme@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_172609_161575_F1C30A1D 
X-CRM114-Status: GOOD (  13.75  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Suzuki K Poulouse <suzuki.poulose@arm.com>,
 Clark Williams <williams@redhat.com>, linux-kernel@vger.kernel.org,
 linux-perf-users@vger.kernel.org,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@kernel.org>, Leo Yan <leo.yan@linaro.org>,
 Namhyung Kim <namhyung@kernel.org>, Robert Walker <robert.walker@arm.com>,
 Jiri Olsa <jolsa@redhat.com>, linux-arm-kernel@lists.infradead.org,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Leo Yan <leo.yan@linaro.org>

Robert Walker reported a segmentation fault is observed when process
CoreSight trace data; this issue can be easily reproduced by the command
'perf report --itrace=i1000i' for decoding tracing data.

If neither the 'b' flag (synthesize branches events) nor 'l' flag
(synthesize last branch entries) are specified to option '--itrace',
cs_etm_queue::prev_packet will not been initialised.  After merging the
code to support exception packets and sample flags, there introduced a
number of uses of cs_etm_queue::prev_packet without checking whether it
is valid, for these cases any accessing to uninitialised prev_packet
will cause crash.

As cs_etm_queue::prev_packet is used more widely now and it's already
hard to follow which functions have been called in a context where the
validity of cs_etm_queue::prev_packet has been checked, this patch
always allocates memory for cs_etm_queue::prev_packet.

Reported-by: Robert Walker <robert.walker@arm.com>
Suggested-by: Robert Walker <robert.walker@arm.com>
Signed-off-by: Leo Yan <leo.yan@linaro.org>
Tested-by: Robert Walker <robert.walker@arm.com>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Jiri Olsa <jolsa@redhat.com>
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Cc: Mike Leach <mike.leach@linaro.org>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Suzuki K Poulouse <suzuki.poulose@arm.com>
Cc: linux-arm-kernel@lists.infradead.org
Fixes: 7100b12cf474 ("perf cs-etm: Generate branch sample for exception packet")
Fixes: 24fff5eb2b93 ("perf cs-etm: Avoid stale branch samples when flush packet")
Link: http://lkml.kernel.org/r/20190428083228.20246-1-leo.yan@linaro.org
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 tools/perf/util/cs-etm.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
index 7777cfc1ad8c..de488b43f440 100644
--- a/tools/perf/util/cs-etm.c
+++ b/tools/perf/util/cs-etm.c
@@ -422,11 +422,9 @@ static struct cs_etm_queue *cs_etm__alloc_queue(struct cs_etm_auxtrace *etm)
 	if (!etmq->packet)
 		goto out_free;
 
-	if (etm->synth_opts.last_branch || etm->sample_branches) {
-		etmq->prev_packet = zalloc(szp);
-		if (!etmq->prev_packet)
-			goto out_free;
-	}
+	etmq->prev_packet = zalloc(szp);
+	if (!etmq->prev_packet)
+		goto out_free;
 
 	if (etm->synth_opts.last_branch) {
 		size_t sz = sizeof(struct branch_stack);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
