Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ADC8182061
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 19:06:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zsKzqClCMWaMRsPNaBkCH9BqQAqjamD3g/M+2SE8GJU=; b=R0eXf4G02OCVVD
	CQUPEL+0sTbcivVk4VNB9+cyxsZLG5Rl/eT9kixrC+3MuJF9AqD677eYUMmKzqaJx3qPuVOEyjDLL
	fMM508DDEBMnpmv2YAyvMcC6y5TtT3tvdSOs/jK8mDH46V4QEtPl+XCGz5rPPWiof2qpotCj12MYe
	rGAk8/AqWtD7OXomPCx7dzxUdRgk3QoYiwXaeE2plBDPwM4V8Ns0lCdOxnKqqCQC7T+XrGgbAC34h
	FLRBPeCdr5JvzSAArFgrUOPJ/992q5frBx6ZQ2XEn3nsuZLteDKIvAhnO7lbNrleOmvU9hfaXMTf8
	TkU2UKmnx4pvWnBs0IKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC5kP-0005VX-MN; Wed, 11 Mar 2020 18:06:25 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC5iU-0002c7-QU
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 18:04:28 +0000
Received: by mail-pg1-x542.google.com with SMTP id c7so1623193pgw.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 11:04:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=n2RB1acsyVrC96k4Nlhe94YQe83/BgfB1d2c7IOitdM=;
 b=SMMeLc6ANqk7GgDpftln4a/j9mrB+eEv+CrHdyUxCMWbHiwsNM4Vu+Hv2Z81JSW1Rg
 em0QwbcF9c3YPeaKC/frgcKaHLZZYNThqhBkYzEvl2mBJFZHmnpf9d4TLlpKl/zCawyO
 6O3A53muhGGWt7u1v7HkzyRVz+URX4Prc1e99nOdOWCOSDoyc+q8epZ/iGgdqzVn0VjA
 rr5ytZQdieTJi44IEN7arqP3QT9YRuJ0FnfBjrTaMGNVwFnUZr6fwB8edh9CjVUFE7XL
 qXG95gJGUfHuJ0NTAhIpH/E+tzwDRaqKvz76dvGOy9qXwKf9RmvTYpaCnlJV8yjR+9cm
 kB+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=n2RB1acsyVrC96k4Nlhe94YQe83/BgfB1d2c7IOitdM=;
 b=bdKyMHVRWTkXkr692ivHkvGGOc98UoKeoCzQ8eXCO5+BfI5O2BAtZ0mVXao5cooAB0
 y0jxhBsSPWpg5/tc1k5c7kKcWDAT/sFH7oShv3PrqWfhCtXsa/5zMexOF6NDdMEi4/2y
 N07LBkULI6rNK+JjYqfjO2FeMdoHRkG2vbgEjfq/4+oX/cQh141YklzKpINoJkBWKCA8
 5pkSjqHPVHRi/RjE2890Hfv3vcPEgFf5JX/yjV4J8hSKQpwM+mgJxszAixBl9tVKhDCl
 LQweocuCN1lNfq/m2fPho4oeitZMDtHlUZY8ya7ncQaX71Siu7HmqH8X3zhbISf3giuC
 +vBw==
X-Gm-Message-State: ANhLgQ2Ij4bNwywbjDUdGYyPRkalYsCwi6jRCSJptclJc/fJLrRZVNK1
 CweLSKm5cWKc6OnppBi3V14jxdPYaEU=
X-Google-Smtp-Source: ADFU+vvOVuCXbzRqSVX9Y2YV9cGm0eGBymYiJ5EccXW7SSrleivtZMVvNI2byIpgu9oI3a4SkJNaag==
X-Received: by 2002:a62:a515:: with SMTP id v21mr4033151pfm.128.1583949865335; 
 Wed, 11 Mar 2020 11:04:25 -0700 (PDT)
Received: from localhost.localdomain (97-126-123-70.tukw.qwest.net.
 [97.126.123.70])
 by smtp.gmail.com with ESMTPSA id k9sm6079383pjo.19.2020.03.11.11.04.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 11:04:24 -0700 (PDT)
