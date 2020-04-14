Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DBBE1A8510
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 18:33:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OwxT8DLawW8RvhZ82VUjpz/U0+SC/U3jx/HeJ3gu/44=; b=gKm822a+PrA58/
	9IsE/68nC2Juxz+9v8GjOei21J2lwxqFJmvEmuUg8y2yob9jNaz4Ei7gRqFvenVXO2qEZd3L85HNt
	+ukpJCwMTlgEkwx1B5gyF9etCbtn3UbTmxbY6Mw5KNHCrzr/Dmrx3RVkgzcUn3n4ZOrhjwk4X0Qlv
	gtvoVWQGyqQG5dv6QSCGFRFABMktdcONPFTs/Jtr2qZ29es05xK/XFX4En7dj1ryHLUL/hP/QIFhD
	/GMGFqa0GpdP+87ETY5DiJTbgCCBjfwd2h8kJIR2O0OeePY6TCMCDjIVLRXZymdLbvR7qZMLvCqeu
	bDc72y4dn9eezc75td6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOOUu-00046q-UQ; Tue, 14 Apr 2020 16:33:16 +0000
Received: from mail-ua1-x94a.google.com ([2607:f8b0:4864:20::94a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOOUo-00046V-37
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 16:33:11 +0000
Received: by mail-ua1-x94a.google.com with SMTP id g14so216030uaq.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 09:33:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=C/WMPxWmNKBqJ/Zz9SNZ/9dLp/Pjl7eWvbmkGXyv5l8=;
 b=gwOWdDcr8K2xj9bCTj7H5OL85GAIl6qKwa9aYWhyWu1Rn5CPfXHvSHlcLupYSb+aNy
 Hhvbi7HVhzDRTVj1FQJhmoVvVW0EJ45dX1P6BDPkSE/+XklQDRWskVCf0zeCRRdQvXog
 iBOjzhbsYUBtOdcFJnwtrxajIPEzSc58MWMoqofCIGjCmQuLE4DKZhCRSNAydisOSAhj
 ILLq36JK5Ke6AD0l/kg/Z6WzFiIqOig6iBOEeLGDDrBw762y0GBLAH+Bb0+ynatGlrkS
 C+e9T2LfS+F5yZTVUFEwAnkfN0fe5gOmUNc7Bcu1aYgve/Lj9EmOsoX83Q5BObCWGYjs
 0M2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=C/WMPxWmNKBqJ/Zz9SNZ/9dLp/Pjl7eWvbmkGXyv5l8=;
 b=O7Z8fmzGmdXJFFVW0iN6nvxDeLFgMCfiPq3K5LjEai+GJWioPHL3p7yfFbOuegwtMM
 yqTLu7wbMxj8djXv1on4gLUYm0FupW1FuTbwVQ8jDTbPbHSdVamIJNduCmm2E74bduX8
 L0sUkJ4T83phzu7QWM0I6ekZKI9QbtQ80q3eUxqkOnWkcb7W9aGm7I9k1ikOyfNoC5Mv
 uJxQz12JHW6LYhzTKrO2IGzPEb233Gd5cw5LaAOwmVChh6xTRCapVfn0XcGkQxJ021/T
 SK+s3tWK0agTmkJRJIe6OYPEsxgsPvcMMD7jYMJ4sYhQnTg856EP7hGjUOwqyLZWHmlz
 zQ8Q==
X-Gm-Message-State: AGi0PubIsinmk+2zlQFU0GB+Vc+DxzBGH9o25lpT2DouWv+VqDLRDjsR
 sTW4YUOnxMIEAuR1z3sHTUeFXzHeyZxyf8Fc/+5fH5f+haF78XerBFdD1ogJv1My4R7xFsLrmy/
 j/s+iaUCW4keRb3DvPf8YZZ/OZVpJrPke+UTjBVDSRZlqVNOgGPtyiXZe+xgBPj5I2DxUmVBhmZ
 +Qg/Eh//I=
X-Google-Smtp-Source: APiQypL2292vcdQOPgM/pbOZPk9A8GWPQ48YdWAzRpisGiQjViIba//xyUIANE+PSCLKQ5rg8OUQVFnSzjm+
X-Received: by 2002:a67:2284:: with SMTP id i126mr890118vsi.223.1586881988191; 
 Tue, 14 Apr 2020 09:33:08 -0700 (PDT)
Date: Tue, 14 Apr 2020 09:32:55 -0700
Message-Id: <20200414163255.66437-1-maskray@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.26.0.110.g2183baf09c-goog
Subject: [PATCH v2] arm64: Delete the space separator in __emit_inst
From: Fangrui Song <maskray@google.com>
To: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_093310_156312_3D5D125B 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:94a listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Fangrui Song <maskray@google.com>,
 Ilie Halip <ilie.halip@gmail.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Nick Desaulniers <ndesaulniers@google.com>, Jian Cai <jiancai@google.com>,
 clang-built-linux@googlegroups.com, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In assembly, many instances of __emit_inst(x) expand to a directive. In
a few places __emit_inst(x) is used as an assembler macro argument. For
example, in arch/arm64/kvm/hyp/entry.S

  ALTERNATIVE(nop, SET_PSTATE_PAN(1), ARM64_HAS_PAN, CONFIG_ARM64_PAN)

expands to the following by the C preprocessor:

  alternative_insn nop, .inst (0xd500401f | ((0) << 16 | (4) << 5) | ((!!1) << 8)), 4, 1

Both comma and space are separators, with an exception that content
inside a pair of parentheses/quotes is not split, so the clang
integrated assembler splits the arguments to:

   nop, .inst, (0xd500401f | ((0) << 16 | (4) << 5) | ((!!1) << 8)), 4, 1

GNU as preprocesses the input with do_scrub_chars(). Its arm64 backend
(along with many other non-x86 backends) sees:

  alternative_insn nop,.inst(0xd500401f|((0)<<16|(4)<<5)|((!!1)<<8)),4,1
  # .inst(...) is parsed as one argument

while its x86 backend sees:

  alternative_insn nop,.inst (0xd500401f|((0)<<16|(4)<<5)|((!!1)<<8)),4,1
  # The extra space before '(' makes the whole .inst (...) parsed as two arguments

The non-x86 backend's behavior is considered unintentional
(https://sourceware.org/bugzilla/show_bug.cgi?id=25750).
So drop the space separator inside `.inst (...)` to make the clang
integrated assembler work.

Suggested-by: Ilie Halip <ilie.halip@gmail.com>
Signed-off-by: Fangrui Song <maskray@google.com>
Reviewed-by: Mark Rutland <mark.rutland@arm.com>
Link: https://github.com/ClangBuiltLinux/linux/issues/939
---
 arch/arm64/include/asm/sysreg.h | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
index ebc622432831..c4ac0ac25a00 100644
--- a/arch/arm64/include/asm/sysreg.h
+++ b/arch/arm64/include/asm/sysreg.h
@@ -49,7 +49,9 @@
 #ifndef CONFIG_BROKEN_GAS_INST
 
 #ifdef __ASSEMBLY__
-#define __emit_inst(x)			.inst (x)
+// The space separator is omitted so that __emit_inst(x) can be parsed as
+// either an assembler directive or an assembler macro argument.
+#define __emit_inst(x)			.inst(x)
 #else
 #define __emit_inst(x)			".inst " __stringify((x)) "\n\t"
 #endif
-- 
2.26.0.110.g2183baf09c-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
