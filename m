Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C31BE7AEF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 22:07:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=aLQl9gghqNpdSvlRP1RKozbnhc51aXvxefzBG6u4uU4=; b=OBHkb6OTC54uqX8Z0MIT+qDRG+
	qf9jZXkb2V8LN777uDE4zQhnvHiXkWlloVmVm83P+YFiT0VWlHk41V2xQMJBySBb60mcNQFArg+vN
	iGgB3KcoJGSQm3RigZlPvCauOJ779Okrh14VQ1DJISSZ7EyXavYvOekV6Q2jXc7ku8laE+EduLmCt
	WP1es6j/sE2qHVsgNs0N8twCZrfn+3Fc499vi/MlAxCV7qUO202pVGdXrOqYDyVm5pQdIKCpsan6V
	yZfor2viGoGkXgbL7iG+kN1j4r//yLByyulmRmiv6IwjRTrDdsGDQSw7oPvXwkCrlwgPvdS8x1FYE
	VtUmswvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPCEK-00084T-Ai; Mon, 28 Oct 2019 21:07:12 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPCDG-0007TM-LG
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 21:06:08 +0000
Received: by mail-wr1-x444.google.com with SMTP id a11so11377372wra.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 28 Oct 2019 14:06:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=HzpPHgz9dkPSBTYUxRiI5N3ILdBG2Y7xG5fdNi+CmCc=;
 b=n0bvaGSjcdm/n45EiluVOG4AFB7gD0MPIRsc9+ExLOlf95yU+Kh2aP0sBqtAI65Oje
 UI559g1TCAZjdGhIXtuL5Uw2TSU3U1tljgnLdt78YFaVCsugwccldmNW5IIRHMv1pSMM
 iNxLx2d4vvfVH859fXX7ZOZXfxhv5Wx0fkfaWZD4cCzNI056eMVSXDaQeBXzfzk52Psh
 wN/3e7MUW6L4UJyR1iFMilspC/8EJCVAJdRo8tof4+mnyYsoRAmdYJYj6JyAWwKNIYNz
 X+oLXH8QJHW0C4Wna6USrQVxiYU7+pn6klAdBYi+Gm6i/GEijMO30OgppJ/ZUOT8eJHz
 o5iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=HzpPHgz9dkPSBTYUxRiI5N3ILdBG2Y7xG5fdNi+CmCc=;
 b=fsD2n2Ew/t54ymuuA95Qu1JvXaK1gWan6eVgYmQF3kWLy2Dm+pJu8HbFLRXZQLO1Zc
 6esJeAXqumd18VMaKy8b97rZjH9KDKS5DfXxyezQxTCp6MjSl8J9gn6ejqLlkSCuih3B
 E2RFwI4yKP2yubv6XudPIp+LtR0sAUndTHDAWEQ0asTyAYD1AL6FoC69ZRQBTuwf+EfX
 3OTUS39M6zgqSrlgLGcSbgbu5CT1SrQ0fmKj2B8CG/BDvvxhhH0MXgY5SmxLqrctiUPN
 KDjETTs/QjuYCZYXYqL6kTg/PFaHmYtOiLOTclTVp9gMzVlkc2RToxF450i9mEIr2iNO
 c5OA==
X-Gm-Message-State: APjAAAVUc6Hkbh6ftj1Jv7d7gBTvcuSSi10V/pWHR2rzyg1eEisjIyP5
 lBSgiom8I3USSH8KP8f0YUumuw==
X-Google-Smtp-Source: APXvYqzFqJnVOjSOYydSnQlBlFKEVK/uejnJRRcq3NDp8SAQpeKxQWcPsIMvCpbINphaS0TGA2jWDg==
X-Received: by 2002:adf:f84f:: with SMTP id d15mr17155903wrq.112.1572296764917; 
 Mon, 28 Oct 2019 14:06:04 -0700 (PDT)
Received: from localhost.localdomain (230.106.138.88.rev.sfr.net.
 [88.138.106.230])
 by smtp.gmail.com with ESMTPSA id b196sm927822wmd.24.2019.10.28.14.06.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2019 14:06:04 -0700 (PDT)
From: Richard Henderson <richard.henderson@linaro.org>
X-Google-Original-From: Richard Henderson <rth@twiddle.net>
To: linux-arch@vger.kernel.org
Subject: [PATCH 2/6] x86: Move arch_has_random* inside CONFIG_ARCH_RANDOM
Date: Mon, 28 Oct 2019 22:05:55 +0100
Message-Id: <20191028210559.8289-3-rth@twiddle.net>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191028210559.8289-1-rth@twiddle.net>
References: <20191028210559.8289-1-rth@twiddle.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_140606_691770_ECFD7CD0 
X-CRM114-Status: GOOD (  12.31  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-s390@vger.kernel.org, x86@kernel.org, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>,
 Thomas Gleixner <tglx@linutronix.de>, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

These functions are declared generically without CONFIG_ARCH_RANDOM.
The only reason this compiles for x86 is that we currently have a
mix of inline functions are preprocessor defines.

Signed-off-by: Richard Henderson <rth@twiddle.net>
---
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Borislav Petkov <bp@alien8.de>
Cc: "H. Peter Anvin" <hpa@zytor.com>
---
 arch/x86/include/asm/archrandom.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/x86/include/asm/archrandom.h b/arch/x86/include/asm/archrandom.h
index af45e1452f09..5904d7d9e703 100644
--- a/arch/x86/include/asm/archrandom.h
+++ b/arch/x86/include/asm/archrandom.h
@@ -73,10 +73,6 @@ static inline bool rdseed_int(unsigned int *v)
 	return ok;
 }
 
-/* Conditional execution based on CPU type */
-#define arch_has_random()	static_cpu_has(X86_FEATURE_RDRAND)
-#define arch_has_random_seed()	static_cpu_has(X86_FEATURE_RDSEED)
-
 /*
  * These are the generic interfaces; they must not be declared if the
  * stubs in <linux/random.h> are to be invoked,
@@ -84,6 +80,10 @@ static inline bool rdseed_int(unsigned int *v)
  */
 #ifdef CONFIG_ARCH_RANDOM
 
+/* Conditional execution based on CPU type */
+#define arch_has_random()	static_cpu_has(X86_FEATURE_RDRAND)
+#define arch_has_random_seed()	static_cpu_has(X86_FEATURE_RDSEED)
+
 static inline bool arch_get_random_long(unsigned long *v)
 {
 	return arch_has_random() ? rdrand_long(v) : false;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
