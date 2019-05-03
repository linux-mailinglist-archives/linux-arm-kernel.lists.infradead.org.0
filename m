Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C4B712573
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 02:26:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EEgkdCAoJt7WhG1iuzxYgV+7FXkp3XjYSiU/EjkcnHQ=; b=UaYNKO5y+8c3oQ
	79VLtwbn0urPVLiXSqCDh0UMU11gYSEhKEZkPqXLKN2C8fK6oSfHJlomk2c9yDV8fzIBSS3iplnn3
	Au+/v2+AAuQWoQRkc9Icm2w8bQzvffyLYtqxOWP0mzGgP3IA9kBaPd9sjXTT0Ma24BxAm9dhRu3Bh
	R7sxnWjYpcv9TmhVk2FF4DFc2sPRgmV6q+5LNoDTf1WwMgBpDg0XQp1D2wqriMAw0IZJaql3WhiJG
	M8Y7O6ps7bfdBkPa5UScIhvtasoElAJnK8STGo5MYT5IiuxVW4bJarVlGKmc8BLIjGRyZDvgz9l4S
	LOZCFtNhD+NezTJi3Pjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMM1m-0005Mt-F1; Fri, 03 May 2019 00:26:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMM1e-0005Lk-Al
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 00:26:07 +0000
Received: from quaco.ghostprotocols.net (adsl-173-228-226-134.prtc.net
 [173.228.226.134])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8098021783;
 Fri,  3 May 2019 00:26:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556843166;
 bh=V6PvajlKKbO94N9tpD0LRZ4MKdSxlJ0h4zbL/CW1ovI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=KJBrDxZGikPv7ODXs7raFTmF5MSlSpAqAviVGvOaJnzr8n0btgonB+RtLoHP93SgI
 9Kr8WIHeXS9VToq+6sLW/ZUXv7f9Y4ynRWnKXEQ5++0k2UlY7bxKuAD1zgGxfeNJ+4
 nDewXMgyCQvWO2SLukjaBWa6J0VDNAbU4cEaeYSM=
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Ingo Molnar <mingo@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH 07/11] perf cs-etm: Don't check cs_etm_queue::prev_packet
 validity
Date: Thu,  2 May 2019 20:25:29 -0400
Message-Id: <20190503002533.29359-8-acme@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190503002533.29359-1-acme@kernel.org>
References: <20190503002533.29359-1-acme@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_172606_387351_10215BEA 
X-CRM114-Status: GOOD (  11.90  )
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

Since cs_etm_queue::prev_packet is allocated for all cases, it will
never be NULL pointer; now validity checking prev_packet is pointless,
remove all of them.

Signed-off-by: Leo Yan <leo.yan@linaro.org>
Tested-by: Robert Walker <robert.walker@arm.com>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Jiri Olsa <jolsa@redhat.com>
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Cc: Mike Leach <mike.leach@linaro.org>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Suzuki K Poulouse <suzuki.poulose@arm.com>
Cc: linux-arm-kernel@lists.infradead.org
Link: http://lkml.kernel.org/r/20190428083228.20246-2-leo.yan@linaro.org
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 tools/perf/util/cs-etm.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
index 110804936fc3..7777cfc1ad8c 100644
--- a/tools/perf/util/cs-etm.c
+++ b/tools/perf/util/cs-etm.c
@@ -981,7 +981,6 @@ static int cs_etm__sample(struct cs_etm_queue *etmq)
 	 * PREV_PACKET is a branch.
 	 */
 	if (etm->synth_opts.last_branch &&
-	    etmq->prev_packet &&
 	    etmq->prev_packet->sample_type == CS_ETM_RANGE &&
 	    etmq->prev_packet->last_instr_taken_branch)
 		cs_etm__update_last_branch_rb(etmq);
@@ -1014,7 +1013,7 @@ static int cs_etm__sample(struct cs_etm_queue *etmq)
 		etmq->period_instructions = instrs_over;
 	}
 
-	if (etm->sample_branches && etmq->prev_packet) {
+	if (etm->sample_branches) {
 		bool generate_sample = false;
 
 		/* Generate sample for tracing on packet */
@@ -1071,9 +1070,6 @@ static int cs_etm__flush(struct cs_etm_queue *etmq)
 	struct cs_etm_auxtrace *etm = etmq->etm;
 	struct cs_etm_packet *tmp;
 
-	if (!etmq->prev_packet)
-		return 0;
-
 	/* Handle start tracing packet */
 	if (etmq->prev_packet->sample_type == CS_ETM_EMPTY)
 		goto swap_packet;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
