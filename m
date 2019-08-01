Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 218BC7D759
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 10:21:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rl9R92uY08q5DL/+qpS8+V7uNIFAS7xFfNPq0hfE2mM=; b=NENonc6+yljVH5
	UXAwdsAt6f5iBioHIh6v18kpQ/pk0ES8OMsyyT6nXhxXu4WTaMUbaCDxpmZFEDkMJzlPF2ksTePRk
	RBczHXD9oi23Mh+XVi1slvKN8LYTVIf8McGrKJvFSBEHZo+PnUQDxHeMguIE+MZYtHx3aMABhwHnH
	4T3VrKk3EaLlXypFFh9ZtkhlIlSQthAhpptwMRNXTm59GeDn0ufCvowaJ3lAXDRAb1ApbAcXzRTXZ
	rtaB+vKBi+KdMpUV2/KO4mKcQgmmIsBEZ0fD0dLjR6B53fwCMxocbdQWkPkan1gylOKLXmQueMmwA
	IZnzIxVeN+qxq9vkxzug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht6L1-0003Yd-L6; Thu, 01 Aug 2019 08:21:27 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht6Jc-0000Wq-M1
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 08:20:04 +0000
Received: by mail-pg1-x544.google.com with SMTP id w10so33738247pgj.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 01:19:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kulBovnYLz4YjgSJ0sOniJhX8Qcc8ljUXoag6+mJQMI=;
 b=neGmzSpV9c10RXeRmHvS3wtU+YOChR6vVVa7bFABnNxRBXpWpg59bG6VB4CB5sMp9u
 FhfBeZ5ASzEClrF62JZxBQBWIRuetSSbJtsT8SvGAkcgb8Ingpygb97sGCHM7A8gIObj
 7vl8EJSxYKKYi8dUiQtPeKFeJP9Zuf+GQ3Kf8GRGlTcmSn8D/Jx1NKLDlGnoOoRp5N35
 4DGMTXyfBuGk0OnMk9O9B2r7V6L3FE4PN247GpREoXR1sw1WrcTV9uYWW/yD+iCtm/8s
 VNLM7FAWakHBNBZwUvhs2JBWRPLJ2OkcA2ZZjEc7DrUPAZipe68TZd9XqMbZ5SGaK27y
 UrWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kulBovnYLz4YjgSJ0sOniJhX8Qcc8ljUXoag6+mJQMI=;
 b=Ul4XER7ofYrK5xkcE9h9a2Z2Us0+QERz7eUzh7LtUX1D4dcjtyYkTa4jfb6cA+4lEm
 LZ8MxDYsoOjBzPudzuyuLue/EhIT6/imAoBfIcwizIdwpx83/uGAW1MTIFnO8vAt3mZI
 nwfh8GQhxhyaS7eh0ZKQiaiHhQg/hOLc9NTM8X127G++v559e72JUkghxsUcTTxosrJ2
 7HLuSfO4Atw3k91ojBajS4jp2YGk+O316L7XvkmrNQiv0MuEHaxrY2bpRjE7ml1kDuNJ
 1AxHxgAlkb7TJSx+xB/+LgnwJ3SSvfPENxHbPRciQbYxSkDUMZcnwfqUO8xenBvoHMO4
 To1Q==
X-Gm-Message-State: APjAAAUtOSeMe1IzUbdjHdHHHtbUzheZMnluu8m92LFGFEfKYEWVfwoQ
 Pz/snilUGac4on99ISqiian2dg==
X-Google-Smtp-Source: APXvYqzSHH0fLnM1OEVH9g2dwjO+UrubetdMq6FaTC/+d077v0da+UBWOXUJw82D1L00pRz0dLiiAA==
X-Received: by 2002:aa7:9254:: with SMTP id 20mr53661464pfp.212.1564647596176; 
 Thu, 01 Aug 2019 01:19:56 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id g2sm83127276pfi.26.2019.08.01.01.19.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Aug 2019 01:19:55 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org
Subject: [PATCH ARM32 v4.4 V2 08/47] arm/arm64: smccc: Implement SMCCC v1.1
 inline primitive
Date: Thu,  1 Aug 2019 13:45:52 +0530
Message-Id: <a6bfd13774bf0ddca424c93fdaf0d27f3d8ca705.1564646727.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1564646727.git.viresh.kumar@linaro.org>
References: <cover.1564646727.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_012000_773519_CE1BC6F8 
X-CRM114-Status: GOOD (  14.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Julien Thierry <Julien.Thierry@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, guohanjun@huawei.com,
 Will Deacon <will.deacon@arm.com>, mark.brown@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

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
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 include/linux/arm-smccc.h | 141 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 141 insertions(+)

diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
index 4c45fd75db5d..60c2ad6316d8 100644
--- a/include/linux/arm-smccc.h
+++ b/include/linux/arm-smccc.h
@@ -122,5 +122,146 @@ asmlinkage void arm_smccc_hvc(unsigned long a0, unsigned long a1,
 			unsigned long a5, unsigned long a6, unsigned long a7,
 			struct arm_smccc_res *res);
 
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
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
