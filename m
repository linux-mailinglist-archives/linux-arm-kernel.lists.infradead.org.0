Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18863137162
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 16:35:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+YVfyF68MJyqc7s0XzKMLJyufPX8c0N3iqGduqbZ8rM=; b=phELd08/Di9a76
	GbXNni0V5Ia5PCVk1eEqgBMcUCYvNZcy+f+vNJeIbqUyK2cCLCyuJT41u+yJ7/t+eaGcO7KqmAR32
	xk+dbEZiVUdJAzWf+EGDowz8Evihr3eSUKjZJOUuDs5EDkAgMjn/L0699HTG+BE3eAMiDv7LsLgmZ
	jaQfbrLiOmm8GhL722KuY2NUzQgRk1CkfPClBEbD1xIa2DSelu3TY0AZLh8uE45xC5EkuL4XTQvhM
	5/GmdZxtHktzSHSVUYVceKnX8E6TexpizGYoY9A+ffxsADfq9qTnn4K/lawFm4++lOJ9mzvpH/JXX
	PtVR03Ugp3SCF4nRZmQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipwJe-0005nx-5g; Fri, 10 Jan 2020 15:35:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipwJL-0005n2-Sn
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 15:34:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C5ACC30E;
 Fri, 10 Jan 2020 07:34:53 -0800 (PST)
Received: from arm.com (e112269-lin.cambridge.arm.com [10.1.194.52])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AB7993F6C4;
 Fri, 10 Jan 2020 07:34:52 -0800 (PST)
Date: Fri, 10 Jan 2020 15:34:48 +0000
From: Steven Price <steven.price@arm.com>
To: Qian Cai <cai@lca.pw>
Subject: Re: [PATCH -next] arm64/mm/dump: fix a compilation error
Message-ID: <20200110153447.GA30104@arm.com>
References: <20200110145112.7959-1-cai@lca.pw>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200110145112.7959-1-cai@lca.pw>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_073455_970772_7C2C2416 
X-CRM114-Status: GOOD (  15.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "sfr@canb.auug.org.au" <sfr@canb.auug.org.au>,
 Catalin Marinas <Catalin.Marinas@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>,
 "will@kernel.org" <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 10, 2020 at 02:51:12PM +0000, Qian Cai wrote:
> The linux-next commit "x86: mm: avoid allocating struct mm_struct on the
> stack" [1] introduced a compilation error with "arm64: mm: convert
> mm/dump.c to use walk_page_range()" [2]. Fixed it by using the new API.
> 
> arch/arm64/mm/dump.c:326:38: error: too few arguments to function call,
> expected 3, have 2
>         ptdump_walk_pgd(&st.ptdump, info->mm);
>         ~~~~~~~~~~~~~~~                     ^
> ./include/linux/ptdump.h:20:1: note: 'ptdump_walk_pgd' declared here
> void ptdump_walk_pgd(struct ptdump_state *st, struct mm_struct *mm,
> pgd_t *pgd);
> ^
> arch/arm64/mm/dump.c:364:38: error: too few arguments to function call,
> expected 3, have 2
>         ptdump_walk_pgd(&st.ptdump, &init_mm);
>         ~~~~~~~~~~~~~~~                     ^
> ./include/linux/ptdump.h:20:1: note: 'ptdump_walk_pgd' declared here
> void ptdump_walk_pgd(struct ptdump_state *st, struct mm_struct *mm,
> pgd_t *pgd);
> ^
> 2 errors generated.
> 
> [1] http://lkml.kernel.org/r/20200108145710.34314-1-steven.price@arm.com

Actually this was in the patch I originally posted - somehow it got
lost when Andrew picked it up.

> [2] http://lkml.kernel.org/r/20191218162402.45610-22-steven.price@arm.com
> 
> Signed-off-by: Qian Cai <cai@lca.pw>

Since this matches what I originally wrote... ;)

Reviewed-by: Steven Price <steven.price@arm.com>

Steve

> ---
>  arch/arm64/mm/dump.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/mm/dump.c b/arch/arm64/mm/dump.c
> index ef4b3ca1e058..860c00ec8bd3 100644
> --- a/arch/arm64/mm/dump.c
> +++ b/arch/arm64/mm/dump.c
> @@ -323,7 +323,7 @@ void ptdump_walk(struct seq_file *s, struct ptdump_info *info)
>  		}
>  	};
>  
> -	ptdump_walk_pgd(&st.ptdump, info->mm);
> +	ptdump_walk_pgd(&st.ptdump, info->mm, NULL);
>  }
>  
>  static void ptdump_initialize(void)
> @@ -361,7 +361,7 @@ void ptdump_check_wx(void)
>  		}
>  	};
>  
> -	ptdump_walk_pgd(&st.ptdump, &init_mm);
> +	ptdump_walk_pgd(&st.ptdump, &init_mm, NULL);
>  
>  	if (st.wx_pages || st.uxn_pages)
>  		pr_warn("Checked W+X mappings: FAILED, %lu W+X pages found, %lu non-UXN pages found\n",
> -- 
> 2.21.0 (Apple Git-122.2)
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
