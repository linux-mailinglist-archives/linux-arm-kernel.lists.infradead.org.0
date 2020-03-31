Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF232199BA5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 18:33:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DVeZyH6KCwKJsejvLkcnwGg+X/jpb6zK9E/03tHt+Tg=; b=Za0Yjp+JkTyPbO
	Bi5jqAOYzLM1sY06+dSOtuO+TygEKRt2TH+TT9J1SCxmYClZKJmpa7L7VMPFpqrLJQWavB2h355YU
	h0xW7AoZ91nYTXh5v0gBvRWVx7UrE3gJVPeU6WpXrBQrqJqN4qko6RE59oaS9IVKbiED1Q2ODRoqO
	QPi31r7h1/9NVnGjf9woLY6xggAyaO5yvau+8nuCslzcazM0qLptLAUa2DrH75iP9MG4OpSTd/4LO
	iKLy56hgALloo0BEQBYK87F4xA1s/DW6dStw9r9afM7JEBgTDzHXRPQIy4DIImllWAA4c71BvyW7N
	eETp6GkeqH3fgYB+XpEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJp7-0005pC-3A; Tue, 31 Mar 2020 16:33:09 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJnr-00059U-0N
 for linux-arm-kernel@bombadil.infradead.org; Tue, 31 Mar 2020 16:31:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=4wO6KP0eYQIMG0Ix5diNli2el7Jv6D1pycMmMrIcGb0=; b=uW3ovTfkEyFvGTpnycAyrv3lMh
 wPyUxmHf3ykfeKhpG+YOPwGK35AjmDhQmsTHf+q4Twb46NoVlBBEqyM3AVqd5mBCazwZmdNEWNIxd
 Acj9xgvyva2c9w8T04vnkJR6Ioyebj50kU2/1XVErHoXZa9e/RVxvSQ9PD/4OPWrJduqfaWgYLd+G
 l5H+V/2zgtCOnMGLnHgQPCnlLXIioi8x9S3MhI5ahv1OvKA1e5710+1D0t9aLDiCZpeqyVS3dNw/X
 OV3z4djYur1zRE1O4ilmaWpOqeNAouh/ST0fpTEHrHELAEuKR0s+IQxwT0GC7VU6e+eYgX4L60Jyr
 7/a1gYuw==;
Received: from mail.kernel.org ([198.145.29.99])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJFpV-000809-W2
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 12:17:21 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 538632137B;
 Tue, 31 Mar 2020 12:17:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585657036;
 bh=ugisv1NLx5lkMOol7N8eoN+aF+PTHkSjV2ZOtSqDBPo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=0uvoOZELJANgaBXQnSCnrix8hDA4r/J7puLVsrL/bgudkw8rxtxsgnY0eIcoqJtW7
 /7/ZIvOeTHrHjj/rYgmcQZUq9HopQKz1xkqluzDF0jIbcmV4LYpNxe0NQhgy5c55eI
 exNZxiu3jhDgaIOtz53mh2sMCCqSnJ/BiG+fzDzc=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jJFpS-00HBlI-5Z; Tue, 31 Mar 2020 13:17:14 +0100
From: Marc Zyngier <maz@kernel.org>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH 06/15] arm: Remove GICv3 vgic compatibility macros
Date: Tue, 31 Mar 2020 13:16:36 +0100
Message-Id: <20200331121645.388250-7-maz@kernel.org>
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
X-CRM114-CacheID: sfid-20200331_131718_494248_577A1594 
X-CRM114-Status: GOOD (  12.78  )
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

We used to use a set of macros to provide support of vgic-v3 to 32bit
without duplicating everything. We don't need it anymore, so drop it.

Signed-off-by: Marc Zyngier <maz@kernel.org>
Acked-by: Olof Johansson <olof@lixom.net>
Acked-by: Arnd Bergmann <arnd@arndb.de>
Acked-by: Will Deacon <will@kernel.org>
Acked-by: Vladimir Murzin <vladimir.murzin@arm.com>
Acked-by: Catalin Marinas <catalin.marinas@arm.com>
Acked-by: Linus Walleij <linus.walleij@linaro.org>
Acked-by: Christoffer Dall <christoffer.dall@arm.com>
---
 arch/arm/include/asm/arch_gicv3.h | 114 ------------------------------
 1 file changed, 114 deletions(-)

