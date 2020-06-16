Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CFD11FAA93
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 09:57:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0jTOV1YxpABJccTxADDJ7Q4xGjSSU63Cm453EL8Q3Zs=; b=lOL7GtqjWSZsfUHddKayxNZp3X
	I/rAHW0EzY49G28I2B1L+a7wreJ2Q8TXSUHgmlKXp1HScnejEL7jBD7g6Y0CwNt6RblRYeonhwRpx
	GHPGG9yeJkVDbL8UrpSiAjfYb93APUE1JQaQOhvehXC7tk62Y3PVb9KJLWDYnQHiayS8yb/iAJrE7
	VmcLYsvJKdGQJnlQq2bSfK513XQEmbFBJjCU/ijoUlLPevxKrcWqDLjq36Mdx5H9gXGR+QhaHo2S0
	ng8piMbD6DiBwuSN6AJyVV0vIDsbIEXKC5p5u9Y3uJADD8Y6lZVoBP9y7aKz1RSpnpcRXGxA9au8b
	dUID87aA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl6Sk-0000mF-AH; Tue, 16 Jun 2020 07:56:54 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl6Rr-0008Vf-Gc
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 07:56:01 +0000
Received: by mail-pj1-x1044.google.com with SMTP id u8so1062511pje.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 00:55:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=4qJjSzS3qsc/46vw3CAVyVPzMy5PIT8l5/oTWqdt8oo=;
 b=HVStFhtaoA2oLF72yHWaH/McQnIrOlDwaKg8cD6LXc1gm6z/rS8aECm4aW7xb5L79G
 SR8v1GrrjvToggZbmD1d9zSXOcnOCLfQXXXa8veQEc9f42hxhzx+iN9S8c7akoRoXVMc
 0KX6grxPxdmn9fDmYiHahHxTIMTwBVaxmeiuQ7k4nU95/AiyqpMGGDDShKj7kD3hQ93W
 bWNIJhfap7tg48tWcNm9oysqFA59xleUGku8kKDhISjmlzTKlcktfup9ZrOPJxO3JN21
 Ak+Y4vIL0E0g/3Rsg9W74pZqZa3AEhOqfrEi5FMzfGcFzCm6Pr/9DXTLTsXQg6ipAAoS
 rRHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=4qJjSzS3qsc/46vw3CAVyVPzMy5PIT8l5/oTWqdt8oo=;
 b=lzKIa3LBngI2+9sR9LvCK/cOB9CSfF/NAmu76IzoLRz+r1AWqF19ExzAaoVEow4L4f
 V/5E6gwMJHzgjU3P1KTdrTZVbbe3OEu2o2XV+j9VqCUZjo07ffLxQysxqyqqQUAQN0ru
 U5TvYwZEngrRMdtMfY7surEbOpqfGJDerM10F+Kjo6RcgriitQxN0IifJQY+ZW/4EWLq
 mp8srgF2RdeHg9Ibam/CVFxlAASGcFHRcBpgLH1DThA2/B5oFfLcSdi1Qz1B/1FwoYOt
 r43j4WuC0fRDptRcOy5j/2MbTNA0ekkPKsxAT1qf3o19X5jG+i5XgJU/CBIvKoJZlaF6
 j1oA==
X-Gm-Message-State: AOAM531k7G53Bt2avxMoFUq8TncSGeQgE0VAuLTsP6euuevjtmURwO5z
 MJTENIUEfd13IBiIE7TQZn0A6PhC
X-Google-Smtp-Source: ABdhPJw8nrhSAbQv6U6JtmU757YOBHe90s7/C0KYZ4X97oly+vlar7iFJYWGJ/U5Y0JhYw5w0OSwgg==
X-Received: by 2002:a17:902:7204:: with SMTP id
 ba4mr1003927plb.250.1592294158483; 
 Tue, 16 Jun 2020 00:55:58 -0700 (PDT)
Received: from laptop.hsd1.wa.comcast.net
 ([2601:600:817f:a132:df3e:521d:99d5:710d])
 by smtp.gmail.com with ESMTPSA id g6sm16168984pfb.164.2020.06.16.00.55.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 00:55:58 -0700 (PDT)
