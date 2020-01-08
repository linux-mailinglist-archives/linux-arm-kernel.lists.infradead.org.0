Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C2F7134D66
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 21:27:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=b3rw1qRy+cz6OR/vG9eVzz6ngk3tlttenvjPIQMspDY=; b=GDe8kjwkVqP2pi
	Wa61JaMxMhbWH73AEQFiJA8O5xaJqHGg/WJQOoW1x780UdQdY9leYIg4+ZCewRcTG+A0UTQD7j7sN
	qKmPP6rkoIWq40yBRrz4bwEoiML71Req4i2Du4TiygJZaulVlTSRG4ln+4mAJfugUZPtjuyAfXd7g
	DpoyaKH8JgsRimDvRqoDfPjL7CfbS1JRiMwzXMj5Qox+Sn6dGixMXlcK+lQA/dTf0gEA5dWI/4aLD
	nidXkEs2bVKRhOrki/ntd8tY400mBshUO1+WJG2Y7zpM3d+QHe1d+RBPdRMQ2OetJMOdyn03YB/CZ
	a1tpul3IwpEukd5cnwHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipHvM-0008Dd-5w; Wed, 08 Jan 2020 20:27:28 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipHuz-0008Bf-HQ
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 20:27:07 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jan 2020 12:27:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,411,1571727600"; d="scan'208";a="211658348"
Received: from sjchrist-coffee.jf.intel.com ([10.54.74.202])
 by orsmga007.jf.intel.com with ESMTP; 08 Jan 2020 12:27:04 -0800
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH 00/14] KVM: x86/mmu: Huge page fixes, cleanup, and DAX
Date: Wed,  8 Jan 2020 12:24:34 -0800
Message-Id: <20200108202448.9669-1-sean.j.christopherson@intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_122705_590479_3CFC25B0 
X-CRM114-Status: GOOD (  11.11  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.55.52.88 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

This series is a mix of bug fixes, cleanup and new support in KVM's
handling of huge pages.  The series initially stemmed from a syzkaller
bug report[1], which is fixed by patch 02, "mm: thp: KVM: Explicitly
check for THP when populating secondary MMU".

While investigating options for fixing the syzkaller bug, I realized KVM
could reuse the approach from Barret's series to enable huge pages for DAX
mappings in KVM[2] for all types of huge mappings, i.e. walk the host page
tables instead of querying metadata (patches 05 - 09).

Walking the host page tables sidesteps the issues with refcounting and
identifying THP mappings (in theory), and using a common method for
identifying huge mappings should improve (haven't actually measured) KVM's
overall page fault latency by eliminating the vma lookup that is currently
used to identify HugeTLB mappings.  Eliminating the HugeTLB specific code
also allows for additional cleanup (patches 10 - 13).

Testing the page walk approach revealed several pre-existing bugs that
are included here (patches 01, 03 and 04) because the changes interact
with the rest of the series, e.g. without the read-only memslots fix,
walking the host page tables without explicitly filtering out HugeTLB
mappings would pick up read-only memslots and introduce a completely
unintended functional change.

Lastly, with the page walk infrastructure in place, supporting DAX-based
huge mappings becomes a trivial change (patch 14).

Based on kvm/queue, commit e41a90be9659 ("KVM: x86/mmu: WARN if root_hpa
is invalid when handling a page fault")

Paolo, assuming I understand your workflow, patch 01 can be squashed with
the buggy commit as it's still sitting in kvm/queue.

[1] https://lkml.kernel.org/r/0000000000003cffc30599d3d1a0@google.com
[2] https://lkml.kernel.org/r/20191212182238.46535-1-brho@google.com

Sean Christopherson (14):
  KVM: x86/mmu: Enforce max_level on HugeTLB mappings
  mm: thp: KVM: Explicitly check for THP when populating secondary MMU
  KVM: Use vcpu-specific gva->hva translation when querying host page
    size
  KVM: Play nice with read-only memslots when querying host page size
  x86/mm: Introduce lookup_address_in_mm()
  KVM: x86/mmu: Refactor THP adjust to prep for changing query
  KVM: x86/mmu: Walk host page tables to find THP mappings
  KVM: x86/mmu: Drop level optimization from fast_page_fault()
  KVM: x86/mmu: Rely on host page tables to find HugeTLB mappings
  KVM: x86/mmu: Remove obsolete gfn restoration in FNAME(fetch)
  KVM: x86/mmu: Zap any compound page when collapsing sptes
  KVM: x86/mmu: Fold max_mapping_level() into kvm_mmu_hugepage_adjust()
  KVM: x86/mmu: Remove lpage_is_disallowed() check from set_spte()
  KVM: x86/mmu: Use huge pages for DAX-backed files

 arch/powerpc/kvm/book3s_xive_native.c |   2 +-
 arch/x86/include/asm/pgtable_types.h  |   4 +
 arch/x86/kvm/mmu/mmu.c                | 208 ++++++++++----------------
 arch/x86/kvm/mmu/paging_tmpl.h        |  29 +---
 arch/x86/mm/pageattr.c                |  11 ++
 include/linux/huge_mm.h               |   6 +
 include/linux/kvm_host.h              |   3 +-
 mm/huge_memory.c                      |  11 ++
 virt/kvm/arm/mmu.c                    |   8 +-
 virt/kvm/kvm_main.c                   |  24 ++-
 10 files changed, 145 insertions(+), 161 deletions(-)

-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
