Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09EE629D41
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 19:37:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=spFTf5vywlxDLkxaERI2zOqSc9bACeIz5dm+UYZCQ24=; b=mGNq0BQklgqHpEuuQyMMWf6n5/
	5wzGzl7A2vof9gcCFovcSKQTJVHRgSeIYjZg3CLCr9ppUtnMflEcutdTSnnca8GX3McI4OI3BnMMv
	Eimusb6TGYFHKkar2v3e5/UV6N7tMvVKNgySnfk25UiV+4XxhfQFbWvoop0OVifLD3/9TD+Co8RaC
	bBrQT5MTQ5zJBPTl2SuQK2h93F3Iaf4xfygqSW8/FHJ323sBpmpiGQgBt5IJmMakkAJS/ZSYZS8Xq
	p9GNHkkxMw/dNI35GzPiUXBWO+HAIlTI1GWTukl4Z5SXJR/Ve1OVjnODOUsRWiqjrflW/k/1bMHf0
	TTZCcsfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUE8Z-0003jd-57; Fri, 24 May 2019 17:37:47 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUE6J-00015Z-Fo
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 17:35:38 +0000
Received: by mail-pf1-x441.google.com with SMTP id q17so877679pfq.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 10:35:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=cq0t+PSXn//LvYjO2sa6TunhyuzsYVmdu9JbEFprU14=;
 b=q1n5NJxBc1CxN3THW31CYCMIMZLFrJTdSaNuXZvcSYYalZjyR37nIzgV0zsDoveRIM
 s9nu2yOj0h4pYn3lqUYNXAFmnpU+kOn7uTiybF7lv8C3cAP3nm7DfXYijD1tltccuh3K
 TYUT4V+deACoAp+3uASEbCkS4aLQCdLByV/9+LY37NNQs74rwCyuM23Q57H0rYHb+QC2
 4Ft/kq8nCaoXSLCFnF+mkxten+bnX+pOpUItzGAGSjXLHFCWttfg08/x8aIL2jDJ5mCo
 E/qpTrmvZHzm3NcjWl1ZmxRliOLO4MmVe2JgScpi0N7y0sR2IcYVWu58o4styRLdec+o
 +WDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=cq0t+PSXn//LvYjO2sa6TunhyuzsYVmdu9JbEFprU14=;
 b=sanUC4Urfe2RMsGvI6rwC4dS4Imk7A3Jyuk8pE5oegPkLdbasHqkwc0MK11QakuCsk
 Q2avbpe2dAMSblhAqtfShFsG2inXPYxZJvgQr2ZEwEvk4TfDUliNfMEUvtCy6IqH2JLU
 l4jhchj+zTkm2fgbGFvYC/lFkEugx6BwzvcyJoRwhkFU5lzbDytf4jrwOgc8GDPJ5SRL
 XFoBAAIhZftX2QDZOFdxjXKPRelUxBaK0NiB0ZVW3l36azACj1+e1LMx/gRSVmh2wKJ5
 Y09is1TvbVmd7fr0PgEupYJrPnMNQAHE9+ejZnX0PO/21MV+GY4ZBrTa3xso8+d7y9V+
 CphQ==
X-Gm-Message-State: APjAAAWrC2srzftqgHMa9A96X31zz5UVTLjFLJ85+e6oLaxFXxK7gnhV
 qQFargarCH60iqLlxQtcwW/kBw==
X-Google-Smtp-Source: APXvYqzRbKqiLoaqJY3Oy4E+R4Hv7oH5sv3rnnnT8EwfbYgNv44HGotXOXYusT+cdZQdTR4Rss/w6w==
X-Received: by 2002:a65:4786:: with SMTP id e6mr22058580pgs.85.1558719326690; 
 Fri, 24 May 2019 10:35:26 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id k13sm2809575pgr.90.2019.05.24.10.35.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 10:35:26 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: acme@kernel.org
Subject: [PATCH v2 13/17] perf tools: Use traceID aware memory callback API
Date: Fri, 24 May 2019 11:35:04 -0600
Message-Id: <20190524173508.29044-14-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190524173508.29044-1-mathieu.poirier@linaro.org>
References: <20190524173508.29044-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_103528_674957_FF9E3E4E 
X-CRM114-Status: GOOD (  14.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: suzuki.poulose@arm.com, peterz@infradead.org, coresight@lists.linaro.org,
 linux-kernel@vger.kernel.org, alexander.shishkin@linux.intel.com,
 mingo@redhat.com, leo.yan@linaro.org, namhyung@kernel.org, jolsa@redhat.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When working with CPU-wide traces different traceID may be found in the
same stream.  As such we need to use the decoder callback that provides
the traceID in order to know the thread context being decoded.

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
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
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
