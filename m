Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEEA312EB1F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 22:15:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aoRBd5O8ysNvFwL6+DXtSAjTYS5hE7wvvAU7fqqlkHU=; b=j1VJ9Aohi/TiQs
	uacyEkgcFjU6G9sD9+UOZSkWk/crzlRCDer5Ppv3j/SxyIaF+d+dqI6izHRsEqKLmHX5z4HkbBLc8
	ox5o7JrTKjacJGZ9DZhQ8duLBQVBskfACVMkh+4XKqKWyKcSd1p9DPwfIARcSVu7Gw+pxwT+OadjW
	OAvoNRRuH8sG7nWu5RZFophxZrpqdniaRGLF7CH7ZMlUQe+Y5LuNgszcJomA+VY9GTKCTlnjhKLKN
	iJN/GGEy9RCdmUVEClm5mU+1nIW3MmxmTmbv6bki/gNn7EUaCKqjAC+lykPa3ZP1X5D6YTwIDIJKA
	9YTDM+sF71PHwV3S2kOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in7og-0006XO-Sv; Thu, 02 Jan 2020 21:15:38 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1in7nG-0004DW-9m
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 21:14:12 +0000
Received: by mail-qt1-x843.google.com with SMTP id d18so32854089qtj.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 Jan 2020 13:14:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=bK4p0uPVg9F/zZFyAk0NT01Djfe92ua8x9zSOEpgX0c=;
 b=XMSSOxhTUK43GOVMljv5Cr5RwtQATimoiWSKuX7QZwiSG8p+nVz0KElLQ3KYQppki3
 0nADKJW7oyFzaH1xdSee260L/7vjgMZdEHP2KYpS7xKLygmPvS8VddrKfiLWXq0XQ1tP
 mTMSHtbTPyMWMaifPK5FVD6QfHcv0NRPdCdtM5ui6/cDUzO06+YMIzcHoowYKWU1aFgg
 wkQawwqKyctGRtTYSl7BQk4ajl6X6Q5HvRqqFG+B7KtWTo7blSz7k8hIsDBLPlkkOCga
 LAh4lkeONzIjNUh1xzjZu+zRc9CbIjC0AgHidY3wCZKO3lbJyAT7kdCN5KazAfL2M+Fx
 8tQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=bK4p0uPVg9F/zZFyAk0NT01Djfe92ua8x9zSOEpgX0c=;
 b=RthsjME1kaPRGz3jA38SQOqhJ0gRsNr5Vu4erd06MBSzvQsO2+eF/iLmkiIa0txcxU
 W6PBz3xplv/pXD9XQ/vXExlrgrNhuUrhAdCcIYGkuX1b2HwyOvaU0BAd51lAWtCtGM63
 kxoP1aLkirGCCGb+RT9vy/seUvudsIeWndljooYv/wPG1p7J8itF4ejZFpjMwPg/FIJU
 Wi3cvdIkp4OuIIxO8pCgtCTwZSe+BEuoVrd64VP3triEwXCMrKJi618Sec7YakVpkIci
 SZSvl1XTDETL/3PAeIM9qnrEHraVEp3+kv/UMfmIvTkKKhClkHw73pCTIAqxIDAkjWUd
 GEKA==
X-Gm-Message-State: APjAAAUWlzjLxTCcLda2XR/Tdtp68z8gf5UxJWTOMw5Un+ZA8v+zBWFg
 ILRJ7zmz8a1qC+VhSWnsxTFzOg==
X-Google-Smtp-Source: APXvYqzDcF3N2y5hK5g2wp8jkF8WiIMA7CVV2LBb1kzom8ECtZ3Q8uEzKO01/KlbgewDQgLy3pJe1g==
X-Received: by 2002:ac8:7b4f:: with SMTP id m15mr62174264qtu.48.1577999649205; 
 Thu, 02 Jan 2020 13:14:09 -0800 (PST)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id f97sm17384185qtb.18.2020.01.02.13.14.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Jan 2020 13:14:08 -0800 (PST)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 linux-kernel@vger.kernel.org, catalin.marinas@arm.com, will@kernel.org,
 steve.capper@arm.com, linux-arm-kernel@lists.infradead.org, maz@kernel.org,
 james.morse@arm.com, vladimir.murzin@arm.com, mark.rutland@arm.com,
 tglx@linutronix.de, gregkh@linuxfoundation.org, allison@lohutok.net,
 info@metux.net, alexios.zavras@intel.com, sstabellini@kernel.org,
 boris.ostrovsky@oracle.com, jgross@suse.com, stefan@agner.ch,
 yamada.masahiro@socionext.com, xen-devel@lists.xenproject.org,
 linux@armlinux.org.uk, andrew.cooper3@citrix.com, julien@xen.org
