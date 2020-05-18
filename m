Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B38871D76FE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 13:26:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cL94JBkyAU/rYVHApvvy2EyEeiytERZZtp/cynVcDdM=; b=V4KkwnxMzmZba5
	NfESK+uGw0uPdYXP8k4e6IsDiweoMH7wYmNCxlrjBtEuK3vVz2s2K8PK1O2ZZRrINtbN9+BHCDqAR
	svb3Tn0gneJS32CGFAe7E8wYmihPKwQVLB8V1TgYg4poVdccBA8jkHMLTPkzlCxqtkmZ3X70GS1hB
	dYOkshoO2bazOLUdtGvOq6ktn00mmT0npBOfXBE9y3ycRTFD6V7+vlhHIrtY14iQGy8NwFV1RSUzf
	XyFA0+ihLCyl1af5MNKOM1kk55D+GmgCPQ5j84oiqIhTL0qvnFmgUKd/ykdectZ5rI2KM8rR/ylwq
	RSZFoGUPSj/Hync/BPPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaduQ-0005b8-9B; Mon, 18 May 2020 11:26:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaduH-0005aC-Fy
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 11:26:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 06174106F;
 Mon, 18 May 2020 04:26:02 -0700 (PDT)
Received: from [10.57.27.185] (unknown [10.57.27.185])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 194B13F52E;
 Mon, 18 May 2020 04:25:59 -0700 (PDT)
Subject: Re: [PATCH v4 24/26] arm64: mte: Introduce early param to disable MTE
 support
To: Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org
References: <20200515171612.1020-1-catalin.marinas@arm.com>
 <20200515171612.1020-25-catalin.marinas@arm.com>
From: Vladimir Murzin <vladimir.murzin@arm.com>
Message-ID: <a2ad6cbf-2632-3cda-eb49-74ddfbed2cec@arm.com>
Date: Mon, 18 May 2020 12:26:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20200515171612.1020-25-catalin.marinas@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_042605_575864_91B94FA6 
X-CRM114-Status: GOOD (  16.23  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-arch@vger.kernel.org, Will Deacon <will@kernel.org>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, linux-mm@kvack.org,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Peter Collingbourne <pcc@google.com>, Dave P Martin <Dave.Martin@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/15/20 6:16 PM, Catalin Marinas wrote:
> For performance analysis it may be desirable to disable MTE altogether
> via an early param. Introduce arm64.mte_disable and, if true, filter out
> the sanitised ID_AA64PFR1_EL1.MTE field to avoid exposing the HWCAP to
> user.
> 
> Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> ---
> 
> Notes:
>     New in v4.
> 
>  Documentation/admin-guide/kernel-parameters.txt |  4 ++++
>  arch/arm64/kernel/cpufeature.c                  | 11 +++++++++++
>  2 files changed, 15 insertions(+)
> 
> diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
> index f2a93c8679e8..7436e7462b85 100644
> --- a/Documentation/admin-guide/kernel-parameters.txt
> +++ b/Documentation/admin-guide/kernel-parameters.txt
> @@ -373,6 +373,10 @@
>  	arcrimi=	[HW,NET] ARCnet - "RIM I" (entirely mem-mapped) cards
>  			Format: <io>,<irq>,<nodeID>
>  
> +	arm64.mte_disable=
> +			[ARM64] Disable Linux support for the Memory
> +			Tagging Extension (both user and in-kernel).
> +

Should it really to take parameter (on/off/true/false)? It may lead to expectation
that arm64.mte_disable=false should enable MT and, yes, double negatives make it
look ugly, so if we do need parameter, can it be arm64.mte=on/off/true/false?

Cheers
Vladimir

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
