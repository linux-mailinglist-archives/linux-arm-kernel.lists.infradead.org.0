Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17D62635B9
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 14:26:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ruDybHDbcCbh4F+H+qsH0YcRmakptSqvpKN1e1z1hrU=; b=o4UlVhnZAtM03A
	Ag5lkI9sn0bg9q3x6U8Bs7edB3L+HicAdPScBp43bAZHfdxwX2LN6dZWtIV+9SRTf3RZFWsvOhKHS
	Ksob44C7+wYMsOKRBJvPlhSrqJa4U7P8T7gyoB1Ag3Xv6RWXQp0T9TsEECr//oEzn8JTewksE5Z4s
	Hnsz+iMFjkusw6arsKDjFOnCutU0GWodXYpeVX0+wVvcDP2QS84qvPCr5xUMeMK0GNgL07PB+fZ6Q
	HYqCz10oPqCpoCuSbhh++jQWXiG53l0iZrp7kMeedb5jY2cpLGP6GT24WurxOORVsXgb8LCqjYz/H
	e564Scr5HrW27iaaWwaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkpC5-0006gd-LH; Tue, 09 Jul 2019 12:26:01 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hkpBU-0006RY-S1
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 12:25:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2A4B7344;
 Tue,  9 Jul 2019 05:25:22 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com (unknown [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5E0143F59C;
 Tue,  9 Jul 2019 05:25:20 -0700 (PDT)
From: Marc Zyngier <marc.zyngier@arm.com>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 01/18] arm64: assembler: Switch ESB-instruction with a vanilla
 nop if !ARM64_HAS_RAS
Date: Tue,  9 Jul 2019 13:24:50 +0100
Message-Id: <20190709122507.214494-2-marc.zyngier@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190709122507.214494-1-marc.zyngier@arm.com>
References: <20190709122507.214494-1-marc.zyngier@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_052524_947884_467D1FDF 
X-CRM114-Status: UNSURE (   7.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org,
 Julien Thierry <julien.thierry@arm.com>,
 Andre Przywara <andre.przywara@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Steven Price <steven.price@arm.com>,
 Eric Auger <eric.auger@redhat.com>, James Morse <james.morse@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>, Andrew Murray <andrew.murray@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: James Morse <james.morse@arm.com>

The ESB-instruction is a nop on CPUs that don't implement the RAS
extensions. This lets us use it in places like the vectors without
having to use alternatives.

If someone disables CONFIG_ARM64_RAS_EXTN, this instruction still has
its RAS extensions behaviour, but we no longer read DISR_EL1 as this
register does depend on alternatives.

This could go wrong if we want to synchronize an SError from a KVM
guest. On a CPU that has the RAS extensions, but the KConfig option
was disabled, we consume the pending SError with no chance of ever
reading it.

Hide the ESB-instruction behind the CONFIG_ARM64_RAS_EXTN option,
outputting a regular nop if the feature has been disabled.

Reported-by: Julien Thierry <julien.thierry@arm.com>
Signed-off-by: James Morse <james.morse@arm.com>
Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
---
 arch/arm64/include/asm/assembler.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/include/asm/assembler.h b/arch/arm64/include/asm/assembler.h
index 570d195a184d..e3a15c751b13 100644
--- a/arch/arm64/include/asm/assembler.h
+++ b/arch/arm64/include/asm/assembler.h
@@ -96,7 +96,11 @@
  * RAS Error Synchronization barrier
  */
 	.macro  esb
+#ifdef CONFIG_ARM64_RAS_EXTN
 	hint    #16
+#else
+	nop
+#endif
 	.endm
 
 /*
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
