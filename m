Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD040153B2F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 23:42:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3wmw4EZDgNQZ5kqQhEUeizriYWGmQ7ueGtcs/k6sf14=; b=LXRGZi9eMHRvZV
	1IY/GRtdJQQ2PgyCTGIiAKQFvXPv9+/mpDGFQvSWUKIyPk+6naihnuxHVD70S3dvO5FlzfO4E5dVp
	LMNiGu3oFHceWu8YNn9tdUYe8lY7iiLqeeEJLq0lwVw5YDrMjUJWTpuF40ufjdhLWbbi1lZnGssCh
	qndtsR6Fx5BKspdO+ww+kX0+gDtUPY7kpySTvK9DWOFW/e+2WUFLh/UvNdha2hUCcSIK4fu1Xg5Aw
	Sj2ivupX/DMLQqZAZZvRUGRSA1Vebi0xehSNT6KAci22au3CSLEN2cFnvDMCTdn8EomT8WVkWNfu3
	BBYKvfQ6jxmYVsg0QjQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izTN6-00028E-3z; Wed, 05 Feb 2020 22:42:12 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izTMw-00027V-Ng
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 22:42:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1580942521;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=AoV/3XjIbnAzmVCqiyYSjksDW0qIqMnLXjhY1MW1cfI=;
 b=jWO0l6TlqYT+w0kYE1t53PUmRTsOaushhI80yw3SjLXWkeP82iXUTaqUsal8X2YyT4gXVo
 ZXGV3yhl8iwkSriNLGY3D7Fe3JXkBwaYPPEppzZy1ZQKZHoECu+hASalb+B66yfqXLI3pH
 NJUuQs0HxtbNE1he24mGam1777DaqVM=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-158-qeBkySslOj6BcvfhA5f_MA-1; Wed, 05 Feb 2020 17:41:59 -0500
Received: by mail-qk1-f198.google.com with SMTP id q135so2305893qke.22
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Feb 2020 14:41:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=rH9hapDVBD03GESwcZDF6GjM5sGJp1/0m6Dm+I8b0N0=;
 b=ZnVJ5LGF2n/KRVwnua9W0vRFOBtY4K4GCM5fIFqj2c7dp/vmZb63GjgSbQmZWfgONb
 FGNsHq9+fdmlBCcUmlXTrAVQDIzzNE7+AVBIeyByaATYDz7oCwt6LzDqIMRzXWHLIkpv
 SgCq0gAidyBJqK+AqRnwP5xvmV6IuoIe/CgVbw2uWgm0TSR0ycRO7CNchTBNGR+W4qj8
 VYpAxDQggqrI8JSC/Uwd2ylsAYSO12N06ssALljg4D2Ysue4ws/jzXtZd7UYUUMx0Q0u
 e4R0h9+bXXehrkyEUgFkHF4JuJiI2rnbg3y6ErvEQSm6Tqahz8VnJ3wn2a60t6BGg5os
 HRGQ==
X-Gm-Message-State: APjAAAVyPsnJfu9oks1FZ0D6RXELscNdSF8hlkG/R0EHzNsUFy+SBsMH
 46BOuTYmhLzobjB47zhNQ311+UxOGuFsALgeaIuffVqIQQg6nBdHqRw9YamhjUqp15a7FVm4nJS
 HHsNkcIohZU3ArQwOHNOoymrsjSflWR/4UOc=
X-Received: by 2002:a37:4fc3:: with SMTP id d186mr59917qkb.100.1580942518830; 
 Wed, 05 Feb 2020 14:41:58 -0800 (PST)
X-Google-Smtp-Source: APXvYqz7uhA3CGENCAtqy4g5GvmYMoxE6Qbx+Ub2ume93+vIa38OEJ1jq8Hx/Hw9ZpC1eb3usykd7Q==
X-Received: by 2002:a37:4fc3:: with SMTP id d186mr59892qkb.100.1580942518606; 
 Wed, 05 Feb 2020 14:41:58 -0800 (PST)
Received: from xz-x1 ([2607:9880:19c8:32::2])
 by smtp.gmail.com with ESMTPSA id a201sm512222qkc.134.2020.02.05.14.41.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 Feb 2020 14:41:57 -0800 (PST)
Date: Wed, 5 Feb 2020 17:41:54 -0500
From: Peter Xu <peterx@redhat.com>
To: Sean Christopherson <sean.j.christopherson@intel.com>
Subject: Re: [PATCH v5 04/19] KVM: PPC: Move memslot memory allocation into
 prepare_memory_region()
Message-ID: <20200205224154.GG387680@xz-x1>
References: <20200121223157.15263-1-sean.j.christopherson@intel.com>
 <20200121223157.15263-5-sean.j.christopherson@intel.com>
MIME-Version: 1.0
In-Reply-To: <20200121223157.15263-5-sean.j.christopherson@intel.com>
X-MC-Unique: qeBkySslOj6BcvfhA5f_MA-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_144202_849702_89D0892E 
X-CRM114-Status: UNSURE (   8.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Tue, Jan 21, 2020 at 02:31:42PM -0800, Sean Christopherson wrote:
>  static int kvmppc_core_prepare_memory_region_hv(struct kvm *kvm,
> -					struct kvm_memory_slot *memslot,
> -					const struct kvm_userspace_memory_region *mem)
> +					struct kvm_memory_slot *slot,
> +					const struct kvm_userspace_memory_region *mem,
> +					enum kvm_mr_change change)
>  {
> +	unsigned long npages = mem->memory_size >> PAGE_SHIFT;

Only in case if this patch still needs a respin: IIUC we can directly
use slot->npages below.  No matter what:

Reviewed-by: Peter Xu <peterx@redhat.com>

> +
> +	if (change == KVM_MR_CREATE) {
> +		slot->arch.rmap = vzalloc(array_size(npages,
> +					  sizeof(*slot->arch.rmap)));
> +		if (!slot->arch.rmap)
> +			return -ENOMEM;
> +	}
> +
>  	return 0;
>  }

-- 
Peter Xu


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
