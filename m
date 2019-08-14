Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD0EC8D870
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 18:50:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LUlCnMintRjRYMeMEnhAIfh5F+CjK5XhLf0wiF+WTm0=; b=m4XRC+Sf7NbxAL
	2tLcnOzFYvmbr3Pe/lb+pQD03zRuW1P7ofebwpwft0pYoqqfpPzqnulzlgc4iUOtM6lyx+pBAvTmP
	d8XVlrXT9QchcOS5BdcIUNZ5HvmqgROA1bSerSez4pPW1dSOZfkcxcyUQVYu+fGcMlTcw9K6I+Jc0
	osGfvVO7NVZvvLNMJhrlMxRet6UCJEEGCJB7Su7GwcTDyax+s2pbiWprTIZQrwJ7xBUX8X8xY0P/k
	HhDhwlXytBBwtgkJrnALER1DCOjOB+xdlYOulGEek1O372lczkg1lvjMcwDCmajLJdOv52Rqndq9K
	RhMK17/t5YPmfH8+xGUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxwU0-0001Jo-Mb; Wed, 14 Aug 2019 16:50:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxwTq-0001JR-IQ
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 16:50:35 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D9E3620665;
 Wed, 14 Aug 2019 16:50:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565801434;
 bh=rr5Yx5jWWXjv1elleVvNixlj9ZG6FWWLR96+BvLKJTs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=zBfq3Ps7UwSWeCBHg3Nhawrm70s4X1Ue1TkGDjnU3dH4GLcUTa5FVXhY96bYLfpB8
 tRUlGr9jER91hBRTzXAdKwH74CVEhNn+wG6BowZd/CrQDTszU23WMSsrbNDPq+QLAt
 Vf28F+ZsRzV3ndHNS3F6DKCdEHuQm7I+TYv2MDF0=
Date: Wed, 14 Aug 2019 17:50:29 +0100
From: Will Deacon <will@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 1/6] arm64: unexport set_memory_x and set_memory_nx
Message-ID: <20190814165029.yfmpopn34vxpnmte@willie-the-truck>
References: <20190813090146.26377-1-hch@lst.de>
 <20190813090146.26377-2-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190813090146.26377-2-hch@lst.de>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_095034_631986_4E97257E 
X-CRM114-Status: GOOD (  13.93  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Dave Hansen <dave.hansen@linux.intel.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, Andy Lutomirski <luto@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 13, 2019 at 11:01:41AM +0200, Christoph Hellwig wrote:
> No module currently messed with clearing or setting the execute
> permission of kernel memory, and none really should.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  arch/arm64/mm/pageattr.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/arch/arm64/mm/pageattr.c b/arch/arm64/mm/pageattr.c
> index 03c53f16ee77..9ce7bd9d4d9c 100644
> --- a/arch/arm64/mm/pageattr.c
> +++ b/arch/arm64/mm/pageattr.c
> @@ -128,7 +128,6 @@ int set_memory_nx(unsigned long addr, int numpages)
>  					__pgprot(PTE_PXN),
>  					__pgprot(0));
>  }
> -EXPORT_SYMBOL_GPL(set_memory_nx);
>  
>  int set_memory_x(unsigned long addr, int numpages)
>  {
> @@ -136,7 +135,6 @@ int set_memory_x(unsigned long addr, int numpages)
>  					__pgprot(0),
>  					__pgprot(PTE_PXN));
>  }
> -EXPORT_SYMBOL_GPL(set_memory_x);

arm64 allmodconfig and defconfig are happy with this, so I'll pick it up
for 5.4 if that's ok with you?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
