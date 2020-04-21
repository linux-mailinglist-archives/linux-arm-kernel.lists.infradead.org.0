Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E2FD1B2617
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 14:32:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uXxDNhVVua5cjAOVBgukumP/V8OFYriHcb4rId9EQSU=; b=c2l6lKu9uIEppT
	CappnDxEko3qj3viDJPOOWXhhKDrDlkNrcqLpk+eo5fHLlmfEroOMyY0XCiVo6adsoRRSR9jPnwE9
	HzjpFOE4RUyUCHbhiM0wGCWKm/IKmXn1BjvkYutbKO6EIEA2mpbqx7QKDLJQk9uv7hVM/eTCLxIUl
	pIXi0No3EAcij/gw3TxviZUGNAfjEL769wTmPFEt8y/dbp9tUcCZanxtH1k4ooVlCIWlrdJCG9dso
	Y6hQHzodFi/y/oJE0RKNJiK3IyAxXGIlMBDZMCubClLkQCMaReunQZ10RnQ9hLrFJoswOK8lOqifo
	bC29XySdebEdm137V9mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQs4K-0000T3-5l; Tue, 21 Apr 2020 12:32:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQs4C-0000Rw-3T
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 12:31:57 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 903E42070B;
 Tue, 21 Apr 2020 12:31:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587472315;
 bh=giULxdNXPzDCnwQ0D0j+NlFvih/Iz/GiAcWHzMDKaX8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kIH1xpTac4Ypo0E7ABszu7rfMZ3nqHk+wJR2p6TUUcHPmBiFzmrFqg/jqp1ET39hX
 qjNtLbaCOMAgCS14YwxXwziewd3RTwrrHU78911Hu/ALiyd3Pd2iIw3t/IAtkNXN0n
 DMl/9hYHuSmart12B9HChOqahVYJlOIsJq+0rJ04=
Date: Tue, 21 Apr 2020 13:31:51 +0100
From: Will Deacon <will@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH] arm64: sync kernel APIAKey when installing
Message-ID: <20200421123150.GA17875@willie-the-truck>
References: <20200421121014.53120-1-mark.rutland@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200421121014.53120-1-mark.rutland@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_053156_163377_EF5FEAB7 
X-CRM114-Status: GOOD (  14.08  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org, Marc Zyngier <maz@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 21, 2020 at 01:10:14PM +0100, Mark Rutland wrote:
> A direct write to a APxxKey_EL1 register requires a context
> synchronization event to ensure that indirect reads made by subsequent
> instructions (e.g. AUTIASP, PACIASP) observe the new value.
> 
> When we initialize the boot task's APIAKey in boot_init_stack_canary()
> via ptrauth_keys_switch_kernel() we miss the necessary ISB, and so there
> is a window where instructions are not guaranteed to use the new APIAKey
> value. This has been observed to result in boot-time crashes where
> PACIASP and AUTIASP within a function used a mixture of the old and new
> key values.
> 
> Fix this by having ptrauth_keys_switch_kernel() synchronize the new key
> value with an ISB. At the same time, __ptrauth_key_install() is renamed
> to __ptrauth_key_install_nosync() so that it is obvious that this
> performs no synchronization itself.
> 
> Fixes: 28321582334c261c ("arm64: initialize ptrauth keys for kernel booting task")
> Signed-off-by: Mark Rutland <mark.rutland@arm.com>
> Reported-by: Will Deacon <will@kernel.org>
> Cc: Amit Daniel Kachhap <amit.kachhap@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Marc Zyngier <maz@kernel.org>
> ---
>  arch/arm64/include/asm/pointer_auth.h | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)

Tested-by: Will Deacon <will@kernel.org>

Catalin -- please can you queue this for -rc3?

Cheers,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
