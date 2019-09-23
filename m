Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E61DFBB91D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 18:08:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NN1ecvT6QhHmfjsxQfmPo+fjCGz1HZqWknbilBAIJkw=; b=MqxYjDMlk30hn/0CTyTjzijciU
	tDNEIsl+b1pApUpWtqNr5qNy88ecLl13IJ+zKqcOrmCuXYStZp4aus8XFFQgs/RiRPeJ2UrOENlqL
	pnCYbAmYI3IuIzQCb69hTs0r+rQcy8cPLd18e9FHD3EI3cwaEwUdVadpVxNTk4AEq0i7vjYPxJsbz
	vuFafVfiqobu/HF2uFoHGF0t2eXOznvb/3CstwOJFBMr9/j1WmPNZyEkplXuj9XVnovq5c1Tk4OhB
	tDOv6ahCXQwSLPLcH0nJeuMpEGzysx89j1j0r+8IuJP3FlMn4oUeEe9ovFGaLqKIVgyvYvo4TVV8u
	3x0Yq6zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCQtM-0008SC-NP; Mon, 23 Sep 2019 16:08:48 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCQsn-0008Da-2X
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 16:08:14 +0000
Received: by mail-pf1-x443.google.com with SMTP id y22so9409481pfr.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 09:08:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=PTSvUaUcz4xj5MLSxSCaFDMyStE9w7Ne+2lkvbOJnZc=;
 b=iuoaK4s3jA9qx5hTsEJ8UFFw44uPYfMk/d78HxnJHP/HCH8BHehsUezXIaOoWyuLGD
 m1LjGTOKOcFyhs640Cx3260rEuQwrXfsUPxak7Q+SX1xCWIn4YvI2gaWdt/svmbiqEbI
 1Lo2bwde76R1s6P2jv7SFBrSsKwHjWFcz6qfEP7tPj2u42shRsYTFePN1bYIJMPrwHzI
 QuVCEABL/4di0uIuJlLvgnfXp/69OMqj0de4ztKYR6YODPOo/zKzPiYGe7qBNLlT1Mqn
 qNim+dVhvYu+lY5vwg4XKRIduCHPedYyaeGu+I7Z2hHwHFxh8ZH7ZXsCkVF83hgSiwGa
 1Fcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=PTSvUaUcz4xj5MLSxSCaFDMyStE9w7Ne+2lkvbOJnZc=;
 b=MTkLa+LXK9r8tOJXTByIT/rwBry0wL2zW3vI9XPFiQtfhlHasJMKcZ9lDlNgXh6A5p
 R3DHRd0oHbKsLfVqwShE+gwzXeQeTCX8DBXDkFKQi23AEHJTLrzG19CQ51+IvmIrqIet
 HZl4Uih/b+Au3Ssr7msyqGGTEHG6jAAbdh5FInSjRSba6N/TTPFSvKsORbXy+of3RNoQ
 jBaWzV0yBOwQ6+UVOfdZWWa79J3bsKnnwt8Xj/79nF2LrWGgz6ymWBFo7T6UA5xNEOBO
 Z/48A4S4e3PLDiGRL3/iX7zVfplhXkLjkJ9ql38B1JaciIo2y0K8RtiTUrza4pQ7/5Uq
 Nmcg==
X-Gm-Message-State: APjAAAWAz1KDQa1Sp0BHLzOcEeOO5KKgDI+8+FIOzg8C27kY3tVSsUp8
 Ap+L/8RPq4LrTta70qRWak+AeA==
X-Google-Smtp-Source: APXvYqzR/rWOqsp0ZVjpUnk9SDs/SXltXYRViavE2rZoOppr4DQZ84RBCTAu/gdcYH5fcb+4HBNhjQ==
X-Received: by 2002:a62:1cd2:: with SMTP id c201mr335248pfc.51.1569254892370; 
 Mon, 23 Sep 2019 09:08:12 -0700 (PDT)
Received: from localhost.localdomain ([12.206.46.62])
 by smtp.gmail.com with ESMTPSA id r1sm9880006pgv.70.2019.09.23.09.08.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Sep 2019 09:08:11 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Mark Rutland <mark.rutland@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Mike Leach <mike.leach@linaro.org>,
 Coresight ML <coresight@lists.linaro.org>
