Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E909BB040D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 20:51:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8ubsRZwq3ZkjS9wojv9f0rxSyH2fis85ov1CEdjNJdw=; b=U5gdhneaxi9XBL
	y+IG+eROQor4GyUMk0/OXDTFn9GvhoSbjOx8zrDiwXmVKv1e3NmHXoLKviLWEaLCiefNV7Q1vaOC/
	T5pydPRFi4be8r34BFB+i1LgDdu+S550t2d8AsppvUaL8sqyToLER/88t6JP1z6cDPjPcbK8CPNE7
	lMLPgSxUxfcoFDPPzGII1EEYhOrS4kUXpHoxmVb0ZwA+H1W8ALimgNtIEp3IdlICMFyilvJpJ/OOj
	RtTeNKmt5gY8N4U6SsnJDfzK2iqMF3rcSi0MR6ln15kk8MFLQTFy+eqX7G4GjBDXBB5SkR3PVVhvm
	+J54QhySGcWvFhgO0Ceg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i87hl-0007HD-EC; Wed, 11 Sep 2019 18:51:01 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i87hR-0007Ew-I5
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 18:50:42 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Sep 2019 11:50:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,492,1559545200"; d="scan'208";a="196980862"
Received: from sjchrist-coffee.jf.intel.com ([10.54.74.41])
 by orsmga002.jf.intel.com with ESMTP; 11 Sep 2019 11:50:40 -0700
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: James Hogan <jhogan@kernel.org>, Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Janosch Frank <frankja@linux.ibm.com>, Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>,
 Marc Zyngier <marc.zyngier@arm.com>
Subject: [PATCH 00/13] KVM: Dynamically size memslot arrays
Date: Wed, 11 Sep 2019 11:50:25 -0700
Message-Id: <20190911185038.24341-1-sean.j.christopherson@intel.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_115041_607025_67FC731B 
X-CRM114-Status: GOOD (  11.68  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
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
Cc: Julien Thierry <julien.thierry@arm.com>, Wanpeng Li <wanpengli@tencent.com>,
 kvm@vger.kernel.org, David Hildenbrand <david@redhat.com>,
 linux-arm-kernel@lists.infradead.org, Joerg Roedel <joro@8bytes.org>,
 Cornelia Huck <cohuck@redhat.com>, linux-mips@vger.kernel.org,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 kvm-ppc@vger.kernel.org, Vitaly Kuznetsov <vkuznets@redhat.com>,
 kvmarm@lists.cs.columbia.edu, Suzuki K Pouloze <suzuki.poulose@arm.com>,
 Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The end goal of this series is to dynamically size the memslot array so
that KVM allocates memory based on the number of memslots in use, as
opposed to unconditionally allocating memory for the maximum number of
memslots.  On x86, each memslot consumes 88 bytes, and so with 2 address
spaces of 512 memslots, each VM consumes ~90k bytes for the memslots.
E.g. given a VM that uses a total of 30 memslots, dynamic sizing reduces
the memory footprint from 90k to ~2.6k bytes.

The changes required to support dynamic sizing are relatively small,
e.g. are essentially contained in patches 12/13 and 13/13.  Patches 1-11
clean up the memslot code, which has gotten quite crusy, especially
__kvm_set_memory_region().  The clean up is likely not strictly necessary
to switch to dynamic sizing, but I didn't have a remotely reasonable
level of confidence in the correctness of the dynamic sizing without first
doing the clean up.

Testing, especially non-x86 platforms, would be greatly appreciated.  I'd
really like to get at least one Tested-by from all architectures.  The
non-x86 changes are for all intents and purposes untested, e.g. I compile
tested pieces of the code by copying them into x86, but that's it.  In
theory, the vast majority of the functional changes are arch agnostic, in
theory... 

Sean Christopherson (13):
  KVM: Reinstall old memslots if arch preparation fails
  KVM: PPC: Move memslot memory allocation into prepare_memory_region()
  KVM: x86: Allocate memslot resources during prepare_memory_region()
  KVM: Drop kvm_arch_create_memslot()
  KVM: Refactor error handling for setting memory region
  KVM: Move setting of memslot into helper routine
  KVM: Move memslot deletion to helper function
  KVM: Simplify kvm_free_memslot() and all its descendents
  KVM: Clean up local variable usage in __kvm_set_memory_region()
  KVM: Provide common implementation for generic dirty log functions
  KVM: Ensure validity of memslot with respect to kvm_get_dirty_log()
  KVM: Terminate memslot walks via used_slots
  KVM: Dynamically size memslot array based on number of used slots

 arch/mips/include/asm/kvm_host.h      |   2 +-
 arch/mips/kvm/mips.c                  |  68 +---
 arch/powerpc/include/asm/kvm_ppc.h    |  14 +-
 arch/powerpc/kvm/book3s.c             |  22 +-
 arch/powerpc/kvm/book3s_hv.c          |  36 +-
 arch/powerpc/kvm/book3s_pr.c          |  20 +-
 arch/powerpc/kvm/booke.c              |  17 +-
 arch/powerpc/kvm/powerpc.c            |  13 +-
 arch/s390/include/asm/kvm_host.h      |   2 +-
 arch/s390/kvm/kvm-s390.c              |  21 +-
 arch/x86/include/asm/kvm_page_track.h |   3 +-
 arch/x86/kvm/page_track.c             |  15 +-
 arch/x86/kvm/x86.c                    | 100 ++---
 include/linux/kvm_host.h              |  48 +--
 virt/kvm/arm/arm.c                    |  47 +--
 virt/kvm/arm/mmu.c                    |  18 +-
 virt/kvm/kvm_main.c                   | 546 ++++++++++++++++----------
 17 files changed, 467 insertions(+), 525 deletions(-)

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
