Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6388F8BFA0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 19:28:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YCBgK3l05lY6XzLii6B0eECCtBM7ZjCaIpHQntvL/zY=; b=XjdXfZGk4f5/NJ
	XC+qwonE7c2MICZ6jucFc1Qry0gX/g/A+dH43bxN9jfMAx5Enfj4/+V1gO0BnfOJivWkClrmx96VC
	BBJnDXeA2QqOdJhJE2rskWZec6de5pHeRQjNnql/l+CcuYml3q717mbhG+k9Jq8PJporPg+yLEsNn
	lMaLqb0A+6gUS09cE0aTtJyHvqAungltaJ8F5lGOJTdLzIKkVx1NXM/RfVOL3ET7dH1cqxtMCx9oa
	/mYno1jmCRXvNq6hfh8S3N5ymnJ8EzR0EQdOf7ymAjgshclMcopGjr2dHH+L0vVJ9kbwHgyE1KX/x
	fdcfFN8x3qzl95guIpsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxabK-0004xa-KY; Tue, 13 Aug 2019 17:28:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxabA-0004xH-KK
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 17:28:41 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 96A4A20663;
 Tue, 13 Aug 2019 17:28:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565717320;
 bh=JEwWMWRzCv8jBO7QhJaDbsJqlFf90WgMuo4xVY8W+DI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nhkxOugRBTp0F/TdHpZJJOERL5yRdnD/OSJ04g/J4Hwwd39VnfQRYv+iFmTcE1y/f
 NteDfPOiwclJVlQIc1FknJnkXzk0CTBAwwmmTz/3X8YFOcBZ3IRg0ibXrb5OglCusi
 jR/Wfc0+j6fc6YsoT9qahSeC1fcUtRhtKAH2TBAM=
Date: Tue, 13 Aug 2019 18:28:36 +0100
From: Will Deacon <will@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH 2/2] arm64: Don't use KPTI where we have E0PD
Message-ID: <20190813172836.vbotnv35w3w62b2y@willie-the-truck>
References: <20190812125738.17388-1-broonie@kernel.org>
 <20190812125738.17388-3-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190812125738.17388-3-broonie@kernel.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_102840_691950_1EA76974 
X-CRM114-Status: GOOD (  23.23  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 12, 2019 at 01:57:38PM +0100, Mark Brown wrote:
> Since E0PD is intended to fulfil the same role as KPTI we don't need to
> use KPTI on CPUs where E0PD is available, we can rely on E0PD instead.
> Change the check that forces KPTI on when KASLR is enabled to check for
> E0PD before doing so, CPUs with E0PD are not expected to be affected by
> meltdown so should not need to enable KPTI for other reasons.
> 
> Since we repeat the KPTI check for all CPUs we will still enable KPTI if
> any of the CPUs in the system lacks E0PD. Since KPTI itself is not changed
> by this patch once we enable KPTI we will do so for all CPUs. This is safe
> but not optimally performant for such systems.
> 
> KPTI can still be forced on from the command line if required.
> 
> Signed-off-by: Mark Brown <broonie@kernel.org>
> ---
>  arch/arm64/kernel/cpufeature.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> index 4aa1d2026bef..322004409211 100644
> --- a/arch/arm64/kernel/cpufeature.c
> +++ b/arch/arm64/kernel/cpufeature.c
> @@ -995,7 +995,7 @@ static bool unmap_kernel_at_el0(const struct arm64_cpu_capabilities *entry,
>  
>  	/* Useful for KASLR robustness */
>  	if (IS_ENABLED(CONFIG_RANDOMIZE_BASE) && kaslr_offset() > 0) {
> -		if (!__kpti_forced) {
> +		if (!__kpti_forced && !this_cpu_has_cap(ARM64_HAS_E0PD)) {
>  			str = "KASLR";
>  			__kpti_forced = 1;
>  		}

Hmm. I'm surprised you haven't had to hack arm64_kernel_use_ng_mappings().

If you boot with RANDOMIZE_BASE=y on a machine with E0PDx support, can
you dump the kernel page tables in /sys/kernel/debug/kernel_page_tables
and check that they're using global mappings? I think some of the early
mappings might still be nG with your patch.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
