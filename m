Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49F0DCC902
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  5 Oct 2019 11:17:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/eWQ0dMSbxAUVyiOVrz7pysMY6+q82dHOrlL5lW/cBE=; b=p6jQ3aZ2JY7ygnaCjIBQVoSLOU
	LZK/mp0MGr9oAXufnBlo2PuLjbb0ommnrkUGDR0Bczvarr6yJaDdXw4sGQsvs0qujr+LMILRdmOk9
	Wpr3ojVX14asO9sX07xna8ACQaSDFHYS61yKjjvPPFIg9SoDT7HQ+zt3rELc4x00Y83lUxuoxg43O
	VDwov8kb1p4c8nVWQRoCB6OOIJGHvISyICS3mtiQYP8NC8i+S5wEXqFNVglXw+Faf7oE6KmXMvODb
	n2HsQzGBIyCqMwil2MWAu9wYUjP8fmJkefnrsRl26Vmu9AWHv9k29EEdnh7OHt13h29WBI5n6U0V8
	iVNUFWtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGgCC-00043C-EV; Sat, 05 Oct 2019 09:17:48 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGgBD-0003Zf-5q
 for linux-arm-kernel@lists.infradead.org; Sat, 05 Oct 2019 09:16:49 +0000
Received: by mail-qt1-x841.google.com with SMTP id m15so12194768qtq.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 05 Oct 2019 02:16:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=6oKadehOfuqvchi0MOdyWhMtht9hVnMfKkag850zFWI=;
 b=TDZr/IHUGHDNGMgaV72PWvAvVyveRW1J40XKwUGE+N8oYAHUd9mhkLlu09mVxBJI7s
 GqbPNcNj/bRMrczIfnEdBFl3ybYNtf4bIgaClwcgeUX4Rb+QHAk20D3cp9dfWcwRr4kG
 9D29taw93N0VDo+9tf5dkmzL+dwoq9dvXJFxUN/t/1uJo2zsTO7+CPGv7WbG03vos9Tk
 diUjMGTSVNEgULTFALrHjMVgz4+eBpTrb5jDNoE4AmMxZ0Ib4MuqucEfuuz0VvOlIic8
 PgBJApbTEMADIMHR4mf+dGQtoPkcNhb+uI20FhXYRF6+837HLdLIRfuxm4v6ybJ/39qh
 0Kmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=6oKadehOfuqvchi0MOdyWhMtht9hVnMfKkag850zFWI=;
 b=QsHsFD0aSuNQ8YuqVpnsFQz89v3LWvtiuHgSJEsb/8V5GoE4Qzx4S1SJyrrEEEN40z
 9ekDYIV4SPU3QjF3HEkTTzAOzxipkwOFjBoabrABkm39xmg6yrJIJhGrbz16KCbvhtBi
 0I8vbPwQZPliK5ZNNI4ku+DNgz/p/tuUmrY9+WJ86ng7fX0yVW2LCQd0ALDQURzICMaT
 Ii8rLbYPRHcVGgV4eWRi4qilGxmzZglzXRFijdt+jgP/gwQTyjuaUumZknPXhVqOdNGT
 BhiFDKa1AyYTzmqBjIAn21MYV6/58COvfH112x9SjXeJFAoq9gJ7t4lcHkJa1/JTHYjk
 XQeQ==
X-Gm-Message-State: APjAAAXozR+lg0UwVYTrmH88eKBYxfJWZfesO410IKH6vivSWhe/aZTu
 mklkrxO3yzW03sXRYYKISIhBoA==
X-Google-Smtp-Source: APXvYqwm5BY4l2NqSfENXb6KtiQLbeZX5B53V8Nw1aoIlItN4tedlMnC/dP000d3XY8Wl7GtAxXKPw==
X-Received: by 2002:aed:31c6:: with SMTP id 64mr20419643qth.67.1570267005805; 
 Sat, 05 Oct 2019 02:16:45 -0700 (PDT)
Received: from localhost.localdomain (li937-157.members.linode.com.
 [45.56.119.157])
 by smtp.gmail.com with ESMTPSA id u132sm4384621qka.50.2019.10.05.02.16.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 05 Oct 2019 02:16:45 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mark Rutland <mark.rutland@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Mike Leach <mike.leach@linaro.org>,
 Coresight ML <coresight@lists.linaro.org>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>
Subject: [PATCH v3 2/6] perf cs-etm: Refactor instruction size handling
Date: Sat,  5 Oct 2019 17:16:10 +0800
Message-Id: <20191005091614.11635-3-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191005091614.11635-1-leo.yan@linaro.org>
References: <20191005091614.11635-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_021647_361704_DF20F145 
X-CRM114-Status: GOOD (  15.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
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
index 4bc2d9709d4f..58ceba7b91d5 100644
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
 				     s64 offset)
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
