Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C652F180F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 15:13:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jmtyujV17jyCh3cL8eFwhdanudH0FlkLfZf7PXgiP84=; b=DcRZWBNFsaYy682MQ2I1ywh0Dy
	p1DSd6qk/LTlg69rbTCwLhzoFtuWXT0xWld68Eqx4ESo/hah7ESxG02aaGdnxUhIt5EFOMl4AeMBQ
	y/S42wP130sV9nN1Jbe+1J/wFs5C36VNyZFCwDEDRjs9omhaLrxIb9SYYwpuploeovkNqM/KRrz7l
	KSAAsP1pY97D2I58HLJuLAGl+X5VOkUxRaSR0QWkR1t5PXWN1zuCiO+r7TBol/03dIku814l/Upst
	cGBWK64hDGlUHc1bZIRn8KkVoaSrNVx/LSyDOwMP2dBDGOZ+ATCkrdbok5BtjcMX/k4vGb3IQADL3
	JTeXG7yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSM4J-0008Jq-OQ; Wed, 06 Nov 2019 14:13:55 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSM3p-00088l-VJ
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 14:13:27 +0000
Received: by mail-wr1-x444.google.com with SMTP id a11so25965383wra.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 Nov 2019 06:13:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=leR1246hJ3phHrVVcpyVvX9EN15YsfZYkjubgOlomC8=;
 b=huUR3QVIlM/iMH0usGmIB9OiEcCLZqXcp97YwEo5S55jvpui/qZdGTCJbFI62dX4/j
 2W64NWcBKbPpYtkVVdo/cO1Jt92q8rAf5ACvD4PU71NfcDy1YwoV8btWGC4x7jK7xBZH
 4pgY90Y5biZu7ryNMqgndRgyVybVzvi6p61/yXwqnS60DGsgWKw/oS56vnc+2wljX/IS
 jjo7CDxwHqosEN+WVtvNt9GxrZEEeNlAO6la4IXeWWkEZQG8RuRmPzPChqiiwmD03fka
 KBkfelHAHCWA/mSrfKOHrqlItLLBFxLHUluhYQUZBpOvPwIkowMuH0Ftl02VvxcVd/Z3
 ixaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=leR1246hJ3phHrVVcpyVvX9EN15YsfZYkjubgOlomC8=;
 b=kr0hns+K29oQGxSfGlA8kAGdCRlc9uZC+om9kJFd+e6L8tlmoOx5gwQ6LuR33Oq/VX
 NiC/nT3nn5KSI6liH0vMVeMKGDFJuPaA8LCAfkWHl2Bz8KrDaespR5W5CXyYRC3oOjeA
 tZm7hHGfRHBvlmNKLiWiYIIxtZenaxanMNE2TcMLIhQ5VywO1w+hZB1lG7TS/V5vKv6M
 RMA/2ccqYNKUHMJsalnEtHvrfZDSqy5VknCMbSMndGsEhDdrq5ewYw5TgonKz0sLeQXk
 Qrc1GPafN4nxJJtPlZEN0uDa9k+RStlRL+ZDQMQ/QYOQ3fu1rctA6zPFZd+7xntbZ9sZ
 BJWw==
X-Gm-Message-State: APjAAAWHFG6YyL1hTgsILspKm0gpc63WDDlhQXzFwQK7uqHQ9hLOsDRT
 ZCT8BWPJsP5SrtPHL7MSu6Mlvw==
X-Google-Smtp-Source: APXvYqzTCPrOAhbnRRsKuw2OzTsArhsUJQHzqkaNltD2nhsBQHhmx9VSsUTnBXDMMqtS237fmG6/dA==
X-Received: by 2002:a5d:4649:: with SMTP id j9mr2973687wrs.248.1573049604042; 
 Wed, 06 Nov 2019 06:13:24 -0800 (PST)
Received: from localhost.localdomain
 (31.red-176-87-122.dynamicip.rima-tde.net. [176.87.122.31])
 by smtp.gmail.com with ESMTPSA id b3sm2837556wma.13.2019.11.06.06.13.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Nov 2019 06:13:23 -0800 (PST)
From: Richard Henderson <richard.henderson@linaro.org>
X-Google-Original-From: Richard Henderson <rth@twiddle.net>
To: linux-crypto@vger.kernel.org
Subject: [PATCH v2 01/10] x86: Remove arch_has_random, arch_has_random_seed
Date: Wed,  6 Nov 2019 15:12:59 +0100
Message-Id: <20191106141308.30535-2-rth@twiddle.net>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191106141308.30535-1-rth@twiddle.net>
References: <20191106141308.30535-1-rth@twiddle.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_061326_009845_5C111837 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 herbert@gondor.apana.org.au, x86@kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use the expansion of these macros directly in arch_get_random_*.

These symbols are currently part of the generic archrandom.h
interface, but are currently unused and can be removed.

Signed-off-by: Richard Henderson <rth@twiddle.net>
---
 arch/x86/include/asm/archrandom.h | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/arch/x86/include/asm/archrandom.h b/arch/x86/include/asm/archrandom.h
index af45e1452f09..feb59461046c 100644
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
@@ -86,22 +82,22 @@ static inline bool rdseed_int(unsigned int *v)
 
 static inline bool arch_get_random_long(unsigned long *v)
 {
-	return arch_has_random() ? rdrand_long(v) : false;
+	return static_cpu_has(X86_FEATURE_RDRAND) ? rdrand_long(v) : false;
 }
 
 static inline bool arch_get_random_int(unsigned int *v)
 {
-	return arch_has_random() ? rdrand_int(v) : false;
+	return static_cpu_has(X86_FEATURE_RDRAND) ? rdrand_int(v) : false;
 }
 
 static inline bool arch_get_random_seed_long(unsigned long *v)
 {
-	return arch_has_random_seed() ? rdseed_long(v) : false;
+	return static_cpu_has(X86_FEATURE_RDSEED) ? rdseed_long(v) : false;
 }
 
 static inline bool arch_get_random_seed_int(unsigned int *v)
 {
-	return arch_has_random_seed() ? rdseed_int(v) : false;
+	return static_cpu_has(X86_FEATURE_RDSEED) ? rdseed_int(v) : false;
 }
 
 extern void x86_init_rdrand(struct cpuinfo_x86 *c);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
