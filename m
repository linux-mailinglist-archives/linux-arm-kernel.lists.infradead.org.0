Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98BBE45298
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 05:16:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RAHVG80TkvDnYouWOmZyK/FzoMM+QPpAUc7EqW74CQk=; b=jn+RSVahxC5ChC
	n6tp473S1Tw/tlD2JVbqP4dhyH0ed9PjpXLbk5QFt0390W6WyyvBgElcmxIfAumpQF9HKf9U7sTGb
	4GraOdslNZ2s3TTUCwAU6P+nT8NTHAMRrqEJ2NLm0AjRqtkSVCtE+THqJj5GvX0V8fJXYqj2M4TvD
	2zVCEKOdWFcq1tTNgFniCynrcDXUAzBEs73ke0H4/voSw9FTMGooyBrFiKLoehqVZw7NfRe6RT+1a
	GOubSjwxLzg2unQwiwH2LhXPKgQ/kG01eVhjrMzldyWWdxIPxh8VlI3GTOIOo6Ic/0RUc4/yhOGr+
	9Fu2GfOHU12E5fy/sxUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbchp-0004lM-VI; Fri, 14 Jun 2019 03:16:45 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbcdd-0000In-Ic
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 03:12:29 +0000
Received: by mail-pf1-x444.google.com with SMTP id c85so505847pfc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 20:12:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=t0RCljGeD4tzeQJetzsGgy9r5JSUQjn098IzF6ZdUW0=;
 b=EnlNIWxbtRThqYC1UTEAMR6ZJHxB7MpeNcyku2RIUxsBNKOca6sb1cLziSGn027QKB
 xznFwEiVWEV8QHdgGzBQHOdJP4StFOzj+T+DkX9dTluJJf8uG+du5rxm1et9ARIS4deq
 66iFIpfeZzOLGx1fURdbEC387LYqMrJQSrtZLWzTDvQchdMd1/rZXOX3E/SOVTzo6dCL
 xuHUISGzQnmY2wjzUcLfRKDKV7ZobrQBu81lBSzvcyKSlwqFr+8EckIrP2mAwjn1Evh5
 Bl9CmZx5NM0LTXYNykjnVOtsoLVfbdR7BydQbSayQDn36dpSKcpA4Ry6vcT2xzpM4fFG
 s2Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=t0RCljGeD4tzeQJetzsGgy9r5JSUQjn098IzF6ZdUW0=;
 b=UbNIZmPA9NKMBK5FjAxEXQgovGIr8NFyfmVZjnwj6//qHVFsg999mYwRhSUJ7vavYK
 v2+ClUqUb9BiMV9a4RRCOxb9ksMA7znhtcVT9+y5TzfRL+/MWws16ZFVXhX73cn8JaWE
 BwTx8gRMxqyh4dYiKGW1BZ+beXAC+7ZFJUAPsHQA9K/fFmoCvv8M2fClNOAFE2/rubSj
 xsdAfkCwM9ewRDJw7QAJLcLgJDwzF2xfWX1ELzzK5x6gq0ki1KMIKpqzJQBUMoSH4hnc
 71iBnXhE13PJTB8uyMA7K8e7u3xZWfhbHlRspjm/0Cpd0HPrKttVkg5KPaXdVrK79VJT
 qLiw==
X-Gm-Message-State: APjAAAXLs0KkPfVRa6K1P6ZeytMZO9wH+Cv+Q9+qiL0D5+Mj+nVM0Pns
 BtXF34Seid4Z6BdksKx8qpHbYG4fJkc=
X-Google-Smtp-Source: APXvYqxwj5PgnFL+hOW4VhWZf44B0eCA35gPND0EA8N17oIb8+BzUrMIq4Sg8lSadnjSM11F+Kg9DA==
X-Received: by 2002:a63:68b:: with SMTP id 133mr32205733pgg.385.1560481943068; 
 Thu, 13 Jun 2019 20:12:23 -0700 (PDT)
Received: from localhost ([122.172.66.84])
 by smtp.gmail.com with ESMTPSA id n140sm1075830pfd.132.2019.06.13.20.12.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Jun 2019 20:12:22 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: linux-arm-kernel@lists.infradead.org,
 Julien Thierry <Julien.Thierry@arm.com>
