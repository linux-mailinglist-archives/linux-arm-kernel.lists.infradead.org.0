Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65747154BA1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 20:07:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c0Ikv0xXVEn63intF8u3/8VyljEzCPYoCCMFUmMxmDY=; b=dNLFL4qASyXQ41
	0hUlCplatcw5YOQHf7hc4v+sbALaNDl3HKA7g5byUSo8AdwUhq5W+RvpqFKEloCYEVG6DwAz8iQbE
	FBb8vv0FpRZC9Y6BuiML/7NmoslnwLw0xoKtiiWjmugFq0TuxNxZ7rL19z8010aUz60SUaI7+9r6w
	yh/9qTdeOB92RizF6zBuVik5VgTQ5y7hH3kD2lHavHN0HBGAg2c8oofPcBZ8cgdK+oJ6xYLIeN8u5
	3AKtapffHjCQnrHe7n/KcazEGzJxrKuEDaBc/cIczLtXrHxgeKCO6cPahMdZwWjZUZnt6m59ru3Jw
	EkW4bbnrD1DHbq9+Lbag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izmUP-0004Dl-87; Thu, 06 Feb 2020 19:07:01 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izmUH-0004D9-S5
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 19:06:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1581016012;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=InYNPWLKCp8uHe4vvnIUyF7xIG6nPw8fE5CC09zI1bI=;
 b=AQxXyJENSDxMHRaFU771HmSCgc2Mgi3Lara9l/AyiDk+G0Y5im4UCv1JvOUa1RxfT0S8Hn
 k/Z9oG+6o7/zTPRUgL/d/YxSQ4gkonmwHXXU64asXH7E4WghXIbhFV9z08lnYiZJxzZVwC
 RsFpS9eenZ6TM5OJpDMGo3HJOUBtw0M=
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-417-YAGTVc8mPEq7w-k0ZWBTjA-1; Thu, 06 Feb 2020 14:06:46 -0500
Received: by mail-qt1-f197.google.com with SMTP id c22so4501084qtn.23
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Feb 2020 11:06:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=vFP4U5ATaHC0RXndwUcuwuU/AxffnBhPUu6Oesq1zsE=;
 b=JClatR+mgZ8c9BqIDsU1A/OMBOikkkUqbD0idjuUXHYe7GdsGJgqsDHQRgwqhLRzqV
 9ISLwHBVAmsnhLI9d3O/d/i/L4NtveF9Ol3RlXC8v6rwGNbijyl6QrlxB11rOvYzr4Vm
 FqeYu3vwX+jWtO/opSKH0YeIXncXxhw7JXem/8AMkFmzHRUs5bEoh8EEeLtZFys8GHWL
 nvUxdmjyesS6zlD5AilUAToTkafebNEaHpoPcxFoUI4WUTLsb1ePk6sGlIQH6OY78bR0
 NnJtVvTxk0TBlwb0UcDzwzrB3sygyTW5jj6T+upl5RH94Zi6ir7wES11C26Shex9Icyk
 I5FA==
X-Gm-Message-State: APjAAAWG4NPVvVel67typSuOjlR+QsSvVDooTEz+lDa4/uQx/T6Nfbkp
 5bhIj6DBThntr3OYystLTNkzF6xJLcBrBHQ6LxymyiCgv0f6Pa299VMubMLFfODcO1Rw54hQhoG
 463NsshqKeOgm6K6Wfy/rzDPurTBar3ZJucw=
X-Received: by 2002:a37:9d8c:: with SMTP id g134mr3831580qke.128.1581016005750; 
 Thu, 06 Feb 2020 11:06:45 -0800 (PST)
X-Google-Smtp-Source: APXvYqwcm5P+4dPwvjCn12J5PDi86Wcm35+8jmeWD2jbAE2DUKQO5334DVnipyStraLYLoHf0dGJ6w==
X-Received: by 2002:a37:9d8c:: with SMTP id g134mr3831559qke.128.1581016005447; 
 Thu, 06 Feb 2020 11:06:45 -0800 (PST)
Received: from xz-x1 ([2607:9880:19c8:32::2])
 by smtp.gmail.com with ESMTPSA id m27sm111381qta.21.2020.02.06.11.06.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Feb 2020 11:06:44 -0800 (PST)
Date: Thu, 6 Feb 2020 14:06:41 -0500
From: Peter Xu <peterx@redhat.com>
To: Sean Christopherson <sean.j.christopherson@intel.com>
Subject: Re: [PATCH v5 14/19] KVM: Clean up local variable usage in
 __kvm_set_memory_region()
Message-ID: <20200206190641.GA700495@xz-x1>
References: <20200121223157.15263-1-sean.j.christopherson@intel.com>
 <20200121223157.15263-15-sean.j.christopherson@intel.com>
MIME-Version: 1.0
In-Reply-To: <20200121223157.15263-15-sean.j.christopherson@intel.com>
X-MC-Unique: YAGTVc8mPEq7w-k0ZWBTjA-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_110653_989650_E62DE280 
X-CRM114-Status: GOOD (  10.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Tue, Jan 21, 2020 at 02:31:52PM -0800, Sean Christopherson wrote:

[...]

> @@ -1101,52 +1099,55 @@ int __kvm_set_memory_region(struct kvm *kvm,
>  	if (mem->guest_phys_addr + mem->memory_size < mem->guest_phys_addr)
>  		return -EINVAL;
>  
> -	slot = id_to_memslot(__kvm_memslots(kvm, as_id), id);
> -	base_gfn = mem->guest_phys_addr >> PAGE_SHIFT;
> -	npages = mem->memory_size >> PAGE_SHIFT;
> -
> -	if (npages > KVM_MEM_MAX_NR_PAGES)
> -		return -EINVAL;
> -
>  	/*
>  	 * Make a full copy of the old memslot, the pointer will become stale
>  	 * when the memslots are re-sorted by update_memslots().
>  	 */
> -	old = *slot;
> +	tmp = id_to_memslot(__kvm_memslots(kvm, as_id), id);
> +	old = *tmp;
> +	tmp = NULL;

Shall we keep this chunk to the patch where it will be used?  Other
than that, it looks good to me.

Thanks,

-- 
Peter Xu


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
