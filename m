Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20C37F0790
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 22:01:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=I8fdUJ9P6Cs/1hrTBeSAzMQMu73q9QHLR1OsjHyULUc=; b=T00CO/Xz6Navsz3xPeTxws86xZ
	DPx1daUGZQ71WJEfqgPkiCvaMpbi/HnRjFm8Sdy9FHw1Je4m26hon847UMOz5wHTv+tpMD6wrJyrG
	WVhZVgbxrm8g+wPkPVRHAURsWpDAk+nPq4Bp53lhzex5AxSDImPrYLyvVs3mZTYOMFgiq3N+vuS+g
	Z54ABhgam2eLbA5PjLjA/ZqZHJXikM4qaU7GdnCem/HZAMR7P2vVkwXpi3aTRDhHNWpU1Qtp7dnAT
	bmKSkOhDaYZEg0mTKXjwuGNvKbxZBM+yLSgo27cwLXX2JfWMzAKoFfoSg5hnzskE7QBwh96bmFb7N
	gsxrdrtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS5xb-0000I2-RU; Tue, 05 Nov 2019 21:01:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS5v8-0005Jl-MC
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 20:59:30 +0000
Received: from e123331-lin.home (lfbn-mar-1-643-104.w90-118.abo.wanadoo.fr
 [90.118.215.104])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D8E6D222C5;
 Tue,  5 Nov 2019 20:59:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572987561;
 bh=0dsWAhvRpA+pYMGB4btBc2vF3S2Iq7FWZPvqB8beB3g=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=L3kGD21JtxAKQAqHycxvTdN4pZfiffpUzsrkbOaoRMBdII5/9tez8Lu5N7R/LbsQ2
 qD0pAoIJKgz6tGG1u6X3rnHSqxJ76i13sz2DmiKWo3YtAlmoyHKqm1yBRlGzixIiea
 ejJrsV4p9J/jjGV7aCt7mh6k6Hy+MmqpihajampI=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH for-stable-v4.4 08/53] arm: kernel: Add SMC structure parameter
