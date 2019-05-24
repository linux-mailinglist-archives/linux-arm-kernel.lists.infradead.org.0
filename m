Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C674629D3B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 19:37:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ARBvcYln22YBe1RgvDLCgA2Uzh8pp1CuQRGAdQ7kIhI=; b=Vn7/p6lGYogpTLXACgsgwhu47k
	X5Fjdx/R3JYmbRu/8NFOk8zPPk20WGKC2W3M0qHQa3yuDOdE+EzMhEn4gVzWnFW/vgfxTwr9wze1v
	1JgU0XmetorGXZBUvuzmge3l2h372z80L4yWB494YsoCpxg4VlaBeUnyTQb1SkXm+ksan0uhRry74
	8vlsLwISbeMvBU0a/WrXrK56utbKgb3fcNxGTcQW+8jJsk69Zn0Byr4rT2saZIhix/bMrFOK2RV8H
	JB54yPT9Pkf8VCL3TLe92QvzMR4ssV/IJG3WGd3ro3nf1Vdj9aFqYdegO7uOLvcBk5j3l3Gz0E18i
	N7ELBlpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUE7z-0002zt-45; Fri, 24 May 2019 17:37:11 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUE6C-0000tC-62
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 17:35:33 +0000
Received: by mail-pf1-x441.google.com with SMTP id u17so5723573pfn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 10:35:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ytMC6TdM6wDqrBi+Nfv5ei0LCN6ZkEkffev9cyB2DXk=;
 b=bU26Wliw7eZFqa7WQ/4OjoEU0ia1hmH2ieQLSIueMHSxUO3OtbEqN0qyslTaZwqo0h
 8zscQOxjpH0wToJ8/EIpP7Ny2bwAsyzfq8iJlixA9JnQvYt2skdIvD9MLoOYyApzLlcN
 0Ku1P/sL8/cqRHP4HmF+3ZalXMBjDmIb3sZFYqqs0OQ7lWyt0m0/UntrBBvxd7wxyv6t
 bkSJY9sYktgfZ/ca4qDG1d4/vD+eCtILTJCBxOJVjHdl7x9IwuKZoya4xhJG45fu/hqW
 ROoJJ7zlu8i0Qfzecr7qdqmahPKWnGCZrZj1BxwSma11Eoh8wvOFNAghLm2ltylAFjti
 8Yuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ytMC6TdM6wDqrBi+Nfv5ei0LCN6ZkEkffev9cyB2DXk=;
 b=X+J6C49HKqwLyTBfT+So6x5nC4CeR483mtJc5XBiiFfcaNomWgBV6T2VfqNDXZOxeQ
 0hhOSa5T1ChtLbkT6BRENDpcnBeGb2TeKv1cR3+EBb0fbQQX39eWLJjMX7/lFBEwy3+t
 BhOs4lgLnV9DqNrd574+1ym0ztqYDdnHeJmVzqauhoVPwim3CnmFbE4Vv1xrB4ih885/
 n4DRJrCcUTsEX3OMgSFf11ugN6SnRCJcdkPKTu3aKDDorkMsmBvy4WsWLGAnX23G1oLf
 CLV1zx9S5FeTBBv+bECAVgpKWmcmhnBP1H06l8uAT7TOUwVYcHQhzsfQqf/BsHo6WBoO
 yX1A==
X-Gm-Message-State: APjAAAUQHRWWTZ3idOL4k2nbJHgbGyle1kv+SVf0C3//vxh7UJBSnFtN
 3nqFKyriV1M1hqyCa0JkOxBXBXVkpII=
X-Google-Smtp-Source: APXvYqzGkgnsNGKltox3Fm7r7XVRxGy2ZCMRd2tNAp4G9dWtfFx0EsBJK5A6XjO6hIlK8m9thOUpVA==
X-Received: by 2002:a17:90a:2401:: with SMTP id
 h1mr10835522pje.123.1558719318805; 
 Fri, 24 May 2019 10:35:18 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id k13sm2809575pgr.90.2019.05.24.10.35.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 10:35:18 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: acme@kernel.org
Subject: [PATCH v2 07/17] perf tools: Move packet queue out of decoder
 structure
Date: Fri, 24 May 2019 11:34:58 -0600
Message-Id: <20190524173508.29044-8-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190524173508.29044-1-mathieu.poirier@linaro.org>
References: <20190524173508.29044-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_103521_003754_2386A69A 
X-CRM114-Status: GOOD (  14.37  )
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