From: Andrei Vagin <avagin@gmail.com>
To: linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH 3/6] arm64/vdso: Add time namespace page
Date: Tue, 16 Jun 2020 00:55:42 -0700
Message-Id: <20200616075545.312684-4-avagin@gmail.com>
X-Mailer: git-send-email 2.17.2
In-Reply-To: <20200616075545.312684-1-avagin@gmail.com>
References: <20200616075545.312684-1-avagin@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_005559_551289_278CD334 
X-CRM114-Status: GOOD (  20.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [avagin[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Dmitry Safonov <dima@arista.com>,
 linux-kernel@vger.kernel.org, Andrei Vagin <avagin@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Allocate the time namespace page among VVAR pages.  Provide
__arch_get_timens_vdso_data() helper for VDSO code to get the
code-relative position of VVARs on that special page.

If a task belongs to a time namespace then the VVAR page which contains
the system wide VDSO data is replaced with a namespace specific page
which has the same layout as the VVAR page. That page has vdso_data->seq
set to 1 to enforce the slow path and vdso_data->clock_mode set to
VCLOCK_TIMENS to enforce the time namespace handling path.

The extra check in the case that vdso_data->seq is odd, e.g. a concurrent
update of the VDSO data is in progress, is not really affecting regular
tasks which are not part of a time namespace as the task is spin waiting
for the update to finish and vdso_data->seq to become even again.

If a time namespace task hits that code path, it invokes the corresponding
time getter function which retrieves the real VVAR page, reads host time
and then adds the offset for the requested clock which is stored in the
special VVAR page.

Cc: Mark Rutland <mark.rutland@arm.com>
Reviewed-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
Reviewed-by: Dmitry Safonov <dima@arista.com>
Signed-off-by: Andrei Vagin <avagin@gmail.com>
---
 arch/arm64/include/asm/vdso.h                 |  2 ++
 .../include/asm/vdso/compat_gettimeofday.h    | 12 ++++++++++++
 arch/arm64/include/asm/vdso/gettimeofday.h    |  8 ++++++++
 arch/arm64/kernel/vdso.c                      | 19 ++++++++++++++++---
 arch/arm64/kernel/vdso/vdso.lds.S             |  5 ++++-
 arch/arm64/kernel/vdso32/vdso.lds.S           |  5 ++++-
 include/vdso/datapage.h                       |  1 +
 7 files changed, 47 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/include/asm/vdso.h b/arch/arm64/include/asm/vdso.h
index 07468428fd29..f99dcb94b438 100644
--- a/arch/arm64/include/asm/vdso.h
+++ b/arch/arm64/include/asm/vdso.h
@@ -12,6 +12,8 @@
  */
 #define VDSO_LBASE	0x0
 
+#define __VVAR_PAGES    2
+
 #ifndef __ASSEMBLY__
 
 #include <generated/vdso-offsets.h>
diff --git a/arch/arm64/include/asm/vdso/compat_gettimeofday.h b/arch/arm64/include/asm/vdso/compat_gettimeofday.h
index b6907ae78e53..b7c549d46d18 100644
--- a/arch/arm64/include/asm/vdso/compat_gettimeofday.h
+++ b/arch/arm64/include/asm/vdso/compat_gettimeofday.h
@@ -152,6 +152,18 @@ static __always_inline const struct vdso_data *__arch_get_vdso_data(void)
 	return ret;
 }
 
+#ifdef CONFIG_TIME_NS
+static __always_inline const struct vdso_data *__arch_get_timens_vdso_data(void)
+{
+	const struct vdso_data *ret;
+
+	/* See __arch_get_vdso_data(). */
+	asm volatile("mov %0, %1" : "=r"(ret) : "r"(_timens_data));
+
+	return ret;
+}
+#endif
+
 #endif /* !__ASSEMBLY__ */
 
 #endif /* __ASM_VDSO_GETTIMEOFDAY_H */
diff --git a/arch/arm64/include/asm/vdso/gettimeofday.h b/arch/arm64/include/asm/vdso/gettimeofday.h
index afba6ba332f8..cf39eae5eaaf 100644
--- a/arch/arm64/include/asm/vdso/gettimeofday.h
+++ b/arch/arm64/include/asm/vdso/gettimeofday.h
@@ -96,6 +96,14 @@ const struct vdso_data *__arch_get_vdso_data(void)
 	return _vdso_data;
 }
 
+#ifdef CONFIG_TIME_NS
+static __always_inline
+const struct vdso_data *__arch_get_timens_vdso_data(void)
+{
+	return _timens_data;
+}
+#endif
+
 #endif /* !__ASSEMBLY__ */
 
 #endif /* __ASM_VDSO_GETTIMEOFDAY_H */
diff --git a/arch/arm64/kernel/vdso.c b/arch/arm64/kernel/vdso.c
index df4bb736d28a..14d5b7642b62 100644
--- a/arch/arm64/kernel/vdso.c
+++ b/arch/arm64/kernel/vdso.c
@@ -40,6 +40,12 @@ enum vdso_abi {
 #endif /* CONFIG_COMPAT_VDSO */
 };
 
+enum vvar_pages {
+	VVAR_DATA_PAGE_OFFSET,
+	VVAR_TIMENS_PAGE_OFFSET,
+	VVAR_NR_PAGES,
+};
+
 struct vdso_abi_info {
 	const char *name;
 	const char *vdso_code_start;
@@ -126,6 +132,11 @@ static int __vdso_init(enum vdso_abi abi)
 }
 
 #ifdef CONFIG_TIME_NS
+struct vdso_data *arch_get_vdso_data(void *vvar_page)
+{
+	return (struct vdso_data *)(vvar_page);
+}
+
 /*
  * The vvar page layout depends on whether a task belongs to the root or
  * non-root time namespace. Whenever a task changes its namespace, the VVAR
@@ -175,9 +186,11 @@ static int __setup_additional_pages(enum vdso_abi abi,
 	unsigned long gp_flags = 0;
 	void *ret;
 
+	BUILD_BUG_ON(VVAR_NR_PAGES != __VVAR_PAGES);
+
 	vdso_text_len = vdso_info[abi].vdso_pages << PAGE_SHIFT;
 	/* Be sure to map the data page */
-	vdso_mapping_len = vdso_text_len + PAGE_SIZE;
+	vdso_mapping_len = vdso_text_len + VVAR_NR_PAGES * PAGE_SIZE;
 
 	vdso_base = get_unmapped_area(NULL, 0, vdso_mapping_len, 0, 0);
 	if (IS_ERR_VALUE(vdso_base)) {
@@ -185,7 +198,7 @@ static int __setup_additional_pages(enum vdso_abi abi,
 		goto up_fail;
 	}
 
-	ret = _install_special_mapping(mm, vdso_base, PAGE_SIZE,
+	ret = _install_special_mapping(mm, vdso_base, VVAR_NR_PAGES * PAGE_SIZE,
 				       VM_READ|VM_MAYREAD|VM_PFNMAP,
 				       vdso_info[abi].dm);
 	if (IS_ERR(ret))
@@ -194,7 +207,7 @@ static int __setup_additional_pages(enum vdso_abi abi,
 	if (IS_ENABLED(CONFIG_ARM64_BTI_KERNEL) && system_supports_bti())
 		gp_flags = VM_ARM64_BTI;
 
-	vdso_base += PAGE_SIZE;
+	vdso_base += VVAR_NR_PAGES * PAGE_SIZE;
 	mm->context.vdso = (void *)vdso_base;
 	ret = _install_special_mapping(mm, vdso_base, vdso_text_len,
 				       VM_READ|VM_EXEC|gp_flags|
diff --git a/arch/arm64/kernel/vdso/vdso.lds.S b/arch/arm64/kernel/vdso/vdso.lds.S
index 7ad2d3a0cd48..d808ad31e01f 100644
--- a/arch/arm64/kernel/vdso/vdso.lds.S
+++ b/arch/arm64/kernel/vdso/vdso.lds.S
@@ -17,7 +17,10 @@ OUTPUT_ARCH(aarch64)
 
 SECTIONS
 {
-	PROVIDE(_vdso_data = . - PAGE_SIZE);
+	PROVIDE(_vdso_data = . - __VVAR_PAGES * PAGE_SIZE);
+#ifdef CONFIG_TIME_NS
+	PROVIDE(_timens_data = _vdso_data + PAGE_SIZE);
+#endif
 	. = VDSO_LBASE + SIZEOF_HEADERS;
 
 	.hash		: { *(.hash) }			:text
diff --git a/arch/arm64/kernel/vdso32/vdso.lds.S b/arch/arm64/kernel/vdso32/vdso.lds.S
index a3944927eaeb..06cc60a9630f 100644
--- a/arch/arm64/kernel/vdso32/vdso.lds.S
+++ b/arch/arm64/kernel/vdso32/vdso.lds.S
@@ -17,7 +17,10 @@ OUTPUT_ARCH(arm)
 
 SECTIONS
 {
-	PROVIDE_HIDDEN(_vdso_data = . - PAGE_SIZE);
+	PROVIDE_HIDDEN(_vdso_data = . - __VVAR_PAGES * PAGE_SIZE);
+#ifdef CONFIG_TIME_NS
+	PROVIDE_HIDDEN(_timens_data = _vdso_data + PAGE_SIZE);
+#endif
 	. = VDSO_LBASE + SIZEOF_HEADERS;
 
 	.hash		: { *(.hash) }			:text
diff --git a/include/vdso/datapage.h b/include/vdso/datapage.h
index 7955c56d6b3c..ee810cae4e1e 100644
--- a/include/vdso/datapage.h
+++ b/include/vdso/datapage.h
@@ -109,6 +109,7 @@ struct vdso_data {
  * relocation, and this is what we need.
  */
 extern struct vdso_data _vdso_data[CS_BASES] __attribute__((visibility("hidden")));
+extern struct vdso_data _timens_data[CS_BASES] __attribute__((visibility("hidden")));
 
 /*
  * The generic vDSO implementation requires that gettimeofday.h
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
