Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D2D17D78D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 10:26:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sMIREO/3K9VQRXUcC5JUptMCtdp0U1531Bx5asBBiKQ=; b=oumFl8d2kOzn8d
	JsBWBeBe8gTNKHotfNubnsqeH3pYdaP107PB14Xy98KzZ2jqE7aIsliClQLIZj7NcCjh3wHe5o/4X
	KmttpxAESI4jkYB7NWCYD6Hmw8WHfnvsA0hrSjO5WIT8FT6NeQusLPzz7KLcwF3rDSPqSFxGWd4au
	pF79WBi8N8qy1p09ABS02aqp/5r6fNFonE+MuJpz6CyVSRXqSAboNRqvK5sDx2VhdHPG1iSi/yCC6
	8CzVOIE6dtapUjDjMGRLnTDIjQPFxS2BGW7cVaPXw6Gn5XQEM8aK1bmFxClfrLbxXLxH3pmaIU5Uf
	lm1Fh+jbFoRDwA2IBGIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht6QL-0003O7-SH; Thu, 01 Aug 2019 08:26:57 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht6Kh-0003Bv-1L
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 08:21:10 +0000
Received: by mail-pf1-x441.google.com with SMTP id i189so33609131pfg.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 01:21:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QT52cSxWVIebfDc1oGBa7p8CuPEmaq03dkPYlQrFIZw=;
 b=pilV4a1PZ7oAn8kiAPyEMpIAXatrnWAY7F56eSYPB9vrKy4dh5U8N9TvLKEbGs/trC
 gCp08Y6foQq6IHiA6lZOSHoJ6GRRFGq9rri/60LMEZnonPys5z/6SoXnZNJl65mFs7ci
 JJmSUxzGYnlU1VdgyralvPmw6VwExqh6And5XbOEm19Y4zpQ8SRF02sImAKc6nW5yDiZ
 GxV3IOIraRaflGL69TuNQCaZhm8vxrZbqpITFaNwdJKixpvFTRCpAsy9bhn2OggnWT/L
 3IaRBmLuHoo60PO01b2vc6dsTtslHml6G7AGm53sc8Nrlagct8eYTSp2XXwebHHH3mvI
 26dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QT52cSxWVIebfDc1oGBa7p8CuPEmaq03dkPYlQrFIZw=;
 b=Rnr4EHUVYythykTAOPcpI0aCJ0pY4BRK6eUbiN2WCJ2irAQirfsFQ4wUMU4zNKjrBK
 nTgBpfDLL4nK8MacvZsreop1ph7eqgCbjzC1BC+fBRjUf8vwNmF9t65Cq1Qm4bGYOPL7
 2d43J+cpNlMj5qw3sipgblpeqTHFMh960naH+i+EFI+2OCIKiEAl8aaSMQo+TZFWcInY
 msVGJhOcV50N4yH9rQVSDeYeqfNsqSaNOyhG8DlVRyzpk+tUcvgGN4j7dZpfVWavkM4F
 gEncRNY5fwqSQPKWtsRoeTZh7OPoqhLD09+K/bB2hOipfhg65pmI3UW20aHdxiBndf/1
 wcBQ==
X-Gm-Message-State: APjAAAV2SmGZ7anaGksihPhstvsRWfDnFGdTQoQhbMfEa08Gj4RB3IEi
 Mp5alQhJOuXh2JgtaqMccQGg9XJxwf4=
X-Google-Smtp-Source: APXvYqxw/r6K9JzFk05Y40bsfHjiFIbz6DEqzJ1Bn+TrAgnfGxSab1T57zF2H7EyzRKqi+mVFuyHHw==
X-Received: by 2002:a63:a35e:: with SMTP id v30mr57674126pgn.129.1564647665858; 
 Thu, 01 Aug 2019 01:21:05 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id p1sm76262663pff.74.2019.08.01.01.21.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Aug 2019 01:21:05 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org
Subject: [PATCH ARM32 v4.4 V2 35/47] ARM: 8796/1: spectre-v1,
 v1.1: provide helpers for address sanitization
