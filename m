Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EECC2124E03
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 17:40:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z/AOPOJSTl/k5xIf0pqUA0JaRVXovZyHun2a44phD5Y=; b=d70IzJZLYEg0rS
	eiwIa7CaQQ1c/aKgRHbZxJcSUlgDsX3h63UtSwOonSdJ4y7jAgtoT33akRxIShp4Jdvvsemf8oPBf
	ZeaeLiahHss0Sc5FnehW6SVQXeQJ/HkoNi5VeblLTNvH4ngjv9JLebrnn0ADab0/8DT5oAuZH4kec
	L/C4dQkpHn438dwFu+BqPT0nnBYhWP7D1wo5D06jxuHHxRGZdgXc+EGA+x+qaEMq+rhTpW3xAcnFH
	w/oeOeCAASqLJraPOpUirK5UVlu9ENMdl1H+5TgqIXETESbWm1OKM9tKbhZy6MI5X1txwvwIzg3MM
	Fj4bFGrX7gIweGEqkC9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihcMz-0004Ey-G0; Wed, 18 Dec 2019 16:40:17 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihcMi-00042m-Sh
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 16:40:02 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Dec 2019 08:39:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,330,1571727600"; d="scan'208";a="205898318"
Received: from sjchrist-coffee.jf.intel.com (HELO linux.intel.com)
 ([10.54.74.202])
 by orsmga007.jf.intel.com with ESMTP; 18 Dec 2019 08:39:59 -0800
Date: Wed, 18 Dec 2019 08:39:59 -0800
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Christian Borntraeger <borntraeger@de.ibm.com>
Subject: Re: [PATCH v4 19/19] KVM: selftests: Add test for
 KVM_SET_USER_MEMORY_REGION
Message-ID: <20191218163958.GC25201@linux.intel.com>
References: <20191217204041.10815-1-sean.j.christopherson@intel.com>
 <20191217204041.10815-20-sean.j.christopherson@intel.com>
 <f962fafb-3956-746f-d077-3dbcefaae7c8@de.ibm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f962fafb-3956-746f-d077-3dbcefaae7c8@de.ibm.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_084001_005041_2C26AD10 
X-CRM114-Status: GOOD (  14.69  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
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

On Wed, Dec 18, 2019 at 12:39:43PM +0100, Christian Borntraeger wrote:
> 
> On 17.12.19 21:40, Sean Christopherson wrote:
> > Add a KVM selftest to test moving the base gfn of a userspace memory
> > region.  The test is primarily targeted at x86 to verify its memslot
> > metadata is correctly updated, but also provides basic functionality
> > coverage on other architectures.
> > +static void *vcpu_worker(void *data)
> > +{
> > +	struct kvm_vm *vm = data;
> > +	struct kvm_run *run;
> > +	struct ucall uc;
> > +	uint64_t cmd;
> > +
> > +	/*
> > +	 * Loop until the guest is done.  Re-enter the guest on all MMIO exits,
> > +	 * which will occur if the guest attempts to access a memslot while it
> > +	 * is being moved.
> > +	 */
> > +	run = vcpu_state(vm, VCPU_ID);
> > +	do {
> > +		vcpu_run(vm, VCPU_ID);
> > +	} while (run->exit_reason == KVM_EXIT_MMIO);
> > +
> > +	TEST_ASSERT(run->exit_reason == KVM_EXIT_IO,
> > +		    "Unexpected exit reason = %d", run->exit_reason);
> 
> 
> This will also not work for s390. Maybe just make this test x86 specific for now?

Doh, that's obvious in hindsight.  I think the basic premise is also
broken on arm64 as it returns -EFAULT on is_error_noslot_pfn(pfn).  So
yeah, x86 only for now :-(

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
