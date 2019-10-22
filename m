Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6D97E0735
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 17:22:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fxRCuBfUsJCCvVWHiDcFl2+rfbY7SHU2fLiV6B/WNNM=; b=Q44Hm3fFEIF/M+
	JYK0L7dQlXNiJYk6o2oQbDar7hTWQoPyagR7rGJBf6popwZ/W7wo4ze7SJO9aWEdUX3BUR8gEMf4V
	4Cna0Uy87Cvs3LceXUwEpFEV3qf5kF3G0UY7gyhwxUOo6adyOoRBaw7w99Auibg472ptweDGZlfSi
	XDVziZT6nJD6Y1ackU4F6dNLonlouI+x7d4gPYn4vkgVddOp2edwK0P75d8bmotQwJBBqw/wadRxZ
	pyi2/Pr2SUP1G0wGOLwVaFBWC/0OODYb111xOthljVrBuxH8v9CaPsX1GWMaSdJZ9uc4Lc82A2o8T
	S45GjGQ/4eAMKCkuhvZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMvzY-0001nJ-HK; Tue, 22 Oct 2019 15:22:36 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMvzP-0001mI-Gd
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 15:22:28 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Oct 2019 08:22:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,216,1569308400"; d="scan'208";a="196468247"
Received: from sjchrist-coffee.jf.intel.com (HELO linux.intel.com)
 ([10.54.74.41])
 by fmsmga008.fm.intel.com with ESMTP; 22 Oct 2019 08:22:24 -0700
Date: Tue, 22 Oct 2019 08:22:24 -0700
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: Re: [PATCH v2 15/15] KVM: Dynamically size memslot array based on
 number of used slots
Message-ID: <20191022152223.GB2343@linux.intel.com>
References: <20191022003537.13013-1-sean.j.christopherson@intel.com>
 <20191022003537.13013-16-sean.j.christopherson@intel.com>
 <2609aedc-4fc9-ab92-8877-55c64cf19165@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2609aedc-4fc9-ab92-8877-55c64cf19165@redhat.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_082227_594954_452C90B6 
X-CRM114-Status: GOOD (  11.43  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
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
Cc: Cornelia Huck <cohuck@redhat.com>, Wanpeng Li <wanpengli@tencent.com>,
 Janosch Frank <frankja@linux.ibm.com>, kvm@vger.kernel.org,
 Radim =?utf-8?B?S3LEjW3DocWZ?= <rkrcmar@redhat.com>,
 James Hogan <jhogan@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 David Hildenbrand <david@redhat.com>, linux-mips@vger.kernel.org,
 kvm-ppc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Marc Zyngier <maz@kernel.org>, Vitaly Kuznetsov <vkuznets@redhat.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 22, 2019 at 04:04:21PM +0200, Paolo Bonzini wrote:
> On 22/10/19 02:35, Sean Christopherson wrote:
> > +	struct kvm_memory_slot memslots[];
> > +	/*
> > +	 * WARNING: 'memslots' is dynamically-sized.  It *MUST* be at the end.
> > +	 */
> 
> Isn't that obvious from the flexible array member?

Probably.  It's also unnecessary as the compiler (at least as of gcc 5.4)
will throw an error if it's not at the end.  I think I even verified this
during development and still decided to leave the obnoxious warning in for
some reason...

include/linux/kvm_host.h:436:25: error: flexible array member not at end of struct
  struct kvm_memory_slot memslots[];

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
