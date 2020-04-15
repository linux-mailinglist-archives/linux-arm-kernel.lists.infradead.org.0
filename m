Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C0D71AAD34
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 18:14:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=baPpOz5z6/v9XIRlXW3z9uFRKHVAbsnaIYy5szYtwRI=; b=HtUjwy6NILu2Ns
	ddC3BuIO1uZqykpEj2Hxh/nPqZgCm9DdbSLDtfIJprnwaMB+6JSHVE6cl4afmOqEiA7wjN/7pFEeH
	IEEvWKDidLYsWbuIZwOX78Hy62+QD7peaQlg1R/LAyUAhr9zcxEmSDhZ1HmetRrk2EDvxxa7FjbrW
	NhDMtIlo2qGOL0nqLxrYO6xwiYMq/L9w0iQV/izAldynk+Zle3VMryJrF2Wr9hJPjqZGyIPNwyd26
	EMKmx31Ly5WOUSZWrPUscQBJeiR4nn+1IwQt/++slIXhBosYsPc4RUnGDHK2FxqyudXhOP3JZSA7P
	OyfdGI4uz+KgLGbNQJfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOkg1-0008RO-5t; Wed, 15 Apr 2020 16:14:13 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOkfr-0008QS-VY
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 16:14:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586967241;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=RJeTo/zRnrqHhvOgPTgaHSH4vrzTtRuXcGPzKEfUHnY=;
 b=IrQXpc172A/c9nxpXNbRKtBrk+hkcC8cFUwgnwZ34ymZhfUa9PDCBush1BA/fEZ9lg9yRt
 7sXjZBhgpdSj/0zkzIiEhVCwrVsTKSTAcgV0r2xX6QGzqEsRaOwzhpz9Js76Jj0LEq8sN+
 /u55g3Req4bhCfTo59X82c8OiMKL714=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-505-IIvLWqsUNjiMcLlyUj0Wdg-1; Wed, 15 Apr 2020 12:13:59 -0400
X-MC-Unique: IIvLWqsUNjiMcLlyUj0Wdg-1
Received: by mail-wr1-f69.google.com with SMTP id r17so142608wrg.19
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 09:13:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=RJeTo/zRnrqHhvOgPTgaHSH4vrzTtRuXcGPzKEfUHnY=;
 b=bNQW3F1l/J5YY955sdtm/YYM8gg6ASb8tZbKwag+wnDKSgpc2zNLLDVyKBeiIAKIWB
 si7dIqdbnLfV2Y/4SflsHAjlM6g6jEfcpMk2xi8bAk+5NaosfJqseYDon4dQKCQpTxAQ
 lr3ozhl+kIsEBi0HzeLAOM73CO02SVVwSpmzSaixEdSUHQPxnMFMWTq5fLC88IkSnrBY
 TN5dimKdXgjoMszRhL0SNmSe2mUszkkq6zLMxaZt2nyfCN2AHzmqMAUo59s//CphkUCR
 ZDFrr764B9BLDmlwr0ceA+GEoeOZHJ3MXafRV/Z+lFwYF3d19SCEhlaiqp6bIHUG7EDI
 qKdQ==
X-Gm-Message-State: AGi0PubJG8gMcDv+KmiYUNFEE4d1GW2L9xqRZaDOWF046PJxqOJRvTU3
 kdmr3iRjl/giQr8cE56skAPDP+NOVHAsC4/io15ZYURqMmAqWIJlcavTp845C/9XTETqWdIPbSp
 FHFhNlSeNQvENcNyMZMW+T1IaDUujLFzWa6Y=
X-Received: by 2002:adf:ff82:: with SMTP id j2mr18428717wrr.96.1586967238409; 
 Wed, 15 Apr 2020 09:13:58 -0700 (PDT)
X-Google-Smtp-Source: APiQypIDz/OV9eeQuwJYvgc7hCdaj4l2fEwtDfmedhtg4jVMeo+Svh1HHKzk8lWg60lun+SjucTPTg==
X-Received: by 2002:adf:ff82:: with SMTP id j2mr18428685wrr.96.1586967238108; 
 Wed, 15 Apr 2020 09:13:58 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:9066:4f2:9fbd:f90e?
 ([2001:b07:6468:f312:9066:4f2:9fbd:f90e])
 by smtp.gmail.com with ESMTPSA id p7sm24315229wrf.31.2020.04.15.09.13.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 15 Apr 2020 09:13:57 -0700 (PDT)
Subject: Re: [PATCH v2] KVM/arm64: Support enabling dirty log gradually in
 small chunks
