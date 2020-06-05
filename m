Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17D511EF258
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 09:45:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=efmjVkZQgcx0ugUv9yRuWa9RVoMjvvj68TjXIfgZsh8=; b=jBcU0RhEbDN8a3DCk8kVxSijeN
	orKQyyGJMUnLJIFNDXhFkQZaS0AgcPbLBGeyZvV3yoUqK4kqId2ptIv6Q97bQrJKROoqLBcUKJuqA
	EPzPtv0kkj7QQnPD/tbRmt8NX1fN3ulUeBu65tqVi3Pn5ZVGmHZUEOytGB5ihHN5Jn0iz/nm8Aadt
	QwUJq9Hf5/mim+X82AjXF99nbMOT+QkaMXfzmYCIK8RZAQ3n7766hVevuJEbA/dXfeB73b58afDh4
	K2BKgca+Th9cZ9eCZhRHniXhC2dF3yoHLtE2zw2A2UxAeY+t+2JV5WucZo4iGzDxUmDW2vclUyXiK
	bUTwKM+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh72l-0007St-Pc; Fri, 05 Jun 2020 07:45:35 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh72d-0007S5-P1
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 07:45:29 +0000
Received: by mail-pl1-x642.google.com with SMTP id n9so3329045plk.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 05 Jun 2020 00:45:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=bmrm2m7W0PSX2i69F/rKXTi11ScgSrzl4tXCB1MSrUA=;
 b=SgVXZTnwu/kB/WAJ0aBMI7PpNh2+yxXii1tt4cohX0MmEyfLL2qa/veUkJgpOLfnoe
 VPTvuKAkPV2giTt93wef9dWmTMON5iqBWQRM1QbmQ3VXYGpp4mxSCxfEEyYoXZMYi6S3
 Z53SYgX/AbaJV39WHCZWrrPttqh7qUxiIWzMPm8ttl1LGcovBVrw62ObioyK0pN09HV6
 i+jZeqeOatRMHduGAFr1y4A65MPY8yziA/ZW4PsfVeejGbFSbG65OpBno1lGxwulQKai
 t/9cQxZPzA1rHDkIsq8je4vGc5nay+QiQpoyWRKdVzMVE0XYTEIUq7zDLTNHne6+tsfF
 r+5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=bmrm2m7W0PSX2i69F/rKXTi11ScgSrzl4tXCB1MSrUA=;
 b=rRUCnz6QvyKTngizuC36h40MeNAFMWzA6QjTBT5fftbDy7Qh6+ltMyoKKRq1g0jLXb
 6EfyFVzIjUZsvFj2fatndHq46g3C4XaIOz+GyMlpWz89JoAg8nlIH1OfdCARMQSm2G7z
 vXVzFbWxGgwIPvuVvPyGfNdQQLDFi0MUJUJ2/S5EyyNr/K9dHznRfi5Ex7TOtKCzzdcc
 amu/+0cL3XhThclHC8aR37nGyhZR5z1v7/KGxWwY99D3tj0HsNAM5g53IIRl+aSMPSTy
 6brdF/k+bRTHxGmL8j6qWUiSwKP2GoONIUcUxuEdJtJUh3fZBOy1CvrT4ES4SlGi5nd8
 J6Nw==
X-Gm-Message-State: AOAM5304wSshNwCNQlQmhmXbFTWlH0vtNX80d8dCRYzMp1Qjq4HKckOD
 prxHZrxH9zOOsg3I07ghtes=
X-Google-Smtp-Source: ABdhPJw4vZeUd7aqryBVZOFCiyyc/Phkd9UtE5FELuWOks5+AwIiDCiyLgenDYl2GB5h4biJXb3BMA==
X-Received: by 2002:a17:90a:d784:: with SMTP id
 z4mr1597708pju.30.1591343125201; 
 Fri, 05 Jun 2020 00:45:25 -0700 (PDT)
Received: from laptop.hsd1.wa.comcast.net
 ([2601:600:817f:a132:df3e:521d:99d5:710d])
 by smtp.gmail.com with ESMTPSA id 145sm6562544pfa.53.2020.06.05.00.45.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 05 Jun 2020 00:45:24 -0700 (PDT)
