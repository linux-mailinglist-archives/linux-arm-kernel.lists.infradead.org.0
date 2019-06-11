Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76D3A3D671
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 21:06:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zSMtLSNg47Ji424GH5+cT162OiXYHBOOFpCn1cVFMF8=; b=SNcP/YzOVl3l60
	Ty5nZ+pIhLxi4gKZtKWQRdZV4P2KywfFlgGpkYGEwZL/wMjQAR0CDhw3uhflMWttZH7Rck2j/J9hP
	rjahdffn2vD/gV69OzzhWHDHk6i8vK+LAupviZAgMdk3eKxZqKwNS0mVpyaAoYCuu364Iji/AwLuy
	tRFgBUvyy9p6kJSK/SkT+j/6ioeuD5muSQE4H2+DB0wlRXl7mXcccFId78VoTXxA8RN9kWrGW5IWk
	An0S+u3HPBJW6pXKB/YqmPfOFli/TNe+BS9ZHmvSAMVrAOn0z02G3KinsqqTuX4/wALz7FOQ7Gw2P
	e193aC8C2SfOXKsoBG4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ham6M-0001Ki-3c; Tue, 11 Jun 2019 19:06:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ham2w-0005JR-Ia
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 19:03:05 +0000
Received: from quaco.ghostprotocols.net (unknown [179.97.35.11])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5C488217D6;
 Tue, 11 Jun 2019 19:02:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560279782;
 bh=qzE6Q3XplctFACCyBy1H8PtIRSIfvoHm3GL1eypW52w=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Uzkf1stv8nZn1zpRKDhw1pWlVjHpnDUHiEFrqkcypWUubJj/aDGvkkZtV0Pta/fhM
 6GecTUBQN39HVVW3yfxLEw86TB1d5K2Hbe3GmRf9Nz+ojaGiL7ToBcS9wcvZuudHcW
 eZOOA9OIQ2uD4ZDVJeoO0YlWKj+r5ph4bhTbp/Y8=
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Ingo Molnar <mingo@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH 49/85] perf cs-etm: Use traceID aware memory callback API
Date: Tue, 11 Jun 2019 15:58:35 -0300
Message-Id: <20190611185911.11645-50-acme@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190611185911.11645-1-acme@kernel.org>
References: <20190611185911.11645-1-acme@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_120302_681444_E2E8E023 
X-CRM114-Status: GOOD (  13.73  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 coresight@lists.linaro.org, linux-kernel@vger.kernel.org,
 linux-perf-users@vger.kernel.org,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Peter Zijlstra <peterz@infradead.org>, Jiri Olsa <jolsa@kernel.org>,
 Leo Yan <leo.yan@linaro.org>, Namhyung Kim <namhyung@kernel.org>,
 Jiri Olsa <jolsa@redhat.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mathieu Poirier <mathieu.poirier@linaro.org>

When working with CPU-wide traces different traceID may be found in the
same stream.  As such we need to use the decoder callback that provides
the traceID in order to know the thread context being decoded.

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Tested-by: Leo Yan <leo.yan@linaro.org>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Jiri Olsa <jolsa@redhat.com>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Suzuki Poulouse <suzuki.poulose@arm.com>
Cc: coresight@lists.linaro.org
Cc: linux-arm-kernel@lists.infradead.org
Link: http://lkml.kernel.org/r/20190524173508.29044-14-mathieu.poirier@linaro.org
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 .../perf/util/cs-etm-decoder/cs-etm-decoder.c | 14 +++----
 .../perf/util/cs-etm-decoder/cs-etm-decoder.h |  3 +-
 tools/perf/util/cs-etm.c                      | 41 +++++++++++++------
 3 files changed, 36 insertions(+), 22 deletions(-)

diff --git a/tools/perf/util/cs-etm-decoder/cs-etm-decoder.c b/tools/perf/util/cs-etm-decoder/cs-etm-decoder.c
index 4303d2d00d31..87264b79de0e 100644
--- a/tools/perf/util/cs-etm-decoder/cs-etm-decoder.c
+++ b/tools/perf/util/cs-etm-decoder/cs-etm-decoder.c
@@ -41,15 +41,14 @@ static u32
 cs_etm_decoder__mem_access(const void *context,
 			   const ocsd_vaddr_t address,
 			   const ocsd_mem_space_acc_t mem_space __maybe_unused,
+			   const u8 trace_chan_id,
 			   const u32 req_size,
 			   u8 *buffer)
 {
 	struct cs_etm_decoder *decoder = (struct cs_etm_decoder *) context;
 
-	return decoder->mem_access(decoder->data,
-				   address,
-				   req_size,
-				   buffer);
+	return decoder->mem_access(decoder->data, trace_chan_id,
+				   address, req_size, buffer);
 }
 
 int cs_etm_decoder__add_mem_access_cb(struct cs_etm_decoder *decoder,
@@ -58,9 +57,10 @@ int cs_etm_decoder__add_mem_access_cb(struct cs_etm_decoder *decoder,
 {
 	decoder->mem_access = cb_func;
 
-	if (ocsd_dt_add_callback_mem_acc(decoder->dcd_tree, start, end,
-					 OCSD_MEM_SPACE_ANY,
-					 cs_etm_decoder__mem_access, decoder))
+	if (ocsd_dt_add_callback_trcid_mem_acc(decoder->dcd_tree, start, end,
+					       OCSD_MEM_SPACE_ANY,
+					       cs_etm_decoder__mem_access,
+					       decoder))
 		return -1;
 
 	return 0;
diff --git a/tools/perf/util/cs-etm-decoder/cs-etm-decoder.h b/tools/perf/util/cs-etm-decoder/cs-etm-decoder.h
index 6ae7ab4cf5fe..11f3391d06f2 100644
--- a/tools/perf/util/cs-etm-decoder/cs-etm-decoder.h
+++ b/tools/perf/util/cs-etm-decoder/cs-etm-decoder.h
@@ -19,8 +19,7 @@ struct cs_etm_packet_queue;
 
 struct cs_etm_queue;
 
-typedef u32 (*cs_etm_mem_cb_type)(struct cs_etm_queue *, u64,
-				  size_t, u8 *);
+typedef u32 (*cs_etm_mem_cb_type)(struct cs_etm_queue *, u8, u64, size_t, u8 *);
 
 struct cs_etmv3_trace_params {
 	u32 reg_ctrl;
diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
index 7e3b4d10f5c4..2483293266d8 100644
--- a/tools/perf/util/cs-etm.c
+++ b/tools/perf/util/cs-etm.c
@@ -491,8 +491,8 @@ static u8 cs_etm__cpu_mode(struct cs_etm_queue *etmq, u64 address)
 	}
 }
 
-static u32 cs_etm__mem_access(struct cs_etm_queue *etmq, u64 address,
-			      size_t size, u8 *buffer)
+static u32 cs_etm__mem_access(struct cs_etm_queue *etmq, u8 trace_chan_id,
+			      u64 address, size_t size, u8 *buffer)
 {
 	u8  cpumode;
 	u64 offset;
@@ -501,6 +501,8 @@ static u32 cs_etm__mem_access(struct cs_etm_queue *etmq, u64 address,
 	struct	 machine *machine;
 	struct	 addr_location al;
 
+	(void)trace_chan_id;
+
 	if (!etmq)
 		return 0;
 
@@ -687,10 +689,12 @@ void cs_etm__reset_last_branch_rb(struct cs_etm_traceid_queue *tidq)
 }
 
 static inline int cs_etm__t32_instr_size(struct cs_etm_queue *etmq,
-					 u64 addr) {
+					 u8 trace_chan_id, u64 addr)
+{
 	u8 instrBytes[2];
 
-	cs_etm__mem_access(etmq, addr, ARRAY_SIZE(instrBytes), instrBytes);
+	cs_etm__mem_access(etmq, trace_chan_id, addr,
+			   ARRAY_SIZE(instrBytes), instrBytes);
 	/*
 	 * T32 instruction size is indicated by bits[15:11] of the first
 	 * 16-bit word of the instruction: 0b11101, 0b11110 and 0b11111
@@ -719,6 +723,7 @@ u64 cs_etm__last_executed_instr(const struct cs_etm_packet *packet)
 }
 
 static inline u64 cs_etm__instr_addr(struct cs_etm_queue *etmq,
+				     u64 trace_chan_id,
 				     const struct cs_etm_packet *packet,
 				     u64 offset)
 {
@@ -726,7 +731,8 @@ static inline u64 cs_etm__instr_addr(struct cs_etm_queue *etmq,
 		u64 addr = packet->start_addr;
 
 		while (offset > 0) {
-			addr += cs_etm__t32_instr_size(etmq, addr);
+			addr += cs_etm__t32_instr_size(etmq,
+						       trace_chan_id, addr);
 			offset--;
 		}
 		return addr;
@@ -1063,6 +1069,7 @@ static int cs_etm__sample(struct cs_etm_queue *etmq,
 	struct cs_etm_auxtrace *etm = etmq->etm;
 	struct cs_etm_packet *tmp;
 	int ret;
+	u8 trace_chan_id = tidq->trace_chan_id;
 	u64 instrs_executed = tidq->packet->instr_count;
 
 	tidq->period_instructions += instrs_executed;
@@ -1093,7 +1100,8 @@ static int cs_etm__sample(struct cs_etm_queue *etmq,
 		 * executed, but PC has not advanced to next instruction)
 		 */
 		u64 offset = (instrs_executed - instrs_over - 1);
-		u64 addr = cs_etm__instr_addr(etmq, tidq->packet, offset);
+		u64 addr = cs_etm__instr_addr(etmq, trace_chan_id,
+					      tidq->packet, offset);
 
 		ret = cs_etm__synth_instruction_sample(
 			etmq, tidq, addr, etm->instructions_sample_period);
@@ -1268,7 +1276,7 @@ static int cs_etm__get_data_block(struct cs_etm_queue *etmq)
 	return etmq->buf_len;
 }
 
-static bool cs_etm__is_svc_instr(struct cs_etm_queue *etmq,
+static bool cs_etm__is_svc_instr(struct cs_etm_queue *etmq, u8 trace_chan_id,
 				 struct cs_etm_packet *packet,
 				 u64 end_addr)
 {
@@ -1291,7 +1299,8 @@ static bool cs_etm__is_svc_instr(struct cs_etm_queue *etmq,
 		 * so below only read 2 bytes as instruction size for T32.
 		 */
 		addr = end_addr - 2;
-		cs_etm__mem_access(etmq, addr, sizeof(instr16), (u8 *)&instr16);
+		cs_etm__mem_access(etmq, trace_chan_id, addr,
+				   sizeof(instr16), (u8 *)&instr16);
 		if ((instr16 & 0xFF00) == 0xDF00)
 			return true;
 
@@ -1306,7 +1315,8 @@ static bool cs_etm__is_svc_instr(struct cs_etm_queue *etmq,
 		 * +---------+---------+-------------------------+
 		 */
 		addr = end_addr - 4;
-		cs_etm__mem_access(etmq, addr, sizeof(instr32), (u8 *)&instr32);
+		cs_etm__mem_access(etmq, trace_chan_id, addr,
+				   sizeof(instr32), (u8 *)&instr32);
 		if ((instr32 & 0x0F000000) == 0x0F000000 &&
 		    (instr32 & 0xF0000000) != 0xF0000000)
 			return true;
@@ -1322,7 +1332,8 @@ static bool cs_etm__is_svc_instr(struct cs_etm_queue *etmq,
 		 * +-----------------------+---------+-----------+
 		 */
 		addr = end_addr - 4;
-		cs_etm__mem_access(etmq, addr, sizeof(instr32), (u8 *)&instr32);
+		cs_etm__mem_access(etmq, trace_chan_id, addr,
+				   sizeof(instr32), (u8 *)&instr32);
 		if ((instr32 & 0xFFE0001F) == 0xd4000001)
 			return true;
 
@@ -1338,6 +1349,7 @@ static bool cs_etm__is_svc_instr(struct cs_etm_queue *etmq,
 static bool cs_etm__is_syscall(struct cs_etm_queue *etmq,
 			       struct cs_etm_traceid_queue *tidq, u64 magic)
 {
+	u8 trace_chan_id = tidq->trace_chan_id;
 	struct cs_etm_packet *packet = tidq->packet;
 	struct cs_etm_packet *prev_packet = tidq->prev_packet;
 
@@ -1352,7 +1364,7 @@ static bool cs_etm__is_syscall(struct cs_etm_queue *etmq,
 	 */
 	if (magic == __perf_cs_etmv4_magic) {
 		if (packet->exception_number == CS_ETMV4_EXC_CALL &&
-		    cs_etm__is_svc_instr(etmq, prev_packet,
+		    cs_etm__is_svc_instr(etmq, trace_chan_id, prev_packet,
 					 prev_packet->end_addr))
 			return true;
 	}
@@ -1390,6 +1402,7 @@ static bool cs_etm__is_sync_exception(struct cs_etm_queue *etmq,
 				      struct cs_etm_traceid_queue *tidq,
 				      u64 magic)
 {
+	u8 trace_chan_id = tidq->trace_chan_id;
 	struct cs_etm_packet *packet = tidq->packet;
 	struct cs_etm_packet *prev_packet = tidq->prev_packet;
 
@@ -1415,7 +1428,7 @@ static bool cs_etm__is_sync_exception(struct cs_etm_queue *etmq,
 		 * (SMC, HVC) are taken as sync exceptions.
 		 */
 		if (packet->exception_number == CS_ETMV4_EXC_CALL &&
-		    !cs_etm__is_svc_instr(etmq, prev_packet,
+		    !cs_etm__is_svc_instr(etmq, trace_chan_id, prev_packet,
 					  prev_packet->end_addr))
 			return true;
 
@@ -1439,6 +1452,7 @@ static int cs_etm__set_sample_flags(struct cs_etm_queue *etmq,
 {
 	struct cs_etm_packet *packet = tidq->packet;
 	struct cs_etm_packet *prev_packet = tidq->prev_packet;
+	u8 trace_chan_id = tidq->trace_chan_id;
 	u64 magic;
 	int ret;
 
@@ -1519,7 +1533,8 @@ static int cs_etm__set_sample_flags(struct cs_etm_queue *etmq,
 		if (prev_packet->flags == (PERF_IP_FLAG_BRANCH |
 					   PERF_IP_FLAG_RETURN |
 					   PERF_IP_FLAG_INTERRUPT) &&
-		    cs_etm__is_svc_instr(etmq, packet, packet->start_addr))
+		    cs_etm__is_svc_instr(etmq, trace_chan_id,
+					 packet, packet->start_addr))
 			prev_packet->flags = PERF_IP_FLAG_BRANCH |
 					     PERF_IP_FLAG_RETURN |
 					     PERF_IP_FLAG_SYSCALLRET;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
