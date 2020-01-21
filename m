Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1897F143C2C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 12:43:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2B4d8yArajVRLpHMoa/hBuvuoBBIOLcni2b+FA7N/Xo=; b=lcphT16vap5cDgVTf4bPfhL36
	C/EV2QXXWkUoFf6E55+2kumnJkSPH2N7yYP25Oq9YhLJDkHGB9pWT5t+t0dCMEvrygyiLZlUhAudC
	MwP2ZjYEqtXCtFjzBnHhtHyTC5SLez3g+N/ZCOxdEeCODqX/HMnVP6vbKiwVW8jWAOLwMyAWK0lAS
	zo6ntWl1BghjzNcOVER5LCzmT6V6DiLCXPdcLabWu2ZCIiO+5kMgFUyr3drST0W7WN1mdhsTFpvjF
	n7e9O/5n6HMOzeZLGUswatie1qpX74wKo4ilCtXsbFOl048oIsdEvMv+4YlEP5aXTq5+zkkM5GnrI
	fB1+9iALQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itrwI-0002lH-S5; Tue, 21 Jan 2020 11:43:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itrw8-0002kr-2w
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 11:43:13 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7998720882;
 Tue, 21 Jan 2020 11:43:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579606990;
 bh=OyaD3KWZFeQnIfDMhLTck+nfHj8nKKYYGTK3HDGxqNw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Mwe5EFKCT8ZriE6DI0uA8MfzhonTA38u6DxTQq78YTtEK/MSrVuPpB9ZwC0hU+rND
 jS3S7d48XTL5IblfT7NzDD/Bq/9RKl6BIzlbE667CHvOrAr2V2CUw+GUPx82yGasQo
 cz5PDo2fq446LbqHbBKeB/6632ESJTNqpFLgJuHY=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1itrw4-000USs-PC; Tue, 21 Jan 2020 11:43:08 +0000
MIME-Version: 1.0
Date: Tue, 21 Jan 2020 11:43:08 +0000
From: Marc Zyngier <maz@kernel.org>
To: Olof Johansson <olof@lixom.net>
Subject: Re: [PATCH] KVM: arm: Fix build after MMIO cleanup
In-Reply-To: <20200121031007.106259-1-olof@lixom.net>
References: <20200119181116.374-1-maz@kernel.org>
 <20200121031007.106259-1-olof@lixom.net>
Message-ID: <0e4e302783ffecf37eb809553f988625@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.8
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: olof@lixom.net, james.morse@arm.com,
 Christoffer.Dall@arm.com, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_034312_150408_D6836087 
X-CRM114-Status: GOOD (  14.30  )
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Christoffer Dall <Christoffer.Dall@arm.com>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-01-21 03:10, Olof Johansson wrote:
> Looks like the mmio_decode field was accidentally left in on 32-bit:
> 
> In file included from /build/include/linux/kvm_host.h:36,
>                  from /build/arch/arm/kernel/asm-offsets.c:15:
> arch/arm/include/asm/kvm_host.h:205:20: error: field 'mmio_decode' has
> incomplete type
> 
> Fixes: 480bfa6478c8 ("KVM: arm/arm64: Cleanup MMIO handling")
> Cc: Marc Zyngier <maz@kernel.org>
> Signed-off-by: Olof Johansson <olof@lixom.net>
> ---
>  arch/arm/include/asm/kvm_host.h | 3 ---
>  1 file changed, 3 deletions(-)
> 
> diff --git a/arch/arm/include/asm/kvm_host.h 
> b/arch/arm/include/asm/kvm_host.h
> index acf4c87e8321a..bd2233805d995 100644
> --- a/arch/arm/include/asm/kvm_host.h
> +++ b/arch/arm/include/asm/kvm_host.h
> @@ -201,9 +201,6 @@ struct kvm_vcpu_arch {
>  	 /* Don't run the guest (internal implementation need) */
>  	bool pause;
> 
> -	/* IO related fields */
> -	struct kvm_decode mmio_decode;
> -
>  	/* Cache some mmu pages needed inside spinlock regions */
>  	struct kvm_mmu_memory_cache mmu_page_cache;

Ouch. Thanks for that. I've squashed the fix in the original patch
(which I didn't really intend to be in -next just yet - not quite
sure what I did here).

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
