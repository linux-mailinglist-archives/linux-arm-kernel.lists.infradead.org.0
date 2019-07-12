Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA08E66648
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 07:31:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+/mGGfdkDx+eUo6I+9GNQYWdGX34vWnR6YBiz5YiaYs=; b=RxOStrqTOjObve
	zWUUr9zUmDPbyfaAaixZZ8pCdr5v+p+dRfjT1MfjemVPWf1Ez6yc6fOTvKV5D2K1EHUMdr+/hO1VD
	SWjzYam1B/4S1ETBVS/Vqdj6GJi3kv8XmnToWSC5dGYq096FOOUg0xA4vhPfKFRIdssCZAv+2So+u
	fVR6zY3FMtjJSwhmVJYQdK15CSYXWPpk1d9HV5nYVnzrHxxObV23yqHDzmAolIKyHJeI+F/S3Dlkz
	GAWXDmAy7MuJT1VO3CNKn83JAopLWagne+A0TD1HPNMZ4w6EqmYZSlfpXVM18yMo7rvJPcfj+wIap
	oovQbGf+cRgwmZ1snjPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlo98-0002ht-F2; Fri, 12 Jul 2019 05:31:02 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlo7L-0000Mi-DE
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 05:29:13 +0000
Received: by mail-pg1-x542.google.com with SMTP id i18so3989577pgl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 22:29:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kHvdeN9oObJ1DWOknB6wJwOgumkOXHrRy2jfFMpABJ8=;
 b=hM1jomaku7YbTVsAoc4MF43HHAKnEowYYJJHt/ujVKG5+gImW/mKJgOiMQ3Bt1wvjx
 t72Kf3zjoxonK9qtPyFBV7PaBIvF1BLLUigcCeozquAUDEqkeEjOx72qr2XpJ2/LKQpE
 C9X5M+NPSvf3J7HwTmzqm6RsYFChmRfJyvkjWYOXkCgXPToCESKDVaHgbssqbdwrT0zW
 YeeqDKjniFcGnDv7qgTjBNhzpi/kvK1zKpa/FPZUGKNu/M4NhxLPOLjaGBmzGj2baKWS
 LRNXHssnuKnY8Z5pH7O8slUYXXAeWGvFvM353Gi/FDsoWnGa8Axw/prb+0MK346eafhJ
 AkKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kHvdeN9oObJ1DWOknB6wJwOgumkOXHrRy2jfFMpABJ8=;
 b=rFpTOqoh7Jee4Xg/zQIOUlahi3/fWeA43WDTjfsJaDW5tTi4GjvIjtdHXOnav4qK7T
 uDcIR1CIOKPTmBpbSucJU6aDBZwro+boSqqezhPwmaJNu6utIsWgzlUtl5SPMnZTpaIo
 QZdj3GLhfnr2bC/7nHYedRjsnPFlYx0I+wWTkDXT9aH6xIAJMUXV/ah3Nz9WcYHQQDIl
 wZriwKCbp4Avn4i6RTlyZMyFV8fRFTmOJBgxVwrcfDIgpySHSUWIwFpw+Hh3+LZd97wN
 vwcjjALY+awU0rqbeMVuI1odGVewm/1yMcDO+jYXkX+0iLNK3PrTNP0Oi0R2U9XA6Y3X
 2ZjA==
X-Gm-Message-State: APjAAAUmXT+/IPTBq0ouTIwW+g/5VSEy2N++6eZbqjg4EXa+7+66RtYK
 Ru/AFSvNCUPx+/ZURzaBbl8zLA==
X-Google-Smtp-Source: APXvYqyP9/Df7wdYCYKedEiicK5+IIMsTu0a3lFSqHuijjNoBHQAp8Gxt/CH557Y4q1AR7Yh/eMbqQ==
X-Received: by 2002:a17:90a:17a6:: with SMTP id
 q35mr9421112pja.118.1562909350473; 
 Thu, 11 Jul 2019 22:29:10 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id f17sm6063670pgv.16.2019.07.11.22.29.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Jul 2019 22:29:09 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org,
	Julien Thierry <Julien.Thierry@arm.com>
Subject: [PATCH v4.4 V2 04/43] arm64: Make USER_DS an inclusive limit
Date: Fri, 12 Jul 2019 10:57:52 +0530
Message-Id: <c711de522a83025712b28fdb88d945f6a5c662fa.1562908074.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1562908074.git.viresh.kumar@linaro.org>
References: <cover.1562908074.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_222911_504458_50E028FB 
X-CRM114-Status: GOOD (  16.32  )
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

From: Robin Murphy <robin.murphy@arm.com>

commit 51369e398d0d33e8f524314e672b07e8cf870e79 upstream.

Currently, USER_DS represents an exclusive limit while KERNEL_DS is
inclusive. In order to do some clever trickery for speculation-safe
masking, we need them both to behave equivalently - there aren't enough
bits to make KERNEL_DS exclusive, so we have precisely one option. This
also happens to correct a longstanding false negative for a range
ending on the very top byte of kernel memory.

