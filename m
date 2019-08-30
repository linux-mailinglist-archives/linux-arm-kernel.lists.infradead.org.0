Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51F41A2FCB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 08:25:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=H4vl9PAXCV2WPzPJ1Y8XO1Yle+v2bBLzuxUPR0JSbro=; b=hgQrREsZL76sGutRnTB0rGRf9E
	moot5n8Qsbz81ekiUMkAWnyyjgJYSCCuK+3vri0XL8/Qf9vvVfM83CKSCDGm9S2P/xO1/VvsB9tAF
	Z7GKB+bNSju8My+0KDv8d6SfRVL0+QZbAkdvvnR+wL5ChTVrcDVtA51asWZCSKR1x3XK5SnGHZPOI
	IRpTPENPUuNMNYcUoe6BuuHF4b1vFNQS6vYH9EWadbiG8fz/s91FT8FWOJQkPFuIxsqzFNWRkEPo1
	8HqlnRIvnr0V2GSGwPa7JVKtBZ3CNAMrtDZ2ouqizHV7a8obJ7ABVLfMKjmZYq0A7WaoTK7JKdr/G
	cxsf4c3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3aLe-0000ZR-Ka; Fri, 30 Aug 2019 06:25:26 +0000
Received: from mail-yw1-xc43.google.com ([2607:f8b0:4864:20::c43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3aL3-0008QF-Lh
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 06:24:51 +0000
Received: by mail-yw1-xc43.google.com with SMTP id e65so2041346ywh.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 23:24:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=OXG5Krp0+0YHinlseDtdKmGPRzdmcPPxpIaorK0Sd/U=;
 b=YHEXZXd6sRfhS4BLjTBmyXis4Z3lNVzZFsvLaN6IeIVjVYDTmD4veeHZo7dGHtMe83
 pPMJfxluP/5bGXyNRyXc8H1hGniUvoDg3qZ4wSycHg6O4NplPwDCUfsLg/ZdyIOUEXfE
 GhmISYvHcc+pqp7h2e6WfUpV8hclsnlEeFlmQ0fGdiozLihG6lPt64bRmO3k+89jaW+Z
 pEbLeoR7wiM0U1IojVKnaQ3kZo6w3vnphGTEhHN8xT/QKOq6MxIfQyWtufypvpLBzgG/
 4UwrAcFrA6umJeFVNY1hqqdyJ1cfnKLPo3StT75wvOuXb4QnnWgfBe67FNwv4+Mp4gEY
 9wug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=OXG5Krp0+0YHinlseDtdKmGPRzdmcPPxpIaorK0Sd/U=;
 b=CMeHVy6TneeHTzZu+WTk3ljCH68ufz7tTIavRTgLfBsCXOcmVfJK2bjRRLg4H9fYEZ
 rVJ1BGpaxY49WYpVM+WzqdHtkwxi+2Ij1hS8/GD5T6BFJzZ+HEaDurpEMqzMz3CxGp4E
 R0sfdLpL/zBNtyBGDZnOsWjRyLABG/FgXBGdRedBWY9t7ARpUvPLDOY6Q1nMdio75Ywm
 b5GyU5KGcG2NjsFlEugSjOEWvdYD33yRv+LGI/SdCIEwBiWbac7sx2I4W/6VSU8uBncA
 9fX5kGsl0Bst2kj1E0evAz2w5lN381l2lk/5vvtHv3lnhI6QVXlBf29vDgMe92VHKUbx
 P/IQ==
X-Gm-Message-State: APjAAAXjfSBPY0JBInkXiYBwiuxvPxhA9uWnvYG56X23rBbJIAmfcKPT
 D0SvrMbDjzdCuNRZ3vfSOt6WfA==
X-Google-Smtp-Source: APXvYqz67vqqy5rGYmWF/4BuddczksgMWXcyQXd0kAabISPC5eC7+OWMjXoeCtH6cBGH5sHTou3oCA==
X-Received: by 2002:a0d:dd51:: with SMTP id g78mr9844096ywe.102.1567146288582; 
 Thu, 29 Aug 2019 23:24:48 -0700 (PDT)
Received: from localhost.localdomain (li1320-244.members.linode.com.
 [45.79.221.244])
 by smtp.gmail.com with ESMTPSA id r193sm976784ywe.8.2019.08.29.23.24.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 23:24:48 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Mike Leach <mike.leach@linaro.org>, Robert Walker <Robert.Walker@arm.com>,
 Adrian Hunter <adrian.hunter@intel.com>
Subject: [PATCH v1 1/3] perf cs-etm: Refactor instruction size handling
Date: Fri, 30 Aug 2019 14:24:19 +0800
Message-Id: <20190830062421.31275-2-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190830062421.31275-1-leo.yan@linaro.org>
References: <20190830062421.31275-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_232449_727474_A8C2781D 
X-CRM114-Status: GOOD (  14.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

There has several code pieces need to know the instruction size, but
now every place calculates the instruction size separately.

This patch refactors to create a new function cs_etm__instr_size() as
a central place to analyze the instruction length based on ISA type
and instruction value.

Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 tools/perf/util/cs-etm.c | 44 +++++++++++++++++++++++++++-------------
 1 file changed, 30 insertions(+), 14 deletions(-)

diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
index b3a5daaf1a8f..882a0718033d 100644
--- a/tools/perf/util/cs-etm.c
+++ b/tools/perf/util/cs-etm.c
@@ -914,6 +914,26 @@ static inline int cs_etm__t32_instr_size(struct cs_etm_queue *etmq,
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
@@ -938,19 +958,23 @@ static inline u64 cs_etm__instr_addr(struct cs_etm_queue *etmq,
 				     const struct cs_etm_packet *packet,
 				     u64 offset)
 {
+	int insn_len;
+
 	if (packet->isa == CS_ETM_ISA_T32) {
 		u64 addr = packet->start_addr;
 
 		while (offset > 0) {
-			addr += cs_etm__t32_instr_size(etmq,
-						       trace_chan_id, addr);
+			addr += cs_etm__instr_size(etmq, trace_chan_id,
+						   packet->isa, addr);
 			offset--;
 		}
 		return addr;
 	}
 
-	/* Assume a 4 byte instruction size (A32/A64) */
-	return packet->start_addr + offset * 4;
+	/* Return instruction size for A32/A64 */
+	insn_len = cs_etm__instr_size(etmq, trace_chan_id,
+				      packet->isa, packet->start_addr);
+	return packet->start_addr + offset * insn_len;
 }
 
 static void cs_etm__update_last_branch_rb(struct cs_etm_queue *etmq,
@@ -1090,16 +1114,8 @@ static void cs_etm__copy_insn(struct cs_etm_queue *etmq,
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
