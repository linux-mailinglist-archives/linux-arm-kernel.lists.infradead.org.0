Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8587A990FB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 12:37:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bgFUkt9uJFo9JomzrkRL2BOLq1aHLtr4EW94FZoQ6yk=; b=BB4oVRoRAbAW8L
	8FE8/SnO2dbYxc8lV30yZ7cHXLOGK76VWJGBU51HXN/qYCv/OEEZ/CKkxw6Ae+sLjmTi3FzL5Pyml
	ixX+m7wG+gUb3UD+CVs54fLhdbp3DY1OJe4MtZsK4Xpn8iXZcZFCpBWi0gNNXyQwuuWpGq3aEY75/
	pdz/vXfot1ngMesn/7d4YPFxsBmNGRSmJVPkP4BBe4HtjQ8f1BiztVRaue+tnw+cAsH5q0r5+cHK7
	VJJe/XCKOgyzZQpjxWjYYRYI8h3SA40axdWQKJrRh3hiQm7bx2qUoVpKvsSpccttwdtXgJv9U58EV
	bNaLNY/8oNPvGCvMO+Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0kT7-0004Di-Q3; Thu, 22 Aug 2019 10:37:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i0kSt-0004Ct-NJ
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 10:37:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AF26615AD;
 Thu, 22 Aug 2019 03:37:09 -0700 (PDT)
Received: from [10.1.196.133] (e112269-lin.cambridge.arm.com [10.1.196.133])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C4D2C3F246;
 Thu, 22 Aug 2019 03:37:07 -0700 (PDT)
Subject: Re: [PATCH v3 04/10] KVM: Implement kvm_put_guest()
To: Jonathan Cameron <jonathan.cameron@huawei.com>
References: <20190821153656.33429-1-steven.price@arm.com>
 <20190821153656.33429-5-steven.price@arm.com>
 <20190822112930.000052db@huawei.com>
From: Steven Price <steven.price@arm.com>
Message-ID: <003f509f-964b-2af0-d5da-1155fb4ec9d6@arm.com>
Date: Thu, 22 Aug 2019 11:37:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190822112930.000052db@huawei.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_033711_800416_1ECCED8B 
X-CRM114-Status: GOOD (  16.30  )
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
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 22/08/2019 11:29, Jonathan Cameron wrote:
> On Wed, 21 Aug 2019 16:36:50 +0100
> Steven Price <steven.price@arm.com> wrote:
> 
>> kvm_put_guest() is analogous to put_user() - it writes a single value to
>> the guest physical address. The implementation is built upon put_user()
>> and so it has the same single copy atomic properties.
>>
>> Signed-off-by: Steven Price <steven.price@arm.com>
>> ---
>>  include/linux/kvm_host.h | 24 ++++++++++++++++++++++++
>>  1 file changed, 24 insertions(+)
>>
>> diff --git a/include/linux/kvm_host.h b/include/linux/kvm_host.h
>> index fcb46b3374c6..e154a1897e20 100644
>> --- a/include/linux/kvm_host.h
>> +++ b/include/linux/kvm_host.h
>> @@ -746,6 +746,30 @@ int kvm_write_guest_offset_cached(struct kvm *kvm, struct gfn_to_hva_cache *ghc,
>>  				  unsigned long len);
>>  int kvm_gfn_to_hva_cache_init(struct kvm *kvm, struct gfn_to_hva_cache *ghc,
>>  			      gpa_t gpa, unsigned long len);
>> +
>> +#define __kvm_put_guest(kvm, gfn, offset, value, type)			\
>> +({									\
>> +	unsigned long __addr = gfn_to_hva(kvm, gfn);			\
>> +	type __user *__uaddr = (type __user *)(__addr + offset);	\
>> +	int __ret = 0;							\
> 
> Why initialize __ret?

Good question. Actually looking at this again if I reorder this to be
pessimistic I can make it shorter:

	int __ret = -EFAULT;

	if (!kvm_is_error_hva(__addr))
		__ret = put_user(value, __uaddr);
	if (!__ret)
		mark_page_dirty(kvm, gfn);				
	__ret;

Thanks for taking a look.

Steve

>> +									\
>> +	if (kvm_is_error_hva(__addr))					\
>> +		__ret = -EFAULT;					\
>> +	else								\
>> +		__ret = put_user(value, __uaddr);			\
>> +	if (!__ret)							\
>> +		mark_page_dirty(kvm, gfn);				\
>> +	__ret;								\
>> +})
>> +
>> +#define kvm_put_guest(kvm, gpa, value, type)				\
>> +({									\
>> +	gpa_t __gpa = gpa;						\
>> +	struct kvm *__kvm = kvm;					\
>> +	__kvm_put_guest(__kvm, __gpa >> PAGE_SHIFT,			\
>> +			offset_in_page(__gpa), (value), type);		\
>> +})
>> +
>>  int kvm_clear_guest_page(struct kvm *kvm, gfn_t gfn, int offset, int len);
>>  int kvm_clear_guest(struct kvm *kvm, gpa_t gpa, unsigned long len);
>>  struct kvm_memory_slot *gfn_to_memslot(struct kvm *kvm, gfn_t gfn);
> 
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
