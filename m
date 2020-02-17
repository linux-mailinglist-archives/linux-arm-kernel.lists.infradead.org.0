Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EAC2161657
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 16:40:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6yqMgq3DgQ4VK3RlF2oMdR246SErgDmU72qKe4wTu9M=; b=IPczRwB1v/YXku
	z73PEXEfsMH959XiVWDzkmfDhdG7vcoyQQKIzKhhxMTr/k+ztb2OoCLb0tG0rKKAZ01SDTyCtuA5h
	NvKEFSHQ+g1HML6t52FPJ/hidkAkquHdzD9MOelUUxn04cM+6Ct1H7fnL3P5dQxZnKIKsc2IbTjSO
	33PbD4aivwMihUijO3eSm3csL9J1s/xPEsBiyp19/jKUSvSV8dXs4qt4pRNTAOndU8pkQxo9Cu0dz
	mINMm37n4dedW8pjWztmtichE/sWqFwUPjpbKAv9RxcX+jtgMiI3zguAKAvYXIk4BChhssCwLi985
	1xvKfKMQjPDPfhzIqd6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3iV5-0000ku-TB; Mon, 17 Feb 2020 15:39:59 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3iUw-0000k1-Ar
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 15:39:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1581953989;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=TEWT6d8CEdHLU8V2c4zgJc2jaYOgBLLKpm1DTFfFh8I=;
 b=fK4hlUvBfPxure9WdemaM+zpCd5A+6cTXAiqtcGJY4qKGqTgCi268k9lhYT6ZkteKXqhmX
 L4N7Zn2/bIgXoXbBHyoJcVmmtgQ8d2721R2Z/0aeFJCRSPRbzV2YAjgO3beHnbwUJp92J1
 ghGxXHzSZzNL7ulliohXFwQXNW6xJW0=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-135-xQyYr4BQOjmyrH-A0lNrWw-1; Mon, 17 Feb 2020 10:39:42 -0500
Received: by mail-wr1-f70.google.com with SMTP id d15so9131757wru.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Feb 2020 07:39:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=jKEw/9LD4IB/V5V6URoGZRoG+mly6ja1ybw5s5Rs0Gw=;
 b=ngiR/KHSXxfRM0zvDxpDrzT2UWIgYjJB/IKYwF2Yp2HeGVGNMUFFSfrNoCkwMR/pcS
 yHmTwLEXumHlo4WECo6ZKSNGVMgdSaTLSrXGiS6DL6hsCYskwD86bCA/uw8T9CMQWXOg
 +S3mSrzXAFCnzfne3buUnCGtCcLGiM/SRGl3JIYE2SXQz+UCCDVO1VeRqlbvLcJAR842
 KP0l0qUYz6WpAlwytZ+L9PfAnZvR8pS7MsUaKP5Lqh2gR/09ky24fF6wCWQmnU8nQdMY
 H5H+vZCN0y0NpgngYg9DnecwnK174UHOWRj17YbLvyHAPWchF1UmiO4HNEB/hHGcKOoV
 X4Xg==
X-Gm-Message-State: APjAAAVEBneIfRVMLiPTiRUmBcmkusG/1Lnk+M32DlNK6voiHh9RpoZ0
 jv8prXlBDfPxzE05ltIlAAvLjMzjVqg3xzJB5mx1l1PLuXlKYKLKhpOSOFs4NCGo/iKVyVG8+Ce
 AUStdvj8/MWUsdFFrtZPml/hjCJXHf3F5e7s=
X-Received: by 2002:a1c:f009:: with SMTP id a9mr22758262wmb.73.1581953981722; 
 Mon, 17 Feb 2020 07:39:41 -0800 (PST)
X-Google-Smtp-Source: APXvYqw3F+p2TnTlGe9QutjrXQ9bs2FRZYLz6SXUgX3NY1Zh+sHedC61NY/0mD2N7zoHzN71kac2NA==
X-Received: by 2002:a1c:f009:: with SMTP id a9mr22758229wmb.73.1581953981434; 
 Mon, 17 Feb 2020 07:39:41 -0800 (PST)
Received: from vitty.brq.redhat.com (nat-pool-brq-t.redhat.com.
 [213.175.37.10])
 by smtp.gmail.com with ESMTPSA id x10sm1402119wrv.60.2020.02.17.07.39.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Feb 2020 07:39:40 -0800 (PST)
