Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0952613B217
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 19:27:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pUe7aNO6ehm1aC6FRasn0BBpWirceFyaj8LM5ktogMM=; b=TIkFplLmQvPWXg
	BRE1pPeTBR2mY7P/eIWmIrWEEg4pBoTRX1O0zTMpr5k2EYIBl26dWqHveM55gb/02rtwa4m7fzzSR
	KH4qO4yPu64wL8uVwxUgQdtd+OTSSQ6/oFXcFSt41fpoR5P2pRATGJfsYyvDiqV2t7jZ2Av3hxX1S
	J8ffvuDH4v/b3tkbDUQS0GxF/QWb/pceY9BFWgWkMJgOTNyiZ0Ctv8XMZzEn4fvTwfkQb6naXXXS0
	XIdoL2iCU/Y5N1kcFQuXW7PINpB0juLPqus5NbYlMah2DNuUyuJS1oaByJ3LtrvLBtaO5vPT2W31Y
	Q0Ma2fZIV7cFbBFgxlOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irQuA-0007Nb-ER; Tue, 14 Jan 2020 18:27:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irQtt-0007Mm-2x
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 18:26:53 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C615C24672;
 Tue, 14 Jan 2020 18:26:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579026408;
 bh=qnqGgrP8e9yV1OsuzVTzNXGikt0eU6jSP1VAIcJyBmg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lrXuON6lNa/3kGMXfWgCZKeqToNfMEc/Bm81yU3i7YyzltzarzjHAYDGNnu+exqw5
 BWS8V+7Xk+pe0HfRkw7crfwWY+Sy7P0uSpIjfo6TNo07VEnP4BztnoU+rYjHs0VLrh
 fHeuTQaoSAjpIpBO2njoR8F/VNZT+HfKdUby0EI4=
Date: Tue, 14 Jan 2020 18:26:41 +0000
From: Will Deacon <will@kernel.org>
To: Pavel Tatashin <pasha.tatashin@soleen.com>
Subject: Re: [PATCH v5 5/6] arm64: move ARM64_HAS_CACHE_DIC/_IDC from asm to C
Message-ID: <20200114182641.GI2579@willie-the-truck>
References: <20200102211357.8042-1-pasha.tatashin@soleen.com>
 <20200102211357.8042-6-pasha.tatashin@soleen.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200102211357.8042-6-pasha.tatashin@soleen.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_102649_156069_38A78FE5 
X-CRM114-Status: GOOD (  14.93  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, stefan@agner.ch,
 jmorris@namei.org, yamada.masahiro@socionext.com, boris.ostrovsky@oracle.com,
 sashal@kernel.org, sstabellini@kernel.org, maz@kernel.org,
 linux@armlinux.org.uk, linux-arm-kernel@lists.infradead.org,
 xen-devel@lists.xenproject.org, vladimir.murzin@arm.com, julien@xen.org,
 alexios.zavras@intel.com, tglx@linutronix.de, allison@lohutok.net,
 jgross@suse.com, steve.capper@arm.com, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, james.morse@arm.com, andrew.cooper3@citrix.com,
 info@metux.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 02, 2020 at 04:13:56PM -0500, Pavel Tatashin wrote:
> The assmbly functions __asm_flush_cache_user_range and
> __asm_invalidate_icache_range have alternatives:
> 
> alternative_if ARM64_HAS_CACHE_DIC
> ...
> 
> alternative_if ARM64_HAS_CACHE_IDC
> ...
> 
> But, the implementation of those alternatives is trivial and therefore
> can be done in the C inline wrappers.
> 
> Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
> ---
>  arch/arm64/include/asm/cacheflush.h | 19 +++++++++++++++++++
>  arch/arm64/mm/cache.S               | 27 +++++----------------------
>  arch/arm64/mm/flush.c               |  1 +
>  3 files changed, 25 insertions(+), 22 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/cacheflush.h b/arch/arm64/include/asm/cacheflush.h
> index 047af338ba15..fc5217a18398 100644
> --- a/arch/arm64/include/asm/cacheflush.h
> +++ b/arch/arm64/include/asm/cacheflush.h
> @@ -77,8 +77,22 @@ static inline long __flush_cache_user_range(unsigned long start,
>  {
>  	int ret;
>  
> +	if (cpus_have_const_cap(ARM64_HAS_CACHE_IDC)) {
> +		dsb(ishst);
> +		if (cpus_have_const_cap(ARM64_HAS_CACHE_DIC)) {
> +			isb();
> +			return 0;
> +		}
> +	}
> +
>  	uaccess_ttbr0_enable();
>  	ret = __asm_flush_cache_user_range(start, end);

I don't understand this. Doesn't it mean a CPU with IDC but not DIC will
end up with doing the D-cache maintenance?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
