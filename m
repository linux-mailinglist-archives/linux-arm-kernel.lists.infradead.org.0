Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 787BEF1833
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 15:15:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xffFkZthsg8+fa6DNx87sLA3PQepgtvob9kuONigqaA=; b=ljrPYzFSFloHQISdbaE83Ejitb
	LjMKMt5gsonC/SbUWjWgE22fWsAMwpyuKr1qjxKjLufT9S2EjWB/A3nfokhYI7UehTd2lbYrzvJBf
	sjy4IwaY2qwGx5mdYAN3xOcSHzX20rttc0EHx/7y23ZZ8UsEBW9SZxMG9xCSu5MHC/1CBGK5B53vN
	WoJPerZ/q0cyCOMGKoBR9d51FDvzTq4BBjLJbW2dVyC/catjAmHjVHEWLlKdoQaWqPYaVqwz44Q1A
	Wq5l0SkdvQhNrAjuBj1L2i8b7IUbTluW6e+AHBifY3S/BhfnNr+XobcrZTmlJFJI0KAoQTqi9DSdH
	ej9yz0NA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSM5L-0001AK-VU; Wed, 06 Nov 2019 14:14:59 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSM3z-0008Ih-Jg
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 14:13:37 +0000
Received: by mail-wr1-x444.google.com with SMTP id e6so24131616wrw.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 Nov 2019 06:13:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=U6fBBHvVLMFc3f5G49uqUA0oEjUKRfSKZZVGrXe7yqU=;
 b=oHHyP9AxSmf/91/+kpsv96IW5mCrfizqwOEzQn77TJGE4AA2TD2YE3WvYlno86vRrQ
 3StHv1NQbhGvXwAhJk/7vyPl7kycnXc0qSnPpxKeCGP/oUNgicAcN3rLEnV4yJ2ZPWxI
 CcnqFRzZJteQfh75tsK/Dt4GRIgBQyKsAz4bB/OplfiKxsnhAYgXcW77Qa7uOUBHdNRn
 z/EO4axjbLqUY1SiZ0WZo/MIzMQotVjg9Ny55z9wlWKbVipolH1vvOmbccbra6On6B2W
 pnOOwOtcRR3Af+/5TPl6TnpoBlTy+VoxpdgYTBzZzIpphqhdQS2iv3RM/Blyw8vyoFAM
 FBhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=U6fBBHvVLMFc3f5G49uqUA0oEjUKRfSKZZVGrXe7yqU=;
 b=jQTU1jbZicVdXmHXZGEgtyLnr387a6vu0e1UM4GgK4QRl+dfdVO6Eeeu93WhPtBKWb
 vRA4/RgklovPg7ij3Niv36OOyFl7T3K0hRS7d4gth4nKIyj5oMqa6LNLBRLpVUwFeU/s
 QEjI/6OEfAkAQEKQtQz9UQoR8vfifZ+D+bdBBLqcxf4e7s3LcMLvrSSkSgYMvOXcuQ/4
 zX/1hZs2NiTNrqfiZxe3giGJ+llAM0+Vkmu6qu01uXZD5GWep64ougJVw4yxiN+4pjm3
 iDDthScQhyiNLMIL8dBOiZI0dkr9DF/7YJ6143+reSzKAO2Lc0cqzWE55/dIGs9KcpaC
 RC5w==
X-Gm-Message-State: APjAAAWotCk0+CvzQ6w+Bpt5LfJmUlzIwkRERgc4cbejo77oA3Kd66gi
 WbSlXBnjCoDfACkUkxHhDfM6MQ==
X-Google-Smtp-Source: APXvYqwTW8Co1NkDLMiDoMz76SFxqWV6RP7eDEW8xmbcxt45PK42CapSIJfdZxsGpwR+XbY41YQJxg==
X-Received: by 2002:adf:fc0a:: with SMTP id i10mr2719969wrr.257.1573049614286; 
 Wed, 06 Nov 2019 06:13:34 -0800 (PST)
