Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB1EE1C488A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 22:48:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=USY4CAxJ0FLwHP6l6yUKwaM79X/hjCltk71KLexjC30=; b=efxtMGnCzkcTFw
	CGxriaU2yqVxoTmD27Xo8FM7kFpQmYPcg2G1wwz5/ecobPFkyAlgP3YZj+vC0c9PFBYehzbmTI8Kw
	FHnhBbqF95fiIuu4OOzksMEPPEC0jSCD9q6lTXrfzdkImOHwcdfBdK2KP4SKnZY9iCVLekWrqMdWr
	eypNbfijAmCa8iS3hfUpnp3/o4sqxafHvuQ1YfUVs2M3UVmwaE7Rl1vhhK4PJ8bdRyWJxZCLgK32o
	i4LGjru6ccEvlFAq+71aMRK7+sOwNt78063Rp7Fu2Yh9+T9SSp2ZtOWzbK7c8uxQN46gaEQJpZfaS
	OP9flQxijNU3ZKJzm/BQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVi0d-0006ai-Hf; Mon, 04 May 2020 20:48:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVi0X-0006a1-Dl
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 20:48:10 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B7E01206A4;
 Mon,  4 May 2020 20:48:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588625289;
 bh=uhstx6i6VStcX5tnxEtH4iTtQS0OGgGawfl0YTLt7FM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=xWVk+KqavPLzos8trQkkwJKJqC1RRw0zo6X3ZZmPzXdB1Z3iDAZMvN0af3UToUUiF
 FeBKcul0IpAF/yLlCvP3KXWqB79UXjuFKubP6LkstHKFXB/97OeV862n3tG8I19fFc
 4KFxgu7ymxHTr0OJVpfzNHafDm1zUTDqmKi4dFCo=
Date: Mon, 4 May 2020 21:48:04 +0100
From: Will Deacon <will@kernel.org>
To: Daniel Thompson <daniel.thompson@linaro.org>
Subject: Re: [PATCH v2] arm64: cacheflush: Fix KGDB trap detection
Message-ID: <20200504204803.GA5657@willie-the-truck>
References: <20200504170518.2959478-1-daniel.thompson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200504170518.2959478-1-daniel.thompson@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_134809_484482_63FB21B4 
X-CRM114-Status: GOOD (  21.62  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: patches@linaro.org, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 Jason Wessel <jason.wessel@windriver.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 04, 2020 at 06:05:18PM +0100, Daniel Thompson wrote:
> flush_icache_range() contains a bodge to avoid issuing IPIs when the kgdb
> trap handler is running because issuing IPIs is unsafe (and not needed)
> in this execution context. However the current test, based on
> kgdb_connected is flawed: it both over-matches and under-matches.
> 
> The over match occurs because kgdb_connected is set when gdb attaches
> to the stub and remains set during normal running. This is relatively
> harmelss because in almost all cases irq_disabled() will be false.
> 
> The under match is more serious. When kdb is used instead of kgdb to access
> the debugger then kgdb_connected is not set in all the places that the
> debug core updates sw breakpoints (and hence flushes the icache). This
> can lead to deadlock.
> 
> Fix by replacing the ad-hoc check with the proper kgdb macro. This also
> allows us to drop the #ifdef wrapper.
> 
> Fixes: 3b8c9f1cdfc5 ("arm64: IPI each CPU after invalidating the I-cache for kernel mappings")
> Signed-off-by: Daniel Thompson <daniel.thompson@linaro.org>
> Reviewed-by: Douglas Anderson <dianders@chromium.org>
> ---
> 
> Notes:
>     v2: Improve the commit message based based on feedback from Doug
>         Anderson
> 
>  arch/arm64/include/asm/cacheflush.h | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/cacheflush.h b/arch/arm64/include/asm/cacheflush.h
> index e6cca3d4acf7..ce50c1f1f1ea 100644
> --- a/arch/arm64/include/asm/cacheflush.h
> +++ b/arch/arm64/include/asm/cacheflush.h
> @@ -79,7 +79,7 @@ static inline void flush_icache_range(unsigned long start, unsigned long end)
>  	 * IPI all online CPUs so that they undergo a context synchronization
>  	 * event and are forced to refetch the new instructions.
>  	 */
> -#ifdef CONFIG_KGDB
> +
>  	/*
>  	 * KGDB performs cache maintenance with interrupts disabled, so we
>  	 * will deadlock trying to IPI the secondary CPUs. In theory, we can
> @@ -89,9 +89,9 @@ static inline void flush_icache_range(unsigned long start, unsigned long end)
>  	 * the patching operation, so we don't need extra IPIs here anyway.
>  	 * In which case, add a KGDB-specific bodge and return early.
>  	 */
> -	if (kgdb_connected && irqs_disabled())
> +	if (in_dbg_master())

Does this imply that irqs are disabled?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
