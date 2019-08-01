Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 425B87DB04
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 14:12:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=feO1TQ+LQumJo6Q0LcJ9XGTSfHylzCuOQXqyZZkWWsQ=; b=qWOl5rwBnwoL6s
	J44YmGi/UicZ25sfUqbaxGi6Mds4UBILTJ8/dGZs1UU2pO3hg94x0unXOd876fbBpvbTZyrZbWXu+
	otC6vO56Hg0HLtKCBC2MADPRJsWoYVNd7myyQ4veOvGQ435HXmPToUtraq0sTRcQUMyZN1ta8EubS
	MF22+Xp1Y7FlUlP1yl4crmDnT+XS4IHYJLqMcjnD5CKzFkhw2lUBnpG1i4iRGwxDSNfaW6hCCsy7j
	c2MmobIZzc49b2f0ZNuhvpZVRqZs3Ga5bwRGM/o5KSMlQSH4v46+9dsia2kjZ9On4UDqpp1jQ1hPi
	ZqSbqhQ6uKE203cXFUJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht9wF-0002Ov-Lg; Thu, 01 Aug 2019 12:12:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht9oY-000210-1r
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 12:04:12 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E12C120644;
 Thu,  1 Aug 2019 12:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564661049;
 bh=ot5STRM/B8yVvrzcOXAfmZCEFTH93aXQATe1UlXglC0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ump+elZokFz78+k37rDcEG7nfi1dDvmKbqAeSv1dkaE3Ov2/1+SnJIXX1R1W+cSxa
 O0RuI9LBKE0yehewPDkc5gOdgAreDpZx/sG0vTBm7OZ0VJAEeb5HVFeUKM64PGcRp5
 rhzNY3H22XhvjjFl256OwMtUxxsm7N0vyYdEmZ9E=
Date: Thu, 1 Aug 2019 13:04:06 +0100
From: Will Deacon <will@kernel.org>
To: Qian Cai <cai@lca.pw>
Subject: Re: [PATCH] arm64/mm: fix variable 'pud' set but not used
Message-ID: <20190801120405.tnrjs4iyg2ujy6ed@willie-the-truck>
References: <1564603545-14776-1-git-send-email-cai@lca.pw>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1564603545-14776-1-git-send-email-cai@lca.pw>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_050410_193476_3BB1F5E0 
X-CRM114-Status: GOOD (  14.60  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 31, 2019 at 04:05:45PM -0400, Qian Cai wrote:
> GCC throws a warning,
> 
> arch/arm64/mm/mmu.c: In function 'pud_free_pmd_page':
> arch/arm64/mm/mmu.c:1033:8: warning: variable 'pud' set but not used
> [-Wunused-but-set-variable]
>   pud_t pud;
>         ^~~
> 
> because pud_table() is a macro and compiled away. Fix it by making it a
> static inline function and for pud_sect() as well.
> 
> Signed-off-by: Qian Cai <cai@lca.pw>
> ---
>  arch/arm64/include/asm/pgtable.h | 11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
> index 3f5461f7b560..541cb4a15341 100644
> --- a/arch/arm64/include/asm/pgtable.h
> +++ b/arch/arm64/include/asm/pgtable.h
> @@ -447,8 +447,15 @@ extern pgprot_t phys_mem_access_prot(struct file *file, unsigned long pfn,
>  				 PMD_TYPE_SECT)
>  
>  #if defined(CONFIG_ARM64_64K_PAGES) || CONFIG_PGTABLE_LEVELS < 3
> -#define pud_sect(pud)		(0)
> -#define pud_table(pud)		(1)
> +static inline bool pud_sect(pud_t pud)
> +{
> +	return false;
> +}
> +
> +static inline bool pud_table(pud_t pud)
> +{
> +	return true;
> +}

Applied for 5.3.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
