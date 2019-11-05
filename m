Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2215F079B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 22:03:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xNoH1qf30pFhwPffefKWS8pVGPIp0063Tt/RMs4ahDM=; b=uQX5myT80Ed00ib/tcjO8T9CYT
	xgSnBJE+IWH30mUpkVIROQqJ5ReddfoztskC/Jt9x/YRILUTTqcBNqW6rbG8jLzQ/hnfU/xvcpH7T
	3gbjlxLyBYUy76/keWZWhYgOQUMOREwq8gtJXXZoR0h1xOWN+VsN/buxGZp3z/Xt++tk8kqYpIHFj
	7f/snbq7gLEqAFh/8t0bpNbogGyaS6hKXUgzQMhWayGLBa9tQAKb3f1ADbC39m1KlMzKICKgVCp1x
	ulthul85cIrAYVrDjYGE7WdGSV1bgJoNh5FJmIE1c0nv+s0rRw9tqVlXARixEu6c/18nMe5rXzKdm
	NWysjwcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS5zL-0002BK-V9; Tue, 05 Nov 2019 21:03:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS5vU-0005vm-Sz
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 20:59:46 +0000
Received: from e123331-lin.home (lfbn-mar-1-643-104.w90-118.abo.wanadoo.fr
 [90.118.215.104])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1C04421D7F;
 Tue,  5 Nov 2019 20:59:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572987584;
 bh=gEu2seAAaeb+TGxnIOOldmObs0Q4W4ngvJn90ut9LsE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Z3UDp3jNUfM4UlYlpeBPWzcW/gwlr2MasNGrAaNgHAVVe/bT3WJITg2PYwHXAjNg7
 qjBqM9UW1WgsHTqpG0N5Ms0x54zqe48m+qNp/YpVhylNTUmOFmMfboGpvkZvO3GtV0
 35a4NVmSMgXQZL6C1d1WKdlVyzIiY/mHPiOYUh88=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH for-stable-v4.4 16/53] arm/arm64: smccc: Implement SMCCC v1.1
 inline primitive
Date: Tue,  5 Nov 2019 21:58:09 +0100
Message-Id: <20191105205846.1394-17-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191105205846.1394-1-ardb@kernel.org>
References: <20191105205846.1394-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_125944_996783_6D601BC5 
X-CRM114-Status: GOOD (  14.63  )
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
 Marc Zyngier <marc.zyngier@arm.com>, Russell King <rmk+kernel@armlinux.org.uk>,
 Marc Zyngier <maz@kernel.org>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mark Rutland <mark.rutland@arm.com>

From: Marc Zyngier <marc.zyngier@arm.com>

commit f2d3b2e8759a5833df6f022e42df2d581e6d843c upstream.

One of the major improvement of SMCCC v1.1 is that it only clobbers
the first 4 registers, both on 32 and 64bit. This means that it
becomes very easy to provide an inline version of the SMC call
primitive, and avoid performing a function call to stash the
registers that would otherwise be clobbered by SMCCC v1.0.

Reviewed-by: Robin Murphy <robin.murphy@arm.com>
Tested-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Mark Rutland <mark.rutland@arm.com> [v4.9 backport]
Tested-by: Greg Hackmann <ghackmann@google.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 include/linux/arm-smccc.h | 141 ++++++++++++++++++++
 1 file changed, 141 insertions(+)

diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
index dd44d8458c04..a031897fca76 100644
--- a/include/linux/arm-smccc.h
+++ b/include/linux/arm-smccc.h
@@ -150,5 +150,146 @@ asmlinkage void __arm_smccc_hvc(unsigned long a0, unsigned long a1,
 
 #define arm_smccc_hvc_quirk(...) __arm_smccc_hvc(__VA_ARGS__)
 
+/* SMCCC v1.1 implementation madness follows */
+#ifdef CONFIG_ARM64
+
+#define SMCCC_SMC_INST	"smc	#0"
+#define SMCCC_HVC_INST	"hvc	#0"
+
+#elif defined(CONFIG_ARM)
+#include <asm/opcodes-sec.h>
+#include <asm/opcodes-virt.h>
+
+#define SMCCC_SMC_INST	__SMC(0)
+#define SMCCC_HVC_INST	__HVC(0)
+
+#endif
+
+#define ___count_args(_0, _1, _2, _3, _4, _5, _6, _7, _8, x, ...) x
+
+#define __count_args(...)						\
+	___count_args(__VA_ARGS__, 7, 6, 5, 4, 3, 2, 1, 0)
+
+#define __constraint_write_0						\
+	"+r" (r0), "=&r" (r1), "=&r" (r2), "=&r" (r3)
+#define __constraint_write_1						\
+	"+r" (r0), "+r" (r1), "=&r" (r2), "=&r" (r3)
+#define __constraint_write_2						\
+	"+r" (r0), "+r" (r1), "+r" (r2), "=&r" (r3)
+#define __constraint_write_3						\
+	"+r" (r0), "+r" (r1), "+r" (r2), "+r" (r3)
+#define __constraint_write_4	__constraint_write_3
+#define __constraint_write_5	__constraint_write_4
+#define __constraint_write_6	__constraint_write_5
+#define __constraint_write_7	__constraint_write_6
+
+#define __constraint_read_0
+#define __constraint_read_1
+#define __constraint_read_2
+#define __constraint_read_3
+#define __constraint_read_4	"r" (r4)
+#define __constraint_read_5	__constraint_read_4, "r" (r5)
+#define __constraint_read_6	__constraint_read_5, "r" (r6)
+#define __constraint_read_7	__constraint_read_6, "r" (r7)
+
+#define __declare_arg_0(a0, res)					\
+	struct arm_smccc_res   *___res = res;				\
+	register u32           r0 asm("r0") = a0;			\
+	register unsigned long r1 asm("r1");				\
+	register unsigned long r2 asm("r2");				\
+	register unsigned long r3 asm("r3")
+
+#define __declare_arg_1(a0, a1, res)					\
+	struct arm_smccc_res   *___res = res;				\
+	register u32           r0 asm("r0") = a0;			\
+	register typeof(a1)    r1 asm("r1") = a1;			\
+	register unsigned long r2 asm("r2");				\
+	register unsigned long r3 asm("r3")
+
+#define __declare_arg_2(a0, a1, a2, res)				\
+	struct arm_smccc_res   *___res = res;				\
+	register u32           r0 asm("r0") = a0;			\
+	register typeof(a1)    r1 asm("r1") = a1;			\
+	register typeof(a2)    r2 asm("r2") = a2;			\
+	register unsigned long r3 asm("r3")
+
+#define __declare_arg_3(a0, a1, a2, a3, res)				\
+	struct arm_smccc_res   *___res = res;				\
+	register u32           r0 asm("r0") = a0;			\
+	register typeof(a1)    r1 asm("r1") = a1;			\
+	register typeof(a2)    r2 asm("r2") = a2;			\
+	register typeof(a3)    r3 asm("r3") = a3
+
+#define __declare_arg_4(a0, a1, a2, a3, a4, res)			\
+	__declare_arg_3(a0, a1, a2, a3, res);				\
+	register typeof(a4) r4 asm("r4") = a4
+
+#define __declare_arg_5(a0, a1, a2, a3, a4, a5, res)			\
+	__declare_arg_4(a0, a1, a2, a3, a4, res);			\
+	register typeof(a5) r5 asm("r5") = a5
+
+#define __declare_arg_6(a0, a1, a2, a3, a4, a5, a6, res)		\
+	__declare_arg_5(a0, a1, a2, a3, a4, a5, res);			\
+	register typeof(a6) r6 asm("r6") = a6
+
+#define __declare_arg_7(a0, a1, a2, a3, a4, a5, a6, a7, res)		\
+	__declare_arg_6(a0, a1, a2, a3, a4, a5, a6, res);		\
+	register typeof(a7) r7 asm("r7") = a7
+
+#define ___declare_args(count, ...) __declare_arg_ ## count(__VA_ARGS__)
+#define __declare_args(count, ...)  ___declare_args(count, __VA_ARGS__)
+
+#define ___constraints(count)						\
+	: __constraint_write_ ## count					\
+	: __constraint_read_ ## count					\
+	: "memory"
+#define __constraints(count)	___constraints(count)
+
+/*
+ * We have an output list that is not necessarily used, and GCC feels
+ * entitled to optimise the whole sequence away. "volatile" is what
+ * makes it stick.
+ */
+#define __arm_smccc_1_1(inst, ...)					\
+	do {								\
+		__declare_args(__count_args(__VA_ARGS__), __VA_ARGS__);	\
+		asm volatile(inst "\n"					\
+			     __constraints(__count_args(__VA_ARGS__)));	\
+		if (___res)						\
+			*___res = (typeof(*___res)){r0, r1, r2, r3};	\
+	} while (0)
+
+/*
+ * arm_smccc_1_1_smc() - make an SMCCC v1.1 compliant SMC call
+ *
+ * This is a variadic macro taking one to eight source arguments, and
+ * an optional return structure.
+ *
+ * @a0-a7: arguments passed in registers 0 to 7
+ * @res: result values from registers 0 to 3
+ *
+ * This macro is used to make SMC calls following SMC Calling Convention v1.1.
+ * The content of the supplied param are copied to registers 0 to 7 prior
+ * to the SMC instruction. The return values are updated with the content
+ * from register 0 to 3 on return from the SMC instruction if not NULL.
+ */
+#define arm_smccc_1_1_smc(...)	__arm_smccc_1_1(SMCCC_SMC_INST, __VA_ARGS__)
+
+/*
+ * arm_smccc_1_1_hvc() - make an SMCCC v1.1 compliant HVC call
+ *
+ * This is a variadic macro taking one to eight source arguments, and
+ * an optional return structure.
+ *
+ * @a0-a7: arguments passed in registers 0 to 7
+ * @res: result values from registers 0 to 3
+ *
+ * This macro is used to make HVC calls following SMC Calling Convention v1.1.
+ * The content of the supplied param are copied to registers 0 to 7 prior
+ * to the HVC instruction. The return values are updated with the content
+ * from register 0 to 3 on return from the HVC instruction if not NULL.
+ */
+#define arm_smccc_1_1_hvc(...)	__arm_smccc_1_1(SMCCC_HVC_INST, __VA_ARGS__)
+
 #endif /*__ASSEMBLY__*/
 #endif /*__LINUX_ARM_SMCCC_H*/
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
