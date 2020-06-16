Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D40E1FC117
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 23:40:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+k+ShpnBjT6hGO8mgkxKT6/Om2RgC9NFp3PAi3ukoZk=; b=br82kwVdyqcMaD
	JPNrS8P/AodN3GyzGZ0L3y56wybkyXbbIRGCNd7L/iy+1U4KQ/Cwzok8iqJgfxekbeWICUcokJrHZ
	jbByUw2X8otTiEcGOB+0W9QwffYUhJnjoUK8jpyC7NwSSo8rUrpEw//mIMTUwgI9/YSwZBgHBG6NK
	VJiXNdgpwwWFlCdCF0Bip2i3Z/i+QPwppKNkBEoxmlVm7wbyqZVBbP+0xiCa98LftJnvrJfwfpzvs
	S+M3TfAEz3daAHEeNEH65SgMjUWQBNWx7wckgLq7W470GSv8DZUvjpMvDZlgdQHgVtlgiesfMfmq5
	z0Px7fqqTbqgd2nNdQww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlJJd-0003Cz-43; Tue, 16 Jun 2020 21:40:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlJJG-0003CD-CP
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 21:39:59 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D9A742082E;
 Tue, 16 Jun 2020 21:39:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592343598;
 bh=NAcC0C5+lhAkJJBBDMO+UHb5TJKRWin2TviSHE2JPPM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lZ+vVY98S3MdQSrzT7nf8/jg2P0oOocyAto8BzVR96Ti+4lwAl7q/9m+10hINfM9u
 LrF0pCBZabIwXnZHACZ+2Hwcofw+zdq3R4f/o620KS7tOyZp+Iwbzcy/Da5x6QIXND
 46h54xMlmpCise5E7WEG12r2zcRmfOKR8Uy6w4fg=
Date: Tue, 16 Jun 2020 22:39:53 +0100
From: Will Deacon <will@kernel.org>
To: Saravana Kannan <saravanak@google.com>
Subject: Re: [PATCH v1] arm64/module: Optimize module load time by optimizing
 PLT counting
Message-ID: <20200616213953.GA2561@willie-the-truck>
References: <20200605222257.44882-1-saravanak@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200605222257.44882-1-saravanak@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_143958_455038_C8DB2178 
X-CRM114-Status: GOOD (  24.75  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, kernel-team@android.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 05, 2020 at 03:22:57PM -0700, Saravana Kannan wrote:
> When loading a module, module_frob_arch_sections() tries to figure out
> the number of PLTs that'll be needed to handle all the RELAs. While
> doing this, it tries to dedupe PLT allocations for multiple
> R_AARCH64_CALL26 relocations to the same symbol. It does the same for
> R_AARCH64_JUMP26 relocations too.
> 
> To make checks for duplicates easier/faster, it sorts the relocation
> list by type, symbol and addend. That way, to check for a duplicate
> relocation, it just needs to compare with the previous entry.
> 
> However, sorting the entire relocation array is unnecessary and
> expensive (O(n log n)) because there are a lot of other relocation types
> that don't need deduping or can't be deduped.
> 
> So this commit partitions the array into entries that need deduping and
> those that don't. And then sorts just the part that needs deduping. And
> when CONFIG_RANDOMIZE_BASE is disabled, the sorting is skipped entirely
> because PLTs are not allocated for R_AARCH64_CALL26 and R_AARCH64_JUMP26
> if it's disabled.
> 
> This gives significant reduction in module load time for modules with
> large number of relocations with no measurable impact on modules with a
> small number of relocations. In my test setup with CONFIG_RANDOMIZE_BASE
> enabled, the load time for one module went down from 268ms to 100ms.
> Another module went down from 143ms to 83ms.

Whilst I can see that's a significant relative saving, what proportion of
actual boot time are we talking about here? It would be interesting to
know if there are bigger potential savings elsewhere.

> This commit also disables the sorting if CONFIG_RANDOMIZE_BASE is
> disabled because it looks like PLTs are not allocated for
> R_AARCH64_CALL26 and R_AARCH64_JUMP26 if it's disabled.
> 
> Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> Signed-off-by: Saravana Kannan <saravanak@google.com>
> ---
>  arch/arm64/kernel/module-plts.c | 37 ++++++++++++++++++++++++++++++++-
>  1 file changed, 36 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/kernel/module-plts.c b/arch/arm64/kernel/module-plts.c
> index 65b08a74aec6..bf5118b3b828 100644
> --- a/arch/arm64/kernel/module-plts.c
> +++ b/arch/arm64/kernel/module-plts.c
> @@ -253,6 +253,36 @@ static unsigned int count_plts(Elf64_Sym *syms, Elf64_Rela *rela, int num,
>  	return ret;
>  }
>  
> +static bool rela_needs_dedup(Elf64_Rela *rela)
> +{
> +	return ELF64_R_TYPE(rela->r_info) == R_AARCH64_JUMP26
> +	       || ELF64_R_TYPE(rela->r_info) == R_AARCH64_CALL26;
> +}

Does this handle A53 erratum 843419 correctly? I'm worried that we skip
the ADRP PLTs there.

> +
> +/* Group the CALL26/JUMP26 relas toward the beginning of the array. */
> +static int partition_dedup_relas(Elf64_Rela *rela, int numrels)
> +{
> +	int i = 0, j = numrels - 1;
> +	Elf64_Rela t;
> +
> +	while (i < j) {
> +		while (rela_needs_dedup(rela + i) && i < j)
> +			i++;
> +		while (!rela_needs_dedup(rela + j) && i < j)
> +			j--;
> +		if (i < j) {
> +			t = *(rela + j);
> +			*(rela + j) = *(rela + i);
> +			*(rela + i) = t;
> +		}
> +	}

This is very hard to read and I think some of the 'i < j' comparisons are
redundant. Would it make more sense to assign a temporary rather than
post-inc/decrement and recheck?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
