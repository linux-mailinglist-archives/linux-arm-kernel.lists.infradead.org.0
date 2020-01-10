Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C0D313705F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 15:56:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=abwEMMUr09LGoMKRFpismLWpiiizEH0+Ly+H1GSlHAA=; b=rlext2CfL3heMi
	uUvEaKarUHx4pUj3x6J8eo55U/b8P9yHtsEfW3eCPYP7yS1NNxTKjQpZ3RkKtW2bCG4OFyV0gPOd7
	v6yaB8L/5W1whZeof0IfPL96iFaSSS6NSp6Qesj/fNmSu/zqhsW6jIXE/8INJ8ejjw3Gc2dAZH6on
	ROaQYnVzJTXwFO4StGFPrzw9OMjd5lULZWecns9s/SJm7vDg5qVnrvwq72jhEjihXr/ggln7Js+2H
	+IOwbfLvcUYGBGqzdj7PnTwuVmX8SKt2wgvR91EKPJcbRivPfO3e8vAIFWZa1PFC0MuqugMxQu5qk
	WOzzrKCgUYQnakXmzwGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipvhg-0006FN-V2; Fri, 10 Jan 2020 14:56:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipvgL-0003fy-Bp
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 14:54:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 36B5930E;
 Fri, 10 Jan 2020 06:54:36 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B58393F6C4;
 Fri, 10 Jan 2020 06:54:35 -0800 (PST)
From: Mark Brown <broonie@kernel.org>
To: linux-arch@vger.kernel.org
Subject: [PATCH v2 04/10] linux/random.h: Remove arch_has_random,
 arch_has_random_seed
Date: Fri, 10 Jan 2020 14:54:16 +0000
Message-Id: <20200110145422.49141-5-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200110145422.49141-1-broonie@kernel.org>
References: <20200110145422.49141-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_065437_507953_53DAC9DD 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-s390@vger.kernel.org, herbert@gondor.apana.org.au, x86@kernel.org,
 Richard Henderson <richard.henderson@linaro.org>,
 Mark Brown <broonie@kernel.org>, Borislav Petkov <bp@alien8.de>,
 linux-crypto@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org, Richard Henderson <rth@twiddle.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Richard Henderson <richard.henderson@linaro.org>

The arm64 version of archrandom.h will need to be able to test for
support and read the random number without preemption, so a separate
query predicate is not practical.

Since this part of the generic interface is unused, remove it.

Signed-off-by: Richard Henderson <rth@twiddle.net>
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 include/linux/random.h | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/include/linux/random.h b/include/linux/random.h
index f189c927fdea..7fd0360908d2 100644
--- a/include/linux/random.h
+++ b/include/linux/random.h
@@ -175,10 +175,6 @@ static inline bool arch_get_random_int(unsigned int *v)
 {
 	return 0;
 }
-static inline bool arch_has_random(void)
-{
-	return 0;
-}
 static inline bool arch_get_random_seed_long(unsigned long *v)
 {
 	return 0;
@@ -187,10 +183,6 @@ static inline bool arch_get_random_seed_int(unsigned int *v)
 {
 	return 0;
 }
-static inline bool arch_has_random_seed(void)
-{
-	return 0;
-}
 #endif
 
 /* Pseudo random number generator from numerical recipes. */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
