Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 826CF180B17
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 23:01:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ngx8XSrYzKTYmhcEXSXbx1YO4wtWgVO6yGoWgr/FVxw=; b=bo0g57avigAkes
	fxzPQrat8PKxt/ji+5LewsCQZFTzlNnEuPH3LTGy4T2G9mWIphszPt1lwvMVpD7kx0wuvbYqVHlfd
	q8bWraqFquBsErd9PGxflZFIdk+7tn6wWibBmoDI2TGknQeWqxdKU8SSUbUeQeSVZffmQ7sFWjok0
	c8onLjj+TUk07nNIExOKh7kSjnZ/WQiwbdNf+t1qOiVdMEN5RvP+w3SlFYhggbYzr8t72AsfTqN11
	I8OlEwhy+uDUe9+F9JuHufONw4vXH/U+0sRyH+Nn49RkX3Yx/rO0c6a3lOunumf6Tb1UceEIq3/tY
	EH1ihClxGkEsE5GDTJig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBmwV-0002rZ-MW; Tue, 10 Mar 2020 22:01:39 +0000
Received: from mail.kmu-office.ch ([2a02:418:6a02::a2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBmwN-0002p6-Kj
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 22:01:33 +0000
Received: from zyt.lan (unknown [IPv6:2a02:169:3df5::564])
 by mail.kmu-office.ch (Postfix) with ESMTPSA id 61C2B5C4EE6;
 Tue, 10 Mar 2020 23:01:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=agner.ch; s=dkim;
 t=1583877685;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=5TUuvWHgUuT56UyYlRgW+JG1v9EYLSipfpHlTzVFp2A=;
 b=SBso5ReUl5tUZ4ziegEuPxNqwLvz4wXs96ihUK/oRDH/zT0wzoiZ0eTj6B4nZ3RI1EnyGm
 StOJ3TvjzTjP4a/Rtffy7sNvpMB1eV6KTZcbGV7GabXRC+YnLWPNSNKZf4lIzaTUa/T4oS
 dFkzl/uJ1K1lj6J2kIhUbOtmSeahzxU=
From: Stefan Agner <stefan@agner.ch>
To: linux@armlinux.org.uk
Subject: [PATCH 2/3] ARM: use VFP assembler mnemonics in register load/store
 macros
Date: Tue, 10 Mar 2020 23:01:20 +0100
Message-Id: <5a0ae07ce1eae117dcda1f7b2f0b4d13eb90f1d6.1583360296.git.stefan@agner.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1583360296.git.stefan@agner.ch>
References: <cover.1583360296.git.stefan@agner.ch>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_150132_255845_02028FD7 
X-CRM114-Status: GOOD (  10.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: clang-built-linux@googlegroups.com, arnd@arndb.de,
 ard.biesheuvel@linaro.org, ndesaulniers@google.com,
 linux-kernel@vger.kernel.org, Stefan Agner <stefan@agner.ch>,
 jiancai@google.com, yamada.masahiro@socionext.com, manojgupta@google.com,
 robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Clang's integrated assembler does not allow to access the VFP registers
through the coprocessor load/store instructions:
<instantiation>:4:6: error: invalid operand for instruction
 LDC p11, cr0, [r10],#32*4 @ FLDMIAD r10!, {d0-d15}
     ^

Replace the coprocessor load/store instructions with explicit assembler
mnemonics to accessing the floating point coprocessor registers. Use
assembler directives to select the appropriate FPU version.

This allows to build these macros with GNU assembler as well as with
Clang's built-in assembler.

Signed-off-by: Stefan Agner <stefan@agner.ch>
---
 arch/arm/include/asm/vfpmacros.h | 19 +++++++++++--------
 1 file changed, 11 insertions(+), 8 deletions(-)

diff --git a/arch/arm/include/asm/vfpmacros.h b/arch/arm/include/asm/vfpmacros.h
index 628c336e8e3b..947ee5395e1f 100644
--- a/arch/arm/include/asm/vfpmacros.h
+++ b/arch/arm/include/asm/vfpmacros.h
@@ -19,23 +19,25 @@
 
 	@ read all the working registers back into the VFP
 	.macro	VFPFLDMIA, base, tmp
+	.fpu	vfpv2
 #if __LINUX_ARM_ARCH__ < 6
-	LDC	p11, cr0, [\base],#33*4		    @ FLDMIAX \base!, {d0-d15}
+	fldmiax	\base!, {d0-d15}
 #else
-	LDC	p11, cr0, [\base],#32*4		    @ FLDMIAD \base!, {d0-d15}
+	vldmia	\base!, {d0-d15}
 #endif
 #ifdef CONFIG_VFPv3
+	.fpu	vfpv3
 #if __LINUX_ARM_ARCH__ <= 6
 	ldr	\tmp, =elf_hwcap		    @ may not have MVFR regs
 	ldr	\tmp, [\tmp, #0]
 	tst	\tmp, #HWCAP_VFPD32
-	ldclne	p11, cr0, [\base],#32*4		    @ FLDMIAD \base!, {d16-d31}
+	vldmiane \base!, {d16-d31}
 	addeq	\base, \base, #32*4		    @ step over unused register space
 #else
 	VFPFMRX	\tmp, MVFR0			    @ Media and VFP Feature Register 0
 	and	\tmp, \tmp, #MVFR0_A_SIMD_MASK	    @ A_SIMD field
 	cmp	\tmp, #2			    @ 32 x 64bit registers?
-	ldcleq	p11, cr0, [\base],#32*4		    @ FLDMIAD \base!, {d16-d31}
+	vldmiaeq \base!, {d16-d31}
 	addne	\base, \base, #32*4		    @ step over unused register space
 #endif
 #endif
@@ -44,22 +46,23 @@
 	@ write all the working registers out of the VFP
 	.macro	VFPFSTMIA, base, tmp
 #if __LINUX_ARM_ARCH__ < 6
-	STC	p11, cr0, [\base],#33*4		    @ FSTMIAX \base!, {d0-d15}
+	fstmiax	\base!, {d0-d15}
 #else
-	STC	p11, cr0, [\base],#32*4		    @ FSTMIAD \base!, {d0-d15}
+	vstmia	\base!, {d0-d15}
 #endif
 #ifdef CONFIG_VFPv3
+	.fpu	vfpv3
 #if __LINUX_ARM_ARCH__ <= 6
 	ldr	\tmp, =elf_hwcap		    @ may not have MVFR regs
 	ldr	\tmp, [\tmp, #0]
 	tst	\tmp, #HWCAP_VFPD32
-	stclne	p11, cr0, [\base],#32*4		    @ FSTMIAD \base!, {d16-d31}
+	vstmiane \base!, {d16-d31}
 	addeq	\base, \base, #32*4		    @ step over unused register space
 #else
 	VFPFMRX	\tmp, MVFR0			    @ Media and VFP Feature Register 0
 	and	\tmp, \tmp, #MVFR0_A_SIMD_MASK	    @ A_SIMD field
 	cmp	\tmp, #2			    @ 32 x 64bit registers?
-	stcleq	p11, cr0, [\base],#32*4		    @ FSTMIAD \base!, {d16-d31}
+	vstmiaeq \base!, {d16-d31}
 	addne	\base, \base, #32*4		    @ step over unused register space
 #endif
 #endif
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