From: Vitaly Kuznetsov <vkuznets@redhat.com>
To: Sean Christopherson <sean.j.christopherson@intel.com>,
 Peter Xu <peterx@redhat.com>
Subject: Re: [PATCH v5 15/19] KVM: Provide common implementation for generic
 dirty log functions
In-Reply-To: <20200208012938.GC15581@linux.intel.com>
References: <20200121223157.15263-1-sean.j.christopherson@intel.com>
 <20200121223157.15263-16-sean.j.christopherson@intel.com>
 <20200206200200.GC700495@xz-x1> <20200206212120.GF13067@linux.intel.com>
 <20200206214106.GG700495@xz-x1> <20200207194532.GK2401@linux.intel.com>
 <20200208001832.GA823968@xz-x1> <20200208004233.GA15581@linux.intel.com>
 <20200208005334.GB823968@xz-x1> <20200208012938.GC15581@linux.intel.com>
Date: Mon, 17 Feb 2020 16:39:39 +0100
Message-ID: <87sgj99q9w.fsf@vitty.brq.redhat.com>
MIME-Version: 1.0
X-MC-Unique: xQyYr4BQOjmyrH-A0lNrWw-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_073950_454491_FD8FF964 
X-CRM114-Status: GOOD (  34.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Christoffer Dall <christoffer.dall@arm.com>,
 Wanpeng Li <wanpengli@tencent.com>, Janosch Frank <frankja@linux.ibm.com>,
 kvm@vger.kernel.org, David Hildenbrand <david@redhat.com>,
 Marc Zyngier <maz@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 Cornelia Huck <cohuck@redhat.com>, linux-mips@vger.kernel.org,
 kvm-ppc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Philippe =?utf-8?Q?Mathieu-Daud=C3=A9?= <f4bug@amsat.org>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Paolo Bonzini <pbonzini@redhat.com>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>,
 Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Sean Christopherson <sean.j.christopherson@intel.com> writes:

> On Fri, Feb 07, 2020 at 07:53:34PM -0500, Peter Xu wrote:
>> On Fri, Feb 07, 2020 at 04:42:33PM -0800, Sean Christopherson wrote:
>> > On Fri, Feb 07, 2020 at 07:18:32PM -0500, Peter Xu wrote:
>> > > On Fri, Feb 07, 2020 at 11:45:32AM -0800, Sean Christopherson wrote:
>> > > > +Vitaly for HyperV
>> > > > 
>> > > > On Thu, Feb 06, 2020 at 04:41:06PM -0500, Peter Xu wrote:
>> > > > > On Thu, Feb 06, 2020 at 01:21:20PM -0800, Sean Christopherson wrote:
>> > > > > > On Thu, Feb 06, 2020 at 03:02:00PM -0500, Peter Xu wrote:
>> > > > > > > But that matters to this patch because if MIPS can use
>> > > > > > > kvm_flush_remote_tlbs(), then we probably don't need this
>> > > > > > > arch-specific hook any more and we can directly call
>> > > > > > > kvm_flush_remote_tlbs() after sync dirty log when flush==true.
>> > > > > > 
>> > > > > > Ya, the asid_flush_mask in kvm_vz_flush_shadow_all() is the only thing
>> > > > > > that prevents calling kvm_flush_remote_tlbs() directly, but I have no
>> > > > > > clue as to the important of that code.
>> > > > > 
>> > > > > As said above I think the x86 lockdep is really not necessary, then
>> > > > > considering MIPS could be the only one that will use the new hook
>> > > > > introduced in this patch...  Shall we figure that out first?
>> > > > 
>> > > > So I prepped a follow-up patch to make kvm_arch_dirty_log_tlb_flush() a
>> > > > MIPS-only hook and use kvm_flush_remote_tlbs() directly for arm and x86,
>> > > > but then I realized x86 *has* a hook to do a precise remote TLB flush.
>> > > > There's even an existing kvm_flush_remote_tlbs_with_address() call on a
>> > > > memslot, i.e. this exact scenario.  So arguably, x86 should be using the
>> > > > more precise flush and should keep kvm_arch_dirty_log_tlb_flush().
>> > > > 
>> > > > But, the hook is only used when KVM is running as an L1 on top of HyperV,
>> > > > and I assume dirty logging isn't used much, if at all, for L1 KVM on
>> > > > HyperV?
>> > > > 
>> > > > I see three options:
>> > > > 
>> > > >   1. Make kvm_arch_dirty_log_tlb_flush() MIPS-only and call
>> > > >      kvm_flush_remote_tlbs() directly for arm and x86.  Add comments to
>> > > >      explain when an arch should implement kvm_arch_dirty_log_tlb_flush().
>> > > > 
>> > > >   2. Change x86 to use kvm_flush_remote_tlbs_with_address() when flushing
>> > > >      a memslot after the dirty log is grabbed by userspace.
>> > > > 
>> > > >   3. Keep the resulting code as is, but add a comment in x86's
>> > > >      kvm_arch_dirty_log_tlb_flush() to explain why it uses
>> > > >      kvm_flush_remote_tlbs() instead of the with_address() variant.
>> > > > 
>> > > > I strongly prefer to (2) or (3), but I'll defer to Vitaly as to which of
>> > > > those is preferable.
>> > > > 
>> > > > I don't like (1) because (a) it requires more lines code (well comments),
>> > > > to explain why kvm_flush_remote_tlbs() is the default, and (b) it would
>> > > > require even more comments, which would be x86-specific in generic KVM,
>> > > > to explain why x86 doesn't use its with_address() flush, or we'd lost that
>> > > > info altogether.
>> > > > 
>> > > 
>> > > I proposed the 4th solution here:
>> > > 
>> > > https://lore.kernel.org/kvm/20200207223520.735523-1-peterx@redhat.com/
>> > > 
>> > > I'm not sure whether that's acceptable, but if it can, then we can
>> > > drop the kvm_arch_dirty_log_tlb_flush() hook, or even move on to
>> > > per-slot tlb flushing.
>> > 
>> > This effectively is per-slot TLB flushing, it just has a different name.
>> > I.e. s/kvm_arch_dirty_log_tlb_flush/kvm_arch_flush_remote_tlbs_memslot.
>> > I'm not opposed to that name change.  And on second and third glance, I
>> > probably prefer it.  That would more or less follow the naming of
>> > kvm_arch_flush_shadow_all() and kvm_arch_flush_shadow_memslot().
>> 
>> Note that the major point of the above patchset is not about doing tlb
>> flush per-memslot or globally.  It's more about whether we can provide
>> a common entrance for TLB flushing.  Say, after that series, we should
>> be able to flush TLB on all archs (majorly, including MIPS) as:
>> 
>>   kvm_flush_remote_tlbs(kvm);
>> 
>> And with the same idea we can also introduce the ranged version.
>> 
>> > 
>> > I don't want to go straight to kvm_arch_flush_remote_tlb_with_address()
>> > because that loses the important distinction (on x86) that slots_lock is
>> > expected to be held.
>> 
>> Sorry I'm still puzzled on why that lockdep is so important and
>> special for x86...  For example, what if we move that lockdep to the
>> callers of the kvm_arch_dirty_log_tlb_flush() calls so it protects
>> even more arch (where we do get/clear dirty log)?  IMHO the callers
>> must be with the slots_lock held anyways no matter for x86 or not.
>
>
> Following the breadcrumbs leads to the comment in
> kvm_mmu_slot_remove_write_access(), which says:
>
>         /*
>          * kvm_mmu_slot_remove_write_access() and kvm_vm_ioctl_get_dirty_log()
>          * which do tlb flush out of mmu-lock should be serialized by
>          * kvm->slots_lock otherwise tlb flush would be missed.
>          */
>
> I.e. write-protecting a memslot and grabbing the dirty log for the memslot
> need to be serialized.  It's quite obvious *now* that get_dirty_log() holds
> slots_lock, but the purpose of lockdep assertions isn't just to verify the
> current functionality, it's to help ensure the correctness for future code
> and to document assumptions in the code.
>
> Digging deeper, there are four functions, all related to dirty logging, in
> the x86 mmu that basically open code what x86's
> kvm_arch_flush_remote_tlbs_memslot() would look like if it uses the range
> based flushing.
>
> Unless it's functionally incorrect (Vitaly?), going with option (2) and
> naming the hook kvm_arch_flush_remote_tlbs_memslot() seems like the obvious
> choice, e.g. the final cleanup gives this diff stat:

(I apologize again for not replying in time)

I think this is a valid approach and your option (2) would also be my
choice. I also don't think there's going to be a problem when (if)
Hyper-V adds support for PML (eVMCSv2?).

>
>  arch/x86/kvm/mmu/mmu.c | 34 +++++++++-------------------------
>  1 file changed, 9 insertions(+), 25 deletions(-)
>

Looks nice :-)

-- 
Vitaly


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
