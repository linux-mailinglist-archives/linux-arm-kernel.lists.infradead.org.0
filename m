Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F253711938A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 22:12:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lV4GIDtFWpthO/P/5zaTvV1kMzwf9PFxp6PY4iFnWqk=; b=f64laxwJLH8ipB
	y44dE+r1vJZAKwd/HP12BxoTByOb/SEyzINisinumRX6qS9lCqzwmkEWX2AvMFB2Rpz1NVjcb7J5y
	1F7jZdC0nam7FD1cMpGjzXVsm2WV3nXKMZ+4OEnxJBQIMSuRitloqUuIiR42lrh9PWqawkVxrAgPo
	b5/vTOO0zG8smz3J8QL5esMBTe3BLFIJaD/fZN0/fLIWFU2jKZ1P47UjdtKVNUbFLJ5ZKk3QHPNGk
	zZ6MG2seRdklTocpjk2J9BKVwSBOlK3f9vUw3RvZqKKH0PXKJiuN/RkA7R618lh3gBQBCIKExwlhd
	FoO9JOx2tpVvpTjjE0HA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iemoR-0006YT-Mb; Tue, 10 Dec 2019 21:12:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iemmq-0005Fx-7S
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 21:11:18 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 23764246B9;
 Tue, 10 Dec 2019 21:11:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576012275;
 bh=PBfCn9+firaC/BKdGAdGc6hnUFsDFRu0TqHzigAU/hg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=zLGUFMCN+YTM008WkyQI3/6G7yLhJKH2qlzlso3D3iEM3/IGsFxmLCZG1nY61WC7v
 SY+EQ1uZmAEMWobEohgxDZp6dPqVbF+M8RKHLavUaYGWxD1nlF8wodQezWC9XloMY8
 fRAgmgEVKyfoPlyDj1RMSDyP9sNrzJOFBefBZpNI=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 219/350] perf cs-etm: Fix definition of macro
 TO_CS_QUEUE_NR
Date: Tue, 10 Dec 2019 16:05:24 -0500
Message-Id: <20191210210735.9077-180-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191210210735.9077-1-sashal@kernel.org>
References: <20191210210735.9077-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_131116_382166_C85541A3 
X-CRM114-Status: GOOD (  12.59  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Sasha Levin <sashal@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki Poulouse <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 coresight ml <coresight@lists.linaro.org>,
 Arnaldo Carvalho de Melo <acme@redhat.com>,
 Peter Zijlstra <peterz@infradead.org>, Leo Yan <leo.yan@linaro.org>,
 Namhyung Kim <namhyung@kernel.org>, Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Leo Yan <leo.yan@linaro.org>

[ Upstream commit 9d604aad4bb022e848dec80d6fe5f73fe87061a2 ]

Macro TO_CS_QUEUE_NR definition has a typo, which uses 'trace_id_chan'
as its parameter, this doesn't match with its definition body which uses
'trace_chan_id'.  So renames the parameter to 'trace_chan_id'.

It's luck to have a local variable 'trace_chan_id' in the function
cs_etm__setup_queue(), even we wrongly define the macro TO_CS_QUEUE_NR,
the local variable 'trace_chan_id' is used rather than the macro's
parameter 'trace_id_chan'; so the compiler doesn't complain for this
before.

After renaming the parameter, it leads to a compiling error due
cs_etm__setup_queue() has no variable 'trace_id_chan'.  This patch uses
the variable 'trace_chan_id' for the macro so that fixes the compiling
error.

Signed-off-by: Leo Yan <leo.yan@linaro.org>
Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Jiri Olsa <jolsa@redhat.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Suzuki Poulouse <suzuki.poulose@arm.com>
Cc: coresight ml <coresight@lists.linaro.org>
Cc: linux-arm-kernel@lists.infradead.org
Link: http://lore.kernel.org/lkml/20191021074808.25795-1-leo.yan@linaro.org
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 tools/perf/util/cs-etm.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
index 4ba0f871f086d..f5f855fff412e 100644
--- a/tools/perf/util/cs-etm.c
+++ b/tools/perf/util/cs-etm.c
@@ -110,7 +110,7 @@ static int cs_etm__decode_data_block(struct cs_etm_queue *etmq);
  * encode the etm queue number as the upper 16 bit and the channel as
  * the lower 16 bit.
  */
-#define TO_CS_QUEUE_NR(queue_nr, trace_id_chan)	\
+#define TO_CS_QUEUE_NR(queue_nr, trace_chan_id)	\
 		      (queue_nr << 16 | trace_chan_id)
 #define TO_QUEUE_NR(cs_queue_nr) (cs_queue_nr >> 16)
 #define TO_TRACE_CHAN_ID(cs_queue_nr) (cs_queue_nr & 0x0000ffff)
@@ -819,7 +819,7 @@ static int cs_etm__setup_queue(struct cs_etm_auxtrace *etm,
 	 * Note that packets decoded above are still in the traceID's packet
 	 * queue and will be processed in cs_etm__process_queues().
 	 */
-	cs_queue_nr = TO_CS_QUEUE_NR(queue_nr, trace_id_chan);
+	cs_queue_nr = TO_CS_QUEUE_NR(queue_nr, trace_chan_id);
 	ret = auxtrace_heap__add(&etm->heap, cs_queue_nr, timestamp);
 out:
 	return ret;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