Date: Thu,  1 Aug 2019 13:46:19 +0530
Message-Id: <56d194e7c07733a1cb99457e07067b6db64560ef.1564646727.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1564646727.git.viresh.kumar@linaro.org>
References: <cover.1564646727.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_012107_121224_5909E3C7 
X-CRM114-Status: GOOD (  14.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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

From: Julien Thierry <julien.thierry@arm.com>

Commit afaf6838f4bc896a711180b702b388b8cfa638fc upstream.

Introduce C and asm helpers to sanitize user address, taking the
address range they target into account.

Use asm helper for existing sanitization in __copy_from_user().

Signed-off-by: Julien Thierry <julien.thierry@arm.com>
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm/include/asm/assembler.h | 11 +++++++++++
 arch/arm/include/asm/uaccess.h   | 26 ++++++++++++++++++++++++++
 arch/arm/lib/copy_from_user.S    |  6 +-----
 3 files changed, 38 insertions(+), 5 deletions(-)

diff --git a/arch/arm/include/asm/assembler.h b/arch/arm/include/asm/assembler.h
index 483481c6937e..f2624fbd0336 100644
--- a/arch/arm/include/asm/assembler.h
+++ b/arch/arm/include/asm/assembler.h
@@ -461,6 +461,17 @@ THUMB(	orr	\reg , \reg , #PSR_T_BIT	)
 #endif
 	.endm
 
+	.macro uaccess_mask_range_ptr, addr:req, size:req, limit:req, tmp:req
+#ifdef CONFIG_CPU_SPECTRE
+	sub	\tmp, \limit, #1
+	subs	\tmp, \tmp, \addr	@ tmp = limit - 1 - addr
+	addhs	\tmp, \tmp, #1		@ if (tmp >= 0) {
+	subhss	\tmp, \tmp, \size	@ tmp = limit - (addr + size) }
+	movlo	\addr, #0		@ if (tmp < 0) addr = NULL
+	csdb
+#endif
+	.endm
+
 	.macro	uaccess_disable, tmp, isb=1
 #ifdef CONFIG_CPU_SW_DOMAIN_PAN
 	/*
diff --git a/arch/arm/include/asm/uaccess.h b/arch/arm/include/asm/uaccess.h
index 7f96a942d9a0..9a3b6de2edac 100644
--- a/arch/arm/include/asm/uaccess.h
+++ b/arch/arm/include/asm/uaccess.h
@@ -137,6 +137,32 @@ static inline void set_fs(mm_segment_t fs)
 #define __inttype(x) \
 	__typeof__(__builtin_choose_expr(sizeof(x) > sizeof(0UL), 0ULL, 0UL))
 
+/*
+ * Sanitise a uaccess pointer such that it becomes NULL if addr+size
+ * is above the current addr_limit.
+ */
+#define uaccess_mask_range_ptr(ptr, size)			\
+	((__typeof__(ptr))__uaccess_mask_range_ptr(ptr, size))
+static inline void __user *__uaccess_mask_range_ptr(const void __user *ptr,
+						    size_t size)
+{
+	void __user *safe_ptr = (void __user *)ptr;
+	unsigned long tmp;
+
+	asm volatile(
+	"	sub	%1, %3, #1\n"
+	"	subs	%1, %1, %0\n"
+	"	addhs	%1, %1, #1\n"
+	"	subhss	%1, %1, %2\n"
+	"	movlo	%0, #0\n"
+	: "+r" (safe_ptr), "=&r" (tmp)
+	: "r" (size), "r" (current_thread_info()->addr_limit)
+	: "cc");
+
+	csdb();
+	return safe_ptr;
+}
+
 /*
  * Single-value transfer routines.  They automatically use the right
  * size if we just have the right pointer type.  Note that the functions
diff --git a/arch/arm/lib/copy_from_user.S b/arch/arm/lib/copy_from_user.S
index d36329cefedc..e32b51838439 100644
--- a/arch/arm/lib/copy_from_user.S
+++ b/arch/arm/lib/copy_from_user.S
@@ -93,11 +93,7 @@ ENTRY(arm_copy_from_user)
 #ifdef CONFIG_CPU_SPECTRE
 	get_thread_info r3
 	ldr	r3, [r3, #TI_ADDR_LIMIT]
-	adds	ip, r1, r2	@ ip=addr+size
-	sub	r3, r3, #1	@ addr_limit - 1
-	cmpcc	ip, r3		@ if (addr+size > addr_limit - 1)
-	movcs	r1, #0		@ addr = NULL
-	csdb
+	uaccess_mask_range_ptr r1, r2, r3, ip
 #endif
 
 #include "copy_template.S"
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
