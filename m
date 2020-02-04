Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FAEC152024
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 19:00:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=lrcyhhBvsDhw85gv6OORJIqGQh4rKsJIeU4aC7HJz34=; b=LInMt6dc/Bs4qN+c86iMWaygTv
	pIHYZV2l/bTz1OkJTKzha8MO1OMZwt41gtyT2+FKc7amrW4Tjg+nFfUET7hFDUSaa38BvZBjsHHJi
	1BzoOgeUosyg1bXSoSgIKt78eoAPGs/v2KkLfk67u8M9aZMsel8+7pSUuabRrwLg7fYXf9VzOIcc6
	Q/C6dCmQSD6F5sh34sCfLB1K8Y7P+qArS4DGp98qNcIym9tmz2uAIfR406jVC8jHzL4e3BlVTMlZe
	7yH5WSG3ZwkbB88NZBBYrjLJb+gtND+flddDGGMR3j+3bMpzuQfmfv3WrvcQDgbzT6MPregKEsZ7H
	sMWGFQMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iz2Ur-0000nF-7x; Tue, 04 Feb 2020 18:00:25 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iz2Tv-0007Yg-Oi
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 17:59:30 +0000
Received: by mail-pg1-x544.google.com with SMTP id l24so10035816pgk.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Feb 2020 09:59:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=jzwpyaAi9qfvtDcphiGn84RH5NYgJbTyN+92eOI3fxI=;
 b=qPyKceqZYfzBGk1eYDxatw3fSM0UvHz5LIwlqPA2eA1hiNDR1pi5SUexK8zNyoT4s7
 YNq/b0BwXOmzaaMTcvGZ8lq6LH2SuSWSQuGZ1xoU7XI5cCP8u4EUu2PLxkZwIO6r/xUC
 i9NFkxFqtW+2zbRZdt9aw5ljceJq5VomxXUt2R0uZqFuR1RoO5lAhfcmhW5WnVOfOjTM
 cw8lGa1s3m3DvGPfd/I9C5EW8/qj8rkEYkzPsLB70xIyvllFRXztQajnK1wCoCA67Xcn
 bIN7iDtq2P2EEu0i6JheCkwZQxAiKtluH69JFSLYPMf5GnBKPlhyghXwMNzxN5oE+4pD
 95vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=jzwpyaAi9qfvtDcphiGn84RH5NYgJbTyN+92eOI3fxI=;
 b=rQSdT9ZY+SieX/Yd5bQRng70reJzVRrqKnO8eFW5dEi5PwVQ1ED7fk+fgSBY/8iLKx
 eD86Pn8AwoVA09w5izRnHzO0ZfOELRQ2WZ2QoLS5Lqwpto4lD3STYg91n1R0tiLtVO0N
 +/SweLGPlN+Qged0nzXrFp5PZs3HJauMN2ViaXt03GamnuMt/m4oGVcmXi1yiSPPAYWm
 p3Ho29vgx55CXj04xlbPSdpM5KovdZ2VQyCNa6C/BprO+hu3RIiXy+lGsrr679AN3QAA
 Kd1xhijkKi5DyMc4FdPYT1pyadVjxb/jJXDP5aMGYd7Jo1rv9XZ6j4+56cDIoUyaO/SW
 PmvA==
X-Gm-Message-State: APjAAAUThk//LT+NKflaEzI7aUlXKZezCcULb93AzEn1XUwQl2n0bzPu
 bK2UbgOwR3C/AsPaguMu7Rs=
X-Google-Smtp-Source: APXvYqzLRIHbMcFv3zpUfHLC4QFg9lmDdBwhQXR0HUgudWEYxHZ1sND6lAY9NEjCev3yCwB5BWL08w==
X-Received: by 2002:a63:4b24:: with SMTP id y36mr32051434pga.176.1580839166926; 
 Tue, 04 Feb 2020 09:59:26 -0800 (PST)
Received: from localhost.localdomain ([2620:0:1008:fd00:25a6:3140:768c:a64d])
 by smtp.gmail.com with ESMTPSA id
 d73sm25414465pfd.109.2020.02.04.09.59.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Feb 2020 09:59:25 -0800 (PST)
