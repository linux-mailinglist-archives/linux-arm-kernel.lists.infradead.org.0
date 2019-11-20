Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D8041041BE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 18:07:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5E7UlmT/4EfGhrZn6jctZVkvUIMRPqgChSxIkkgFGTA=; b=sk9fmmpMQz8FoV
	/oedhSBfLcFrI0UPYmbgKRa2oqwM3fnJrNODosBL92wqApgu9TXcPfe/+M3zo0yAEnvOEkf2Yksp+
	GYjkpYM+Hkv4b0hjkz7dtxC3jUFIWf0kYne2zhipCvmKsL7N0OtzLEGWA5uIfYZD0iVXDIo9jEIOf
	7vJMyfM7IC+KOcrXOsPINuIemQIVSF0/Mc/GV3/BxGGsBjCZJh3OYHZBXbajvU8q1aBL3flzYHZyf
	7cqP9+j3kDX0e9nnpuSfIU/daTHhMzDzRGiJR6gAM5OUQ2a8AUwhT7Fn8X2vTL10KZJ9xVyU8lwZp
	6oyEybTJXCcs2Z6L669A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXTSN-0001hm-EK; Wed, 20 Nov 2019 17:07:55 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXTSE-0001gw-3l
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 17:07:47 +0000
Received: by mail-pg1-x543.google.com with SMTP id k13so34795pgh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 09:07:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7CMguEqa5ooTINEAp0OYYFprU33z3N9YF14yQe2fceo=;
 b=mWZOm0wDbw1+aYo5N0PRrQqifoB+3mn72HxlNF5S+2igM6cRZXVOqhIo65OOtpvwav
 EqOEUNxxZ3Qv9cK2qOa30IBF8mYW6FMgF4tVBYDP/e9FWVFXzi1WYNsuk+bmwoRcj0tZ
 BIBKwz2u1+x5Fk8sds/3nvzrvV/B+ZoKw0Nf3zcxlJ07yb3hShQGz6sn/3IH9NNmoFxR
 OhjEs1LbYi9UpgDAuzOXpGJKZa1j9Bz8eTF9tiVBftJMNZbXUyIStBvUvskaUe6qVshW
 4fYjKvxqfPZSfwkOJG2Lij6LfOxct5Lgpsk+rbAI1hOHQ34zugz2M1LOX0zbTTWgGMGd
 QxEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7CMguEqa5ooTINEAp0OYYFprU33z3N9YF14yQe2fceo=;
 b=fc0pM7zpqd5WXuJX5BcwnKyVxJ95vAc1IUBA3dNMjx6E5535NR1CEYf64+ytUzFFgd
 v+UD+JSGN3ozloEsuvz+wIZqkHEOS1IZ6bepEVAjOm2dnNNJ0CF/75QLGhAYgvlNd6Dd
 OXzyIQu9yIwt8JsvO/PMCpDd5gfrzZzvZOAKy3SSiRAMuK+yj4NZtQ583lPOsjTD6bn6
 9NyudEDFDXAE5qI4vj4PsnPMS5Q7HUUKBHdcu8S/YBwx/azgVAZmySYldO8DL5THK9E1
 eRhK2OCdG+Bvph4yuxSLmWSVBqqsfG0vcz8UMpxMNBwXTTJRAC7CjDjC9qqIHcgdXFOw
 Uo2w==
X-Gm-Message-State: APjAAAWbaKdfa/1j2gMANor7RMyZ+pRS2vu/zh3qQqhN7JXTkw59fv4B
 LRpxdiUuxotiCTUSpXjTZzZgnA==
X-Google-Smtp-Source: APXvYqw8uiIiopBjLjYpJ209OUDsXBbQMwr7vVihJIvBpIvNVsV6tPtlg2O2JmZzeyGtUowxv2oPHQ==
X-Received: by 2002:aa7:9a86:: with SMTP id w6mr5182468pfi.169.1574269665089; 
 Wed, 20 Nov 2019 09:07:45 -0800 (PST)
