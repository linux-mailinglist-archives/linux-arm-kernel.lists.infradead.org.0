Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82007197D89
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 15:51:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MzotcLTGQ3+SebXFNoJ/6LH34ozCXeSC61OWmVOx9V4=; b=p/n0ZYvFHe9bn5
	9rSn0wToy2R2HGXonaZL0ZUAsVYquAuNGg9UO3tiij8IfsMWvgnzUXSBexP/hkEGZpA7fBNmqLBF/
	Zjs+XZpU4i1+Urnkzlg8tcqNnS4e9CP3QN+KZrByaTGcCvmmf2QetpINJtW9uRbpChtclLF6LT369
	uOLK8crY64tU9UiQ8KY+J8pdsdpGAe4xWk4wrdz7rcSNOEqj7SsiT23F/nfgwJdSE+qOQ9u8LQ04J
	68tiSGRLSAAyF5hy8hQWrQI8xr6l+JpfmNQjgRHO7eQ3ail3k8YXWyjiiLrpuYRO8IQHb+Y4Ddtv2
	vRKWEQDKPSQBZcZVX6nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIupD-0003lU-NK; Mon, 30 Mar 2020 13:51:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIup4-0003kv-Cd
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 13:51:27 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0B8D3206CC;
 Mon, 30 Mar 2020 13:51:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585576286;
 bh=shRxHPO6TNubPsJ8Kjm+VBtKtgZ9LoE0ypNOsjrhlXw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TVppmMOSXAOdk3sfXijAOW160toaPEfSbfuCM5nMPwj/I3zOVURZQDOSEZuSPsYYy
 kqP/py9AFaPG8DnYkTKU1srHzS+4+sedlU3OhdM4pJaipPpH+n4oNZtKNI7ilOgM3T
 9HiPi2kWUIqDGyNDy4oebEE3SwMtrpR/lsMZf0PE=
Date: Mon, 30 Mar 2020 14:51:21 +0100
From: Will Deacon <will@kernel.org>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [RFC PATCH] arm64: remove CONFIG_DEBUG_ALIGN_RODATA feature
Message-ID: <20200330135121.GD10633@willie-the-truck>
References: <20200329141258.31172-1-ardb@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200329141258.31172-1-ardb@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_065126_454624_5297169C 
X-CRM114-Status: GOOD (  14.15  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, kernel-hardening@lists.openwall.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Mar 29, 2020 at 04:12:58PM +0200, Ard Biesheuvel wrote:
> When CONFIG_DEBUG_ALIGN_RODATA is enabled, kernel segments mapped with
> different permissions (r-x for .text, r-- for .rodata, rw- for .data,
> etc) are rounded up to 2 MiB so they can be mapped more efficiently.
> In particular, it permits the segments to be mapped using level 2
> block entries when using 4k pages, which is expected to result in less
> TLB pressure.
> 
> However, the mappings for the bulk of the kernel will use level 2
> entries anyway, and the misaligned fringes are organized such that they
> can take advantage of the contiguous bit, and use far fewer level 3
> entries than would be needed otherwise.
> 
> This makes the value of this feature dubious at best, and since it is not
> enabled in defconfig or in the distro configs, it does not appear to be
> in wide use either. So let's just remove it.
> 
> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> ---
>  arch/arm64/Kconfig.debug                  | 13 -------------
>  arch/arm64/include/asm/memory.h           | 12 +-----------
>  drivers/firmware/efi/libstub/arm64-stub.c |  8 +++-----
>  3 files changed, 4 insertions(+), 29 deletions(-)

Acked-by: Will Deacon <will@kernel.org>

But I would really like to go a step further and rip out the block mapping
support altogether so that we can fix non-coherent DMA aliases:

https://lore.kernel.org/lkml/20200224194446.690816-1-hch@lst.de

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