diff --git a/arch/arm/include/asm/arch_gicv3.h b/arch/arm/include/asm/arch_gicv3.h
index c815477b4303..413abfb42989 100644
--- a/arch/arm/include/asm/arch_gicv3.h
+++ b/arch/arm/include/asm/arch_gicv3.h
@@ -38,71 +38,6 @@
 #define ICC_AP1R2			__ICC_AP1Rx(2)
 #define ICC_AP1R3			__ICC_AP1Rx(3)
 
-#define ICC_HSRE			__ACCESS_CP15(c12, 4, c9, 5)
-
-#define ICH_VSEIR			__ACCESS_CP15(c12, 4, c9, 4)
-#define ICH_HCR				__ACCESS_CP15(c12, 4, c11, 0)
-#define ICH_VTR				__ACCESS_CP15(c12, 4, c11, 1)
-#define ICH_MISR			__ACCESS_CP15(c12, 4, c11, 2)
-#define ICH_EISR			__ACCESS_CP15(c12, 4, c11, 3)
-#define ICH_ELRSR			__ACCESS_CP15(c12, 4, c11, 5)
-#define ICH_VMCR			__ACCESS_CP15(c12, 4, c11, 7)
-
-#define __LR0(x)			__ACCESS_CP15(c12, 4, c12, x)
-#define __LR8(x)			__ACCESS_CP15(c12, 4, c13, x)
-
-#define ICH_LR0				__LR0(0)
-#define ICH_LR1				__LR0(1)
-#define ICH_LR2				__LR0(2)
-#define ICH_LR3				__LR0(3)
-#define ICH_LR4				__LR0(4)
-#define ICH_LR5				__LR0(5)
-#define ICH_LR6				__LR0(6)
-#define ICH_LR7				__LR0(7)
-#define ICH_LR8				__LR8(0)
-#define ICH_LR9				__LR8(1)
-#define ICH_LR10			__LR8(2)
-#define ICH_LR11			__LR8(3)
-#define ICH_LR12			__LR8(4)
-#define ICH_LR13			__LR8(5)
-#define ICH_LR14			__LR8(6)
-#define ICH_LR15			__LR8(7)
-
-/* LR top half */
-#define __LRC0(x)			__ACCESS_CP15(c12, 4, c14, x)
-#define __LRC8(x)			__ACCESS_CP15(c12, 4, c15, x)
-
-#define ICH_LRC0			__LRC0(0)
-#define ICH_LRC1			__LRC0(1)
-#define ICH_LRC2			__LRC0(2)
-#define ICH_LRC3			__LRC0(3)
-#define ICH_LRC4			__LRC0(4)
-#define ICH_LRC5			__LRC0(5)
-#define ICH_LRC6			__LRC0(6)
-#define ICH_LRC7			__LRC0(7)
-#define ICH_LRC8			__LRC8(0)
-#define ICH_LRC9			__LRC8(1)
-#define ICH_LRC10			__LRC8(2)
-#define ICH_LRC11			__LRC8(3)
-#define ICH_LRC12			__LRC8(4)
-#define ICH_LRC13			__LRC8(5)
-#define ICH_LRC14			__LRC8(6)
-#define ICH_LRC15			__LRC8(7)
-
-#define __ICH_AP0Rx(x)			__ACCESS_CP15(c12, 4, c8, x)
-#define ICH_AP0R0			__ICH_AP0Rx(0)
-#define ICH_AP0R1			__ICH_AP0Rx(1)
-#define ICH_AP0R2			__ICH_AP0Rx(2)
-#define ICH_AP0R3			__ICH_AP0Rx(3)
-
-#define __ICH_AP1Rx(x)			__ACCESS_CP15(c12, 4, c9, x)
-#define ICH_AP1R0			__ICH_AP1Rx(0)
-#define ICH_AP1R1			__ICH_AP1Rx(1)
-#define ICH_AP1R2			__ICH_AP1Rx(2)
-#define ICH_AP1R3			__ICH_AP1Rx(3)
-
-/* A32-to-A64 mappings used by VGIC save/restore */
-
 #define CPUIF_MAP(a32, a64)			\
 static inline void write_ ## a64(u32 val)	\
 {						\
@@ -113,21 +48,6 @@ static inline u32 read_ ## a64(void)		\
 	return read_sysreg(a32); 		\
 }						\
 
