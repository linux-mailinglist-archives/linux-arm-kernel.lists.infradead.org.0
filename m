Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75E519991B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 18:25:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kTE0oafVnCURz6tEZA+jWyGS+Ab69g+9DVCUFP6oJFA=; b=ePIuUq5vXCSpuP
	edDVUgMyDbLJmNR9NTkvT26x2PpgFMupU9nxNoRzJg4fm+HRQXKSst1iqaPbh+115I0XAxN/4QYA3
	cQ5hYP3HNtdK1kGBu1dS4kiAIqSnvvV5PZVAsIZCX9Ebgjvr0LLIrUY9+jk8ReJach2F++J2+i2rL
	5glUsDLcso6AlFKPkomuKnXemeLOoXqo4orYfz5PkLPH/mGCCozTlIsKoLcTIVqtHtZmTqggrJTUy
	5Hl12fMJLin68W1+HAmEBM8Nw1eQToz/bHL3ijY+BmDZtJdUiLnc/C1QWBbwd9XjkiNC/U3gFfTIB
	Uj3J6MnFqRZsSXKg+Gdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0ptd-00007G-Ly; Thu, 22 Aug 2019 16:25:09 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0ptN-000069-3M
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 16:24:54 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Aug 2019 09:24:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,417,1559545200"; d="scan'208";a="181437997"
Received: from sjchrist-coffee.jf.intel.com (HELO linux.intel.com)
 ([10.54.74.41])
 by orsmga003.jf.intel.com with ESMTP; 22 Aug 2019 09:24:49 -0700
Date: Thu, 22 Aug 2019 09:24:49 -0700
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Steven Price <steven.price@arm.com>
Subject: Re: [PATCH v3 04/10] KVM: Implement kvm_put_guest()
Message-ID: <20190822162449.GF25467@linux.intel.com>
References: <20190821153656.33429-1-steven.price@arm.com>
 <20190821153656.33429-5-steven.price@arm.com>
 <20190822152854.GE25467@linux.intel.com>
 <e2abc69b-74c2-64ef-e270-43d93513eaae@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e2abc69b-74c2-64ef-e270-43d93513eaae@arm.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_092453_192628_2D1169C3 
X-CRM114-Status: GOOD (  21.72  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Radim =?utf-8?B?S3LEjW3DocWZ?= <rkrcmar@redhat.com>, kvm@vger.kernel.org,
 Suzuki K Pouloze <suzuki.poulose@arm.com>, Marc Zyngier <maz@kernel.org>,
 linux-doc@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 22, 2019 at 04:46:10PM +0100, Steven Price wrote:
> On 22/08/2019 16:28, Sean Christopherson wrote:
> > On Wed, Aug 21, 2019 at 04:36:50PM +0100, Steven Price wrote:
> >> kvm_put_guest() is analogous to put_user() - it writes a single value to
> >> the guest physical address. The implementation is built upon put_user()
> >> and so it has the same single copy atomic properties.
> > 
> > What you mean by "single copy atomic"?  I.e. what guarantees does
> > put_user() provide that __copy_to_user() does not?
> 
> Single-copy atomicity is defined by the Arm architecture[1] and I'm not
> going to try to go into the full details here, so this is a summary.
> 
> For the sake of this feature what we care about is that the value
> written/read cannot be "torn". In other words if there is a read (in
> this case from another VCPU) that is racing with the write then the read
> will either get the old value or the new value. It cannot return a
> mixture. (This is of course assuming that the read is using a
> single-copy atomic safe method).

Thanks for the explanation.  I assumed that's what you were referring to,
but wanted to double check.
 
> __copy_to_user() is implemented as a memcpy() and as such cannot provide
> single-copy atomicity in the general case (the buffer could easily be
> bigger than the architecture can guarantee).
> 
> put_user() on the other hand is implemented (on arm64) as an explicit
> store instruction and therefore is guaranteed by the architecture to be
> single-copy atomic (i.e. another CPU cannot see a half-written value).

I don't think kvm_put_guest() belongs in generic code, at least not with
the current changelog explanation about it providing single-copy atomic
semantics.  AFAICT, the single-copy thing is very much an arm64
implementation detail, e.g. the vast majority of 32-bit architectures,
including x86, do not provide any guarantees, and x86-64 generates more
or less the same code for put_user() and __copy_to_user() for 8-byte and
smaller accesses.

As an alternative to kvm_put_guest() entirely, is it an option to change
arm64's raw_copy_to_user() to redirect to __put_user() for sizes that are
constant at compile time and can be handled by __put_user()?  That would
allow using kvm_write_guest() to update stolen time, albeit with
arguably an even bigger dependency on the uaccess implementation details.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
