Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 480A1179A42
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 21:40:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2qggn/BKNGVKO7zSbH6NqLKKo4fjLVJOIPIbuk08rKw=; b=GpwZjgOf4nb3XK
	uvE9S18NuZ45uSj7HtQmFLTdcxwpF0UCkmZuTgJtSrvVuByx1XTQi3ey4svaKjUfudH22AIEOCpQF
	tPc16toJ8BivASgwZi9zrWCBOCHYqROWfQoW4uDTApROtbWetlOMiU9/lH+ebdLDR/CQyMzwOQrnG
	hrdgSVfE6oNnZ/kzbCEQyTop7gmqVbQxtARWwv8Sx0reU9p1UTFqs9xSbUkL0S250XhHi0b+s9ggA
	lUk4HY7lQbz96+ysDZ3MPmeFp2FZq0LaoMhqNTvQ9TtKOjXuIeRcW5wJ664LdUKteGfrC54OVjT0C
	mVOoZKf9MQNhh5c4pdRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9aoi-0000FU-Vp; Wed, 04 Mar 2020 20:40:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9al1-0004bE-LB
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 20:36:45 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 75C7A217F4;
 Wed,  4 Mar 2020 20:36:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583354201;
 bh=UA2EJhJ9qhxldAsKSkyx/y87EvRgFN4/kWezr3S1WVc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=BsIfeXJ3L18wF9II8BsCzkdWK/EciMgm5A3ZkWigYiAwEn6ObyKezCl0XrbAIXFoL
 OkQ34skIvzhclK1SkT/XnGVyWaOwJXrbdJwon4/bBSIHqpk4V3snKRBIw9qLCr5SDT
 KOEE/piGaf6jNYUy5l96CR/qwxaaCKMTG/f2sFdk=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j9ajI-00A59R-3o; Wed, 04 Mar 2020 20:34:56 +0000
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v5 22/23] KVM: arm64: GICv4.1: Allow non-trapping WFI when
 using HW SGIs
Date: Wed,  4 Mar 2020 20:33:29 +0000
Message-Id: <20200304203330.4967-23-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200304203330.4967-1-maz@kernel.org>
References: <20200304203330.4967-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org,
 linux-kernel@vger.kernel.org, lorenzo.pieralisi@arm.com, jason@lakedaemon.net,
 rrichter@marvell.com, tglx@linutronix.de, yuzenghui@huawei.com,
 eric.auger@redhat.com, james.morse@arm.com, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_123643_782139_88F2BBF1 
X-CRM114-Status: GOOD (  12.93  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Jason Cooper <jason@lakedaemon.net>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Eric Auger <eric.auger@redhat.com>, Robert Richter <rrichter@marvell.com>,
 James Morse <james.morse@arm.com>, Zenghui Yu <yuzenghui@huawei.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Just like for VLPIs, it is beneficial to avoid trapping on WFI when the
vcpu is using the GICv4.1 SGIs.

Add such a check to vcpu_clear_wfx_traps().

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 arch/arm64/include/asm/kvm_emulate.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/kvm_emulate.h b/arch/arm64/include/asm/kvm_emulate.h
index f658dda12364..a30b4eec7cb4 100644
--- a/arch/arm64/include/asm/kvm_emulate.h
+++ b/arch/arm64/include/asm/kvm_emulate.h
@@ -89,7 +89,8 @@ static inline unsigned long *vcpu_hcr(struct kvm_vcpu *vcpu)
 static inline void vcpu_clear_wfx_traps(struct kvm_vcpu *vcpu)
 {
 	vcpu->arch.hcr_el2 &= ~HCR_TWE;
-	if (atomic_read(&vcpu->arch.vgic_cpu.vgic_v3.its_vpe.vlpi_count))
+	if (atomic_read(&vcpu->arch.vgic_cpu.vgic_v3.its_vpe.vlpi_count) ||
+	    vcpu->kvm->arch.vgic.nassgireq)
 		vcpu->arch.hcr_el2 &= ~HCR_TWI;
 	else
 		vcpu->arch.hcr_el2 |= HCR_TWI;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
