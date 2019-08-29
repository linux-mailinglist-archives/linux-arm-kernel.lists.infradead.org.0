Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6772CA18F9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 13:38:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8YlzngTFZgfIQObCmy2APBvDPSrJXzFUI6odNr8K6Aw=; b=W4STxlcUQf0KRx
	iX4591jVHTZdbsji6eX+ZNQVy16R6sncPXgUQcfzW4wKGg7EymnTekaXfZEjBxa7gWn2I0e3ijo93
	M4qpXO2GB6vkGuhKIjTnpYCIpJXYz14cDv5WRf7ALl8M1VUsV+pF/Xn7dj086p5TFTAS2xD05ym+L
	pCYI6hVTrWXsYlUC7WIh1cEhskAtdXmDrOvaiMrzy70lLJKAsTEkWySysOy5RTY3HdlLSk1LVi+lp
	xWCIaQ5J+p9CcKZ4AO8kE7F+Cq2wGbaBCZUnIa27ewE+PB27Em3jcVz3/1+Nuw5wTQ4sqPAWL5GB+
	Peuvw7VoEX/xaFl36Tnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Il3-0000FV-O7; Thu, 29 Aug 2019 11:38:29 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Ii2-0006Dz-1o
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 11:35:23 +0000
Received: by mail-pf1-x442.google.com with SMTP id w2so1872183pfi.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 04:35:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qhknZxKgdAl94bBxAtLuZWwcExNsXFBEnXwKzdceJOY=;
 b=LgifRp0t619ipGp00hh6dJHvv1uAk/0lLN4nMJx7053wZL01Xo3V+bapPzFDdViOUp
 b6FXPazVzXMFSLGUSo+IBihcXbSIPMyXnuipSxfwCsLk79fmTDQK3tnvB6rBjPmFk5nX
 dj/KSzwdu4MUsPkemMgJfLUro/TGvONKORl7YRTuS7HSWN5DRpddUuDLANfiZ4bws/7r
 ZiMSIVUSkhQDiO4n1+dvAJIyEv6uregm37gdIkfTJtrUvs0QeNudbNKjJ+mT+jE5Zfrg
 fWX+7DdPGBbtLxl8SZH1R5NoUj4WR3eP0A6iPg5rFaLu085Pg6+Kw6lg5wSgGXJ9e5fL
 MzTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qhknZxKgdAl94bBxAtLuZWwcExNsXFBEnXwKzdceJOY=;
 b=Rv9cWJRa7V6S7Zn4CN/P+HVW7BSR07HkdntqSrA2OjZsM5e8MgqXcOVwRXjj7dKGqh
 Kr0+Pe9e2HnVK6C8MhBUPJXQ9RR1nE0J0aPFDssBb8VVR8bnOluAt74y+CO5I1hmQko0
 eW52dQV7QsFauAEMf5w9OPKiRzjUjKaID+u+qjSvIgiRukVD8Kjp1n4TUXVkBir8VOn/
 WQibLboej/trrJvAEirHEAEdT6X33LTUGphnhNOl4XH0O3h288hr2sEr2rD7uzQ2uHCS
 DJMY/Hc4iD19WyVyC+TVsQPhOU9ceByFPifXsAZ4dlJ5kB3kPdQ1o6HuiFMkINcYKwIx
 mwHg==
X-Gm-Message-State: APjAAAXCCa6yOGzbEMTTjGU/2iRQVn7ofV2E0ILnKSd7jyzgf+0QmOxR
 BJQWuLBb1bPwN9oxy+H7Wiqgew==
X-Google-Smtp-Source: APXvYqxmEmG+lq+I9erc/qBO7+RAykjZPAK1EUQqX/Yb+djWwrTCXJB3vXP1lQPLDkdWLDQgOMYY/g==
X-Received: by 2002:a63:a35c:: with SMTP id v28mr7957325pgn.144.1567078521464; 
 Thu, 29 Aug 2019 04:35:21 -0700 (PDT)
