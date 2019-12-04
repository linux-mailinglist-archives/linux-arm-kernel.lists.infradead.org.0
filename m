Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 226E9113818
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 00:22:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4eCaWXjQTSD3lYFcadnZLObVXZzemgf4o8YTfhHLcAE=; b=sOFyVIDtrNQ6bV
	nJPCy3EC9Rl7FrKXBJHn5MyipleQLomA5OJTfIC9beNnxnDBmn6QK5aki1jeJhGVG6uWFhPeD/Bdd
	EV/UJfAhDLtSgja+wOdFRJdm1Lz1yqtRhm1oQ2aUEUUDzKU+VxU6SskcGZuF/8ZS1sUnLZw0lWD3k
	tUTlknKLGYqMHmZ69BwzYjrgcmKJYJI7MBbUx6p2WQUKRhCDbT5ctNxGipsomv8Eray6XUIWx3q30
	mA7hWjjpPeyVUNasPYGrq0JgjCj8tlBv9/V5PR8a4zl34uLRMHjxtaub07mindwHWP3/i8w4bPD2g
	1DZU1idWwZKK0sNZOuCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icdyC-00062K-SX; Wed, 04 Dec 2019 23:22:08 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icdxF-00059y-Ge
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 23:21:11 +0000
Received: by mail-qk1-x741.google.com with SMTP id g15so1657027qka.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 15:21:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=cJGBuyv8MEIEHzLn/Uzof9JuYF+NT8m3hWWPuvSYlYo=;
 b=Cqr2IaSkSM3+ylTz/1+aa0wyv0GTLmyzuvfeKqJdPU6Ym61dE8ilpQ/o6O3zLo76yG
 yWs4zxmVduoS9thvdX42Qhy/yXxpxLqmowjGfyNWNr2CrS0btzvUZX1xjS5/NQKuKc9m
 09+5SGckvzu6mOOsgNPtOpMxLWPdDl8+PqcmsBcfflKtmm4meriKJKjLOG29yS1QWciV
 0Wcks1MLbJb1W3cxbNWfbO8w7CCl3rfq/IVgDaUT9y3uk+unlYn3uMSIPYga04jFVfkX
 ZrVptH6pK0eqeK+rnhBPLi9SvwE1cFLa6IaeQSpSBwJircBHJEjEs6Y3XEWblHYg0XxR
 IQmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cJGBuyv8MEIEHzLn/Uzof9JuYF+NT8m3hWWPuvSYlYo=;
 b=dFx0nTC80fNbL5za8RiEJJVNGnClflSW/Y0J/bvzsYl7ueXK2EDwHnK4yLdBOB0NLf
 CDob24kmvyZ4p5OdEDnNAn7FjUIV0MlnoIDx2vOZMGoAc9vhj+ndi09XvP5BXdbOsj+y
 WD7GG4D2UKanBeVgrw0jv2bLx3YDcUpla9EvI0ugdylQnT4cufI5cNcLuRFVT4m90OLC
 HcYgMA3oOKSM4d/sO2nBh7Kt51irQEVhXVmo5hEVFKDc0EgJRp1xxvxOGtNvUH0JkXZ/
 xocdmXpVGh8hUYhHuoxhqRrpJ+HOYgevQp3IrklhlWnxvjvv2Jpxr8crrqN/n+5WG426
 zf8w==
X-Gm-Message-State: APjAAAUBeJNZ1Qb5OLcmNBjgfwSIkVTpOMA6Q/aTvQ3XgruCOC/o8tim
 xe+xEBL5Ln5UjyJTDlhgV21yng==
