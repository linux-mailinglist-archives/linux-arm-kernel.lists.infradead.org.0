Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0017B156228
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Feb 2020 01:53:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QZ3z5q0J/g5NIXmjmjpWOw0wKMZLOJH+eWY1dbMRvKk=; b=Yys5QScb8VdGUB
	swW0Tg+3Ayjt9z7BbY8to8EK1eNLfVlJ/30kNDna5EuYb3zaZGH1rjVjwp2Ep346H3e7VUQeCrW/5
	LZes6aaqsUitw//w5bZ/UsrRPraPCCXNXk4HB96Eh8uMBjPvykK5I4szuyYwXr0OoWFcN9AvaNRxf
	pQBUD9XAkm+LpTFNfWKwcagkBNq3CqKhYSAPxR7gi3TP5vehuc/cKPMZPhFu/ensE8WPz6+WcQSx1
	Yd5oWB2+ALKbqhGQltgP4rui2qb0XiZMlVl/YGv6bUovz//NAJsevvir6UtDvHmNEiSM7SkGKAHME
	WlvgqHIfYiJe60lh3P1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0ENd-0005oH-PZ; Sat, 08 Feb 2020 00:53:53 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0ENW-0005nE-LR
 for linux-arm-kernel@lists.infradead.org; Sat, 08 Feb 2020 00:53:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1581123223;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=aeJ50ErBZgIigE1LeoA3RSrYk9aerE36Qrswco8mPEI=;
 b=dj41t0/5LoLo8eFBH7qELW37td220WUMP+fCqJ25gLlkW6pusXG8m9EVLo8f1hjzx6+z+T
 dCoeII+A9nHQtg7xUVenVbhZWdrpA6DPWV8xoXimcF6p2ayysi86twWrdhs8Gd4j68VCVx
 dpF5fE9iJUhYeTu8Sjzm+cDsF078fCo=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-237-1xR6zOKHNcKh3dqN_Bk5WA-1; Fri, 07 Feb 2020 19:53:39 -0500
Received: by mail-qk1-f198.google.com with SMTP id 12so651026qkf.20
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Feb 2020 16:53:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=JXjXMB8+l02t7W3QCunMDZ6uJP1WKNZJHojqnKutHCk=;
 b=FBpTU9DceKDEA42pdU6jo6+tKkzjVoj2n0glcNFAZuRDZSbiZ0wP/e1fvCVF13BJbm
 DyzBZTQb7iYFR1vDHyG2Bh4hbvEDums2kd0eC2x9nq+gM0DZ/PBhJo7SSSNBetux3ERc
 EPKIeGvVVMcLqMzclKGcsF+0aBpgqVi2AwFo+QLQGcmIOeOByphm5msloFWmm+wUy6tg
 p56nPb2bESvpIY5GKrM1gHODN8ILAjaqi66N1bjMKIWAgHWhwMyiu/b0CwFqQ5foCoaG
 TIkqxpF2SUV7AU479s3kn0LDrCB3QYGY1ovF6Fdx5UjlUUHUm+GR+4PSXRGWI4ahFde0
 0tRw==
X-Gm-Message-State: APjAAAXW9UGPO/V7fL5+ZwEUHQRMhB8WRa4DIQHbtR38nULkGYenp5ZM
 v8xUy8umfK7Zzm1Sq/iREFtI2siRIDblaj542hG5Lqfdbi0FERgZOyH5d55kuNr8zhmNKBQ1A6U
 +bwoarT6w9lJRIB7s9MHzoCoO00LD+vzSOgA=
X-Received: by 2002:ac8:6ec5:: with SMTP id f5mr969416qtv.137.1581123218872;
 Fri, 07 Feb 2020 16:53:38 -0800 (PST)
X-Google-Smtp-Source: APXvYqzfBGlw4CUmZPsPxFOLtL7frnrx1mxODS7RRyVx/ZknrCPjZQV1DWO/22HCN4/PJDeBYQRbmw==
X-Received: by 2002:ac8:6ec5:: with SMTP id f5mr969400qtv.137.1581123218590;
 Fri, 07 Feb 2020 16:53:38 -0800 (PST)
Received: from xz-x1 ([2607:9880:19c8:32::2])
 by smtp.gmail.com with ESMTPSA id m27sm2307107qta.21.2020.02.07.16.53.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 07 Feb 2020 16:53:37 -0800 (PST)
Date: Fri, 7 Feb 2020 19:53:34 -0500
From: Peter Xu <peterx@redhat.com>
To: Sean Christopherson <sean.j.christopherson@intel.com>
Subject: Re: [PATCH v5 15/19] KVM: Provide common implementation for generic
 dirty log functions
Message-ID: <20200208005334.GB823968@xz-x1>
References: <20200121223157.15263-1-sean.j.christopherson@intel.com>
 <20200121223157.15263-16-sean.j.christopherson@intel.com>
 <20200206200200.GC700495@xz-x1>
 <20200206212120.GF13067@linux.intel.com>
 <20200206214106.GG700495@xz-x1>
 <20200207194532.GK2401@linux.intel.com>
 <20200208001832.GA823968@xz-x1>
 <20200208004233.GA15581@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <20200208004233.GA15581@linux.intel.com>
