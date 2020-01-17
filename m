Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7965314147A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 23:53:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UySSySXVip8Bf6cVawA1+YwJeIx8dClwWQBjvW1HILY=; b=j1mGAVpTJqIxyrjc90RTZmq/HH
	Qvj0tlhNLXqTK7lrlrogF1Mt6mNEKjz/bP9Xa2W0sYZ1tNFQMz5MUpBlNMmWQM4CPoRQX+3eLPlW9
	0O2pCcwG1mxb2PzCCQTk+qbfcB4nzyE8EvsFLMxKWJnbv0BGn3OJPknHfin76rsEyL2FDaxINUK92
	lJSEnFaFMVxxjHkDUF4WeFz6NyuffScvWmca9XklLC7ZvCADOcsZOUXu9V+RGOWD2MCqfShl751cL
	9fNjoiNRTdZuzcnZ6MtoO0kGDTCMtB0BGDqsRfwJ8vGzn+DQMlgNX6PUsj2Ys3blg81vk1QJ71DgI
	A0bJE+pA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isaTV-0008GK-9X; Fri, 17 Jan 2020 22:52:21 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isaSy-0007xV-51
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 22:51:50 +0000
Received: by mail-wr1-x444.google.com with SMTP id z7so24148609wrl.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Jan 2020 14:51:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=DBsPSSqYKmu847AC4mw5h2lhLIA5doaDQKnFj+vKRMQ=;
 b=e3FGV2jBEclU6HtGO0zCnUgNZeNr0qOEn9L9Orb5v702oLz/Q/4LNhkZ+YMU3QUq10
 V/vwwbD5DQi3W56ObHNhzKATtHciyomjuqGXjFjVF8YEY9man6rX4lAaW9LFTRQr5dlS
 YCjXHc7OQBJAWf1tdNba9iVog/jZlOPPbXKEbV9cMFMKi8sktHXRTXbimeJqC/BlbaQb
 9N8HLtfMBeroIsvNSpi9SZT3fp/h4jR6RQYJZOm3gXgzGDSJW8XDgqEn/Hx5Brnar41L
 B7TVBpprksdZ8j+WBnMgGUNG28DnB+ueVCgMPV2gh9zW0/q2/rDp4tha+V59w1mlh1C1
 qXfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=DBsPSSqYKmu847AC4mw5h2lhLIA5doaDQKnFj+vKRMQ=;
 b=ZO3soLlujMx3nXgAGIII3Tyz6UCbcDQCbDT/uH8+lNJacNDZBnYqc5g1Q37j/dUhN0
 /BpNgOe2d7oSaJMlL4F37GPDyL6u/UUcCdqQVTmTM9kbEbB7C2Bb88FlDVVcrxkfhFUI
 PLROS+M8rG8u5lJdT/RjCO7bpf1JRY5i+sGiY46jZRVU7KkfKYxSXVapS+onRhjc0OmA
 yCIYMqCerLgCCWLCjRUHBM/rz9rmnIjGf6dEAZAdgrkYpCAqdf5++Xvff4lWqXEDtvvR
 Q6Tswg44I8L9xSk1IHHTmjDlBvg5h5SbpdYusaafN4dDmZZaYwORI8PwP36yfMIhbipq
 kzfw==
X-Gm-Message-State: APjAAAWIzBXOEBhgXy7k+A870Z1HYoaurvxtI9hPVTS2dDWMATnJEAB+
 zabkXTV5vCKB0xNLGB7OosiDkDfg
X-Google-Smtp-Source: APXvYqzxcuFWQTeilgYG6LhmXyFhj8YGLBNvFtZPeFGVWheTsgi/86apqWThW7VhO0UEoHPmQ+2snA==
X-Received: by 2002:adf:ea0f:: with SMTP id q15mr5554706wrm.324.1579301506172; 
 Fri, 17 Jan 2020 14:51:46 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id l3sm32829387wrt.29.2020.01.17.14.51.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Jan 2020 14:51:45 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v7 2/7] ARM: Add TTBR operator for kasan_init
