Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87489D30C9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 20:47:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=MhTRz0viJYR5VqS414Eun6QEaW/0Bd4ZXsSwQFYcTn4=; b=i87RyhIThxA16qoLOGLAZPKZQX
	MeTsnUmX9c07rPI65Hcxu/VjUzff/wI8JUsybDNXiSiC/GDuARBojp1eoV7R7iVaw9e4bnk8Lq862
	j7HClx+EO4eQofLt/rAZV5pU4qIQOt1h/14gqaqH9oKzFn93vAE8gyXxh9TMM3D5j8uGrYsxUkNVc
	bKmyuATs32rBoyaRckWw5ci7dvzU0oSVrjdsercWWNbuxTYtDdEtjfv5pCKxn2AMQ5hW2RxxEHfOX
	pIHZD3dgyLyDnxzC05waqY5H7AYgaf65usvhS7cJA15suQeyTWSAGIjxDK7+XpkjJcTT/2wv+NF/l
	skPqlA4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIdTA-0007YE-3Q; Thu, 10 Oct 2019 18:47:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIdRh-0006JK-Ip
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 18:45:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2CDD71000;
 Thu, 10 Oct 2019 11:45:53 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 7D5CB3F703;
 Thu, 10 Oct 2019 11:45:50 -0700 (PDT)
From: Dave Martin <Dave.Martin@arm.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 08/12] arm64: BTI: Decode BYTPE bits when printing PSTATE
Date: Thu, 10 Oct 2019 19:44:36 +0100
Message-Id: <1570733080-21015-9-git-send-email-Dave.Martin@arm.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1570733080-21015-1-git-send-email-Dave.Martin@arm.com>
References: <1570733080-21015-1-git-send-email-Dave.Martin@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_114553_765530_8A5AC955 
X-CRM114-Status: GOOD (  12.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Paul Elliott <paul.elliott@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Yu-cheng Yu <yu-cheng.yu@intel.com>, Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, linux-arch@vger.kernel.org,
 Eugene Syromiatnikov <esyr@redhat.com>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 "H.J. Lu" <hjl.tools@gmail.com>, Andrew Jones <drjones@redhat.com>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Jann Horn <jannh@google.com>, Richard Henderson <richard.henderson@linaro.org>,
 =?UTF-8?q?Kristina=20Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Mark Brown <broonie@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Florian Weimer <fweimer@redhat.com>,
 Sudakshina Das <sudi.das@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The current code to print PSTATE symbolically when generating
backtraces etc., does not include the BYTPE field used by Branch
Target Identification.

So, decode BYTPE and print it too.

In the interests of human-readability, print the classes of BTI
matched.  The symbolic notation, BYTPE (PSTATE[11:10]) and
permitted classes of subsequent instruction are:

    -- (BTYPE=0b00): any insn
    jc (BTYPE=0b01): BTI jc, BTI j, BTI c, PACIxSP
    -c (BYTPE=0b10): BTI jc, BTI c, PACIxSP
    j- (BTYPE=0b11): BTI jc, BTI j

Signed-off-by: Dave Martin <Dave.Martin@arm.com>

---

Changes since v1:

 * Add convenience definitions for all the BTYPE codes, even if we
   don't directly use them all yet.

 * For consistency, align PSR_BTYPE_foo names with the above print
   format:

      PSR_BTYPE_NONE -> -- (BTYPE=0b00)
      PSR_BTYPE_JC -> jc (BTYPE=0b01)
      etc.
---
 arch/arm64/include/asm/ptrace.h |  7 ++++++-
 arch/arm64/kernel/process.c     | 17 +++++++++++++++--
 arch/arm64/kernel/signal.c      |  2 +-
 3 files changed, 22 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/include/asm/ptrace.h b/arch/arm64/include/asm/ptrace.h
index 7d4cd59..212bba1 100644
--- a/arch/arm64/include/asm/ptrace.h
+++ b/arch/arm64/include/asm/ptrace.h
@@ -38,7 +38,12 @@
 #define PSR_BTYPE_SHIFT		10
 
 #define PSR_IL_BIT		(1 << 20)
-#define PSR_BTYPE_CALL		(2 << PSR_BTYPE_SHIFT)
+
+/* Convenience names for the values of PSTATE.BTYPE */
+#define PSR_BTYPE_NONE		(0b00 << PSR_BTYPE_SHIFT)
+#define PSR_BTYPE_JC		(0b01 << PSR_BTYPE_SHIFT)
+#define PSR_BTYPE_C		(0b10 << PSR_BTYPE_SHIFT)
+#define PSR_BTYPE_J		(0b11 << PSR_BTYPE_SHIFT)
 
 /* AArch32-specific ptrace requests */
 #define COMPAT_PTRACE_GETREGS		12
diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
index 4c78937..a2b555a 100644
--- a/arch/arm64/kernel/process.c
+++ b/arch/arm64/kernel/process.c
@@ -209,6 +209,15 @@ void machine_restart(char *cmd)
 	while (1);
 }
 
+#define bstr(suffix, str) [PSR_BTYPE_ ## suffix >> PSR_BTYPE_SHIFT] = str
+static const char *const btypes[] = {
+	bstr(NONE, "--"),
+	bstr(  JC, "jc"),
+	bstr(   C, "-c"),
+	bstr(  J , "j-")
+};
+#undef bstr
+
 static void print_pstate(struct pt_regs *regs)
 {
 	u64 pstate = regs->pstate;
@@ -227,7 +236,10 @@ static void print_pstate(struct pt_regs *regs)
 			pstate & PSR_AA32_I_BIT ? 'I' : 'i',
 			pstate & PSR_AA32_F_BIT ? 'F' : 'f');
 	} else {
-		printk("pstate: %08llx (%c%c%c%c %c%c%c%c %cPAN %cUAO)\n",
+		const char *btype_str = btypes[(pstate & PSR_BTYPE_MASK) >>
+					       PSR_BTYPE_SHIFT];
+
+		printk("pstate: %08llx (%c%c%c%c %c%c%c%c %cPAN %cUAO BTYPE=%s)\n",
 			pstate,
 			pstate & PSR_N_BIT ? 'N' : 'n',
 			pstate & PSR_Z_BIT ? 'Z' : 'z',
@@ -238,7 +250,8 @@ static void print_pstate(struct pt_regs *regs)
 			pstate & PSR_I_BIT ? 'I' : 'i',
 			pstate & PSR_F_BIT ? 'F' : 'f',
 			pstate & PSR_PAN_BIT ? '+' : '-',
-			pstate & PSR_UAO_BIT ? '+' : '-');
+			pstate & PSR_UAO_BIT ? '+' : '-',
+			btype_str);
 	}
 }
 
diff --git a/arch/arm64/kernel/signal.c b/arch/arm64/kernel/signal.c
index 4a3bd32..452ac5b 100644
--- a/arch/arm64/kernel/signal.c
+++ b/arch/arm64/kernel/signal.c
@@ -732,7 +732,7 @@ static void setup_return(struct pt_regs *regs, struct k_sigaction *ka,
 
 	if (system_supports_bti()) {
 		regs->pstate &= ~PSR_BTYPE_MASK;
-		regs->pstate |= PSR_BTYPE_CALL;
+		regs->pstate |= PSR_BTYPE_C;
 	}
 
 	if (ka->sa.sa_flags & SA_RESTORER)
-- 
2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
