Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92AA111B3F0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 16:45:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PWkp9iDDtqGKBJXf09oAdSstvXLLQyb3Wn0kQS2t0g0=; b=DzPmDTyUArHTM4
	Ob5Gmtaecf1oquVfMro2XmIWs4viZ2O/Vc569/fLp1Pyw6Pj9mBbcAwRAT+AiezOkdekcdd5WTzKP
	2Cdf+8eZ8LFHKTVgxQYsyf26/58DcOlxhx+23xyBq4vzRuajiACtyTmUKtlqbdOyBpmC0k3iBV3bj
	OxnCm2BnifgAZnIlLqxxLWl9+uaOAjJU1nYes8RJT9mOcqxCbS/DvACEvCfd40zhJu9i7IIQsG5FC
	Bz2OlXc6FttemTiQCt5Oml7rN7aA89opNdPUKYnBuvkTTC8mrOALEvHmQ6nPqgf+EpTIx77o8FzLH
	hfqsgjlOqWwIPdfBwBVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if4Ax-0007hQ-DO; Wed, 11 Dec 2019 15:45:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if48o-0005yP-Ei
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 15:43:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D0D8CDA7;
 Wed, 11 Dec 2019 07:43:05 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2962D3F52E;
 Wed, 11 Dec 2019 07:43:05 -0800 (PST)
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH v4 07/12] arm64: BTI: Decode BYTPE bits when printing PSTATE
Date: Wed, 11 Dec 2019 15:42:01 +0000
Message-Id: <20191211154206.46260-8-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191211154206.46260-1-broonie@kernel.org>
References: <20191211154206.46260-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_074306_605591_5EC9FD2C 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
 Andrew Jones <drjones@redhat.com>, Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, linux-arch@vger.kernel.org,
 Marc Zyngier <maz@kernel.org>, Eugene Syromiatnikov <esyr@redhat.com>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 "H.J. Lu" <hjl.tools@gmail.com>, Yu-cheng Yu <yu-cheng.yu@intel.com>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Jann Horn <jannh@google.com>, Richard Henderson <richard.henderson@linaro.org>,
 =?UTF-8?q?Kristina=20Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Mark Brown <broonie@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Florian Weimer <fweimer@redhat.com>,
 linux-kernel@vger.kernel.org, Sudakshina Das <sudi.das@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Dave Martin <Dave.Martin@arm.com>

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
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 arch/arm64/kernel/process.c | 17 +++++++++++++++--
 1 file changed, 15 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
index 37c508f409ac..e8eb70cd3fa0 100644
--- a/arch/arm64/kernel/process.c
+++ b/arch/arm64/kernel/process.c
@@ -211,6 +211,15 @@ void machine_restart(char *cmd)
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
@@ -229,7 +238,10 @@ static void print_pstate(struct pt_regs *regs)
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
@@ -240,7 +252,8 @@ static void print_pstate(struct pt_regs *regs)
 			pstate & PSR_I_BIT ? 'I' : 'i',
 			pstate & PSR_F_BIT ? 'F' : 'f',
 			pstate & PSR_PAN_BIT ? '+' : '-',
-			pstate & PSR_UAO_BIT ? '+' : '-');
+			pstate & PSR_UAO_BIT ? '+' : '-',
+			btype_str);
 	}
 }
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
