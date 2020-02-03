Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D28AD15007B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 03:08:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=b2EutL/jQo0d9PiO2TyTtUorf7t6pW0TrVU9vAvcXtM=; b=lWXSRkt7lZJFOCqp4jcj6cfz1C
	RFMxT3H/ofeNkd6xigf4a47x8rGlb2I/Ag768hWDsT3s7zVoNXRB4g22JuYStHHmrZN6xzIVWPT7F
	SPFOS/hMRuj+2tQzw5fgntoM9ibdR+wNswseyUUr8R1nqvRI1OXIlBPDI01uMbmrgaoN5cQ9A3mjc
	Cj8y1DzSvAQB4cslMQdGPs/nhQePDUu/KQCFVx9NXfOf5KeNACGOFVDSmWHis6TgRrroqCXKWVvZZ
	hPUedkSiTY+NrBOfG+YBzs/3AnI3XU7t9BTBP1AeDm05Yn8XWzKA7b8CpIn9iyxX6Oj3qO+QGHSo9
	gjV6SunQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyR9d-0005V2-FS; Mon, 03 Feb 2020 02:08:01 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyR9P-0005Ou-AN
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 02:07:48 +0000
Received: by mail-pl1-x644.google.com with SMTP id p11so5206175plq.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 02 Feb 2020 18:07:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=0dvPytXJSrMRsfo04SBdUfjJdiPgt8LyFDxEpmk5VQM=;
 b=LgQSPSm8xD41YyMhV/kmpwWl8wf3WsOqLeZJdYT2DNy/R5BQKfdA2baKU1+GP1G4mg
 bYgvniW2Fs6jLybrVJCEEW/4Vf9sYJd78wkVFycv/ulCJ2TwqJvP3HM5biZ5aZj0PmuQ
 4ROmVfi0rKOcCcl7axf4M7lIb+36sezchU860j3D2UCzcOrgsAbQo4SbiQdSIzyu2JJ2
 4TAyZ5UuU3j/rBEzSJ1LcayeRPtx8rCMYVyVDdJlfm329UA7MupRi12mAWXxW0YGHi5R
 APJmVVi5IsS6X45T5jCrTasH0G6DKII799A8b3Mf+WldUt0PvktPkyMnEmWnmp2f6S0d
 rmuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=0dvPytXJSrMRsfo04SBdUfjJdiPgt8LyFDxEpmk5VQM=;
 b=IRn55hED3XY/RdZUbdEOc1uMvZUINg6CIzgy14QRYLeVHWhOyQKxp4MFxkGX22PIBd
 +I+5vqoBFGZfF+keIBc3hJLpmbxjQALAsluRyFXIIlgrUi4HyPJC3gV3tU8qWbY6MGew
 zdDkkB1E2xa4ALEeQ4VguUKvZxv829a0kzQhofLYYltiY5+VFkok7retLeV5owp1ZBKc
 6cjoBo/R46mHgiVkeOq+1GPDv20NfS38zOLlkUS3MDQ0dqPL1OFtrhkJOcNt38xILLvH
 feHx/JtEEzjsYngYAjdZqEfeS1Dl82y9+E90Emm9h18qF1rxP6mOmai8HlTF/59O2yiu
 lTbg==
X-Gm-Message-State: APjAAAXTA3Fk+U03INfcukRX7R2qEGaP/9pVjkw740ds1NplYbPLk5Qt
 2dr0p+OnwYe4OWWGcveNIcIckA==
X-Google-Smtp-Source: APXvYqyz0+2AuaA9hd6WscvD6V3lb9cm/CSKMRryBXAPHaPGt3Dp5pXwKuPEVelgEaumOMIGwi3sfg==
X-Received: by 2002:a17:902:5a44:: with SMTP id
 f4mr15550715plm.328.1580695666435; 
 Sun, 02 Feb 2020 18:07:46 -0800 (PST)
Received: from localhost.localdomain (li1441-214.members.linode.com.
 [45.118.134.214])
 by smtp.gmail.com with ESMTPSA id z29sm17521201pgc.21.2020.02.02.18.07.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 02 Feb 2020 18:07:46 -0800 (PST)
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Mark Rutland <mark.rutland@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Mike Leach <mike.leach@linaro.org>, Robert Walker <robert.walker@arm.com>,
 Coresight ML <coresight@lists.linaro.org>
Subject: [PATCH v4 1/5] perf cs-etm: Refactor instruction size handling
Date: Mon,  3 Feb 2020 10:07:12 +0800
Message-Id: <20200203020716.31832-2-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200203020716.31832-1-leo.yan@linaro.org>
References: <20200203020716.31832-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_180747_386516_1A557133 
X-CRM114-Status: GOOD (  15.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

For a neat implementation, cs_etm__instr_addr() will always execute the
loop without checking ISA type, this allows cs_etm__instr_size() and
cs_etm__instr_addr() have no any duplicate code with each other and both
functions are independent and can be changed separately without breaking
anything.  As a side effect, cs_etm__instr_addr() will do a few more
iterations for A32/A64 instructions, this would be fine if consider perf
is a tool running in the user space.

Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 tools/perf/util/cs-etm.c | 48 +++++++++++++++++++++++-----------------
 1 file changed, 28 insertions(+), 20 deletions(-)

diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
index 720108bd8dba..cb6fcc2acca0 100644
--- a/tools/perf/util/cs-etm.c
+++ b/tools/perf/util/cs-etm.c
@@ -918,6 +918,26 @@ static inline int cs_etm__t32_instr_size(struct cs_etm_queue *etmq,
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
@@ -942,19 +962,15 @@ static inline u64 cs_etm__instr_addr(struct cs_etm_queue *etmq,
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
@@ -1094,16 +1110,8 @@ static void cs_etm__copy_insn(struct cs_etm_queue *etmq,
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
