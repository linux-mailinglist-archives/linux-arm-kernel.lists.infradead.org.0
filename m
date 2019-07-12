Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77562671C7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 16:57:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pK/AfzI29Jx4CYl6HuojedccxU2KQCMM1PNaG/nRQSU=; b=MufPXbHZ9oCkuE
	2pUWIn9sMYP6v3+HvGhokZ4bDrVdwRoroKDuFLp2v0R//0jbQ2QWh87zoiZjpGLSxXroqMr+HMxXs
	mEfvuuXTcjfrQeTeLg7lZHLq2RaIKZKq79B8vyCa1x5mfVtRgD6wo4SNtPtcY6iyVClpZ1omf6Kfo
	BFU3qaavX0me4+kJutbfXGNPAYfTMyNrP9OfVrzrtnQ3H8m3UoW8BP9NLURr94tg1EjYP2ZLyPfL7
	Ouo5aq9bsF9BWoZAaWIOI7wz+iNijp8EIKX/9+peKQ7EgJn+LrYBmbgZNGnEWDBQGEmNbzt5RuF2c
	UTF7MtfWgkpRzV+fBS8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlwzP-0000hn-0w; Fri, 12 Jul 2019 14:57:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlwz8-0000h8-N1
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 14:57:23 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 854402084B;
 Fri, 12 Jul 2019 14:57:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562943438;
 bh=MEM3wLZlDJ4ekEKM4/6J5Ww9M6DT1KF+sb6hCC/78lA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KvHVEWVjk8B3Pk1Ja75F/Em+VG7L/pR8IR53MZAgXjL21B3CV+Ol3dyYc0mtum7iG
 GrmRiEOIRHzFuee4G63LOuvX8pUoorMctEVAgBnW0ElrDceThp9cm5cqqNAa+aJLjK
 MaTs152R+W3BaCw3bxXUeTQKYkzZMBcVaQ6y5ARc=
Date: Fri, 12 Jul 2019 15:57:12 +0100
From: Will Deacon <will@kernel.org>
To: KarimAllah Ahmed <karahmed@amazon.de>
Subject: Re: [PATCH] arm: Extend the check for RAM in /dev/mem
Message-ID: <20190712145711.mxmnuyn6kpv2dr7u@willie-the-truck>
References: <1562883681-18659-1-git-send-email-karahmed@amazon.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1562883681-18659-1-git-send-email-karahmed@amazon.de>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_075721_635896_E6B6C6FA 
X-CRM114-Status: GOOD (  12.35  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Anders Roxell <anders.roxell@linaro.org>, Yu Zhao <yuzhao@google.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, linux-kernel@vger.kernel.org,
 Mike Rapoport <rppt@linux.ibm.com>, Jun Yao <yaojun8558363@gmail.com>,
 James Morse <james.morse@arm.com>, Russell King <linux@armlinux.org.uk>,
 Andrew Morton <akpm@linux-foundation.org>, Enrico Weigelt <info@metux.net>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 12, 2019 at 12:21:21AM +0200, KarimAllah Ahmed wrote:
> diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
> index 3645f29..cdc3e8e 100644
> --- a/arch/arm64/mm/mmu.c
> +++ b/arch/arm64/mm/mmu.c
> @@ -78,7 +78,7 @@ void set_swapper_pgd(pgd_t *pgdp, pgd_t pgd)
>  pgprot_t phys_mem_access_prot(struct file *file, unsigned long pfn,
>  			      unsigned long size, pgprot_t vma_prot)
>  {
> -	if (!pfn_valid(pfn))
> +	if (!memblock_is_memory(__pfn_to_phys(pfn)))

This looks broken to me, since it will end up returning 'true' for nomap
memory and we really don't want to map that using writeback attributes.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
