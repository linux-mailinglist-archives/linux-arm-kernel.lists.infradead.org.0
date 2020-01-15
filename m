Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16A4C13C1A1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 13:49:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=65rmP+HFwurNcd89uc3b+DlKv3OPmiY1O+pfvWGwkFI=; b=R/6358Ed1FHl0b
	Hb+ULmH6CB2c/d5xCTf5WMXPjDCRBOL1V+1nCSXg0NV9sNkROUA0xdYQ/8nvjAlsU+tgohuestAub
	M3HBwE66uqyCALoSgXg671ST7aEswAtmozuszFSDLzyhXywrNTTLGRsSPpPQYNs4TFY2pW9ESttOs
	7c+UbtoSgoW/HJe4foNTwcb5nASaC8/B395CxkeUWSuzmfhfRVDnGIrYoVJv/J1xaOKTg5tGBx42E
	PfgcVZG1j9mu2af4Dwqh2eh78WrJqAqSetGPimOkvV6jak1W5c4+g92ScJxl5zfJ/VT0A2CzNDMb6
	CQvl5UMoqUV5O/iv6o7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iri73-00036X-05; Wed, 15 Jan 2020 12:49:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iri6q-00035l-RY
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 12:49:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7249A31B;
 Wed, 15 Jan 2020 04:49:19 -0800 (PST)
Received: from [10.2.69.39] (unknown [10.2.69.39])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id ECFD03F534;
 Wed, 15 Jan 2020 04:49:18 -0800 (PST)
Subject: Re: [PATCH v2 0/2] arm64: Simplify gas LSE support detection
To: Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org
References: <20200115113008.3334-1-catalin.marinas@arm.com>
From: Vladimir Murzin <vladimir.murzin@arm.com>
Message-ID: <df4eda09-3234-8e32-6ea3-6fc6628cae05@arm.com>
Date: Wed, 15 Jan 2020 12:49:17 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20200115113008.3334-1-catalin.marinas@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_044920_930621_53167C88 
X-CRM114-Status: GOOD (  14.23  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 1/15/20 11:30 AM, Catalin Marinas wrote:
> Version two of the patch series moving the LSE assembler support
> detection from Makefile to Kconfig.
> 
> Changes since v1 [1]:
> 
> - Re-introduce the Makefile warning if the .config contains
>   CONFIG_ARM64_USE_LSE_ATOMICS but the assembler does not support the
>   feature, disabling CONFIG_ARM64_LSE_ATOMICS.
> 
> [1] http://lkml.kernel.org/r/20200109174948.48211-1-catalin.marinas@arm.com
> 
> Catalin Marinas (2):
>   kbuild: Add support for 'as-instr' to be used in Kconfig files
>   arm64: Move the LSE gas support detection to Kconfig
> 
>  arch/arm64/Kconfig                    |  5 +++++
>  arch/arm64/Makefile                   | 11 ++++-------
>  arch/arm64/include/asm/atomic_ll_sc.h |  2 +-
>  arch/arm64/include/asm/lse.h          |  6 +++---
>  arch/arm64/kernel/cpufeature.c        |  4 ++--
>  scripts/Kconfig.include               |  4 ++++
>  6 files changed, 19 insertions(+), 13 deletions(-)
> 
> 

with

aarch64-linux-gnu-gcc (crosstool-NG linaro-1.13.1-4.9-2014.09 - Linaro GCC 4.9-2014.09) 4.9.2 20140904 (prerelease)

I see (among other warnings)

    arch/arm64/Makefile:35: LSE atomics not supported by binutils

while with

aarch64-none-linux-gnu-gcc (GNU Toolchain for the A-profile Architecture 9.2-2019.12 (arm-9.10)) 9.2.1 20191025

warning disappears.


FWIW:

Reviewed-by: Vladimir Murzin <vladimir.murzin@arm.com>
Tested-by: Vladimir Murzin <vladimir.murzin@arm.com>


Thanks
Vladimir

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
