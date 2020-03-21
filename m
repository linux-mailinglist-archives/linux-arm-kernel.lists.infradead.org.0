Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07AF118DDEE
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Mar 2020 06:14:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6yHGQLjBi39RiEHpLEu0/qz2K1K7GEHi9rFPa9L8XrI=; b=KWjtrOf64x3v/1
	mg8ljfsMfRrlQDFc8VIFFmnLH+bQ1de5WdOTlR5QDIV6DdXrT0USwDWdCjVMT9p0RelFC3xkSd3dZ
	f165Yt7u8+nOIwjRQ/ULUlzIcjc9KnX1FI10p7ZXTWZAfaqM826UUXKh+m9ycZf5e/OUGaST/NqYa
	ycTo1aNtz3WPUiL0fxPp4+P56RsF/jTESioRaGyfNHj38G4S7J2llnNK2GmoUg4NWdDJ8kK4qXBVs
	nRuiLhMBbunQBpre+PWubzWPiSaQM2WludRizW4HLseGv6E69mvbxzr4MlCi+2buorUJ3KICbnPoq
	Zqg+DTX6MzkfeJehdTug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFWSS-0003vE-4K; Sat, 21 Mar 2020 05:14:04 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFWSK-0003ua-UP
 for linux-arm-kernel@lists.infradead.org; Sat, 21 Mar 2020 05:13:59 +0000
Received: by mail-pl1-x641.google.com with SMTP id f16so3408838plj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Mar 2020 22:13:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=G4ie2ATCwbZooXJQ532fViymENcXwSAXBHLmGP5UImg=;
 b=lpYFf7zTc68lGeegRP6NhdqTJj4B+yESmmWSOOvCZmHGkYhgGQXpiGoqM9DOuAElnO
 fHx2Jnp4Qo+ALnbTgOKdQZuauX9FZlzKXxcemtBQcrSt95/AiaKxzbltfElFwzizhbUU
 aINqHV14ao1LM+JfGrL3fxL3RPxfNVJF/prlNH7QEs+2KnSw1K0NM7R7OzXzrAjID5rK
 YUtXO4SSx59bhPzb0TmINw3h94KqKyKkQklyXnmOvhIBX6V66/1y+Hf1Ws+P4thGAyqt
 sPYY3abU78tEZmHgzPH66aL64cbQ7TaQdS6veaIwNu/Y8DrFk4EhrUS1ADUdMfGZlbjE
 SxtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=G4ie2ATCwbZooXJQ532fViymENcXwSAXBHLmGP5UImg=;
 b=kyFc4FKU5dHZzJfu3qj+ZebLn5plTy5ShUbaJ3bVPAXQM8joTRHjVFN9SlrvhRNOgo
 XA+ZbaA9v0VZ+xpjkpNoNElb7zdg/aXHGogTsjoYAJQGHeBWzKr3gFzSqi8F7MXS01H8
 9S6TDAejQNWvBbpCNooV8g2XOeFPJqPvWGJds2xiqM+MZDfq3gZYpqiVNhF/iR87WInZ
 QRm5Q1kBz8sqhcpgBOpzsrSgZAn2hn/pAANCK1j39ablLBW4NCtzRvdu1OTPkG81SMxj
 0b9zNLlvb7GMVqpagMdotI1RfYDzNJMQtffldRD7/x9HHi6XT27MGNFqhGoBYOeWKepN
 ysYw==
X-Gm-Message-State: ANhLgQ11Q0rXq4CBvgpWaBy4IzCtY7Fo5OWQyOPIlPUHe+1lTm8r+XKv
 qZXouohXzrMZFlEbMzZ8Fyo75KPvJsc=
X-Google-Smtp-Source: ADFU+vvOkMHAhqhNjqIAE3bf3xyX5vtsXrtwqU9BWtyW1VP/wGTKquw3jXw+D4jqCJTzq/hA5uXXhA==
X-Received: by 2002:a17:902:a5c4:: with SMTP id
 t4mr12305734plq.242.1584767635736; 
 Fri, 20 Mar 2020 22:13:55 -0700 (PDT)
