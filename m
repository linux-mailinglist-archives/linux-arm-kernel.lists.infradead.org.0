Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04C2F1918DC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 19:21:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=09AU2fp+54APph+kFjX6qk/VUNRwhl7O6ekvHHS46C4=; b=N0PSFEQ5txhtZB
	RvvCUhvMJplcT7iTXnyITxmsBJ+QJnkF7CbQMq1ZgOKVqGv8MaUTfKv2XDKrOxBhPFIWRePZhkEA7
	FhWrZBHQvl8bBEnhz1nsJ1mPcoz2W8HVpKBcVUCOQFzNq679nN3+ZqTJ6QY0YESHwiat1b699YmGN
	fI6MRfChJbeQ5WiEo9H+RzFT8jqQ0Hu1/Jm0JoPM/sPmlPlmEAQJO7JfLEyTpKwtUcgPmQHPZzi0C
	xVzA0BQYCX3OEZ8uztLRvQqq+g2bENINkzXGKjUiXIK4cq5H030PxNM+X13ACzcuKnyZZKUFCTxB3
	Abn/RjnXnlGzoBxroswg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGoAg-00087k-Ju; Tue, 24 Mar 2020 18:21:02 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGoAW-00086x-Gg
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 18:20:54 +0000
IronPort-SDR: Ah1I14FKuZkhE7JPFCkyK77LEWee1ITY1RVCDuSPmyASLrf5OuxrR8b0rAMxxS+S36SCIXMVC3
 XJNwAllLq0Vg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2020 11:20:51 -0700
IronPort-SDR: y/USM2b3SPl0LjjMZJcqAmjb2PYOuW/QAtqFht1aEDTm2RWTprcUGxDRQvFy8adhtqpy78sfUX
 6Y7gyFMhw+XA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,301,1580803200"; d="scan'208";a="246803473"
Received: from sjchrist-coffee.jf.intel.com (HELO linux.intel.com)
 ([10.54.74.202])
 by orsmga003.jf.intel.com with ESMTP; 24 Mar 2020 11:20:48 -0700
Date: Tue, 24 Mar 2020 11:20:48 -0700
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Christian Borntraeger <borntraeger@de.ibm.com>
Subject: Re: [PATCH v4 19/19] KVM: selftests: Add test for
 KVM_SET_USER_MEMORY_REGION
Message-ID: <20200324182048.GF5998@linux.intel.com>
References: <20191217204041.10815-1-sean.j.christopherson@intel.com>
 <20191217204041.10815-20-sean.j.christopherson@intel.com>
 <f962fafb-3956-746f-d077-3dbcefaae7c8@de.ibm.com>
 <20191218163958.GC25201@linux.intel.com>
 <78b21097-52e4-b851-fc78-da3442fd0904@de.ibm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <78b21097-52e4-b851-fc78-da3442fd0904@de.ibm.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_112052_602196_AC70546B 
X-CRM114-Status: GOOD (  17.26  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.20 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 David Hildenbrand <david@redhat.com>, James Hogan <jhogan@kernel.org>,
 linux-mips@vger.kernel.org, Paul Mackerras <paulus@ozlabs.org>,
 kvmarm@lists.cs.columbia.edu, Janosch Frank <frankja@linux.ibm.com>,
 Marc Zyngier <maz@kernel.org>, Joerg Roedel <joro@8bytes.org>,
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

On Tue, Mar 24, 2020 at 10:43:07AM +0100, Christian Borntraeger wrote:
> 
> On 18.12.19 17:39, Sean Christopherson wrote:
> > On Wed, Dec 18, 2019 at 12:39:43PM +0100, Christian Borntraeger wrote:
> >>
> I started looking into this what it would cost to implement this on s390.
> s390 is also returning EFAULT if no memory slot is available.
> 
> According to the doc this is not documented at all. So this part of the test
>         vm = vm_create(VM_MODE_DEFAULT, 0, O_RDWR);
>         vm_vcpu_add(vm, VCPU_ID);
>         /* Fails with ENOSPC because the MMU can't create pages (no slots). */
>         TEST_ASSERT(_vcpu_run(vm, VCPU_ID) == -1 && errno == ENOSPC,
>                     "Unexpected error code = %d", errno);
>         kvm_vm_free(vm);
> 
> is actually just testing that the implementation for x86 does not change the error
> from ENOSPC to something else.

It's even worse than that.  There error isn't directly due to no having
a memslots, it occurs because the limit on number of pages in the MMU is
zero.  On x86, that limit is automatically derived from the total size of
memslots.

The selftest could add an explicit ioctl() call to manually override the
number of allowed MMU pages, but that didn't seem any cleaner as it'd still
rely on undocumented internal KVM behavior.

TL;DR: I'm not a huge fan of the code either.

> The question is: do we want to document the error for the "no memslot" case
> and then change all existing platforms?

At first blush, I like the idea of adding an explicit check in KVM_RUN to
return an error if there isn't at least one usable memslot.  But, it'd be a
little weird/kludgy on x86/VMX due to the existence of "private" memslots,
i.e. the check should really fire on "no public memslots".  At that point,
I'm not sure whether the well defined errno would be worth the extra code.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
