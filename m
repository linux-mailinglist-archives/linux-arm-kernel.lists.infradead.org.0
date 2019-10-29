Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93C71E8D7D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 18:00:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cMzT4fbHQmhWoQ2+t6wYA+CQXSyJ2K9yjyOvFkofPpo=; b=UJA18a9RruZzedJQxx3y0fgB8k
	r67lLSL8RlYHT+TlDg8G9z0OGcT7MynXKx1kjgpBEHhP/84RDHAZUX5q64aYJoeX+1de/mjSA1kzr
	O9xWbhs40/PiZILVs/uzQIvA+rUAs7wB5Y8kjuJHV7rSvEcroXUrHU1w7kjjDKziWUejI+BK05NeO
	Bp/+fxPRCPHeJK3cncB+OR39prpon6WeZFN4dWqvO0B230VnC9iQykOU5A1LxtzZxoBwHla6ys2X4
	dTSnq9Ttw0+p4cY/Z1fv6VCXvCUQikyE7r7Nzr6Y+LFUU0yZTmmarK0wp1pcCr7QnR1mom2395K/0
	+qoCh7tQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPUrA-0007mv-Ua; Tue, 29 Oct 2019 17:00:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPUpu-0005aU-Ju
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 16:59:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 228AE55D;
 Tue, 29 Oct 2019 09:59:14 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id A3C513F71F;
 Tue, 29 Oct 2019 09:59:11 -0700 (PDT)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCHv2 5/8] arm64: insn: add encoder for MOV (register)
Date: Tue, 29 Oct 2019 16:58:29 +0000
Message-Id: <20191029165832.33606-6-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20191029165832.33606-1-mark.rutland@arm.com>
References: <20191029165832.33606-1-mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_095914_716771_B1284EC3 
X-CRM114-Status: UNSURE (   9.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, jthierry@redhat.com, linux-parisc@vger.kernel.org,
 peterz@infradead.org, catalin.marinas@arm.com, deller@gmx.de,
 jpoimboe@redhat.com, linux-kernel@vger.kernel.org, rostedt@goodmis.org,
 James.Bottomley@HansenPartnership.com, takahiro.akashi@linaro.org,
 will@kernel.org, mingo@redhat.com, james.morse@arm.com, jeyu@kernel.org,
 amit.kachhap@arm.com, svens@stackframe.org, duwe@suse.de
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
Reviewed-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
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
