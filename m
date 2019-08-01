Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA1257D786
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 10:26:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rq8lEdHD5hULtpf+3j1GZIOuXou69c/+TBsCDtWTVQ4=; b=trVpPNVxXAc459
	z6q9iWHwZvDRcsTEXauyzMzDNcMiqByvY9WNgY4kB9v4LRuIdWXiPA2opb/EcsuIRX/WuqotzksK4
	56U8IfVs83PxlJ9nHpZo+/ZtPiOqUbWA/RtPWeOs6F+lA4Q2Z5z6AEZzIfAk3RA9b1EhZO4VZrLlA
	baXAEz1sz6vXyOvS1Zly5gIUrYRFNppUM0SB94mCPoZ0sh1rteb8wDzMNdUrH4KQve2JLDDAyRvnP
	xK71FURcRn+yvmpONx3FsRjYcFn2sraKKK8H0y/FRxLsUfLBtlqK5Wm28UYnwGunPGqi0wULwMTK7
	vG9G64+EmlH8q8rhfIRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht6Pn-0002US-3M; Thu, 01 Aug 2019 08:26:23 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht6Kb-00034U-HY
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 08:21:03 +0000
Received: by mail-pg1-x543.google.com with SMTP id o13so33717333pgp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 01:21:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wHzU+tsn1pgRkzbIeM8fvpGsFHg5ebHOWm4gu/3Evbs=;
 b=rSAt52egga0c/9SEqscpsTeaeRsAwWlmYF0iaTkpWJoaWK26cLxh1XXD3+NxAq/QWX
 e51h9rVl9tyo1SrN4FSuHn+LzRPvxPmAHV0U4kBLerPw9KrfQoopYk5P3tGth+es5E0Y
 YBWVssklLvqnj1o7gKAxxhzEdoSSG+BAZ8ZmLMUZ4DEguwsJ5rpIDTXGxDipk1+rl/XV
 c/4dWbmNolrf5BFUguxC80+PwGpxs65sg1LAZxJteThDQF1k36lH6Imic2YFyELTHcBm
 CFZ6AD07r38paUBn0ey5jIRShqphH8w0uSpcsCXs7KwRWjk742hItzwGw4+avKLlyJs4
 +Fvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wHzU+tsn1pgRkzbIeM8fvpGsFHg5ebHOWm4gu/3Evbs=;
 b=IpUKkGat35UvycXu3qjUl7Q7rzu4sacZ5cEL3u8Oq0KFCTXwPzNmpxuUf8uxSyYYOa
 JB1nsZwW9Rzs4NK3WMNzm4TfxRTXLGyW0FIztcS55O+dMplyCfNVWPq9QqpCEa6E8HFB
 JCEgG6Zzh5ITCb+NS0x6CLueYcqZ2d/ouh7E92QfbZBBQ6lYXIMNIAcoHDlA+8/OJpdv
 OyeeQ4+F3rfst+nAf6axY/tEW0LEyRVC3QJMfRS/5KH0RiYKZeHcf+Zp8ZmBTH/es+Al
 gooyWhlsiMc/KXAmv+DbzdZA+6FU6qumBvl4lhT21zxhIUUqokAmysTlPKCzU/nv8JHk
 /ruA==
X-Gm-Message-State: APjAAAVltb0Y6Qog4NnFNzxdgygcDx+O1aHyq3CyZ2dYY5PMf31JKD4+
 3AUyTD9w+cUpzn8YxfkHU57Zp9r6Vw0=
X-Google-Smtp-Source: APXvYqwnwqiIvKejRHzstn3Je3SR7S3F9vIbsAZ8AdQb5YEbOGH5uf8ZF72xNnezn80fnlz56U48mg==
X-Received: by 2002:a65:4489:: with SMTP id l9mr121289891pgq.207.1564647660710; 
 Thu, 01 Aug 2019 01:21:00 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id 30sm6971178pjk.17.2019.08.01.01.20.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Aug 2019 01:21:00 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org
