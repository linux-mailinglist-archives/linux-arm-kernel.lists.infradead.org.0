Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40C6D1239F2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 23:25:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ppxgsfVIieF6t3ouK9Wgem4GlA5tiJ8ORuiMxaJahhI=; b=u0bwDUboS1Hevi
	UbK6vo0OMRzr89fmqrLPB6uRtCYTu41XPpvZLt7oa2LVwumOSaSjZfER8HPsimmExS+6TfD1dihBo
	oobvSdzVKhT/QGzHbiAW+hFz0dOCFax8Liili2MJ7OR737nhuThAOSRggBSX15Sp2qRlgR+0irwPq
	nm11fLU70DTkz/+rWb0oxxQm/pWx/IsJq7yMBcK3Fa5W9p9ydeYBhz/g37WZBBQCZcMOTNjBfp6lf
	1PitcF0PiLAPTi1cscjUw2E/r6D1QroFnA92cFseNqkR/VBR5nEAWLb9AbF0Vf7xaUAudqtyQrjjO
	f1Weu/0RmEkE65bYJuDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihLH1-00030A-H0; Tue, 17 Dec 2019 22:24:59 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihLGu-0002ze-AH
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 22:24:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1576621491;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Xu0GsxfGKpwtsXvGwdOyh0k7RpXc8dRb7e9p2lxb8fE=;
 b=Hgm7KYoXkGqGyMDuaI5f6H+XzWEIrvd4yKN7OJNNo8zRQTv/hMSkwhqixLDWP/c82gOpu8
 oA1ys/topOGxmnF6ANErQElcJG/kTEeTpqm2Zx6BTPk0krfGrY4hiOedXdOncf/J1/Re3E
 reaXxwUqXJkwcIFoRHyN9T/BFaEr1+c=
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-255-ZuEMUUH8N4u5tNflR3chCA-1; Tue, 17 Dec 2019 17:24:49 -0500
Received: by mail-qt1-f198.google.com with SMTP id t4so181058qtd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Dec 2019 14:24:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=n1zc/BAvLiuzmjBuBeyM8c5OGj4eP3sDEL7oyAZ0h/8=;
 b=Czi/iJq3nwKJtZutzs2IWPzhgiNkbIBsMr2iKmKHi3FRo1NXMTzYXfc/jrndwcMxdE
 r3JjlhNUK2cIO/MaMA0vgrEqO0k8a4wLx9vhlAuTCx8xiw/459ZrFRuSZxq9HAhfW39n
 Y4/0XwcU/Cb8l9EUw2nzlCgKecifh0knqkbGMUByEGgs59oyvEDyKpqOEmF+pee+jqg7
 nFDVRMouaNXx3QhWviven7SOd/jU1Vala8T9BgAbz34RA6Hz5g2O1USPpWU1icGdZEBj
 K62yC0sfpeaM268XLkP8U4ZfmxEbHggu7FCXGOxBQODcNUSvxu3Jf/6+7gtxffqq3O8z
 +PPw==
X-Gm-Message-State: APjAAAWRkHl3eb/+CnnONG2KCiwjgXi65/wZQFinEQn8tMcFXFvK0Zo3
 iiq0ah/rQ3eGaDsbGf+ovW/nzCF+oMtJtVunto7JDjjm/AMDokhu5i4+MCUpdnMC4gXYEIW/udD
 dtNPHlyltoikWtf8+wJ8ptKF9LO0/ctLnXL4=
X-Received: by 2002:ac8:3177:: with SMTP id h52mr248048qtb.264.1576621488930; 
 Tue, 17 Dec 2019 14:24:48 -0800 (PST)
X-Google-Smtp-Source: APXvYqxa9aGwr5mHm2Cm0VxXNZlZXqTAo8dq2kd9eCG/gVR+l9nUybMoSUNtPMwlIhbLMlDgqBEiTQ==
X-Received: by 2002:ac8:3177:: with SMTP id h52mr248020qtb.264.1576621488653; 
 Tue, 17 Dec 2019 14:24:48 -0800 (PST)
