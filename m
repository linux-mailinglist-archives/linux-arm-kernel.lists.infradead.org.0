Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41435204D5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 13:40:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g4TYdnXls9xNtnpWmWXLt2G+ucA8reMLge7wO27ZKEU=; b=ZYhgoVKUHTZXdw
	OT/90ulIIGrT9x9nkBrPhB1s7/Uld5jQY/mHGnrT+8sRA7ZBzidqEG/NBhtyyCXMHREw0pW7wybUl
	8huk+kWOXEANvdcbjSse4Yw/EBPJN76ObRzgtY+ExZua4dJJolcL/641GTWTBYQThiljH21Odu9gK
	lKGlMiPxpoo9VGKtyiUrSvZ0/WAa/CWDE6gNuuEWNmY2tZE3dc831BtCiRCWf/9r+PLYl97sNLj7w
	5HqvWJLVw/8M4/8OQI75lzUy3Pc/3KbTEPSk4PtdozA4Lpr3yNJiQuUXWgkytkfJSGhwYd4DIiRuX
	i1ZhkfWKUeBc5dogh7Sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hREkU-00014H-LT; Thu, 16 May 2019 11:40:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hREkM-00013E-No
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 11:40:28 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 116BF20862;
 Thu, 16 May 2019 11:40:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558006826;
 bh=BKXauO2Zc4XHHOgQk7SKdfzxMgK8rT1MjX+j7lxm+lI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ShVi1q9RGjETx5YfaYeLBBDUBvBn+JBESMurjuWmIpW8YOqtc+Ki2OODaujZIZbjx
 Z0DySjk7hddFCaVBQSQrDm5FKHbPRbXGd5HNAwMZ9rh4sZvr+svdmQgIbm1/HvcCFN
 1lICgZmT24uymnEfRmgblJOvHDIcmUTiBKS+ZiPs=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.0 33/34] perf cs-etm: Always allocate memory for
 cs_etm_queue::prev_packet
Date: Thu, 16 May 2019 07:39:30 -0400
Message-Id: <20190516113932.8348-33-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190516113932.8348-1-sashal@kernel.org>
References: <20190516113932.8348-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_044026_819134_ED7E1287 
X-CRM114-Status: GOOD (  13.98  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulouse <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Arnaldo Carvalho de Melo <acme@redhat.com>, Leo Yan <leo.yan@linaro.org>,
 Namhyung Kim <namhyung@kernel.org>, Robert Walker <robert.walker@arm.com>,
 Jiri Olsa <jolsa@redhat.com>, linux-arm-kernel@lists.infradead.org,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Leo Yan <leo.yan@linaro.org>

[ Upstream commit 35bb59c10a6d0578806dd500477dae9cb4be344e ]

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
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 tools/perf/util/cs-etm.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
index 27a374ddf6615..947f1bb2fbdfb 100644
--- a/tools/perf/util/cs-etm.c
+++ b/tools/perf/util/cs-etm.c
@@ -345,11 +345,9 @@ static struct cs_etm_queue *cs_etm__alloc_queue(struct cs_etm_auxtrace *etm,
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
