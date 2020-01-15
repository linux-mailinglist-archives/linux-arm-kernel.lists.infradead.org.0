Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F54F13C1AB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 13:51:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TD9lthIFsbmT919AoDDnl1hO1P+6uUvVmhPaXjrfqX4=; b=LNI+fNoNIKAQPS
	a8zY5KzSpYpsEj+KH2Mx5RW6spk3dTuLL8gjhk+toigOesOvyf4qFbYPE+pyJL9ZdSUZQppBAG7TN
	VV8Y//PDQa7h1qyWG+i7zXX4PMLeIQZP7AHV52ftGrbvenoSv3fIXDAXu9wXJ0N+WEq1kQB2gfjn8
	J5cUPOxvUuP+ybizhCavhSgs3dVjue6QWXjWjBMcZFCpls9i9NuLckcSyzXhaU5nr4m+bnbH+tIkQ
	ZBQ0JYe4pV61/vWAka8NWMw1iWJ4JvffFT92/fAYPDL/ljHclK3tgw9ZyrswzuBhO/hiI3auds+9B
	VlzGRRlSCk0MZyb2lh2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iri8v-0004eA-3Z; Wed, 15 Jan 2020 12:51:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iri8g-0004dT-23
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 12:51:18 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1797A222C3;
 Wed, 15 Jan 2020 12:51:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579092673;
 bh=/IAnJp8fOXJCUp+fBOiZecTY+YVpAdP6xRDOE7HcY8A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mXNgVjd0gWBWP3+skn8SGs7qDrrUFnhGNEXGRVB7lU18ZUhofpkm/7G/PwWUlCglG
 bWYxIozL/SvHd6K7nsX2pGkBgjq2WJ+S1DmsUiVcNIBG1+q9lgQX6rfOQ9PmCTrfnF
 v+bb2/E2LpndN1BP09P3WHYib9lXEjCmFBE/GU98=
Date: Wed, 15 Jan 2020 12:51:10 +0000
From: Will Deacon <will@kernel.org>
To: Vladimir Murzin <vladimir.murzin@arm.com>
Subject: Re: [PATCH v2 0/2] arm64: Simplify gas LSE support detection
Message-ID: <20200115125109.GH21692@willie-the-truck>
References: <20200115113008.3334-1-catalin.marinas@arm.com>
 <df4eda09-3234-8e32-6ea3-6fc6628cae05@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <df4eda09-3234-8e32-6ea3-6fc6628cae05@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_045114_121901_183BC58B 
X-CRM114-Status: GOOD (  15.76  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 15, 2020 at 12:49:17PM +0000, Vladimir Murzin wrote:
> On 1/15/20 11:30 AM, Catalin Marinas wrote:
> > Version two of the patch series moving the LSE assembler support
> > detection from Makefile to Kconfig.
> > 
> > Changes since v1 [1]:
> > 
> > - Re-introduce the Makefile warning if the .config contains
> >   CONFIG_ARM64_USE_LSE_ATOMICS but the assembler does not support the
> >   feature, disabling CONFIG_ARM64_LSE_ATOMICS.
> > 
> > [1] http://lkml.kernel.org/r/20200109174948.48211-1-catalin.marinas@arm.com
> > 
> > Catalin Marinas (2):
> >   kbuild: Add support for 'as-instr' to be used in Kconfig files
> >   arm64: Move the LSE gas support detection to Kconfig
> > 
> >  arch/arm64/Kconfig                    |  5 +++++
> >  arch/arm64/Makefile                   | 11 ++++-------
> >  arch/arm64/include/asm/atomic_ll_sc.h |  2 +-
> >  arch/arm64/include/asm/lse.h          |  6 +++---
> >  arch/arm64/kernel/cpufeature.c        |  4 ++--
> >  scripts/Kconfig.include               |  4 ++++
> >  6 files changed, 19 insertions(+), 13 deletions(-)
> > 
> > 
> 
> with
> 
> aarch64-linux-gnu-gcc (crosstool-NG linaro-1.13.1-4.9-2014.09 - Linaro GCC 4.9-2014.09) 4.9.2 20140904 (prerelease)
> 
> I see (among other warnings)
> 
>     arch/arm64/Makefile:35: LSE atomics not supported by binutils
> 
> while with
> 
> aarch64-none-linux-gnu-gcc (GNU Toolchain for the A-profile Architecture 9.2-2019.12 (arm-9.10)) 9.2.1 20191025
> 
> warning disappears.
> 
> 
> FWIW:
> 
> Reviewed-by: Vladimir Murzin <vladimir.murzin@arm.com>
> Tested-by: Vladimir Murzin <vladimir.murzin@arm.com>

Cheers, I've queued the patches with your tags.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