Received: from localhost ([122.167.132.221])
 by smtp.gmail.com with ESMTPSA id p90sm6496358pjp.7.2019.08.29.04.35.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 29 Aug 2019 04:35:20 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org, Julien Thierry <Julien.Thierry@arm.com>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH ARM64 v4.4 V3 11/44] arm64: uaccess: Mask __user pointers for
 __arch_{clear, copy_*}_user
Date: Thu, 29 Aug 2019 17:03:56 +0530
Message-Id: <821430ff13f625eca9e0a9700ddc161cbc7965ff.1567077734.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1567077734.git.viresh.kumar@linaro.org>
References: <cover.1567077734.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_043522_111558_392C806E 
X-CRM114-Status: GOOD (  11.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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

commit f71c2ffcb20dd8626880747557014bb9a61eb90e upstream.

Like we've done for get_user and put_user, ensure that user pointers
are masked before invoking the underlying __arch_{clear,copy_*}_user
operations.

Signed-off-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
[ v4.4: fixup for v4.4 style uaccess primitives ]
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm64/include/asm/uaccess.h | 18 ++++++++++--------
 arch/arm64/kernel/arm64ksyms.c   |  4 ++--
 arch/arm64/lib/clear_user.S      |  6 +++---
 arch/arm64/lib/copy_in_user.S    |  4 ++--
 4 files changed, 17 insertions(+), 15 deletions(-)

diff --git a/arch/arm64/include/asm/uaccess.h b/arch/arm64/include/asm/uaccess.h
index 693a0d784534..f2f5a152f372 100644
--- a/arch/arm64/include/asm/uaccess.h
+++ b/arch/arm64/include/asm/uaccess.h
@@ -303,19 +303,18 @@ do {									\
 
 extern unsigned long __must_check __arch_copy_from_user(void *to, const void __user *from, unsigned long n);
 extern unsigned long __must_check __arch_copy_to_user(void __user *to, const void *from, unsigned long n);
-extern unsigned long __must_check __copy_in_user(void __user *to, const void __user *from, unsigned long n);
-extern unsigned long __must_check __clear_user(void __user *addr, unsigned long n);
+extern unsigned long __must_check __arch_copy_in_user(void __user *to, const void __user *from, unsigned long n);
 
 static inline unsigned long __must_check __copy_from_user(void *to, const void __user *from, unsigned long n)
 {
 	kasan_check_write(to, n);
-	return  __arch_copy_from_user(to, from, n);
+	return __arch_copy_from_user(to, __uaccess_mask_ptr(from), n);
 }
 
 static inline unsigned long __must_check __copy_to_user(void __user *to, const void *from, unsigned long n)
 {
 	kasan_check_read(from, n);
-	return  __arch_copy_to_user(to, from, n);
+	return __arch_copy_to_user(__uaccess_mask_ptr(to), from, n);
 }
 
 static inline unsigned long __must_check copy_from_user(void *to, const void __user *from, unsigned long n)
@@ -338,22 +337,25 @@ static inline unsigned long __must_check copy_to_user(void __user *to, const voi
 	return n;
 }
 
-static inline unsigned long __must_check copy_in_user(void __user *to, const void __user *from, unsigned long n)
+static inline unsigned long __must_check __copy_in_user(void __user *to, const void __user *from, unsigned long n)
 {
 	if (access_ok(VERIFY_READ, from, n) && access_ok(VERIFY_WRITE, to, n))
-		n = __copy_in_user(to, from, n);
+		n = __arch_copy_in_user(__uaccess_mask_ptr(to), __uaccess_mask_ptr(from), n);
 	return n;
 }
+#define copy_in_user __copy_in_user
 
 #define __copy_to_user_inatomic __copy_to_user
 #define __copy_from_user_inatomic __copy_from_user
 
-static inline unsigned long __must_check clear_user(void __user *to, unsigned long n)
+extern unsigned long __must_check __arch_clear_user(void __user *to, unsigned long n);
+static inline unsigned long __must_check __clear_user(void __user *to, unsigned long n)
 {
 	if (access_ok(VERIFY_WRITE, to, n))
-		n = __clear_user(__uaccess_mask_ptr(to), n);
+		n = __arch_clear_user(__uaccess_mask_ptr(to), n);
 	return n;
 }
+#define clear_user	__clear_user
 
 extern long strncpy_from_user(char *dest, const char __user *src, long count);
 
diff --git a/arch/arm64/kernel/arm64ksyms.c b/arch/arm64/kernel/arm64ksyms.c
index c654df05b7d7..abe4e0984dbb 100644
--- a/arch/arm64/kernel/arm64ksyms.c
+++ b/arch/arm64/kernel/arm64ksyms.c
@@ -35,8 +35,8 @@ EXPORT_SYMBOL(clear_page);
 	/* user mem (segment) */
 EXPORT_SYMBOL(__arch_copy_from_user);
 EXPORT_SYMBOL(__arch_copy_to_user);
-EXPORT_SYMBOL(__clear_user);
-EXPORT_SYMBOL(__copy_in_user);
+EXPORT_SYMBOL(__arch_clear_user);
+EXPORT_SYMBOL(__arch_copy_in_user);
 
 	/* physical memory */
 EXPORT_SYMBOL(memstart_addr);
diff --git a/arch/arm64/lib/clear_user.S b/arch/arm64/lib/clear_user.S
index a9723c71c52b..fc6bb0f83511 100644
--- a/arch/arm64/lib/clear_user.S
+++ b/arch/arm64/lib/clear_user.S
@@ -24,7 +24,7 @@
 
 	.text
 
-/* Prototype: int __clear_user(void *addr, size_t sz)
+/* Prototype: int __arch_clear_user(void *addr, size_t sz)
  * Purpose  : clear some user memory
  * Params   : addr - user memory address to clear
  *          : sz   - number of bytes to clear
@@ -32,7 +32,7 @@
  *
  * Alignment fixed up by hardware.
  */
-ENTRY(__clear_user)
+ENTRY(__arch_clear_user)
 ALTERNATIVE("nop", __stringify(SET_PSTATE_PAN(0)), ARM64_HAS_PAN, \
 	    CONFIG_ARM64_PAN)
 	mov	x2, x1			// save the size for fixup return
@@ -57,7 +57,7 @@ USER(9f, strb	wzr, [x0]	)
 ALTERNATIVE("nop", __stringify(SET_PSTATE_PAN(1)), ARM64_HAS_PAN, \
 	    CONFIG_ARM64_PAN)
 	ret
-ENDPROC(__clear_user)
+ENDPROC(__arch_clear_user)
 
 	.section .fixup,"ax"
 	.align	2
diff --git a/arch/arm64/lib/copy_in_user.S b/arch/arm64/lib/copy_in_user.S
index 81c8fc93c100..0219aa85b3cc 100644
--- a/arch/arm64/lib/copy_in_user.S
+++ b/arch/arm64/lib/copy_in_user.S
@@ -67,7 +67,7 @@
 	.endm
 
 end	.req	x5
-ENTRY(__copy_in_user)
+ENTRY(__arch_copy_in_user)
 ALTERNATIVE("nop", __stringify(SET_PSTATE_PAN(0)), ARM64_HAS_PAN, \
 	    CONFIG_ARM64_PAN)
 	add	end, x0, x2
@@ -76,7 +76,7 @@ ALTERNATIVE("nop", __stringify(SET_PSTATE_PAN(1)), ARM64_HAS_PAN, \
 	    CONFIG_ARM64_PAN)
 	mov	x0, #0
 	ret
-ENDPROC(__copy_in_user)
+ENDPROC(__arch_copy_in_user)
 
 	.section .fixup,"ax"
 	.align	2
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
