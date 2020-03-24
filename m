Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70682190B2A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 11:36:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fm7PkCizwtoqMNcPkT3giboKNmZq7Y1rlBctFjybhvU=; b=Nu+Fcctx/xB3BH
	Wqny+epswCPa+2BMu/2Dd1oTxvoo6Pl+l8fgGbwuytH5+rIUXskhHGERSepH77KM80NaTEBuXz1s8
	T9LCADI32IrMGh0GTCTuXwDeRSJSB7CwZwE8fuHfPcn46mSXClOLRh2SMxXVjSOiD14gGDoGnFuet
	KOqh604MdH/mD3Hb6MrEjejJqKM/JOL+AjO708q2SwBlY32HJcydTN5gHcLs7VJ01ZB7WBMuTWoqZ
	CiXv1AhJRqe45qBO1WDI7U8qVsTFR33+TfOvBnUYp63AoutdZY4Wezlt9lrZDaaphgrhaJlnRRauz
	MnCOkD8d8W5egDKixWgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGgue-0003gB-VV; Tue, 24 Mar 2020 10:36:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGgsp-00011j-DD
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 10:34:09 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C9F38208FE;
 Tue, 24 Mar 2020 10:34:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585046047;
 bh=uFQ//zmRylro3EhbpN2ECpSH3uEqWDKkifUv85qs7S4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=YJ1P4ETFTTNnH2dItSJC8IZ4VUny++8C9JktIEBiBT2J5wOi4gspqBB+7twaaucNY
 leCkVq2HH2IXxOSqUiFnIsMWdf63+877cs+pccGtR4Di4wPpS7XlGoLqubP5CUwx9P
 TCa18iE/o3DBqflnnsdctH1aaLxkxMA1DUYMcT+Q=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jGgsn-00FE8V-44; Tue, 24 Mar 2020 10:34:05 +0000
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH v2 6/7] arm: Remove the ability to set HYP vectors outside of
 the decompressor
Date: Tue, 24 Mar 2020 10:33:49 +0000
Message-Id: <20200324103350.138077-7-maz@kernel.org>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200324103350.138077-1-maz@kernel.org>
References: <20200324103350.138077-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org, olof@lixom.net,
 arnd@arndb.de, will@kernel.org, vladimir.murzin@arm.com,
 catalin.marinas@arm.com, linus.walleij@linaro.org, christoffer.dall@arm.com,
 james.morse@arm.com, julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com,
 pbonzini@redhat.com, qperret@google.com, linux@arm.linux.org.uk,
 stefan@agner.ch, jan.kiszka@siemens.com, krzk@kernel.org,
 b.zolnierkie@samsung.com, m.szyprowski@samsung.com, takashi@yoshi.email,
 daniel@makrotopia.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_033407_509734_3893E3C0 
X-CRM114-Status: GOOD (  19.21  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Takashi Yoshi <takashi@yoshi.email>,
 Vladimir Murzin <vladimir.murzin@arm.com>,
 Russell King <linux@arm.linux.org.uk>, Arnd Bergmann <arnd@arndb.de>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Quentin Perret <qperret@google.com>,
 Christoffer Dall <christoffer.dall@arm.com>, Stefan Agner <stefan@agner.ch>,
 Daniel Golle <daniel@makrotopia.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 James Morse <james.morse@arm.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jan Kiszka <jan.kiszka@siemens.com>, Olof Johansson <olof@lixom.net>,
 Paolo Bonzini <pbonzini@redhat.com>, Will Deacon <will@kernel.org>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Although we have to bounce between HYP and SVC to decompress and
relocate the kernel, we don't need to be able to use it in the
kernel itself. So let's drop the functionnality.

Since the vectors are never changed, there is no need to reset them
either, and nobody calls that stub anyway. The last function
(SOFT_RESTART) is still present in order to support kexec.

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 arch/arm/include/asm/virt.h |  5 -----
 arch/arm/kernel/hyp-stub.S  | 39 ++++++++-----------------------------
 2 files changed, 8 insertions(+), 36 deletions(-)

diff --git a/arch/arm/include/asm/virt.h b/arch/arm/include/asm/virt.h
index 47600a5894b1..dd9697b2bde8 100644
--- a/arch/arm/include/asm/virt.h
+++ b/arch/arm/include/asm/virt.h
@@ -39,8 +39,6 @@ static inline void sync_boot_mode(void)
 	sync_cache_r(&__boot_cpu_mode);
 }
 