-#define CPUIF_MAP_LO_HI(a32lo, a32hi, a64)	\
-static inline void write_ ## a64(u64 val)	\
-{						\
-	write_sysreg(lower_32_bits(val), a32lo);\
-	write_sysreg(upper_32_bits(val), a32hi);\
-}						\
-static inline u64 read_ ## a64(void)		\
-{						\
-	u64 val = read_sysreg(a32lo);		\
-						\
-	val |=	(u64)read_sysreg(a32hi) << 32;	\
-						\
-	return val; 				\
-}
-
 CPUIF_MAP(ICC_PMR, ICC_PMR_EL1)
 CPUIF_MAP(ICC_AP0R0, ICC_AP0R0_EL1)
 CPUIF_MAP(ICC_AP0R1, ICC_AP0R1_EL1)
@@ -138,40 +58,6 @@ CPUIF_MAP(ICC_AP1R1, ICC_AP1R1_EL1)
 CPUIF_MAP(ICC_AP1R2, ICC_AP1R2_EL1)
 CPUIF_MAP(ICC_AP1R3, ICC_AP1R3_EL1)
 
-CPUIF_MAP(ICH_HCR, ICH_HCR_EL2)
-CPUIF_MAP(ICH_VTR, ICH_VTR_EL2)
-CPUIF_MAP(ICH_MISR, ICH_MISR_EL2)
-CPUIF_MAP(ICH_EISR, ICH_EISR_EL2)
-CPUIF_MAP(ICH_ELRSR, ICH_ELRSR_EL2)
-CPUIF_MAP(ICH_VMCR, ICH_VMCR_EL2)
-CPUIF_MAP(ICH_AP0R3, ICH_AP0R3_EL2)
-CPUIF_MAP(ICH_AP0R2, ICH_AP0R2_EL2)
-CPUIF_MAP(ICH_AP0R1, ICH_AP0R1_EL2)
-CPUIF_MAP(ICH_AP0R0, ICH_AP0R0_EL2)
-CPUIF_MAP(ICH_AP1R3, ICH_AP1R3_EL2)
-CPUIF_MAP(ICH_AP1R2, ICH_AP1R2_EL2)
-CPUIF_MAP(ICH_AP1R1, ICH_AP1R1_EL2)
-CPUIF_MAP(ICH_AP1R0, ICH_AP1R0_EL2)
-CPUIF_MAP(ICC_HSRE, ICC_SRE_EL2)
-CPUIF_MAP(ICC_SRE, ICC_SRE_EL1)
-
-CPUIF_MAP_LO_HI(ICH_LR15, ICH_LRC15, ICH_LR15_EL2)
-CPUIF_MAP_LO_HI(ICH_LR14, ICH_LRC14, ICH_LR14_EL2)
-CPUIF_MAP_LO_HI(ICH_LR13, ICH_LRC13, ICH_LR13_EL2)
-CPUIF_MAP_LO_HI(ICH_LR12, ICH_LRC12, ICH_LR12_EL2)
-CPUIF_MAP_LO_HI(ICH_LR11, ICH_LRC11, ICH_LR11_EL2)
-CPUIF_MAP_LO_HI(ICH_LR10, ICH_LRC10, ICH_LR10_EL2)
-CPUIF_MAP_LO_HI(ICH_LR9, ICH_LRC9, ICH_LR9_EL2)
-CPUIF_MAP_LO_HI(ICH_LR8, ICH_LRC8, ICH_LR8_EL2)
-CPUIF_MAP_LO_HI(ICH_LR7, ICH_LRC7, ICH_LR7_EL2)
-CPUIF_MAP_LO_HI(ICH_LR6, ICH_LRC6, ICH_LR6_EL2)
-CPUIF_MAP_LO_HI(ICH_LR5, ICH_LRC5, ICH_LR5_EL2)
-CPUIF_MAP_LO_HI(ICH_LR4, ICH_LRC4, ICH_LR4_EL2)
-CPUIF_MAP_LO_HI(ICH_LR3, ICH_LRC3, ICH_LR3_EL2)
-CPUIF_MAP_LO_HI(ICH_LR2, ICH_LRC2, ICH_LR2_EL2)
-CPUIF_MAP_LO_HI(ICH_LR1, ICH_LRC1, ICH_LR1_EL2)
-CPUIF_MAP_LO_HI(ICH_LR0, ICH_LRC0, ICH_LR0_EL2)
-
 #define read_gicreg(r)                 read_##r()
 #define write_gicreg(v, r)             write_##r(v)
 
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