Subject: [PATCH ARM32 v4.4 V2 33/47] ARM: uaccess: remove put_user() code
 duplication
Date: Thu,  1 Aug 2019 13:46:17 +0530
Message-Id: <c3bd0d39dd5cda75a761d39f94b12a68d508391a.1564646727.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1564646727.git.viresh.kumar@linaro.org>
References: <cover.1564646727.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_012101_704266_0D01DFC6 
X-CRM114-Status: GOOD (  13.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Julien Thierry <Julien.Thierry@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, guohanjun@huawei.com,
 Will Deacon <will.deacon@arm.com>, mark.brown@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Russell King <rmk+kernel@arm.linux.org.uk>

Commit 9f73bd8bb445e0cbe4bcef6d4cfc788f1e184007 upstream.

Remove the code duplication between put_user() and __put_user().  The
code which selected the implementation based upon the pointer size, and
declared the local variable to hold the value to be put are common to
both implementations.

Signed-off-by: Russell King <rmk+kernel@arm.linux.org.uk>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm/include/asm/uaccess.h | 106 +++++++++++++++------------------
 1 file changed, 49 insertions(+), 57 deletions(-)

diff --git a/arch/arm/include/asm/uaccess.h b/arch/arm/include/asm/uaccess.h
index a782201a2629..94b1bf53b820 100644
--- a/arch/arm/include/asm/uaccess.h
+++ b/arch/arm/include/asm/uaccess.h
@@ -253,49 +253,23 @@ extern int __put_user_2(void *, unsigned int);
 extern int __put_user_4(void *, unsigned int);
 extern int __put_user_8(void *, unsigned long long);
 
-#define __put_user_x(__r2, __p, __e, __l, __s)				\
-	   __asm__ __volatile__ (					\
-		__asmeq("%0", "r0") __asmeq("%2", "r2")			\
-		__asmeq("%3", "r1")					\
-		"bl	__put_user_" #__s				\
-		: "=&r" (__e)						\
-		: "0" (__p), "r" (__r2), "r" (__l)			\
-		: "ip", "lr", "cc")
-
-#define __put_user_check(x, p)						\
+#define __put_user_check(__pu_val, __ptr, __err, __s)			\
 	({								\
 		unsigned long __limit = current_thread_info()->addr_limit - 1; \
-		const typeof(*(p)) __user *__tmp_p = (p);		\
-		register typeof(*(p)) __r2 asm("r2") = (x);	\
-		register const typeof(*(p)) __user *__p asm("r0") = __tmp_p; \
+		register typeof(__pu_val) __r2 asm("r2") = __pu_val;	\
+		register const void __user *__p asm("r0") = __ptr;	\
 		register unsigned long __l asm("r1") = __limit;		\
 		register int __e asm("r0");				\
-		unsigned int __ua_flags = uaccess_save_and_enable();	\
-		switch (sizeof(*(__p))) {				\
-		case 1:							\
-			__put_user_x(__r2, __p, __e, __l, 1);		\
-			break;						\
-		case 2:							\
-			__put_user_x(__r2, __p, __e, __l, 2);		\
-			break;						\
-		case 4:							\
-			__put_user_x(__r2, __p, __e, __l, 4);		\
-			break;						\
-		case 8:							\
-			__put_user_x(__r2, __p, __e, __l, 8);		\
-			break;						\
-		default: __e = __put_user_bad(); break;			\
-		}							\
-		uaccess_restore(__ua_flags);				\
-		__e;							\
+		__asm__ __volatile__ (					\
+			__asmeq("%0", "r0") __asmeq("%2", "r2")		\
+			__asmeq("%3", "r1")				\
+			"bl	__put_user_" #__s			\
+			: "=&r" (__e)					\
+			: "0" (__p), "r" (__r2), "r" (__l)		\
+			: "ip", "lr", "cc");				\
+		__err = __e;						\
 	})
 
-#define put_user(x, p)							\
-	({								\
-		might_fault();						\
-		__put_user_check(x, p);					\
-	 })
-
 #else /* CONFIG_MMU */
 
 /*
@@ -313,7 +287,7 @@ static inline void set_fs(mm_segment_t fs)
 }
 
 #define get_user(x, p)	__get_user(x, p)
-#define put_user(x, p)	__put_user(x, p)
+#define __put_user_check __put_user_nocheck
 
 #endif /* CONFIG_MMU */
 
@@ -408,36 +382,54 @@ do {									\
 	__get_user_asm(x, addr, err, ldr)
 #endif
 
+
+#define __put_user_switch(x, ptr, __err, __fn)				\
+	do {								\
+		const __typeof__(*(ptr)) __user *__pu_ptr = (ptr);	\
+		__typeof__(*(ptr)) __pu_val = (x);			\
+		unsigned int __ua_flags;				\
+		might_fault();						\
+		__ua_flags = uaccess_save_and_enable();			\
+		switch (sizeof(*(ptr))) {				\
+		case 1: __fn(__pu_val, __pu_ptr, __err, 1); break;	\
+		case 2:	__fn(__pu_val, __pu_ptr, __err, 2); break;	\
+		case 4:	__fn(__pu_val, __pu_ptr, __err, 4); break;	\
+		case 8:	__fn(__pu_val, __pu_ptr, __err, 8); break;	\
+		default: __err = __put_user_bad(); break;		\
+		}							\
+		uaccess_restore(__ua_flags);				\
+	} while (0)
+
+#define put_user(x, ptr)						\
+({									\
+	int __pu_err = 0;						\
+	__put_user_switch((x), (ptr), __pu_err, __put_user_check);	\
+	__pu_err;							\
+})
+
 #define __put_user(x, ptr)						\
 ({									\
 	long __pu_err = 0;						\
-	__put_user_err((x), (ptr), __pu_err);				\
+	__put_user_switch((x), (ptr), __pu_err, __put_user_nocheck);	\
 	__pu_err;							\
 })
 
 #define __put_user_error(x, ptr, err)					\
 ({									\
-	__put_user_err((x), (ptr), err);				\
+	__put_user_switch((x), (ptr), (err), __put_user_nocheck);	\
 	(void) 0;							\
 })
 
-#define __put_user_err(x, ptr, err)					\
-do {									\
-	unsigned long __pu_addr = (unsigned long)(ptr);			\
-	unsigned int __ua_flags;					\
-	__typeof__(*(ptr)) __pu_val = (x);				\
-	__chk_user_ptr(ptr);						\
-	might_fault();							\
-	__ua_flags = uaccess_save_and_enable();				\
-	switch (sizeof(*(ptr))) {					\
-	case 1: __put_user_asm_byte(__pu_val, __pu_addr, err);	break;	\
-	case 2: __put_user_asm_half(__pu_val, __pu_addr, err);	break;	\
-	case 4: __put_user_asm_word(__pu_val, __pu_addr, err);	break;	\
-	case 8:	__put_user_asm_dword(__pu_val, __pu_addr, err);	break;	\
-	default: __put_user_bad();					\
-	}								\
-	uaccess_restore(__ua_flags);					\
-} while (0)
+#define __put_user_nocheck(x, __pu_ptr, __err, __size)			\
+	do {								\
+		unsigned long __pu_addr = (unsigned long)__pu_ptr;	\
+		__put_user_nocheck_##__size(x, __pu_addr, __err);	\
+	} while (0)
+
+#define __put_user_nocheck_1 __put_user_asm_byte
+#define __put_user_nocheck_2 __put_user_asm_half
+#define __put_user_nocheck_4 __put_user_asm_word
+#define __put_user_nocheck_8 __put_user_asm_dword
 
 #define __put_user_asm(x, __pu_addr, err, instr)		\
 	__asm__ __volatile__(					\
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