Subject: [PATCH v4.4 11/45] arm64: kasan: instrument user memory access API
Date: Fri, 14 Jun 2019 08:37:54 +0530
Message-Id: <565bddf471412bbd64d0ece7f9d91b9c937cae19.1560480942.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1560480942.git.viresh.kumar@linaro.org>
References: <cover.1560480942.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_201225_758575_3BD9A9E6 
X-CRM114-Status: GOOD (  11.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 stable@vger.kernel.org, mark.brown@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Yang Shi <yang.shi@linaro.org>

commit bffe1baff5d57521b0c41b6997c41ff1993e9818 upstream.

The upstream commit 1771c6e1a567ea0ba2cccc0a4ffe68a1419fd8ef
("x86/kasan: instrument user memory access API") added KASAN instrument to
x86 user memory access API, so added such instrument to ARM64 too.

Define __copy_to/from_user in C in order to add kasan_check_read/write call,
rename assembly implementation to __arch_copy_to/from_user.

Tested by test_kasan module.

Acked-by: Andrey Ryabinin <aryabinin@virtuozzo.com>
Reviewed-by: Mark Rutland <mark.rutland@arm.com>
Tested-by: Mark Rutland <mark.rutland@arm.com>
Signed-off-by: Yang Shi <yang.shi@linaro.org>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm64/include/asm/uaccess.h | 25 +++++++++++++++++++++----
 arch/arm64/kernel/arm64ksyms.c   |  4 ++--
 arch/arm64/lib/copy_from_user.S  |  4 ++--
 arch/arm64/lib/copy_to_user.S    |  4 ++--
 4 files changed, 27 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/include/asm/uaccess.h b/arch/arm64/include/asm/uaccess.h
index a34324436ce1..693a0d784534 100644
--- a/arch/arm64/include/asm/uaccess.h
+++ b/arch/arm64/include/asm/uaccess.h
@@ -22,6 +22,7 @@
  * User space memory access functions
  */
 #include <linux/bitops.h>
+#include <linux/kasan-checks.h>
 #include <linux/string.h>
 #include <linux/thread_info.h>
 
@@ -300,15 +301,29 @@ do {									\
 
 #define put_user	__put_user
 
-extern unsigned long __must_check __copy_from_user(void *to, const void __user *from, unsigned long n);
-extern unsigned long __must_check __copy_to_user(void __user *to, const void *from, unsigned long n);
+extern unsigned long __must_check __arch_copy_from_user(void *to, const void __user *from, unsigned long n);
+extern unsigned long __must_check __arch_copy_to_user(void __user *to, const void *from, unsigned long n);
 extern unsigned long __must_check __copy_in_user(void __user *to, const void __user *from, unsigned long n);
 extern unsigned long __must_check __clear_user(void __user *addr, unsigned long n);
 
+static inline unsigned long __must_check __copy_from_user(void *to, const void __user *from, unsigned long n)
+{
+	kasan_check_write(to, n);
+	return  __arch_copy_from_user(to, from, n);
+}
+
+static inline unsigned long __must_check __copy_to_user(void __user *to, const void *from, unsigned long n)
+{
+	kasan_check_read(from, n);
+	return  __arch_copy_to_user(to, from, n);
+}
+
 static inline unsigned long __must_check copy_from_user(void *to, const void __user *from, unsigned long n)
 {
+	kasan_check_write(to, n);
+
 	if (access_ok(VERIFY_READ, from, n))
-		n = __copy_from_user(to, from, n);
+		n = __arch_copy_from_user(to, from, n);
 	else /* security hole - plug it */
 		memset(to, 0, n);
 	return n;
@@ -316,8 +331,10 @@ static inline unsigned long __must_check copy_from_user(void *to, const void __u
 
 static inline unsigned long __must_check copy_to_user(void __user *to, const void *from, unsigned long n)
 {
+	kasan_check_read(from, n);
+
 	if (access_ok(VERIFY_WRITE, to, n))
-		n = __copy_to_user(to, from, n);
+		n = __arch_copy_to_user(to, from, n);
 	return n;
 }
 
diff --git a/arch/arm64/kernel/arm64ksyms.c b/arch/arm64/kernel/arm64ksyms.c
index 3b6d8cc9dfe0..c654df05b7d7 100644
--- a/arch/arm64/kernel/arm64ksyms.c
+++ b/arch/arm64/kernel/arm64ksyms.c
@@ -33,8 +33,8 @@ EXPORT_SYMBOL(copy_page);
 EXPORT_SYMBOL(clear_page);
 
 	/* user mem (segment) */
-EXPORT_SYMBOL(__copy_from_user);
-EXPORT_SYMBOL(__copy_to_user);
+EXPORT_SYMBOL(__arch_copy_from_user);
+EXPORT_SYMBOL(__arch_copy_to_user);
 EXPORT_SYMBOL(__clear_user);
 EXPORT_SYMBOL(__copy_in_user);
 
diff --git a/arch/arm64/lib/copy_from_user.S b/arch/arm64/lib/copy_from_user.S
index 4699cd74f87e..281e75db899a 100644
--- a/arch/arm64/lib/copy_from_user.S
+++ b/arch/arm64/lib/copy_from_user.S
@@ -66,7 +66,7 @@
 	.endm
 
 end	.req	x5
-ENTRY(__copy_from_user)
+ENTRY(__arch_copy_from_user)
 ALTERNATIVE("nop", __stringify(SET_PSTATE_PAN(0)), ARM64_HAS_PAN, \
 	    CONFIG_ARM64_PAN)
 	add	end, x0, x2
@@ -75,7 +75,7 @@ ALTERNATIVE("nop", __stringify(SET_PSTATE_PAN(1)), ARM64_HAS_PAN, \
 	    CONFIG_ARM64_PAN)
 	mov	x0, #0				// Nothing to copy
 	ret
-ENDPROC(__copy_from_user)
+ENDPROC(__arch_copy_from_user)
 
 	.section .fixup,"ax"
 	.align	2
diff --git a/arch/arm64/lib/copy_to_user.S b/arch/arm64/lib/copy_to_user.S
index 7512bbbc07ac..db4d187de61f 100644
--- a/arch/arm64/lib/copy_to_user.S
+++ b/arch/arm64/lib/copy_to_user.S
@@ -65,7 +65,7 @@
 	.endm
 
 end	.req	x5
-ENTRY(__copy_to_user)
+ENTRY(__arch_copy_to_user)
 ALTERNATIVE("nop", __stringify(SET_PSTATE_PAN(0)), ARM64_HAS_PAN, \
 	    CONFIG_ARM64_PAN)
 	add	end, x0, x2
@@ -74,7 +74,7 @@ ALTERNATIVE("nop", __stringify(SET_PSTATE_PAN(1)), ARM64_HAS_PAN, \
 	    CONFIG_ARM64_PAN)
 	mov	x0, #0
 	ret
-ENDPROC(__copy_to_user)
+ENDPROC(__arch_copy_to_user)
 
 	.section .fixup,"ax"
 	.align	2
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
