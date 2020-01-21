Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 858DD14404B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 16:13:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mXIGJVNIx+XN8KNSikeG6hbOzrhbSxYmYPOMDs+CY2Y=; b=rvnNI/D10urzwV
	inQDCW2H7rrgbkzqWRNP1SVF044cf3FtJ9bxGcZHVz42O7oenLQBhHk9E3ISRRTexXBQC5uv9UxxU
	wFUvRKXTXBK2WANC70SHm/JVPc+1pqw+A9T/yYby0+YOXZPNt31/JsedbY6DyvUY7NVxPmCA7wfg/
	LVWNj4UmvMwOi9x3PwpZJkkOv6Zmsz1GGa/sCh0fJ8RSN9rS25YhvFElx7GVeXGKkwgK7VgteJ5Om
	s86x383ucum3PV3ndoXhHOe24cewzCtIkmmItLDktHy4GgonPHyjiqmgvkChzHpiavPIyWWKFjUpp
	1PogXoQJXo4nMl8ijQAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itvDN-0007dh-Gr; Tue, 21 Jan 2020 15:13:13 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itvD5-0007cw-Kb
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 15:12:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1579619574;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=bu/iMoYfYBgd5jXQviUDjY/CFaD1fKEaBQDIzi7DS7k=;
 b=Og8Apxb2WrYqabgBOUx1J5eX/OPRhL2ogKA7V9JpKLznNZkeZHaCSZkDukQfUeRXtbJHBA
 RkagdeKMvSC8AYXhK+V6XqKx8yczT+BVHWUBxzA0tbVzbDf5CbbLbiSpG0g+OPhhbggWK1
 vYcC8DHk3v1sIkutFsdtobcFfqZnQdU=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-4-ps7P-fd_Phmw39C_4_edYg-1; Tue, 21 Jan 2020 10:12:51 -0500
Received: by mail-wm1-f72.google.com with SMTP id q206so734228wme.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Jan 2020 07:12:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=bu/iMoYfYBgd5jXQviUDjY/CFaD1fKEaBQDIzi7DS7k=;
 b=gGrKpYyzzpfqUnn9A1L2fqsfOCXniDKoLoujVQXdPnJORclk2r7DXqVieRh+zgn3KS
 RdxKzyiCSsI1vWWKeULJC4Zpee52+1aL2Xs5HXmNz24nzCtK2Yzqw8GHv8QecQRsG6NJ
 5mr6uieg9oS76GSfWR1+PUi9kd0RZ2VLxxFMCtgippoM0VoQGDSacmvAW0ibsTYgUp2Q
 mmqtXVK9wO2avLkTyeB/lqhSm9BA7g1ZwDrSYTHBnlELmowrRA0kgVKdT51t7nfXbk4v
 +QSVfdCbGGHbE40zi11FFe8DfTHndogw7GuwovDmaku8KypxnGdPz0LXgaYNUlyC7eLd
 EOPA==
X-Gm-Message-State: APjAAAVq9plgkRga/GA9v992qGiYW5zLmfSOQE7XCz0Yhrd1CK2U6srX
 yxVn4VHAe1rIUEcOt4eN9P9yZvyKrOeQWwsMlPydEiLr2157XbtH16MQ6K+DYlxZiwhNE0j404q
 x71wITByUcQnSv+pVKDdPrqV9Fv7mdicI5jM=
X-Received: by 2002:a1c:1dd7:: with SMTP id d206mr5000215wmd.5.1579619569964; 
 Tue, 21 Jan 2020 07:12:49 -0800 (PST)
X-Google-Smtp-Source: APXvYqx3W9/IFqNtFmh53Y8FuFyZdMe+4NHjz+xYUeI++YvzTVDVuRT0IkPp6ekS3qHgnEBSwWauFA==
X-Received: by 2002:a1c:1dd7:: with SMTP id d206mr5000170wmd.5.1579619569664; 
 Tue, 21 Jan 2020 07:12:49 -0800 (PST)
Received: from ?IPv6:2001:b07:6468:f312:b509:fc01:ee8a:ca8a?
 ([2001:b07:6468:f312:b509:fc01:ee8a:ca8a])
 by smtp.gmail.com with ESMTPSA id b16sm54711240wrj.23.2020.01.21.07.12.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 21 Jan 2020 07:12:49 -0800 (PST)
