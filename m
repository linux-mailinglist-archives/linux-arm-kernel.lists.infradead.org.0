Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 188B5E7B16
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 22:08:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=aF1DFB5aY2DU8ZEFCrK8eDCoG8enirTqVlaeQmZWGm0=; b=ZSugrXFpJiYQdA/zMATljQe3up
	YYvBAaA/eNsdBrUTlpLnsva3NTO2zJxFwOhPJouX6NkokLsm0mzImqkPMNCMz2DVnbm9y7e+aYnBW
	wvlc3q8YExPAipqH/TLkrN6U1ZoRiuZHSSnFNN5mndoSBH95Jc4CVM5jNgvsLLT0Kps16IeFTcXLO
	BWtHir7dt4qTrJypQsEBakdM1RIzApnmRoKa/HhGLn4y0WmKUVvdJM3SxXWbE04md28qhPwnD6byj
	KTteHCBbJyduNqZcm/JG4HlOFU0EFrmykV1IklYcUtMWP6RAF8BcSf/uXJcL0+MDUHDUnyf/0105F
	nXpkMDwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPCFO-0000fK-2O; Mon, 28 Oct 2019 21:08:18 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPCDK-0007WQ-Hz
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 21:06:12 +0000
Received: by mail-wr1-x444.google.com with SMTP id p4so11380522wrm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 28 Oct 2019 14:06:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=mU+g+sfz1bIovsmfwMpnLnRDz98DNUSgbeHXg3LWxbU=;
 b=ribUHw8KQSMwF+HWzboOgcGnyDaK3YUsaQY5qHoPDIig1OlIIT+RSRtjqhXe7Dbg9E
 bSBQUcVMSR2hYT8aXJgTZ6f8OGIkctk+xHOQSOwJ6Q5CwvdDqm8e88AiepxRc7ZP1ybt
 fZNDCcdVU5u+XgHEnSecAhSA4O/3UGIAmBBvg8DDG4bGvgXFaAQ8BKz/3WIkMHUfBlmS
 oKK67aICFbH6k1HpTOZAE4EfYQIf0NUv0kei21drYEvGV16iP17AW1GGbOUwYExGH1Sj
 lsicZeW7Xu2uJgnaBUUTw18H4HUdfa/VFa8ufg7ZyBeH4hFKJ43/53r6cTSoTGfZETjQ
 vB1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=mU+g+sfz1bIovsmfwMpnLnRDz98DNUSgbeHXg3LWxbU=;
 b=WJ6w9CBNe3C66AXb77/U2rZ8KA1eB7Bvv7PsEbIhKKeRPdmX+2rmdUxjqoNqs96b/c
 Z4tSDtP4thWpLv/hy3PPHrp03T67zWn1cKRFPPM8Nso3b2cHmLNaWlVLghZfIp+ONXws
 UG8NcUATmj0R1DAzStd52dK0mjpyRpottpEqHUofy1cFO4lhZ5WqUEk9jXgedvqgZLsD
 9NcA8bHCQObj/4sM4KFZMm31b4H2KTVkrdj0PO1AQ3LYUxe+pHqnTk/O3V6UlfyApt1H
 4DHb9Cog+YKoiqaNBxg4sx6R5xj+fMbSqrMm0FA14DML0oo7G05NCoXbhN1auJxIzeOW
 jUtw==
X-Gm-Message-State: APjAAAWvW/3Tw5wr89C1cLmPyIIAYx35L+tN6SV04w/eeNrcmGn9LEOD
 h/M+X3lAT8lWRBcu0hb6R5WINQ==
X-Google-Smtp-Source: APXvYqwLLcOvu9N5SeRwebeTNTR9kL0tb9M7ihMiJM5pCGfJvj4BNTg8/+5IGhg+G1oQqTj4kcEk6g==
X-Received: by 2002:adf:f192:: with SMTP id h18mr17665670wro.148.1572296769066; 
 Mon, 28 Oct 2019 14:06:09 -0700 (PDT)
Received: from localhost.localdomain (230.106.138.88.rev.sfr.net.
 [88.138.106.230])
 by smtp.gmail.com with ESMTPSA id b196sm927822wmd.24.2019.10.28.14.06.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2019 14:06:08 -0700 (PDT)
From: Richard Henderson <richard.henderson@linaro.org>
X-Google-Original-From: Richard Henderson <rth@twiddle.net>
To: linux-arch@vger.kernel.org
Subject: [PATCH 6/6] s390x: Mark archrandom.h functions __must_check
Date: Mon, 28 Oct 2019 22:05:59 +0100
Message-Id: <20191028210559.8289-7-rth@twiddle.net>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191028210559.8289-1-rth@twiddle.net>
References: <20191028210559.8289-1-rth@twiddle.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_140610_632973_BEB0F92F 
X-CRM114-Status: GOOD (  10.83  )
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
Cc: linux-s390@vger.kernel.org, Vasily Gorbik <gor@linux.ibm.com>,
 x86@kernel.org, Heiko Carstens <heiko.carstens@de.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We cannot use the pointer output without validating the
success of the random read.

Signed-off-by: Richard Henderson <rth@twiddle.net>
---
Cc: Heiko Carstens <heiko.carstens@de.ibm.com>
Cc: Vasily Gorbik <gor@linux.ibm.com>
Cc: Christian Borntraeger <borntraeger@de.ibm.com>
---
 arch/s390/include/asm/archrandom.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/s390/include/asm/archrandom.h b/arch/s390/include/asm/archrandom.h
index c67b82dfa558..f3f1ee0a8c38 100644
--- a/arch/s390/include/asm/archrandom.h
+++ b/arch/s390/include/asm/archrandom.h
@@ -33,17 +33,17 @@ static inline bool arch_has_random_seed(void)
 	return false;
 }
 
-static inline bool arch_get_random_long(unsigned long *v)
+static inline bool __must_check arch_get_random_long(unsigned long *v)
 {
 	return false;
 }
 
-static inline bool arch_get_random_int(unsigned int *v)
+static inline bool __must_check arch_get_random_int(unsigned int *v)
 {
 	return false;
 }
 
-static inline bool arch_get_random_seed_long(unsigned long *v)
+static inline bool __must_check arch_get_random_seed_long(unsigned long *v)
 {
 	if (static_branch_likely(&s390_arch_random_available)) {
 		return s390_arch_random_generate((u8 *)v, sizeof(*v));
@@ -51,7 +51,7 @@ static inline bool arch_get_random_seed_long(unsigned long *v)
 	return false;
 }
 
-static inline bool arch_get_random_seed_int(unsigned int *v)
+static inline bool __must_check arch_get_random_seed_int(unsigned int *v)
 {
 	if (static_branch_likely(&s390_arch_random_available)) {
 		return s390_arch_random_generate((u8 *)v, sizeof(*v));
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
