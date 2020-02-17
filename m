Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ED0816164F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 16:37:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rVPbTeh6UWNAc3/I9Z60SCSkPhGAs776NKf83tmG7qQ=; b=GRYx9RNz68xawX
	cVK5WidCijGJjioW8gN76t4dNPS/ImP9Muv6Wt4gDMg4MsSz+rMDyveb4PWr6oAV7DO8saAGATus0
	vPkZQbh0eCcyXL+SS3v+Ke+vOQMRJFCRAFT34FkIjIsIdA/LF4tTpzEObqJssTZVx5y8iF6lWJTsN
	esWqkkMqz++lE+GK6qJhLAY6wPs/hRrLnea/uYySBMTc9Iys5ZXv2zOCnoJbehoB1I2yuSIz+7KRT
	2IonvtgoBzgCkjbm2jbUFUE+X6l9EZqgQgUhUivNNn7VkJwMwLUn7gC7QMl15cGZ5Q8tul+de9H9m
	SphtWnZfxf12DhRET7bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3iSk-00009L-5S; Mon, 17 Feb 2020 15:37:34 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3iSR-00008p-W0
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 15:37:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1581953833;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=f9k/lECSipAyKMEJyCYwRMAHJ7XyYrMgRJSZNNqcEog=;
 b=ea68NDwwfc6RJ3kZQmerjNX7DZTaJR7RMGhRQMK1VCgCy+Pc4AxLYQ3WHITRBbINDhRbpt
 nmI2cVmB2R44FFkgCh2MXfjmHuCj57Y5+mKk+sEk/sFnCHVNbWA0m1jGye99CykR4WSRM3
 J7YZjikvqrwk+xdr/tQU8DQzwxcfvJs=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-286-pE6hmKpeM5ui-dqsYDZ05w-1; Mon, 17 Feb 2020 10:35:08 -0500
Received: by mail-wr1-f70.google.com with SMTP id l1so9163130wrt.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Feb 2020 07:35:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=I94s+/OW2nmFtGVziJ+53lmgRDQEQNRHpvcvNRvPjFg=;
 b=gC4Lk7tla44XchI12joi2R7jcb57Mo1N7r41QIclKt7ro2h5v1dNL8+aIV2ttv7Y4t
 575837bPnSTiSgjFyAN6ECOhKZ0VtBWR51I6JTkN+73ihEpx3r+lQcLcmhlOi6WLyt1x
 X2PkMoEfvHBWCUaurSRieAfHj0E/+iuAFxzvEzk5qxalUb/inx0X13b3bQabfPYn3IHl
 eobYX+Q1ZsAnbGHFU+8zqhHiGUVUImcLRntVZpYav+LSsydi+z7zHAO9lpgga2IAjQVN
 V+Jt1q78QK2iEdLHUjd9TLbrRl3guvkMBra4RRv6DUNZNH9Kox7hIBpuG730F6YSzoAe
 EI3A==
X-Gm-Message-State: APjAAAXGkuS2z+jd4EEluFn4HUI1/1qs8RxQlOZ7fbRjBcG560BKWZXk
 virzAfb5+lgskQYZ3eIdiZ2MFXVOOyOsMofthj998eVhVWONzSDpTvhvGi++fH2cil8xo9uU87p
 ARxA5HuNUSoXXdHDVYMQMFBq99VSGCZyL5SU=
X-Received: by 2002:a7b:cd8e:: with SMTP id y14mr22883693wmj.150.1581953707734; 
 Mon, 17 Feb 2020 07:35:07 -0800 (PST)
X-Google-Smtp-Source: APXvYqw70CrrrSfMwVWl7qnn5bAkrGx2tWvnt4qyiyI0/zrMUKDzlnUG9J1tN9btzikV0/JwRnl8xw==
X-Received: by 2002:a7b:cd8e:: with SMTP id y14mr22883657wmj.150.1581953707447; 
 Mon, 17 Feb 2020 07:35:07 -0800 (PST)
Received: from vitty.brq.redhat.com (nat-pool-brq-t.redhat.com.
 [213.175.37.10])
 by smtp.gmail.com with ESMTPSA id y8sm1018221wma.10.2020.02.17.07.35.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Feb 2020 07:35:06 -0800 (PST)
From: Vitaly Kuznetsov <vkuznets@redhat.com>
To: Sean Christopherson <sean.j.christopherson@intel.com>,
 Peter Xu <peterx@redhat.com>
Subject: Re: [PATCH v5 15/19] KVM: Provide common implementation for generic
 dirty log functions
In-Reply-To: <20200207194532.GK2401@linux.intel.com>
References: <20200121223157.15263-1-sean.j.christopherson@intel.com>
 <20200121223157.15263-16-sean.j.christopherson@intel.com>
 <20200206200200.GC700495@xz-x1> <20200206212120.GF13067@linux.intel.com>
 <20200206214106.GG700495@xz-x1> <20200207194532.GK2401@linux.intel.com>
Date: Mon, 17 Feb 2020 16:35:05 +0100
Message-ID: <87v9o59qhi.fsf@vitty.brq.redhat.com>
MIME-Version: 1.0
X-MC-Unique: pE6hmKpeM5ui-dqsYDZ05w-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_073716_200123_920B962D 
X-CRM114-Status: GOOD (  21.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
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

> +Vitaly for HyperV
>
> On Thu, Feb 06, 2020 at 04:41:06PM -0500, Peter Xu wrote:
>> On Thu, Feb 06, 2020 at 01:21:20PM -0800, Sean Christopherson wrote:
>> > On Thu, Feb 06, 2020 at 03:02:00PM -0500, Peter Xu wrote:
>> > > But that matters to this patch because if MIPS can use
>> > > kvm_flush_remote_tlbs(), then we probably don't need this
>> > > arch-specific hook any more and we can directly call
>> > > kvm_flush_remote_tlbs() after sync dirty log when flush==true.
>> > 
>> > Ya, the asid_flush_mask in kvm_vz_flush_shadow_all() is the only thing
>> > that prevents calling kvm_flush_remote_tlbs() directly, but I have no
>> > clue as to the important of that code.
>> 
>> As said above I think the x86 lockdep is really not necessary, then
>> considering MIPS could be the only one that will use the new hook
>> introduced in this patch...  Shall we figure that out first?
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

(Sorry for the delayed reply, was traveling last week)

When KVM runs as an L1 on top of Hyper-V it uses eVMCS by default and
eVMCSv1 doesn't support PML. I've also just checked Hyper-V 2019 and it
hides SECONDARY_EXEC_ENABLE_PML from guests (this was expected).

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

I'd vote for (2): while this will effectively be kvm_flush_remote_tlbs()
for now, we may think of something smarter in the future (e.g. PV
interface for KVM-on-KVM).

>
> I don't like (1) because (a) it requires more lines code (well comments),
> to explain why kvm_flush_remote_tlbs() is the default, and (b) it would
> require even more comments, which would be x86-specific in generic KVM,
> to explain why x86 doesn't use its with_address() flush, or we'd lost that
> info altogether.
>

-- 
Vitaly


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
