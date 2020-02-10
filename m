Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9416C157D35
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 15:14:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xoHlP4vlwiPE36Mi2G6LFo1NhWXUM3oizbobPvzJ9+Y=; b=cHKbiR6nL07vj3
	y+xUYifZHny8g4I0GQFNQgzjuDENmZqjNDxGrJ7N+wTZFDUcp2VyBocy394tARil05qHPezaCg7Yl
	A/Bz7djHzYvP0AvTy41BjAcZuUtbfphCYLqNevMGBKFIVpj8TT8SFVtYSUf/LjfMuTNjVb099O2f6
	MvyYLpJgpwArS1kSad6LfDbQBfFgpt4dnsTjLngA/npV5quEwp0csT83XPggr7S4Hk4qfFfQxfcFf
	RybVkEBzJt0G0XaNcGU2sRj71/O9nKkBRXjAQMOHCgOnritWOyTvWn52xeOQaxtBTgB06KcXDOOUk
	es+xFCzkcFZ1nIn2ndNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j19pi-000499-81; Mon, 10 Feb 2020 14:14:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j19ob-00036G-V4
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 14:13:35 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 50403208C4;
 Mon, 10 Feb 2020 14:13:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581344013;
 bh=ft6bsB49KkSTIKeOoRcvl7DFAq+d/lrPz3JMjmslnDY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=TiYjeP39UEMV93JtlKn+0UzU2DhBa0JkDjQnvOsZxDB1JyuxkPQZh8fmdy+014xUD
 SmURZFxZcY+B5Q4moHfAhS6mou/0nPG0ESbU9DYbwwzOJJQTeaHrp+ypyhs/EFstPv
 PbQJj1VoMIthnNG+u4zGcXPPbx0PO87Om/ojmnQ8=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j19oZ-0048kH-M5; Mon, 10 Feb 2020 14:13:31 +0000
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [RFC PATCH 5/5] arm: Remove GICv3 vgic compatibility macros
Date: Mon, 10 Feb 2020 14:13:24 +0000
Message-Id: <20200210141324.21090-6-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200210141324.21090-1-maz@kernel.org>
References: <20200210141324.21090-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com, pbonzini@redhat.com,
 Christoffer.Dall@arm.com, will@kernel.org, qperret@google.com,
 linux@arm.linux.org.uk, vladimir.murzin@arm.com, anders.berg@lsi.com,
 arnd@arndb.de
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_061334_059446_85B9AA68 
X-CRM114-Status: GOOD (  10.78  )
X-Spam-Score: -4.4 (----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-4.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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
Cc: Anders Berg <anders.berg@lsi.com>,
 Vladimir Murzin <vladimir.murzin@arm.com>,
 Russell King <linux@arm.linux.org.uk>, Arnd Bergmann <arnd@arndb.de>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Quentin Perret <qperret@google.com>,
 Christoffer Dall <Christoffer.Dall@arm.com>, James Morse <james.morse@arm.com>,
 Paolo Bonzini <pbonzini@redhat.com>, Will Deacon <will@kernel.org>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We used to use a set of macros to provide support of vgic-v3 to 32bit
without duplicating everything. We don't need it anymore, so drop it.

Signed-off-by: Marc Zyngier <maz@kernel.org>
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
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