From: Andrei Vagin <avagin@gmail.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Dmitry Safonov <dima@arista.com>
Subject: [PATCH 3/6 v4] arm64/vdso: Add time namespace page
Date: Fri,  5 Jun 2020 00:45:19 -0700
Message-Id: <20200605074519.354579-1-avagin@gmail.com>
X-Mailer: git-send-email 2.17.2
In-Reply-To: <20200602180259.76361-4-avagin@gmail.com>
References: <20200602180259.76361-4-avagin@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_004527_814544_996F18B9 
X-CRM114-Status: GOOD (  21.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [avagin[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-kernel@vger.kernel.org,
 Andrei Vagin <avagin@gmail.com>, Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linux-arm-kernel@lists.infradead.org
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
v4: - fix an issue reported by the lkp robot.
    - vvar has the same size with/without CONFIG_TIME_NAMESPACE, but the
      timens page isn't allocated on !CONFIG_TIME_NAMESPACE. This
      simplifies criu/vdso migration between different kernel configs.

 arch/arm64/include/asm/vdso.h                 |  2 ++
 .../include/asm/vdso/compat_gettimeofday.h    | 12 +++++++++++
 arch/arm64/include/asm/vdso/gettimeofday.h    |  8 ++++++++
 arch/arm64/kernel/vdso.c                      | 20 ++++++++++++++++---
 arch/arm64/kernel/vdso/vdso.lds.S             |  5 ++++-
 arch/arm64/kernel/vdso32/vdso.lds.S           |  5 ++++-
 include/vdso/datapage.h                       |  1 +
 7 files changed, 48 insertions(+), 5 deletions(-)

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
index 33df3cdf7982..fd609120386d 100644
--- a/arch/arm64/kernel/vdso.c
+++ b/arch/arm64/kernel/vdso.c
@@ -46,6 +46,12 @@ enum arch_vdso_type {
 #define VDSO_TYPES		(ARM64_VDSO + 1)
 #endif /* CONFIG_COMPAT_VDSO */
 
+enum vvar_pages {
+	VVAR_DATA_PAGE_OFFSET,
+	VVAR_TIMENS_PAGE_OFFSET,
+	VVAR_NR_PAGES,
+};
+
 struct __vdso_abi {
 	const char *name;
 	const char *vdso_code_start;
@@ -81,6 +87,7 @@ static union {
 } vdso_data_store __page_aligned_data;
 struct vdso_data *vdso_data = vdso_data_store.data;
 
+
 static int __vdso_remap(enum arch_vdso_type arch_index,
 			const struct vm_special_mapping *sm,
 			struct vm_area_struct *new_vma)
@@ -132,6 +139,11 @@ static int __vdso_init(enum arch_vdso_type arch_index)
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
@@ -180,9 +192,11 @@ static int __setup_additional_pages(enum arch_vdso_type arch_index,
 	unsigned long vdso_base, vdso_text_len, vdso_mapping_len;
 	void *ret;
 
+	BUILD_BUG_ON(VVAR_NR_PAGES != __VVAR_PAGES);
+
 	vdso_text_len = vdso_lookup[arch_index].vdso_pages << PAGE_SHIFT;
 	/* Be sure to map the data page */
-	vdso_mapping_len = vdso_text_len + PAGE_SIZE;
+	vdso_mapping_len = vdso_text_len + VVAR_NR_PAGES * PAGE_SIZE;
 
 	vdso_base = get_unmapped_area(NULL, 0, vdso_mapping_len, 0, 0);
 	if (IS_ERR_VALUE(vdso_base)) {
@@ -190,13 +204,13 @@ static int __setup_additional_pages(enum arch_vdso_type arch_index,
 		goto up_fail;
 	}
 
-	ret = _install_special_mapping(mm, vdso_base, PAGE_SIZE,
+	ret = _install_special_mapping(mm, vdso_base, VVAR_NR_PAGES * PAGE_SIZE,
 				       VM_READ|VM_MAYREAD|VM_PFNMAP,
 				       vdso_lookup[arch_index].dm);
 	if (IS_ERR(ret))
 		goto up_fail;
 
-	vdso_base += PAGE_SIZE;
+	vdso_base += VVAR_NR_PAGES * PAGE_SIZE;
 	mm->context.vdso = (void *)vdso_base;
 	ret = _install_special_mapping(mm, vdso_base, vdso_text_len,
 				       VM_READ|VM_EXEC|
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
