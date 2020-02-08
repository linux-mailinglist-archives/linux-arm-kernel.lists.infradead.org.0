Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E6FC1561E3
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Feb 2020 01:18:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cLzShH4jFVNxMRAw77D42Vn7pWqAD85rAjWDdgbIdP4=; b=cSABlPesF8dVmX
	PabhTJdyiDAnWgSUmyr9mYhG7Q9P6Y47p88cJj1gbOcAZCzNL3GSLiBq0n6efg1MZ1EPrxSKDoGwZ
	zlBcX2Yupweww6Igi9xorqdYbQXj62i9yI+NX5Y4QKSxWCyrt0yLgcXt/PRV8u4X/2tZ46Q3d4dDN
	Zb1vCTITDQrjcAbBwc4Mjbfs6EIFb5EVsytR5sISHKNxDK1hR+/PsFoocWMGIGMdCkjz48xGwTCjq
	KeZcBScxUK9+id6F4TuzMi+HMtE2MKnxfymGi99BQxLQkHHc2UrjatyJ21bo2KYLXi7BJoJ/4cuKQ
	/KpH8Iuoh5ljTTxdlf1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0Dpi-0000gT-MA; Sat, 08 Feb 2020 00:18:50 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0Dpb-0000f0-8P
 for linux-arm-kernel@lists.infradead.org; Sat, 08 Feb 2020 00:18:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1581121120;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=LFIEzo7uypY+04BO5xYReIB8V2LuQNl/7zA6bw0w6C4=;
 b=FqZm6gHuePYPH9N6IR5yfEFvBO7VpgYNT0Pb7ces+dDDhDtc+0sFZzO5UBYFUUbEHhv+jK
 dPgJlgP21RWB64ymQRIe/wAhywU8ERkcsULZET54AS6RAtyo8qEqTVx8C8cNgwzFEfqrpG
 nQc9aEYoW10s6XN3FC0uPslEhkgaHE8=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-141-Hk6vISYXMgypOHpERGk0Wg-1; Fri, 07 Feb 2020 19:18:37 -0500
Received: by mail-qk1-f199.google.com with SMTP id z64so626520qke.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Feb 2020 16:18:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=FliTqS6db2UW8mSq2D177P6p0LFTqK9NtxjpkxKtGhE=;
 b=NiBl5i+KXYWMFxBxGgsd1II+nVuZMV9E8jxajCvJN+rKh7n6NYKqgRx9uUngVqskbR
 yRw9aVbU861+KNn8mgMyEJQe1t4MHg30SGnvusLC7sSDg5kCS3yBuTrYipVkt1hOcF8D
 xGSJT8+bxSGiUfNegvz3UWcauFEqvRoNvopsR0nw99EdwfNntkmjum32/J7n6+RvUB6g
 U+I/pXSXyDbwi8dcyXUi9yn9XSbWtXh5mizru+TXxrYDDK0pqQR37dTT4cWE8hrgdH6q
 X0kYnKCjV9o0Im/fZt0HNte58lXl2RO4wMjHkbeiuR+eQfy37bcSfZwmeg8HgUkYG7LN
 iRkQ==
X-Gm-Message-State: APjAAAUxdbtygIoJ+KwPqzSeJIibnS0FPeZh5b9fWl1ktGQAuDf4pQIU
 I4Kbxko9+W4yO6V0F/CFEtIjaWzk3pA4thulRGretFpSB8GDbH9YULXQ5qtXXyqMlKXV3iJx+Hj
 yVL3s0nBksEz9NHaIHYr4yTna1nRIlj7vDf4=
X-Received: by 2002:a37:8cc:: with SMTP id 195mr1462260qki.456.1581121117032; 
 Fri, 07 Feb 2020 16:18:37 -0800 (PST)
X-Google-Smtp-Source: APXvYqzAkXLXCBlBGfr3jniMMbcCpWv44CMlkznbhHCioVsTu+8iTId/2cuSvhY/ok33KerrRsEvMw==
X-Received: by 2002:a37:8cc:: with SMTP id 195mr1462239qki.456.1581121116707; 
 Fri, 07 Feb 2020 16:18:36 -0800 (PST)
