Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A39D134D97
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 21:30:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CMJ9ZiY0/FxNIx2Y0TEsAlhurCPwM3/yz6Mcm81/UQw=; b=KxxceKsSl8DJmF
	aQb8DfEnFJRAV2JCf3ejVy93qt/gSWSM6uoPDfCLIpTIv16dmeLUZd06fyicTQT19Y5bfF6F7ppcs
	dnjQoY5cxkeX09K+JZoFqIs2FY4hk7WSJQZzv7mQqBG/ObmUxFumr8oSR+tpvS2H/cvpHpmTxcQjg
	/Y9F9INS4itdYpM0YoYMdoeoOSoZtyGlto2G9yMrpZ0ddeZUMF8svoqr/vLt7PEkKcJmAXRdz3UYi
	SP4D7AVraCKfGC5UdpbMfSc6l8rOgKxhbLC/LVaQG+CAWYA8BQxNmkL3Z0S+GJje5e9fKOpAmjAV7
	ANkFz1/DMrVPAf38RiAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipHxh-00021U-8g; Wed, 08 Jan 2020 20:29:53 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipHv5-0008ED-L8
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 20:27:13 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jan 2020 12:27:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,411,1571727600"; d="scan'208";a="211658380"
Received: from sjchrist-coffee.jf.intel.com ([10.54.74.202])
 by orsmga007.jf.intel.com with ESMTP; 08 Jan 2020 12:27:06 -0800
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH 08/14] KVM: x86/mmu: Drop level optimization from
 fast_page_fault()
Date: Wed,  8 Jan 2020 12:24:42 -0800
Message-Id: <20200108202448.9669-9-sean.j.christopherson@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200108202448.9669-1-sean.j.christopherson@intel.com>
References: <20200108202448.9669-1-sean.j.christopherson@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_122711_768873_DD0D26D5 
X-CRM114-Status: GOOD (  13.01  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
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
Cc: Wanpeng Li <wanpengli@tencent.com>, kvm@vger.kernel.org,
 David Hildenbrand <david@redhat.com>, Peter Zijlstra <peterz@infradead.org>,
 Dave Hansen <dave.hansen@linux.intel.com>, Paul Mackerras <paulus@ozlabs.org>,
 linux-mm@kvack.org, kvmarm@lists.cs.columbia.edu,
 Andrea Arcangeli <aarcange@redhat.com>, Dave Jiang <dave.jiang@intel.com>,
 linux-nvdimm <linux-nvdimm@lists.01.org>, Marc Zyngier <maz@kernel.org>,
 Joerg Roedel <joro@8bytes.org>,
 syzbot+c9d1fb51ac9d0d10c39d@syzkaller.appspotmail.com,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Barret Rhoden <brho@google.com>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 kvm-ppc@vger.kernel.org, Liran Alon <liran.alon@oracle.com>,
 Andy Lutomirski <luto@kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org, Jim Mattson <jmattson@google.com>,
 linux-kernel@vger.kernel.org,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 James Morse <james.morse@arm.com>, Jason Zeng <jason.zeng@intel.com>,
 Vitaly Kuznetsov <vkuznets@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Remove fast_page_fault()'s optimization to stop the shadow walk if the
iterator level drops below the intended map level.  The intended map
level is only acccurate for HugeTLB mappings (THP mappings are detected
after fast_page_fault()), i.e. it's not required for correctness, and
a future patch will also move HugeTLB mapping detection to after
fast_page_fault().

Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
---
 arch/x86/kvm/mmu/mmu.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/arch/x86/kvm/mmu/mmu.c b/arch/x86/kvm/mmu/mmu.c
index 4bd7f745b56d..7d78d1d996ed 100644
--- a/arch/x86/kvm/mmu/mmu.c
+++ b/arch/x86/kvm/mmu/mmu.c
@@ -3593,7 +3593,7 @@ static bool is_access_allowed(u32 fault_err_code, u64 spte)
  * - true: let the vcpu to access on the same address again.
  * - false: let the real page fault path to fix it.
  */
-static bool fast_page_fault(struct kvm_vcpu *vcpu, gpa_t cr2_or_gpa, int level,
+static bool fast_page_fault(struct kvm_vcpu *vcpu, gpa_t cr2_or_gpa,
 			    u32 error_code)
 {
 	struct kvm_shadow_walk_iterator iterator;
@@ -3611,8 +3611,7 @@ static bool fast_page_fault(struct kvm_vcpu *vcpu, gpa_t cr2_or_gpa, int level,
 		u64 new_spte;
 
 		for_each_shadow_entry_lockless(vcpu, cr2_or_gpa, iterator, spte)
-			if (!is_shadow_present_pte(spte) ||
-			    iterator.level < level)
+			if (!is_shadow_present_pte(spte))
 				break;
 
 		sp = page_header(__pa(iterator.sptep));
@@ -4223,7 +4222,7 @@ static int direct_page_fault(struct kvm_vcpu *vcpu, gpa_t gpa, u32 error_code,
 	if (level > PT_PAGE_TABLE_LEVEL)
 		gfn &= ~(KVM_PAGES_PER_HPAGE(level) - 1);
 
-	if (fast_page_fault(vcpu, gpa, level, error_code))
+	if (fast_page_fault(vcpu, gpa, error_code))
 		return RET_PF_RETRY;
 
 	mmu_seq = vcpu->kvm->mmu_notifier_seq;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
