Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A92BA18907B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 22:35:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3tJH5OtnDBPb2WChk8wP2gO40gJJRO1rjtlfNq1oO94=; b=L4ICqO/pOeGmzD
	Mj9DFSUVz5Rc+YpmontWjp1R9azlS53s8xXMsmaPAFSx0mkfkyXMeIBjhm5zO6SfdSBb8vU3TJdBT
	PHvbygmfROPph3yjfjHKYwjpCCtgmCe/PyLcpvJao31HYVZc37fM4yOM9r8apU6QuuoW8J9aYXTh3
	CpH4JHpagVY54A2H3YzD+ClwFTK3wR0UuVubs68z/hmKrp+qMPbuX89WlWcKOw5HP4Cx0RJqCv3Wd
	Pdqxplv0ZfHwd6RqDlUXEBF8JCb5GIcWU/L5KsQxVZcHxrCC/2Ra0LAETJ+Tu4n0wjLrRvZ1XklaV
	1PdV4MrLPpGClyXN8E1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEJrR-0002kT-R3; Tue, 17 Mar 2020 21:34:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEJqZ-00022h-If
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 21:34:01 +0000
Received: from quaco.ghostprotocols.net (unknown [179.97.37.151])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 204BD2075E;
 Tue, 17 Mar 2020 21:33:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584480838;
 bh=cp/OajyD3gRzQ49t0K84cyurs/ktRa0u33udp0rWu3o=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=kE42HPlj4QGMlWBz+AtT68g531cYRgeHVTWTWphLGP+G7j+YrNpUzrCdaHTnWjGM8
 je9ut5n+/8Yjvdswipyq2Feic3A7ZxDbL5Yx+C55ey3vmOOxIIA2xdj5xMz6rYP8zD
 TWxx5mbt7IFVKWQZYvTmmhpawp1Gsb8GgEDGG8n0=
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Ingo Molnar <mingo@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH 13/23] perf cs-etm: Fix unsigned variable comparison to zero
Date: Tue, 17 Mar 2020 18:32:49 -0300
Message-Id: <20200317213259.15494-14-acme@kernel.org>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200317213259.15494-1-acme@kernel.org>
References: <20200317213259.15494-1-acme@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_143359_672804_E937B5E9 
X-CRM114-Status: GOOD (  11.68  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki Poulouse <suzuki.poulose@arm.com>, Clark Williams <williams@redhat.com>,
 coresight ml <coresight@lists.linaro.org>, linux-kernel@vger.kernel.org,
 linux-perf-users@vger.kernel.org,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Peter Zijlstra <peterz@infradead.org>, Jiri Olsa <jolsa@kernel.org>,
 Leo Yan <leo.yan@linaro.org>, Namhyung Kim <namhyung@kernel.org>,
 Robert Walker <robert.walker@arm.com>, Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel@lists.infradead.org, Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Leo Yan <leo.yan@linaro.org>

The variable 'offset' in function cs_etm__sample() is u64 type, it's not
appropriate to check it with 'while (offset > 0)'; this patch changes to
'while (offset)'.

Signed-off-by: Leo Yan <leo.yan@linaro.org>
Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Reviewed-by: Mike Leach <mike.leach@linaro.org>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Jiri Olsa <jolsa@redhat.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Robert Walker <robert.walker@arm.com>
Cc: Suzuki Poulouse <suzuki.poulose@arm.com>
Cc: coresight ml <coresight@lists.linaro.org>
Cc: linux-arm-kernel@lists.infradead.org
Link: http://lore.kernel.org/lkml/20200219021811.20067-6-leo.yan@linaro.org
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 tools/perf/util/cs-etm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
index 87d9943177bc..62d2f9b9ce1b 100644
--- a/tools/perf/util/cs-etm.c
+++ b/tools/perf/util/cs-etm.c
@@ -962,7 +962,7 @@ static inline u64 cs_etm__instr_addr(struct cs_etm_queue *etmq,
 	if (packet->isa == CS_ETM_ISA_T32) {
 		u64 addr = packet->start_addr;
 
-		while (offset > 0) {
+		while (offset) {
 			addr += cs_etm__t32_instr_size(etmq,
 						       trace_chan_id, addr);
 			offset--;
-- 
2.21.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
