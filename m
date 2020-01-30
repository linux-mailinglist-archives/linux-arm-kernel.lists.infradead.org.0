Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D15E14D464
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 01:10:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=32acGKNFT4krWWYJ6LLvBLlztdxwAcTW2PZ6IPJNdB8=; b=BPAr2vYldNDGNl
	cz79B3SQgYo41JTu4g+aBk6zZgnq8r9KDkwwC1BI1r/oE2EbavDLYzttby9pM3bS4NPhazBOpVgJf
	zYt7aab3LqRI5+ONC35j8v2RXa+Qos+21a1JQlgaSgYEe7HcHMxk8k+0Erxo3B3MkEFeoDJdm43jH
	J8Oc2abpFXouvEuqdvWYZIhe4LGWlQuFS5LigRaqyr7m2KypDVOEjA/A56cIuMtCqsYdW8gy3cd8+
	RHjI0g0OoQY11bfrXZHvYlgSMvqhHHzbozCSu1vt2LK9bxY9w4dbw9x6eFRQ/ewlhXTCfCdeqJ8rC
	Kko54ulXDLNlWQEJA3HQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwxPr-0002aT-DS; Thu, 30 Jan 2020 00:10:39 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwxPg-0002Yt-6u
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Jan 2020 00:10:29 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Jan 2020 16:10:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,379,1574150400"; d="scan'208";a="261990342"
Received: from sjchrist-coffee.jf.intel.com ([10.54.74.202])
 by fmsmga002.fm.intel.com with ESMTP; 29 Jan 2020 16:10:24 -0800
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH 0/5] KVM: Move x86 init ops to separate struct
Date: Wed, 29 Jan 2020 16:10:18 -0800
Message-Id: <20200130001023.24339-1-sean.j.christopherson@intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_161028_304147_C9A789C7 
X-CRM114-Status: GOOD (  12.44  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: linux-arm-kernel@lists.infradead.org, Wanpeng Li <wanpengli@tencent.com>,
 Janosch Frank <frankja@linux.ibm.com>, kvm@vger.kernel.org,
 David Hildenbrand <david@redhat.com>, Marc Zyngier <maz@kernel.org>,
 Joerg Roedel <joro@8bytes.org>, Cornelia Huck <cohuck@redhat.com>,
 linux-mips@vger.kernel.org,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 linux-kernel@vger.kernel.org, Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 James Morse <james.morse@arm.com>, kvm-ppc@vger.kernel.org,
 Vitaly Kuznetsov <vkuznets@redhat.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The non-x86 part of this series is wholly contained in patch 01.  Compared
to other recent kvm-wide changes, this one is very straightforward (famous
last words).

Like a few other architectures, e.g. PPC, x86 uses a set of global hooks
to call back into vendor code on demand.  A handlful of the x86 hooks are
used only within the scope of kvm_init().  This series moves the init-only
hooks to a separate struct, partly to clean up the code a bit, but mainly
so that the runtime hooks can be made available only after the x86 vendor
has completed its ->hardware_setup().  While working on a different series
I spent a fair bit of time scratching my as to why a kvm_x86_ops wasn't
working, and eventually realized VMX's callback wasn't "ready" because the
vmcs_config hadn't yet been populated.

Due to lack of a cross-compiling setup, the non-x86 changes in patch 01
are untested.

The SVM changes in patch 02 are fairly well tested, e.g. fudged things
enough to ensure KVM didn't explode on a null pointer.

Patch 05 is a bit scary as a rogue dereference of kvm_x86_ops before
->hardware_setup() will crash KVM (maybe the kernel?).  I didn't find any
obvious ways to use kvm_x86_ops on AMD, and tested on a few different
Intel CPUs, so I'm reasonably confident that there are no existing
violations.

Sean Christopherson (5):
  KVM: Pass kvm_init()'s opaque param to additional arch funcs
  KVM: x86: Move init-only kvm_x86_ops to separate struct
  KVM: VMX: Move hardware_setup() definition below vmx_x86_ops
  KVM: VMX: Configure runtime hooks using vmx_x86_ops
  KVM: x86: Set kvm_x86_ops only after ->hardware_setup() completes

 arch/mips/kvm/mips.c            |   4 +-
 arch/powerpc/kvm/powerpc.c      |   4 +-
 arch/s390/kvm/kvm-s390.c        |   4 +-
 arch/x86/include/asm/kvm_host.h |  13 +-
 arch/x86/kvm/svm.c              |  15 +-
 arch/x86/kvm/vmx/nested.c       |  15 +-
 arch/x86/kvm/vmx/nested.h       |   3 +-
 arch/x86/kvm/vmx/vmx.c          | 345 ++++++++++++++++----------------
 arch/x86/kvm/x86.c              |  16 +-
 include/linux/kvm_host.h        |   4 +-
 virt/kvm/arm/arm.c              |   4 +-
 virt/kvm/kvm_main.c             |  18 +-
 12 files changed, 238 insertions(+), 207 deletions(-)

-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