Date: Fri, 17 Jan 2020 14:48:34 -0800
Message-Id: <20200117224839.23531-3-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200117224839.23531-1-f.fainelli@gmail.com>
References: <20200117224839.23531-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_145148_359825_F948C391 
X-CRM114-Status: GOOD (  13.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, alexandre.belloni@bootlin.com, mhocko@suse.com,
 julien.thierry@arm.com, catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 dhowells@redhat.com, yamada.masahiro@socionext.com, ryabinin.a.a@gmail.com,
 glider@google.com, kvmarm@lists.cs.columbia.edu,
 Florian Fainelli <f.fainelli@gmail.com>, corbet@lwn.net,
 Abbott Liu <liuwenliang@huawei.com>, daniel.lezcano@linaro.org,
 linux@armlinux.org.uk, kasan-dev@googlegroups.com,
 bcm-kernel-feedback-list@broadcom.com,
 Andrey Ryabinin <aryabinin@virtuozzo.com>, drjones@redhat.com,
 vladimir.murzin@arm.com, keescook@chromium.org, arnd@arndb.de,
 marc.zyngier@arm.com, andre.przywara@arm.com, philip@cog.systems,
 jinb.park7@gmail.com, tglx@linutronix.de, dvyukov@google.com, nico@fluxnic.net,
 gregkh@linuxfoundation.org, ard.biesheuvel@linaro.org,
 linux-doc@vger.kernel.org, christoffer.dall@arm.com, geert@linux-m68k.org,
 rob@landley.net, pombredanne@nexb.com, akpm@linux-foundation.org,
 thgarnie@google.com, kirill.shutemov@linux.intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Abbott Liu <liuwenliang@huawei.com>

The purpose of this patch is to provide set_ttbr0/get_ttbr0 to
kasan_init function. This makes use of the CP15 definitions added in the
previous patch.

Cc: Andrey Ryabinin <aryabinin@virtuozzo.com>
Reported-by: Marc Zyngier <marc.zyngier@arm.com>
Tested-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Abbott Liu <liuwenliang@huawei.com>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 arch/arm/include/asm/cp15.h | 50 +++++++++++++++++++++++++++++++++++++
 arch/arm/kvm/hyp/cp15-sr.c  | 12 ++++-----
 arch/arm/kvm/hyp/switch.c   |  6 ++---
 3 files changed, 59 insertions(+), 9 deletions(-)

diff --git a/arch/arm/include/asm/cp15.h b/arch/arm/include/asm/cp15.h
index 89b6663f2863..0bd8287b39fa 100644
--- a/arch/arm/include/asm/cp15.h
+++ b/arch/arm/include/asm/cp15.h
@@ -42,6 +42,8 @@
 
 #ifndef __ASSEMBLY__
 
+#include <linux/stringify.h>
+
 #if __LINUX_ARM_ARCH__ >= 4
 #define vectors_high()	(get_cr() & CR_V)
 #else
@@ -129,6 +131,54 @@
 
 extern unsigned long cr_alignment;	/* defined in entry-armv.S */
 
+static inline void set_par(u64 val)
+{
+	if (IS_ENABLED(CONFIG_ARM_LPAE))
+		write_sysreg(val, PAR_64);
+	else
+		write_sysreg(val, PAR_32);
+}
+
+static inline u64 get_par(void)
+{
+	if (IS_ENABLED(CONFIG_ARM_LPAE))
+		return read_sysreg(PAR_64);
+	else
+		return read_sysreg(PAR_32);
+}
+
+static inline void set_ttbr0(u64 val)
+{
+	if (IS_ENABLED(CONFIG_ARM_LPAE))
+		write_sysreg(val, TTBR0_64);
+	else
+		write_sysreg(val, TTBR0_32);
+}
+
+static inline u64 get_ttbr0(void)
+{
+	if (IS_ENABLED(CONFIG_ARM_LPAE))
+		return read_sysreg(TTBR0_64);
+	else
+		return read_sysreg(TTBR0_32);
+}
+
+static inline void set_ttbr1(u64 val)
+{
+	if (IS_ENABLED(CONFIG_ARM_LPAE))
+		write_sysreg(val, TTBR1_64);
+	else
+		write_sysreg(val, TTBR1_32);
+}
+
+static inline u64 get_ttbr1(void)
+{
+	if (IS_ENABLED(CONFIG_ARM_LPAE))
+		return read_sysreg(TTBR1_64);
+	else
+		return read_sysreg(TTBR1_32);
+}
+
 static inline unsigned long get_cr(void)
 {
 	unsigned long val;
diff --git a/arch/arm/kvm/hyp/cp15-sr.c b/arch/arm/kvm/hyp/cp15-sr.c
index e6923306f698..b2b9bb0a08b8 100644
--- a/arch/arm/kvm/hyp/cp15-sr.c
+++ b/arch/arm/kvm/hyp/cp15-sr.c
@@ -19,8 +19,8 @@ void __hyp_text __sysreg_save_state(struct kvm_cpu_context *ctxt)
 	ctxt->cp15[c0_CSSELR]		= read_sysreg(CSSELR);
 	ctxt->cp15[c1_SCTLR]		= read_sysreg(SCTLR);
 	ctxt->cp15[c1_CPACR]		= read_sysreg(CPACR);
-	*cp15_64(ctxt, c2_TTBR0)	= read_sysreg(TTBR0);
-	*cp15_64(ctxt, c2_TTBR1)	= read_sysreg(TTBR1);
+	*cp15_64(ctxt, c2_TTBR0)	= read_sysreg(TTBR0_64);
+	*cp15_64(ctxt, c2_TTBR1)	= read_sysreg(TTBR1_64);
 	ctxt->cp15[c2_TTBCR]		= read_sysreg(TTBCR);
 	ctxt->cp15[c3_DACR]		= read_sysreg(DACR);
 	ctxt->cp15[c5_DFSR]		= read_sysreg(DFSR);
@@ -29,7 +29,7 @@ void __hyp_text __sysreg_save_state(struct kvm_cpu_context *ctxt)
 	ctxt->cp15[c5_AIFSR]		= read_sysreg(AIFSR);
 	ctxt->cp15[c6_DFAR]		= read_sysreg(DFAR);
 	ctxt->cp15[c6_IFAR]		= read_sysreg(IFAR);
-	*cp15_64(ctxt, c7_PAR)		= read_sysreg(PAR);
+	*cp15_64(ctxt, c7_PAR)		= read_sysreg(PAR_64);
 	ctxt->cp15[c10_PRRR]		= read_sysreg(PRRR);
 	ctxt->cp15[c10_NMRR]		= read_sysreg(NMRR);
 	ctxt->cp15[c10_AMAIR0]		= read_sysreg(AMAIR0);
@@ -48,8 +48,8 @@ void __hyp_text __sysreg_restore_state(struct kvm_cpu_context *ctxt)
 	write_sysreg(ctxt->cp15[c0_CSSELR],	CSSELR);
 	write_sysreg(ctxt->cp15[c1_SCTLR],	SCTLR);
 	write_sysreg(ctxt->cp15[c1_CPACR],	CPACR);
-	write_sysreg(*cp15_64(ctxt, c2_TTBR0),	TTBR0);
-	write_sysreg(*cp15_64(ctxt, c2_TTBR1),	TTBR1);
+	write_sysreg(*cp15_64(ctxt, c2_TTBR0),	TTBR0_64);
+	write_sysreg(*cp15_64(ctxt, c2_TTBR1),	TTBR1_64);
 	write_sysreg(ctxt->cp15[c2_TTBCR],	TTBCR);
 	write_sysreg(ctxt->cp15[c3_DACR],	DACR);
 	write_sysreg(ctxt->cp15[c5_DFSR],	DFSR);
@@ -58,7 +58,7 @@ void __hyp_text __sysreg_restore_state(struct kvm_cpu_context *ctxt)
 	write_sysreg(ctxt->cp15[c5_AIFSR],	AIFSR);
 	write_sysreg(ctxt->cp15[c6_DFAR],	DFAR);
 	write_sysreg(ctxt->cp15[c6_IFAR],	IFAR);
-	write_sysreg(*cp15_64(ctxt, c7_PAR),	PAR);
+	write_sysreg(*cp15_64(ctxt, c7_PAR),	PAR_64);
 	write_sysreg(ctxt->cp15[c10_PRRR],	PRRR);
 	write_sysreg(ctxt->cp15[c10_NMRR],	NMRR);
 	write_sysreg(ctxt->cp15[c10_AMAIR0],	AMAIR0);
diff --git a/arch/arm/kvm/hyp/switch.c b/arch/arm/kvm/hyp/switch.c
index 1efeef3fd0ee..581277ef44d3 100644
--- a/arch/arm/kvm/hyp/switch.c
+++ b/arch/arm/kvm/hyp/switch.c
@@ -123,12 +123,12 @@ static bool __hyp_text __populate_fault_info(struct kvm_vcpu *vcpu)
 	if (!(hsr & HSR_DABT_S1PTW) && (hsr & HSR_FSC_TYPE) == FSC_PERM) {
 		u64 par, tmp;
 
-		par = read_sysreg(PAR);
+		par = read_sysreg(PAR_64);
 		write_sysreg(far, ATS1CPR);
 		isb();
 
-		tmp = read_sysreg(PAR);
-		write_sysreg(par, PAR);
+		tmp = read_sysreg(PAR_64);
+		write_sysreg(par, PAR_64);
 
 		if (unlikely(tmp & 1))
 			return false; /* Translation failed, back to guest */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