From: Richard Henderson <richard.henderson@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 6/6] arm64: Hoist CONFIG option out of ALTERNATIVE in uaccess.h
Date: Wed, 11 Mar 2020 11:04:16 -0700
Message-Id: <20200311180416.6509-7-richard.henderson@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200311180416.6509-1-richard.henderson@linaro.org>
References: <20200311180416.6509-1-richard.henderson@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_110426_935696_AE4D48F1 
X-CRM114-Status: GOOD (  12.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Richard Henderson <rth@twiddle.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Richard Henderson <rth@twiddle.net>

The placement of the CONFIG check, within the asm, is less than
ideal within uaccess.h.  When we have

	if (cond)
		asm("something")

and "something" turns out to be empty, the if cannot be removed
by the compiler.

Signed-off-by: Richard Henderson <rth@twiddle.net>
---
 arch/arm64/include/asm/uaccess.h | 31 ++++++++++++++++---------------
 1 file changed, 16 insertions(+), 15 deletions(-)

diff --git a/arch/arm64/include/asm/uaccess.h b/arch/arm64/include/asm/uaccess.h
index ca1acd7b95c3..90be003101f4 100644
--- a/arch/arm64/include/asm/uaccess.h
+++ b/arch/arm64/include/asm/uaccess.h
@@ -43,11 +43,14 @@ static inline void set_fs(mm_segment_t fs)
 	 * Enable/disable UAO so that copy_to_user() etc can access
 	 * kernel memory with the unprivileged instructions.
 	 */
-	if (IS_ENABLED(CONFIG_ARM64_UAO) && fs == KERNEL_DS)
-		asm(ALTERNATIVE("nop", SET_PSTATE_UAO(1), ARM64_HAS_UAO));
-	else
-		asm(ALTERNATIVE("nop", SET_PSTATE_UAO(0), ARM64_HAS_UAO,
-				CONFIG_ARM64_UAO));
+	if (IS_ENABLED(CONFIG_ARM64_UAO)) {
+		if (fs == KERNEL_DS)
+			asm(ALTERNATIVE("nop", SET_PSTATE_UAO(1),
+					ARM64_HAS_UAO));
+		else
+			asm(ALTERNATIVE("nop", SET_PSTATE_UAO(0),
+					ARM64_HAS_UAO));
+	}
 }
 
 #define segment_eq(a, b)	((a) == (b))
@@ -178,28 +181,26 @@ static inline bool uaccess_ttbr0_enable(void)
 
 static inline void __uaccess_disable_hw_pan(void)
 {
-	asm(ALTERNATIVE("nop", SET_PSTATE_PAN(0), ARM64_HAS_PAN,
-			CONFIG_ARM64_PAN));
+	if (IS_ENABLED(CONFIG_ARM64_PAN))
+		asm(ALTERNATIVE("nop", SET_PSTATE_PAN(0), ARM64_HAS_PAN));
 }
 
 static inline void __uaccess_enable_hw_pan(void)
 {
-	asm(ALTERNATIVE("nop", SET_PSTATE_PAN(1), ARM64_HAS_PAN,
-			CONFIG_ARM64_PAN));
+	if (IS_ENABLED(CONFIG_ARM64_PAN))
+		asm(ALTERNATIVE("nop", SET_PSTATE_PAN(1), ARM64_HAS_PAN));
 }
 
 #define __uaccess_disable(alt)						\
 do {									\
-	if (!uaccess_ttbr0_disable())					\
-		asm(ALTERNATIVE("nop", SET_PSTATE_PAN(1), alt,		\
-				CONFIG_ARM64_PAN));			\
+	if (IS_ENABLED(CONFIG_ARM64_PAN) && !uaccess_ttbr0_disable())	\
+		asm(ALTERNATIVE("nop", SET_PSTATE_PAN(1), alt));	\
 } while (0)
 
 #define __uaccess_enable(alt)						\
 do {									\
-	if (!uaccess_ttbr0_enable())					\
-		asm(ALTERNATIVE("nop", SET_PSTATE_PAN(0), alt,		\
-				CONFIG_ARM64_PAN));			\
+	if (IS_ENABLED(CONFIG_ARM64_PAN) && !uaccess_ttbr0_enable())	\
+		asm(ALTERNATIVE("nop", SET_PSTATE_PAN(0), alt));	\
 } while (0)
 
 static inline void uaccess_disable(void)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
