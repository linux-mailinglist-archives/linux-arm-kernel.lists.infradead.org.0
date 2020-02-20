Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0B4A1656E2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 06:28:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gO3AXBgURaA7AoXrshjab/dPxL6G0wwZQs1l51+1/0E=; b=J+FLjDz56Fg1YszAUeIDnw+eiD
	YYMezm/uiL/TsdviVcX/vMrr0y+khvbfV117pzVxQm2KSajgsrPmUnfNwofH9ugf3mqwfLnDCno5B
	cXGLELugUzyE0kJTOhLN7vuXGlJRIgzV3X8zrFaoE7BSTXXLj2Alzc4NR7ogahFyNF3NlMdaznDsA
	L2r/vckSKJYltRBRnTKgT4f+RjVpXW5OP9dOA9IeNpTZPNRCGxwP2+mxKjCb4xPDwY4TZJxVjlIOx
	xE/G8lO7LpMitWT61irAJKReIJzrTvjdJvxBDfM3yA09ZEvRYfSnXVHoH+QtiBubV76Ox9E7UCk9M
	1p7idKJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4eOL-0002D7-TG; Thu, 20 Feb 2020 05:28:53 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4eNj-0001q5-Uq
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 05:28:17 +0000
Received: by mail-pj1-x1043.google.com with SMTP id q39so386961pjc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 21:28:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=qJS90AGtzv8zo/QcaS91tWAyWP8Ec16yxwzg5jPJK6o=;
 b=vdtuawAOSZA6MY+y0V2xvFjBU+olrLq9EMduwvFStf/JjQcleL6nILGeTCtYp2rzi4
 VZnie9GBsMHQelivWTIBh9LraAyrTwRPZ9XgRG/ukaG/ICxmfD21HIGgv1Hlk1eiquLH
 +4YUbz1Osqs82SxBbwBf/Rwm5T5IVG86SnneVY96uY/WJf6H81hrSAfjRWAAk3RR3SnS
 GIOv53O8Lfh00200W3RisDDwzapZasqqrIsFGGGSaQSFg0pz5GCXGoSfbfRbK7aQxJ7+
 YNkVlTGobMmaKlCjzpwGZJiQYfhTADGvfg+1HYEr4cyAAkmea80t/1iNFHyi5yXCJF3o
 RkeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=qJS90AGtzv8zo/QcaS91tWAyWP8Ec16yxwzg5jPJK6o=;
 b=LeUGapZkp3v0EW8iid7DU0FdusuZ3ACb1QvJS6V4sscDIHtBNE3sdEztbZCn4BMxWY
 AycrYD3DFYCprVB6433PKjFKZ9QfAb4DfVqe9IPPIOrKyMEX8SO21ujRm7jhg3Qmunao
 Y3ea+GZku3uRPW4qUafwj8NthFlxFewNIVFcKyLEzPv9pn+Hb+5LYruDkJMs/rViUwg+
 hcj+Ngf5gnPz+M//O8HvdciIxHzMfAtuYt+upcasueTP9rkfJoaIVdXsGKm9a1t8WLs9
 RqAse0f/lNBH76s65RO1W4QtIIv8/REIU9x6Yx7Mnuk6fR5JLgbD7FCak5EJt/VypoRd
 kahA==
X-Gm-Message-State: APjAAAWbq5VHui5SD5lsoOzxIcXJ3+TX8/DPtH28Np/EG8xdtysKkOoO
 WTLoYEQm6OcOoa0ti7h16QH97g==
X-Google-Smtp-Source: APXvYqxaFyHZklbL2af5UzEJyvN+4+cf0+aqM60nSUm7/DsE4K4fWHxRgsNE7NitZwKNMU+p3EYy+g==
X-Received: by 2002:a17:90b:11cd:: with SMTP id
 gv13mr1573960pjb.94.1582176494302; 
 Wed, 19 Feb 2020 21:28:14 -0800 (PST)
Received: from localhost.localdomain (li1441-214.members.linode.com.
 [45.118.134.214])
 by smtp.gmail.com with ESMTPSA id l69sm1535663pgd.1.2020.02.19.21.28.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 21:28:13 -0800 (PST)
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, Mike Leach <mike.leach@linaro.org>,
 Robert Walker <robert.walker@arm.com>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Coresight ML <coresight@lists.linaro.org>
Subject: [PATCH v5 3/9] perf cs-etm: Refactor instruction size handling
Date: Thu, 20 Feb 2020 13:26:55 +0800
Message-Id: <20200220052701.7754-4-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200220052701.7754-1-leo.yan@linaro.org>
References: <20200220052701.7754-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_212816_063694_1C9C955C 
X-CRM114-Status: GOOD (  17.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

cs-etm.c has several functions which need to know instruction size
based on address, e.g. cs_etm__instr_addr() and cs_etm__copy_insn()
two functions both calculate the instruction size separately with its
duplicated code.  Furthermore, adding new features later which might
require to calculate instruction size as well.

For this reason, this patch refactors the code to introduce a new
function cs_etm__instr_size(), this function is central place to
calculate the instruction size based on ISA type and instruction
address.

Given the trace data can be MB and most likely that will be A64/A32 on
a lot of the current and future platforms, cs_etm__instr_addr() keeps a
single ISA type check for non T32, for this case it executes an
optimized calculation (addr + offset * 4).

Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 tools/perf/util/cs-etm.c | 52 ++++++++++++++++++++++++----------------
 1 file changed, 32 insertions(+), 20 deletions(-)

diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
index 7cf30b5e0e20..f3ba2cfb634f 100644
--- a/tools/perf/util/cs-etm.c
+++ b/tools/perf/util/cs-etm.c
@@ -935,6 +935,26 @@ static inline int cs_etm__t32_instr_size(struct cs_etm_queue *etmq,
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
@@ -959,19 +979,19 @@ static inline u64 cs_etm__instr_addr(struct cs_etm_queue *etmq,
 				     const struct cs_etm_packet *packet,
 				     u64 offset)
 {
-	if (packet->isa == CS_ETM_ISA_T32) {
-		u64 addr = packet->start_addr;
+	u64 addr = packet->start_addr;
 
-		while (offset) {
-			addr += cs_etm__t32_instr_size(etmq,
-						       trace_chan_id, addr);
-			offset--;
-		}
-		return addr;
+	/* Optimize calculation for non T32 */
+	if (packet->isa != CS_ETM_ISA_T32)
+		return addr + offset * 4;
+
+	while (offset) {
+		addr += cs_etm__instr_size(etmq, trace_chan_id,
+					   packet->isa, addr);
+		offset--;
 	}
 
-	/* Assume a 4 byte instruction size (A32/A64) */
-	return packet->start_addr + offset * 4;
+	return addr;
 }
 
 static void cs_etm__update_last_branch_rb(struct cs_etm_queue *etmq,
@@ -1111,16 +1131,8 @@ static void cs_etm__copy_insn(struct cs_etm_queue *etmq,
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
