Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEF0F18F502
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 13:49:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fBsCVYd2f00sbGzjRmspW3IQcfWUFj9gfZn1mEDUUwE=; b=l7mMf2nCpfsiyo
	Et7nCoVldh7AMcVbdwVLpkS5vZCDcHvAm64ZV0PP7UKOSbrvV2oe0FOdAWpuRux22SebyQCxrHsFq
	7RVs1x4BWCngL/jsvZ5CSfAlXdJLZ5AA0Hpn9d4CsoT6q6RhRAyQDka7Q8K7RwRan9bFN2oJYRAcD
	uP2TuGfDDrDGgPR0zRNKt0IVSf/woOgeekHMXg7ttoO0qXfrVK+jndgGG+0HFILItF7kQA/HkuFwk
	dgoliYyWnhQ6Y2oic4CWemN5jO/OoNnNCSwPPYtnMKsHFKu7gOoYuey5BtRM8qZQbQIa+16o4yVaW
	zl3R4/ncWNho3lWpv9Zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGMVy-0006zC-Tc; Mon, 23 Mar 2020 12:49:10 +0000
Received: from us-smtp-delivery-74.mimecast.com ([216.205.24.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGMVe-0006py-18
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 12:48:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1584967729;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=jT01buco6uzW21meg0B5Msg/Bm4GIl6gV7g2Ambj934=;
 b=V/Aov3uQLKxqYLDeMHnKSVD326jYw7ENwiO0XYXpJzCn2l8uoz/14nDpdK9tjlTpvpwiio
 PZreNzFaIJf0Rm4tOg1ABZuHag1D1yoClg1rJA6mpKzYhuMX9KA94VcH5JmhS6V04dWRTA
 udq3pr+ULXlDyBVjW+qQ5tCxRIend7c=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-63-PDXxN1mlMMGtdQz_2Ji65w-1; Mon, 23 Mar 2020 08:48:45 -0400
X-MC-Unique: PDXxN1mlMMGtdQz_2Ji65w-1
Received: by mail-wm1-f69.google.com with SMTP id g9so1899093wmh.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Mar 2020 05:48:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=wF/Z91rii7js9BxWiPX/IJSf6cOn716YQpoQOgnhvlY=;
 b=sooQ3gOtrWwKMDi7vm/4XN66BL5icH/rMSvlgy0e4q4bLXLlgXU5Vj6ZUjeLTOkVKL
 Jje+d26u0Bzkbv77S7FEUC2B7v0vGPSRlaXeTV5tpSBlppSAb96QMv4MEqNeLySr1bqh
 cooXzc1iB+/VzgsEM/0R1oKGrtnYZt8hLCCENYCrg8BTjHOrCBTGT/kOJYFuRVaI0sMJ
 CvoZhYtbSMbs+DQ6uPApZ5S5dY0a9tMeQhG0Asdn9SZRAqxAsU538hxvDUiweHp0aXrt
 PG+q9z1QB1jDvALpWEGLw+F6mdPAmzKzamThR0ZKiXIjO89FpB67/xAQRXJdH0UyH9hr
 i+vg==
X-Gm-Message-State: ANhLgQ00iRePa4jhL/G1ukMzEOveATyaRc5UbZua7xa8RXH+dF2G6HJp
 7Kb8wkmAtXGxSToYm/cVDmgnTen3vGrmZSdVKnctEVYDdsAy8v0vzzeOQQw4zmQ9d5ST8eR6i/K
 yfTdplMNYlMem1Xt2UcBTreOVJ30TngYga9w=
X-Received: by 2002:a1c:5544:: with SMTP id j65mr25700718wmb.60.1584967724309; 
 Mon, 23 Mar 2020 05:48:44 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsE+BwUdC/3N3MhWCg3gX3gw8CdW/xveukJtA9Qqd5DxMyzUeCK03I5juokdRkfNo1dgo0DkQ==
X-Received: by 2002:a1c:5544:: with SMTP id j65mr25700677wmb.60.1584967724024; 
 Mon, 23 Mar 2020 05:48:44 -0700 (PDT)
Received: from vitty.brq.redhat.com (g-server-2.ign.cz. [91.219.240.2])
 by smtp.gmail.com with ESMTPSA id j39sm24686004wre.11.2020.03.23.05.48.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Mar 2020 05:48:43 -0700 (PDT)
From: Vitaly Kuznetsov <vkuznets@redhat.com>
To: Sean Christopherson <sean.j.christopherson@intel.com>,
 Paolo Bonzini <pbonzini@redhat.com>
Subject: Re: [PATCH v3 9/9] KVM: SVM: Annotate svm_x86_ops as __initdata
In-Reply-To: <20200321202603.19355-10-sean.j.christopherson@intel.com>
References: <20200321202603.19355-1-sean.j.christopherson@intel.com>
 <20200321202603.19355-10-sean.j.christopherson@intel.com>
Date: Mon, 23 Mar 2020 13:48:41 +0100
Message-ID: <874kuf9qza.fsf@vitty.brq.redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_054850_153488_4D2ACFDE 
X-CRM114-Status: GOOD (  12.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.205.24.74 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-kernel@lists.infradead.org, Wanpeng Li <wanpengli@tencent.com>,
 Janosch Frank <frankja@linux.ibm.com>, kvm@vger.kernel.org,
 David Hildenbrand <david@redhat.com>, Marc Zyngier <maz@kernel.org>,
 Joerg Roedel <joro@8bytes.org>, Cornelia Huck <cohuck@redhat.com>,
 linux-mips@vger.kernel.org,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 linux-kernel@vger.kernel.org, Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 James Morse <james.morse@arm.com>, kvm-ppc@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Sean Christopherson <sean.j.christopherson@intel.com> writes:

> Tag svm_x86_ops with __initdata now the the struct is copied by value to

Same typo, "now that the struct".

> a common x86 instance of kvm_x86_ops as part of kvm_init().
>
> Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
> ---
>  arch/x86/kvm/svm.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/x86/kvm/svm.c b/arch/x86/kvm/svm.c
> index b61bb306602b..ab2a1cf6c188 100644
> --- a/arch/x86/kvm/svm.c
> +++ b/arch/x86/kvm/svm.c
> @@ -7350,7 +7350,7 @@ static void svm_pre_update_apicv_exec_ctrl(struct kvm *kvm, bool activate)
>  	avic_update_access_page(kvm, activate);
>  }
>  
> -static struct kvm_x86_ops svm_x86_ops __ro_after_init = {
> +static struct kvm_x86_ops svm_x86_ops __initdata = {
>  	.hardware_unsetup = svm_hardware_teardown,
>  	.hardware_enable = svm_hardware_enable,
>  	.hardware_disable = svm_hardware_disable,

Reviewed-by: Vitaly Kuznetsov <vkuznets@redhat.com>

-- 
Vitaly


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
