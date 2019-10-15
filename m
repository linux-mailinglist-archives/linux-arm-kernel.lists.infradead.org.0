Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5A6BD6CA0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 02:49:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zRsy/0pcmLh65P5z6E157TFm2nXwpa58/mpi0nE9P/4=; b=Vk6/CLx7WaFOAZ
	sb1vw9D3bhlXFdWVShXY6AYXn4KIXapmoIfo1ZCIBj5VCVsk5Za0/JY9Su2b/JvZoD8UNNs6Sn7Fd
	0LNt3RKgK7wGKFOorpXnrjsAcrsYExJxoShl23kF98lODR1XhHddKjVeVn9JIspeM7Ctt17yFkiAg
	hTJy5dXZ7xUYmQUg8vqAgKADqOOmngS0GAYRzB1NP99N7QBQrYIDKaBuQRx6tvGE2gQyG7yhXgiQL
	6Y846oiZuT2op8xMKWMtHuofwjFTRn/+Ni4I35DjKGelOjKD/L8Hvl2lUIPIsx/83qUAevc5UoFdQ
	ntGUEEfPtaHcbNJnSDhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKB26-0004a7-Bp; Tue, 15 Oct 2019 00:49:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKB1x-0004Zj-Uz
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 00:49:43 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9DD572089C;
 Tue, 15 Oct 2019 00:49:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571100581;
 bh=CgE11hawVJ9EsRwk+NsDx1KZAHE6/9MksHlbAGE28k8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tsYGr7MgAutV7j+jrOeyibptBcDd1dF/Y656vQVg0tVCcG0ebxJZn9flLkyt2T7zS
 nT4VUAky3qihI4XTR/iN1Zauma1Bq85/KOQ4WSkwqD1FZJa5r5I6UwqV2E9dQjdbmV
 XG9iml9waMLUfmDaQCUb/3g5j36LxT4pMaC15U5Y=
Date: Tue, 15 Oct 2019 01:49:37 +0100
From: Will Deacon <will@kernel.org>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH] arm64/mm: Poison initmem while freeing with
 free_reserved_area()
Message-ID: <20191015004937.3khj7obh3la5qwdu@willie-the-truck>
References: <1570163038-32067-1-git-send-email-anshuman.khandual@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1570163038-32067-1-git-send-email-anshuman.khandual@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_174942_014769_20BDFEC6 
X-CRM114-Status: GOOD (  13.85  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 04, 2019 at 09:53:58AM +0530, Anshuman Khandual wrote:
> Platform implementation for free_initmem() should poison the memory while
> freeing it up. Hence pass across POISON_FREE_INITMEM while calling into
> free_reserved_area(). The same is being followed in the generic fallback
> for free_initmem() and some other platforms overriding it.
> 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: linux-kernel@vger.kernel.org
> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
> ---
>  arch/arm64/mm/init.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
> index 45c00a54909c..ea7d38011e83 100644
> --- a/arch/arm64/mm/init.c
> +++ b/arch/arm64/mm/init.c
> @@ -571,7 +571,7 @@ void free_initmem(void)
>  {
>  	free_reserved_area(lm_alias(__init_begin),
>  			   lm_alias(__init_end),
> -			   0, "unused kernel");
> +			   POISON_FREE_INITMEM, "unused kernel");

Acked-by: Will Deacon <will@kernel.org>

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
