Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CF3311EA53
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 19:30:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Wb/Jtv7mFB9+B/2mBRoMs9uY1dxiS0gmQticNh2ILU=; b=hwuLbtErIxVHkN
	4cz8iKE2V0aKfRJh5fAVeYS/ofV4iZm8kM+Ei5hI9WsfqJcdpQy8ywL+2pi+kAiCyhqUV/TRvH7kT
	DpXlW1Oe/FQzNVGBQvY/0v+Q0kZnW9T3IzkoeOoIvJzpN07TY3RjLX6ay/Iuk6C3J/4b5DJw7GYQH
	Ag9ZufZsoyVHbiMeqNuVBfidHCL0FTf2mQ/JKcqQroX+7rW5D6p6rymfpgK+13lECbgHnGx98TLkW
	HIPekpvOizD/DlwAosmMYcrUQpwzslWbmd31gbf8e6PEkCpjTBjKGstyHu5e+zqGaj3M5wOykPx98
	Yh6qtYhuwhNtG9x39HnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifphr-0003Th-Qb; Fri, 13 Dec 2019 18:30:27 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifphh-0003TA-UD
 for linux-arm-kernel@bombadil.infradead.org; Fri, 13 Dec 2019 18:30:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Jeqj7CRDsTOztbpEvu8sFavkXPJenfkY3QRGn8nl6y4=; b=ks9rttKM7d0I/hEJn8+5bh0BIu
 rLbUHQBaDu2HjnK/u8tsZLQA+qWDUreGPI6CbX6fkXv/02xvh+wa3otVAwSOxP/swgRQDkPB9VKCJ
 0JLHRzsz/LWzCKA5tLSojvZv9fHrQMBghffNTMSkz2z04/F/asNDoaiLEfwzKOiliLSaGyBCXQC0S
 aLaGKxXvw2q3LiDdP1apOHWYhEsdYOkNmDLJ2hNTi5DJpjZksueYjpYzv5llzhn/uE4M78iF9E3pj
 nTVekUrBlrnCtIaSlQ9syKEJTOq0p72adIPyVcWsxfy3WOAM+3mspjszky/vxjVfkvZqvI0xbVGgE
 HHKI2l7w==;
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifpi8-0006OJ-O2
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 18:30:46 +0000
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by cheepnis.misterjones.org with esmtpsa
 (TLSv1.2:DHE-RSA-AES128-GCM-SHA256:128) (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1ifpdI-0001O7-Qa; Fri, 13 Dec 2019 19:25:44 +0100
From: Marc Zyngier <maz@kernel.org>
To: 
Subject: [PATCH 6/7] KVM: arm/arm64: Elide CMOs when retrying a block mapping
Date: Fri, 13 Dec 2019 18:25:02 +0000
Message-Id: <20191213182503.14460-7-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191213182503.14460-1-maz@kernel.org>
References: <20191213182503.14460-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: james.morse@arm.com, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com, jhogan@kernel.org, paulus@ozlabs.org,
 pbonzini@redhat.com, rkrcmar@redhat.com, sean.j.christopherson@intel.com,
 vkuznets@redhat.com, wanpengli@tencent.com, jmattson@google.com,
 joro@8bytes.org, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, linux-mips@vger.kernel.org,
 kvm-ppc@vger.kernel.org, kvm@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_183044_802594_7421E3B8 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (1.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: kvm-ppc@vger.kernel.org, Wanpeng Li <wanpengli@tencent.com>,
 kvm@vger.kernel.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 James Hogan <jhogan@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>,
 linux-mips@vger.kernel.org,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 Paul Mackerras <paulus@ozlabs.org>, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org, Paolo Bonzini <pbonzini@redhat.com>,
 Vitaly Kuznetsov <vkuznets@redhat.com>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In the rare cases where we're converting a table mapping in
a block mapping, there is no point in cleaning memory to the
PoC, as we're about to remap the exact same pages again,
only as a block mapping.

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 virt/kvm/arm/mmu.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/virt/kvm/arm/mmu.c b/virt/kvm/arm/mmu.c
index d7c710491d26..c55022dbac89 100644
--- a/virt/kvm/arm/mmu.c
+++ b/virt/kvm/arm/mmu.c
@@ -1109,7 +1109,8 @@ static int stage2_set_pmd_huge(struct kvm *kvm, struct kvm_mmu_memory_cache
 		 * get handled accordingly.
 		 */
 		if (!pmd_thp_or_huge(old_pmd)) {
-			unmap_stage2_range(kvm, addr & S2_PMD_MASK, S2_PMD_SIZE, 0);
+			unmap_stage2_range(kvm, addr & S2_PMD_MASK, S2_PMD_SIZE,
+					   KVM_UNMAP_ELIDE_CMO);
 			goto retry;
 		}
 		/*
@@ -1159,7 +1160,8 @@ static int stage2_set_pud_huge(struct kvm *kvm, struct kvm_mmu_memory_cache *cac
 		 * the range for this block and retry.
 		 */
 		if (!stage2_pud_huge(kvm, old_pud)) {
-			unmap_stage2_range(kvm, addr & S2_PUD_MASK, S2_PUD_SIZE, 0);
+			unmap_stage2_range(kvm, addr & S2_PUD_MASK, S2_PUD_SIZE,
+					   KVM_UNMAP_ELIDE_CMO);
 			goto retry;
 		}
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
