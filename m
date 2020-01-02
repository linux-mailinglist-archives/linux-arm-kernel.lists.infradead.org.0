Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0E1412EB19
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 22:14:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=54SFZ493DQ62tbZ9wmRaFIWbc7YmI4j7+9F8DOZFNNk=; b=HTfFfig9MEC5w8
	w9yU+yifvX7loU2uey0AwwgyMRIokuH26texOPcWX+VFxirXUiosRU9rk2EThgg/qfZcqDcqrEEUG
	D4MV/5n3jUeUWJiPATelpYGdRJhonPRJZ4Pb/H2VZCy054uqbRWdm19A9G5jDICvFgyAJww1oHR4i
	fQCCp1fvuaBcIWr2SyWFYd5ltVpueCFCvCn7aw8MgAthhhu+IeJGpjXQxQ3i7If2B4Xw4XFPMTKWI
	m6aHsJ1ztlWbiGmHlgMsbCfGhVi69dQy9SYnaMXh3NQ71qFpAA02D75MPJBlzk3uG/iDuSv5bsZ7t
	1pgYAlC0hYKE7oq5lfLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in7np-0004bz-Ua; Thu, 02 Jan 2020 21:14:45 +0000
Received: from mail-qv1-xf42.google.com ([2607:f8b0:4864:20::f42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1in7nC-00049s-2V
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 21:14:07 +0000
Received: by mail-qv1-xf42.google.com with SMTP id dp13so15502490qvb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 Jan 2020 13:14:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=iY0wdT6Iyx/8ZKhCgZ1KdFJ1x/iuAERq6Pe9L1nXo/s=;
 b=eL9BWZOxdS+It5wCivmlzGJvzcHKxYfpeEJgOm/agfxG0fy8fHTWhK8NooW1Qg6hVC
 YWCJ/ORKZJbVJITfTKL5pleI0gtEkz+3x7Cju2sjYrLOABAzOdIlKO7U4fVlBpJ6A4z5
 zkP8Trwi4Ek2K3i7mE3yzoFSKZqyJTWCIRLfXGOPk5rzE47mr+pOVkgKORYULGMGNqe1
 82jxp+rE33JgphK8VS+M9p6Jjf3hrxNeRDsfzboK8qpHCnxeg/Y4/wtchPtJdEa3quI2
 yZoXM3p8uoQnEl/fn+f3i0M0itchsq8FULtwHMcugghKpSCMCCGn6gyzs0e9JRDHU+xd
 30uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=iY0wdT6Iyx/8ZKhCgZ1KdFJ1x/iuAERq6Pe9L1nXo/s=;
 b=ruaJswV6oPIkJOLDgAplBhQdQHnrZADywt6xsu19SmwndwJZrQ6kIXSWhzJ9V0vzcM
 heb4MW+jZwh5IAdMONhQ1C3WV5IoaFrjuGtTGHHt9Airwzicc3PBqlJnzxiG2ylR+wNm
 qezmKyu19uct6KKq2xF8OZgDGgn/QURF9+ZNQdIGsMWd8PwyMZeU8oCEIwVET2aYtP6E
 zzVlxMDzKlzQ4BioYoUrais1lBuaLVIPafCQw2wFI21UicglKgDg9g8Gb8dIeMMXFA8h
 w0FCJ5lk1otM0BddquIiNTXPze88avw5z1/D9oBh75WINunBcCcWqEUAAX7yOvdy6TnI
 gcbA==
X-Gm-Message-State: APjAAAW7fI/HRloxkAdauSgOHRatqdWGJ1SDr9WqRl36/xPbGJJNJES5
 3QTmasLwmVXMv3ayuFldCY1+gg==
X-Google-Smtp-Source: APXvYqz2QuO4lxo78Y6Z0xG0VtOUyLpXY1pvFdChYQ3oReObbyuczepNVqWt0iK7l5riEUD6iu35yw==
X-Received: by 2002:a05:6214:192f:: with SMTP id
 es15mr66400422qvb.219.1577999643711; 
 Thu, 02 Jan 2020 13:14:03 -0800 (PST)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id f97sm17384185qtb.18.2020.01.02.13.14.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Jan 2020 13:14:03 -0800 (PST)
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
Subject: [PATCH v5 2/6] arm/arm64/xen: use C inlines for privcmd_call
Date: Thu,  2 Jan 2020 16:13:53 -0500
Message-Id: <20200102211357.8042-3-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200102211357.8042-1-pasha.tatashin@soleen.com>
References: <20200102211357.8042-1-pasha.tatashin@soleen.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_131406_117512_53B9A7B0 
X-CRM114-Status: GOOD (  13.26  )
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

privcmd_call requires to enable access to userspace for the
duration of the hypercall.

Currently, this is done via assembly macros. Change it to C
inlines instead.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
Acked-by: Stefano Stabellini <sstabellini@kernel.org>
Reviewed-by: Julien Grall <julien@xen.org>
---
 arch/arm/include/asm/xen/hypercall.h   |  6 ++++++
 arch/arm/xen/enlighten.c               |  2 +-
 arch/arm/xen/hypercall.S               |  4 ++--
 arch/arm64/include/asm/xen/hypercall.h | 24 ++++++++++++++++++++++++
 arch/arm64/xen/hypercall.S             | 19 ++-----------------
 include/xen/arm/hypercall.h            |  6 +++---
 6 files changed, 38 insertions(+), 23 deletions(-)

diff --git a/arch/arm/include/asm/xen/hypercall.h b/arch/arm/include/asm/xen/hypercall.h
index c6882bba5284..cac5bd9ef519 100644
--- a/arch/arm/include/asm/xen/hypercall.h
+++ b/arch/arm/include/asm/xen/hypercall.h
@@ -2,4 +2,10 @@
 #define _ASM_ARM_XEN_HYPERCALL_H
 #include <xen/arm/hypercall.h>
 
+static inline long privcmd_call(unsigned int call, unsigned long a1,
+				unsigned long a2, unsigned long a3,
+				unsigned long a4, unsigned long a5)
+{
+	return arch_privcmd_call(call, a1, a2, a3, a4, a5);
+}
 #endif /* _ASM_ARM_XEN_HYPERCALL_H */
diff --git a/arch/arm/xen/enlighten.c b/arch/arm/xen/enlighten.c
index dd6804a64f1a..e87280c6d25d 100644
--- a/arch/arm/xen/enlighten.c
+++ b/arch/arm/xen/enlighten.c
@@ -440,4 +440,4 @@ EXPORT_SYMBOL_GPL(HYPERVISOR_platform_op_raw);
 EXPORT_SYMBOL_GPL(HYPERVISOR_multicall);
 EXPORT_SYMBOL_GPL(HYPERVISOR_vm_assist);
 EXPORT_SYMBOL_GPL(HYPERVISOR_dm_op);
-EXPORT_SYMBOL_GPL(privcmd_call);
+EXPORT_SYMBOL_GPL(arch_privcmd_call);
diff --git a/arch/arm/xen/hypercall.S b/arch/arm/xen/hypercall.S
index b11bba542fac..277078c7da49 100644
--- a/arch/arm/xen/hypercall.S
+++ b/arch/arm/xen/hypercall.S
@@ -94,7 +94,7 @@ HYPERCALL2(multicall);
 HYPERCALL2(vm_assist);
 HYPERCALL3(dm_op);
 
-ENTRY(privcmd_call)
+ENTRY(arch_privcmd_call)
 	stmdb sp!, {r4}
 	mov r12, r0
 	mov r0, r1
@@ -119,4 +119,4 @@ ENTRY(privcmd_call)
 
 	ldm sp!, {r4}
 	ret lr
-ENDPROC(privcmd_call);
+ENDPROC(arch_privcmd_call);
diff --git a/arch/arm64/include/asm/xen/hypercall.h b/arch/arm64/include/asm/xen/hypercall.h
index c3198f9ccd2e..1a74fb28607f 100644
--- a/arch/arm64/include/asm/xen/hypercall.h
+++ b/arch/arm64/include/asm/xen/hypercall.h
@@ -1,5 +1,29 @@
 #ifndef _ASM_ARM64_XEN_HYPERCALL_H
 #define _ASM_ARM64_XEN_HYPERCALL_H
 #include <xen/arm/hypercall.h>
+#include <linux/uaccess.h>
 
+static inline long privcmd_call(unsigned int call, unsigned long a1,
+				unsigned long a2, unsigned long a3,
+				unsigned long a4, unsigned long a5)
+{
+	long rv;
+
+	/*
+	 * Privcmd calls are issued by the userspace. The kernel needs to
+	 * enable access to TTBR0_EL1 as the hypervisor would issue stage 1
+	 * translations to user memory via AT instructions. Since AT
+	 * instructions are not affected by the PAN bit (ARMv8.1), we only
+	 * need the explicit uaccess_enable/disable if the TTBR0 PAN emulation
+	 * is enabled (it implies that hardware UAO and PAN disabled).
+	 */
+	uaccess_ttbr0_enable();
+	rv = arch_privcmd_call(call, a1, a2, a3, a4, a5);
+	/*
+	 * Disable userspace access from kernel once the hyp call completed.
+	 */
+	uaccess_ttbr0_disable();
+
+	return rv;
+}
 #endif /* _ASM_ARM64_XEN_HYPERCALL_H */
diff --git a/arch/arm64/xen/hypercall.S b/arch/arm64/xen/hypercall.S
index c5f05c4a4d00..921611778d2a 100644
--- a/arch/arm64/xen/hypercall.S
+++ b/arch/arm64/xen/hypercall.S
@@ -49,7 +49,6 @@
 
 #include <linux/linkage.h>
 #include <asm/assembler.h>
-#include <asm/asm-uaccess.h>
 #include <xen/interface/xen.h>
 
 
@@ -86,27 +85,13 @@ HYPERCALL2(multicall);
 HYPERCALL2(vm_assist);
 HYPERCALL3(dm_op);
 
-ENTRY(privcmd_call)
+ENTRY(arch_privcmd_call)
 	mov x16, x0
 	mov x0, x1
 	mov x1, x2
 	mov x2, x3
 	mov x3, x4
 	mov x4, x5
-	/*
-	 * Privcmd calls are issued by the userspace. The kernel needs to
-	 * enable access to TTBR0_EL1 as the hypervisor would issue stage 1
-	 * translations to user memory via AT instructions. Since AT
-	 * instructions are not affected by the PAN bit (ARMv8.1), we only
-	 * need the explicit uaccess_enable/disable if the TTBR0 PAN emulation
-	 * is enabled (it implies that hardware UAO and PAN disabled).
-	 */
-	uaccess_ttbr0_enable x6, x7, x8
 	hvc XEN_IMM
-
-	/*
-	 * Disable userspace access from kernel once the hyp call completed.
-	 */
-	uaccess_ttbr0_disable x6, x7
 	ret
-ENDPROC(privcmd_call);
+ENDPROC(arch_privcmd_call);
diff --git a/include/xen/arm/hypercall.h b/include/xen/arm/hypercall.h
index babcc08af965..624c8ad7e42a 100644
--- a/include/xen/arm/hypercall.h
+++ b/include/xen/arm/hypercall.h
@@ -41,9 +41,9 @@
 
 struct xen_dm_op_buf;
 
-long privcmd_call(unsigned call, unsigned long a1,
-		unsigned long a2, unsigned long a3,
-		unsigned long a4, unsigned long a5);
+long arch_privcmd_call(unsigned int call, unsigned long a1,
+		       unsigned long a2, unsigned long a3,
+		       unsigned long a4, unsigned long a5);
 int HYPERVISOR_xen_version(int cmd, void *arg);
 int HYPERVISOR_console_io(int cmd, int count, char *str);
 int HYPERVISOR_grant_table_op(unsigned int cmd, void *uop, unsigned int count);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