The decoder needs to work with more than one traceID queue if we want
to support CPU-wide scenarios with N:1 source/sink topologies.  As such
move the packet buffer and related fields out of the decoder structure and
into the cs_etm_queue structure.

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 .../perf/util/cs-etm-decoder/cs-etm-decoder.c | 129 +++++++-----------
 .../perf/util/cs-etm-decoder/cs-etm-decoder.h |  36 +----
 tools/perf/util/cs-etm.c                      |  37 ++++-
 tools/perf/util/cs-etm.h                      |  53 +++++++
 4 files changed, 144 insertions(+), 111 deletions(-)

diff --git a/tools/perf/util/cs-etm-decoder/cs-etm-decoder.c b/tools/perf/util/cs-etm-decoder/cs-etm-decoder.c
index 5dafec421b0d..3ac238e58901 100644
--- a/tools/perf/util/cs-etm-decoder/cs-etm-decoder.c
+++ b/tools/perf/util/cs-etm-decoder/cs-etm-decoder.c
@@ -18,8 +18,6 @@
 #include "intlist.h"
 #include "util.h"
 
-#define MAX_BUFFER 1024
-
 /* use raw logging */
 #ifdef CS_DEBUG_RAW
 #define CS_LOG_RAW_FRAMES
@@ -31,18 +29,12 @@
 #endif
 #endif
 
-#define CS_ETM_INVAL_ADDR	0xdeadbeefdeadbeefUL
-
 struct cs_etm_decoder {
 	void *data;
 	void (*packet_printer)(const char *msg);
 	dcd_tree_handle_t dcd_tree;
 	cs_etm_mem_cb_type mem_access;
 	ocsd_datapath_resp_t prev_return;
-	u32 packet_count;
-	u32 head;
-	u32 tail;
-	struct cs_etm_packet packet_buffer[MAX_BUFFER];
 };
 
 static u32
@@ -88,14 +80,14 @@ int cs_etm_decoder__reset(struct cs_etm_decoder *decoder)
 	return 0;
 }
 
-int cs_etm_decoder__get_packet(struct cs_etm_decoder *decoder,
+int cs_etm_decoder__get_packet(struct cs_etm_packet_queue *packet_queue,
 			       struct cs_etm_packet *packet)
 {
-	if (!decoder || !packet)
+	if (!packet_queue || !packet)
 		return -EINVAL;
 
 	/* Nothing to do, might as well just return */
-	if (decoder->packet_count == 0)
+	if (packet_queue->packet_count == 0)
 		return 0;
 	/*
 	 * The queueing process in function cs_etm_decoder__buffer_packet()
@@ -106,11 +98,12 @@ int cs_etm_decoder__get_packet(struct cs_etm_decoder *decoder,
 	 * value.  Otherwise the first element of the packet queue is not
 	 * used.
 	 */
-	decoder->head = (decoder->head + 1) & (MAX_BUFFER - 1);
+	packet_queue->head = (packet_queue->head + 1) &
+			     (CS_ETM_PACKET_MAX_BUFFER - 1);
 
-	*packet = decoder->packet_buffer[decoder->head];
+	*packet = packet_queue->packet_buffer[packet_queue->head];
 
-	decoder->packet_count--;
+	packet_queue->packet_count--;
 
 	return 1;
 }
@@ -276,84 +269,60 @@ cs_etm_decoder__create_etm_packet_printer(struct cs_etm_trace_params *t_params,
 						     trace_config);
 }
 
-static void cs_etm_decoder__clear_buffer(struct cs_etm_decoder *decoder)
-{
-	int i;
-
-	decoder->head = 0;
-	decoder->tail = 0;
-	decoder->packet_count = 0;
-	for (i = 0; i < MAX_BUFFER; i++) {
-		decoder->packet_buffer[i].isa = CS_ETM_ISA_UNKNOWN;
-		decoder->packet_buffer[i].start_addr = CS_ETM_INVAL_ADDR;
-		decoder->packet_buffer[i].end_addr = CS_ETM_INVAL_ADDR;
-		decoder->packet_buffer[i].instr_count = 0;
-		decoder->packet_buffer[i].last_instr_taken_branch = false;
-		decoder->packet_buffer[i].last_instr_size = 0;
-		decoder->packet_buffer[i].last_instr_type = 0;
-		decoder->packet_buffer[i].last_instr_subtype = 0;
-		decoder->packet_buffer[i].last_instr_cond = 0;
-		decoder->packet_buffer[i].flags = 0;
-		decoder->packet_buffer[i].exception_number = UINT32_MAX;
-		decoder->packet_buffer[i].trace_chan_id = UINT8_MAX;
-		decoder->packet_buffer[i].cpu = INT_MIN;
-	}
-}
-
 static ocsd_datapath_resp_t
