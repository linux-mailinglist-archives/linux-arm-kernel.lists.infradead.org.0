Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D439B66656
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 07:32:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5SKqHnYh++enVkO0Jo1GiR2XPmXkqSMc1OOSta9dWJU=; b=s0bQKR5Y/fIXVm
	VtDlDsFoPNzjLI2W0k/LDbqeUDw7ObP6eeq60j0lC/GscPcbF0j+ds+2MvUNz3YaRwKk31BMyymYN
	T4g3QJr0xHr10C6nxo/KrUeJiKWJD1MRccjAe214JQEKWQfDQpTbLvOdfgkowlCohCvm9pdHMu4jU
	X+lvN+TPvdtztaIMAdz32QffqztVI0TgbnRQxPXgA4fY/fwe8rLlH0U5+JdwuesWosiOu5Ox26WYC
	4IEXbbxcQdZ4WE3iaj7SPeYm6jcFAMHAaKC0NbnE/m2Reb0dFdXfTJjaGuhuZ/4sNxt4gtU8MhcE8
	JM03Rf9Vknc+MKDK0B7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hloAb-0003lV-5g; Fri, 12 Jul 2019 05:32:33 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlo7W-0000Vx-0O
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 05:29:23 +0000
Received: by mail-pl1-x644.google.com with SMTP id t14so4186745plr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 22:29:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Lt3w372XAiP2T5A3AE8p2nBAFVuCKsgxbI6J0UJSdP8=;
 b=LaE/Kno7nEObxeBKxYf9ds5SR/CXNWhXinMc3wcULfDJoYCm/+NNy5aliYFycyp/Pd
 xQjNCTX3R2Lq+L+RC/SMO5qnlzYoPN7ZrN0vVtlR6eZ+5ScFKAuQmQ3TO7j8mSsmt4Xd
 YlVHx3iK1DZkTJj5xP/b+JuDVFC6zP4989JLcd7xMAHJNgpFr3BPj89s9hC2xYMMV8up
 Aa7U2CtFy3VMya7CPReBDeY64SUW9PmXWPcFPrYDtu8vg5DZYAHcIBmCQyWoU3HVghK3
 cMB2NDUennZ7lH8fyvKlDMyuCzU87oRy6E6zBmLCUtu5VqBlG9PrA3ZfPYCxqfgtFQwy
 qZAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Lt3w372XAiP2T5A3AE8p2nBAFVuCKsgxbI6J0UJSdP8=;
 b=VN5g5qniKqaygfNLlHJB7X0tBLGrZEwKR1tiJlPGNaOYjKJw0qApa1tKABm/lPxF7C
 Lov7JlRXB6h5++32pWS7lGPhXFo9kjgqpepqI0USQ+5wGIMiGwfzb7M4D6ued4E3KFYU
 yQukoWJbDlSlHHs9fzcWkc7ZHK4gtHqyNccfouf5fWC/Qn36KMzOr5vRQKj5sBPeADVT
 FqVOl1aU9esIgFtaStKkXwtG5/0QiKVZb6QcP7kr5ChgyemjVpw8eP8nJqTS6YEJQwbJ
 EOC7hUk1gjwTKOQm4yNSH5llcMXuvcvgm2YVtM80n4ZTJ2s+3G7tpYFaNvsR/6IPIA9n
 TmzA==
X-Gm-Message-State: APjAAAU9Ff2UrXsckCmVBG9yKJiypLrEZ/15XVZOPTAgo+l+LsFYgozc
 s9ukiyvbvXphTjqv67MI3nxWow==
X-Google-Smtp-Source: APXvYqy+YMBCnzRev3jaZPHfse2C8wO9lwEcMprVQCQotJMBsfZrRuTvaa8irwpOYdzmn8sp5OvWIQ==
X-Received: by 2002:a17:902:8509:: with SMTP id
 bj9mr9229479plb.79.1562909360992; 
 Thu, 11 Jul 2019 22:29:20 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id 196sm7991977pfy.167.2019.07.11.22.29.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Jul 2019 22:29:20 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org,
	Julien Thierry <Julien.Thierry@arm.com>
Subject: [PATCH v4.4 V2 08/43] arm64: uaccess: Don't bother eliding access_ok
 checks in __{get, put}_user