Received: from localhost.localdomain (97-126-123-70.tukw.qwest.net.
 [97.126.123.70])
 by smtp.gmail.com with ESMTPSA id 74sm7078317pfy.120.2020.03.20.22.13.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Mar 2020 22:13:55 -0700 (PDT)
From: Richard Henderson <richard.henderson@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/1] arm64: Simplify __range_ok
Date: Fri, 20 Mar 2020 22:13:52 -0700
Message-Id: <20200321051352.16484-2-richard.henderson@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200321051352.16484-1-richard.henderson@linaro.org>
References: <20200321051352.16484-1-richard.henderson@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_221357_325142_42F2E134 
X-CRM114-Status: GOOD (  13.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, robin.murphy@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The general case is not quite as compact as the inline assembly,
but with a sufficiently advanced compiler it is only 6 insns vs 5.

The real improvement comes from assuming that limit is never tiny,
and using __builtin_constant_p to make sure the constant folding
does not go awry.  This produces a 2 insn sequence even for older
compilers.

Signed-off-by: Richard Henderson <richard.henderson@linaro.org>
---
 arch/arm64/include/asm/uaccess.h | 31 +++++++++++++------------------
 1 file changed, 13 insertions(+), 18 deletions(-)

diff --git a/arch/arm64/include/asm/uaccess.h b/arch/arm64/include/asm/uaccess.h
index 32fc8061aa76..683727696dc3 100644
--- a/arch/arm64/include/asm/uaccess.h
+++ b/arch/arm64/include/asm/uaccess.h
@@ -60,7 +60,8 @@ static inline void set_fs(mm_segment_t fs)
  */
 static inline unsigned long __range_ok(const void __user *addr, unsigned long size)
 {
-	unsigned long ret, limit = current_thread_info()->addr_limit;
+	unsigned long limit = current_thread_info()->addr_limit;
+	unsigned long iaddr;
 
 	/*
 	 * Asynchronous I/O running in a kernel thread does not have the
@@ -72,24 +73,18 @@ static inline unsigned long __range_ok(const void __user *addr, unsigned long si
 		addr = untagged_addr(addr);
 
 	__chk_user_ptr(addr);
-	asm volatile(
-	// A + B <= C + 1 for all A,B,C, in four easy steps:
-	// 1: X = A + B; X' = X % 2^64
-	"	adds	%0, %3, %2\n"
-	// 2: Set C = 0 if X > 2^64, to guarantee X' > C in step 4
-	"	csel	%1, xzr, %1, hi\n"
-	// 3: Set X' = ~0 if X >= 2^64. For X == 2^64, this decrements X'
-	//    to compensate for the carry flag being set in step 4. For
-	//    X > 2^64, X' merely has to remain nonzero, which it does.
-	"	csinv	%0, %0, xzr, cc\n"
-	// 4: For X < 2^64, this gives us X' - C - 1 <= 0, where the -1
-	//    comes from the carry in being clear. Otherwise, we are
-	//    testing X' - C == 0, subject to the previous adjustments.
-	"	sbcs	xzr, %0, %1\n"
-	"	cset	%0, ls\n"
-	: "=&r" (ret), "+r" (limit) : "Ir" (size), "0" (addr) : "cc");
 
-	return ret;
+	/*
+	 * Quite a lot of range checks use sizeof(some_type), and are
+	 * therefore constant.  If we can assume that limit is never unusably
+	 * small, then we can rearrange the computation to avoid the need for
+	 * 65-bit arithmetic.  Arbitrary choice for size limit of 1MiB.
+	 */
+	iaddr = (unsigned long)addr;
+	if (__builtin_constant_p(size) && size > 0 && size < 0x100000)
+		return iaddr <= limit + 1 - size;
+
+	return (__uint128_t)iaddr + size <= (__uint128_t)limit + 1;
 }
 
 #define access_ok(addr, size)	__range_ok(addr, size)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