Received: from xakep.corp.microsoft.com (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id r203sm28326401pfr.184.2019.11.20.09.07.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Nov 2019 09:07:44 -0800 (PST)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 linux-kernel@vger.kernel.org, catalin.marinas@arm.com, will@kernel.org,
 steve.capper@arm.com, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 mark.rutland@arm.com, tglx@linutronix.de, gregkh@linuxfoundation.org,
 allison@lohutok.net, info@metux.net, alexios.zavras@intel.com
Subject: [PATCH] arm64: kernel: remove uaccess_*_not_uao asm macros
Date: Wed, 20 Nov 2019 12:07:40 -0500
Message-Id: <20191120170740.260224-1-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_090746_155548_D009510C 
X-CRM114-Status: GOOD (  10.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

It is safer, and less code to maintain to keep uaccess_*
as inline C functions instead of ASM macros.

There is no performance overhead from this change because
the generated code is almost identical.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/include/asm/asm-uaccess.h | 17 -----------------
 arch/arm64/include/asm/uaccess.h     | 27 ++++++++++++++++++++++-----
 arch/arm64/lib/clear_user.S          |  3 ---
 arch/arm64/lib/copy_from_user.S      |  3 ---
 arch/arm64/lib/copy_in_user.S        |  3 ---
 arch/arm64/lib/copy_to_user.S        |  3 ---
 arch/arm64/lib/uaccess_flushcache.c  |  6 +++++-
 7 files changed, 27 insertions(+), 35 deletions(-)

diff --git a/arch/arm64/include/asm/asm-uaccess.h b/arch/arm64/include/asm/asm-uaccess.h
index 5bf963830b17..c764cc8fb3b6 100644
--- a/arch/arm64/include/asm/asm-uaccess.h
+++ b/arch/arm64/include/asm/asm-uaccess.h
@@ -58,23 +58,6 @@ alternative_else_nop_endif
 	.endm
 #endif
 
-/*
- * These macros are no-ops when UAO is present.
- */
-	.macro	uaccess_disable_not_uao, tmp1, tmp2
-	uaccess_ttbr0_disable \tmp1, \tmp2
-alternative_if ARM64_ALT_PAN_NOT_UAO
-	SET_PSTATE_PAN(1)
-alternative_else_nop_endif
-	.endm
-
-	.macro	uaccess_enable_not_uao, tmp1, tmp2, tmp3
-	uaccess_ttbr0_enable \tmp1, \tmp2, \tmp3
-alternative_if ARM64_ALT_PAN_NOT_UAO
-	SET_PSTATE_PAN(0)
-alternative_else_nop_endif
-	.endm
-
 /*
  * Remove the address tag from a virtual address, if present.
  */
diff --git a/arch/arm64/include/asm/uaccess.h b/arch/arm64/include/asm/uaccess.h
index 097d6bfac0b7..f9c75d623d0f 100644
--- a/arch/arm64/include/asm/uaccess.h
+++ b/arch/arm64/include/asm/uaccess.h
@@ -378,20 +378,34 @@ do {									\
 extern unsigned long __must_check __arch_copy_from_user(void *to, const void __user *from, unsigned long n);
 #define raw_copy_from_user(to, from, n)					\
 ({									\
-	__arch_copy_from_user((to), __uaccess_mask_ptr(from), (n));	\
+	unsigned long __cpy;						\
+	uaccess_enable_not_uao();					\
+	__cpy = __arch_copy_from_user((to),				\
+				      __uaccess_mask_ptr(from), (n));	\
+	uaccess_disable_not_uao();					\
+	__cpy;								\
 })
 
 extern unsigned long __must_check __arch_copy_to_user(void __user *to, const void *from, unsigned long n);
 #define raw_copy_to_user(to, from, n)					\
 ({									\
-	__arch_copy_to_user(__uaccess_mask_ptr(to), (from), (n));	\
+	unsigned long __cpy;						\
+	uaccess_enable_not_uao();					\
+	__cpy = __arch_copy_to_user(__uaccess_mask_ptr(to),		\
+				    (from), (n));			\
+	uaccess_disable_not_uao();					\
+	__cpy;								\
 })
 
 extern unsigned long __must_check __arch_copy_in_user(void __user *to, const void __user *from, unsigned long n);
 #define raw_copy_in_user(to, from, n)					\
 ({									\
-	__arch_copy_in_user(__uaccess_mask_ptr(to),			\
-			    __uaccess_mask_ptr(from), (n));		\
+	unsigned long __cpy;						\
+	uaccess_enable_not_uao();					\
+	__cpy = __arch_copy_in_user(__uaccess_mask_ptr(to),		\
+				    __uaccess_mask_ptr(from), (n));	\
+	uaccess_disable_not_uao();					\
+	__cpy;								\
 })
 
 #define INLINE_COPY_TO_USER
@@ -400,8 +414,11 @@ extern unsigned long __must_check __arch_copy_in_user(void __user *to, const voi
 extern unsigned long __must_check __arch_clear_user(void __user *to, unsigned long n);
 static inline unsigned long __must_check __clear_user(void __user *to, unsigned long n)
 {
-	if (access_ok(to, n))
+	if (access_ok(to, n)) {
+		uaccess_enable_not_uao();
 		n = __arch_clear_user(__uaccess_mask_ptr(to), n);
+		uaccess_disable_not_uao();
+	}
 	return n;
 }
 #define clear_user	__clear_user
diff --git a/arch/arm64/lib/clear_user.S b/arch/arm64/lib/clear_user.S
index 322b55664cca..aeafc03e961a 100644
--- a/arch/arm64/lib/clear_user.S
+++ b/arch/arm64/lib/clear_user.S
@@ -20,7 +20,6 @@
  * Alignment fixed up by hardware.
  */
 ENTRY(__arch_clear_user)
-	uaccess_enable_not_uao x2, x3, x4
 	mov	x2, x1			// save the size for fixup return
 	subs	x1, x1, #8
 	b.mi	2f
@@ -40,7 +39,6 @@ uao_user_alternative 9f, strh, sttrh, wzr, x0, 2
 	b.mi	5f
 uao_user_alternative 9f, strb, sttrb, wzr, x0, 0
 5:	mov	x0, #0
-	uaccess_disable_not_uao x2, x3
 	ret
 ENDPROC(__arch_clear_user)
 EXPORT_SYMBOL(__arch_clear_user)
@@ -48,6 +46,5 @@ EXPORT_SYMBOL(__arch_clear_user)
 	.section .fixup,"ax"
 	.align	2
 9:	mov	x0, x2			// return the original size
-	uaccess_disable_not_uao x2, x3
 	ret
 	.previous
diff --git a/arch/arm64/lib/copy_from_user.S b/arch/arm64/lib/copy_from_user.S
index 8472dc7798b3..ebb3c06cbb5d 100644
--- a/arch/arm64/lib/copy_from_user.S
+++ b/arch/arm64/lib/copy_from_user.S
@@ -54,10 +54,8 @@
 
 end	.req	x5
 ENTRY(__arch_copy_from_user)
-	uaccess_enable_not_uao x3, x4, x5
 	add	end, x0, x2
 #include "copy_template.S"
-	uaccess_disable_not_uao x3, x4
 	mov	x0, #0				// Nothing to copy
 	ret
 ENDPROC(__arch_copy_from_user)
@@ -66,6 +64,5 @@ EXPORT_SYMBOL(__arch_copy_from_user)
 	.section .fixup,"ax"
 	.align	2
 9998:	sub	x0, end, dst			// bytes not copied
-	uaccess_disable_not_uao x3, x4
 	ret
 	.previous
diff --git a/arch/arm64/lib/copy_in_user.S b/arch/arm64/lib/copy_in_user.S
index 8e0355c1e318..3d8153a1ebce 100644
--- a/arch/arm64/lib/copy_in_user.S
+++ b/arch/arm64/lib/copy_in_user.S
@@ -56,10 +56,8 @@
 end	.req	x5
 
 ENTRY(__arch_copy_in_user)
-	uaccess_enable_not_uao x3, x4, x5
 	add	end, x0, x2
 #include "copy_template.S"
-	uaccess_disable_not_uao x3, x4
 	mov	x0, #0
 	ret
 ENDPROC(__arch_copy_in_user)
@@ -68,6 +66,5 @@ EXPORT_SYMBOL(__arch_copy_in_user)
 	.section .fixup,"ax"
 	.align	2
 9998:	sub	x0, end, dst			// bytes not copied
-	uaccess_disable_not_uao x3, x4
 	ret
 	.previous
diff --git a/arch/arm64/lib/copy_to_user.S b/arch/arm64/lib/copy_to_user.S
index 6085214654dc..357eae2c18eb 100644
--- a/arch/arm64/lib/copy_to_user.S
+++ b/arch/arm64/lib/copy_to_user.S
@@ -53,10 +53,8 @@
 
 end	.req	x5
 ENTRY(__arch_copy_to_user)
-	uaccess_enable_not_uao x3, x4, x5
 	add	end, x0, x2
 #include "copy_template.S"
-	uaccess_disable_not_uao x3, x4
 	mov	x0, #0
 	ret
 ENDPROC(__arch_copy_to_user)
@@ -65,6 +63,5 @@ EXPORT_SYMBOL(__arch_copy_to_user)
 	.section .fixup,"ax"
 	.align	2
 9998:	sub	x0, end, dst			// bytes not copied
-	uaccess_disable_not_uao x3, x4
 	ret
 	.previous
diff --git a/arch/arm64/lib/uaccess_flushcache.c b/arch/arm64/lib/uaccess_flushcache.c
index cbfcbe6470a5..bfa30b75b2b8 100644
--- a/arch/arm64/lib/uaccess_flushcache.c
+++ b/arch/arm64/lib/uaccess_flushcache.c
@@ -28,7 +28,11 @@ void memcpy_page_flushcache(char *to, struct page *page, size_t offset,
 unsigned long __copy_user_flushcache(void *to, const void __user *from,
 				     unsigned long n)
 {
-	unsigned long rc = __arch_copy_from_user(to, from, n);
+	unsigned long rc;
+
+	uaccess_enable_not_uao();
+	rc = __arch_copy_from_user(to, from, n);
+	uaccess_disable_not_uao();
 
 	/* See above */
 	__clean_dcache_area_pop(to, n - rc);
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
