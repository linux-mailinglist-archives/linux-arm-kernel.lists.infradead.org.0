Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 360642FB5C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 14:01:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XosMt4rWYSzxLsx1o2C3XDns2OrFvXojzKyrFuUAF2o=; b=h2HfNMVq8X9TxN
	KRktwXv421XJFVeEmCL6zr4edrfe3dI2pvfQYkcP1Fp48Lq+bk8etWL72+kz4U9Lsc++0geFMNhIX
	cg/K0ShIv1r1KSex0vvpyrwE4Kmz9a7Bqmrx3vKxUxx+BvKYEbEJ506xIDQqNVyaaJ7DFjFkwf99w
	WgNx6AwLeS96MrCc+3d8hRX5JNrsxhixHdcIhGKvsFsRheiMrpbwF7pYmm9UUPR+zra+jqAnBOZD9
	/saftE8l1BomaOaaK2RUtJkcP1r51ObysaaxUem1K/a9VZ/bqk4b8GM1EwHaajvMCyCQDPzsQs2E6
	QiMT2CoFiRDpJFQHE+1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWJkf-0001PC-I5; Thu, 30 May 2019 12:01:45 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWJkW-0001M0-ED
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 12:01:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E2154374;
 Thu, 30 May 2019 05:01:33 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2086D3F5AF;
 Thu, 30 May 2019 05:01:31 -0700 (PDT)
Date: Thu, 30 May 2019 13:01:29 +0100
From: Will Deacon <will.deacon@arm.com>
To: Julien Grall <julien.grall@arm.com>
Subject: Re: [PATCH] arm64/cpufeature: Convert hook_lock to raw_spin_lock_t
 in cpu_enable_ssbs()
Message-ID: <20190530120129.GD13751@fuggles.cambridge.arm.com>
References: <20190530113058.1988-1-julien.grall@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190530113058.1988-1-julien.grall@arm.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_050136_483006_896826DC 
X-CRM114-Status: GOOD (  21.92  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-rt-users@vger.kernel.org, suzuki.poulose@arm.com,
 catalin.marinas@arm.com, bigeasy@linutronix.de, linux-kernel@vger.kernel.org,
 rostedt@goodmis.org, tglx@linutronix.de, dave.martin@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 30, 2019 at 12:30:58PM +0100, Julien Grall wrote:
> cpu_enable_ssbs() is called via stop_machine() as part of the cpu_enable
> callback. A spin lock is used to ensure the hook is registered before
> the rest of the callback is executed.
> 
> On -RT spin_lock() may sleep. However, all the callees in stop_machine()
> are expected to not sleep. Therefore a raw_spin_lock() is required here.
> 
> Given this is already done under stop_machine() and the work done under
> the lock is quite small, the latency should not increase too much.
> 
> Signed-off-by: Julien Grall <julien.grall@arm.com>
> 
> ---
> 
> It was noticed when looking at the current use of spin_lock in
> arch/arm64. I don't have a platform calling that callback, so I have
> hacked the code to reproduce the error and check it is now fixed.
> ---
>  arch/arm64/kernel/cpufeature.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> index ca27e08e3d8a..2a7159fda3ce 100644
> --- a/arch/arm64/kernel/cpufeature.c
> +++ b/arch/arm64/kernel/cpufeature.c
> @@ -1194,14 +1194,14 @@ static struct undef_hook ssbs_emulation_hook = {
>  static void cpu_enable_ssbs(const struct arm64_cpu_capabilities *__unused)
>  {
>  	static bool undef_hook_registered = false;
> -	static DEFINE_SPINLOCK(hook_lock);
> +	static DEFINE_RAW_SPINLOCK(hook_lock);
>  
> -	spin_lock(&hook_lock);
> +	raw_spin_lock(&hook_lock);
>  	if (!undef_hook_registered) {
>  		register_undef_hook(&ssbs_emulation_hook);
>  		undef_hook_registered = true;
>  	}
> -	spin_unlock(&hook_lock);
> +	raw_spin_unlock(&hook_lock);

Makes sense to me. We could probably avoid the lock entirely if we wanted
to (via atomic_dec_if_positive), but I'm not sure it's really worth it.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