Subject: [PATCH v2 1/5] perf cs-etm: Refactor instruction size handling
Date: Tue, 24 Sep 2019 00:07:55 +0800
Message-Id: <20190923160759.14866-2-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190923160759.14866-1-leo.yan@linaro.org>
References: <20190923160759.14866-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_090813_113036_EBE8D7C7 
X-CRM114-Status: GOOD (  15.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Leo Yan <leo.yan@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In cs-etm.c there have several functions need to know instruction size
based on address, e.g. cs_etm__instr_addr() and cs_etm__copy_insn()
these two functions both calculate the instruction size separately.
Furthermore, if we consider to add new features later which also might
require to calculate instruction size.

For this reason, this patch refactors the code to introduce a new
function cs_etm__instr_size(), it will be a central place to calculate
the instruction size based on ISA type and instruction address.

For a neat implementation, cs_etm__instr_addr() will always execute the
loop without checking ISA type, this allows cs_etm__instr_size() and
cs_etm__instr_addr() have no any duplicate code with each other and both
functions can be changed independently later without breaking anything.
As a side effect, cs_etm__instr_addr() will do a few more iterations for
A32/A64 instructions, this would be fine if consider perf tool runs in
the user space.

Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 tools/perf/util/cs-etm.c | 48 +++++++++++++++++++++++-----------------
 1 file changed, 28 insertions(+), 20 deletions(-)

diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
index f87b9c1c9f9a..1de3f9361193 100644
--- a/tools/perf/util/cs-etm.c
+++ b/tools/perf/util/cs-etm.c
@@ -917,6 +917,26 @@ static inline int cs_etm__t32_instr_size(struct cs_etm_queue *etmq,
 	return ((instrBytes[1] & 0xF8) >= 0xE8) ? 4 : 2;
 }
 
+static inline int cs_etm__instr_size(struct cs_etm_queue *etmq,
+				     u8 trace_chan_id,
+				     enum cs_etm_isa isa,
+				     u64 addr)
+{
+	int insn_len;
+
+	/*
+	 * T32 instruction size might be 32-bit or 16-bit, decide by calling
+	 * cs_etm__t32_instr_size().
+	 */
+	if (isa == CS_ETM_ISA_T32)
+		insn_len = cs_etm__t32_instr_size(etmq, trace_chan_id, addr);
+	/* Otherwise, A64 and A32 instruction size are always 32-bit. */
+	else
+		insn_len = 4;
+
+	return insn_len;
+}
+
 static inline u64 cs_etm__first_executed_instr(struct cs_etm_packet *packet)
 {
 	/* Returns 0 for the CS_ETM_DISCONTINUITY packet */
@@ -941,19 +961,15 @@ static inline u64 cs_etm__instr_addr(struct cs_etm_queue *etmq,
 				     const struct cs_etm_packet *packet,
 				     u64 offset)
 {
-	if (packet->isa == CS_ETM_ISA_T32) {
-		u64 addr = packet->start_addr;
+	u64 addr = packet->start_addr;
 
-		while (offset > 0) {
-			addr += cs_etm__t32_instr_size(etmq,
-						       trace_chan_id, addr);
-			offset--;
-		}
-		return addr;
+	while (offset > 0) {
+		addr += cs_etm__instr_size(etmq, trace_chan_id,
+					   packet->isa, addr);
+		offset--;
 	}
 
-	/* Assume a 4 byte instruction size (A32/A64) */
-	return packet->start_addr + offset * 4;
+	return addr;
 }
 
 static void cs_etm__update_last_branch_rb(struct cs_etm_queue *etmq,
@@ -1093,16 +1109,8 @@ static void cs_etm__copy_insn(struct cs_etm_queue *etmq,
 		return;
 	}
 
-	/*
-	 * T32 instruction size might be 32-bit or 16-bit, decide by calling
-	 * cs_etm__t32_instr_size().
-	 */
-	if (packet->isa == CS_ETM_ISA_T32)
-		sample->insn_len = cs_etm__t32_instr_size(etmq, trace_chan_id,
-							  sample->ip);
-	/* Otherwise, A64 and A32 instruction size are always 32-bit. */
-	else
-		sample->insn_len = 4;
+	sample->insn_len = cs_etm__instr_size(etmq, trace_chan_id,
+					      packet->isa, sample->ip);
 
 	cs_etm__mem_access(etmq, trace_chan_id, sample->ip,
 			   sample->insn_len, (void *)sample->insn);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
