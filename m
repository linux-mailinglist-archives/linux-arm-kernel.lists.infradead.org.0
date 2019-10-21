Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04F07DF331
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 18:36:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qJ20H5D+Q9wbLcOhtmYJLCzJSrZ5HmXTjtB/pcJG30U=; b=ZeisMg6NGfUFxUCDQZJqCmilTO
	vuO+qARvBE6GIygI9MnM45J99Lz1BIw9InICvkWyzoSRLfbWUdqpyrFR7OHlDYPfWYC1Q7Y1P3Gp3
	iI8auMtb/AAyw6kGIvITmQ8N99hfHo7dwyGiKy9e1sK5xO4DeGl056VTMVnVaiItisubOBQ/VDrvK
	UkqvqSRm2MGZmOPtpTG4R5CVToUamMzjFw65rHXi6TzeDI/3sUm125dERyxws0hPEG2KBZ387WvWk
	25zMGpC34bzZcoinwT5Tmen8IxLP6aS/YM+9q1ks9wdpCd/lNI4yZOD1vLNbMH2nHqKRcVwsUuNTE
	hl3/dJcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMafA-0004vw-HM; Mon, 21 Oct 2019 16:36:08 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMae0-0002j9-HE
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 16:34:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 67D8B15A1;
 Mon, 21 Oct 2019 09:34:50 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 2FA363F71F;
 Mon, 21 Oct 2019 09:34:48 -0700 (PDT)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 5/8] arm64: insn: add encoder for MOV (register)
Date: Mon, 21 Oct 2019 17:34:23 +0100
Message-Id: <20191021163426.9408-6-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20191021163426.9408-1-mark.rutland@arm.com>
References: <20191021163426.9408-1-mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_093456_637855_2BB8AE9E 
X-CRM114-Status: GOOD (  10.10  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: mark.rutland@arm.com, jthierry@redhat.com, will@kernel.org,
 ard.biesheuvel@linaro.org, peterz@infradead.org, catalin.marinas@arm.com,
 deller@gmx.de, jpoimboe@redhat.com, rostedt@goodmis.org,
 takahiro.akashi@linaro.org, mingo@redhat.com, james.morse@arm.com,
 jeyu@kernel.org, amit.kachhap@arm.com, svens@stackframe.org, duwe@suse.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For FTRACE_WITH_REGS, we're going to want to generate a MOV (register)
instruction as part of the callsite intialization. As MOV (register) is
an alias for ORR (shifted register), we can generate this with
aarch64_insn_gen_logical_shifted_reg(), but it's somewhat verbose and
difficult to read in-context.

Add a aarch64_insn_gen_move_reg() wrapper for this case so that we can
write callers in a more straightforward way.

Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
---
 arch/arm64/include/asm/insn.h |  3 +++
 arch/arm64/kernel/insn.c      | 13 +++++++++++++
 2 files changed, 16 insertions(+)

diff --git a/arch/arm64/include/asm/insn.h b/arch/arm64/include/asm/insn.h
index 39e7780bedd6..bb313dde58a4 100644
--- a/arch/arm64/include/asm/insn.h
+++ b/arch/arm64/include/asm/insn.h
@@ -440,6 +440,9 @@ u32 aarch64_insn_gen_logical_shifted_reg(enum aarch64_insn_register dst,
 					 int shift,
 					 enum aarch64_insn_variant variant,
 					 enum aarch64_insn_logic_type type);
+u32 aarch64_insn_gen_move_reg(enum aarch64_insn_register dst,
+			      enum aarch64_insn_register src,
+			      enum aarch64_insn_variant variant);
 u32 aarch64_insn_gen_logical_immediate(enum aarch64_insn_logic_type type,
 				       enum aarch64_insn_variant variant,
 				       enum aarch64_insn_register Rn,
diff --git a/arch/arm64/kernel/insn.c b/arch/arm64/kernel/insn.c
index d801a7094076..513b29c3e735 100644
--- a/arch/arm64/kernel/insn.c
+++ b/arch/arm64/kernel/insn.c
@@ -1268,6 +1268,19 @@ u32 aarch64_insn_gen_logical_shifted_reg(enum aarch64_insn_register dst,
 	return aarch64_insn_encode_immediate(AARCH64_INSN_IMM_6, insn, shift);
 }
 
+/*
+ * MOV (register) is architecturally an alias of ORR (shifted register) where
+ * MOV <*d>, <*m> is equivalent to ORR <*d>, <*ZR>, <*m>
+ */
+u32 aarch64_insn_gen_move_reg(enum aarch64_insn_register dst,
+			      enum aarch64_insn_register src,
+			      enum aarch64_insn_variant variant)
+{
+	return aarch64_insn_gen_logical_shifted_reg(dst, AARCH64_INSN_REG_ZR,
+						    src, 0, variant,
+						    AARCH64_INSN_LOGIC_ORR);
+}
+
 u32 aarch64_insn_gen_adr(unsigned long pc, unsigned long addr,
 			 enum aarch64_insn_register reg,
 			 enum aarch64_insn_adr_type type)
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
