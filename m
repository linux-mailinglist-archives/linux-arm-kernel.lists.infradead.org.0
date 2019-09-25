Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D22ABDCF8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 13:22:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yMYYbTuJXcG5h8HXNvfdEwY0tjEhHGQ0/6rz3v8jbWw=; b=iKhCPAkhKwPvak
	bxYPxDrilejOYT1F7h35P+xkDn+UNkmnvs8vEk+EFPFLng6SsfGFExmmxeEA4tZUP8jZY+T4ldCnZ
	z8AU3qOG2GukZGO+WyWAVKLg/JxfkCXFoB8Sb5nBmEwM6ohCxWW7OzJEDIHZXJzQzh842pMJlQ+Tv
	zF2lusRPZWCBOWOhIsYMTz7aAogdQ2Y72J0SbTpjuiPiHEbX2T1jekrvJx7zTASn9f/wc6rEcydXL
	Tkg/65YqiC7o8R83Ow2bTk0JAe18rDIHVmkYsFDmwVlWSivk9ZP7USEnS2KkAKEHK8UClMUULxgDM
	iz9ZTIzFZaJN4NjdkvNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD5Mz-0007Hz-7F; Wed, 25 Sep 2019 11:22:05 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD5Kz-0005Ep-29
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 11:20:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EB0341570;
 Wed, 25 Sep 2019 04:19:59 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A436D3F694;
 Wed, 25 Sep 2019 04:19:58 -0700 (PDT)
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH 3/5] arm64: KVM: Disable EL1 PTW when invalidating S2 TLBs
Date: Wed, 25 Sep 2019 12:19:39 +0100
Message-Id: <20190925111941.88103-4-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190925111941.88103-1-maz@kernel.org>
References: <20190925111941.88103-1-maz@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_042001_532236_3D0B3D05 
X-CRM114-Status: GOOD (  13.44  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, James Morse <james.morse@arm.com>,
 Will Deacon <will@kernel.org>, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When erratum 1319367 is being worked around, special care must
be taken not to allow the page table walker to populate TLBs
while we have the stage-2 translation enabled (which would otherwise
result in a bizare mix of the host S1 and the guest S2).

We enforce this by setting TCR_EL1.EPD{0,1} before restoring the S2
configuration, and clear the same bits after having disabled S2.

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 arch/arm64/kvm/hyp/tlb.c | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm64/kvm/hyp/tlb.c b/arch/arm64/kvm/hyp/tlb.c
index eb0efc5557f3..4ef0bf0d76a6 100644
--- a/arch/arm64/kvm/hyp/tlb.c
+++ b/arch/arm64/kvm/hyp/tlb.c
@@ -63,6 +63,22 @@ static void __hyp_text __tlb_switch_to_guest_vhe(struct kvm *kvm,
 static void __hyp_text __tlb_switch_to_guest_nvhe(struct kvm *kvm,
 						  struct tlb_inv_context *cxt)
 {
+	if (cpus_have_const_cap(ARM64_WORKAROUND_1319367)) {
+		u64 val;
+
+		/*
+		 * For CPUs that are affected by ARM 1319367, we need to
+		 * avoid a host Stage-1 walk while we have the guest's
+		 * Stage-2 set in the VTTBR in order to invalidate TLBs.
+		 * We're guaranteed that the S1 MMU is enabled, so we can
+		 * simply set the EPD bits to avoid any further TLB fill.
+		 */
+		val = cxt->tcr = read_sysreg_el1(SYS_TCR);
+		val |= TCR_EPD1_MASK | TCR_EPD0_MASK;
+		write_sysreg_el1(val, SYS_TCR);
+		isb();
+	}
+
 	__load_guest_stage2(kvm);
 	isb();
 }
@@ -100,6 +116,13 @@ static void __hyp_text __tlb_switch_to_host_nvhe(struct kvm *kvm,
 						 struct tlb_inv_context *cxt)
 {
 	write_sysreg(0, vttbr_el2);
+
+	if (cpus_have_const_cap(ARM64_WORKAROUND_1319367)) {
+		/* Ensure stage-2 is actually disabled */
+		isb();
+		/* Restore the host's TCR_EL1 */
+		write_sysreg_el1(cxt->tcr, SYS_TCR);
+	}
 }
 
 static void __hyp_text __tlb_switch_to_host(struct kvm *kvm,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
