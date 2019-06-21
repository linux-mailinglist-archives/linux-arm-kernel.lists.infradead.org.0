Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43EEA4E55B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 12:05:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5p7s/QQcpcjyuE58zY7kmtAvEShNVZENjmomeqPRQ5I=; b=GqPGJEO4jJ7E/4
	ssAxK+UcgmVjnFkfnsqzrEtodPNGrMQ9whHPAj//90rEAr348C5kzJaOrrZoGgmYt3MKOfbyCnplW
	ke1NsNwUgQoJzTsIEj8qsgZoe/8PySOg3zA+mhbOtS30ZgXmwKcjelUP7SK0T8YdkZkhOMPvwxzNF
	S4OFRtoD75m9MNKg3H8q0cC7oSlrOygtJlWzRas0uEOh6hX3ZUyv3oivOCgtWe6L6Nyb3rPuRRdDY
	Hm0tT49sp+/cwsR2/TinRRwYJ+70/tJixHhTqSzLld0k7bE+Sf7Viv6vcwMcg6HC43ZXuzhYvj117
	vs0TYkyYY2FXu9hX7yhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heGPu-0007gg-R9; Fri, 21 Jun 2019 10:05:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heG1d-0007mT-FL
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 09:40:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3C3B3147A;
 Fri, 21 Jun 2019 02:40:04 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DB53A3F246;
 Fri, 21 Jun 2019 02:40:02 -0700 (PDT)
From: Marc Zyngier <marc.zyngier@arm.com>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH 33/59] KVM: arm64: nv: Pretend we only support
 larger-than-host page sizes
Date: Fri, 21 Jun 2019 10:38:17 +0100
Message-Id: <20190621093843.220980-34-marc.zyngier@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190621093843.220980-1-marc.zyngier@arm.com>
References: <20190621093843.220980-1-marc.zyngier@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_024005_652478_D1A5757F 
X-CRM114-Status: GOOD (  14.82  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Julien Thierry <julien.thierry@arm.com>,
 Andre Przywara <andre.przywara@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 James Morse <james.morse@arm.com>, Jintack Lim <jintack@cs.columbia.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jintack Lim <jintack.lim@linaro.org>

Exposing memory management support to the virtual EL2 as is exposed to
the host hypervisor would make the implementation too complex and
inefficient. Therefore expose limited memory management support for the
following two cases.

We expose same or larger page granules than the one host uses.  We can
theoretically support a guest hypervisor having smaller-than-host
granularities but it is not worth it since it makes the implementation
complicated and it would waste memory.

We expose 40 bits of physical address range to the virtual EL2, because
we only support a 40bit IPA for the guest. Eventually, this will change.

  [ This was only trapping on the 32-bit encoding, also using the
    current target register value as a base for the sanitisation.

    Use as the handler for the 64-bit sysreg as well, also load the
    sanitised version of the sysreg before clearing and setting bits.

    -- Andre Przywara ]

Signed-off-by: Jintack Lim <jintack.lim@linaro.org>
Signed-off-by: Andre Przywara <andre.przywara@arm.com>
Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
---
 arch/arm64/kvm/sys_regs.c | 50 ++++++++++++++++++++++++++++++++++++++-
 1 file changed, 49 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
index ec34b81da936..cc994ec3c121 100644
--- a/arch/arm64/kvm/sys_regs.c
+++ b/arch/arm64/kvm/sys_regs.c
@@ -1710,6 +1710,54 @@ static bool access_spsr_el2(struct kvm_vcpu *vcpu,
 	return true;
 }
 
+static bool access_id_aa64mmfr0_el1(struct kvm_vcpu *v,
+				    struct sys_reg_params *p,
+				    const struct sys_reg_desc *r)
+{
+	u64 val;
+
+	if (p->is_write)
+		return write_to_read_only(v, p, r);
+
+	val = read_id_reg(v, r, false);
+
+	if (!nested_virt_in_use(v))
+		goto out;
+
+	/*
+	 * Don't expose granules smaller than the host's granule to the guest.
+	 * We can theoretically support a guest hypervisor having
+	 * smaller-than-host granularities but it is not worth it since it
+	 * makes the implementation complicated and it would waste memory.
+	 */
+	switch (PAGE_SIZE) {
+	case SZ_64K:
+		/* 16KB granule not supported */
+		val &= ~(0xf << ID_AA64MMFR0_TGRAN16_SHIFT);
+		val |= (ID_AA64MMFR0_TGRAN16_NI << ID_AA64MMFR0_TGRAN16_SHIFT);
+		/* fall through */
+	case SZ_16K:
+		/* 4KB granule not supported */
+		val &= ~(0xf << ID_AA64MMFR0_TGRAN4_SHIFT);
+		val |= (ID_AA64MMFR0_TGRAN4_NI << ID_AA64MMFR0_TGRAN4_SHIFT);
+		break;
+	case SZ_4K:
+		/* All granule sizes are supported */
+		break;
+	default:
+		unreachable();
+	}
+
+	/* Expose only 40 bits physical address range to the guest hypervisor */
+	val &= ~(0xf << ID_AA64MMFR0_PARANGE_SHIFT);
+	val |= (0x2 << ID_AA64MMFR0_PARANGE_SHIFT); /* 40 bits */
+
+out:
+	p->regval = val;
+
+	return true;
+}
+
 static bool access_id_aa64pfr0_el1(struct kvm_vcpu *v,
 				   struct sys_reg_params *p,
 				   const struct sys_reg_desc *r)
@@ -1846,7 +1894,7 @@ static const struct sys_reg_desc sys_reg_descs[] = {
 	ID_UNALLOCATED(6,7),
 
 	/* CRm=7 */
-	ID_SANITISED(ID_AA64MMFR0_EL1),
+	ID_SANITISED_FN(ID_AA64MMFR0_EL1, access_id_aa64mmfr0_el1),
 	ID_SANITISED(ID_AA64MMFR1_EL1),
 	ID_SANITISED(ID_AA64MMFR2_EL1),
 	ID_UNALLOCATED(7,3),
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
