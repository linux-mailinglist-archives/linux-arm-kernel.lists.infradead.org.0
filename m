Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F6D0161502
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 15:48:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OPoDBBr6Q7AhotfMZPfukII9Zbwr3e+VT7TzMHm+tBA=; b=W2/Ekk8FxznqaGULIxYtfEPRN
	JnZCGqF6UOkPBhanz40p5WQwJVgg9dlRW132mCubZW5txFbgU3zgu3L8A1aocQf+9T4lWqIITZYR4
	jmy7qcXYiBUevEhwjV4IMAGAG+OgRZnq+HoS0tmQohgFVFG8MQPYPWlvqGNON5Avm4NcQFNmsWGAX
	21x6xnk/0s9bHOT7/Npbx3B/EkIa9E2vKBzJUh85iCLnkAd1+gRn+SzhSio87rDS+0kC37H57OXJt
	myhibtqVOQWYHYB8pPc1+/rxJgwvoEqLGIwYhUH1uhnN6JBudFvfsgHgH8jP9Uw/Kf5HVNf0mTtpZ
	uVq3bk7hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3hh0-0001Oa-VL; Mon, 17 Feb 2020 14:48:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3hgs-0001Nz-Ls
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 14:48:07 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0455520718;
 Mon, 17 Feb 2020 14:48:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581950886;
 bh=4RDGiKasjOOwAHqmFqM8yA6PTsGQyqGLDKJWJTZ7JPQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=djxRcUTVTHoQofx5RN5pFPWhHWdIEatYnYEtbshekzpKobmeBO8TTMGDDYk40B76u
 DidyHgN4w0Es721nAk2OZ3BrCsXTuLBAN2j0Nb7UebY+NZOfi+gHTyuZwPaqK1jSod
 aB0L11833MLQPBanSO0r+yzSh/Dq9QWYDID5WBOY=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j3hgq-005wdT-7m; Mon, 17 Feb 2020 14:48:04 +0000
MIME-Version: 1.0
Date: Mon, 17 Feb 2020 14:48:04 +0000
From: Marc Zyngier <maz@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH 0/2] arm64: add finalized cap helper
In-Reply-To: <20200210122708.38826-1-mark.rutland@arm.com>
References: <20200210122708.38826-1-mark.rutland@arm.com>
Message-ID: <58fa19a5899eb3295783afa7baf15c4e@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: mark.rutland@arm.com, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, catalin.marinas@arm.com, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com, will@kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_064806_742240_86C41F40 
X-CRM114-Status: GOOD (  13.55  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: suzuki.poulose@arm.com, catalin.marinas@arm.com, james.morse@arm.com,
 linux-arm-kernel@lists.infradead.org, will@kernel.org,
 kvmarm@lists.cs.columbia.edu, julien.thierry.kdev@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-02-10 12:27, Mark Rutland wrote:
> Across arm64 we use cpus_have_const_cap() to check for a capability
> without a runtime check. Prior to capabilities being finalized
> cpus_have_const_cap() falls back to a runtime check of the cpu_hwcaps
> array. In some cases we know that code is never invoked prior to the
> capabilities being finalized, and the fallback code is redundant (and
> unsound if ever executed in hyp context).
> 
> So that we can avoid the redundant code and detect when the caps are
> unexpectedly checked too early, this series adds a new
> cpus_have_final_cap() helper, and migrates the KVM hyp code over to it.
> 
> I'm hoping to use this as part of the entry.S -> entry-common.c
> conversion, and there are other places in arm64 that could potentially
> use this today.
> 
> Thanks,
> Mark.
> 
> Mark Rutland (2):
>   arm64: cpufeature: add cpus_have_final_cap()
>   arm64: kvm: hyp: use cpus_have_final_cap()
> 
>  arch/arm64/include/asm/cpufeature.h | 47 
> +++++++++++++++++++++++++++++++++----
>  arch/arm64/kvm/hyp/switch.c         | 14 +++++------
>  arch/arm64/kvm/hyp/sysreg-sr.c      |  8 +++----
>  arch/arm64/kvm/hyp/tlb.c            |  8 +++----
>  4 files changed, 57 insertions(+), 20 deletions(-)

Seems like a valuable optimization. For the series:

Reviewed-by: Marc Zyngier <maz@kernel.org>

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