To: Keqian Zhu <zhukeqian1@huawei.com>, kvm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu
References: <20200413122023.52583-1-zhukeqian1@huawei.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <be45ec89-2bdb-454b-d20a-c08898e26024@redhat.com>
Date: Wed, 15 Apr 2020 18:13:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200413122023.52583-1-zhukeqian1@huawei.com>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_091404_108867_92DB2543 
X-CRM114-Status: GOOD (  25.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, Marc Zyngier <maz@kernel.org>,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 James Morse <james.morse@arm.com>, Jay Zhou <jianjay.zhou@huawei.com>,
 wanghaibin.wang@huawei.com, Will Deacon <will@kernel.org>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 13/04/20 14:20, Keqian Zhu wrote:
> There is already support of enabling dirty log graually in small chunks
> for x86 in commit 3c9bd4006bfc ("KVM: x86: enable dirty log gradually in
> small chunks"). This adds support for arm64.
> 
> x86 still writes protect all huge pages when DIRTY_LOG_INITIALLY_ALL_SET
> is eanbled. However, for arm64, both huge pages and normal pages can be
> write protected gradually by userspace.
> 
> Under the Huawei Kunpeng 920 2.6GHz platform, I did some tests on 128G
> Linux VMs with different page size. The memory pressure is 127G in each
> case. The time taken of memory_global_dirty_log_start in QEMU is listed
> below:
> 
> Page Size      Before    After Optimization
>   4K            650ms         1.8ms
>   2M             4ms          1.8ms
>   1G             2ms          1.8ms
> 
> Besides the time reduction, the biggest income is that we will minimize
> the performance side effect (because of dissloving huge pages and marking
> memslots dirty) on guest after enabling dirty log.
> 
> Signed-off-by: Keqian Zhu <zhukeqian1@huawei.com>
> ---
>  Documentation/virt/kvm/api.rst    |  2 +-
>  arch/arm64/include/asm/kvm_host.h |  3 +++
>  virt/kvm/arm/mmu.c                | 12 ++++++++++--
>  3 files changed, 14 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/virt/kvm/api.rst b/Documentation/virt/kvm/api.rst
> index efbbe570aa9b..0017f63fa44f 100644
> --- a/Documentation/virt/kvm/api.rst
> +++ b/Documentation/virt/kvm/api.rst
> @@ -5777,7 +5777,7 @@ will be initialized to 1 when created.  This also improves performance because
>  dirty logging can be enabled gradually in small chunks on the first call
>  to KVM_CLEAR_DIRTY_LOG.  KVM_DIRTY_LOG_INITIALLY_SET depends on
>  KVM_DIRTY_LOG_MANUAL_PROTECT_ENABLE (it is also only available on
> -x86 for now).
> +x86 and arm64 for now).
>  
>  KVM_CAP_MANUAL_DIRTY_LOG_PROTECT2 was previously available under the name
>  KVM_CAP_MANUAL_DIRTY_LOG_PROTECT, but the implementation had bugs that make
> diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
> index 32c8a675e5a4..a723f84fab83 100644
> --- a/arch/arm64/include/asm/kvm_host.h
> +++ b/arch/arm64/include/asm/kvm_host.h
> @@ -46,6 +46,9 @@
>  #define KVM_REQ_RECORD_STEAL	KVM_ARCH_REQ(3)
>  #define KVM_REQ_RELOAD_GICv4	KVM_ARCH_REQ(4)
>  
> +#define KVM_DIRTY_LOG_MANUAL_CAPS   (KVM_DIRTY_LOG_MANUAL_PROTECT_ENABLE | \
> +				     KVM_DIRTY_LOG_INITIALLY_SET)
> +
>  DECLARE_STATIC_KEY_FALSE(userspace_irqchip_in_use);
>  
>  extern unsigned int kvm_sve_max_vl;
> diff --git a/virt/kvm/arm/mmu.c b/virt/kvm/arm/mmu.c
> index e3b9ee268823..1077f653a611 100644
> --- a/virt/kvm/arm/mmu.c
> +++ b/virt/kvm/arm/mmu.c
> @@ -2265,8 +2265,16 @@ void kvm_arch_commit_memory_region(struct kvm *kvm,
>  	 * allocated dirty_bitmap[], dirty pages will be be tracked while the
>  	 * memory slot is write protected.
>  	 */
> -	if (change != KVM_MR_DELETE && mem->flags & KVM_MEM_LOG_DIRTY_PAGES)
> -		kvm_mmu_wp_memory_region(kvm, mem->slot);
> +	if (change != KVM_MR_DELETE && mem->flags & KVM_MEM_LOG_DIRTY_PAGES) {
> +		/*
> +		 * If we're with initial-all-set, we don't need to write
> +		 * protect any pages because they're all reported as dirty.
> +		 * Huge pages and normal pages will be write protect gradually.
> +		 */
> +		if (!kvm_dirty_log_manual_protect_and_init_set(kvm)) {
> +			kvm_mmu_wp_memory_region(kvm, mem->slot);
> +		}
> +	}
>  }
>  
>  int kvm_arch_prepare_memory_region(struct kvm *kvm,
> 

Marc, what is the status of this patch?

Paolo


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