From: Andrei Vagin <avagin@gmail.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: [PATCH 3/5] arm64/vdso: Add time napespace page
Date: Tue,  4 Feb 2020 09:59:11 -0800
Message-Id: <20200204175913.74901-4-avagin@gmail.com>
X-Mailer: git-send-email 2.17.2
In-Reply-To: <20200204175913.74901-1-avagin@gmail.com>
References: <20200204175913.74901-1-avagin@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_095927_861306_75F11043 
X-CRM114-Status: GOOD (  20.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [avagin[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Thomas Gleixner <tglx@linutronix.de>, Andrei Vagin <avagin@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Dmitry Safonov <dima@arista.com>
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

Signed-off-by: Andrei Vagin <avagin@gmail.com>
---
 arch/arm64/Kconfig                               |  1 +
 .../arm64/include/asm/vdso/compat_gettimeofday.h | 11 +++++++++++
 arch/arm64/include/asm/vdso/gettimeofday.h       |  8 ++++++++
 arch/arm64/kernel/vdso.c                         | 16 +++++++++++++---
 arch/arm64/kernel/vdso/vdso.lds.S                |  3 ++-
 arch/arm64/kernel/vdso32/vdso.lds.S              |  3 ++-
 include/vdso/datapage.h                          |  1 +
 7 files changed, 38 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index e688dfad0b72..a671c2e36e5f 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -109,6 +109,7 @@ config ARM64
 	select GENERIC_STRNLEN_USER
 	select GENERIC_TIME_VSYSCALL
 	select GENERIC_GETTIMEOFDAY
+	select GENERIC_VDSO_TIME_NS
 	select HANDLE_DOMAIN_IRQ
 	select HARDIRQS_SW_RESEND
 	select HAVE_PCI
diff --git a/arch/arm64/include/asm/vdso/compat_gettimeofday.h b/arch/arm64/include/asm/vdso/compat_gettimeofday.h
index 537b1e695365..30a674f598c7 100644
--- a/arch/arm64/include/asm/vdso/compat_gettimeofday.h
+++ b/arch/arm64/include/asm/vdso/compat_gettimeofday.h
@@ -161,6 +161,17 @@ static __always_inline const struct vdso_data *__arch_get_vdso_data(void)
 	return ret;
 }
 
+#ifdef CONFIG_TIME_NS
+static __always_inline const struct vdso_data *__arch_get_timens_vdso_data(void)
+{
+	const struct vdso_data *ret;
+
+	asm volatile("mov %0, %1" : "=r"(ret) : "r"(_timens_data));
+
+	return ret;
+}
+#endif
+
 #endif /* !__ASSEMBLY__ */
 
 #endif /* __ASM_VDSO_GETTIMEOFDAY_H */
diff --git a/arch/arm64/include/asm/vdso/gettimeofday.h b/arch/arm64/include/asm/vdso/gettimeofday.h
index b08f476b72b4..aa38e80dfbc4 100644
--- a/arch/arm64/include/asm/vdso/gettimeofday.h
+++ b/arch/arm64/include/asm/vdso/gettimeofday.h
@@ -98,6 +98,14 @@ const struct vdso_data *__arch_get_vdso_data(void)
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
index 5ef808ddf08c..bc93e26ae485 100644
--- a/arch/arm64/kernel/vdso.c
+++ b/arch/arm64/kernel/vdso.c
@@ -46,6 +46,10 @@ enum arch_vdso_type {
 #define VDSO_TYPES		(ARM64_VDSO + 1)
 #endif /* CONFIG_COMPAT_VDSO */
 
+#define VVAR_DATA_PAGE_OFFSET	0
+#define VVAR_TIMENS_PAGE_OFFSET	1
+#define VVAR_NR_PAGES		2
+
 struct __vdso_abi {
 	const char *name;
 	const char *vdso_code_start;
@@ -81,6 +85,12 @@ static union {
 } vdso_data_store __page_aligned_data;
 struct vdso_data *vdso_data = vdso_data_store.data;
 
+
+struct vdso_data *arch_get_vdso_data(void *vvar_page)
+{
+	return (struct vdso_data *)(vvar_page);
+}
+
 static int __vdso_remap(enum arch_vdso_type arch_index,
 			const struct vm_special_mapping *sm,
 			struct vm_area_struct *new_vma)
@@ -182,7 +192,7 @@ static int __setup_additional_pages(enum arch_vdso_type arch_index,
 
 	vdso_text_len = vdso_lookup[arch_index].vdso_pages << PAGE_SHIFT;
 	/* Be sure to map the data page */
-	vdso_mapping_len = vdso_text_len + PAGE_SIZE;
+	vdso_mapping_len = vdso_text_len + VVAR_NR_PAGES * PAGE_SIZE;
 
 	vdso_base = get_unmapped_area(NULL, 0, vdso_mapping_len, 0, 0);
 	if (IS_ERR_VALUE(vdso_base)) {
@@ -190,13 +200,13 @@ static int __setup_additional_pages(enum arch_vdso_type arch_index,
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
index 7ad2d3a0cd48..a90b7d14e990 100644
--- a/arch/arm64/kernel/vdso/vdso.lds.S
+++ b/arch/arm64/kernel/vdso/vdso.lds.S
@@ -17,7 +17,8 @@ OUTPUT_ARCH(aarch64)
 
 SECTIONS
 {
-	PROVIDE(_vdso_data = . - PAGE_SIZE);
+	PROVIDE(_vdso_data = . - 2 * PAGE_SIZE);
+	PROVIDE(_timens_data = _vdso_data + PAGE_SIZE);
 	. = VDSO_LBASE + SIZEOF_HEADERS;
 
 	.hash		: { *(.hash) }			:text
diff --git a/arch/arm64/kernel/vdso32/vdso.lds.S b/arch/arm64/kernel/vdso32/vdso.lds.S
index a3944927eaeb..3e432b536e53 100644
--- a/arch/arm64/kernel/vdso32/vdso.lds.S
+++ b/arch/arm64/kernel/vdso32/vdso.lds.S
@@ -17,7 +17,8 @@ OUTPUT_ARCH(arm)
 
 SECTIONS
 {
-	PROVIDE_HIDDEN(_vdso_data = . - PAGE_SIZE);
+	PROVIDE_HIDDEN(_vdso_data = . - 2 * PAGE_SIZE);
+	PROVIDE_HIDDEN(_timens_data = _vdso_data + PAGE_SIZE);
 	. = VDSO_LBASE + SIZEOF_HEADERS;
 
 	.hash		: { *(.hash) }			:text
diff --git a/include/vdso/datapage.h b/include/vdso/datapage.h
index c5f347cc5e55..57eec6caca69 100644
--- a/include/vdso/datapage.h
+++ b/include/vdso/datapage.h
@@ -100,6 +100,7 @@ struct vdso_data {
  * relocation, and this is what we need.
  */
 extern struct vdso_data _vdso_data[CS_BASES] __attribute__((visibility("hidden")));
+extern struct vdso_data _timens_data[CS_BASES] __attribute__((visibility("hidden")));
 
 #endif /* !__ASSEMBLY__ */
 
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