Date: Fri, 12 Jul 2019 10:57:56 +0530
Message-Id: <61ec4192da912ef3c49e2e40670ddc76d9583683.1562908075.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1562908074.git.viresh.kumar@linaro.org>
References: <cover.1562908074.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_222922_085401_2D64B1AF 
X-CRM114-Status: GOOD (  12.53  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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

commit 84624087dd7e3b482b7b11c170ebc1f329b3a218 upstream.

access_ok isn't an expensive operation once the addr_limit for the current
thread has been loaded into the cache. Given that the initial access_ok
check preceding a sequence of __{get,put}_user operations will take
the brunt of the miss, we can make the __* variants identical to the
full-fat versions, which brings with it the benefits of address masking.

The likely cost in these sequences will be from toggling PAN/UAO, which
we can address later by implementing the *_unsafe versions.

Reviewed-by: Robin Murphy <robin.murphy@arm.com>
Signed-off-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
[ v4.4: Fixed conflicts around {__get_user|__put_user}_unaligned macros ]
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm64/include/asm/uaccess.h | 62 ++++++++++++++++++--------------
 1 file changed, 36 insertions(+), 26 deletions(-)

diff --git a/arch/arm64/include/asm/uaccess.h b/arch/arm64/include/asm/uaccess.h
index fc11c50af558..a34324436ce1 100644
--- a/arch/arm64/include/asm/uaccess.h
+++ b/arch/arm64/include/asm/uaccess.h
@@ -200,30 +200,35 @@ do {									\
 			CONFIG_ARM64_PAN));				\
 } while (0)
 
-#define __get_user(x, ptr)						\
+#define __get_user_check(x, ptr, err)					\
 ({									\
-	int __gu_err = 0;						\
-	__get_user_err((x), (ptr), __gu_err);				\
-	__gu_err;							\
+	__typeof__(*(ptr)) __user *__p = (ptr);				\
+	might_fault();							\
+	if (access_ok(VERIFY_READ, __p, sizeof(*__p))) {		\
+		__p = uaccess_mask_ptr(__p);				\
+		__get_user_err((x), __p, (err));			\
+	} else {							\
+		(x) = 0; (err) = -EFAULT;				\
+	}								\
 })
 
 #define __get_user_error(x, ptr, err)					\
 ({									\
-	__get_user_err((x), (ptr), (err));				\
+	__get_user_check((x), (ptr), (err));				\
 	(void)0;							\
 })
 
-#define __get_user_unaligned __get_user
-
-#define get_user(x, ptr)						\
+#define __get_user(x, ptr)						\
 ({									\
-	__typeof__(*(ptr)) __user *__p = (ptr);				\
-	might_fault();							\
-	access_ok(VERIFY_READ, __p, sizeof(*__p)) ?			\
-		__p = uaccess_mask_ptr(__p), __get_user((x), __p) :	\
-		((x) = 0, -EFAULT);					\
+	int __gu_err = 0;						\
+	__get_user_check((x), (ptr), __gu_err);				\
+	__gu_err;							\
 })
 
+#define __get_user_unaligned __get_user
+
+#define get_user	__get_user
+
 #define __put_user_asm(instr, reg, x, addr, err)			\
 	asm volatile(							\
 	"1:	" instr "	" reg "1, [%2]\n"			\
@@ -266,30 +271,35 @@ do {									\
 			CONFIG_ARM64_PAN));				\
 } while (0)
 
-#define __put_user(x, ptr)						\
+#define __put_user_check(x, ptr, err)					\
 ({									\
-	int __pu_err = 0;						\
-	__put_user_err((x), (ptr), __pu_err);				\
-	__pu_err;							\
+	__typeof__(*(ptr)) __user *__p = (ptr);				\
+	might_fault();							\
+	if (access_ok(VERIFY_WRITE, __p, sizeof(*__p))) {		\
+		__p = uaccess_mask_ptr(__p);				\
+		__put_user_err((x), __p, (err));			\
+	} else	{							\
+		(err) = -EFAULT;					\
+	}								\
 })
 
 #define __put_user_error(x, ptr, err)					\
 ({									\
-	__put_user_err((x), (ptr), (err));				\
+	__put_user_check((x), (ptr), (err));				\
 	(void)0;							\
 })
 
-#define __put_user_unaligned __put_user
-
-#define put_user(x, ptr)						\
+#define __put_user(x, ptr)						\
 ({									\
-	__typeof__(*(ptr)) __user *__p = (ptr);				\
-	might_fault();							\
-	access_ok(VERIFY_WRITE, __p, sizeof(*__p)) ?			\
-		__p = uaccess_mask_ptr(__p), __put_user((x), __p) :	\
-		-EFAULT;						\
+	int __pu_err = 0;						\
+	__put_user_check((x), (ptr), __pu_err);				\
+	__pu_err;							\
 })
 
+#define __put_user_unaligned __put_user
+
+#define put_user	__put_user
+
 extern unsigned long __must_check __copy_from_user(void *to, const void __user *from, unsigned long n);
 extern unsigned long __must_check __copy_to_user(void __user *to, const void *from, unsigned long n);
 extern unsigned long __must_check __copy_in_user(void __user *to, const void __user *from, unsigned long n);
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
