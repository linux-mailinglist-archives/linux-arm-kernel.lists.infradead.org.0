Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6DA8154C08
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 20:22:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JdCk1cKQ2Jf2NCReuxDcTp/3ZiEnR1iEY7YewaHKdmA=; b=LaHv5lopLeZ4G7
	JwMl/RBLmRGPCJYsvAEyDRBWwAQZgpzHsW/Ly/PaFyzloviylmqVlqjFHWzW941wbbU0GQJnoF2Bt
	BI6DO4IE8T4GUCdDhOAHPeyR5CRyaFabpyM3UlToB1GhssmBLJz9PBOJJNwD8L23aN6+6oWy1J2Rn
	Oo22/hPyJSrQq32tRtJgPGjQV+MC+od+2WAFjjY9KcY8HF+td+n5UBwcALEmtnWyGAS7p0Yut+Rhz
	WNGgyhNWsGkX2zlu+p7X+5dj/TLpLhMNSy5lSM0SCk52PJujhExFiOL7Q+T6spi6XQtiniLevU5N0
	FbQilX6Sx/54w7HMA6Uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izmjW-0001wt-U8; Thu, 06 Feb 2020 19:22:38 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izmjP-0001wD-Pf
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 19:22:33 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Feb 2020 11:22:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,410,1574150400"; d="scan'208";a="232140746"
Received: from sjchrist-coffee.jf.intel.com (HELO linux.intel.com)
 ([10.54.74.202])
 by orsmga003.jf.intel.com with ESMTP; 06 Feb 2020 11:22:30 -0800
Date: Thu, 6 Feb 2020 11:22:30 -0800
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Peter Xu <peterx@redhat.com>
Subject: Re: [PATCH v5 14/19] KVM: Clean up local variable usage in
 __kvm_set_memory_region()
Message-ID: <20200206192230.GE13067@linux.intel.com>
References: <20200121223157.15263-1-sean.j.christopherson@intel.com>
 <20200121223157.15263-15-sean.j.christopherson@intel.com>
 <20200206190641.GA700495@xz-x1>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200206190641.GA700495@xz-x1>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_112231_844207_FA144F34 
X-CRM114-Status: GOOD (  13.78  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
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

On Thu, Feb 06, 2020 at 02:06:41PM -0500, Peter Xu wrote:
> On Tue, Jan 21, 2020 at 02:31:52PM -0800, Sean Christopherson wrote:
> 
> [...]
> 
> > @@ -1101,52 +1099,55 @@ int __kvm_set_memory_region(struct kvm *kvm,
> >  	if (mem->guest_phys_addr + mem->memory_size < mem->guest_phys_addr)
> >  		return -EINVAL;
> >  
> > -	slot = id_to_memslot(__kvm_memslots(kvm, as_id), id);
> > -	base_gfn = mem->guest_phys_addr >> PAGE_SHIFT;
> > -	npages = mem->memory_size >> PAGE_SHIFT;
> > -
> > -	if (npages > KVM_MEM_MAX_NR_PAGES)
> > -		return -EINVAL;
> > -
> >  	/*
> >  	 * Make a full copy of the old memslot, the pointer will become stale
> >  	 * when the memslots are re-sorted by update_memslots().
> >  	 */
> > -	old = *slot;
> > +	tmp = id_to_memslot(__kvm_memslots(kvm, as_id), id);
> > +	old = *tmp;
> > +	tmp = NULL;
> 
> Shall we keep this chunk to the patch where it will be used?  Other
> than that, it looks good to me.

I assume you're talking about doing this instead of using @tmp?

	old = *id_to_memslot(__kvm_memslots(kvm, as_id), id);

It's obviously possible, but I really like resulting diff for
__kvm_set_memory_region() in "KVM: Terminate memslot walks via used_slots"
when tmp is used.

@@ -1104,8 +1203,13 @@ int __kvm_set_memory_region(struct kvm *kvm,
         * when the memslots are re-sorted by update_memslots().
         */
        tmp = id_to_memslot(__kvm_memslots(kvm, as_id), id);
-       old = *tmp;
-       tmp = NULL;
+       if (tmp) {
+               old = *tmp;
+               tmp = NULL;
+       } else {
+               memset(&old, 0, sizeof(old));
+               old.id = id;
+       }


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