X-MC-Unique: 1xR6zOKHNcKh3dqN_Bk5WA-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_165346_782619_1DC12AE0 
X-CRM114-Status: GOOD (  28.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Philippe =?utf-8?Q?Mathieu-Daud=C3=A9?= <f4bug@amsat.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 07, 2020 at 04:42:33PM -0800, Sean Christopherson wrote:
> On Fri, Feb 07, 2020 at 07:18:32PM -0500, Peter Xu wrote:
> > On Fri, Feb 07, 2020 at 11:45:32AM -0800, Sean Christopherson wrote:
> > > +Vitaly for HyperV
> > > 
> > > On Thu, Feb 06, 2020 at 04:41:06PM -0500, Peter Xu wrote:
> > > > On Thu, Feb 06, 2020 at 01:21:20PM -0800, Sean Christopherson wrote:
> > > > > On Thu, Feb 06, 2020 at 03:02:00PM -0500, Peter Xu wrote:
> > > > > > But that matters to this patch because if MIPS can use
> > > > > > kvm_flush_remote_tlbs(), then we probably don't need this
> > > > > > arch-specific hook any more and we can directly call
> > > > > > kvm_flush_remote_tlbs() after sync dirty log when flush==true.
> > > > > 
> > > > > Ya, the asid_flush_mask in kvm_vz_flush_shadow_all() is the only thing
> > > > > that prevents calling kvm_flush_remote_tlbs() directly, but I have no
> > > > > clue as to the important of that code.
> > > > 
> > > > As said above I think the x86 lockdep is really not necessary, then
> > > > considering MIPS could be the only one that will use the new hook
> > > > introduced in this patch...  Shall we figure that out first?
> > > 
> > > So I prepped a follow-up patch to make kvm_arch_dirty_log_tlb_flush() a
> > > MIPS-only hook and use kvm_flush_remote_tlbs() directly for arm and x86,
> > > but then I realized x86 *has* a hook to do a precise remote TLB flush.
> > > There's even an existing kvm_flush_remote_tlbs_with_address() call on a
> > > memslot, i.e. this exact scenario.  So arguably, x86 should be using the
> > > more precise flush and should keep kvm_arch_dirty_log_tlb_flush().
> > > 
> > > But, the hook is only used when KVM is running as an L1 on top of HyperV,
> > > and I assume dirty logging isn't used much, if at all, for L1 KVM on
> > > HyperV?
> > > 
> > > I see three options:
> > > 
> > >   1. Make kvm_arch_dirty_log_tlb_flush() MIPS-only and call
> > >      kvm_flush_remote_tlbs() directly for arm and x86.  Add comments to
> > >      explain when an arch should implement kvm_arch_dirty_log_tlb_flush().
> > > 
> > >   2. Change x86 to use kvm_flush_remote_tlbs_with_address() when flushing
> > >      a memslot after the dirty log is grabbed by userspace.
> > > 
> > >   3. Keep the resulting code as is, but add a comment in x86's
> > >      kvm_arch_dirty_log_tlb_flush() to explain why it uses
> > >      kvm_flush_remote_tlbs() instead of the with_address() variant.
> > > 
> > > I strongly prefer to (2) or (3), but I'll defer to Vitaly as to which of
> > > those is preferable.
> > > 
> > > I don't like (1) because (a) it requires more lines code (well comments),
> > > to explain why kvm_flush_remote_tlbs() is the default, and (b) it would
> > > require even more comments, which would be x86-specific in generic KVM,
> > > to explain why x86 doesn't use its with_address() flush, or we'd lost that
> > > info altogether.
> > > 
> > 
> > I proposed the 4th solution here:
> > 
> > https://lore.kernel.org/kvm/20200207223520.735523-1-peterx@redhat.com/
> > 
> > I'm not sure whether that's acceptable, but if it can, then we can
> > drop the kvm_arch_dirty_log_tlb_flush() hook, or even move on to
> > per-slot tlb flushing.
> 
> This effectively is per-slot TLB flushing, it just has a different name.
> I.e. s/kvm_arch_dirty_log_tlb_flush/kvm_arch_flush_remote_tlbs_memslot.
> I'm not opposed to that name change.  And on second and third glance, I
> probably prefer it.  That would more or less follow the naming of
> kvm_arch_flush_shadow_all() and kvm_arch_flush_shadow_memslot().

Note that the major point of the above patchset is not about doing tlb
flush per-memslot or globally.  It's more about whether we can provide
a common entrance for TLB flushing.  Say, after that series, we should
be able to flush TLB on all archs (majorly, including MIPS) as:

  kvm_flush_remote_tlbs(kvm);

And with the same idea we can also introduce the ranged version.

> 
> I don't want to go straight to kvm_arch_flush_remote_tlb_with_address()
> because that loses the important distinction (on x86) that slots_lock is
> expected to be held.

Sorry I'm still puzzled on why that lockdep is so important and
special for x86...  For example, what if we move that lockdep to the
callers of the kvm_arch_dirty_log_tlb_flush() calls so it protects
even more arch (where we do get/clear dirty log)?  IMHO the callers
must be with the slots_lock held anyways no matter for x86 or not.

Thanks,

-- 
Peter Xu


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
