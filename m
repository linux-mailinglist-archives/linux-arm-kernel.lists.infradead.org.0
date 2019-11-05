Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7D18F07A9
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 22:05:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=DpC21o4Ns/PWuqOrJSw9VJX1uj8wayNSFmUxINEuv7M=; b=bMlQ6ptGpMGQNT7lfNvXMaVwN9
	7H4mXX3hPwePMKcP6wJRRPi9e5/UoGrvYE3HQt44mgMr19yVSSfDbSq3ljaGeS0AOS+XSxH289y6c
	roaGSyVKVx7ezDSu9BKLWYwhWKnTc1+ptp+vTVP/5kxVx4GzAcgFIT++89AB0VeM2MBNCYd1DtP1o
	p9A+TJETeWlZllSATDT7t6V5D1h6xW4NLkI/CBAvMnc1rRb3J9Uugp9fSCoQ1OQW1eVyhOj+4XxyD
	30jBTqXtSw2PlHMAZ1n+/8bKh2eNwFg4KHeEa8Z0yi9OPPNYVOH2rEnpqUbb+1EIu/oukjROz07ND
	SNHdL7ZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS616-0005Fk-Gi; Tue, 05 Nov 2019 21:05:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS5vq-0006Jh-Ir
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 21:00:08 +0000
Received: from e123331-lin.home (lfbn-mar-1-643-104.w90-118.abo.wanadoo.fr
 [90.118.215.104])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 634C521D7F;
 Tue,  5 Nov 2019 21:00:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572987604;
 bh=fyrOJyisr0H3F7a7ubwb1jm3XxwyE+lQzIcDUhxXdQI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=I4YSSs3nRlNh0NQ5M4hhh/4J1I1XhSO48b90jpdBBUxNSgkzIIz09CqsxfNGTAPBM
 Mkpv7egmvABaxapFsUm8xT5lsK1ksAjxGCIVN6Adui/m3CnD1D6JvsO5z8qkFWDwGo
 vz0Q8g2E18AfvmHNXceNcuth41hEnx5lLxacW8n4=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH for-stable-v4.4 23/53] ARM: bugs: add support for
 per-processor bug checking
Date: Tue,  5 Nov 2019 21:58:16 +0100
Message-Id: <20191105205846.1394-24-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191105205846.1394-1-ardb@kernel.org>
References: <20191105205846.1394-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_130006_744370_09111235 
X-CRM114-Status: GOOD (  13.99  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Tony Lindgren <tony@atomide.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 "David A . Long" <dave.long@linaro.org>, Marc Zyngier <maz@kernel.org>,
 Will Deacon <will@kernel.org>, Ard Biesheuvel <ardb@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Russell King <rmk+kernel@armlinux.org.uk>

Commit 9d3a04925deeabb97c8e26d940b501a2873e8af3 upstream.

Add support for per-processor bug checking - each processor function
descriptor gains a function pointer for this check, which must not be
an __init function.  If non-NULL, this will be called whenever a CPU
enters the kernel via which ever path (boot CPU, secondary CPU startup,
CPU resuming, etc.)

This allows processor specific bug checks to validate that workaround
bits are properly enabled by firmware via all entry paths to the kernel.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
Boot-tested-by: Tony Lindgren <tony@atomide.com>
Reviewed-by: Tony Lindgren <tony@atomide.com>
Acked-by: Marc Zyngier <marc.zyngier@arm.com>
Signed-off-by: David A. Long <dave.long@linaro.org>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/arm/include/asm/proc-fns.h | 4 ++++
 arch/arm/kernel/bugs.c          | 4 ++++
 arch/arm/mm/proc-macros.S       | 3 ++-
 3 files changed, 10 insertions(+), 1 deletion(-)

diff --git a/arch/arm/include/asm/proc-fns.h b/arch/arm/include/asm/proc-fns.h
index 8877ad5ffe10..f379f5f849a9 100644
--- a/arch/arm/include/asm/proc-fns.h
+++ b/arch/arm/include/asm/proc-fns.h
@@ -36,6 +36,10 @@ extern struct processor {
 	 * Set up any processor specifics
 	 */
 	void (*_proc_init)(void);
+	/*
+	 * Check for processor bugs
+	 */
+	void (*check_bugs)(void);
 	/*
 	 * Disable any processor specifics
 	 */
diff --git a/arch/arm/kernel/bugs.c b/arch/arm/kernel/bugs.c
index 16e7ba2a9cc4..7be511310191 100644
--- a/arch/arm/kernel/bugs.c
+++ b/arch/arm/kernel/bugs.c
@@ -5,6 +5,10 @@
 
 void check_other_bugs(void)
 {
+#ifdef MULTI_CPU
+	if (processor.check_bugs)
+		processor.check_bugs();
+#endif
 }
 
 void __init check_bugs(void)
diff --git a/arch/arm/mm/proc-macros.S b/arch/arm/mm/proc-macros.S
index c671f345266a..212147c78f4b 100644
--- a/arch/arm/mm/proc-macros.S
+++ b/arch/arm/mm/proc-macros.S
@@ -258,13 +258,14 @@
 	mcr	p15, 0, ip, c7, c10, 4		@ data write barrier
 	.endm
 
-.macro define_processor_functions name:req, dabort:req, pabort:req, nommu=0, suspend=0
+.macro define_processor_functions name:req, dabort:req, pabort:req, nommu=0, suspend=0, bugs=0
 	.type	\name\()_processor_functions, #object
 	.align 2
 ENTRY(\name\()_processor_functions)
 	.word	\dabort
 	.word	\pabort
 	.word	cpu_\name\()_proc_init
+	.word	\bugs
 	.word	cpu_\name\()_proc_fin
 	.word	cpu_\name\()_reset
 	.word	cpu_\name\()_do_idle
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
