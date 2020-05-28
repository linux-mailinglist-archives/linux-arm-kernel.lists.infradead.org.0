Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 940FC1E5A76
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 10:12:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JjEeeq0URKllaRhRC1JgOUaj0ddVu2BwL/N2tYDX4h8=; b=EBrP8BM/NNb0o+
	Pc7PDvDaVtLWswx539cS10Y1YnuleBZSs/GPstf2/q50T1I1AbsAxmj0TzGvoMAGwSDu7b9jVpRFS
	YV1PvphTpVQxgUv1bLVH8wWTRaIz/NsmPBkux0i0VqKKTMHephLtnNAr/lSYZpFMzts14QLkup89L
	U//skYdsIlquSB4UxjemdcZKsmhrNSrmFtPTYEcE+xgPAax7h/1TGCj8K/utcwThq6gSiAv2ee5J+
	Y/7gXwyMje/03BZcAS7pfiL4gY3uFFisTq8NxLMQlrw2SjvC8wEy+cNBWmAgnQ27zpbH+jXEZBUrP
	BpZECX5DuR8GiGU3Tosw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeDeI-00062s-LC; Thu, 28 May 2020 08:12:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeDe5-00062C-Mj
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 08:12:11 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F1F022088E;
 Thu, 28 May 2020 08:12:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590653529;
 bh=imndFlcgv7RLpEhOci747HlNeOoZ3mqc+1kh6hejVU0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BEzQtCvp7Q1N3+o5PEIdiL0s0MD9yhrDJNLozSFCWwfXke0u9jUGoCqCmMtJakLfJ
 4VNOjmybR6zYLbHZeVhBMFUokJh7Qzw1Ooy8BjO9eDQkSqNp/LRqdvdLDobXTmuxj3
 TfyFgCQB8DEwAc4KAzXNrtD0iMPKZeZDNwdVyBLE=
Date: Thu, 28 May 2020 09:12:04 +0100
From: Will Deacon <will@kernel.org>
To: Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>
Subject: Re: [PATCH/RFC] arm64/kernel: Fix return value when cpu_online()
 fails in __cpu_up()
Message-ID: <20200528081204.GC22156@willie-the-truck>
References: <20200527233457.2531118-1-nobuhiro1.iwamatsu@toshiba.co.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200527233457.2531118-1-nobuhiro1.iwamatsu@toshiba.co.jp>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_011209_756790_6247CD80 
X-CRM114-Status: GOOD (  18.99  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, catalin.marinas@arm.com,
 "Signed-off-by : Gavin Shan" <gshan@redhat.com>,
 Yuji Ishikawa <yuji2.ishikawa@toshiba.co.jp>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 28, 2020 at 08:34:57AM +0900, Nobuhiro Iwamatsu wrote:
> If boot_secondary() was successful, and cpu_online() was an error in
> __cpu_up(), -EIO was returned, but 0 is returned by commit d22b115cbfbb7
> ("arm64/kernel: Simplify __cpu_up() by bailing out early").
> Therefore, bringup_wait_for_ap() causes the primary core to wait for a
> long time, which may cause boot failure.
> This commit sets -EIO to return code under the same conditions.
> 
> Fixes: d22b115cbfbb7 ("arm64/kernel: Simplify __cpu_up() by bailing out early")
> CC: Signed-off-by: Gavin Shan <gshan@redhat.com>
> CC: Catalin Marinas <catalin.marinas@arm.com>
> CC: Mark Rutland <mark.rutland@arm.com>
> Tested-by: Yuji Ishikawa <yuji2.ishikawa@toshiba.co.jp>
> Signed-off-by: Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>
> ---
>  arch/arm64/kernel/smp.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
> index 061f60fe452f7..ea677680e4277 100644
> --- a/arch/arm64/kernel/smp.c
> +++ b/arch/arm64/kernel/smp.c
> @@ -137,6 +137,7 @@ int __cpu_up(unsigned int cpu, struct task_struct *idle)
>  	if (cpu_online(cpu))
>  		return 0;
>  
> +	ret = -EIO;
>  	pr_crit("CPU%u: failed to come online\n", cpu);
>  	secondary_data.task = NULL;
>  	secondary_data.stack = NULL;

This appears to restore the old behaviour, so looks good to me. I'd probably
just replace the final 'return ret' with 'return -EIO' since it's never
going to be anything else.

Also -- aren't you in a pretty serious mess if the CPU starts but doesn't
come online? I think the patch is fine, but this really shouldn't happen,
right? Could you share your dmesg?

Either way:

Acked-by: Will Deacon <will@kernel.org>

Catalin -- do you want to take this (the problematic change was introduced
during the last merge window afaict)?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
