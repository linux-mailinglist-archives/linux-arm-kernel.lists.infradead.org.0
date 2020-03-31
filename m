Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F2C9199BB8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 18:35:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fm7PkCizwtoqMNcPkT3giboKNmZq7Y1rlBctFjybhvU=; b=eiCVufSR8wGw1v
	ss0JhH7UCJmSl76dhKx/P+TQWSbAamnkBvtzMXS3Oj2Dvmw97iNPh+3byGCWsNssIcy395qEkhZuJ
	MlyE9kUp6K2yGd8Pzyl96vvZ0lGj1MW9M6zM8HL/3EDO1/tubdsWD2y6S3VLRrqYdm7UwhvL8Sku7
	LUToXULQ6Yvp8Q2nUgr4gGGO+NiC0YEqSTDhbM4T0dkbDd+nC5NbHWcMPNfVS5Xm6umJXnCCf/0Wy
	aWnICvNOdeX7GfaTFVyecRt1IMCN5TYTEJvldW8w7M3EzCB3uqq5UyxVhX8QEu7qb87EI7Tx+Z4ig
	x82ziD99+r9h24XWUwfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJrJ-0007i0-O4; Tue, 31 Mar 2020 16:35:25 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJo3-0005Iv-Va
 for linux-arm-kernel@bombadil.infradead.org; Tue, 31 Mar 2020 16:32:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=K7aqGMbFlpzGivYPTYffa+zYZwz7WZL6wKhJkX1NkgQ=; b=qmX6O7P35SmKqqe8BFL4jHJH7W
 lnmCzy7PrFesSKP6XTbo3SA7UFmKPzzwco5CIttThEJbm2WiYf6cJx6DkuD0hTfAqiGWIKX7qkt7d
 x0O55uVVhmZJxGrmeiGUyRkf7sYubYulLYqbhsh08z6Drkk+UKB4A/M1b0gmVUQL2qryeKm324HER
 mFL+n5NzOGWhgyiavjnM8rxDrayv7gnvhTguXZ0E3g/v/2ag8hoViyzPsDfpxkyg2JoBSIxHk2TS6
 bh/lvlHT7x1dzZ1Qwyh5NBE6B68ogH5MVR1IdgvfAwoFYiinS8nPsZOJdxz1qZW8ZjnMRS6p4YtHL
 r1XZ+2rw==;
Received: from mail.kernel.org ([198.145.29.99])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJFpW-00080E-TZ
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 12:17:25 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6140120714;
 Tue, 31 Mar 2020 12:17:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585657037;
 bh=uFQ//zmRylro3EhbpN2ECpSH3uEqWDKkifUv85qs7S4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=iQJbrnsR1chnjthV1ZKBdOCr7YCVeF4m666WUD1FJozkgYzupxMMDYQBGO2lqs9sA
 ViH//EZb51dn/j/DTLU8hjsQ3mO9ImZx7gdlDiUSRhn5fwxJD9APRbECogfuTfdaVn
 yiIi+F80vyHYDPlQO++Ov1SSpk12uQWJW0OvAWiU=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jJFpT-00HBlI-FB; Tue, 31 Mar 2020 13:17:15 +0100
From: Marc Zyngier <maz@kernel.org>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH 07/15] arm: Remove the ability to set HYP vectors outside of
 the decompressor
Date: Tue, 31 Mar 2020 13:16:37 +0100
Message-Id: <20200331121645.388250-8-maz@kernel.org>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200331121645.388250-1-maz@kernel.org>
References: <20200331121645.388250-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: pbonzini@redhat.com, arnd@arndb.de, catalin.marinas@arm.com,
 christoffer.dall@arm.com, eric.auger@redhat.com, karahmed@amazon.de,
 linus.walleij@linaro.org, olof@lixom.net, vladimir.murzin@arm.com,
 will@kernel.org, yuzenghui@huawei.com, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com,
 linux-arm-kernel@lists.infradead.org, kvm@vger.kernel.org,
 kvmarm@lists.cs.columbia.edu
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_131719_379142_AA7CEB92 
X-CRM114-Status: GOOD (  22.23  )
X-Spam-Score: -7.3 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on casper.infradead.org summary:
 Content analysis details:   (-7.3 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Vladimir Murzin <vladimir.murzin@arm.com>, kvm@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 KarimAllah Ahmed <karahmed@amazon.de>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Christoffer Dall <christoffer.dall@arm.com>, Zenghui Yu <yuzenghui@huawei.com>,
 Eric Auger <eric.auger@redhat.com>, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org, Olof Johansson <olof@lixom.net>,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
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
