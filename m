Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 678BB8182D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 13:30:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jg9ZpcaaDI0+Ey4O73/6iB6LOh0Y0MdnG7XR6mhGH6Q=; b=PSCjpJL3qFewqS
	r4KjpeKZ+b3M2tJ7AyNL4/my+dXJkzO7mLVstZE3ssBmaGPIj5LNAwmUx6XfWBR55YiPQ++y7cTzO
	THkYQs3ee3FTfgIhkug879a01Kgfv9MIuaWaVBa5Kgj1emC0oUVUyiFoZfflPRaoC07dFvx2yQq67
	hLPf4Pnzjs1frVv8O99IIpyd4AmCEeJreaaN5J8Ddu0IDt6FPJQzH0CtA/Bc7Uv7Y2Z2MX7AoLj7Y
	EqPonJVRmz0Pa7QYKZuYil4uFRkQa3J8Y2gfhIm8hTsrtM+VjPgnOGnHksO4v72P8vZMmtrr2ILr0
	r6x5g8xnsCQERTvxf/KQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hubBs-0005Fk-Dk; Mon, 05 Aug 2019 11:30:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hubBc-0005FJ-Fg
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 11:29:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B6981337;
 Mon,  5 Aug 2019 04:29:54 -0700 (PDT)
Received: from iMac.local (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A91383F694;
 Mon,  5 Aug 2019 04:29:53 -0700 (PDT)
Date: Mon, 5 Aug 2019 12:29:51 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Steve Capper <steve.capper@arm.com>
Subject: Re: [PATCH V4 02/11] arm64: mm: Flip kernel VA space
Message-ID: <20190805112951.GE59981@iMac.local>
References: <20190729162117.832-1-steve.capper@arm.com>
 <20190729162117.832-3-steve.capper@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190729162117.832-3-steve.capper@arm.com>
User-Agent: Mutt/1.11.1 (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_042956_582686_25F5CF26 
X-CRM114-Status: GOOD (  11.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: crecklin@redhat.com, ard.biesheuvel@linaro.org, maz@kernel.org,
 bhsharma@redhat.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 29, 2019 at 05:21:08PM +0100, Steve Capper wrote:
> diff --git a/arch/arm64/mm/dump.c b/arch/arm64/mm/dump.c
> index 82b3a7fdb4a6..6f0b9f8ddf55 100644
> --- a/arch/arm64/mm/dump.c
> +++ b/arch/arm64/mm/dump.c
> @@ -26,6 +26,8 @@
>  #include <asm/ptdump.h>
>  
>  static const struct addr_marker address_markers[] = {
> +	{ PAGE_OFFSET,			"Linear Mapping start" },
> +	{ VA_START,			"Linear Mapping end" },
>  #ifdef CONFIG_KASAN
>  	{ KASAN_SHADOW_START,		"Kasan shadow start" },
>  	{ KASAN_SHADOW_END,		"Kasan shadow end" },
> @@ -40,9 +42,8 @@ static const struct addr_marker address_markers[] = {
>  	{ PCI_IO_END,			"PCI I/O end" },
>  #ifdef CONFIG_SPARSEMEM_VMEMMAP
>  	{ VMEMMAP_START,		"vmemmap start" },
> -	{ VMEMMAP_START + VMEMMAP_SIZE,	"vmemmap end" },
> +	{ -1,				"vmemmap end" },

Why not keep the original vmemmap end here? We even leave a 2MB gap.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
