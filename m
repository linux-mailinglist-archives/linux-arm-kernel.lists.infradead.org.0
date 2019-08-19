Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D4849490B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 17:50:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YZOatYAOoBR0XL9c17KZ4kIPSMQhZiJ1pG8MTSWMa+I=; b=AxOKiOHhv43Gsq
	ByB7Op/bp+yYu2mzGGIbWb0awJ9Sw8qb3S8v/YuWLR7OMUoGGGvNechM1dkfhbzyn2F/vaoeueVn3
	TvgatRBlawK76OKnLhCChw1vE/LH/RB7UfHC8X8dFLpImO8wbS8mwANawB6fjL3ZJGEJJOKzb8Bvs
	D6maP0ho31ZzmlsVwMKqMqwgSsKU4gHP9T23u8kcUarghElKn/RAR5p1KyMLoxvIEJpTsQRTA9dxg
	2PXRYBCqCN0G3GIN3hGJt23EPlgznUDhcldijojB1mgtpKTCnwIO4CBBx/A8QhOqRk/gmKdL6IVOR
	2nvVDoqfe7kV6wEjQiMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzjvP-0005W6-QH; Mon, 19 Aug 2019 15:50:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hzjvH-0005Uf-G3; Mon, 19 Aug 2019 15:50:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C28B3344;
 Mon, 19 Aug 2019 08:50:18 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BF6643F718;
 Mon, 19 Aug 2019 08:50:16 -0700 (PDT)
Date: Mon, 19 Aug 2019 16:50:14 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Pavel Tatashin <pasha.tatashin@soleen.com>
Subject: Re: [PATCH v2 02/14] arm64, hibernate: create_safe_exec_page cleanup
Message-ID: <20190819155014.GD9927@lakrids.cambridge.arm.com>
References: <20190817024629.26611-1-pasha.tatashin@soleen.com>
 <20190817024629.26611-3-pasha.tatashin@soleen.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190817024629.26611-3-pasha.tatashin@soleen.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_085019_583979_B110A078 
X-CRM114-Status: GOOD (  17.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: sashal@kernel.org, vladimir.murzin@arm.com, corbet@lwn.net,
 marc.zyngier@arm.com, catalin.marinas@arm.com, bhsharma@redhat.com,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org, jmorris@namei.org,
 linux-mm@kvack.org, james.morse@arm.com, ebiederm@xmission.com,
 matthias.bgg@gmail.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 16, 2019 at 10:46:17PM -0400, Pavel Tatashin wrote:
> create_safe_exec_page() is going to be split into two parts in preparation
> of moving page table handling code out of hibernate.c
> 
> Remove allocator parameter, and rename dst to page. Also, remove the
> goto's, as we can return directly without cleanups.

It would be nice if you could do the goto/allocator/rename changes as
separate patches, since it's vastly easier to verify each change in
isolation that way.

What's the point of the rename? It's inconsistent with the phys_dst_addr
that you leave as-is, so I'm not sure that's worthwhile.

> 
> Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
> ---
>  arch/arm64/kernel/hibernate.c | 60 +++++++++++++++--------------------
>  1 file changed, 26 insertions(+), 34 deletions(-)
> 
> diff --git a/arch/arm64/kernel/hibernate.c b/arch/arm64/kernel/hibernate.c
> index 9341fcc6e809..96b6f8da7e49 100644
> --- a/arch/arm64/kernel/hibernate.c
> +++ b/arch/arm64/kernel/hibernate.c
> @@ -196,57 +196,51 @@ EXPORT_SYMBOL(arch_hibernation_header_restore);
>   */
>  static int create_safe_exec_page(void *src_start, size_t length,
>  				 unsigned long dst_addr,
> -				 phys_addr_t *phys_dst_addr,
> -				 void *(*allocator)(gfp_t mask),
> -				 gfp_t mask)
> +				 phys_addr_t *phys_dst_addr)
>  {
> -	int rc = 0;
> +	void *page = (void *)get_safe_page(GFP_ATOMIC);
> +	pgd_t *trans_table;

The addition of this trans_table variable wasn't mentioned in the commit
message...

> +	trans_table = (void *)get_safe_page(GFP_ATOMIC);
> +	if (!trans_table)
> +		return -ENOMEM;
>  
> -	pgdp = pgd_offset_raw(allocator(mask), dst_addr);
> +	pgdp = pgd_offset_raw(trans_table, dst_addr);

> -	write_sysreg(phys_to_ttbr(virt_to_phys(pgdp)), ttbr0_el1);
> +	write_sysreg(phys_to_ttbr(virt_to_phys(trans_table)), ttbr0_el1);


... and I guess you're trying to ensure that we program the TTBR with
the correct base address, without the offset of whatever pgd entry we
happen to have plumbed in?

I think that's a fix, and should come before any other cleanup or
rework.

If you can respin that specific change with s/trans_table/pgdir/, that
would make sense to me.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
