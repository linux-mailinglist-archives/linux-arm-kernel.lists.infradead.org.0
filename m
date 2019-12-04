Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D463611381A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 00:22:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OAXjEkbohrSBawRLoxiKfU6pLaJCoRznbn6x9XXlsfM=; b=hGOH5Lnc66vUJ4
	xiNJh5je4XWF7C+B7G60fSMw9p96psBGfu/EGSvDuZVArUOs5Ro66HKESL3Xg0kyQkkpI6ut3aGZw
	F8TAejthuk5u0Qwg7J/rthAP1KrlB1kswacOC8MWEYGCl1mhX4x9xFJC6eMB3AMMqlS8sznEm9sOF
	WK2aFXXVRA0F8Ep3gHxazEpEWztG+gPfbrIEK52M0tl3to+M9QphP+z5TIPw2RVubRSn7DqBJTNAC
	BtH221ei04fGbb5XixFz4NkxXfeDTHS4GS0MqPA3VdoSSoJ/exYP1koIgnMhJdl+Sl9U5Upx3+5+0
	ar1B0Djh6VJxRHJQbcvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icdya-0006RC-CO; Wed, 04 Dec 2019 23:22:32 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icdxH-0005CC-24
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 23:21:12 +0000
Received: by mail-qk1-x741.google.com with SMTP id v23so1699340qkg.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 15:21:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=jgWMYHD023tAXPY9yBvY7HlxUi3NtG7yB+YFJsFM+4s=;
 b=GnME/3GQIkWEOnq+HnWtjzDW7KOeACVPsdHQBWSmyQiiOW1JrEqbNdO1yXHOHEGGLa
 uiDQATmlJ+LFhPgQXv8Zf0F4NJElVwhSGKvmCcAUMQv+wEkB+XJDpMyg6iSNtxNh7VMy
 4YRsLqt/0+myzBWoF8xlK6sHJAEmEPWcOsskDtof8qDxEGxli6obH0/ql8HXvOYyNOx0
 E4CqVF/g/r8Y9BXPjdTCfVR8SCXfFoQnrtKWfB6fqzn7mEoF7LZSIahhhG8TlbwvWdi0
 eV1TWGsF+FoGohnl0fwH163lctm1VQfxvAxKHjBKsqfJP8bqMssseBKgpDoDEsAqYzvT
 ACgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jgWMYHD023tAXPY9yBvY7HlxUi3NtG7yB+YFJsFM+4s=;
 b=BzKby0cdBEzXU73N6oq6Z/0PaMSGCBvzDwoHNayHlRCGhLteyqQuloTuTeE+xsPqSV
 wXkZiLCFJLJrKDZwjVQXsVg6UzO9Tn1r+F5qp6FFx4d3MslbMdZHJHiWbhKvqh3txx+Q
 Ey1HUvGyhhZGy1dtnOGQYbmwOGMjzT/xJqz5xZSVILUrQJxwRgoDuCXeRxZj3PLS6e7z
 +IO41dzVnGF/vf/fYg9PS9sEq+3sxV+BalCF8Z4QIcKIBNoX8GgcQTHYLwjMV2ztfuf5
 nbSqTuOgGJfdCay7Vl4huf/tn4GSYY7TKHKzhZCc5kCYFvBBPZLzaSSGU9f7YLfvRqaW
 qK2w==
X-Gm-Message-State: APjAAAWMOXe+e8RI6+nkL+An/15979U+TPDYFXpIw6+3b64tCv7CdHv8
 AgqaShaXr8Mano1Ecj3EieUrBpfQCjo=
X-Google-Smtp-Source: APXvYqxYW3lHiAaEktvIv9R2Rs4Q7wh7u41fkOvqH028QUBhjHchCrv3OL1EskvJ6xR8p1wI4qmnmw==
X-Received: by 2002:a05:620a:102e:: with SMTP id
 a14mr5398925qkk.159.1575501670158; 
 Wed, 04 Dec 2019 15:21:10 -0800 (PST)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id t38sm4667864qta.78.2019.12.04.15.21.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2019 15:21:09 -0800 (PST)
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
Subject: [PATCH v4 5/6] arm64: move ARM64_HAS_CACHE_DIC/_IDC from asm to C
Date: Wed,  4 Dec 2019 18:20:57 -0500
Message-Id: <20191204232058.2500117-6-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191204232058.2500117-1-pasha.tatashin@soleen.com>
References: <20191204232058.2500117-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_152111_232015_B69603C0 
X-CRM114-Status: GOOD (  11.22  )
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
index ea563344b4ad..4eb244ee7154 100644
--- a/arch/arm64/include/asm/cacheflush.h
+++ b/arch/arm64/include/asm/cacheflush.h
@@ -75,8 +75,22 @@ extern void sync_icache_aliases(void *kaddr, unsigned long len);
 static inline void __flush_cache_user_range(unsigned long start,
 					    unsigned long end)
 {
+	if (cpus_have_const_cap(ARM64_HAS_CACHE_IDC)) {
+		dsb(ishst);
+		if (cpus_have_const_cap(ARM64_HAS_CACHE_DIC)) {
+			isb();
+			return;
+		}
+	}
+
 	uaccess_ttbr0_enable();
 	__asm_flush_cache_user_range(start, end);
+
+	if (cpus_have_const_cap(ARM64_HAS_CACHE_DIC))
+		isb();
+	else
+		__asm_invalidate_icache_range(start, end);
+
 	uaccess_ttbr0_disable();
 }
 
@@ -90,6 +104,11 @@ static inline int invalidate_icache_range(unsigned long start,
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
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
