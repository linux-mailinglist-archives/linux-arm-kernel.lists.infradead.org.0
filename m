Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EBA945294
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 05:15:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1rbnN/NBu8aeJONIAaZ+ex0+xnT4Jeg4MmV0OlGUhJ0=; b=XuvGXwucxh653p
	43hg9IPCcQKMdfAaAXk/Ihu3GmhQUSWr1vlPwcQu1GSOWGeM6O4vImlS0j0olXvJyAYB3MFPmtdHg
	QoeBE0TQkTTZtMmrnyNwEiVZwlm6tykt86LeqEufZz3R3RtOmHQ+cFgSWKH8EoyEIxCrjizBsYctT
	ZMP0I+tyPxcX8ZJ7A1EP6QYlySXwS5MVEUuXCkNC+6LmmcSUqjLPq22DUUylv8MZRL5++e/RpOafj
	RxvFvmlMMVUqXWo3yq492aHYSOAglcnXYGdf4PGMgA1Dssa38qbuxPmaX9aDvX9QqOX7Oi9cNlxu3
	IinwLfnS9G8zJWjaJs6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbcgv-0003mk-0x; Fri, 14 Jun 2019 03:15:49 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbcdU-0000CP-9j
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 03:12:19 +0000
Received: by mail-pl1-x644.google.com with SMTP id i2so383897plt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 20:12:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1IdhsUs/fdllTh2EJ+ScRqWrO1uX9GsPUvP6PugnTR0=;
 b=CeEm6Q1HCBNewplA3EEpKwApVIKTpTNllAdvcpIQe77l+53e3CBoti53KWIeaNe0AV
 uR33V/xqt5i78jkGXLw5r7hKp87D8o3XXeTj2CX3c6eW5pbdE4O8M/DEhUuVcvJLyCue
 J/HxOYccIDOdOn0PgfLpjg1ooi2feDWeCRsPH41MC/6U3E11V3hs/g6YcluMAoJclkf0
 RYrOLVM24b3kdzMeos5tsXRAFN9RPr1E5Ixv5qsOkkQyxTPZ6qhPRWOb4NWe8ELnZbqq
 Cz7MO6TMue7XovkrPAocu+1P2xG1vLWIb0lKRAT9tTf8MVYN0fsM1/hYKglqWz5WgZbA
 fArQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1IdhsUs/fdllTh2EJ+ScRqWrO1uX9GsPUvP6PugnTR0=;
 b=Q2jShugfiZo7si7WQtc3nA+egD+XaW1OioJoY0PsQMeTtlv2dnuEJhgocxT44QwKR8
 goaVGEPXWopR3yFYr54+cmqhxijn6rrh2S8fa3Fc6k73xznOWSuxxw9KdO23Ot+o1E6r
 JQCP9OJdSycaD4JNF64oTaQ4gzsfXijfWruePIxYKojIW9fkSqpYNNssUbJ5541Zm+IJ
 siRkSNHFFAtRui91A0IpSbdT80E1TVqvgyjpq1rO0Oli9rwtehS+ZstFvEoFE0uC4/3V
 AR8dzwrR3DasutMpA8dZ8SLmHpBnZnd6fKXFvJ2CDJxUNx6993sP8RYf/ALbi3XrFhLE
 V3WQ==
X-Gm-Message-State: APjAAAU2ngZ45mexHXHrO80Z7IirACnj3prWb7G+ZlhQ+rivOuq7eOQo
 d/ABc2+IlVFerFkgIpSmAyp1RwiJDg4=
X-Google-Smtp-Source: APXvYqxZaE1F8d9DJY74Bh26I9mrpSGzX/LNmvHBq/ilBx736pFGlQUSrt6qWsqrIVuHCyJRaPUq7w==
X-Received: by 2002:a17:902:b94a:: with SMTP id
 h10mr91088007pls.265.1560481932763; 
 Thu, 13 Jun 2019 20:12:12 -0700 (PDT)
Received: from localhost ([122.172.66.84])
 by smtp.gmail.com with ESMTPSA id e184sm1047863pfa.169.2019.06.13.20.12.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Jun 2019 20:12:12 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: linux-arm-kernel@lists.infradead.org,
 Julien Thierry <Julien.Thierry@arm.com>
Subject: [PATCH v4.4 07/45] arm64: entry: Ensure branch through syscall table
 is bounded under speculation
Date: Fri, 14 Jun 2019 08:37:50 +0530
Message-Id: <ee036f503b414d84b1491e2fb0c6ffbd4e770d18.1560480942.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1560480942.git.viresh.kumar@linaro.org>
References: <cover.1560480942.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_201216_429956_573A879C 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, Will Deacon <will.deacon@arm.com>,
 stable@vger.kernel.org, mark.brown@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Will Deacon <will.deacon@arm.com>

commit 6314d90e64936c584f300a52ef173603fb2461b5 upstream.

In a similar manner to array_index_mask_nospec, this patch introduces an
assembly macro (mask_nospec64) which can be used to bound a value under
speculation. This macro is then used to ensure that the indirect branch
through the syscall table is bounded under speculation, with out-of-range
addresses speculating as calls to sys_io_setup (0).

Reviewed-by: Mark Rutland <mark.rutland@arm.com>
Signed-off-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
[ v4.4: use existing scno & sc_nr definitions ]
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm64/include/asm/assembler.h | 11 +++++++++++
 arch/arm64/kernel/entry.S          |  1 +
 2 files changed, 12 insertions(+)

diff --git a/arch/arm64/include/asm/assembler.h b/arch/arm64/include/asm/assembler.h
index 683c2875278f..2b30363a3a89 100644
--- a/arch/arm64/include/asm/assembler.h
+++ b/arch/arm64/include/asm/assembler.h
@@ -102,6 +102,17 @@
 	hint	#20
 	.endm
 
+/*
+ * Sanitise a 64-bit bounded index wrt speculation, returning zero if out
+ * of bounds.
+ */
+	.macro	mask_nospec64, idx, limit, tmp
+	sub	\tmp, \idx, \limit
+	bic	\tmp, \tmp, \idx
+	and	\idx, \idx, \tmp, asr #63
+	csdb
+	.endm
+
 #define USER(l, x...)				\
 9999:	x;					\
 	.section __ex_table,"a";		\
diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index 4c5013b09dcb..e6aec982dea9 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -697,6 +697,7 @@ el0_svc_naked:					// compat entry point
 	b.ne	__sys_trace
 	cmp     scno, sc_nr                     // check upper syscall limit
 	b.hs	ni_sys
+	mask_nospec64 scno, sc_nr, x19	// enforce bounds for syscall number
 	ldr	x16, [stbl, scno, lsl #3]	// address in the syscall table
 	blr	x16				// call sys_* routine
 	b	ret_fast_syscall
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
