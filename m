Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E63F318F4F9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 13:48:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fod4qNIl/j7xTPNEs/yD/zqEZRDNxIwbvbAfH0FHV0Q=; b=W17aqAvlWmym32
	dA5o3qISqfcj6dsCAThWNKU7ilS82z77uVJHvngYDcfQmbbRD1AUCbeKlbC1feJj6A0LuM/RDxblw
	dTIHQdD+gQfc7ItgHaRR9ey0t56Kbd9xGaG4IsH2letdHnm6rc9H+R58AZzglGrxq5EYZi8YrrDQy
	99+Czoj+gNQzA3ZUR8vDl1/SYW6tmJ2FmGET0pqYk4OyL0rmpVVYeRhRP5CyvHcwKEIF6n9ZqbE8Q
	Nt6lfUMqeZetflUywvmBvK+EesPsakmvY1c401A236Pbze/yjV/9ihESbE4x/VCtEOhScl366O3WO
	3nyM/l/Y0IDglMzPk+qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGMVA-0006ZX-Pm; Mon, 23 Mar 2020 12:48:20 +0000
Received: from us-smtp-delivery-74.mimecast.com ([216.205.24.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGMV2-0006Z6-2O
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 12:48:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1584967691;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=B8wQahKGoRUIUJ5ZWFkVo9acPARo3TGrEWALHtiunpg=;
 b=btEvOdqZ9D7AaaGA3iliV9DU+70UMVihkk/dazaJbhkM2Jae9c1IbsMLvwfxg6whyL2Zn8
 m+kh8KFM2CpmVQIcF6yxNuHYSMPRny1qc5aIiT/bN6frZRX9uas8X7JLIG1s+MoIv5y5wZ
 0cD3eBbirBh1byy2u38sZ/w+rlW5DJE=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-85-LM-HjYibNBGUWAQtT2sOnA-1; Mon, 23 Mar 2020 08:48:09 -0400
X-MC-Unique: LM-HjYibNBGUWAQtT2sOnA-1
Received: by mail-wr1-f71.google.com with SMTP id o18so3921947wrx.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Mar 2020 05:48:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=oZZMumaLZJu5X3TxC1ggPEB/siyDp674fd3PHOwNKOk=;
 b=IW/cMytcChwUnfC/7pZDZgVpl9FZ79CC02xzUwSpFDs2Jt6vQYihgJaP7TPpddbmJA
 q7mm9hMC6dMOxEF0YWjHh7j632bRnGn/E1En2+UQd7qrZBd6rb8G7od5hjdo52g3ZuZ/
 ijHzsbt9DqRb6emBeT+B3GkiHIbpMZtzB8KcFXWxzEYjp79lz50s6qmfWLR3kpW28KlN
 1iE3+75pyoHsJrLgHVypOWj5Kb21Z25Zy2smsEwDmzeuwxZ+UQigPP5pxVOXw6r/GHB7
 I+o/tz7LoWiYkZC8GbTUsJqN9btSVEtROhlmthHsN3FyfNVWLG7HVMkqxPs9Ry/UIQWD
 HOXA==
X-Gm-Message-State: ANhLgQ0Xf1cXz9urr/5O5CK6N2cYbcaxQhnsHisUAoP7SsGe1IuOgRLA
 3Wwwqf/9QFF5/PfixCJZGp307ecHb+QHu32i0Ah5/Xgt9mDtGgVC3KqLVbwhkpEF4uGkk8nFrWo
 qrB2k+4sN66jGMRRNht7Ao8qAW6wLcLRv35U=
X-Received: by 2002:adf:decf:: with SMTP id i15mr26153368wrn.277.1584967688273; 
 Mon, 23 Mar 2020 05:48:08 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtzfkKiGqY46hQmyiE1uEEqN2+GnJhVE7scycSa3L2yRyeY3La61RQMFCIJXOpzJGHNoWPMLQ==
X-Received: by 2002:adf:decf:: with SMTP id i15mr26153331wrn.277.1584967688007; 
 Mon, 23 Mar 2020 05:48:08 -0700 (PDT)
Received: from vitty.brq.redhat.com (g-server-2.ign.cz. [91.219.240.2])
 by smtp.gmail.com with ESMTPSA id m12sm15324212wmi.3.2020.03.23.05.48.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Mar 2020 05:48:07 -0700 (PDT)
From: Vitaly Kuznetsov <vkuznets@redhat.com>
To: Sean Christopherson <sean.j.christopherson@intel.com>,
 Paolo Bonzini <pbonzini@redhat.com>
Subject: Re: [PATCH v3 8/9] KVM: VMX: Annotate vmx_x86_ops as __initdata
In-Reply-To: <20200321202603.19355-9-sean.j.christopherson@intel.com>
References: <20200321202603.19355-1-sean.j.christopherson@intel.com>
 <20200321202603.19355-9-sean.j.christopherson@intel.com>
Date: Mon, 23 Mar 2020 13:48:05 +0100
Message-ID: <877dzb9r0a.fsf@vitty.brq.redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_054812_197374_CDFC70A5 
X-CRM114-Status: GOOD (  13.13  )
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

> Tag vmx_x86_ops with __initdata now the the struct is copied by value

Typo, "now that the struct".

> to a common x86 instance of kvm_x86_ops as part of kvm_init().
>
> Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
> ---
>  arch/x86/kvm/vmx/vmx.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/x86/kvm/vmx/vmx.c b/arch/x86/kvm/vmx/vmx.c
> index fac22e316417..eae90379d0d1 100644
> --- a/arch/x86/kvm/vmx/vmx.c
> +++ b/arch/x86/kvm/vmx/vmx.c
> @@ -7668,7 +7668,7 @@ static bool vmx_check_apicv_inhibit_reasons(ulong bit)
>  	return supported & BIT(bit);
>  }
>  
> -static struct kvm_x86_ops vmx_x86_ops __ro_after_init = {
> +static struct kvm_x86_ops vmx_x86_ops __initdata = {
>  	.hardware_unsetup = hardware_unsetup,
>  
>  	.hardware_enable = hardware_enable,

Reviewed-by: Vitaly Kuznetsov <vkuznets@redhat.com>

-- 
Vitaly


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
