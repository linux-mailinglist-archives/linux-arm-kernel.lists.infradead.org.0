Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAFBB12EB1B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 22:15:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FNFl0dlIVpKi/sRQpu1549HaUivrmIpOK4PRnIh69oE=; b=J3Srl/9IEwrzlR
	W+VwfMZ4kflLIRbRI5i5QQrKLh/yspkXsV08eiwKXDuEzVkqcAeiuN6yBOOJ7H05MlvsmI1CKuekP
	w/GH8v5A+3ZPQVdGYMeVAh8+xDafTpPz8qzi2BPZnru4rERALwurJq4ZQsXCMxD4i4E8WKWhE3xLy
	gngQFOAwezwDYLuJVETrbJNM5d7C+x3K2zHYx209pbqfRgsbadyIL00IMyw9VipCyjN7Jz5ZnZL3d
	262WO/QpcAhrsY/aKxYDdsnwrMv3SVCOAg2AuiBhezgBRnu1OsPBovTOvUy0r9VaYH77EaFkKScwz
	g4vx7fDqAVudK5mfX96w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in7oS-00067R-NW; Thu, 02 Jan 2020 21:15:24 +0000
Received: from mail-qv1-xf41.google.com ([2607:f8b0:4864:20::f41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1in7nE-0004Bi-Ih
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 21:14:10 +0000
Received: by mail-qv1-xf41.google.com with SMTP id y8so15503099qvk.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 Jan 2020 13:14:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=DSu775/r8r2Tkmehdmqp98rpWAvc+FGMQ75JxAM97Qk=;
 b=OrYEDSt9+5eRFaPFkWqZfdDPoX8oBOMKWIx5RN37UsN5RKyL+QI/bFCjKt/9bYqTwb
 cGAKt4VFDzZWzGI8HGRlHNOOm51h9iKkmHQLaQ+ZGeK0srrJ9d1XGb/S8Iur7VBkcQxI
 MyCi32PMGR+VJwl5o/HPoHX+4mEo6v21yZPg0Yozv/0f4RoeG/gKdK1GTUm1zsmp1IzG
 Oij+HSsTiiV/BYAwNB6O6q5MrhW0WnE1lSlIG0HBRmZTt/xuarTCeW5+SFsx5RxgQYpN
 EROSSyM7QLIWulE8Z34ge0x3MEAOAjIJngvTC8mpdtwXVyRogdKoqDe3A2BMBnsEiOqS
 bEOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=DSu775/r8r2Tkmehdmqp98rpWAvc+FGMQ75JxAM97Qk=;
 b=rb/TwHCcPMqguCrqif6fAfQjCRxIedM/VyFfF6xn2jnr512y6tOpyDNEYdDt+mf0E7
 BSfd3xz54mAqLYtkX2BX4/5sQNQQBFEHO1LVWQJlqnbTj72zGXdJE3Ju6+U/fDER+FKN
 IvQPAdnc4wrFYgaFfzxggj/htHQBknsF8LrEqEuG3Q1K6PdBBAmphEXRhuToub9duAxB
 j3xzRWUaK0sFOizdI+Gdy5GuGMRSBefMF0syv5y52/+25eK+6/qVFZo4031paObaDQkd
 JkSBPTrGTu/SVPz/enj/ShN44/xc62o4t2TZ3tVf3fpcMg4SZAmoQE+tUaEWor4vzNE/
 IrGg==
X-Gm-Message-State: APjAAAVHm/W8u0BObQXvI7XH30eDi/Rjnz8JOfpVxIYp8EgI9oxxlh+O
 IYyb5HKM/fnM0FSiAI52MmttlQ==
X-Google-Smtp-Source: APXvYqwxDCRcHnwDHHB6fG/rrbyOkgBibEXX240FPR8z4mLL8J0UkjGCVHk+Ow7I/qMA/mj7d2MLrg==
X-Received: by 2002:a05:6214:146e:: with SMTP id
 c14mr65985808qvy.82.1577999647488; 
 Thu, 02 Jan 2020 13:14:07 -0800 (PST)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id f97sm17384185qtb.18.2020.01.02.13.14.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Jan 2020 13:14:06 -0800 (PST)
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
Subject: [PATCH v5 4/6] arm64: remove __asm_flush_icache_range
Date: Thu,  2 Jan 2020 16:13:55 -0500
Message-Id: <20200102211357.8042-5-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200102211357.8042-1-pasha.tatashin@soleen.com>
References: <20200102211357.8042-1-pasha.tatashin@soleen.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_131408_628193_E09ECB8D 
X-CRM114-Status: GOOD (  11.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
index cb00c61e0bde..047af338ba15 100644
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
@@ -87,9 +86,7 @@ static inline long __flush_cache_user_range(unsigned long start,
 
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
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
