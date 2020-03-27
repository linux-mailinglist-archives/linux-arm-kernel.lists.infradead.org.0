Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7985194F90
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 04:09:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8FobRAG6ycA5UmRpkXjbOFeL3rMzrTKZ/zHrJvG91vQ=; b=QF/nA0n3mgyWwu
	dfCYJV7oObHfZI2PAHyu3b3LAs+3Yl9xxcgEZpS1T5V6MZTcvlBWq28vkCRUrL2To30Tof1pCexdU
	Ovpr6vrbyg0/HOLTBZqUvYdw19KgcpXGNM0EGj5tN0zImvZU3IxRH3fb+UZS+MYQYEULdTya7BksE
	0ap+N+KCeRxtP3n4xNMnLzOzrSm7gbgpjwyxQHz6Ls2D+Udnx98N+vNWGj9lzkN+gx0R3VE+hUNfr
	VqWtpFYaLPBRK+0Y7J/JI1Mwa+wrz4S/UNstd9aW4hnIa9y7OV+Agkn1ZRap+FiiVuLlqoGfT8rUt
	rRJ4G63NBgeIsceblaOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHfNN-0007ZU-IC; Fri, 27 Mar 2020 03:09:41 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHfN5-0007Z6-4d
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 03:09:25 +0000
Received: by mail-pf1-x441.google.com with SMTP id f206so3811247pfa.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Mar 2020 20:09:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=s00S2WF4a1FSMQ64mmj0ed82IBitfTUffX7dKe4blvE=;
 b=atGASx9edXKR6Oni7bx2DHvwu8QXYC2ttjC/Aw398dYWaNnXTRirM8mrbZ/KEQKGyc
 5ZUI1DvLXPxkeoXiWOoIGWgz/ffp25ocFACp0Syk9qrwv0m8AD7aHFkGYF0uZ8W4kg71
 FlKWCvqjBo8T/DYuShnPZAGP0Yh5Wcah3QIaiLmY1j4H7Sbjei+pp4eKTVwyR/2c95Wu
 7IZXlHIk4rWxK1lj+86ex1i8v/a+l5o84ddSRh8DC/U/kpndsIhIfud/CzugZn7hiQ4u
 5uZkQALi02TJgDwlxEUCX7zIlSG42mj2Ds8pPVs12Vr5sPj9Q3qazFjVyFZ3Aj/IJfBR
 nyng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=s00S2WF4a1FSMQ64mmj0ed82IBitfTUffX7dKe4blvE=;
 b=OqmutWLM+tUSA34Emvbvnv7nk3Xjp3T8mKzBYmmh71eMQr7+e7i2u5zkeqFj5g+SK/
 WrRApfk6cBuZBHauuSZ/4EKN9U3+SOUlCr6k0OecIuWXgx8+3zh4yQk449QxKqXNswC3
 xzvvl7cMxqHb6h+tg+dLEoK3IqMnD8FoV8FVU800irgAkWc6zDWisKrSLhESGElwL6XJ
 qtW+PAEQX9T6CNGGKelCpRCkOefDODK8i8OTNGGUgq26Lsur7v4JaoZLaqqjSNlajW/o
 65zRifMcJ3WMYxENUwDddC0SAUSgKBDlDhTnl2ScYTVHZyO1HizSxLATThCAUstLxlhy
 Gzkg==
X-Gm-Message-State: ANhLgQ2myEohAGSJAkDoA54Qk2YlgqBahRuHGT2q9EoT9p9O1wO3aSXt
 w/JrkYd4bbZ/2kP5HFpUrmGLP+JVW70=
X-Google-Smtp-Source: ADFU+vtfLxuQAU7NyKeNAR1s80cvb7uZqln11GvXJe+5dyatrxg/bnz7dYicpiAiE/qwCoan8jOJTw==
X-Received: by 2002:a63:4502:: with SMTP id s2mr11918210pga.391.1585278559715; 
 Thu, 26 Mar 2020 20:09:19 -0700 (PDT)
Received: from localhost.localdomain (174-21-138-234.tukw.qwest.net.
 [174.21.138.234])
 by smtp.gmail.com with ESMTPSA id o65sm2876446pfg.187.2020.03.26.20.09.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2020 20:09:19 -0700 (PDT)
From: Richard Henderson <richard.henderson@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2] arm64: Simplify __range_ok
Date: Thu, 26 Mar 2020 20:09:18 -0700
Message-Id: <20200327030918.7292-1-richard.henderson@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_200923_336913_94660A0C 
X-CRM114-Status: GOOD (  13.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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

Thanks for the v1 review, Mark.

Text section size change:

  $ scripts/bloat-o-meter -t vmlinux{-orig,} | tail -1

  * When built with gcc-10 (master) + cmpti patch set:
    Total: Before=12820824, After=12774708, chg -0.36%

  * When built with gcc-7.5.0-3ubuntu1~18.04:
    Total: Before=13564038, After=13513258, chg -0.37%

Changes in v2:
  * Adjust initialization of iaddr.
  * Use USER_DS as the constant limit and update commentary.


r~

---
 arch/arm64/include/asm/uaccess.h | 32 +++++++++++++-------------------
 1 file changed, 13 insertions(+), 19 deletions(-)

diff --git a/arch/arm64/include/asm/uaccess.h b/arch/arm64/include/asm/uaccess.h
index 32fc8061aa76..04ef201e6179 100644
--- a/arch/arm64/include/asm/uaccess.h
+++ b/arch/arm64/include/asm/uaccess.h
@@ -60,7 +60,8 @@ static inline void set_fs(mm_segment_t fs)
  */
 static inline unsigned long __range_ok(const void __user *addr, unsigned long size)
 {
-	unsigned long ret, limit = current_thread_info()->addr_limit;
+	unsigned long limit = current_thread_info()->addr_limit;
+	unsigned long iaddr = (unsigned long)addr;
 
 	/*
 	 * Asynchronous I/O running in a kernel thread does not have the
@@ -72,24 +73,17 @@ static inline unsigned long __range_ok(const void __user *addr, unsigned long si
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
-
-	return ret;
+
+	/*
+	 * The minimum value for limit is USER_DS, and quite a lot of
+	 * range checks use sizeof(some_type).  With both constants,
+	 * we can rearrange the computation to avoid the need for
+	 * 65-bit arithmetic.
+	 */
+	if (__builtin_constant_p(size) && size > 0 && size < USER_DS)
+		return iaddr <= limit + 1 - size;
+
+	return (__uint128_t)iaddr + size <= (__uint128_t)limit + 1;
 }
 
 #define access_ok(addr, size)	__range_ok(addr, size)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
