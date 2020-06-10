Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17C011F5E05
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 23:59:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AC3Nr5gTMBEz+9M/QPXAsjsrhfIljuaT5aeASuanbM0=; b=Xc3cPOGcYnukeF
	2LLWlks8OoPpprcMlY6sNB6ewIbuOF14p2Cbhg85cAYd2OWXK6RowAfDYY/PxbxOPFMtDz/l+WeSq
	pNC+bx5P9qdgV6O3PxmpDYOXaOx0MRmPIC0/LSodNGRbj0ExQfuJY6yDo5F9W4vkxoFPnY4/Yuc/R
	P7D5gaq/d51zIB9NuVJzsv7FPGIKmw1SO9tGuSKWUIgkk5KW15AQ7WR7g3vshorZjDmerjCYzCrRw
	JnIM28mgA7n57ZjFdyvkP/VmiM0dTmzFYHnBkWhF9W8HPSqcTik5Q1kyd/DMOGIpter4UxktMwYRg
	ymnQqZYLLF8XfEKpLI8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj8kE-0007cS-UR; Wed, 10 Jun 2020 21:58:50 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj8k6-0007b3-Dd
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 21:58:43 +0000
Received: by mail-vs1-xe42.google.com with SMTP id g129so2242535vsc.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 14:58:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Q55NYjy9IRmkKRciGyl293b435BFJrXWdUL8I09kIMU=;
 b=W6J9UkKFqBOh6IZVBDPOthBCXab0QZziKeEa8pn13Vr5J8K7h1X58Xb6OmuCCjEhOb
 92gem+OhVNk7kSF2F0BUdLkFKKg5ROVVbpsqxDgCpafDITiIZamI2Vry6Aog71jIZo8h
 NiD26bt+GKRoofdVOB/75RW7uwmApZl8QFmK1s6MT//oW9G+svD3zlytHSextcXbDuOv
 y9pQW8NIgzMZzDeYq/95xGCrFZR1LNU3HnOc4zwE/u+v8axp4rGvGkkNauOwDQCqQjf9
 2j8VU13YtK2Z4G+LXtKQblPwmmZ0YbNkS/g2LzBxhn7LOE6G4a9uJFutNjZyOutkrtp+
 BPZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Q55NYjy9IRmkKRciGyl293b435BFJrXWdUL8I09kIMU=;
 b=jgCz0ujUGFYSAQcB7q/m2F5I0RNfDfiU7Y/fSmiKZJYQUzosNNKzjXOCfURnOkWV6Q
 s9eUYCM93MTt/iKUAnjTmROMimAvOr4W7hEGWrvG0oah+YXPpjnza/2lUenk5fhhGQpx
 saURkzbJTG3XOZou3e5/dYBW8bQgpxdcnByJWfRK/zehBsXIsB78ZQ0f4u6C5gbxrzAe
 mlO8OO9o28xiPrYoklk06mlbjepvyc/F72SOZfrkjHB5/uArBQajjlvttDf4mo1bFtQs
 Sk6FsilXXlIf54r92XEnC0lwqBfXlcwX85stNCH/dWsp5LCf2JYSsdVE+POEACOTZN/7
 54Xg==
X-Gm-Message-State: AOAM5311SR0ooukBLfa7cLmjs+XXQM9kPcVYoSKHJeqkF9YO/wJT/Bkf
 Zp3lmzJBZ1imDFIGHGnZ10y+X2Lnr1AYx7A/tZrhRQ==
X-Google-Smtp-Source: ABdhPJw6lF5ItCEwInvZaqrMjCHdyoCSi+CaoOEbwdfTwpuV0Gz1ZwsXr/d3YOGarQap09er1s6bIDnIsVVF9gciZiY=
X-Received: by 2002:a67:f982:: with SMTP id b2mr4385200vsq.202.1591826312742; 
 Wed, 10 Jun 2020 14:58:32 -0700 (PDT)
MIME-Version: 1.0
References: <20200605213853.14959-1-sean.j.christopherson@intel.com>
 <20200605213853.14959-15-sean.j.christopherson@intel.com>
 <CANgfPd_v31zC5-mKsT14hd7W=X2Pvg3RBPjn2d4tFSChdbsr3A@mail.gmail.com>
In-Reply-To: <CANgfPd_v31zC5-mKsT14hd7W=X2Pvg3RBPjn2d4tFSChdbsr3A@mail.gmail.com>
From: Ben Gardon <bgardon@google.com>
Date: Wed, 10 Jun 2020 14:58:21 -0700
Message-ID: <CANgfPd-iH8AShSPPJiaDCxV1H76kfpTOQMZSMP_+nP3LoXbYBg@mail.gmail.com>
Subject: Re: [PATCH 14/21] KVM: Move x86's version of struct
 kvm_mmu_memory_cache to common code
