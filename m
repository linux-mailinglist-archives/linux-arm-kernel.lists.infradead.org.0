Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A61C155EB7
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 20:45:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jsDsGOIMDzeW+Rwgl++Ase7k9nCpDR1x86d1ia8QLwA=; b=VlSDfgZJSNxHRx
	jjQV3eh4xkX9oNv8fCEPMXhR7Teo263ubtXFroen/woBQboI+1/FRNoqJilbzS9AZhWBV6gG81Q5A
	7QFiRH4TO1cRDvlVafd0ugUsPZ2dXiaq+1mEe3jjmjJMU+4i/DOyx10mG2suCbL/1gu/RYNkSgM4i
	siqTThwm9f5uyOHdO/YdJxOki+b7bqzE3ohrMWNQXOdKjPkCevfNTkjQOd1Zn7enzsZQsXri/I8sy
	6erPQN+/LQwAmQlq0O7sflJELZsCsccKt20F7i59sm6nMRIx/D4xKatv5SA/3BGLYeTyiKh74f9EA
	m6WQQhE3W3x5HkVn68iQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j09ZR-00067K-NR; Fri, 07 Feb 2020 19:45:45 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j09ZL-00066H-Pi
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 19:45:41 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Feb 2020 11:45:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,414,1574150400"; d="scan'208";a="312123734"
Received: from sjchrist-coffee.jf.intel.com (HELO linux.intel.com)
 ([10.54.74.202])
 by orsmga001.jf.intel.com with ESMTP; 07 Feb 2020 11:45:32 -0800
Date: Fri, 7 Feb 2020 11:45:32 -0800
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Peter Xu <peterx@redhat.com>, Vitaly Kuznetsov <vkuznets@redhat.com>
Subject: Re: [PATCH v5 15/19] KVM: Provide common implementation for generic
 dirty log functions
Message-ID: <20200207194532.GK2401@linux.intel.com>
References: <20200121223157.15263-1-sean.j.christopherson@intel.com>
 <20200121223157.15263-16-sean.j.christopherson@intel.com>
 <20200206200200.GC700495@xz-x1>
 <20200206212120.GF13067@linux.intel.com>
 <20200206214106.GG700495@xz-x1>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200206214106.GG700495@xz-x1>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_114539_918090_9C9B1870 
X-CRM114-Status: GOOD (  16.32  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.65 listed in list.dnswl.org]
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
Cc: Wanpeng Li <wanpengli@tencent.com>, kvm@vger.kernel.org,
 David Hildenbrand <david@redhat.com>, linux-mips@vger.kernel.org,
 Paul Mackerras <paulus@ozlabs.org>, kvmarm@lists.cs.columbia.edu,
 Janosch Frank <frankja@linux.ibm.com>, Marc Zyngier <maz@kernel.org>,
 Joerg Roedel <joro@8bytes.org>, Christian Borntraeger <borntraeger@de.ibm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, kvm-ppc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Jim Mattson <jmattson@google.com>,
 Cornelia Huck <cohuck@redhat.com>, Christoffer Dall <christoffer.dall@arm.com>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 Paolo Bonzini <pbonzini@redhat.com>, Vitaly Kuznetsov <vkuznets@redhat.com>,
 Philippe =?iso-8859-1?Q?Mathieu-Daud=E9?= <f4bug@amsat.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

+Vitaly for HyperV

On Thu, Feb 06, 2020 at 04:41:06PM -0500, Peter Xu wrote:
> On Thu, Feb 06, 2020 at 01:21:20PM -0800, Sean Christopherson wrote:
> > On Thu, Feb 06, 2020 at 03:02:00PM -0500, Peter Xu wrote:
> > > But that matters to this patch because if MIPS can use
> > > kvm_flush_remote_tlbs(), then we probably don't need this
> > > arch-specific hook any more and we can directly call
> > > kvm_flush_remote_tlbs() after sync dirty log when flush==true.
> > 
> > Ya, the asid_flush_mask in kvm_vz_flush_shadow_all() is the only thing
> > that prevents calling kvm_flush_remote_tlbs() directly, but I have no
> > clue as to the important of that code.
> 
> As said above I think the x86 lockdep is really not necessary, then
> considering MIPS could be the only one that will use the new hook
> introduced in this patch...  Shall we figure that out first?

So I prepped a follow-up patch to make kvm_arch_dirty_log_tlb_flush() a
MIPS-only hook and use kvm_flush_remote_tlbs() directly for arm and x86,
but then I realized x86 *has* a hook to do a precise remote TLB flush.
There's even an existing kvm_flush_remote_tlbs_with_address() call on a
memslot, i.e. this exact scenario.  So arguably, x86 should be using the
more precise flush and should keep kvm_arch_dirty_log_tlb_flush().

But, the hook is only used when KVM is running as an L1 on top of HyperV,
and I assume dirty logging isn't used much, if at all, for L1 KVM on
HyperV?

I see three options:

  1. Make kvm_arch_dirty_log_tlb_flush() MIPS-only and call
     kvm_flush_remote_tlbs() directly for arm and x86.  Add comments to
     explain when an arch should implement kvm_arch_dirty_log_tlb_flush().

  2. Change x86 to use kvm_flush_remote_tlbs_with_address() when flushing
     a memslot after the dirty log is grabbed by userspace.

  3. Keep the resulting code as is, but add a comment in x86's
     kvm_arch_dirty_log_tlb_flush() to explain why it uses
     kvm_flush_remote_tlbs() instead of the with_address() variant.

I strongly prefer to (2) or (3), but I'll defer to Vitaly as to which of
those is preferable.

I don't like (1) because (a) it requires more lines code (well comments),
to explain why kvm_flush_remote_tlbs() is the default, and (b) it would
require even more comments, which would be x86-specific in generic KVM,
to explain why x86 doesn't use its with_address() flush, or we'd lost that
info altogether.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
