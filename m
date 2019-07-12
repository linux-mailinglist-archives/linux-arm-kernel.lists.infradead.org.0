Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 355396665A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 07:33:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DVtvxeu/VP0ep/BQySSAOwXcOE5xsL0da8ioB4t7j7c=; b=KlzJTPnUORG+fq
	/Uv9Geyu/woF8XgRZHsqPc9psQXHe5INwBc13EzAj0iIeW5HGUMRG9yMzwKJntaGyuh1l57BYH5vM
	QrqTOGOwEotIN8vrLofDRuZVTf0WnQ4ri+mvg2vbKYJ4+CA7DgycNS9pUWcasF+UYaQcM6Qv6vf9+
	kagtuOvzQ58LUa2VZciq1OuUbdeCLo+cQF3ztyNvWh2hsGSeQlHN5PzYl/RIR58UtVYKh7op9Ykp+
	5b+897mbC/QHTEGhVLQvMHsQrMfVKjHUaTTD4TpYAyX1Pf4Ki4gFNWHuZpQgBlKqfTnmMKc+RxyUP
	KAFv7QF//rIW23quhOxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hloBp-0004W1-M4; Fri, 12 Jul 2019 05:33:49 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlo7d-0000bm-Ac
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 05:29:32 +0000
Received: by mail-pg1-x542.google.com with SMTP id i18so3989875pgl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 22:29:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Zvf6a5n0b57m5571dEwc9PlwLEZ1HE7kAfPBhGFdWe4=;
 b=BXO6ZdC65Gr2YcWg3tab5LZz7c9ZXPbBtGBbfcTpwCu15ZhB3bu0mJDr+LDIRG1nfl
 yiIL00HOMPzKBkmhbFiG2RWepLz7uDUyb45fDeL8QRaR+XHvu4wE52/8v9qYmcl6Dfux
 2C9YcTCQPzPuQJI5LNqiIiNbiJ3BNVn+LtZpZ+wfl4WqVLrz0+u9PN5EUbRXZ9abVxph
 UAIfSk537xmgGhzkCJbVLEwfuhtnxdWWHqNmb5psqUFKv7axmKiSK0kdQhEu9HTRlPa/
 eSKIY/3F9eIZ2nkw4PL5MghhC/B4FNCuk+AqG1Al3GVF8e+ZjNLZNkgZWvWh7flrazSz
 smGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Zvf6a5n0b57m5571dEwc9PlwLEZ1HE7kAfPBhGFdWe4=;
 b=M/t0xh0vEPAxfcAQTs3BGqblS0v38C2+x8Dn6E1oujVI0eB+MZVY20PgGrCFDObdGJ
 0KQHGlI6KbImNaojTMP2ROC4YH85adLxsTV7XvDx3YzBWknE9vpT8BaPOA3l6Rz3TxP3
 QYMWM5z3tN9o0ZILGqZVW3yWuHLiF6xiZyuCAnw5dGqpnH/Qk5PA+lbCxCL5hTsw3JJ7
 JnbnOsNMMLoiBV+HTElw4lp5KTfHC2WinlknXSW+CZWahoDQ44kvHEhQ8DcrWF8PmKup
 9ZST/EbnFZmu8YTgjCU2XdadOLbMXij0qDLnpuJ/GLoS0bCxhTSbvxJbQ8kGUTf+sy7V
 CVFg==
X-Gm-Message-State: APjAAAVVqlJVmswDIwtSfC/zsvyvgpYCLywfzOwWAE4rBoUmYoApWghK
 PPOw+Tvgwt6onR8GIUqflKarwg==
X-Google-Smtp-Source: APXvYqzF25A1nR1oj8gzHHvkNLpF7lunSQZdedqU0N1lG8g5rEr/PFHSZ4TBcKyJAOwRlVDhfD+F5Q==
X-Received: by 2002:a17:90a:f98a:: with SMTP id
 cq10mr9406226pjb.43.1562909368520; 
 Thu, 11 Jul 2019 22:29:28 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id d15sm14649918pjc.8.2019.07.11.22.29.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Jul 2019 22:29:28 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org,
	Julien Thierry <Julien.Thierry@arm.com>
Subject: [PATCH v4.4 V2 11/43] arm64: uaccess: Mask __user pointers for
 __arch_{clear, copy_*}_user
Date: Fri, 12 Jul 2019 10:57:59 +0530
Message-Id: <7d56c56af2f883958d5e74fa3178a1f774b9fd94.1562908075.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1562908074.git.viresh.kumar@linaro.org>
References: <cover.1562908074.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_222930_065052_5D4040C6 
X-CRM114-Status: GOOD (  12.19  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, Will Deacon <will.deacon@arm.com>,
 mark.brown@arm.com, Catalin Marinas <catalin.marinas@arm.com>,
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
 arch/arm64/include/asm/uaccess.h | 20 ++++++++++++--------
 arch/arm64/kernel/arm64ksyms.c   |  4 ++--
 arch/arm64/lib/clear_user.S      |  6 +++---
 arch/arm64/lib/copy_in_user.S    |  4 ++--
 4 files changed, 19 insertions(+), 15 deletions(-)

diff --git a/arch/arm64/include/asm/uaccess.h b/arch/arm64/include/asm/uaccess.h
index 693a0d784534..a25b8726ffa9 100644
--- a/arch/arm64/include/asm/uaccess.h
+++ b/arch/arm64/include/asm/uaccess.h
@@ -303,19 +303,20 @@ do {									\
 
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
+
 }
 
 static inline unsigned long __must_check __copy_to_user(void __user *to, const void *from, unsigned long n)
 {
 	kasan_check_read(from, n);
-	return  __arch_copy_to_user(to, from, n);
+	return __arch_copy_to_user(__uaccess_mask_ptr(to), from, n);
+
 }
 
 static inline unsigned long __must_check copy_from_user(void *to, const void __user *from, unsigned long n)
@@ -338,22 +339,25 @@ static inline unsigned long __must_check copy_to_user(void __user *to, const voi
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
