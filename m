Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 331E618FE64
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 21:01:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OdMs70jFdpG0bo7gsos8ojH/uDSeW74KHXVcLNdfZsM=; b=AkTgKf00huon2a
	EmmWuShUt1xV0n+qZQt/8quwuWCwA97K25DRFwX9fBW3PGwoxc2zSOVxALNFEQKsKbZnkCKkcG+UF
	nzLDw4h9fvo9U9J6nVMJUo9w61h80a/NWZ01zUm13AuNOqDSi/QHdoPm6PQ6/sNj+eb0qbt+aJLnu
	hOM6fyoR4IAesDanHBFy4TMGG71YjvSfiW9AMfcjvzt2E+jojl8OO7s974j8elg5aaMdVdzSAyQxa
	VrHqFonmYDDAhjkuEXENqz16XtOU8EdB/mIzw4jiYx5Xj7OnPOv1t3L932D9V62pdpU3EICzIWinX
	QtrmkXL29E0yQLwC9Vwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGTG0-00056p-NC; Mon, 23 Mar 2020 20:01:08 +0000
Received: from us-smtp-delivery-74.mimecast.com ([63.128.21.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGTFq-00056O-5J
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 20:00:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1584993656;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=cY+H9r1hyt0W+F/eh6c6o3kR9Aied7i4vmIsTGqyvm8=;
 b=bCuqD3sYav/rMPCtGTKmvRTbkWfGL+KXpOCXCfCiTeEhBXM9CZ0WIF/teLROpnsjgWdZ4U
 frAMcZHC/7hTIYU+qebt/GOdNAVTS8ITKwVZmNGnl9Ss2kD87mV6FkHAeanZRuK6vLvbLl
 mpMC6O2gDuG4tTDAc6t3sXjqnik1UuA=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-380-C8GM14XRMTmHuGIQbabk0g-1; Mon, 23 Mar 2020 16:00:55 -0400
X-MC-Unique: C8GM14XRMTmHuGIQbabk0g-1
Received: by mail-wm1-f72.google.com with SMTP id p18so255671wmk.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Mar 2020 13:00:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=cY+H9r1hyt0W+F/eh6c6o3kR9Aied7i4vmIsTGqyvm8=;
 b=o14tEVd4dreAbTSCqoUACXChSAmJFgZyXwP+QkZ04p5JfkA3aR/gHRKprgWPyzNCP3
 UXPWXYTHqBaSlB2T+WvwL2jAHzKRlgN1XArJ7vmE52UeqNkTj4ODYP3tMHqX+FvcJfwu
 tPUY4UWGu3zw+6mss6lU/pXCQz203S43h74GwwjU5FxQZ9qMa1QkX0+iM/9ysa8GcsDc
 j1WrV0TGMnN7iOWpdRwHzM4pZiRMqO8Z4V0XLj0kLVAKoMMDK+XeIz1sZGL/RE9D2BJp
 YFLzxX5oXDlaIOUZtAL4UcVSe0pWx55Z4cbt5TpJXz7qUnbwBJnW2DgE1RTVQww/m7RH
 1ysA==
X-Gm-Message-State: ANhLgQ1OhxUJClYFPQMur7kcyRN/DhpRG3vtoKO2wJScOrtdEL/f0cMv
 KGC1Ztc+9F0H+bRu2G61zWkHIfWBQslpELFsBBqcVZyhCrRyy3b+ba/ERPyxhmsaFFKUIdJrBdT
 88+hG7UFzEVJtAhBgJl7JgcXHboA/Tv9H4zE=
X-Received: by 2002:adf:f3c5:: with SMTP id g5mr26655834wrp.230.1584993653895; 
 Mon, 23 Mar 2020 13:00:53 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvXyqIbkkktOwq1/2ooUCj01kGPzulVzA6RfK1uS8wG/GOec0veo7shFCpnK1NWAqj8WTc9EQ==
X-Received: by 2002:adf:f3c5:: with SMTP id g5mr26655802wrp.230.1584993653686; 
 Mon, 23 Mar 2020 13:00:53 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:24d8:ed40:c82a:8a01?
 ([2001:b07:6468:f312:24d8:ed40:c82a:8a01])
 by smtp.gmail.com with ESMTPSA id 98sm25182715wrk.52.2020.03.23.13.00.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 23 Mar 2020 13:00:53 -0700 (PDT)
Subject: Re: [PATCH v3 4/9] KVM: VMX: Configure runtime hooks using vmx_x86_ops
To: Vitaly Kuznetsov <vkuznets@redhat.com>,
 Sean Christopherson <sean.j.christopherson@intel.com>
References: <20200321202603.19355-1-sean.j.christopherson@intel.com>
 <20200321202603.19355-5-sean.j.christopherson@intel.com>
 <87ftdz9ryn.fsf@vitty.brq.redhat.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <c7915319-8795-e466-e2df-478b1bf9734c@redhat.com>
Date: Mon, 23 Mar 2020 21:00:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <87ftdz9ryn.fsf@vitty.brq.redhat.com>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_130058_281898_CA536C80 
X-CRM114-Status: UNSURE (   9.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.128.21.74 listed in list.dnswl.org]
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
Cc: Wanpeng Li <wanpengli@tencent.com>, Janosch Frank <frankja@linux.ibm.com>,
 kvm@vger.kernel.org, David Hildenbrand <david@redhat.com>,
 Marc Zyngier <maz@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 Cornelia Huck <cohuck@redhat.com>, linux-mips@vger.kernel.org,
 kvm-ppc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 23/03/20 13:27, Vitaly Kuznetsov wrote:
>> -	kvm_x86_ops->check_nested_events = vmx_check_nested_events;
>> -	kvm_x86_ops->get_nested_state = vmx_get_nested_state;
>> -	kvm_x86_ops->set_nested_state = vmx_set_nested_state;
>> -	kvm_x86_ops->get_vmcs12_pages = nested_get_vmcs12_pages;
>> -	kvm_x86_ops->nested_enable_evmcs = nested_enable_evmcs;
>> -	kvm_x86_ops->nested_get_evmcs_version = nested_get_evmcs_version;
>> +	ops->check_nested_events = vmx_check_nested_events;
>> +	ops->get_nested_state = vmx_get_nested_state;
>> +	ops->set_nested_state = vmx_set_nested_state;
>> +	ops->get_vmcs12_pages = nested_get_vmcs12_pages;
>> +	ops->nested_enable_evmcs = nested_enable_evmcs;
>> +	ops->nested_get_evmcs_version = nested_get_evmcs_version;
> 
> A lazy guy like me would appreciate 'ops' -> 'vmx_x86_ops' rename as it
> would make 'git grep vmx_x86_ops' output more complete.
> 

I would prefer even more a kvm_x86_ops.nested struct but I would be okay
with a separate patch.

Paolo


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
