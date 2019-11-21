Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E17F1059EC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 19:48:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z4EnBR00aJVqS+T/zY2GYPkUTF1qv6hxd/jBy1fTjx4=; b=mygJpJgPe5TFFB
	eYPZPZEjwKyB3uHn42Wu5lUnkJgqlhCJbQRkqYGgRs9lKyKuAGP815jRTueQupIcIayvhsi5hh2QW
	o7AITL5TUnvYnl2xeKP4XBRzurPsQzPSJF3EuE7NeKgqFsi/CrxWW/uIIMfmcVg6rUPFLbzttUtGv
	f9TwwVt3CDkO8A2vGAz1uCwDVenHYZWTWMe2TKg79Jqi90Jjb7P3QdpADZNPfd8S3EYBvtTQQe4rI
	q0GKKU3sjOhmuG/l66p+LryUdMSc4lt7jlq1bZrmlPH4scaHxIVBRjekI3vNSJAkWMrxBH8rWEcgV
	+1mYvnmsr+AQF4FloRFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXrVX-0000jo-Dm; Thu, 21 Nov 2019 18:48:47 +0000
Received: from mail-qv1-xf43.google.com ([2607:f8b0:4864:20::f43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXrUw-0000V1-Np
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 18:48:12 +0000
Received: by mail-qv1-xf43.google.com with SMTP id v16so1849249qvq.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 Nov 2019 10:48:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=6SUpT/Cq7WAcFMI7EYou95uAqCpN60QbhWisTQcUAZE=;
 b=dH7iy4beDQA0dlnL78YTIs1dGMcBcpDEizGZylqSWQJeyua11ap3URFttiAu/XsDpw
 uGhONdmEzz1V61aPrClJAF0x4CMm0s/eZ2Au+DZLfBX+sye9mdDqbNx6RNOMoFk7Cv3e
 G/IBd/It6LWi2PQ9i1n6EDAA/NCvxgP4kytwwT53Qsw5a1Bs4Mz/dzvIZHbdlEfV7Xml
 Q2+R9+vCRQXedpAVJ9CYG7BcByVgmJ+MFiAh1rMS8sjOULTohB/xGlV+KowLwZ15vuVB
 +gsRPbtV7gvbSCTrTDy0hIj+pn+t6BjWbW2G3+ValNHGifxejI4aI9CDnh/9t7Jr+4Ft
 L/0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6SUpT/Cq7WAcFMI7EYou95uAqCpN60QbhWisTQcUAZE=;
 b=Qe1GUnlghr/P7j8/IIp6VPCAPM/kwN03GFuRUxhMjSyQ9WFAwJ3nsekUHWEPl1QmnA
 4zgUU120/A5Cwle9IlXnEeN3FH+97sBpm/L39khDAXFiTu3HQjgWUOIFfyHDPP7CMpXs
 3hxVXRWPdqFs/CRojX7EnqOdAyB2bO3vSdtDRJXkQdq1Vzxv+dxXlqNYiRWwabm9vOHB
 AIFZEJkpNBh2p+mbKleT7k6HZa4jiUMH4yxlRLOMyWUEFhpP5S8TCDhKCxp/O9lGuwUZ
 ASFduv/Pd4QoTUMo37yAfpGST+IsO1hBVTnVXAbFAm4cEjmqUk6AwUu6XFBl6D4WL1kA
 pHiA==
X-Gm-Message-State: APjAAAXXhEvDKnkGWpNSalBD/yxR4/Kmn3C9ewyUmute6cLZSAJk9rcl
 GYwAAiNZB8+CEv9OMwC79Ng2Fg==
X-Google-Smtp-Source: APXvYqwHPZo6IUc+mQlModGko0y+bUwKpgW94ZH45M2odE42WQE3R6U+OVG3m1WRxN6oOvJcf7Ymkw==
X-Received: by 2002:ad4:44af:: with SMTP id n15mr358027qvt.174.1574362089507; 
 Thu, 21 Nov 2019 10:48:09 -0800 (PST)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id t2sm1811634qkt.95.2019.11.21.10.48.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Nov 2019 10:48:08 -0800 (PST)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 linux-kernel@vger.kernel.org, catalin.marinas@arm.com, will@kernel.org,
 steve.capper@arm.com, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 mark.rutland@arm.com, tglx@linutronix.de, gregkh@linuxfoundation.org,
 allison@lohutok.net, info@metux.net, alexios.zavras@intel.com,
 sstabellini@kernel.org, boris.ostrovsky@oracle.com, jgross@suse.com,
 stefan@agner.ch, yamada.masahiro@socionext.com,
 xen-devel@lists.xenproject.org, linux@armlinux.org.uk
Subject: [PATCH 1/3] arm/arm64/xen: use C inlines for privcmd_call
Date: Thu, 21 Nov 2019 13:48:03 -0500
Message-Id: <20191121184805.414758-2-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191121184805.414758-1-pasha.tatashin@soleen.com>
References: <20191121184805.414758-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_104810_777478_D714AF38 
X-CRM114-Status: GOOD (  15.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

privcmd_call requires to enable access to userspace for the
duration of the hypercall.

Currently, this is done via assembly macros. Change it to C
inlines instead.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm/include/asm/assembler.h |  2 +-
 arch/arm/include/asm/uaccess.h   | 32 ++++++++++++++++++++++++++------
 arch/arm/xen/enlighten.c         |  2 +-
 arch/arm/xen/hypercall.S         | 15 ++-------------
 arch/arm64/xen/hypercall.S       | 19 ++-----------------
 include/xen/arm/hypercall.h      | 23 ++++++++++++++++++++---
 6 files changed, 52 insertions(+), 41 deletions(-)

diff --git a/arch/arm/include/asm/assembler.h b/arch/arm/include/asm/assembler.h
index 99929122dad7..8e9262a0f016 100644
--- a/arch/arm/include/asm/assembler.h
+++ b/arch/arm/include/asm/assembler.h
@@ -480,7 +480,7 @@ THUMB(	orr	\reg , \reg , #PSR_T_BIT	)
 	.macro	uaccess_disable, tmp, isb=1
 #ifdef CONFIG_CPU_SW_DOMAIN_PAN
 	/*
-	 * Whenever we re-enter userspace, the domains should always be
+	 * Whenever we re-enter kernel, the domains should always be
 	 * set appropriately.
 	 */
 	mov	\tmp, #DACR_UACCESS_DISABLE
diff --git a/arch/arm/include/asm/uaccess.h b/arch/arm/include/asm/uaccess.h
index 98c6b91be4a8..79d4efa3eb62 100644
--- a/arch/arm/include/asm/uaccess.h
+++ b/arch/arm/include/asm/uaccess.h
@@ -16,6 +16,23 @@
 
 #include <asm/extable.h>
 
+#ifdef CONFIG_CPU_SW_DOMAIN_PAN
+static __always_inline void uaccess_enable(void)
+{
+	unsigned long val = DACR_UACCESS_ENABLE;
+
+	asm volatile("mcr p15, 0, %0, c3, c0, 0" : : "r" (val));
+	isb();
+}
+
+static __always_inline void uaccess_disable(void)
+{
+	unsigned long val = DACR_UACCESS_ENABLE;
+
+	asm volatile("mcr p15, 0, %0, c3, c0, 0" : : "r" (val));
+	isb();
+}
+
 /*
  * These two functions allow hooking accesses to userspace to increase
  * system integrity by ensuring that the kernel can not inadvertantly
@@ -24,7 +41,6 @@
  */
 static __always_inline unsigned int uaccess_save_and_enable(void)
 {
-#ifdef CONFIG_CPU_SW_DOMAIN_PAN
 	unsigned int old_domain = get_domain();
 
 	/* Set the current domain access to permit user accesses */
@@ -32,18 +48,22 @@ static __always_inline unsigned int uaccess_save_and_enable(void)
 		   domain_val(DOMAIN_USER, DOMAIN_CLIENT));
 
 	return old_domain;
-#else
-	return 0;
-#endif
 }
 
 static __always_inline void uaccess_restore(unsigned int flags)
 {
-#ifdef CONFIG_CPU_SW_DOMAIN_PAN
 	/* Restore the user access mask */
 	set_domain(flags);
-#endif
 }
+#else
+static __always_inline void uaccess_enable(void) {}
+static __always_inline void uaccess_disable(void) {}
+static __always_inline unsigned int uaccess_save_and_enable(void)
+{
+	return 0;
+}
+static __always_inline void uaccess_restore(unsigned int flags) {}
+#endif /* CONFIG_CPU_SW_DOMAIN_PAN */
 
 /*
  * These two are intentionally not defined anywhere - if the kernel
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
index b11bba542fac..2f5be0dc6195 100644
--- a/arch/arm/xen/hypercall.S
+++ b/arch/arm/xen/hypercall.S
@@ -94,29 +94,18 @@ HYPERCALL2(multicall);
 HYPERCALL2(vm_assist);
 HYPERCALL3(dm_op);
 
-ENTRY(privcmd_call)
+ENTRY(arch_privcmd_call)
 	stmdb sp!, {r4}
 	mov r12, r0
 	mov r0, r1
 	mov r1, r2
 	mov r2, r3
 	ldr r3, [sp, #8]
-	/*
-	 * Privcmd calls are issued by the userspace. We need to allow the
-	 * kernel to access the userspace memory before issuing the hypercall.
-	 */
-	uaccess_enable r4
 
 	/* r4 is loaded now as we use it as scratch register before */
 	ldr r4, [sp, #4]
 	__HVC(XEN_IMM)
 
-	/*
-	 * Disable userspace access from kernel. This is fine to do it
-	 * unconditionally as no set_fs(KERNEL_DS) is called before.
-	 */
-	uaccess_disable r4
-
 	ldm sp!, {r4}
 	ret lr
-ENDPROC(privcmd_call);
+ENDPROC(arch_privcmd_call);
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
index b40485e54d80..cfb704fd78c8 100644
--- a/include/xen/arm/hypercall.h
+++ b/include/xen/arm/hypercall.h
@@ -34,16 +34,33 @@
 #define _ASM_ARM_XEN_HYPERCALL_H
 
 #include <linux/bug.h>
+#include <linux/uaccess.h>
 
 #include <xen/interface/xen.h>
 #include <xen/interface/sched.h>
 #include <xen/interface/platform.h>
 
 struct xen_dm_op_buf;
+long arch_privcmd_call(unsigned int call, unsigned long a1,
+		       unsigned long a2, unsigned long a3,
+		       unsigned long a4, unsigned long a5);
 
-long privcmd_call(unsigned call, unsigned long a1,
-		unsigned long a2, unsigned long a3,
-		unsigned long a4, unsigned long a5);
+static inline long privcmd_call(unsigned int call, unsigned long a1,
+				unsigned long a2, unsigned long a3,
+				unsigned long a4, unsigned long a5)
+{
+	long rv;
+
+	/*
+	 * Privcmd calls are issued by the userspace. We need to allow the
+	 * kernel to access the userspace memory before issuing the hypercall.
+	 */
+	uaccess_enable();
+	rv = arch_privcmd_call(call, a1, a2, a3, a4, a5);
+	uaccess_disable();
+
+	return rv;
+}
 int HYPERVISOR_xen_version(int cmd, void *arg);
 int HYPERVISOR_console_io(int cmd, int count, char *str);
 int HYPERVISOR_grant_table_op(unsigned int cmd, void *uop, unsigned int count);
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