Subject: [PATCH v5 5/6] arm64: move ARM64_HAS_CACHE_DIC/_IDC from asm to C
Date: Thu,  2 Jan 2020 16:13:56 -0500
Message-Id: <20200102211357.8042-6-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200102211357.8042-1-pasha.tatashin@soleen.com>
References: <20200102211357.8042-1-pasha.tatashin@soleen.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_131410_349939_E98E8830 
X-CRM114-Status: GOOD (  11.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The assmbly functions __asm_flush_cache_user_range and
__asm_invalidate_icache_range have alternatives:

alternative_if ARM64_HAS_CACHE_DIC
...

alternative_if ARM64_HAS_CACHE_IDC
...

But, the implementation of those alternatives is trivial and therefore
can be done in the C inline wrappers.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/include/asm/cacheflush.h | 19 +++++++++++++++++++
 arch/arm64/mm/cache.S               | 27 +++++----------------------
 arch/arm64/mm/flush.c               |  1 +
 3 files changed, 25 insertions(+), 22 deletions(-)

diff --git a/arch/arm64/include/asm/cacheflush.h b/arch/arm64/include/asm/cacheflush.h
index 047af338ba15..fc5217a18398 100644
--- a/arch/arm64/include/asm/cacheflush.h
+++ b/arch/arm64/include/asm/cacheflush.h
@@ -77,8 +77,22 @@ static inline long __flush_cache_user_range(unsigned long start,
 {
 	int ret;
 
+	if (cpus_have_const_cap(ARM64_HAS_CACHE_IDC)) {
+		dsb(ishst);
+		if (cpus_have_const_cap(ARM64_HAS_CACHE_DIC)) {
+			isb();
+			return 0;
+		}
+	}
+
 	uaccess_ttbr0_enable();
 	ret = __asm_flush_cache_user_range(start, end);
+
+	if (cpus_have_const_cap(ARM64_HAS_CACHE_DIC))
+		isb();
+	else
+		__asm_invalidate_icache_range(start, end);
+
 	uaccess_ttbr0_disable();
 
 	return ret;
@@ -94,6 +108,11 @@ static inline int invalidate_icache_range(unsigned long start,
 {
 	int ret;
 
+	if (cpus_have_const_cap(ARM64_HAS_CACHE_DIC)) {
+		isb();
+		return 0;
+	}
+
 	uaccess_ttbr0_enable();
 	ret = __asm_invalidate_icache_range(start, end);
 	uaccess_ttbr0_disable();
diff --git a/arch/arm64/mm/cache.S b/arch/arm64/mm/cache.S
index 1981cbaf5d92..0093bb9fcd12 100644
--- a/arch/arm64/mm/cache.S
+++ b/arch/arm64/mm/cache.S
@@ -25,30 +25,18 @@
  *	- end     - virtual end address of region
  */
 ENTRY(__asm_flush_cache_user_range)
-alternative_if ARM64_HAS_CACHE_IDC
-	dsb	ishst
-	b	7f
-alternative_else_nop_endif
 	dcache_line_size x2, x3
 	sub	x3, x2, #1
 	bic	x4, x0, x3
-1:
-user_alt 9f, "dc cvau, x4",  "dc civac, x4",  ARM64_WORKAROUND_CLEAN_CACHE
+1:	user_alt 3f, "dc cvau, x4",  "dc civac, x4",  ARM64_WORKAROUND_CLEAN_CACHE
 	add	x4, x4, x2
 	cmp	x4, x1
 	b.lo	1b
 	dsb	ish
-
-7:
-alternative_if ARM64_HAS_CACHE_DIC
-	isb
-	b	8f
-alternative_else_nop_endif
-	invalidate_icache_by_line x0, x1, x2, x3, 9f
-8:	mov	x0, #0
-1:	ret
-9:	mov	x0, #-EFAULT
-	b	1b
+	mov	x0, #0
+2:	ret
+3:	mov	x0, #-EFAULT
+	b	2b
 ENDPROC(__asm_flush_cache_user_range)
 
 /*
@@ -60,11 +48,6 @@ ENDPROC(__asm_flush_cache_user_range)
  *	- end     - virtual end address of region
  */
 ENTRY(__asm_invalidate_icache_range)
-alternative_if ARM64_HAS_CACHE_DIC
-	mov	x0, xzr
-	isb
-	ret
-alternative_else_nop_endif
 	invalidate_icache_by_line x0, x1, x2, x3, 2f
 	mov	x0, xzr
 1:	ret
diff --git a/arch/arm64/mm/flush.c b/arch/arm64/mm/flush.c
index 61521285f27d..adfdacb163ad 100644
--- a/arch/arm64/mm/flush.c
+++ b/arch/arm64/mm/flush.c
@@ -76,6 +76,7 @@ EXPORT_SYMBOL(flush_dcache_page);
  * Additional functions defined in assembly.
  */
 EXPORT_SYMBOL(__asm_flush_cache_user_range);
+EXPORT_SYMBOL(__asm_invalidate_icache_range);
 
 #ifdef CONFIG_ARCH_HAS_PMEM_API
 void arch_wb_cache_pmem(void *addr, size_t size)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
