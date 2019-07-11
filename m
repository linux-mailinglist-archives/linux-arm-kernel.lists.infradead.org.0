Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F42B65463
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 12:17:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ziRdy7loYmxZjpusjzVABWl8t5jqvhgpOdqtMPgQ7HQ=; b=Xaptv4vo0pzn6Q
	ojKlfB1WxShvpYm/mIzyHxPgI0gdp5NQ7Jf2Zlpwl6tiyuishDBg8809J8u1t3/t7M5OQfLcfQ98a
	BuHFwvrs3+QmdkTmC0WtoOF0MEkcrZcvG/Wjgji7CKNlaasXebv0NuFi9jdRspANmpEIV0F/nqRhR
	jb5yZJR5wGpvrzGxo77nSsn2XYfU8jqYr3fE+GIb2ApaAbMw5KsTQBgCjQZ73VFsJmTiS6bGqjAyB
	iWRXmDi9HzYXJKUnjWPRnOOLd1RJ2bGng/+fvIOpNFP9FGfLqJvf2rWU8d9hmEkOF4cXbkXUYcV8/
	MeJF/hdb+4yJsXypgUyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlW8x-00088r-4t; Thu, 11 Jul 2019 10:17:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlW8g-00087v-QI
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 10:17:25 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F2956208E4;
 Thu, 11 Jul 2019 10:17:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562840242;
 bh=0Pd7ynVLzE+cLKPqdogb4z6VfvZUn6wIe6I9rT6tSSg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=2FOuYiy1pEUGAdcFmSYjf17sEHpeTJMFe5JENI5vHaRvtEhs21kHXu6E/TIfsItqf
 mzBC3HRqCoLni4foirzOpdUXxLJdvo+i86GZfCyUfht+70GWNTSTSz+rAuJr6jx7My
 nkRyCDfARBbWlNWVOmVFaZ3wgmRvTQh65evjelQ4=
Date: Thu, 11 Jul 2019 11:17:17 +0100
From: Will Deacon <will@kernel.org>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: Limiting the DMA zone in arm64
Message-ID: <20190711101717.meoyqu5h2zdptypf@willie-the-truck>
References: <0439cc08532849b1d0adb44a7b2cbc9ce5dceaf7.camel@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0439cc08532849b1d0adb44a7b2cbc9ce5dceaf7.camel@suse.de>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_031724_544832_4283A7FA 
X-CRM114-Status: GOOD (  15.07  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 Florian Fainelli <f.fainelli@gmail.com>, marc.zyngier@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>, andre.przywara@arm.com,
 robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nicolas,

[+Robin, Andrew and Marc since we've been playing with getting arm64 Linux
 up and running too]

On Thu, Jul 11, 2019 at 11:51:57AM +0200, Nicolas Saenz Julienne wrote:
> I'm trying to bring up the new RPi4 on arm64, and running into issues with DMA
> allocations. The device has up to 4GB of ram, but AFAIK only the first GB of
> ram can be used for DMA: the DMA address range is 0xc0000000-0xffffffff which
> is aliased to the first GB of memory 0x00000000-0x40000000.

Do you know for sure that these aliases are equivalant and so it's
inconsequential if we use the lower addresses for DMA? Also, does this
limitation apply to all DMA-capable peripherals, or just some of them?

> This is solved in arm32 using a board file with '.dma_zone_size = SZ_1G'. But I
> haven't found any similar mechanism for arm64. Any suggestions?
> 
> Just it case it helps understand the issue, I managed to get things going by
> doing the following:
> 
> diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
> index f3c795278def..ec3cb7b76a76 100644
> --- a/arch/arm64/mm/init.c
> +++ b/arch/arm64/mm/init.c
> @@ -407,7 +407,8 @@ void __init arm64_memblock_init(void)
>  
>         /* 4GB maximum for 32-bit only capable devices */
>         if (IS_ENABLED(CONFIG_ZONE_DMA32))
> -               arm64_dma_phys_limit = max_zone_dma_phys();
> +               arm64_dma_phys_limit = 0x40000000;
>         else
>                 arm64_dma_phys_limit = PHYS_MASK + 1;

My superficial understanding (mainly from talking to Robin, who actually
knows how this works), is that we'd need to extend our support for
dma-ranges in order to limit ZONE_DMA32 as you're proposing above. However,
this may not help for streaming DMA, where we need to force everything
above 1G through a bounce buffer and likely requires something weird like
a 30-bit DMA mask.

Do you know how streaming DMA is handled in the 32-bit port for rpi4?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