-cs_etm_decoder__buffer_packet(struct cs_etm_decoder *decoder,
+cs_etm_decoder__buffer_packet(struct cs_etm_packet_queue *packet_queue,
 			      const u8 trace_chan_id,
 			      enum cs_etm_sample_type sample_type)
 {
 	u32 et = 0;
 	int cpu;
 
-	if (decoder->packet_count >= MAX_BUFFER - 1)
+	if (packet_queue->packet_count >= CS_ETM_PACKET_MAX_BUFFER - 1)
 		return OCSD_RESP_FATAL_SYS_ERR;
 
 	if (cs_etm__get_cpu(trace_chan_id, &cpu) < 0)
 		return OCSD_RESP_FATAL_SYS_ERR;
 
-	et = decoder->tail;
-	et = (et + 1) & (MAX_BUFFER - 1);
-	decoder->tail = et;
-	decoder->packet_count++;
-
-	decoder->packet_buffer[et].sample_type = sample_type;
-	decoder->packet_buffer[et].isa = CS_ETM_ISA_UNKNOWN;
-	decoder->packet_buffer[et].cpu = cpu;
-	decoder->packet_buffer[et].start_addr = CS_ETM_INVAL_ADDR;
-	decoder->packet_buffer[et].end_addr = CS_ETM_INVAL_ADDR;
-	decoder->packet_buffer[et].instr_count = 0;
-	decoder->packet_buffer[et].last_instr_taken_branch = false;
-	decoder->packet_buffer[et].last_instr_size = 0;
-	decoder->packet_buffer[et].last_instr_type = 0;
-	decoder->packet_buffer[et].last_instr_subtype = 0;
-	decoder->packet_buffer[et].last_instr_cond = 0;
-	decoder->packet_buffer[et].flags = 0;
-	decoder->packet_buffer[et].exception_number = UINT32_MAX;
-	decoder->packet_buffer[et].trace_chan_id = trace_chan_id;
-
-	if (decoder->packet_count == MAX_BUFFER - 1)
+	et = packet_queue->tail;
+	et = (et + 1) & (CS_ETM_PACKET_MAX_BUFFER - 1);
+	packet_queue->tail = et;
+	packet_queue->packet_count++;
+
+	packet_queue->packet_buffer[et].sample_type = sample_type;
+	packet_queue->packet_buffer[et].isa = CS_ETM_ISA_UNKNOWN;
+	packet_queue->packet_buffer[et].cpu = cpu;
+	packet_queue->packet_buffer[et].start_addr = CS_ETM_INVAL_ADDR;
+	packet_queue->packet_buffer[et].end_addr = CS_ETM_INVAL_ADDR;
+	packet_queue->packet_buffer[et].instr_count = 0;
+	packet_queue->packet_buffer[et].last_instr_taken_branch = false;
+	packet_queue->packet_buffer[et].last_instr_size = 0;
+	packet_queue->packet_buffer[et].last_instr_type = 0;
+	packet_queue->packet_buffer[et].last_instr_subtype = 0;
+	packet_queue->packet_buffer[et].last_instr_cond = 0;
+	packet_queue->packet_buffer[et].flags = 0;
+	packet_queue->packet_buffer[et].exception_number = UINT32_MAX;
+	packet_queue->packet_buffer[et].trace_chan_id = trace_chan_id;
+
+	if (packet_queue->packet_count == CS_ETM_PACKET_MAX_BUFFER - 1)
 		return OCSD_RESP_WAIT;
 
 	return OCSD_RESP_CONT;
 }
 
 static ocsd_datapath_resp_t
-cs_etm_decoder__buffer_range(struct cs_etm_decoder *decoder,
+cs_etm_decoder__buffer_range(struct cs_etm_packet_queue *packet_queue,
 			     const ocsd_generic_trace_elem *elem,
 			     const uint8_t trace_chan_id)
 {
 	int ret = 0;
 	struct cs_etm_packet *packet;
 
-	ret = cs_etm_decoder__buffer_packet(decoder, trace_chan_id,
+	ret = cs_etm_decoder__buffer_packet(packet_queue, trace_chan_id,
 					    CS_ETM_RANGE);
 	if (ret != OCSD_RESP_CONT && ret != OCSD_RESP_WAIT)
 		return ret;
 
-	packet = &decoder->packet_buffer[decoder->tail];
+	packet = &packet_queue->packet_buffer[packet_queue->tail];
 
 	switch (elem->isa) {
 	case ocsd_isa_aarch64:
@@ -400,36 +369,36 @@ cs_etm_decoder__buffer_range(struct cs_etm_decoder *decoder,
 }
 
 static ocsd_datapath_resp_t
-cs_etm_decoder__buffer_discontinuity(struct cs_etm_decoder *decoder,
-					   const uint8_t trace_chan_id)
+cs_etm_decoder__buffer_discontinuity(struct cs_etm_packet_queue *queue,
+				     const uint8_t trace_chan_id)
 {
-	return cs_etm_decoder__buffer_packet(decoder, trace_chan_id,
+	return cs_etm_decoder__buffer_packet(queue, trace_chan_id,
 					     CS_ETM_DISCONTINUITY);
 }
 
 static ocsd_datapath_resp_t
-cs_etm_decoder__buffer_exception(struct cs_etm_decoder *decoder,
+cs_etm_decoder__buffer_exception(struct cs_etm_packet_queue *queue,
 				 const ocsd_generic_trace_elem *elem,
 				 const uint8_t trace_chan_id)
 {	int ret = 0;
 	struct cs_etm_packet *packet;
 
-	ret = cs_etm_decoder__buffer_packet(decoder, trace_chan_id,
+	ret = cs_etm_decoder__buffer_packet(queue, trace_chan_id,
 					    CS_ETM_EXCEPTION);
 	if (ret != OCSD_RESP_CONT && ret != OCSD_RESP_WAIT)
 		return ret;
 
-	packet = &decoder->packet_buffer[decoder->tail];
+	packet = &queue->packet_buffer[queue->tail];
 	packet->exception_number = elem->exception_number;
 
 	return ret;
 }
 
 static ocsd_datapath_resp_t
-cs_etm_decoder__buffer_exception_ret(struct cs_etm_decoder *decoder,
+cs_etm_decoder__buffer_exception_ret(struct cs_etm_packet_queue *queue,
 				     const uint8_t trace_chan_id)
 {
-	return cs_etm_decoder__buffer_packet(decoder, trace_chan_id,
+	return cs_etm_decoder__buffer_packet(queue, trace_chan_id,
 					     CS_ETM_EXCEPTION_RET);
 }
 
@@ -441,6 +410,13 @@ static ocsd_datapath_resp_t cs_etm_decoder__gen_trace_elem_printer(
 {
 	ocsd_datapath_resp_t resp = OCSD_RESP_CONT;
 	struct cs_etm_decoder *decoder = (struct cs_etm_decoder *) context;
+	struct cs_etm_queue *etmq = decoder->data;
+	struct cs_etm_packet_queue *packet_queue;
+
+	/* First get the packet queue */
+	packet_queue = cs_etm__etmq_get_packet_queue(etmq);
+	if (!packet_queue)
+		return OCSD_RESP_FATAL_SYS_ERR;
 
 	switch (elem->elem_type) {
 	case OCSD_GEN_TRC_ELEM_UNKNOWN:
@@ -448,19 +424,19 @@ static ocsd_datapath_resp_t cs_etm_decoder__gen_trace_elem_printer(
 	case OCSD_GEN_TRC_ELEM_EO_TRACE:
 	case OCSD_GEN_TRC_ELEM_NO_SYNC:
 	case OCSD_GEN_TRC_ELEM_TRACE_ON:
-		resp = cs_etm_decoder__buffer_discontinuity(decoder,
+		resp = cs_etm_decoder__buffer_discontinuity(packet_queue,
 							    trace_chan_id);
 		break;
 	case OCSD_GEN_TRC_ELEM_INSTR_RANGE:
-		resp = cs_etm_decoder__buffer_range(decoder, elem,
+		resp = cs_etm_decoder__buffer_range(packet_queue, elem,
 						    trace_chan_id);
 		break;
 	case OCSD_GEN_TRC_ELEM_EXCEPTION:
-		resp = cs_etm_decoder__buffer_exception(decoder, elem,
+		resp = cs_etm_decoder__buffer_exception(packet_queue, elem,
 							trace_chan_id);
 		break;
 	case OCSD_GEN_TRC_ELEM_EXCEPTION_RET:
-		resp = cs_etm_decoder__buffer_exception_ret(decoder,
+		resp = cs_etm_decoder__buffer_exception_ret(packet_queue,
 							    trace_chan_id);
 		break;
 	case OCSD_GEN_TRC_ELEM_PE_CONTEXT:
@@ -554,7 +530,6 @@ cs_etm_decoder__new(int num_cpu, struct cs_etm_decoder_params *d_params,
 
 	decoder->data = d_params->data;
 	decoder->prev_return = OCSD_RESP_CONT;
-	cs_etm_decoder__clear_buffer(decoder);
 	format = (d_params->formatted ? OCSD_TRC_SRC_FRAME_FORMATTED :
 					 OCSD_TRC_SRC_SINGLE);
 	flags = 0;
diff --git a/tools/perf/util/cs-etm-decoder/cs-etm-decoder.h b/tools/perf/util/cs-etm-decoder/cs-etm-decoder.h
index 3ab11dfa92ae..6ae7ab4cf5fe 100644
--- a/tools/perf/util/cs-etm-decoder/cs-etm-decoder.h
+++ b/tools/perf/util/cs-etm-decoder/cs-etm-decoder.h
@@ -14,38 +14,8 @@
 #include <stdio.h>
 
 struct cs_etm_decoder;
-
-enum cs_etm_sample_type {
-	CS_ETM_EMPTY,
-	CS_ETM_RANGE,
-	CS_ETM_DISCONTINUITY,
-	CS_ETM_EXCEPTION,
-	CS_ETM_EXCEPTION_RET,
-};
-
-enum cs_etm_isa {
-	CS_ETM_ISA_UNKNOWN,
-	CS_ETM_ISA_A64,
-	CS_ETM_ISA_A32,
-	CS_ETM_ISA_T32,
-};
-
-struct cs_etm_packet {
-	enum cs_etm_sample_type sample_type;
-	enum cs_etm_isa isa;
-	u64 start_addr;
-	u64 end_addr;
-	u32 instr_count;
-	u32 last_instr_type;
-	u32 last_instr_subtype;
-	u32 flags;
-	u32 exception_number;
-	u8 last_instr_cond;
-	u8 last_instr_taken_branch;
-	u8 last_instr_size;
-	u8 trace_chan_id;
-	int cpu;
-};
+struct cs_etm_packet;
+struct cs_etm_packet_queue;
 
 struct cs_etm_queue;
 
@@ -119,7 +89,7 @@ int cs_etm_decoder__add_mem_access_cb(struct cs_etm_decoder *decoder,
 				      u64 start, u64 end,
 				      cs_etm_mem_cb_type cb_func);
 
-int cs_etm_decoder__get_packet(struct cs_etm_decoder *decoder,
+int cs_etm_decoder__get_packet(struct cs_etm_packet_queue *packet_queue,
 			       struct cs_etm_packet *packet);
 
 int cs_etm_decoder__reset(struct cs_etm_decoder *decoder);
diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
index 5322dcaaf654..a74c53a45839 100644
--- a/tools/perf/util/cs-etm.c
+++ b/tools/perf/util/cs-etm.c
@@ -78,6 +78,7 @@ struct cs_etm_queue {
 	struct cs_etm_packet *packet;
 	const unsigned char *buf;
 	size_t buf_len, buf_used;
+	struct cs_etm_packet_queue packet_queue;
 };
 
 static int cs_etm__update_queues(struct cs_etm_auxtrace *etm);
@@ -125,6 +126,36 @@ int cs_etm__get_cpu(u8 trace_chan_id, int *cpu)
 	return 0;
 }
 
+static void cs_etm__clear_packet_queue(struct cs_etm_packet_queue *queue)
+{
+	int i;
+
+	queue->head = 0;
+	queue->tail = 0;
+	queue->packet_count = 0;
+	for (i = 0; i < CS_ETM_PACKET_MAX_BUFFER; i++) {
+		queue->packet_buffer[i].isa = CS_ETM_ISA_UNKNOWN;
+		queue->packet_buffer[i].start_addr = CS_ETM_INVAL_ADDR;
+		queue->packet_buffer[i].end_addr = CS_ETM_INVAL_ADDR;
+		queue->packet_buffer[i].instr_count = 0;
+		queue->packet_buffer[i].last_instr_taken_branch = false;
+		queue->packet_buffer[i].last_instr_size = 0;
+		queue->packet_buffer[i].last_instr_type = 0;
+		queue->packet_buffer[i].last_instr_subtype = 0;
+		queue->packet_buffer[i].last_instr_cond = 0;
+		queue->packet_buffer[i].flags = 0;
+		queue->packet_buffer[i].exception_number = UINT32_MAX;
+		queue->packet_buffer[i].trace_chan_id = UINT8_MAX;
+		queue->packet_buffer[i].cpu = INT_MIN;
+	}
+}
+
+struct cs_etm_packet_queue
+*cs_etm__etmq_get_packet_queue(struct cs_etm_queue *etmq)
+{
+	return &etmq->packet_queue;
+}
+
 static void cs_etm__packet_dump(const char *pkt_string)
 {
 	const char *color = PERF_COLOR_BLUE;
@@ -513,6 +544,7 @@ static int cs_etm__setup_queue(struct cs_etm_auxtrace *etm,
 	etmq->pid = -1;
 	etmq->offset = 0;
 	etmq->period_instructions = 0;
+	cs_etm__clear_packet_queue(&etmq->packet_queue);
 
 out:
 	return ret;
@@ -1542,10 +1574,13 @@ static int cs_etm__decode_data_block(struct cs_etm_queue *etmq)
 static int cs_etm__process_decoder_queue(struct cs_etm_queue *etmq)
 {
 	int ret;
+	struct cs_etm_packet_queue *packet_queue;
+
+	packet_queue = cs_etm__etmq_get_packet_queue(etmq);
 
 		/* Process each packet in this chunk */
 		while (1) {
-			ret = cs_etm_decoder__get_packet(etmq->decoder,
+			ret = cs_etm_decoder__get_packet(packet_queue,
 							 etmq->packet);
 			if (ret <= 0)
 				/*
diff --git a/tools/perf/util/cs-etm.h b/tools/perf/util/cs-etm.h
index 826c9eedaf5c..75385e2fd283 100644
--- a/tools/perf/util/cs-etm.h
+++ b/tools/perf/util/cs-etm.h
@@ -97,12 +97,57 @@ enum {
 	CS_ETMV4_EXC_END = 31,
 };
 
+enum cs_etm_sample_type {
+	CS_ETM_EMPTY,
+	CS_ETM_RANGE,
+	CS_ETM_DISCONTINUITY,
+	CS_ETM_EXCEPTION,
+	CS_ETM_EXCEPTION_RET,
+};
+
+enum cs_etm_isa {
+	CS_ETM_ISA_UNKNOWN,
+	CS_ETM_ISA_A64,
+	CS_ETM_ISA_A32,
+	CS_ETM_ISA_T32,
+};
+
 /* RB tree for quick conversion between traceID and metadata pointers */
 struct intlist *traceid_list;
 
+struct cs_etm_queue;
+
+struct cs_etm_packet {
+	enum cs_etm_sample_type sample_type;
+	enum cs_etm_isa isa;
+	u64 start_addr;
+	u64 end_addr;
+	u32 instr_count;
+	u32 last_instr_type;
+	u32 last_instr_subtype;
+	u32 flags;
+	u32 exception_number;
+	u8 last_instr_cond;
+	u8 last_instr_taken_branch;
+	u8 last_instr_size;
+	u8 trace_chan_id;
+	int cpu;
+};
+
+#define CS_ETM_PACKET_MAX_BUFFER 1024
+
+struct cs_etm_packet_queue {
+	u32 packet_count;
+	u32 head;
+	u32 tail;
+	struct cs_etm_packet packet_buffer[CS_ETM_PACKET_MAX_BUFFER];
+};
+
 #define KiB(x) ((x) * 1024)
 #define MiB(x) ((x) * 1024 * 1024)
 
+#define CS_ETM_INVAL_ADDR 0xdeadbeefdeadbeefUL
+
 /*
  * Create a contiguous bitmask starting at bit position @l and ending at
  * position @h. For example
@@ -126,6 +171,8 @@ struct intlist *traceid_list;
 int cs_etm__process_auxtrace_info(union perf_event *event,
 				  struct perf_session *session);
 int cs_etm__get_cpu(u8 trace_chan_id, int *cpu);
+struct cs_etm_packet_queue
+*cs_etm__etmq_get_packet_queue(struct cs_etm_queue *etmq);
 #else
 static inline int
 cs_etm__process_auxtrace_info(union perf_event *event __maybe_unused,
@@ -139,6 +186,12 @@ static inline int cs_etm__get_cpu(u8 trace_chan_id __maybe_unused,
 {
 	return -1;
 }
+
+static inline struct cs_etm_packet_queue *cs_etm__etmq_get_packet_queue(
+				struct cs_etm_queue *etmq __maybe_unused)
+{
+	return NULL;
+}
 #endif
 
 #endif
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
