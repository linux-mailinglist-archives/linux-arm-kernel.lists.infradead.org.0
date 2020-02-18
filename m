Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23D35162690
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 13:57:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pEJHpOT/L5mRxHzZbfbNAwAqD88ypbu0JUhxtGwugoE=; b=EkvG+Ru2Yn+XsxOt8lbS6qN9h
	fX2kctSqyOTWDlcizSAvtBxw59wrOEEr5wCFWCDkWbPltwZCmSw/5rlIpnfB/L+cXXSgFHIZ0TG/9
	df6BS+7cJaYIY1b2D2UnSpBOSNihVZGWbuiQyHZYZzOxtpXK0DhXhF8DeqboJCoSw70yvDICI91Mc
	cdqSKQ8zl2tmguBwKKQXin34ZxhGyZXJg1fWbHvp5mciHNmSR0MWfatO7tazacCSap8HwUELmoppy
	viGFyU8XA0U9w/3HwbRqkXbaYVpntWklUJNAEEZQvZ2FSpcSxHHDvsZtJOMjqhfCXuwhNuc6x1+AJ
	+xd70tGoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j42Qw-0006W1-I3; Tue, 18 Feb 2020 12:57:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j42Qp-0006Vb-96
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 12:56:56 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AFD1B2067D;
 Tue, 18 Feb 2020 12:56:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582030614;
 bh=iKFUgPb5d4wfMjQPUQ6PfD7r/Lrgwum7nR1aGEo56Sg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=O/IbGY37uwPKrghGWSj5fYgIG+tVi4bnCrTe+t+GuZLs+/InwmUJWB4iaisXXpcJ1
 6Ul3ch+0anb02OOcsm3wJ7nZ6YM9RbBBvdiT+yLSqIDKTDeBwbIxafGXuXV7s6He47
 OujAkjTApyvVqDxpf2CmqfHjh5OF4+D2rf+b0PCQ=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j42Qm-006Dkm-TA; Tue, 18 Feb 2020 12:56:53 +0000
MIME-Version: 1.0
Date: Tue, 18 Feb 2020 12:56:52 +0000
From: Marc Zyngier <maz@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH] arm64: kvm: Modernize annotation for __bp_harden_hyp_vecs
In-Reply-To: <20200218124456.10615-1-broonie@kernel.org>
References: <20200218124456.10615-1-broonie@kernel.org>
Message-ID: <49f7de5f1d86e7edcc34edb55d5011be@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: broonie@kernel.org, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_045655_359285_30A09ECC 
X-CRM114-Status: GOOD (  16.91  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Catalin Marinas <catalin.marinas@arm.com>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Mark,

I'd really appreciate it if you could send these as a series, instead of
an isolated patch every other day.

On 2020-02-18 12:44, Mark Brown wrote:
> We have recently introduced new macros for annotating assembly symbols
> for things that aren't C functions, SYM_CODE_START() and 
> SYM_CODE_END(),
> in an effort to clarify and simplify our annotations of assembly files.
> 
> Using these for __bp_harden_hyp_vecs is more involved than for most 
> symbols
> as this symbol is annotated quite unusually as rather than just have 
> the
> explicit symbol we define _start and _end symbols which we then use to
> compute the length. This does not play at all nicely with the new style
> macros. Since the size of the vectors is a known constant which won't 
> vary
> the simplest thing to do is simply to drop the separate _start and _end
> symbols and just use a #define for the size.
> 
> Ideally we would have a build time assert to make sure we got this 
> right
> but we don't have such a thing for assembly code and given how unlikely
> the size is to change it seems disproportionately difficult to write 
> one
> just for this.

Actually, we do have a pretty easy way to ensure this, see below.

[...]

> diff --git a/arch/arm64/kvm/hyp/hyp-entry.S 
> b/arch/arm64/kvm/hyp/hyp-entry.S
> index 0aea8f9ab23d..8976276685a1 100644
> --- a/arch/arm64/kvm/hyp/hyp-entry.S
> +++ b/arch/arm64/kvm/hyp/hyp-entry.S
> @@ -312,11 +312,11 @@ alternative_cb_end
>  .endm
> 
>  	.align	11
> -ENTRY(__bp_harden_hyp_vecs_start)
> +SYM_CODE_START(__bp_harden_hyp_vecs)
>  	.rept BP_HARDEN_EL2_SLOTS
>  	generate_vectors
>  	.endr

1:      .org __bp_harden_hyp_vecs + __BP_HARDEN_HYP_VECS_SZ
         .org 1b

If you got it wrong one way or another, the assembler will scream
about the origin going backward. See eb7c11ee3c5 for details.

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
