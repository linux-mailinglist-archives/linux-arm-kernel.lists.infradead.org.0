Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8A91A18EC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 13:36:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BzPMhrFXGXOlk8TywbHUNZU5N0LGvRG5V1LZIu9o7EM=; b=JDDSLBabdoSzUG
	Sr2SCSzbL7rH7SOFD+iA23/dhZvPdUJke8wYpf66R5AVuLXWzhmWqwKmihBXmWTGaf2DKCgQSZAFf
	vD6dnSoAiqRmbUhBXNdwzXVsqHdlvmEPFeFIKcsFFtX1/BlhxKqCIDvxeSMBMGUNQC8yv9sJdtnmf
	aK4/ClXbyeZaRjVYocV0BFTwEHR6vXvetMOeoyTY1Au7RE9FoEOmU7LvNrfUaCjmglvdHukC+d8KP
	u0NN3YieT2qn2Ek5VnhmqvM0ChNTDD+1ZnoUlRcsjG+CeddEkW4CAk5DnoyauTeOh2Ut7RYct3kiM
	VAlMlWIJ0gmmxmoTMuuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3IjS-0007KO-On; Thu, 29 Aug 2019 11:36:50 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Ihm-00059V-Fb
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 11:35:09 +0000
Received: by mail-pg1-x541.google.com with SMTP id e11so1447708pga.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 04:35:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=oplH30x1zLW/kw5XTQuFI7s72sVvdi1RahKBb4zAIVI=;
 b=Xf1eInn9bQckSytjmO3NZ5/eRTeKWleC2WOGzywPePMbSDrayr5Mvoh1hJJ887odiD
 +uxT7jS9wwYMnJs+l8+wkk+nrt7MjwJhkrzIxqo5TPyhhYIhJqUcSnUt1oHQurOV8I0D
 PnDttS+g1ESZBtPXTLFjE4Go5uctTdGolkIWNPXVhwhp4iDHldgEpjd+1oceDm2jOPE1
 W+s+s4ne77To9Cwp3NuAv/YSwYJ1V/DAaz+vkR4cK0rxOa0W4vE9G9/QI22rQxrq6+nL
 9eyE3wvQitkt67/4NRHaOY4izkTpKZ9zJkDWO5JPe8b86kEXl8PWIPfXeehgxMgfXAdA
 gy4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=oplH30x1zLW/kw5XTQuFI7s72sVvdi1RahKBb4zAIVI=;
 b=cjsatKzGVCvfA3Kzns6mjbfFP2sASC19V3daGkF8wE87EWz012YojDbZfTi8iFbDdg
 ew5R5EdbZy7P1qzscVfa9LeDzWkoGRR47lEGViJV4N9V26EF6fqvshjydyuhUFNSui9a
 oU6p2UEgJ2mtTlEEYEVUBvb6zfj0KL7NkNHyCaP0ULw58FXZIqtclOFJBxJmiLNIUmly
 csSRVc+DV6xYHI6CGkn8/AbIJDy2D1o8EyQhWZ8E3Ybzf2U1HCIlppR8xUVThMPgJMKX
 U0UlUJmq7bsOVIJ1XpTB50gcDm/w81TYS/NRSHMuvJH6xOL8P2LIyBZvSqiHckqmSw8J
 lcig==
X-Gm-Message-State: APjAAAUy+xOXwJExk7Nkj1vchIW8xu8HHsFA4MilcATevmfofRq1N2bQ
 4oKNkKysTHi6/kIU+6KRfdr6mg==
X-Google-Smtp-Source: APXvYqyPp6Af2woejDXifmiwTFcO10cRM9AxOIZl5XK9s7/OHnjwlap+4+uUEbC5/+ahBYM/O6VUwg==
X-Received: by 2002:a17:90b:14c:: with SMTP id
 em12mr9062547pjb.22.1567078505451; 
 Thu, 29 Aug 2019 04:35:05 -0700 (PDT)
