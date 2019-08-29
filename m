Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B665A18C7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 13:35:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wVE5f/Q5Nj3SOHmGothpeltT7CJaCfVTPP9qGOmGPUM=; b=Tbg4WAL5SiL1tX
	hLssBDZzYjbDrJzhhyf5KJHZZ2Y4HYKXyTSJswt3QsiVAUj0kPUXqm3QFL8MKy1JoJ3T95w6eLK0B
	+jqBh8mOtZitRS2Dx45gLZB5Kk7APNXpWoUDN8VXkQwPSro/LZbF6g8E8VytWjVuC+Rerl9P5fnpW
	U7Mlk1T0ytTaTAMt+pk8BSo2AyZX02T9eSkXiMZKaVesLPYQ87QcotZTZoPP6EiDP8L6s1zrf+P8m
	2QIWXXn0TRkACxNM9cyMiD2TKiuj0vjGbiX0NR4rxNPn7SR1f1IU/U5xsKYLybmFjpe5hQwyRwce9
	8gCl9AUOLj9Qr0c7gwaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3IiF-0006BS-Gd; Thu, 29 Aug 2019 11:35:35 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Ihb-0004hC-Kw
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 11:34:56 +0000
Received: by mail-pf1-x444.google.com with SMTP id v12so1848938pfn.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 04:34:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=t+8ZINgorfc9/vHqnYTLmiCH63MmZJ4ah1lcUclNBnY=;
 b=nCZcANTj/VNAghMCqmhGdelYjpzJSNUODI1MeolRwGX3zV0RZ6cTZyhBDhxf30vbvg
 IkLKsTO09Sw7p8F+QQZ/dyIU6LDSLt14M+i7RWDo+xmqe+7UZrE1gpasqOae5bUnmtnY
 bZYtRNqdELatX3EBN5JSjhvVUEazVL+8ZG4DKfRLhmxrbw+IKn6J/1c6V2cMMkThVNvr
 +HjrmOBBAziBdsZj2nUzXPwD5hES6Ujave3wFaUXCN3sqQeC9opJK2OXRegCxJPNivSv
 CBPquIEQBdQjpnSgkAFjNOyT8/fSEdG1h4P3pvDHVQvjfjJjVzJZVORmthdGiEFBUzA1
 zKgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=t+8ZINgorfc9/vHqnYTLmiCH63MmZJ4ah1lcUclNBnY=;
 b=Edb/dR/ZvSni1tMFBSGgttr+GT0f3qWa6ks9IyP2QaY8Mb7DIJZT6hfQmxLkHrnCxa
 mf4pl8Lub85AydeRD5piI8XzhZpGxRgsUlOgOaTu0s6iDTDF+hx2y68cAaEo5X1Y0x86
 /lJJIZnGYaJygLUC/Uqnp1Kd8GfO94FnU7XawQkQcrwsrZDRJt8uqNJ2qrsM3FY9ObA4
 9m4Qhqg4oYGf9qts4jxMdXaj03L8G9/KbnDXN3jj6YiN4/UOsbck1MQfGtjTuQefuebM
 VN8v3J1NkzzjSJ7tkWbs6mac3t95hDn1t1BHmUm6V+Mfnsfi9Dg4hZimxjeAVBzeIhvd
 /7pA==
X-Gm-Message-State: APjAAAUoNLT+S5q8d2hw/j8xeyMy3pb5zJmDlk/9LaGp+7DWrGXFSwJ4
 AsJY5LO92QHGS9H0PC3A7kxibTYqWCA=
X-Google-Smtp-Source: APXvYqwVAEkYsaqs2EGjLMxvvx5pOK5LU4zwdYV4A967VszTg1UARgiOFPbnuWKUVg2RyXVB8OHOIQ==
X-Received: by 2002:a62:53c3:: with SMTP id
 h186mr10792040pfb.178.1567078495033; 
 Thu, 29 Aug 2019 04:34:55 -0700 (PDT)
Received: from localhost ([122.167.132.221])
 by smtp.gmail.com with ESMTPSA id a13sm2564706pfn.104.2019.08.29.04.34.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 29 Aug 2019 04:34:54 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org, Julien Thierry <Julien.Thierry@arm.com>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH ARM64 v4.4 V3 01/44] arm64: barrier: Add CSDB macros to
 control data-value prediction
Date: Thu, 29 Aug 2019 17:03:46 +0530
Message-Id: <4ba4e0d015f2e044e3eaf57e1239ae3e12d5a80e.1567077734.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1567077734.git.viresh.kumar@linaro.org>
References: <cover.1567077734.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_043455_682753_1B2CF5BE 
X-CRM114-Status: GOOD (  10.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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

commit 669474e772b952b14f4de4845a1558fd4c0414a4 upstream.

For CPUs capable of data value prediction, CSDB waits for any outstanding
predictions to architecturally resolve before allowing speculative execution
to continue. Provide macros to expose it to the arch code.

Reviewed-by: Mark Rutland <mark.rutland@arm.com>
Signed-off-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm64/include/asm/assembler.h | 7 +++++++
 arch/arm64/include/asm/barrier.h   | 2 ++
 2 files changed, 9 insertions(+)

diff --git a/arch/arm64/include/asm/assembler.h b/arch/arm64/include/asm/assembler.h
index f68abb17aa4b..683c2875278f 100644
--- a/arch/arm64/include/asm/assembler.h
+++ b/arch/arm64/include/asm/assembler.h
@@ -95,6 +95,13 @@
 	dmb	\opt
 	.endm
 
+/*
+ * Value prediction barrier
+ */
+	.macro	csdb
+	hint	#20
+	.endm
+
 #define USER(l, x...)				\
 9999:	x;					\
 	.section __ex_table,"a";		\
diff --git a/arch/arm64/include/asm/barrier.h b/arch/arm64/include/asm/barrier.h
index f2d2c0bbe21b..574486634c62 100644
--- a/arch/arm64/include/asm/barrier.h
+++ b/arch/arm64/include/asm/barrier.h
@@ -28,6 +28,8 @@
 #define dmb(opt)	asm volatile("dmb " #opt : : : "memory")
 #define dsb(opt)	asm volatile("dsb " #opt : : : "memory")
 
+#define csdb()		asm volatile("hint #20" : : : "memory")
+
 #define mb()		dsb(sy)
 #define rmb()		dsb(ld)
 #define wmb()		dsb(st)
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