X-Google-Smtp-Source: APXvYqyIMm2ogNBIfOvl3Mqg4T1YApxStKZp5KMJvJR//w2WVxMty/nhPiOLBe4oOlxwY24OIF3FHA==
X-Received: by 2002:ae9:e115:: with SMTP id g21mr53454qkm.187.1575501668421;
 Wed, 04 Dec 2019 15:21:08 -0800 (PST)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id t38sm4667864qta.78.2019.12.04.15.21.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2019 15:21:07 -0800 (PST)
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
Subject: [PATCH v4 4/6] arm64: remove __asm_flush_icache_range
Date: Wed,  4 Dec 2019 18:20:56 -0500
Message-Id: <20191204232058.2500117-5-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191204232058.2500117-1-pasha.tatashin@soleen.com>
References: <20191204232058.2500117-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_152109_567899_9544D2F0 
X-CRM114-Status: GOOD (  11.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

__asm_flush_icache_range is an alias to __asm_flush_cache_user_range,
but now that these functions are called from C wrappers the fall
through can instead be done at a higher level.

Remove the __asm_flush_icache_range alias in assembly, and instead call
__flush_cache_user_range() from __flush_icache_range().

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/include/asm/cacheflush.h |  5 +----
 arch/arm64/mm/cache.S               | 14 --------------
 arch/arm64/mm/flush.c               |  2 +-
 3 files changed, 2 insertions(+), 19 deletions(-)

diff --git a/arch/arm64/include/asm/cacheflush.h b/arch/arm64/include/asm/cacheflush.h
index 431f8da2dd02..ea563344b4ad 100644
--- a/arch/arm64/include/asm/cacheflush.h
+++ b/arch/arm64/include/asm/cacheflush.h
@@ -61,7 +61,6 @@
  *		- kaddr  - page address
  *		- size   - region size
  */
-extern void __asm_flush_icache_range(unsigned long start, unsigned long end);
 extern long __asm_flush_cache_user_range(unsigned long start,
 					 unsigned long end);
 extern int  __asm_invalidate_icache_range(unsigned long start,
@@ -83,9 +82,7 @@ static inline void __flush_cache_user_range(unsigned long start,
 
 static inline void __flush_icache_range(unsigned long start, unsigned long end)
 {
-	uaccess_ttbr0_enable();
-	__asm_flush_icache_range(start, end);
-	uaccess_ttbr0_disable();
+	__flush_cache_user_range(start, end);
 }
 
 static inline int invalidate_icache_range(unsigned long start,
diff --git a/arch/arm64/mm/cache.S b/arch/arm64/mm/cache.S
index 602b9aa8603a..1981cbaf5d92 100644
--- a/arch/arm64/mm/cache.S
+++ b/arch/arm64/mm/cache.S
@@ -14,19 +14,6 @@
 #include <asm/alternative.h>
 #include <asm/asm-uaccess.h>
 
-/*
- *	__asm_flush_icache_range(start,end)
- *
- *	Ensure that the I and D caches are coherent within specified region.
- *	This is typically used when code has been written to a memory region,
- *	and will be executed.
- *
- *	- start   - virtual start address of region
- *	- end     - virtual end address of region
- */
-ENTRY(__asm_flush_icache_range)
-	/* FALLTHROUGH */
-
 /*
  *	__asm_flush_cache_user_range(start,end)
  *
@@ -62,7 +49,6 @@ alternative_else_nop_endif
 1:	ret
 9:	mov	x0, #-EFAULT
 	b	1b
-ENDPROC(__asm_flush_icache_range)
 ENDPROC(__asm_flush_cache_user_range)
 
 /*
diff --git a/arch/arm64/mm/flush.c b/arch/arm64/mm/flush.c
index b23f34d23f31..61521285f27d 100644
--- a/arch/arm64/mm/flush.c
+++ b/arch/arm64/mm/flush.c
@@ -75,7 +75,7 @@ EXPORT_SYMBOL(flush_dcache_page);
 /*
  * Additional functions defined in assembly.
  */
-EXPORT_SYMBOL(__asm_flush_icache_range);
+EXPORT_SYMBOL(__asm_flush_cache_user_range);
 
 #ifdef CONFIG_ARCH_HAS_PMEM_API
 void arch_wb_cache_pmem(void *addr, size_t size)
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