Mark Rutland points out that we've actually got the semantics of
addresses vs. segments muddled up in most of the places we need to
amend, so shuffle the {USER,KERNEL}_DS definitions around such that we
can correct those properly instead of just pasting "-1"s everywhere.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
Signed-off-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
[ 4.4: Dropped changes from fault.c and fixed minor rebase conflict ]
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm64/include/asm/processor.h |  3 ++
 arch/arm64/include/asm/uaccess.h   | 45 +++++++++++++++++-------------
 arch/arm64/kernel/entry.S          |  4 +--
 3 files changed, 31 insertions(+), 21 deletions(-)

diff --git a/arch/arm64/include/asm/processor.h b/arch/arm64/include/asm/processor.h
index 75d9ef6c457c..ff1449c25bf4 100644
--- a/arch/arm64/include/asm/processor.h
+++ b/arch/arm64/include/asm/processor.h
@@ -21,6 +21,9 @@
 
 #define TASK_SIZE_64		(UL(1) << VA_BITS)
 
+#define KERNEL_DS	UL(-1)
+#define USER_DS		(TASK_SIZE_64 - 1)
+
 #ifndef __ASSEMBLY__
 
 /*
diff --git a/arch/arm64/include/asm/uaccess.h b/arch/arm64/include/asm/uaccess.h
index 829fa6d3e561..c625cc5531fc 100644
--- a/arch/arm64/include/asm/uaccess.h
+++ b/arch/arm64/include/asm/uaccess.h
@@ -56,10 +56,7 @@ struct exception_table_entry
 
 extern int fixup_exception(struct pt_regs *regs);
 
-#define KERNEL_DS	(-1UL)
 #define get_ds()	(KERNEL_DS)
-
-#define USER_DS		TASK_SIZE_64
 #define get_fs()	(current_thread_info()->addr_limit)
 
 static inline void set_fs(mm_segment_t fs)
@@ -87,22 +84,32 @@ static inline void set_fs(mm_segment_t fs)
  * Returns 1 if the range is valid, 0 otherwise.
  *
  * This is equivalent to the following test:
- * (u65)addr + (u65)size <= current->addr_limit
- *
- * This needs 65-bit arithmetic.
+ * (u65)addr + (u65)size <= (u65)current->addr_limit + 1
  */
-#define __range_ok(addr, size)						\
-({									\
-	unsigned long __addr = (unsigned long __force)(addr);		\
-	unsigned long flag, roksum;					\
-	__chk_user_ptr(addr);						\
-	asm("adds %1, %1, %3; ccmp %1, %4, #2, cc; cset %0, ls"		\
-		: "=&r" (flag), "=&r" (roksum)				\
-		: "1" (__addr), "Ir" (size),				\
-		  "r" (current_thread_info()->addr_limit)		\
-		: "cc");						\
-	flag;								\
-})
+static inline unsigned long __range_ok(unsigned long addr, unsigned long size)
+{
+	unsigned long limit = current_thread_info()->addr_limit;
+
+	__chk_user_ptr(addr);
+	asm volatile(
+	// A + B <= C + 1 for all A,B,C, in four easy steps:
+	// 1: X = A + B; X' = X % 2^64
+	"	adds	%0, %0, %2\n"
+	// 2: Set C = 0 if X > 2^64, to guarantee X' > C in step 4
+	"	csel	%1, xzr, %1, hi\n"
+	// 3: Set X' = ~0 if X >= 2^64. For X == 2^64, this decrements X'
+	//    to compensate for the carry flag being set in step 4. For
+	//    X > 2^64, X' merely has to remain nonzero, which it does.
+	"	csinv	%0, %0, xzr, cc\n"
+	// 4: For X < 2^64, this gives us X' - C - 1 <= 0, where the -1
+	//    comes from the carry in being clear. Otherwise, we are
+	//    testing X' - C == 0, subject to the previous adjustments.
+	"	sbcs	xzr, %0, %1\n"
+	"	cset	%0, ls\n"
+	: "+r" (addr), "+r" (limit) : "Ir" (size) : "cc");
+
+	return addr;
+}
 
 /*
  * When dealing with data aborts, watchpoints, or instruction traps we may end
@@ -111,7 +118,7 @@ static inline void set_fs(mm_segment_t fs)
  */
 #define untagged_addr(addr)		sign_extend64(addr, 55)
 
-#define access_ok(type, addr, size)	__range_ok(addr, size)
+#define access_ok(type, addr, size)	__range_ok((unsigned long)(addr), size)
 #define user_addr_max			get_fs
 
 /*
diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index c849be9231bb..4c5013b09dcb 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -96,10 +96,10 @@
 	.else
 	add	x21, sp, #S_FRAME_SIZE
 	get_thread_info tsk
-	/* Save the task's original addr_limit and set USER_DS (TASK_SIZE_64) */
+	/* Save the task's original addr_limit and set USER_DS */
 	ldr	x20, [tsk, #TI_ADDR_LIMIT]
 	str	x20, [sp, #S_ORIG_ADDR_LIMIT]
-	mov	x20, #TASK_SIZE_64
+	mov	x20, #USER_DS
 	str	x20, [tsk, #TI_ADDR_LIMIT]
 	.endif /* \el == 0 */
 	mrs	x22, elr_el1
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
