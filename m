Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12062E0768
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 17:31:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wI2DbvOEDhRg88jOuKma9w+wyPqHpaAMvE48H++n2dk=; b=KSweemDKMCQmMq
	LiNTb+Wo6jgrEwcAo2wDSwwOKd6kLR8geiuAKTiuqY028Vf5mvShm9ti4wog5JN14fK4dQKOIJVwa
	SC+e0yw3FGxmF2KI9Lx13v7nUZtTlGZK+JCOBSaIEaTIEKhZxAfPIzI88bHkEwuOlc4n6x316dH9Q
	vCcaeOzAooHhxCqEqcQznObOSaD8/oytC/UjxTvlfEHbuBpMWoDMNYncy8SBqi5T5aqqJlekhxH16
	j8z0D0cOrP8wMHJFIl0WLGUhWOaHgj56xwFNkXZyd+4b/ae1FxxM1ekfPUe4rQAM8Pheb19sC1uuo
	pWHpSWoJ4zKQSYDfnj7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMw81-0007qU-Lo; Tue, 22 Oct 2019 15:31:21 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMw7j-0007kF-LD
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 15:31:05 +0000
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 96B80C057E9F
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 22 Oct 2019 15:31:01 +0000 (UTC)
Received: by mail-wm1-f70.google.com with SMTP id s19so6076757wmj.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 22 Oct 2019 08:31:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=bYuISgCPeW5+MVYfOIxCD24v5h78aw8/fY5c9Ec2zaE=;
 b=banYkj8Rjcp81B6AwRLCr+ObQck+3ndviBuX44cc2HdD98kkvEp7TtL9KRtJzY03oP
 pjbWK5m89P/1XU/Nkv33t9IF1SE9uooAm5ZQxQQ0VystzhTVIlY5ngQWojbbYWdmL5NA
 O4LyF96yWlWfqNDlR0CZ3dQsceaoqZzl6bIudaIUVqxTvOsLI4yraHTI36V+xVaBH5Wg
 T6uCXHsVjHnvEKHeKdMdwBYRP2paTmqhRXQUukctV/nk09kewqFN9JXgjpsV3L9hK0Al
 hV3AHU/JrTLNLFypGocWvQbgGaf4iF9mEBNP71mBfl2bBKUZV63YoTb9Jtl4mkx+id96
 rM8w==
X-Gm-Message-State: APjAAAWj0m9mwLhSTvznFssLCrdBiFpAS7L61V3lMukhMEDvqWURsVFs
 uebyfd4v2LPB3zwOYyDpwVba5WzwZxg/vUSmALK16BhX0o2P0JSt6JbTKFpkCV8BcJm8Ut5HwhJ
 seIP0LghZCQp62BQduLDBsnogeteDcPdHC24=
X-Received: by 2002:a7b:c4c6:: with SMTP id g6mr3605229wmk.126.1571758260024; 
 Tue, 22 Oct 2019 08:31:00 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzRNIaPW2VC3E0u/tx9jObrvh39A/kSU1/g2oCY4LzK3jFChqIF1uPjGeoTV55xRLqzG4HUGw==
X-Received: by 2002:a7b:c4c6:: with SMTP id g6mr3605195wmk.126.1571758259666; 
 Tue, 22 Oct 2019 08:30:59 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:c0e4:dcf4:b543:ce19?
 ([2001:b07:6468:f312:c0e4:dcf4:b543:ce19])
 by smtp.gmail.com with ESMTPSA id i18sm17512175wrx.14.2019.10.22.08.30.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 22 Oct 2019 08:30:59 -0700 (PDT)
Subject: Re: [PATCH v2 14/15] KVM: Terminate memslot walks via used_slots
To: Sean Christopherson <sean.j.christopherson@intel.com>
References: <20191022003537.13013-1-sean.j.christopherson@intel.com>
 <20191022003537.13013-15-sean.j.christopherson@intel.com>
 <642f73ee-9425-0149-f4f4-f56be9ae5713@redhat.com>
 <20191022152827.GC2343@linux.intel.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Openpgp: preference=signencrypt
Message-ID: <625e511f-bd35-3b92-0c6d-550c10fc5827@redhat.com>
Date: Tue, 22 Oct 2019 17:30:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191022152827.GC2343@linux.intel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_083103_745960_16342509 
X-CRM114-Status: GOOD (  18.97  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Cornelia Huck <cohuck@redhat.com>, Wanpeng Li <wanpengli@tencent.com>,
 Janosch Frank <frankja@linux.ibm.com>, kvm@vger.kernel.org,
 =?UTF-8?B?UmFkaW0gS3LEjW3DocWZ?= <rkrcmar@redhat.com>,
 James Hogan <jhogan@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 David Hildenbrand <david@redhat.com>, linux-mips@vger.kernel.org,
 kvm-ppc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Marc Zyngier <maz@kernel.org>, Vitaly Kuznetsov <vkuznets@redhat.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 22/10/19 17:28, Sean Christopherson wrote:
> On Tue, Oct 22, 2019 at 04:04:18PM +0200, Paolo Bonzini wrote:
>> On 22/10/19 02:35, Sean Christopherson wrote:
>>> +static inline int kvm_shift_memslots_forward(struct kvm_memslots *slots,
>>> +					     struct kvm_memory_slot *new)
>>> +{
>>> +	struct kvm_memory_slot *mslots = slots->memslots;
>>> +	int i;
>>> +
>>> +	if (WARN_ON_ONCE(slots->id_to_index[new->id] == -1) ||
>>> +	    WARN_ON_ONCE(!slots->used_slots))
>>> +		return -1;
>>> +
>>> +	for (i = slots->id_to_index[new->id]; i < slots->used_slots - 1; i++) {
>>> +		if (new->base_gfn > mslots[i + 1].base_gfn)
>>> +			break;
>>> +
>>> +		WARN_ON_ONCE(new->base_gfn == mslots[i + 1].base_gfn);
>>> +
>>> +		/* Shift the next memslot forward one and update its index. */
>>> +		mslots[i] = mslots[i + 1];
>>> +		slots->id_to_index[mslots[i].id] = i;
>>> +	}
>>> +	return i;
>>> +}
>>> +
>>> +static inline int kvm_shift_memslots_back(struct kvm_memslots *slots,
>>> +					  struct kvm_memory_slot *new,
>>> +					  int start)
>>
>> This new implementation of the insertion sort loses the comments that
>> were there in the old one.  Please keep them as function comments.
> 
> I assume you're talking about this blurb in particular?
> 
> 	 * The ">=" is needed when creating a slot with base_gfn == 0,
> 	 * so that it moves before all those with base_gfn == npages == 0.

Yes, well all of the comments.  You can also keep them in the caller, as
you prefer.

Paolo


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