To: Sean Christopherson <sean.j.christopherson@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_145842_461374_E161AAC4 
X-CRM114-Status: GOOD (  22.41  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Christoffer Dall <christoffer.dall@arm.com>,
 Wanpeng Li <wanpengli@tencent.com>, kvm@vger.kernel.org,
 David Hildenbrand <david@redhat.com>, linux-kernel@vger.kernel.org,
 Paul Mackerras <paulus@ozlabs.org>, Claudio Imbrenda <imbrenda@linux.ibm.com>,
 kvmarm@lists.cs.columbia.edu, Janosch Frank <frankja@linux.ibm.com>,
 Marc Zyngier <maz@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Junaid Shahid <junaids@google.com>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 kvm-ppc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jim Mattson <jmattson@google.com>, Cornelia Huck <cohuck@redhat.com>,
 Peter Shier <pshier@google.com>, linux-mips@vger.kernel.org,
 James Morse <james.morse@arm.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Vitaly Kuznetsov <vkuznets@redhat.com>, Peter Feiner <pfeiner@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 10, 2020 at 12:01 PM Ben Gardon <bgardon@google.com> wrote:
>
> On Fri, Jun 5, 2020 at 2:39 PM Sean Christopherson
> <sean.j.christopherson@intel.com> wrote:
> >
> > Move x86's 'struct kvm_mmu_memory_cache' to common code in anticipation
> > of moving the entire x86 implementation code to common KVM and reusing
> > it for arm64 and MIPS.  Add a new architecture specific asm/kvm_types.h
> > to control the existence and parameters of the struct.  The new header
> > is needed to avoid a chicken-and-egg problem with asm/kvm_host.h as all
> > architectures define instances of the struct in their vCPU structs.
> >
> > Suggested-by: Christoffer Dall <christoffer.dall@arm.com>
> > Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
> Reviewed-by: Ben Gardon <bgardon@google.com>
> > ---
> >  arch/arm64/include/asm/kvm_types.h   |  6 ++++++
> >  arch/mips/include/asm/kvm_types.h    |  5 +++++
> >  arch/powerpc/include/asm/kvm_types.h |  5 +++++
> >  arch/s390/include/asm/kvm_types.h    |  5 +++++
> >  arch/x86/include/asm/kvm_host.h      | 13 -------------
> >  arch/x86/include/asm/kvm_types.h     |  7 +++++++
> >  include/linux/kvm_types.h            | 19 +++++++++++++++++++
> >  7 files changed, 47 insertions(+), 13 deletions(-)
> >  create mode 100644 arch/arm64/include/asm/kvm_types.h
> >  create mode 100644 arch/mips/include/asm/kvm_types.h
> >  create mode 100644 arch/powerpc/include/asm/kvm_types.h
> >  create mode 100644 arch/s390/include/asm/kvm_types.h
> >  create mode 100644 arch/x86/include/asm/kvm_types.h
> >
> > diff --git a/arch/arm64/include/asm/kvm_types.h b/arch/arm64/include/asm/kvm_types.h
> > new file mode 100644
> > index 000000000000..d0987007d581
> > --- /dev/null
> > +++ b/arch/arm64/include/asm/kvm_types.h
> > @@ -0,0 +1,6 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +#ifndef _ASM_ARM64_KVM_TYPES_H
> > +#define _ASM_ARM64_KVM_TYPES_H
> > +
> > +#endif /* _ASM_ARM64_KVM_TYPES_H */
> > +
> > diff --git a/arch/mips/include/asm/kvm_types.h b/arch/mips/include/asm/kvm_types.h
> > new file mode 100644
> > index 000000000000..5efeb32a5926
> > --- /dev/null
> > +++ b/arch/mips/include/asm/kvm_types.h
> > @@ -0,0 +1,5 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +#ifndef _ASM_MIPS_KVM_TYPES_H
> > +#define _ASM_MIPS_KVM_TYPES_H
> > +
> > +#endif /* _ASM_MIPS_KVM_TYPES_H */
> > diff --git a/arch/powerpc/include/asm/kvm_types.h b/arch/powerpc/include/asm/kvm_types.h
> > new file mode 100644
> > index 000000000000..f627eceaa314
> > --- /dev/null
> > +++ b/arch/powerpc/include/asm/kvm_types.h
> > @@ -0,0 +1,5 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +#ifndef _ASM_POWERPC_KVM_TYPES_H
> > +#define _ASM_POWERPC_KVM_TYPES_H
> > +
> > +#endif /* _ASM_POWERPC_KVM_TYPES_H */
> > diff --git a/arch/s390/include/asm/kvm_types.h b/arch/s390/include/asm/kvm_types.h
> > new file mode 100644
> > index 000000000000..b66a81f8a354
> > --- /dev/null
> > +++ b/arch/s390/include/asm/kvm_types.h
> > @@ -0,0 +1,5 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +#ifndef _ASM_S390_KVM_TYPES_H
> > +#define _ASM_S390_KVM_TYPES_H
> > +
> > +#endif /* _ASM_S390_KVM_TYPES_H */
> > diff --git a/arch/x86/include/asm/kvm_host.h b/arch/x86/include/asm/kvm_host.h
> > index fb99e6776e27..8e8fea13b6c7 100644
> > --- a/arch/x86/include/asm/kvm_host.h
> > +++ b/arch/x86/include/asm/kvm_host.h
> > @@ -193,8 +193,6 @@ struct x86_exception;
> >  enum x86_intercept;
> >  enum x86_intercept_stage;
> >
> > -#define KVM_NR_MEM_OBJS 40
> > -
Oops I didn't catch this on my first read through, but in patch 16 in
this series I see some references to KVM_NR_MEM_OBJS being removed. As
a result I would not expect this patch to build. Other references to
this value should probably replaced with
KVM_ARCH_NR_OBJS_PER_MEMORY_CACHE as well.
> >  #define KVM_NR_DB_REGS 4
> >
> >  #define DR6_BD         (1 << 13)
> > @@ -245,17 +243,6 @@ enum x86_intercept_stage;
> >
> >  struct kvm_kernel_irq_routing_entry;
> >
> > -/*
> > - * We don't want allocation failures within the mmu code, so we preallocate
> > - * enough memory for a single page fault in a cache.
> > - */
> > -struct kvm_mmu_memory_cache {
> > -       int nobjs;
> > -       gfp_t gfp_zero;
> > -       struct kmem_cache *kmem_cache;
> > -       void *objects[KVM_NR_MEM_OBJS];
> > -};
> > -
> >  /*
> >   * the pages used as guest page table on soft mmu are tracked by
> >   * kvm_memory_slot.arch.gfn_track which is 16 bits, so the role bits used
> > diff --git a/arch/x86/include/asm/kvm_types.h b/arch/x86/include/asm/kvm_types.h
> > new file mode 100644
> > index 000000000000..08f1b57d3b62
> > --- /dev/null
> > +++ b/arch/x86/include/asm/kvm_types.h
> > @@ -0,0 +1,7 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +#ifndef _ASM_X86_KVM_TYPES_H
> > +#define _ASM_X86_KVM_TYPES_H
> > +
> > +#define KVM_ARCH_NR_OBJS_PER_MEMORY_CACHE 40
> > +
> > +#endif /* _ASM_X86_KVM_TYPES_H */
> > diff --git a/include/linux/kvm_types.h b/include/linux/kvm_types.h
> > index 68e84cf42a3f..a7580f69dda0 100644
> > --- a/include/linux/kvm_types.h
> > +++ b/include/linux/kvm_types.h
> > @@ -20,6 +20,8 @@ enum kvm_mr_change;
> >
> >  #include <linux/types.h>
> >
> > +#include <asm/kvm_types.h>
> > +
> >  /*
> >   * Address types:
> >   *
> > @@ -58,4 +60,21 @@ struct gfn_to_pfn_cache {
> >         bool dirty;
> >  };
> >
> > +#ifdef KVM_ARCH_NR_OBJS_PER_MEMORY_CACHE
> > +/*
> > + * Memory caches are used to preallocate memory ahead of various MMU flows,
> > + * e.g. page fault handlers.  Gracefully handling allocation failures deep in
> > + * MMU flows is problematic, as is triggering reclaim, I/O, etc... while
> > + * holding MMU locks.  Note, these caches act more like prefetch buffers than
> > + * classical caches, i.e. objects are not returned to the cache on being freed.
> > + */
> > +struct kvm_mmu_memory_cache {
> > +       int nobjs;
> > +       gfp_t gfp_zero;
> > +       struct kmem_cache *kmem_cache;
> > +       void *objects[KVM_ARCH_NR_OBJS_PER_MEMORY_CACHE];
> > +};
> > +#endif
> > +
> > +
> >  #endif /* __KVM_TYPES_H__ */
> > --
> > 2.26.0
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
