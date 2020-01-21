Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86D9E143E03
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 14:28:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z6SsUoj2BATmkPdSOXkMqaEBgQD/QMJNuozN1qBxcnk=; b=qcP1PHPPy8+jxOkRHU+K55e3w
	NtBFGrh9drIH+7lm9bh29kfjEw5e6T/yuG/FT7On3E21mHiToylOq1nomlz8N9ir1+QhUmVHeSfhK
	GLXTGMMb30lP+BFYosr18SVO1EUtFh76MozCr6dMk3AVll1uGTUoQPXKUP42Gnvu38WmTGFTpwzT8
	6DeyVIzfyXrD8Qngy+0DH+p3PefzS0Ucz7+QkeL5GREMLZ05dFAGtPXQRYutW8//7HcYXc6ilmH/o
	ohNoAb4GNnKnUKN2ISIlmvS6WeSR6U7crK07olYVSFZXY+QSdqKDh5W42M/FtUUjpTgAQqy1wzGg4
	PCIgp88LA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itta3-0002QM-2J; Tue, 21 Jan 2020 13:28:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ittZt-0002Ow-V8
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 13:28:23 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 39B96217F4;
 Tue, 21 Jan 2020 13:28:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579613301;
 bh=AhGovkny9mHiU777mnAi1nRCVFAloKS1CBQv7wXSVtM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=IInYcauyTt9wju7JL4lCa/vspqY6NFY9xa5WW/qZ90BQJZM/NznIulTRH2VWAP4DX
 Pv0aD+x2TcpNKMpbHOkfKr40d2YCUO25Gy9HHfGy/+FEOlHW/oEFtHQ2RXz9xYvXxG
 Yu5xmsOUSl+ckvGYq1XOKTWoOBXToivnhGcj7Vhg=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1ittZr-000VZH-Fu; Tue, 21 Jan 2020 13:28:19 +0000
MIME-Version: 1.0
Date: Tue, 21 Jan 2020 13:28:19 +0000
From: Marc Zyngier <maz@kernel.org>
To: Gavin Shan <gshan@redhat.com>
Subject: Re: [PATCH] KVM: arm/arm64: Fix young bit from mmu notifier
In-Reply-To: <20200121055659.19560-1-gshan@redhat.com>
References: <20200121055659.19560-1-gshan@redhat.com>
Message-ID: <55ae5a0f91f2e675a4e71d83bef9d911@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.8
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: gshan@redhat.com, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, drjones@redhat.com,
 eric.auger@redhat.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_052822_020791_9F59516F 
X-CRM114-Status: GOOD (  15.45  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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
Cc: eric.auger@redhat.com, drjones@redhat.com, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-01-21 05:56, Gavin Shan wrote:
> kvm_test_age_hva() is called upon mmu_notifier_test_young(), but wrong
> address range has been passed to handle_hva_to_gpa(). With the wrong
> address range, no young bits will be checked in handle_hva_to_gpa().
> It means zero is always returned from mmu_notifier_test_young().
> 
> This fixes the issue by passing correct address range to the underly
> function handle_hva_to_gpa(), so that the hardware young (access) bit
> will be visited.
> 
> Cc: stable@vger.kernel.org # v4.1+
> Fixes: 35307b9a5f7e ("arm/arm64: KVM: Implement Stage-2 page aging")
> Signed-off-by: Gavin Shan <gshan@redhat.com>
> ---
>  virt/kvm/arm/mmu.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/virt/kvm/arm/mmu.c b/virt/kvm/arm/mmu.c
> index 0b32a904a1bb..a2777efb558e 100644
> --- a/virt/kvm/arm/mmu.c
> +++ b/virt/kvm/arm/mmu.c
> @@ -2147,7 +2147,8 @@ int kvm_test_age_hva(struct kvm *kvm, unsigned 
> long hva)
>  	if (!kvm->arch.pgd)
>  		return 0;
>  	trace_kvm_test_age_hva(hva);
> -	return handle_hva_to_gpa(kvm, hva, hva, kvm_test_age_hva_handler, 
> NULL);
> +	return handle_hva_to_gpa(kvm, hva, hva + PAGE_SIZE,
> +				 kvm_test_age_hva_handler, NULL);
>  }
> 
>  void kvm_mmu_free_memory_caches(struct kvm_vcpu *vcpu)

I knew this start/end thing (instead of start/size) would bite us
one of these days. Terribly embarrassing. On the other hand, who
really wants to swap things out? ;-)

Out of curiosity, how did you find this one?

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
