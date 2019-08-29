Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB672A18F1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 13:37:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5SKqHnYh++enVkO0Jo1GiR2XPmXkqSMc1OOSta9dWJU=; b=rZcgHyWVkNYvOS
	H2ezohxL94dsG0hgGXcOhHwYVS3YY62gS5ZD9nqsOxh0P2NlXl1782mxWi1o+ppAJneWmNIx56plQ
	5FxWi4ivYRO0xjLLsFDvsqk/NcMz+bAbPunUdcOEqD/a1EB4hZEgRTmS6qo6uHQKz5k65XMQ9XFQ4
	FKjQn7xU65A88lClW31C1I3bxuNMakKVUYXDqi5uH8V1peM9ImC+6LrgHuO0WQfUqodAiuDL6AjPk
	uFqk2JlFurWWJ+2lsCBC14Ekav8zjSLHFSct+Nm2lV9mTJQMr275F5x1SMzwWK1/j5pVXPnyv6118
	hHcQugcJ88J7xgQSi4og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3IkE-00080g-7M; Thu, 29 Aug 2019 11:37:38 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Ihu-0005uT-2H
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 11:35:16 +0000
Received: by mail-pf1-x443.google.com with SMTP id y200so1864532pfb.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 04:35:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Lt3w372XAiP2T5A3AE8p2nBAFVuCKsgxbI6J0UJSdP8=;
 b=w34Lfs1Qqs58LGmtolXD4m8NuERCbaTGl+FkcIHv817QZ4KWsO2vTcuI6Mx2gTcM4Q
 3bKnw0mvesmQ+NPRMoZNsIDSREQdQV7hdSNJo0lpexFV/SG7ii/cwDMH7lxzQyN6Q2lK
 RBJ5fBWK47IUN/p/NIwZqvWAKE/F4fxxRF3JK4AfHAz71RLUaM4IH20p5z0mB1g9sPAc
 YD76t/u7pLj1CF3JvTIl2F3NKZ5zIqzHM8aCE8cT1lgp1x5n0RxvGLtBOJYnw3dS/V2D
 6YNsG3i/dJHFutF8HbVNmcfKrNF1iEOMIpW0UeuPYopUkDjxPDLmzAokpEDXFxNkimum
 HBpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Lt3w372XAiP2T5A3AE8p2nBAFVuCKsgxbI6J0UJSdP8=;
 b=T3jrU293HqDeQrFO5gZDtj5F9d18uFWt5jZ37+ryBfDkxCxovl0QXeNEVKDZiYS0Pp
 QRX7tiwpRVglo2bi/FX/6U91QTuyiuCf3orPhjdFncVga/jsmJex6hosBWzNePSZ+F6u
 x/POHY3Jz23CfnmavzfO6XfcZyVk9gkGZSLiAlKtdDQfUx6TH51/v5dUpn4cGaKRkIJa
 WQjzetduz5mMBGNDMWOK8+PUl8QfoFmcXkJ9hnPr2M8BDuQ39LDD9mO/icgn1KCnug1x
 Av1Az7VorAexI43O9x++nwACVWRq58q23ZTCayUrif5nm3nbT7nKPzucrfZpYrZWFjVB
 BC2Q==
X-Gm-Message-State: APjAAAX87K2/3aAHsmYs3WuFTVNXXW2FSR2XS5F6a7ePcYp3DJg58bPj
 cnFY1ziveMlxr+kIrDQvV3/TvA==
X-Google-Smtp-Source: APXvYqwx+fqeB+pn0ZHKuXRhZy+/4LS/RCtV8lbSFMSR+8TY125WQPcn5xEcV3sp/1sa81Pcpx4uLw==
X-Received: by 2002:a62:db43:: with SMTP id f64mr11200661pfg.38.1567078513287; 
 Thu, 29 Aug 2019 04:35:13 -0700 (PDT)
Received: from localhost ([122.167.132.221])
 by smtp.gmail.com with ESMTPSA id u69sm1878521pgu.77.2019.08.29.04.35.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 29 Aug 2019 04:35:12 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org, Julien Thierry <Julien.Thierry@arm.com>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH ARM64 v4.4 V3 08/44] arm64: uaccess: Don't bother eliding
 access_ok checks in __{get, put}_user
Date: Thu, 29 Aug 2019 17:03:53 +0530
Message-Id: <40fe1d91c9cd8d78ae952b821185681621f92b10.1567077734.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1567077734.git.viresh.kumar@linaro.org>
References: <cover.1567077734.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_043514_166593_FB8E7EB5 
X-CRM114-Status: GOOD (  12.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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
