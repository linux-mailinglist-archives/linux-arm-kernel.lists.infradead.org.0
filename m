Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2BE21A9707
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 10:41:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KSLYe1p1GfML6ubqhYfIEYLQODqe3tSoKPDIjTG7Axw=; b=DCWmmaixaYARF6
	5NAQHABu8t2A8pYdM2fOXmrRiS6xIYrM9q0FhOz406sTISlr28LL9V73NfxSWjvLqxTpYHyCxpKOv
	gWHkcOO/CFRtjS3UyTQfxKOIAehemyhbchnNgErVLXLI2iZCqaw8KEQ0oqY744SY65nEJawQh6+m8
	ijOJvuY15Hlo7jdi04ofzHmVVk57iS+rMz6uhsMAAHwfXlcl3hQ6tLVz7rT+wFQTpusPPeA7hS8MR
	/MB1tk0y0XG4vqnyfm58M4YA001s+KdJhjCGKWqVRRBCZWyWQRUPwgeDOcgKiEiyonbYCn8hQHdzm
	DRzJGjEJ2HDbwddFGm6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOdc5-00077X-9s; Wed, 15 Apr 2020 08:41:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOdZa-0002RT-KM
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 08:39:08 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 53C5F20784;
 Wed, 15 Apr 2020 08:39:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586939945;
 bh=vgNL0nmxrNPZ77iSc+eqLDS1hNmohky3P8MkxPGmAFA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=U/2uDTJR7FC0k32qoEiGioaWSwb1ZZWOJ9hs8ZtYeWAFOHNFWRXjQDsw3r2cccbU/
 27jZ6EIUfis7cAXG/AcJfLg0x2+lpN49155UspngL+DW+aLwR03YQx8JA6TDSWT8r5
 F5a3WwG1lahUmy6ccF0Susi1Ab+JbcBQ6rQGbUuI=
Date: Wed, 15 Apr 2020 09:39:00 +0100
From: Will Deacon <will@kernel.org>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH] arm64: set TEXT_OFFSET to 0x0 in preparation for
 removing it entirely
Message-ID: <20200415083900.GA12621@willie-the-truck>
References: <20200415082922.32709-1-ardb@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200415082922.32709-1-ardb@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_013906_705237_E2C0FE04 
X-CRM114-Status: GOOD (  16.75  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, james.morse@arm.com,
 linux-arm-kernel@lists.infradead.org, suzuki.poulose@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 15, 2020 at 10:29:22AM +0200, Ard Biesheuvel wrote:
> TEXT_OFFSET on arm64 is a historical artifact from the early days of
> the arm64 port where the boot protocol was basically 'copy this image
> to the base of memory + 512k', giving us 512 KB of guaranteed BSS space
> to put the swapper page tables. When the arm64 port was merged for
> v3.10, the Image header already carried the actual value of TEXT_OFFSET,
> to allow the bootloader to discover it dynamically rather than hardcode
> it to 512 KB.

Hey, we're older than that! (3.7)

> Today, this memory window is not used for any particular purpose, and
> it is simply handed to the page allocator at boot. The only reason it
> still exists is because of the 512k misalignment it causes with respect
> to the 2 MB aligned virtual base address of the kernel, which affects
> the virtual addresses of all statically allocated objects in the kernel
> image.
> 
> However, with the introduction of KASLR in v4.6, we added the concept of
> relocatable kernels, which rewrite all absolute symbol references at
> boot anyway, and so the placement of such kernels in the physical address
> space is irrelevant, provided that the minimum segment alignment is
> honoured (64 KB in most cases, 128 KB for 64k pages kernels with vmap'ed
> stacks enabled). This makes 0x0 and 512 KB equally suitable values for
> TEXT_OFFSET on the off chance that we are dealing with boot loaders that
> ignore the value passed via the header entirely.
> 
> Considering that the distros as well as Android ship KASLR-capable
> kernels today, and the fact that TEXT_OFFSET was discoverable from the
> Image header from the very beginning, let's change this value to 0x0, in
> preparation for removing it entirely at a later date.

Can we kill CONFIG_ARM64_RANDOMIZE_TEXT_OFFSET at the same time please?
It seems less useful now than ever and it would move us closer to removing
the TEXT_OFFSET definition entirely (but maybe we should wait a couple of
cycles before doing that... what do you reckon?).

Cheers,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
