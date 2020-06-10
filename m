Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A5F71F5376
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 13:36:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SamiJmVjg0S/PfrvdLYSfo33HkK8/D/dEHIfmnoW6eU=; b=Z5svyJb59GpEZA
	kqtGFznsh/jE47aBKZMmDGXjJxXLBN2UV4LLwhMD+dycJEhF+pNpTVEVraHWfYneqzkTjH/mtJDpe
	4kIkbl13AbqPog4ioePwG0JEupPZy1S7vrJgRFVKrIHyKFa03LrjtbPX2ATFqYKk06E6Tj+VRh0lY
	yamVUEPUeVUCmdd7Ta7p8EvmcXimW4Db+8fihR5R3YFp0e+HPIG9oGHkeGR5Uj4rWPjOfpeD1NfX3
	ycUFu4l2qk3vzkgJ2RFIyprHJkTvz+QoNSeE3wGyRkqs584/kKqN+PDo5UnxGOW1jiwaEynrW3ZQd
	zGMkw+cIg5YmZZVIQEDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiz28-0002Dj-Ny; Wed, 10 Jun 2020 11:36:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiz1y-0002Ck-VG
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 11:36:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6E0CB1FB;
 Wed, 10 Jun 2020 04:36:30 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4303B3F66F;
 Wed, 10 Jun 2020 04:36:29 -0700 (PDT)
Date: Wed, 10 Jun 2020 12:36:27 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Shyam Thombre <sthombre@codeaurora.org>
Subject: Re: [PATCH] arm64: mm: reset address tag set by kasan sw tagging
Message-ID: <20200610113626.GI26099@gaia>
References: <1591787384-5823-1-git-send-email-sthombre@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1591787384-5823-1-git-send-email-sthombre@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_043631_048699_9D96BC82 
X-CRM114-Status: GOOD (  15.22  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, sashal@kernel.org, anshuman.khandual@arm.com,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, ard.biesheuvel@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 10, 2020 at 04:39:44PM +0530, Shyam Thombre wrote:
> KASAN sw tagging sets a random tag of 8 bits in the top byte of the pointer
> returned by the memory allocating functions. So for the functions unaware
> of this change, the top 8 bits of the address must be reset which is done
> by the function arch_kasan_reset_tag().
> 
> Signed-off-by: Shyam Thombre <sthombre@codeaurora.org>
> ---
>  arch/arm64/mm/mmu.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
> index e7fbc62..eae7655 100644
> --- a/arch/arm64/mm/mmu.c
> +++ b/arch/arm64/mm/mmu.c
> @@ -723,6 +723,7 @@ int kern_addr_valid(unsigned long addr)
>  	pmd_t *pmdp, pmd;
>  	pte_t *ptep, pte;
>  
> +	addr = arch_kasan_reset_tag(addr);
>  	if ((((long)addr) >> VA_BITS) != -1UL)
>  		return 0;

It would be interesting to know what fails without this patch. The only
user seems to be read_kcore() and, at a quick look, I don't see how it
can generate tagged addresses.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
