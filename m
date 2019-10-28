Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFD0DE7AF9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 22:07:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=DJ+G4+p2A147OvXQwfv4cH8ZcRx9XkVkJcbp+fI+JYk=; b=IGqwwUN2pE2CnQ9urSm1CIjtMc
	RTQuuiCs+X5RWoNA1BO6WVdO3eL/gnhx1AC9hXsnep//sIHtKiQSmafLYv2Rnfi6LO8uTb0DjHZon
	lgZn8jyYgvcKTxBHNWO/fO1h+s+IuEOIaXNbUAqdGc6obGROL9p2sHOzSqKAPOm+InKJOvGa6FhCW
	r7TuczAswbERkYxI26ZqFR2ei/FfHRhmMbCL3DZmyplsqOabKU/DsSuo7xgkCi6i8noEEM4wABhwH
	1c0pRMi/epjHsQK2KvL253PVVgdeOhLcA/1fupXsj6+1VHLRPjakFJlftn8s4aPaIdZUsGLayOWlW
	K7GAR3nA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPCEd-0008KF-6E; Mon, 28 Oct 2019 21:07:31 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPCDH-0007Tg-Ha
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 21:06:09 +0000
Received: by mail-wm1-x344.google.com with SMTP id g24so403945wmh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 28 Oct 2019 14:06:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Wt6X/0E8OEKNHUN7g3xU4aGMZDZ5EHD7/+dGHnvwGeQ=;
 b=YGEP7iPJRvBw4yNdXLHPDdf8+ai816ix7N7Bnmn+DtIkNntfuBxATktwcBQdTTghzc
 S139y8vtzCo1l3lkEZrn9e7Qr7TBeIzmnC/WIwyB/bnmVcS9v83cv/FhRIC/Yn8ghqNo
 c0RfSeGteHKp1y5HFIN2GCSf41EfH3JyBMQLdT45+h0nv7FeJ9ldioAIdVdbTRNeUu7X
 lCCe2D7wL/jdh7iRz5lkmcKKX43h5srQf5ayTjDEeb5Vaert877x5FQFZjbZS8V9MMGH
 CaT1RCOM7OWVqzXjfX4aRvXG7uuuirukdEeukUf2dmStasS8yLh7pdn0+mH4ufdgua+T
 zG9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Wt6X/0E8OEKNHUN7g3xU4aGMZDZ5EHD7/+dGHnvwGeQ=;
 b=oH1J8c1x2pQA/vBAj0xUWhz9Ymu4etf9D/OhS8JVHCIApyPv82haIg2rxunMSbv1zA
 j82iDfd3l+eVsRV7mh1kSpFqZqJRQmo5iAhM7Mi3guFXolyPvqfDfPPdbMf1n0IMMXK6
 6ODd/O+i19SO6vk84coSxUYbFhyJeCYVJuAS2+tUuB1dKHgJ2nJvQ14VJrkgEtSDeGvw
 S/9u4BH6sJp7ughaIg9I6OolLy2ZQ/USbPouoGWmGbtNTwMVC3rdYzEPO1XsBSd64TR3
 HTyKjn7AE1RGRMEKsCnV6U6KEuMKV793QpFm2jglFqxnfiPku1a2WZiXHQc8ERBUqKvq
 ZN/g==
X-Gm-Message-State: APjAAAWpTDkPodaBBNS0WpqCYgDTuuoID63EMywZxcfrni/6OVionZQb
 tlT2RCOUvamEBUokcvzJusVg6w==
X-Google-Smtp-Source: APXvYqzqAvwwu8fufnMscandR8x4T4e5vo0ImUH4MNWMeVXTw6UAGYm/xpeYwYMKAveMairVDQRveQ==
X-Received: by 2002:a1c:544e:: with SMTP id p14mr1023951wmi.17.1572296765994; 
 Mon, 28 Oct 2019 14:06:05 -0700 (PDT)
Received: from localhost.localdomain (230.106.138.88.rev.sfr.net.
 [88.138.106.230])
 by smtp.gmail.com with ESMTPSA id b196sm927822wmd.24.2019.10.28.14.06.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2019 14:06:05 -0700 (PDT)
From: Richard Henderson <richard.henderson@linaro.org>
X-Google-Original-From: Richard Henderson <rth@twiddle.net>
To: linux-arch@vger.kernel.org
Subject: [PATCH 3/6] x86: Mark archrandom.h functions __must_check
Date: Mon, 28 Oct 2019 22:05:56 +0100
Message-Id: <20191028210559.8289-4-rth@twiddle.net>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191028210559.8289-1-rth@twiddle.net>
References: <20191028210559.8289-1-rth@twiddle.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_140607_585590_704A711C 
X-CRM114-Status: GOOD (  12.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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

We cannot use the pointer output without validating the
success of the random read.

Signed-off-by: Richard Henderson <rth@twiddle.net>
---
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Borislav Petkov <bp@alien8.de>
Cc: "H. Peter Anvin" <hpa@zytor.com>
---
 arch/x86/include/asm/archrandom.h | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/x86/include/asm/archrandom.h b/arch/x86/include/asm/archrandom.h
index 5904d7d9e703..9e4ea9e53dd0 100644
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
@@ -84,22 +84,22 @@ static inline bool rdseed_int(unsigned int *v)
 #define arch_has_random()	static_cpu_has(X86_FEATURE_RDRAND)
 #define arch_has_random_seed()	static_cpu_has(X86_FEATURE_RDSEED)
 
-static inline bool arch_get_random_long(unsigned long *v)
+static inline bool __must_check arch_get_random_long(unsigned long *v)
 {
 	return arch_has_random() ? rdrand_long(v) : false;
 }
 
-static inline bool arch_get_random_int(unsigned int *v)
+static inline bool __must_check arch_get_random_int(unsigned int *v)
 {
 	return arch_has_random() ? rdrand_int(v) : false;
 }
 
-static inline bool arch_get_random_seed_long(unsigned long *v)
+static inline bool __must_check arch_get_random_seed_long(unsigned long *v)
 {
 	return arch_has_random_seed() ? rdseed_long(v) : false;
 }
 
-static inline bool arch_get_random_seed_int(unsigned int *v)
+static inline bool __must_check arch_get_random_seed_int(unsigned int *v)
 {
 	return arch_has_random_seed() ? rdseed_int(v) : false;
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
