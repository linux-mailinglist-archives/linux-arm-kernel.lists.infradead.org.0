Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88C0EB820E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 22:00:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3RvZaRQ2nsmMRvyakqzJUIpiSV56h73ZVMUTtgopC+c=; b=G/NHAu1ybSkv43
	K0eFOLpvJ0pdp6QN2ClGNc13PyIl4XyWe5y+ZIgSrl243JqlvBXoZynYlQ1thNPO6/sE7RYNQjZri
	P6HO/1IRoXKz6VPx1xMwzeV5XDuArWmeSZKMm7mXtWnKph+KMw7hWoaugXpTMDTif+ectWwrotier
	SirbHVyFNPUplJbQZ03iadMdiG6clZBg3Xa7o0cGu9sqNNR1MNXfIkagsPdEeF/FUOS8JV+s9Glip
	12zYc+Ak18J+B9cqAvWpdguCFsZPOsf0A03vecOFCh72SkbEbPzvJ8Met52G+eI6le9m2HYP1uGNX
	fFYy2jOhc7d9W7rnIq3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB2b9-0004Zv-3C; Thu, 19 Sep 2019 20:00:15 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB2Gr-0006Vt-7w
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 19:39:19 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Sep 2019 12:39:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,524,1559545200"; d="scan'208";a="217417278"
Received: from sjchrist-coffee.jf.intel.com (HELO linux.intel.com)
 ([10.54.74.41])
 by fmsmga002.fm.intel.com with ESMTP; 19 Sep 2019 12:39:15 -0700
Date: Thu, 19 Sep 2019 12:39:15 -0700
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Paul Mackerras <paulus@ozlabs.org>
Subject: Re: [PATCH 10/13] KVM: Provide common implementation for generic
 dirty log functions
Message-ID: <20190919193915.GC30495@linux.intel.com>
References: <20190911185038.24341-1-sean.j.christopherson@intel.com>
 <20190911185038.24341-11-sean.j.christopherson@intel.com>
 <20190919002242.GA19503@blackberry>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190919002242.GA19503@blackberry>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_123917_554169_58FABA18 
X-CRM114-Status: GOOD (  15.96  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
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
Cc: Julien Thierry <julien.thierry@arm.com>, Cornelia Huck <cohuck@redhat.com>,
 Wanpeng Li <wanpengli@tencent.com>, Janosch Frank <frankja@linux.ibm.com>,
 kvm@vger.kernel.org, Radim =?utf-8?B?S3LEjW3DocWZ?= <rkrcmar@redhat.com>,
 Marc Zyngier <marc.zyngier@arm.com>, James Hogan <jhogan@kernel.org>,
 Joerg Roedel <joro@8bytes.org>, David Hildenbrand <david@redhat.com>,
 linux-mips@vger.kernel.org, kvm-ppc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Christian Borntraeger <borntraeger@de.ibm.com>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Paolo Bonzini <pbonzini@redhat.com>, Vitaly Kuznetsov <vkuznets@redhat.com>,
 kvmarm@lists.cs.columbia.edu, Suzuki K Pouloze <suzuki.poulose@arm.com>,
 Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 19, 2019 at 10:22:42AM +1000, Paul Mackerras wrote:
> On Wed, Sep 11, 2019 at 11:50:35AM -0700, Sean Christopherson wrote:
> > Move the implementations of KVM_GET_DIRTY_LOG and KVM_CLEAR_DIRTY_LOG
> > for CONFIG_KVM_GENERIC_DIRTYLOG_READ_PROTECT into common KVM code.
> > The arch specific implemenations are extremely similar, differing
> > only in whether the dirty log needs to be sync'd from hardware (x86)
> > and how the TLBs are flushed.  Add new arch hooks to handle sync
> > and TLB flush; the sync will also be used for non-generic dirty log
> > support in a future patch (s390).
> > 
> > The ulterior motive for providing a common implementation is to
> > eliminate the dependency between arch and common code with respect to
> > the memslot referenced by the dirty log, i.e. to make it obvious in the
> > code that the validity of the memslot is guaranteed, as a future patch
> > will rework memslot handling such that id_to_memslot() can return NULL.
> 
> I notice you add empty definitions of kvm_arch_sync_dirty_log() for
> PPC, both Book E and Book 3S.  Given that PPC doesn't select
> CONFIG_KVM_GENERIC_DIRTYLOG_READ_PROTECT, why is this necessary?

s390 has a non-empty kvm_arch_sync_dirty_log() but doesn't select
CONFIG_KVM_GENERIC_DIRTYLOG_READ_PROTECT.  Patch 11/13 moves s390's call
of kvm_arch_sync_dirty_log() from s390's kvm_vm_ioctl_get_dirty_log() into
the common (but not "generic") kvm_get_dirty_log() so that it's obvious
that kvm_vm_ioctl_get_dirty_log() and kvm_get_dirty_log() are operating on
the same memslot, i.e. aren't independently querying id_to_memslot().

I originally made kvm_arch_sync_dirty_log() opt-in with a __KVM_HAVE_ARCH
macro, but the resulting #ifdeffery felt uglier than having PPC and ARM
provide empty functions.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