Received: from xz-x1 ([2607:9880:19c8:32::2])
 by smtp.gmail.com with ESMTPSA id n32sm2271790qtk.66.2020.02.07.16.18.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 07 Feb 2020 16:18:35 -0800 (PST)
Date: Fri, 7 Feb 2020 19:18:32 -0500
From: Peter Xu <peterx@redhat.com>
To: Sean Christopherson <sean.j.christopherson@intel.com>
Subject: Re: [PATCH v5 15/19] KVM: Provide common implementation for generic
 dirty log functions
Message-ID: <20200208001832.GA823968@xz-x1>
References: <20200121223157.15263-1-sean.j.christopherson@intel.com>
 <20200121223157.15263-16-sean.j.christopherson@intel.com>
 <20200206200200.GC700495@xz-x1>
 <20200206212120.GF13067@linux.intel.com>
 <20200206214106.GG700495@xz-x1>
 <20200207194532.GK2401@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <20200207194532.GK2401@linux.intel.com>
X-MC-Unique: Hk6vISYXMgypOHpERGk0Wg-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_161843_601676_24A1ED36 
X-CRM114-Status: GOOD (  22.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
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

On Fri, Feb 07, 2020 at 11:45:32AM -0800, Sean Christopherson wrote:
> +Vitaly for HyperV
> 
> On Thu, Feb 06, 2020 at 04:41:06PM -0500, Peter Xu wrote:
> > On Thu, Feb 06, 2020 at 01:21:20PM -0800, Sean Christopherson wrote:
> > > On Thu, Feb 06, 2020 at 03:02:00PM -0500, Peter Xu wrote:
> > > > But that matters to this patch because if MIPS can use
> > > > kvm_flush_remote_tlbs(), then we probably don't need this
> > > > arch-specific hook any more and we can directly call
> > > > kvm_flush_remote_tlbs() after sync dirty log when flush==true.
> > > 
> > > Ya, the asid_flush_mask in kvm_vz_flush_shadow_all() is the only thing
> > > that prevents calling kvm_flush_remote_tlbs() directly, but I have no
> > > clue as to the important of that code.
> > 
> > As said above I think the x86 lockdep is really not necessary, then
> > considering MIPS could be the only one that will use the new hook
> > introduced in this patch...  Shall we figure that out first?
> 
> So I prepped a follow-up patch to make kvm_arch_dirty_log_tlb_flush() a
> MIPS-only hook and use kvm_flush_remote_tlbs() directly for arm and x86,
> but then I realized x86 *has* a hook to do a precise remote TLB flush.
> There's even an existing kvm_flush_remote_tlbs_with_address() call on a
> memslot, i.e. this exact scenario.  So arguably, x86 should be using the
> more precise flush and should keep kvm_arch_dirty_log_tlb_flush().
> 
> But, the hook is only used when KVM is running as an L1 on top of HyperV,
> and I assume dirty logging isn't used much, if at all, for L1 KVM on
> HyperV?
> 
> I see three options:
> 
>   1. Make kvm_arch_dirty_log_tlb_flush() MIPS-only and call
>      kvm_flush_remote_tlbs() directly for arm and x86.  Add comments to
>      explain when an arch should implement kvm_arch_dirty_log_tlb_flush().
> 
>   2. Change x86 to use kvm_flush_remote_tlbs_with_address() when flushing
>      a memslot after the dirty log is grabbed by userspace.
> 
>   3. Keep the resulting code as is, but add a comment in x86's
>      kvm_arch_dirty_log_tlb_flush() to explain why it uses
>      kvm_flush_remote_tlbs() instead of the with_address() variant.
> 
> I strongly prefer to (2) or (3), but I'll defer to Vitaly as to which of
> those is preferable.
> 
> I don't like (1) because (a) it requires more lines code (well comments),
> to explain why kvm_flush_remote_tlbs() is the default, and (b) it would
> require even more comments, which would be x86-specific in generic KVM,
> to explain why x86 doesn't use its with_address() flush, or we'd lost that
> info altogether.
> 

I proposed the 4th solution here:

https://lore.kernel.org/kvm/20200207223520.735523-1-peterx@redhat.com/

I'm not sure whether that's acceptable, but if it can, then we can
drop the kvm_arch_dirty_log_tlb_flush() hook, or even move on to
per-slot tlb flushing.

Thanks,

-- 
Peter Xu


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