Date: Tue,  5 Nov 2019 21:58:01 +0100
Message-Id: <20191105205846.1394-9-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191105205846.1394-1-ardb@kernel.org>
References: <20191105205846.1394-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_125922_868823_D406E718 
X-CRM114-Status: GOOD (  14.49  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Tony Lindgren <tony@atomide.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, Sasha Levin <alexander.levin@verizon.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, Marc Zyngier <maz@kernel.org>,
 Andy Gross <andy.gross@linaro.org>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Andy Gross <andy.gross@linaro.org>

[ Upstream commit 680a0873e193bae666439f4b5e32c758e68f114c ]

This patch adds a quirk parameter to the arm_smccc_(smc/hvc) calls.
The quirk structure allows for specialized SMC operations due to SoC
specific requirements.  The current arm_smccc_(smc/hvc) is renamed and
macros are used instead to specify the standard arm_smccc_(smc/hvc) or
the arm_smccc_(smc/hvc)_quirk function.

This patch and partial implementation was suggested by Will Deacon.

Signed-off-by: Andy Gross <andy.gross@linaro.org>
Reviewed-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Sasha Levin <alexander.levin@verizon.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/arm/kernel/armksyms.c      |  4 +-
 arch/arm/kernel/smccc-call.S    | 14 ++++---
 arch/arm64/kernel/arm64ksyms.c  |  4 +-
 arch/arm64/kernel/asm-offsets.c |  7 +++-
 arch/arm64/kernel/smccc-call.S  | 14 ++++---
 include/linux/arm-smccc.h       | 40 ++++++++++++++++----
 6 files changed, 57 insertions(+), 26 deletions(-)

diff --git a/arch/arm/kernel/armksyms.c b/arch/arm/kernel/armksyms.c
index 7e45f69a0ddc..8e8d20cdbce7 100644
--- a/arch/arm/kernel/armksyms.c
+++ b/arch/arm/kernel/armksyms.c
@@ -178,6 +178,6 @@ EXPORT_SYMBOL(__pv_offset);
 #endif
 
 #ifdef CONFIG_HAVE_ARM_SMCCC
-EXPORT_SYMBOL(arm_smccc_smc);
-EXPORT_SYMBOL(arm_smccc_hvc);
+EXPORT_SYMBOL(__arm_smccc_smc);
+EXPORT_SYMBOL(__arm_smccc_hvc);
 #endif
diff --git a/arch/arm/kernel/smccc-call.S b/arch/arm/kernel/smccc-call.S
index 2e48b674aab1..e5d43066b889 100644
--- a/arch/arm/kernel/smccc-call.S
+++ b/arch/arm/kernel/smccc-call.S
@@ -46,17 +46,19 @@ UNWIND(	.fnend)
 /*
  * void smccc_smc(unsigned long a0, unsigned long a1, unsigned long a2,
  *		  unsigned long a3, unsigned long a4, unsigned long a5,
- *		  unsigned long a6, unsigned long a7, struct arm_smccc_res *res)
+ *		  unsigned long a6, unsigned long a7, struct arm_smccc_res *res,
+ *		  struct arm_smccc_quirk *quirk)
  */
-ENTRY(arm_smccc_smc)
+ENTRY(__arm_smccc_smc)
 	SMCCC SMCCC_SMC
-ENDPROC(arm_smccc_smc)
+ENDPROC(__arm_smccc_smc)
 
 /*
  * void smccc_hvc(unsigned long a0, unsigned long a1, unsigned long a2,
  *		  unsigned long a3, unsigned long a4, unsigned long a5,
- *		  unsigned long a6, unsigned long a7, struct arm_smccc_res *res)
+ *		  unsigned long a6, unsigned long a7, struct arm_smccc_res *res,
+ *		  struct arm_smccc_quirk *quirk)
  */
-ENTRY(arm_smccc_hvc)
+ENTRY(__arm_smccc_hvc)
 	SMCCC SMCCC_HVC
-ENDPROC(arm_smccc_hvc)
+ENDPROC(__arm_smccc_hvc)
diff --git a/arch/arm64/kernel/arm64ksyms.c b/arch/arm64/kernel/arm64ksyms.c
index 678f30b05a45..a4252f586593 100644
--- a/arch/arm64/kernel/arm64ksyms.c
+++ b/arch/arm64/kernel/arm64ksyms.c
@@ -71,5 +71,5 @@ EXPORT_SYMBOL(_mcount);
 #endif
 
 	/* arm-smccc */
-EXPORT_SYMBOL(arm_smccc_smc);
-EXPORT_SYMBOL(arm_smccc_hvc);
+EXPORT_SYMBOL(__arm_smccc_smc);
+EXPORT_SYMBOL(__arm_smccc_hvc);
diff --git a/arch/arm64/kernel/asm-offsets.c b/arch/arm64/kernel/asm-offsets.c
index 7c4146a4257b..1f7b85d41587 100644
--- a/arch/arm64/kernel/asm-offsets.c
+++ b/arch/arm64/kernel/asm-offsets.c
@@ -163,7 +163,10 @@ int main(void)
   DEFINE(SLEEP_SAVE_SP_PHYS,	offsetof(struct sleep_save_sp, save_ptr_stash_phys));
   DEFINE(SLEEP_SAVE_SP_VIRT,	offsetof(struct sleep_save_sp, save_ptr_stash));
 #endif
-  DEFINE(ARM_SMCCC_RES_X0_OFFS,	offsetof(struct arm_smccc_res, a0));
-  DEFINE(ARM_SMCCC_RES_X2_OFFS,	offsetof(struct arm_smccc_res, a2));
+  DEFINE(ARM_SMCCC_RES_X0_OFFS,		offsetof(struct arm_smccc_res, a0));
+  DEFINE(ARM_SMCCC_RES_X2_OFFS,		offsetof(struct arm_smccc_res, a2));
+  DEFINE(ARM_SMCCC_QUIRK_ID_OFFS,	offsetof(struct arm_smccc_quirk, id));
+  DEFINE(ARM_SMCCC_QUIRK_STATE_OFFS,	offsetof(struct arm_smccc_quirk, state));
+
   return 0;
 }
diff --git a/arch/arm64/kernel/smccc-call.S b/arch/arm64/kernel/smccc-call.S
index ae0496fa4235..ba60a8cb07d2 100644
--- a/arch/arm64/kernel/smccc-call.S
+++ b/arch/arm64/kernel/smccc-call.S
@@ -27,17 +27,19 @@
 /*
  * void arm_smccc_smc(unsigned long a0, unsigned long a1, unsigned long a2,
  *		  unsigned long a3, unsigned long a4, unsigned long a5,
- *		  unsigned long a6, unsigned long a7, struct arm_smccc_res *res)
+ *		  unsigned long a6, unsigned long a7, struct arm_smccc_res *res,
+ *		  struct arm_smccc_quirk *quirk)
  */
