Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCEEA1F6B9B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 17:51:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4f4BhgEPOhGzUj1yd99QhyaWAGzm9yCZ2eKFob6Zh4A=; b=H/qDN9+uOu8VMU4W6gZ5JaFBC
	h7++Fttw4kvIQbf3HzjNEcyzX+kMIHZ3uKoFqPU4ATHEc1wX3iBK3UHR7fvALVVUtZqPt2LNI8paQ
	pNQWfHpgwmEPSw4XjH63A5kvAPk9nUU/8m7YCXY4ubXfYvhiF+qBPzUdYaQWEWDRPHsHS9eFaCCZq
	TxBXGAsOy8fBijwY+qmAS+aptyMmcPY32p53wdC8fKSx9xJ0n6ssjORTqKiT2Mu/kkkoxwRAI0rJm
	OE2JtWU0LByZ3SkRMv1w/WY6KwiKCQOGdU1WTis3F7NT+aEwnENPqTQuBUfBjhBWUY+hM5I9BP6db
	1hLkqUgng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjPUd-0004Yr-D0; Thu, 11 Jun 2020 15:51:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjPUU-0004Y2-55
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 15:51:43 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8073D2075E;
 Thu, 11 Jun 2020 15:51:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591890701;
 bh=buouFtbooRy71XGHmBWmTOUevELIfu0pjfzSCKPq8pY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=bQbd4R8QZfbn7RGrBxQfn1ruYStXtOK6Z0q8MjEGMxIEzfjWZbv9wPvu4ao+MPfv8
 1J7TGdGcixpukgrpdY6nm/py23a0nU82XzHB+uJdHGeGlNwL3pBL6dyV251JqldMNo
 uWAaERT1/kzBgRGTtto5IPIqD+QhtGoVipYhyA0Q=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jjPUR-0029gk-Lg; Thu, 11 Jun 2020 16:51:40 +0100
MIME-Version: 1.0
Date: Thu, 11 Jun 2020 16:51:39 +0100
From: Marc Zyngier <maz@kernel.org>
To: Sean Christopherson <sean.j.christopherson@intel.com>
Subject: Re: [PATCH 17/21] KVM: arm64: Use common code's approach for
 __GFP_ZERO with memory caches
In-Reply-To: <20200611154359.GF29918@linux.intel.com>
References: <20200605213853.14959-1-sean.j.christopherson@intel.com>
 <20200605213853.14959-18-sean.j.christopherson@intel.com>
 <6cc08074c289cbea7b9c1deeaf18c63f@kernel.org>
 <20200611154359.GF29918@linux.intel.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <12ec535821111d503773d6f623047d27@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: sean.j.christopherson@intel.com, paulus@ozlabs.org,
 borntraeger@de.ibm.com, frankja@linux.ibm.com, pbonzini@redhat.com,
 james.morse@arm.com, julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com,
 david@redhat.com, cohuck@redhat.com, imbrenda@linux.ibm.com,
 vkuznets@redhat.com, wanpengli@tencent.com, jmattson@google.com,
 joro@8bytes.org, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, linux-mips@vger.kernel.org, kvm@vger.kernel.org,
 kvm-ppc@vger.kernel.org, linux-kernel@vger.kernel.org, pfeiner@google.com,
 pshier@google.com, junaids@google.com, bgardon@google.com,
 christoffer.dall@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_085142_235326_363DACF3 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Wanpeng Li <wanpengli@tencent.com>, kvm@vger.kernel.org,
 David Hildenbrand <david@redhat.com>, linux-kernel@vger.kernel.org,
 Paul Mackerras <paulus@ozlabs.org>, Ben Gardon <bgardon@google.com>,
 Claudio Imbrenda <imbrenda@linux.ibm.com>, kvmarm@lists.cs.columbia.edu,
 Janosch Frank <frankja@linux.ibm.com>, Joerg Roedel <joro@8bytes.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Junaid Shahid <junaids@google.com>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 kvm-ppc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jim Mattson <jmattson@google.com>, Cornelia Huck <cohuck@redhat.com>,
 Peter Shier <pshier@google.com>, linux-mips@vger.kernel.org,
 James Morse <james.morse@arm.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Vitaly Kuznetsov <vkuznets@redhat.com>, Peter Feiner <pfeiner@google.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-06-11 16:43, Sean Christopherson wrote:
> On Thu, Jun 11, 2020 at 08:59:05AM +0100, Marc Zyngier wrote:
>> >diff --git a/arch/arm64/kvm/mmu.c b/arch/arm64/kvm/mmu.c
>> >index 9398b66f8a87..688213ef34f0 100644
>> >--- a/arch/arm64/kvm/mmu.c
>> >+++ b/arch/arm64/kvm/mmu.c
>> >@@ -131,7 +131,8 @@ static int mmu_topup_memory_cache(struct
>> >kvm_mmu_memory_cache *cache, int min)
>> > 	if (cache->nobjs >= min)
>> > 		return 0;
>> > 	while (cache->nobjs < ARRAY_SIZE(cache->objects)) {
>> >-		page = (void *)__get_free_page(GFP_PGTABLE_USER);
>> >+		page = (void *)__get_free_page(GFP_KERNEL_ACCOUNT |
>> 
>> This is definitely a change in the way we account for guest
>> page tables allocation, although I find it bizarre that not
>> all architectures account for it the same way.
> 
> It's not intended to be a functional change, i.e. the allocations 
> should
> still be accounted:
> 
>   #define GFP_PGTABLE_USER  (GFP_PGTABLE_KERNEL | __GFP_ACCOUNT)
>   |
>   -> #define GFP_PGTABLE_KERNEL        (GFP_KERNEL | __GFP_ZERO)
> 
>   == GFP_KERNEL | __GFP_ACCOUNT | __GFP_ZERO
> 
> versus
> 
>   #define GFP_KERNEL_ACCOUNT (GFP_KERNEL | __GFP_ACCOUNT)
> 
>     with __GFP_ZERO explicitly OR'd in
> 
>   == GFP_KERNEL | __GFP_ACCOUNT | __GFP_ZERO
> 
> I can put the above in the changelog, unless of course it's wrong and 
> I've
> missed something.

Ah, good point. Serves me right for judging the symbol at face value! 
;-)
I guess a quick mention in the changelog wouldn't hurt.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
