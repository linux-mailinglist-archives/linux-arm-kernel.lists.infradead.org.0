Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2C461C8765
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 12:57:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RaXftrwzLcFBeHZcbFFMq1HIGZgkjpc6zTjPxehLS2o=; b=j4OIrIwqwL+qMmVEYAW06aMRV
	sRneUYo/7YuP72aaRkT3hVDHmrAK2R3LQmI3TpOcFeMarduycnRgQTTOVTYV3v8Rpy9XNp/SGFFTd
	NUMFJWDbyB8edw2nLvh9gD4GktnGFbnbtvC67HU7d7lWNiFt7sjhaPVENnxn3OJWji1zNABXTGwUM
	eaJoEWtrJP1GEADiFCCtF/VCyXu3S3WzpXOFDjDBZbaeYRF1n7kG/6/lTEkxvzPVVkR1/7+IvkWxH
	TwxYkc6yCiGIm2S69om0GYxNErjkkWQggVwjC6+LOEjCc4xgs2UBlKQz/fZrfptjzxu/udGeIW+Cf
	1YsR7YO7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWeD8-0001aQ-3y; Thu, 07 May 2020 10:57:02 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWeCe-0001LE-Ow
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 10:56:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0C7ED1FB;
 Thu,  7 May 2020 03:56:32 -0700 (PDT)
Received: from [10.37.12.117] (unknown [10.37.12.117])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 93C723F68F;
 Thu,  7 May 2020 03:56:26 -0700 (PDT)
Subject: Re: [PATCH] KVM: arm/arm64: release kvm->mmu_lock in loop to prevent
 starvation
To: giangyi@amazon.com, maz@kernel.org
References: <20200415084229.29992-1-giangyi@amazon.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <0e448ae0-af4c-3f0a-2dd5-6ab86c0d60c0@arm.com>
Date: Thu, 7 May 2020 12:01:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <20200415084229.29992-1-giangyi@amazon.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_035632_915821_6CE868BE 
X-CRM114-Status: GOOD (  19.18  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-kernel@vger.kernel.org, james.morse@arm.com,
 linux-arm-kernel@lists.infradead.org, julien.thierry.kdev@gmail.com,
 kvmarm@lists.cs.columbia.edu
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04/15/2020 09:42 AM, Jiang Yi wrote:
> Do cond_resched_lock() in stage2_flush_memslot() like what is done in
> unmap_stage2_range() and other places holding mmu_lock while processing
> a possibly large range of memory.
> 
> Signed-off-by: Jiang Yi <giangyi@amazon.com>
> ---
>   virt/kvm/arm/mmu.c | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/virt/kvm/arm/mmu.c b/virt/kvm/arm/mmu.c
> index e3b9ee268823..7315af2c52f8 100644
> --- a/virt/kvm/arm/mmu.c
> +++ b/virt/kvm/arm/mmu.c
> @@ -417,16 +417,19 @@ static void stage2_flush_memslot(struct kvm *kvm,
>   	phys_addr_t next;
>   	pgd_t *pgd;
>   
>   	pgd = kvm->arch.pgd + stage2_pgd_index(kvm, addr);
>   	do {
>   		next = stage2_pgd_addr_end(kvm, addr, end);
>   		if (!stage2_pgd_none(kvm, *pgd))
>   			stage2_flush_puds(kvm, pgd, addr, next);
> +
> +		if (next != end)
> +			cond_resched_lock(&kvm->mmu_lock);
>   	} while (pgd++, addr = next, addr != end);
>   }

Given that this is called under the srcu_lock this looks
good to me:

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

>   
>   /**
>    * stage2_flush_vm - Invalidate cache for pages mapped in stage 2
>    * @kvm: The struct kvm pointer
>    *
>    * Go through the stage 2 page tables and invalidate any cache lines
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
