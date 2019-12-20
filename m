Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FA5B128091
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 17:23:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3WlBH1om6EYmxy2hrpcqvBlslKIytq9Dw9ETqG2JLi4=; b=JCMuY6zTPqfTnn
	6FkpebQghrOW77K7OMDKFV9PgdB0+0DNBfzWlGTYVZz9ee/SCznkCAPVmyLjOMdICdwlL82rhVkQu
	EiXO7LKkaZAgibgoTpHtU6Ip00DaFd+TX2iDGIESjSqwHQfF0JrG7PUZZOpDTmut2yUmOP+sA3kpa
	YVVD/9q2hE7Z15wTbCh11pCI++TdrHbsT/kzX8XBsEDmMM+KL65vlYSI3Eb/wIVCNgrafcXEJe5FK
	yKHnfcGAevXV8iPw0tyQgBZS2xS39fRJa8cXF7nfuqT6G9JPGCZw3c78e7A4zK/WKrJIKXYg20GSg
	MjDZUaQ7Tu3vw9Als6VA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiL3I-0001z4-Iw; Fri, 20 Dec 2019 16:22:56 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiL39-0001yk-SG
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 16:22:49 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Dec 2019 08:22:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,336,1571727600"; d="scan'208";a="241543730"
Received: from sjchrist-coffee.jf.intel.com (HELO linux.intel.com)
 ([10.54.74.202])
 by fmsmga004.fm.intel.com with ESMTP; 20 Dec 2019 08:22:45 -0800
Date: Fri, 20 Dec 2019 08:22:45 -0800
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Cornelia Huck <cohuck@redhat.com>
Subject: Re: [PATCH v2 35/45] KVM: s390: Manually invoke vcpu setup during
 kvm_arch_vcpu_create()
Message-ID: <20191220162245.GC20453@linux.intel.com>
References: <20191218215530.2280-1-sean.j.christopherson@intel.com>
 <20191218215530.2280-36-sean.j.christopherson@intel.com>
 <20191220110445.3a42041a.cohuck@redhat.com>
 <20191220155607.GB20453@linux.intel.com>
 <20191220170246.76ba681a.cohuck@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191220170246.76ba681a.cohuck@redhat.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_082247_922675_2B79601B 
X-CRM114-Status: GOOD (  18.45  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
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
Cc: Wanpeng Li <wanpengli@tencent.com>, Janosch Frank <frankja@linux.ibm.com>,
 kvm@vger.kernel.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Marc Zyngier <maz@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 David Hildenbrand <david@redhat.com>, linux-mips@vger.kernel.org,
 kvm-ppc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Greg Kurz <groug@kaod.org>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 James Hogan <jhogan@kernel.org>, Paolo Bonzini <pbonzini@redhat.com>,
 Vitaly Kuznetsov <vkuznets@redhat.com>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 20, 2019 at 05:02:46PM +0100, Cornelia Huck wrote:
> On Fri, 20 Dec 2019 07:56:07 -0800
> Sean Christopherson <sean.j.christopherson@intel.com> wrote:
> 
> > On Fri, Dec 20, 2019 at 11:04:45AM +0100, Cornelia Huck wrote:
> > > On Wed, 18 Dec 2019 13:55:20 -0800
> > > Sean Christopherson <sean.j.christopherson@intel.com> wrote:
> > >   
> > > > Rename kvm_arch_vcpu_setup() to kvm_s390_vcpu_setup() and manually call
> > > > the new function during kvm_arch_vcpu_create().  Define an empty
> > > > kvm_arch_vcpu_setup() as it's still required for compilation.  This
> > > > is effectively a nop as kvm_arch_vcpu_create() and kvm_arch_vcpu_setup()
> > > > are called back-to-back by common KVM code.  Obsoleting
> > > > kvm_arch_vcpu_setup() paves the way for its removal.
> > > > 
> > > > Note, gmap_remove() is now called if setup fails, as s390 was previously
> > > > freeing it via kvm_arch_vcpu_destroy(), which is called by common KVM
> > > > code if kvm_arch_vcpu_setup() fails.  
> > > 
> > > Yes, this looks like the only thing that needs to be undone
> > > (sca_add_vcpu() is done later in the process.)
> > > 
> > > Maybe mention that gmap_remove() is for ucontrol only? I was confused
> > > for a moment :)  
> > 
> > Will do.
> > 
> > Would it also make sense to open code __kvm_ucontrol_vcpu_init() in a
> > separate patch immediately preceding this change?  That'd make it a little
> > more obvious why gmap_remove() is called, and it would eliminate the
> > "uninit" verbiage in the label, e.g.:
> 
> I'm a bit undecided here; especially as I'm not sure if there are any
> future plans with ucontrol. I'll leave that for Christian and Janosch
> to decide.

Sounds good.  Thanks for the reviews!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
