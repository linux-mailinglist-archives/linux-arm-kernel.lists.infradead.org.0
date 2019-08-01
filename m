Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E47087D76E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 10:23:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hjb9eKkHdqy2UUc8rCUyp1iGJRzHDWUHCYJwvCG2yQA=; b=GhxfQSMItoObBu
	z5lMdaDhfIqGwv4EEhVfTrCVf5j9RqtCn+UiARjv5S8/U+k/YDGUIRgYYm14lS3POIy5QW/skUxaE
	9qR1EF52+WBrX1mDXaOLZ6kqCQCvE+y1cjKUIV3PZHb3Qr8+5uYFhNrU6xPdH0YNWJXbVXUL72fks
	U8e/AP8i/VhNqHrH57Zw3T4yyUx6/8yJsdn4alsleVaHeZMZq8Cby6O1drHH9tB6LIrTvYbE9GEpd
	IbE6rKl1xMniFvAnq3n0YRborTm6WUrdT7qbXG29BSb2uusOalsbryuoQ+mLpI4D0aH+O3KlbbHQH
	Y6zkmTbzjAWOvh8jojLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht6N3-0006Ll-Gk; Thu, 01 Aug 2019 08:23:33 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht6K1-0002G3-Tt
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 08:20:27 +0000
Received: by mail-pl1-x644.google.com with SMTP id 4so24862999pld.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 01:20:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=prTlbc1VpFmNDiAv6vpTx2HEDdjE/0SlqakQ6arRd2E=;
 b=pbXyYpmTiStLC+WXk8GWN6yEJYVgh2FpjiErFCzKkXxkB1pBJcEXcc75DiLneqvzzc
 8z79YlSLW/ldIPd5tG1rx3/mCh+xw1q2xLPneNgxxKVYAUQWplhJVnS0kYoFQ3Q1Cwcg
 ttNvgYIMN8Z8jVa4ltnxf0l2xhbpMT01WiYIHKdTFrD5DFGhcGcZBs5vHQZKRK0RfmKb
 91s2s8e3sC3bL+FC0EcF4YmYy7M65uashW3RfI8MeENkxMgDEMLYcby9nU39dNCzp5AP
 KdDPjT/L8DVLyQvnkdjcXKfkfws6lVhxqRQN+ul7L8YkTKojUjQPmd7gR488fo2+aisT
 dIhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=prTlbc1VpFmNDiAv6vpTx2HEDdjE/0SlqakQ6arRd2E=;
 b=aH9hEXbUzpz3iEmRoaXP4XT8UyQu85n2cqZZ3y7yN32PxI8o7ocYV2rqGAzEHNM+4d
 67Dvl0nLrIBWCMQv++XNf5Hh0j7LFzPH6lQl5tBVPVx7L2cazWoZzi8UD8lCO1cLF4Rk
 xUBit2XZEEazybRxNbBBGxoBFDM6KREz7ldRLPCxxqcgYCZxRIW7blnjG9JEOyZ0ew5+
 M3GAzYctwlg0rrZiN5RYplusXKLc+NTGs3zKeVuT3o8Iz/QDxtwWl2hOSY40HRRVPtMc
 oXCZa9BFhONtXiYFlLYNUgZW7Rc+wO6TMqUZlI1HO2Dojhk3X13BBFDH9u86BpnKnM3B
 5pLg==
X-Gm-Message-State: APjAAAWVstNN39RHPAVZCobQMWkwwwECcCC8H96gPZkAfL87bRfXZ+KL
 0yITjXCZhCxTIzhWjr5t/5635A==
X-Google-Smtp-Source: APXvYqxgkwMio4dYGApew0KsOZeBgdbSqaR1/0IhQU8wiu2DhH6nWHkofViU7CZGIB6GMjSqXFTZnA==
X-Received: by 2002:a17:902:9f8e:: with SMTP id
 g14mr78883845plq.67.1564647625311; 
 Thu, 01 Aug 2019 01:20:25 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id 21sm3764096pjh.25.2019.08.01.01.20.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Aug 2019 01:20:24 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org
Subject: [PATCH ARM32 v4.4 V2 19/47] ARM: spectre-v1: add speculation barrier
 (csdb) macros
Date: Thu,  1 Aug 2019 13:46:03 +0530
Message-Id: <980958de54ce29412a4e03e2de197e7ceb34e0a0.1564646727.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1564646727.git.viresh.kumar@linaro.org>
References: <cover.1564646727.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_012025_985588_AE5B16FD 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Julien Thierry <Julien.Thierry@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, guohanjun@huawei.com,
 Will Deacon <will.deacon@arm.com>, mark.brown@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Russell King <rmk+kernel@armlinux.org.uk>

Commit a78d156587931a2c3b354534aa772febf6c9e855 upstream.

Add assembly and C macros for the new CSDB instruction.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Acked-by: Mark Rutland <mark.rutland@arm.com>
Boot-tested-by: Tony Lindgren <tony@atomide.com>
Reviewed-by: Tony Lindgren <tony@atomide.com>
Signed-off-by: David A. Long <dave.long@linaro.org>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm/include/asm/assembler.h |  8 ++++++++
 arch/arm/include/asm/barrier.h   | 13 +++++++++++++
 2 files changed, 21 insertions(+)

diff --git a/arch/arm/include/asm/assembler.h b/arch/arm/include/asm/assembler.h
index 4a275fba6059..307901f88a1e 100644
--- a/arch/arm/include/asm/assembler.h
+++ b/arch/arm/include/asm/assembler.h
@@ -441,6 +441,14 @@ THUMB(	orr	\reg , \reg , #PSR_T_BIT	)
 	.size \name , . - \name
 	.endm
 
+	.macro	csdb
+#ifdef CONFIG_THUMB2_KERNEL
+	.inst.w	0xf3af8014
+#else
+	.inst	0xe320f014
+#endif
+	.endm
+
 	.macro check_uaccess, addr:req, size:req, limit:req, tmp:req, bad:req
 #ifndef CONFIG_CPU_USE_DOMAINS
 	adds	\tmp, \addr, #\size - 1
diff --git a/arch/arm/include/asm/barrier.h b/arch/arm/include/asm/barrier.h
index 27c1d26b05b5..edd9e633a84b 100644
--- a/arch/arm/include/asm/barrier.h
+++ b/arch/arm/include/asm/barrier.h
@@ -18,6 +18,12 @@
 #define isb(option) __asm__ __volatile__ ("isb " #option : : : "memory")
 #define dsb(option) __asm__ __volatile__ ("dsb " #option : : : "memory")
 #define dmb(option) __asm__ __volatile__ ("dmb " #option : : : "memory")
+#ifdef CONFIG_THUMB2_KERNEL
+#define CSDB	".inst.w 0xf3af8014"
+#else
+#define CSDB	".inst	0xe320f014"
+#endif
+#define csdb() __asm__ __volatile__(CSDB : : : "memory")
 #elif defined(CONFIG_CPU_XSC3) || __LINUX_ARM_ARCH__ == 6
 #define isb(x) __asm__ __volatile__ ("mcr p15, 0, %0, c7, c5, 4" \
 				    : : "r" (0) : "memory")
@@ -38,6 +44,13 @@
 #define dmb(x) __asm__ __volatile__ ("" : : : "memory")
 #endif
 
+#ifndef CSDB
+#define CSDB
+#endif
+#ifndef csdb
+#define csdb()
+#endif
+
 #ifdef CONFIG_ARM_HEAVY_MB
 extern void (*soc_mb)(void);
 extern void arm_heavy_mb(void);
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
