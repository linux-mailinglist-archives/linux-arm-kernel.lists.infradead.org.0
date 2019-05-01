Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3F5D10AC7
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 18:11:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=YWC9LkBbgylx6MhnjVm9jiRIy+OAFyYZrwRNv2kVhZA=; b=SzD
	4Qi0WTUP35M5FJ+j8+l8VH282Qk6+hHLBe/Qa4egwhzuBwc7UwpFkwuEU72IKLBBVVyhfbKrR2I5O
	Kja9/ZWeoX/SIqtwpKcrIni0Eo5hwTWXkcHhH/l90A5elSR2puhPSMqGIrV2Gj9p+VXei50vaxknN
	TGkvV0clGyrDJqYP8fn8hhUmGLMD9jfApfHoDRWTyFCn929ABnDFrBrwLnJKgMj0HegH5ihoBVwFr
	whV7nVSTtMLk2ALQ/dcA6kuXuRmaDsWUJbYV1tbzEhFzsWGvR41fzge3hLLOIwzTsbGOjEFUxGAw+
	04+UdVlO8SffTLQX6Pj2Wl7jDHdHzFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLrpH-0003WB-Ey; Wed, 01 May 2019 16:11:19 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLrpA-0003Vn-Ep
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 16:11:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AA7B4A78;
 Wed,  1 May 2019 09:11:10 -0700 (PDT)
Received: from moonbear.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 245663F719;
 Wed,  1 May 2019 09:11:07 -0700 (PDT)
From: Kristina Martsenko <kristina.martsenko@arm.com>
To: Marc Zyngier <marc.zyngier@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>
Subject: [PATCH] KVM: arm64: fix ptrauth ID register masking logic
Date: Wed,  1 May 2019 17:10:08 +0100
Message-Id: <20190501161008.31498-1-kristina.martsenko@arm.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_091112_723379_5334D119 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Julien Thierry <julien.thierry@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Will Deacon <will.deacon@arm.com>,
 kvmarm@lists.cs.columbia.edu, James Morse <james.morse@arm.com>,
 Amit Kachhap <amit.kachhap@arm.com>, Andrew Murray <andrew.murray@arm.com>,
 Dave P Martin <dave.martin@arm.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When a VCPU doesn't have pointer auth, we want to hide all four pointer
auth ID register fields from the guest, not just one of them.

Fixes: 384b40caa8af ("KVM: arm/arm64: Context-switch ptrauth registers")
Reported-by: Andrew Murray <andrew.murray@arm.com>
Fsck-up-by: Marc Zyngier <marc.zyngier@arm.com>
Signed-off-by: Kristina Martsenko <kristina.martsenko@arm.com>
---
 arch/arm64/kvm/sys_regs.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
index 9d02643bc601..857b226bcdde 100644
--- a/arch/arm64/kvm/sys_regs.c
+++ b/arch/arm64/kvm/sys_regs.c
@@ -1088,10 +1088,10 @@ static u64 read_id_reg(const struct kvm_vcpu *vcpu,
 	if (id == SYS_ID_AA64PFR0_EL1 && !vcpu_has_sve(vcpu)) {
 		val &= ~(0xfUL << ID_AA64PFR0_SVE_SHIFT);
 	} else if (id == SYS_ID_AA64ISAR1_EL1 && !vcpu_has_ptrauth(vcpu)) {
-		val &= ~(0xfUL << ID_AA64ISAR1_APA_SHIFT) |
-			(0xfUL << ID_AA64ISAR1_API_SHIFT) |
-			(0xfUL << ID_AA64ISAR1_GPA_SHIFT) |
-			(0xfUL << ID_AA64ISAR1_GPI_SHIFT);
+		val &= ~((0xfUL << ID_AA64ISAR1_APA_SHIFT) |
+			 (0xfUL << ID_AA64ISAR1_API_SHIFT) |
+			 (0xfUL << ID_AA64ISAR1_GPA_SHIFT) |
+			 (0xfUL << ID_AA64ISAR1_GPI_SHIFT));
 	}
 
 	return val;
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