-ENTRY(arm_smccc_smc)
+ENTRY(__arm_smccc_smc)
 	SMCCC	smc
-ENDPROC(arm_smccc_smc)
+ENDPROC(__arm_smccc_smc)
 
 /*
  * void arm_smccc_hvc(unsigned long a0, unsigned long a1, unsigned long a2,
  *		  unsigned long a3, unsigned long a4, unsigned long a5,
- *		  unsigned long a6, unsigned long a7, struct arm_smccc_res *res)
+ *		  unsigned long a6, unsigned long a7, struct arm_smccc_res *res,
+ *		  struct arm_smccc_quirk *quirk)
  */
-ENTRY(arm_smccc_hvc)
+ENTRY(__arm_smccc_hvc)
 	SMCCC	hvc
-ENDPROC(arm_smccc_hvc)
+ENDPROC(__arm_smccc_hvc)
diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
index b5abfda80465..c66f8ae94b5a 100644
--- a/include/linux/arm-smccc.h
+++ b/include/linux/arm-smccc.h
@@ -72,33 +72,57 @@ struct arm_smccc_res {
 };
 
 /**
- * arm_smccc_smc() - make SMC calls
+ * struct arm_smccc_quirk - Contains quirk information
+ * @id: quirk identification
+ * @state: quirk specific information
+ * @a6: Qualcomm quirk entry for returning post-smc call contents of a6
+ */
+struct arm_smccc_quirk {
+	int	id;
+	union {
+		unsigned long a6;
+	} state;
+};
+
+/**
+ * __arm_smccc_smc() - make SMC calls
  * @a0-a7: arguments passed in registers 0 to 7
  * @res: result values from registers 0 to 3
+ * @quirk: points to an arm_smccc_quirk, or NULL when no quirks are required.
  *
  * This function is used to make SMC calls following SMC Calling Convention.
  * The content of the supplied param are copied to registers 0 to 7 prior
  * to the SMC instruction. The return values are updated with the content
- * from register 0 to 3 on return from the SMC instruction.
+ * from register 0 to 3 on return from the SMC instruction.  An optional
+ * quirk structure provides vendor specific behavior.
  */
-asmlinkage void arm_smccc_smc(unsigned long a0, unsigned long a1,
+asmlinkage void __arm_smccc_smc(unsigned long a0, unsigned long a1,
 			unsigned long a2, unsigned long a3, unsigned long a4,
 			unsigned long a5, unsigned long a6, unsigned long a7,
-			struct arm_smccc_res *res);
+			struct arm_smccc_res *res, struct arm_smccc_quirk *quirk);
 
 /**
- * arm_smccc_hvc() - make HVC calls
+ * __arm_smccc_hvc() - make HVC calls
  * @a0-a7: arguments passed in registers 0 to 7
  * @res: result values from registers 0 to 3
  *
  * This function is used to make HVC calls following SMC Calling
  * Convention.  The content of the supplied param are copied to registers 0
  * to 7 prior to the HVC instruction. The return values are updated with
- * the content from register 0 to 3 on return from the HVC instruction.
+ * the content from register 0 to 3 on return from the HVC instruction.  An
+ * optional quirk structure provides vendor specific behavior.
  */
-asmlinkage void arm_smccc_hvc(unsigned long a0, unsigned long a1,
+asmlinkage void __arm_smccc_hvc(unsigned long a0, unsigned long a1,
 			unsigned long a2, unsigned long a3, unsigned long a4,
 			unsigned long a5, unsigned long a6, unsigned long a7,
-			struct arm_smccc_res *res);
+			struct arm_smccc_res *res, struct arm_smccc_quirk *quirk);
+
+#define arm_smccc_smc(...) __arm_smccc_smc(__VA_ARGS__, NULL)
+
+#define arm_smccc_smc_quirk(...) __arm_smccc_smc(__VA_ARGS__)
+
+#define arm_smccc_hvc(...) __arm_smccc_hvc(__VA_ARGS__, NULL)
+
+#define arm_smccc_hvc_quirk(...) __arm_smccc_hvc(__VA_ARGS__)
 
 #endif /*__LINUX_ARM_SMCCC_H*/
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
