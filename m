Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DFA69AD55
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 12:34:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ATaWGHMZeUqq9eKblUB9pzCRkgUpU5wQBENxtEjF7lE=; b=f/Syri/v5lmIhT
	U3PtVEYBTol7g5hX1y1dxUb7Ev4oB3Dsek5iC65iygldAsO9j6J4vkLZ1mWbfsUsw3mi7BUtLVhbG
	2HxA0raxM5chuOspbzSBqHGe6EuYLiVN7vVG6nQye1G8HmgtJP5UoCduMEVQL8ezcrto04m0se+XB
	ziflCi3jWSgMt7T+WsIaz/RVymEm9bfogNrX7PgDTdAMaBq/9s1hdzpKr9GZ/+O2XRDSAVMbdx77F
	saMhVIuCxqabargT7sE8o+IelNt8JkKry1hQdy11zT82NdpDDRvHC/82p9CnnUbNfXLwoOIsT98Up
	HEYJiIuiz044j/7b3HVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i16tN-0004sp-R6; Fri, 23 Aug 2019 10:34:01 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i16tG-0004sO-Cl
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 10:33:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CF842337;
 Fri, 23 Aug 2019 03:33:53 -0700 (PDT)
Received: from [10.1.196.133] (e112269-lin.cambridge.arm.com [10.1.196.133])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4123A3F246;
 Fri, 23 Aug 2019 03:33:51 -0700 (PDT)
Subject: Re: [PATCH v3 04/10] KVM: Implement kvm_put_guest()
To: Sean Christopherson <sean.j.christopherson@intel.com>
References: <20190821153656.33429-1-steven.price@arm.com>
 <20190821153656.33429-5-steven.price@arm.com>
 <20190822152854.GE25467@linux.intel.com>
 <e2abc69b-74c2-64ef-e270-43d93513eaae@arm.com>
 <20190822162449.GF25467@linux.intel.com>
From: Steven Price <steven.price@arm.com>
Message-ID: <691598cf-284d-5156-c15f-78d363b9f18e@arm.com>
Date: Fri, 23 Aug 2019 11:33:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190822162449.GF25467@linux.intel.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_033354_519246_0A436E94 
X-CRM114-Status: GOOD (  21.87  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 =?UTF-8?B?UmFkaW0gS3LEjW3DocWZ?= <rkrcmar@redhat.com>, kvm@vger.kernel.org,
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

On 22/08/2019 17:24, Sean Christopherson wrote:
> On Thu, Aug 22, 2019 at 04:46:10PM +0100, Steven Price wrote:
>> On 22/08/2019 16:28, Sean Christopherson wrote:
>>> On Wed, Aug 21, 2019 at 04:36:50PM +0100, Steven Price wrote:
>>>> kvm_put_guest() is analogous to put_user() - it writes a single value to
>>>> the guest physical address. The implementation is built upon put_user()
>>>> and so it has the same single copy atomic properties.
>>>
>>> What you mean by "single copy atomic"?  I.e. what guarantees does
>>> put_user() provide that __copy_to_user() does not?
>>
>> Single-copy atomicity is defined by the Arm architecture[1] and I'm not
>> going to try to go into the full details here, so this is a summary.
>>
>> For the sake of this feature what we care about is that the value
>> written/read cannot be "torn". In other words if there is a read (in
>> this case from another VCPU) that is racing with the write then the read
>> will either get the old value or the new value. It cannot return a
>> mixture. (This is of course assuming that the read is using a
>> single-copy atomic safe method).
> 
> Thanks for the explanation.  I assumed that's what you were referring to,
> but wanted to double check.
>  
>> __copy_to_user() is implemented as a memcpy() and as such cannot provide
>> single-copy atomicity in the general case (the buffer could easily be
>> bigger than the architecture can guarantee).
>>
>> put_user() on the other hand is implemented (on arm64) as an explicit
>> store instruction and therefore is guaranteed by the architecture to be
>> single-copy atomic (i.e. another CPU cannot see a half-written value).
> 
> I don't think kvm_put_guest() belongs in generic code, at least not with
> the current changelog explanation about it providing single-copy atomic
> semantics.  AFAICT, the single-copy thing is very much an arm64
> implementation detail, e.g. the vast majority of 32-bit architectures,
> including x86, do not provide any guarantees, and x86-64 generates more
> or less the same code for put_user() and __copy_to_user() for 8-byte and
> smaller accesses.
> 
> As an alternative to kvm_put_guest() entirely, is it an option to change
> arm64's raw_copy_to_user() to redirect to __put_user() for sizes that are
> constant at compile time and can be handled by __put_user()?  That would
> allow using kvm_write_guest() to update stolen time, albeit with
> arguably an even bigger dependency on the uaccess implementation details.

I think it's important to in some way ensure that the desire that this
is a single write is shown. copy_to_user() is effectively
"setup();memcpy();finish();" and while a good memcpy() implementation
would be identical to put_user() there's a lot more room for this being
broken in the future by changes to the memcpy() implementation. (And I
don't want to require that memcpy() has to detect this case).

One suggestion is to call it something like kvm_put_guest_atomic() to
reflect the atomicity requirement. Presumably that would be based on a
new put_user_atomic() which architectures could override as necessary if
put_user() doesn't provide the necessary guarantees.

Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