Subject: Re: [PATCH 12/14] KVM: x86/mmu: Fold max_mapping_level() into
 kvm_mmu_hugepage_adjust()
To: Sean Christopherson <sean.j.christopherson@intel.com>
References: <20200108202448.9669-1-sean.j.christopherson@intel.com>
 <20200108202448.9669-13-sean.j.christopherson@intel.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <52cf5d90-5e65-4878-b214-7e1809224688@redhat.com>
Date: Tue, 21 Jan 2020 16:12:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20200108202448.9669-13-sean.j.christopherson@intel.com>
Content-Language: en-US
X-MC-Unique: ps7P-fd_Phmw39C_4_edYg-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_071255_749273_07EDFC28 
X-CRM114-Status: GOOD (  14.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 David Hildenbrand <david@redhat.com>, Peter Zijlstra <peterz@infradead.org>,
 Dave Hansen <dave.hansen@linux.intel.com>, Paul Mackerras <paulus@ozlabs.org>,
 linux-mm@kvack.org, kvmarm@lists.cs.columbia.edu,
 Andrea Arcangeli <aarcange@redhat.com>, Dave Jiang <dave.jiang@intel.com>,
 linux-nvdimm <linux-nvdimm@lists.01.org>, Marc Zyngier <maz@kernel.org>,
 Joerg Roedel <joro@8bytes.org>,
 syzbot+c9d1fb51ac9d0d10c39d@syzkaller.appspotmail.com,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Barret Rhoden <brho@google.com>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 kvm-ppc@vger.kernel.org, Liran Alon <liran.alon@oracle.com>,
 Andy Lutomirski <luto@kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org, Jim Mattson <jmattson@google.com>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 Jason Zeng <jason.zeng@intel.com>, Vitaly Kuznetsov <vkuznets@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 08/01/20 21:24, Sean Christopherson wrote:
> -	level = host_pfn_mapping_level(vcpu, gfn, pfn);
> +	slot = kvm_vcpu_gfn_to_memslot(vcpu, gfn);
> +	if (!memslot_valid_for_gpte(slot, true))
> +		return PT_PAGE_TABLE_LEVEL;

Following up on my remark to patch 7, this can also use
gfn_to_memslot_dirty_bitmap.

Paolo

> +
> +	max_level = min(max_level, kvm_x86_ops->get_lpage_level());
> +	for ( ; max_level > PT_PAGE_TABLE_LEVEL; max_level--) {
> +		if (!__mmu_gfn_lpage_is_disallowed(gfn, max_level, slot))
> +			break;
> +	}
> +
> +	if (max_level == PT_PAGE_TABLE_LEVEL)
> +		return PT_PAGE_TABLE_LEVEL;
> +
> +	level = host_pfn_mapping_level(vcpu, gfn, pfn, slot);
>  	if (level == PT_PAGE_TABLE_LEVEL)
>  		return level;
>  
> @@ -4182,8 +4172,6 @@ static int direct_page_fault(struct kvm_vcpu *vcpu, gpa_t gpa, u32 error_code,
>  	if (lpage_disallowed)
>  		max_level = PT_PAGE_TABLE_LEVEL;
>  
> -	max_level = max_mapping_level(vcpu, gfn, max_level);
> -
>  	if (fast_page_fault(vcpu, gpa, error_code))
>  		return RET_PF_RETRY;
>  
> diff --git a/arch/x86/kvm/mmu/paging_tmpl.h b/arch/x86/kvm/mmu/paging_tmpl.h
> index 0560982eda8b..ea174d85700a 100644
> --- a/arch/x86/kvm/mmu/paging_tmpl.h
> +++ b/arch/x86/kvm/mmu/paging_tmpl.h
> @@ -817,8 +817,6 @@ static int FNAME(page_fault)(struct kvm_vcpu *vcpu, gpa_t addr, u32 error_code,
>  	else
>  		max_level = walker.level;
>  
> -	max_level = max_mapping_level(vcpu, walker.gfn, max_level);
> -
>  	mmu_seq = vcpu->kvm->mmu_notifier_seq;
>  	smp_rmb();
>  
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
