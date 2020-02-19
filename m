Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97928164852
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 16:18:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ytLskt86Js5kqIUT4alfGOx/Sr1w5nvrPkJp+QRjheY=; b=UDcxf/9+N/j2fo
	CV+oltljJfjP61wNkn1hGa9ceit+GR4QUEfT13W7rYqQpECPHkhhtF1AqwSHjo4V9mj3/ERU+aQYR
	0j/07/G95t3fFHKBbceax+IR4hH+FqwgN3Jmo1/TXUbL3MKcOkd30rplcZ+bbs8lImYZbJHsVhwZG
	Hm3g1d/NRgIkZdD7P/FiP69VYpOmfEe3IlbkQRY2qVfjD8gbJb+mtPk25WmQ00YlfKQlEz7ByFFqd
	rdqh2QUewP86PQdVOFejDpI2YcSvl/Uw+6cbuCgEp7+DwUIfMCMzvWbkXjy+kj79o/UZcxdUBfTZc
	aemhoYLlg2W4Dew+u4Ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4R7N-00038M-DW; Wed, 19 Feb 2020 15:18:29 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4R7D-00036h-Uq
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 15:18:21 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Feb 2020 07:18:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,459,1574150400"; d="scan'208";a="235919620"
Received: from sjchrist-coffee.jf.intel.com (HELO linux.intel.com)
 ([10.54.74.202])
 by orsmga003.jf.intel.com with ESMTP; 19 Feb 2020 07:18:14 -0800
Date: Wed, 19 Feb 2020 07:18:14 -0800
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Subject: Re: [PATCH v6 21/22] KVM: x86/mmu: Use ranged-based TLB flush for
 dirty log memslot flush
Message-ID: <20200219151814.GC15888@linux.intel.com>
References: <20200218210736.16432-1-sean.j.christopherson@intel.com>
 <20200218210736.16432-22-sean.j.christopherson@intel.com>
 <fdb72ab9-18d4-5719-2863-78cde4e97fae@cogentembedded.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fdb72ab9-18d4-5719-2863-78cde4e97fae@cogentembedded.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_071820_461724_04AE4D31 
X-CRM114-Status: GOOD (  10.94  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
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
Cc: Wanpeng Li <wanpengli@tencent.com>, kvm@vger.kernel.org,
 David Hildenbrand <david@redhat.com>, Peter Xu <peterx@redhat.com>,
 linux-mips@vger.kernel.org, Paul Mackerras <paulus@ozlabs.org>,
 kvmarm@lists.cs.columbia.edu, Janosch Frank <frankja@linux.ibm.com>,
 Marc Zyngier <maz@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
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

On Wed, Feb 19, 2020 at 12:22:58PM +0300, Sergei Shtylyov wrote:
> Hello!
> 
> On 19.02.2020 0:07, Sean Christopherson wrote:
> 
> >Use the with_address() variant to when performing a TLB flush for a
>                                  ^^ is it really needed here?

Doh, thanks.  The subject also has a typo, it should be "range-based", not
"ranged-based".

> >specific memslot via kvm_arch_flush_remote_tlbs_memslot(), i.e. when
> >flushing after clearing dirty bits during KVM_{GET,CLEAR}_DIRTY_LOG.
> >This aligns all dirty log memslot-specific TLB flushes to use the
> >with_address() variant and paves the way for consolidating the relevant
> >code.
> >
> >Note, moving to the with_address() variant only affects functionality
> >when running as a HyperV guest.
> >
> >Cc: Vitaly Kuznetsov <vkuznets@redhat.com>
> >Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
> [...]
> 
> MBR, Sergei

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
