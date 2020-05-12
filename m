Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9280C1CF2B2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 12:40:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=O76RJ+CiGKxgVAXU5eZh0D3WOxjWyRwj3YA1uVf/iEs=; b=f+Rld756miZctjk7Njhy5ghMb
	LNPmE4ABfGQ8v8EnRIE4jdLliXpf3tF5zRnlK6A/BP+Fz09CDPdS2htQZYmdzW7y3xMNtvovjl4/V
	n8MoHFNzzJnnDzg764TkJSEo9E9x67d8Kc9SxwATIdOPKdki/DTgnNYIpeEDEeep3+dX72OakV8Nl
	QjMHimMpFMgoxOPKQDNnmhPYmBzq9OSa4jCx1vKkRMglciEH74kTntPXbGW0CySMLxYgmWrgjWeeB
	AnxGgyhfpBQL+Sm9zB1iger1b5mhTcIfjUJhiXTnzsYciFjonhqA36SViJA+Oo3Xkv5HUwWHLxWhl
	TEHHafkkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYSKj-00009u-SA; Tue, 12 May 2020 10:40:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYSKS-00005t-JY
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 10:40:06 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 704F5206DD;
 Tue, 12 May 2020 10:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589279999;
 bh=4u2DdZnbBOfH5sHqCv28xYPkeReFp8gr/JDYY65Yi48=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=DH7HX+hu1vbOs62ildJh2vK9t5KtpaxktDPdEB2tlwDGMYkOHWB0chJU3wK/ybod+
 00KZ8Y8NlXgVSt7iCdPyn4FUppYC6i8BgaHGniYIk9O+v++8uFsAvJdnscAAUkxFIs
 wFKe1QtNCeHngIo2hJJCTyHLv3lcBRKywcaxXsFY=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jYSKL-00BcWZ-MH; Tue, 12 May 2020 11:39:57 +0100
MIME-Version: 1.0
Date: Tue, 12 May 2020 11:39:57 +0100
From: Marc Zyngier <maz@kernel.org>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH] arm64/cpufeature: Add ID_AA64MMFR0_PARANGE_MASK
In-Reply-To: <1589249606-27177-1-git-send-email-anshuman.khandual@arm.com>
References: <1589249606-27177-1-git-send-email-anshuman.khandual@arm.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <b01bb1772b291e23ea82ff5855ee7e12@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: anshuman.khandual@arm.com,
 linux-arm-kernel@lists.infradead.org, catalin.marinas@arm.com, will@kernel.org,
 james.morse@arm.com, linux-kernel@vger.kernel.org,
 kvmarm@lists.cs.columbia.edu
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_034004_682671_6B791D16 
X-CRM114-Status: GOOD (  15.17  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Anshuman,

On 2020-05-12 03:13, Anshuman Khandual wrote:
> This replaces multiple open encoding (0x7) with 
> ID_AA64MMFR0_PARANGE_MASK
> thus cleaning the clutter. It modifies an existing ID_AA64MMFR0 helper 
> and
> introduces a new one i.e id_aa64mmfr0_iparange() and 
> id_aa64mmfr0_parange()
> respectively.
> 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Marc Zyngier <maz@kernel.org>
> Cc: James Morse <james.morse@arm.com>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> Cc: kvmarm@lists.cs.columbia.edu
> 
> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
> ---
> This applies after (https://patchwork.kernel.org/patch/11541893/).
> 
>  arch/arm64/include/asm/cpufeature.h | 11 ++++++++++-
>  arch/arm64/kernel/cpufeature.c      |  5 ++---
>  arch/arm64/kvm/reset.c              |  9 +++++----
>  3 files changed, 17 insertions(+), 8 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/cpufeature.h
> b/arch/arm64/include/asm/cpufeature.h
> index 1291ad5a9ccb..320cfc5b6025 100644
> --- a/arch/arm64/include/asm/cpufeature.h
> +++ b/arch/arm64/include/asm/cpufeature.h
> @@ -706,8 +706,17 @@ void arm64_set_ssbd_mitigation(bool state);
> 
>  extern int do_emulate_mrs(struct pt_regs *regs, u32 sys_reg, u32 rt);
> 
> -static inline u32 id_aa64mmfr0_parange_to_phys_shift(int parange)
> +#define ID_AA64MMFR0_PARANGE_MASK 0x7

I still disagree with this 7. Per the letter of the architecture, it
is wrong and should be 0xf, just like any other property described
in an ID register.

> +
> +static inline u32 id_aa64mmfr0_parange(u64 mmfr0)
>  {
> +	return mmfr0 & ID_AA64MMFR0_PARANGE_MASK;
> +}
> +
> +static inline u32 id_aa64mmfr0_iparange(u64 mmfr0)

There is also no such thing as an IPA range in the architecture.
Everything is PA. The only thing that actually describe an IPA
range is what KVM makes of it.

Overall, this patch confuses me more than anything else. I'd rather
you fix ID_AA64MMFR0_PARANGE_MASK to have the right value and be
done with it.

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