Received: from localhost.localdomain
 (31.red-176-87-122.dynamicip.rima-tde.net. [176.87.122.31])
 by smtp.gmail.com with ESMTPSA id b3sm2837556wma.13.2019.11.06.06.13.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Nov 2019 06:13:33 -0800 (PST)
From: Richard Henderson <richard.henderson@linaro.org>
X-Google-Original-From: Richard Henderson <rth@twiddle.net>
To: linux-crypto@vger.kernel.org
Subject: [PATCH v2 07/10] x86: Mark archrandom.h functions __must_check
Date: Wed,  6 Nov 2019 15:13:05 +0100
Message-Id: <20191106141308.30535-8-rth@twiddle.net>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191106141308.30535-1-rth@twiddle.net>
References: <20191106141308.30535-1-rth@twiddle.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_061335_659237_54CA26A0 
X-CRM114-Status: GOOD (  11.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 herbert@gondor.apana.org.au, x86@kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We must not use the pointer output without validating the
success of the random read.

Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
Signed-off-by: Richard Henderson <rth@twiddle.net>
---
 arch/x86/include/asm/archrandom.h | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/x86/include/asm/archrandom.h b/arch/x86/include/asm/archrandom.h
index feb59461046c..7a4bb1bd4bdb 100644
--- a/arch/x86/include/asm/archrandom.h
+++ b/arch/x86/include/asm/archrandom.h
@@ -27,7 +27,7 @@
 
 /* Unconditional execution of RDRAND and RDSEED */
 
-static inline bool rdrand_long(unsigned long *v)
+static inline bool __must_check rdrand_long(unsigned long *v)
 {
 	bool ok;
 	unsigned int retry = RDRAND_RETRY_LOOPS;
@@ -41,7 +41,7 @@ static inline bool rdrand_long(unsigned long *v)
 	return false;
 }
 
-static inline bool rdrand_int(unsigned int *v)
+static inline bool __must_check rdrand_int(unsigned int *v)
 {
 	bool ok;
 	unsigned int retry = RDRAND_RETRY_LOOPS;
@@ -55,7 +55,7 @@ static inline bool rdrand_int(unsigned int *v)
 	return false;
 }
 
-static inline bool rdseed_long(unsigned long *v)
+static inline bool __must_check rdseed_long(unsigned long *v)
 {
 	bool ok;
 	asm volatile(RDSEED_LONG
@@ -64,7 +64,7 @@ static inline bool rdseed_long(unsigned long *v)
 	return ok;
 }
 
-static inline bool rdseed_int(unsigned int *v)
+static inline bool __must_check rdseed_int(unsigned int *v)
 {
 	bool ok;
 	asm volatile(RDSEED_INT
@@ -80,22 +80,22 @@ static inline bool rdseed_int(unsigned int *v)
  */
 #ifdef CONFIG_ARCH_RANDOM
 
-static inline bool arch_get_random_long(unsigned long *v)
+static inline bool __must_check arch_get_random_long(unsigned long *v)
 {
 	return static_cpu_has(X86_FEATURE_RDRAND) ? rdrand_long(v) : false;
 }
 
-static inline bool arch_get_random_int(unsigned int *v)
+static inline bool __must_check arch_get_random_int(unsigned int *v)
 {
 	return static_cpu_has(X86_FEATURE_RDRAND) ? rdrand_int(v) : false;
 }
 
-static inline bool arch_get_random_seed_long(unsigned long *v)
+static inline bool __must_check arch_get_random_seed_long(unsigned long *v)
 {
 	return static_cpu_has(X86_FEATURE_RDSEED) ? rdseed_long(v) : false;
 }
 
-static inline bool arch_get_random_seed_int(unsigned int *v)
+static inline bool __must_check arch_get_random_seed_int(unsigned int *v)
 {
 	return static_cpu_has(X86_FEATURE_RDSEED) ? rdseed_int(v) : false;
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
