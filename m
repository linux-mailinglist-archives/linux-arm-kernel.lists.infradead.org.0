Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0C161E833B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 18:09:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2Bnt4OK8gzJAiqm9a+vyZhIBBDDnZthWz5MOIadWSlc=; b=h+ixDK+YgMVv0x
	4p0h7cLUlzm7CmLzEgxsTogrrg1J8oXHkiuPknfrAUr7sCzb9kPCloF5izXkoz6KFNcBS6zry8oN8
	fHam7kzkmIUD3ndyiCjTV0L23bqbf62NcZrDGwIPF4zVv+Dm7naKmjfsJeKDRKIsJYTA6U1o7u5kg
	9xnOV+KvsGxavCGb+Osc+sj22kcWmUvnxi2wCjHRPzOlnPnqGaWgzQNA36DvIgYsYtiGMNDzKxd1o
	NtlknfCUnD4E0RvDvDLuFbZGAdlzejNG2Eezbpy7Jcok2KQBpGxwNqUPJsUQ4UQUJMSQo8fhkbjfE
	ZpbTUOHR/GcRwUHWwvlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jehZb-0003HW-Al; Fri, 29 May 2020 16:09:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jehTz-0004wP-MV
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 16:03:49 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4E9E920897;
 Fri, 29 May 2020 16:03:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590768222;
 bh=N3pO8RPN/bTcq5Tr1JRqxyQLqjJKvyBGGNGowE+kcWY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=jsDIe8gjbVk968BbmfXlbKluWZ4TnRTaFIIFl8ZP5fgTL+EwG9HeT2OKMo+JfRfRf
 EL9ifMSQu489U4b3Xs8N0TG1TT8d1KqOy0Op5Uct8gyo6hcx11coIiaMLtgnwqFbsi
 EFw8mgrUPWesZdIdim1USbfO1OtwJ4yS69I7arOU=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jehSG-00GJKc-5Y; Fri, 29 May 2020 17:01:56 +0100
From: Marc Zyngier <maz@kernel.org>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH 16/24] KVM: arm64: Fix incorrect comment on
 kvm_get_hyp_vector()
Date: Fri, 29 May 2020 17:01:13 +0100
Message-Id: <20200529160121.899083-17-maz@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200529160121.899083-1-maz@kernel.org>
References: <20200529160121.899083-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: pbonzini@redhat.com, alexandru.elisei@arm.com,
 ascull@google.com, ardb@kernel.org, christoffer.dall@arm.com,
 dbrazdil@google.com, tabba@google.com, james.morse@arm.com, giangyi@amazon.com,
 zhukeqian1@huawei.com, mark.rutland@arm.com, suzuki.poulose@arm.com,
 will@kernel.org, yuzenghui@huawei.com, julien.thierry.kdev@gmail.com,
 linux-arm-kernel@lists.infradead.org, kvm@vger.kernel.org,
 kvmarm@lists.cs.columbia.edu
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_090343_851641_384E3BA9 
X-CRM114-Status: GOOD (  14.07  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org, Will Deacon <will@kernel.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Keqian Zhu <zhukeqian1@huawei.com>,
 Christoffer Dall <christoffer.dall@arm.com>, Jiang Yi <giangyi@amazon.com>,
 James Morse <james.morse@arm.com>, Andrew Scull <ascull@google.com>,
 Zenghui Yu <yuzenghui@huawei.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 David Brazdil <dbrazdil@google.com>,
 Alexandru Elisei <alexandru.elisei@arm.com>, Ard Biesheuvel <ardb@kernel.org>,
 Fuad Tabba <tabba@google.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: David Brazdil <dbrazdil@google.com>

The comment used to say that kvm_get_hyp_vector is only called on VHE systems.
In fact, it is also called from the nVHE init function cpu_init_hyp_mode().
Fix the comment to stop confusing devs.

Signed-off-by: David Brazdil <dbrazdil@google.com>
Signed-off-by: Marc Zyngier <maz@kernel.org>
Link: https://lore.kernel.org/r/20200515152550.83810-1-dbrazdil@google.com
---
 arch/arm64/include/asm/kvm_mmu.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/kvm_mmu.h b/arch/arm64/include/asm/kvm_mmu.h
index 30b0e8d6b895..796f6a2e794a 100644
--- a/arch/arm64/include/asm/kvm_mmu.h
+++ b/arch/arm64/include/asm/kvm_mmu.h
@@ -473,7 +473,7 @@ static inline int kvm_write_guest_lock(struct kvm *kvm, gpa_t gpa,
 extern void *__kvm_bp_vect_base;
 extern int __kvm_harden_el2_vector_slot;
 
-/*  This is only called on a VHE system */
+/*  This is called on both VHE and !VHE systems */
 static inline void *kvm_get_hyp_vector(void)
 {
 	struct bp_hardening_data *data = arm64_get_bp_hardening_data();
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
