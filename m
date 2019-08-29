Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA781A18EF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 13:37:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1rbnN/NBu8aeJONIAaZ+ex0+xnT4Jeg4MmV0OlGUhJ0=; b=Tm8j5aNMCk6j+p
	yj31NHdlOJaWRZMqmP/Pmpbx4HrTQUOxQapIOLGveGGPKZpQHEHzhTFxYfIKkMuQxwJ33SCoV4bJW
	u0R9pbSHHJFPHBm+5zQLNax77Od2N7atrF0lU8YWBuUzkzVvN8My2Uz8FlNFIprku1P+aPjH7S7Hk
	/xsQvls9XOld3XybwPK6ZDm8AZaRMfjlHL7PXwBW/aBxhQoL8Xlo3g2RBcFZOqnupu7EUED/7qwMh
	4XYTZQqiVa1+rzT8DRK33zHDThDPa8MVLNAbkUSgcwnhINOENM+RW6Zg+w4sLSR1t6i8B6KBmD8eb
	p/phDJLncB2p5SqenlIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Iji-0007aH-EW; Thu, 29 Aug 2019 11:37:06 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Ihp-0005PO-Ik
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 11:35:12 +0000
Received: by mail-pl1-x643.google.com with SMTP id d3so1461855plr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 04:35:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1IdhsUs/fdllTh2EJ+ScRqWrO1uX9GsPUvP6PugnTR0=;
 b=nxI85UwxnbVBJqSbq8Ywtoc623bVciPB583W6cIvsNcR9oBenNkMhgmn56N8dl7tHE
 HCJXonvD30tGaKZHMMV+hUfBy0X963d3yoXUwEU4wjSg1Z72lbwKhxPibPpL4vvKT/sr
 d9eU0YSkgUUaRy9GZaJXXWZccVQd7hOExhRb4tLvsZBKRmh5CCx4FM+iAh/eQCsKLWWp
 FIY3VPxy1ObVuPcERjVujhSRX3z9hbu98dIF01oxC51utQfIXqj2ZtYwJ+WWA85tkvl2
 4cF/61lyqS+8CzAr/GFd2AGhz0eitx64Llmj8Bs0pXoci4lMlRg6vnKzxGxcF7afafI0
 OAOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1IdhsUs/fdllTh2EJ+ScRqWrO1uX9GsPUvP6PugnTR0=;
 b=H9SzKpDRXVRJe+1xiRdbBpo/YCsnLD7jPnzsINO7LVvN/8JhxEh0nvqrdPskA0TPqW
 dpmn5l5jQ1ncmxjTSD2XJZiF8q1CyiDO4dVFuHC6BkvOsOIiL0buG4GkxNEmISQcK2bl
 Pi8HwKzErFUw8NvFYFJuBearljMaNCMfE2hLHgCJ49RnVBbdj25hQPpYQz+GYMxNJCCd
 m2t4MgqNfTh/hngrmFUlG1uDj4EKWfIY4yC07Qbr/+6LrbVOgXmMjzI/XTYK44jC8TAv
 Sh3vvitbAonBO649PoH36fmfaJZvH23h5iSBjRSVs8+qkPNSJGn2xBXaQlGguSKpC5Sk
 NMoQ==
X-Gm-Message-State: APjAAAU5BGS+R1ZiMOVgXNxRbNNTIBd4BAWxqjU0Ou7xTGO2ACfDo7/a
 BjOwCF47b6bNE61fwpWYb8gYMw==
X-Google-Smtp-Source: APXvYqzj9QSx3MtgHt1qHIKICzNCPI0f7DNQySSHpINOygIRFz1OPV0EPaWQ+yDXuf1zgDx8qUKSew==
X-Received: by 2002:a17:902:f217:: with SMTP id
 gn23mr9333792plb.21.1567078508102; 
 Thu, 29 Aug 2019 04:35:08 -0700 (PDT)
Received: from localhost ([122.167.132.221])
 by smtp.gmail.com with ESMTPSA id u18sm2794235pfl.29.2019.08.29.04.35.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 29 Aug 2019 04:35:07 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org, Julien Thierry <Julien.Thierry@arm.com>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH ARM64 v4.4 V3 06/44] arm64: entry: Ensure branch through
 syscall table is bounded under speculation
Date: Thu, 29 Aug 2019 17:03:51 +0530
Message-Id: <093a9777605bdd2ab2c33948a4e7a3fbb275de4d.1567077734.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1567077734.git.viresh.kumar@linaro.org>
References: <cover.1567077734.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_043509_897993_3A74DD8E 
X-CRM114-Status: GOOD (  10.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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
Cc: Marc Zyngier <marc.zyngier@arm.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Will Deacon <will.deacon@arm.com>, mark.brown@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
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