Received: from xz-x1 ([104.156.64.74])
 by smtp.gmail.com with ESMTPSA id c84sm7565689qkg.78.2019.12.17.14.24.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Dec 2019 14:24:47 -0800 (PST)
Date: Tue, 17 Dec 2019 17:24:46 -0500
From: Peter Xu <peterx@redhat.com>
To: Sean Christopherson <sean.j.christopherson@intel.com>
Subject: Re: [PATCH v4 07/19] KVM: Explicitly free allocated-but-unused dirty
 bitmap
Message-ID: <20191217222446.GK7258@xz-x1>
References: <20191217204041.10815-1-sean.j.christopherson@intel.com>
 <20191217204041.10815-8-sean.j.christopherson@intel.com>
MIME-Version: 1.0
In-Reply-To: <20191217204041.10815-8-sean.j.christopherson@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-MC-Unique: ZuEMUUH8N4u5tNflR3chCA-1
X-Mimecast-Spam-Score: 0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_142452_439408_EF5B20B4 
X-CRM114-Status: GOOD (  14.81  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.81 listed in wl.mailspike.net]
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
Cc: Wanpeng Li <wanpengli@tencent.com>, Janosch Frank <frankja@linux.ibm.com>,
 kvm@vger.kernel.org, David Hildenbrand <david@redhat.com>,
 James Hogan <jhogan@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 Cornelia Huck <cohuck@redhat.com>, linux-kernel@vger.kernel.org,
 Philippe =?utf-8?Q?Mathieu-Daud=C3=A9?= <f4bug@amsat.org>,
 kvm-ppc@vger.kernel.org, linux-mips@vger.kernel.org,
 Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Marc Zyngier <maz@kernel.org>,
 Paolo Bonzini <pbonzini@redhat.com>, Vitaly Kuznetsov <vkuznets@redhat.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 17, 2019 at 12:40:29PM -0800, Sean Christopherson wrote:
> Explicitly free an allocated-but-unused dirty bitmap instead of relying
> on kvm_free_memslot() if an error occurs in __kvm_set_memory_region().
> There is no longer a need to abuse kvm_free_memslot() to free arch
> specific resources as arch specific code is now called only after the
> common flow is guaranteed to succeed.  Arch code can still fail, but
> it's responsible for its own cleanup in that case.
> 
> Eliminating the error path's abuse of kvm_free_memslot() paves the way
> for simplifying kvm_free_memslot(), i.e. dropping its @dont param.
> 
> Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
> ---
>  virt/kvm/kvm_main.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/virt/kvm/kvm_main.c b/virt/kvm/kvm_main.c
> index d403e93e3028..6b2261a9e139 100644
> --- a/virt/kvm/kvm_main.c
> +++ b/virt/kvm/kvm_main.c
> @@ -1096,7 +1096,7 @@ int __kvm_set_memory_region(struct kvm *kvm,
>  
>  	slots = kvzalloc(sizeof(struct kvm_memslots), GFP_KERNEL_ACCOUNT);
>  	if (!slots)
> -		goto out_free;
> +		goto out_bitmap;
>  	memcpy(slots, __kvm_memslots(kvm, as_id), sizeof(struct kvm_memslots));
>  
>  	if ((change == KVM_MR_DELETE) || (change == KVM_MR_MOVE)) {
> @@ -1144,8 +1144,9 @@ int __kvm_set_memory_region(struct kvm *kvm,
>  	if (change == KVM_MR_DELETE || change == KVM_MR_MOVE)
>  		slots = install_new_memslots(kvm, as_id, slots);
>  	kvfree(slots);
> -out_free:
> -	kvm_free_memslot(kvm, &new, &old);
> +out_bitmap:
> +	if (new.dirty_bitmap && !old.dirty_bitmap)
> +		kvm_destroy_dirty_bitmap(&new);

What if both the old and new have KVM_MEM_LOG_DIRTY_PAGES set?
kvm_free_memslot() did cover that but I see that you explicitly
dropped it.  Could I ask why?  Thanks,

-- 
Peter Xu


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
