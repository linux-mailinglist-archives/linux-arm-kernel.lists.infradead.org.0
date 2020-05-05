Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A74E1C5428
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 13:14:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qcRZwlzQA+GPBv05pI6P+z1zwJSAS0I2YCP29KF4cuM=; b=htDwfKPcMsCowV
	JGd5gdwCTxrF0ssYCsCp29mKNDfoPHBkKGJdtUoBVtg+HuCLho+KEOJXLdFiejcQrUTjTwrC1WSHD
	X+SaVBAZXY8bLZur+B6uXsxAkmEberhMAZuG/4y8EKFHuHCLdmkjAMzU/2+/k724HcNha8UKXxApJ
	vgPOoBfFe+XsMoj4Y4nsfqQ0ALG2MEtvZe406LKihIwQgpuZmxbogeLE2BOA50Wh+R7h+4Xp4kGMY
	dZU9aQmRKRdE2qC6oFQe6S+zfV7JI5nMH/yvd5elM5c1VnVBRiYVdqTkbsNTxnK6gqcF5sUn9oGzj
	Xz4KiTP2dZToNk5H8t/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVvWv-0005Xf-Io; Tue, 05 May 2020 11:14:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVvWo-0005Wt-Fe
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 11:14:23 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F267C206B9;
 Tue,  5 May 2020 11:14:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588677262;
 bh=0K2DpxSvS3/qR26Gr3apwXgTBLAzGZEQ2x9wJfhnTxs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PQ0hNzy9lxbvL4cILbgFbeZ/9NRJSCI9Rbt0kC9oprAvlHm2yBVvqjud3RbtPKAtC
 xZAccWb+uKtskmlWSPhSyWJZ7S/fPiZxJ8SI3C+POiOvAOBDZ82GH9nJeE1fhSJW6+
 mHAXafyh7JbkC3s7kT6femZL1bDttkNKfZmtYBmA=
Date: Tue, 5 May 2020 12:14:17 +0100
From: Will Deacon <will@kernel.org>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH V3 08/16] arm64/cpufeature: Add remaining feature bits in
 ID_MMFR4 register
Message-ID: <20200505111417.GG19710@willie-the-truck>
References: <1588426445-24344-1-git-send-email-anshuman.khandual@arm.com>
 <1588426445-24344-9-git-send-email-anshuman.khandual@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1588426445-24344-9-git-send-email-anshuman.khandual@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_041422_543020_16B7BC19 
X-CRM114-Status: GOOD (  11.99  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, May 02, 2020 at 07:03:57PM +0530, Anshuman Khandual wrote:
> Enable all remaining feature bits like EVT, CCIDX, LSM, HPDS, CnP, XNX,
> SpecSEI in ID_MMFR4 register per ARM DDI 0487F.a.
> 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> 
> Suggested-by: Mark Rutland <mark.rutland@arm.com>
> Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
> ---
>  arch/arm64/include/asm/sysreg.h |  8 ++++++++
>  arch/arm64/kernel/cpufeature.c  | 13 +++++++++++++
>  2 files changed, 21 insertions(+)
> 
> diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
> index f9e3b9350540..0f34927f52b9 100644
> --- a/arch/arm64/include/asm/sysreg.h
> +++ b/arch/arm64/include/asm/sysreg.h
> @@ -790,6 +790,14 @@
>  #define ID_ISAR6_DP_SHIFT		4
>  #define ID_ISAR6_JSCVT_SHIFT		0
>  
> +#define ID_MMFR4_EVT_SHIFT		28
> +#define ID_MMFR4_CCIDX_SHIFT		24
> +#define ID_MMFR4_LSM_SHIFT		20
> +#define ID_MMFR4_HPDS_SHIFT		16
> +#define ID_MMFR4_CNP_SHIFT		12
> +#define ID_MMFR4_XNX_SHIFT		8

Why didn't you add ID_MMFR4_AC2_SHIFT as well?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
