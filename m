Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44A5A156100
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 23:03:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sv0YKNehz6XofTgpdSGkkNYdyu6DpHCQqOR9IfE+BHY=; b=mYIXstjnIJfwYq
	K8GFYGyJY2N8wGVxOE3a/gjWogJj12nQSeEdxTwAcI5MXa3uiKzhixyPTgsAJl2zb7heZBt/w7eUQ
	5tk4cXuBFD9nlGBulBtUqNYMpt7KsyHI0KOqebyVwuLBroSHV11h8oQeH5hce9FXJy+607x1ahOel
	/Tr+OzbKsGfQAlefsZnEMCl6aghChdGQmNSrZIRRnzBffWwHgebFBKnYU1QtwHUSTydUAYrBI2CPA
	sWnHrzqjtjTgYLsnGnsWRLbr9Lg2sLhpFnAT4FFOKx8yR+HV5ZiJ6aJsZB+WqVYrBQHrjgBQlGmPQ
	Vahu+z84w1uNXZ+2znOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0Bio-0001k5-CX; Fri, 07 Feb 2020 22:03:34 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0Bih-0001jS-5X
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 22:03:28 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Feb 2020 14:03:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,415,1574150400"; d="scan'208";a="280100123"
Received: from sjchrist-coffee.jf.intel.com (HELO linux.intel.com)
 ([10.54.74.202])
 by FMSMGA003.fm.intel.com with ESMTP; 07 Feb 2020 14:03:25 -0800
Date: Fri, 7 Feb 2020 14:03:25 -0800
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Peter Xu <peterx@redhat.com>
Subject: Re: [PATCH v5 17/19] KVM: Terminate memslot walks via used_slots
Message-ID: <20200207220325.GO2401@linux.intel.com>
References: <20200121223157.15263-1-sean.j.christopherson@intel.com>
 <20200121223157.15263-18-sean.j.christopherson@intel.com>
 <20200206210944.GD700495@xz-x1>
 <20200207183325.GI2401@linux.intel.com>
 <20200207203909.GE720553@xz-x1>
 <20200207211016.GN2401@linux.intel.com>
 <20200207214623.GF720553@xz-x1>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200207214623.GF720553@xz-x1>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_140327_221318_9521172F 
X-CRM114-Status: GOOD (  19.01  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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

On Fri, Feb 07, 2020 at 04:46:23PM -0500, Peter Xu wrote:
> On Fri, Feb 07, 2020 at 01:10:16PM -0800, Sean Christopherson wrote:
> > On Fri, Feb 07, 2020 at 03:39:09PM -0500, Peter Xu wrote:
> > > On Fri, Feb 07, 2020 at 10:33:25AM -0800, Sean Christopherson wrote:
> > > > On Thu, Feb 06, 2020 at 04:09:44PM -0500, Peter Xu wrote:
> > > > > On Tue, Jan 21, 2020 at 02:31:55PM -0800, Sean Christopherson wrote:
> > > > > > @@ -9652,13 +9652,13 @@ int __x86_set_memory_region(struct kvm *kvm, int id, gpa_t gpa, u32 size)
> > > > > >  		if (IS_ERR((void *)hva))
> > > > > >  			return PTR_ERR((void *)hva);
> > > > > >  	} else {
> > > > > > -		if (!slot->npages)
> > > > > > +		if (!slot || !slot->npages)
> > > > > >  			return 0;
> > > > > >  
> > > > > > -		hva = 0;
> > > > > > +		hva = slot->userspace_addr;
> > > > > 
> > > > > Is this intended?
> > > > 
> > > > Yes.  It's possible to allow VA=0 for userspace mappings.  It's extremely
> > > > uncommon, but possible.  Therefore "hva == 0" shouldn't be used to
> > > > indicate an invalid slot.
> > > 
> > > Note that this is the deletion path in __x86_set_memory_region() not
> > > allocation.  IIUC userspace_addr won't even be used in follow up code
> > > path so it shouldn't really matter.  Or am I misunderstood somewhere?
> > 
> > No, but that's precisely why I don't want to zero out @hva, as doing so
> > implies that '0' indicates an invalid hva, which is wrong.
> > 
> > What if I change this to 
> > 
> > 			hva = 0xdeadull << 48;
> > 
> > and add a blurb in the changelog about stuff hva with a non-canonical value
> > to indicate it's being destroyed.
> 
> IMO it's fairly common to have the case where "when A is XXX then
> parameters B is invalid" happens in C.

I'm not arguing that's not the case.  My point is that there's nothing
special about '0', so why use it?  E.g. "hva = 1" would also be ok from a
functional perspective, but more obviously "wrong".

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