Received: from localhost ([122.167.132.221])
 by smtp.gmail.com with ESMTPSA id k14sm2591617pfi.98.2019.08.29.04.35.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 29 Aug 2019 04:35:04 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org, Julien Thierry <Julien.Thierry@arm.com>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH ARM64 v4.4 V3 05/44] arm64: Use pointer masking to limit
 uaccess speculation
Date: Thu, 29 Aug 2019 17:03:50 +0530
Message-Id: <f26c719baa5df560360fb3bbb7483385dd5cb821.1567077734.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1567077734.git.viresh.kumar@linaro.org>
References: <cover.1567077734.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_043506_716329_F3C5F811 
X-CRM114-Status: GOOD (  13.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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

From: Robin Murphy <robin.murphy@arm.com>

commit 4d8efc2d5ee4c9ccfeb29ee8afd47a8660d0c0ce upstream.

Similarly to x86, mitigate speculation past an access_ok() check by
masking the pointer against the address limit before use.

Even if we don't expect speculative writes per se, it is plausible that
a CPU may still speculate at least as far as fetching a cache line for
writing, hence we also harden put_user() and clear_user() for peace of
mind.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
Signed-off-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm64/include/asm/uaccess.h | 26 +++++++++++++++++++++++---
 1 file changed, 23 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/include/asm/uaccess.h b/arch/arm64/include/asm/uaccess.h
index c625cc5531fc..75363d723262 100644
--- a/arch/arm64/include/asm/uaccess.h
+++ b/arch/arm64/include/asm/uaccess.h
@@ -121,6 +121,26 @@ static inline unsigned long __range_ok(unsigned long addr, unsigned long size)
 #define access_ok(type, addr, size)	__range_ok((unsigned long)(addr), size)
 #define user_addr_max			get_fs
 
+/*
+ * Sanitise a uaccess pointer such that it becomes NULL if above the
+ * current addr_limit.
+ */
+#define uaccess_mask_ptr(ptr) (__typeof__(ptr))__uaccess_mask_ptr(ptr)
+static inline void __user *__uaccess_mask_ptr(const void __user *ptr)
+{
+	void __user *safe_ptr;
+
+	asm volatile(
+	"	bics	xzr, %1, %2\n"
+	"	csel	%0, %1, xzr, eq\n"
+	: "=&r" (safe_ptr)
+	: "r" (ptr), "r" (current_thread_info()->addr_limit)
+	: "cc");
+
+	csdb();
+	return safe_ptr;
+}
+
 /*
  * The "__xxx" versions of the user access functions do not verify the address
  * space - it must have been done previously with a separate "access_ok()"
@@ -193,7 +213,7 @@ do {									\
 	__typeof__(*(ptr)) __user *__p = (ptr);				\
 	might_fault();							\
 	access_ok(VERIFY_READ, __p, sizeof(*__p)) ?			\
-		__get_user((x), __p) :					\
+		__p = uaccess_mask_ptr(__p), __get_user((x), __p) :	\
 		((x) = 0, -EFAULT);					\
 })
 
@@ -259,7 +279,7 @@ do {									\
 	__typeof__(*(ptr)) __user *__p = (ptr);				\
 	might_fault();							\
 	access_ok(VERIFY_WRITE, __p, sizeof(*__p)) ?			\
-		__put_user((x), __p) :					\
+		__p = uaccess_mask_ptr(__p), __put_user((x), __p) :	\
 		-EFAULT;						\
 })
 
@@ -297,7 +317,7 @@ static inline unsigned long __must_check copy_in_user(void __user *to, const voi
 static inline unsigned long __must_check clear_user(void __user *to, unsigned long n)
 {
 	if (access_ok(VERIFY_WRITE, to, n))
-		n = __clear_user(to, n);
+		n = __clear_user(__uaccess_mask_ptr(to), n);
 	return n;
 }
 
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