-void __hyp_set_vectors(unsigned long phys_vector_base);
-void __hyp_reset_vectors(void);
 #else
 #define __boot_cpu_mode	(SVC_MODE)
 #define sync_boot_mode()
@@ -75,9 +73,6 @@ static inline bool is_kernel_in_hyp_mode(void)
 
 #define HVC_SET_VECTORS 0
 #define HVC_SOFT_RESTART 1
-#define HVC_RESET_VECTORS 2
-
-#define HVC_STUB_HCALL_NR 3
 
 #endif /* __ASSEMBLY__ */
 
diff --git a/arch/arm/kernel/hyp-stub.S b/arch/arm/kernel/hyp-stub.S
index 6607fa817bba..26d8e03b1dd3 100644
--- a/arch/arm/kernel/hyp-stub.S
+++ b/arch/arm/kernel/hyp-stub.S
@@ -189,19 +189,19 @@ ARM_BE8(orr	r7, r7, #(1 << 25))     @ HSCTLR.EE
 ENDPROC(__hyp_stub_install_secondary)
 
 __hyp_stub_do_trap:
+#ifdef ZIMAGE
 	teq	r0, #HVC_SET_VECTORS
 	bne	1f
+	/* Only the ZIMAGE stubs can change the HYP vectors */
 	mcr	p15, 4, r1, c12, c0, 0	@ set HVBAR
 	b	__hyp_stub_exit
+#endif
 
 1:	teq	r0, #HVC_SOFT_RESTART
-	bne	1f
+	bne	2f
 	bx	r1
 
-1:	teq	r0, #HVC_RESET_VECTORS
-	beq	__hyp_stub_exit
-
-	ldr	r0, =HVC_STUB_ERR
+2:	ldr	r0, =HVC_STUB_ERR
 	__ERET
 
 __hyp_stub_exit:
@@ -210,26 +210,9 @@ __hyp_stub_exit:
 ENDPROC(__hyp_stub_do_trap)
 
 /*
- * __hyp_set_vectors: Call this after boot to set the initial hypervisor
- * vectors as part of hypervisor installation.  On an SMP system, this should
- * be called on each CPU.
- *
- * r0 must be the physical address of the new vector table (which must lie in
- * the bottom 4GB of physical address space.
- *
- * r0 must be 32-byte aligned.
- *
- * Before calling this, you must check that the stub hypervisor is installed
- * everywhere, by waiting for any secondary CPUs to be brought up and then
- * checking that BOOT_CPU_MODE_HAVE_HYP(__boot_cpu_mode) is true.
- *
- * If not, there is a pre-existing hypervisor, some CPUs failed to boot, or
- * something else went wrong... in such cases, trying to install a new
- * hypervisor is unlikely to work as desired.
- *
- * When you call into your shiny new hypervisor, sp_hyp will contain junk,
- * so you will need to set that to something sensible at the new hypervisor's
- * initialisation entry point.
+ * __hyp_set_vectors is only used when ZIMAGE must bounce between HYP
+ * and SVC. For the kernel itself, the vectors are set once and for
+ * all by the stubs.
  */
 ENTRY(__hyp_set_vectors)
 	mov	r1, r0
@@ -245,12 +228,6 @@ ENTRY(__hyp_soft_restart)
 	ret	lr
 ENDPROC(__hyp_soft_restart)
 
-ENTRY(__hyp_reset_vectors)
-	mov	r0, #HVC_RESET_VECTORS
-	__HVC(0)
-	ret	lr
-ENDPROC(__hyp_reset_vectors)
-
 #ifndef ZIMAGE
 .align 2
 .L__boot_cpu_mode_offset:
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
