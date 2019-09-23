Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FECABB913
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 18:07:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RSjSJc606tyz8+M80jU4uLgPG4YJxesfU+hVvV+LnAw=; b=JuY5MqaQ2W00RL
	tiI4uG6YorShE/e6V7/8ULOd21xS3HsXQ3L0sK/X1qQj2+IKmkDyq/cNA1pn6xi74tipY/XyR5iYk
	IwXmA+y5XFNnkaxa7IdOKLi6OXMU0+CFf6nLMEchrYWc2imQRmE7E58WYqTteww3Zohbnv2LJ2l62
	VC+dq4CWeqVa4S/v5tyT17h7IsX9+qAtPLzghxksQhPMqsh0VC+Y6jbdtoa6THSSNhjVcvxrxNZgh
	39y9Khrl/s4uXVpbfHFsuxs0pTJrxZYp+hoyk1Q1VMLKyu4unjGwwds3HBSeC69AMe8bYr1W8APJJ
	wO+Wnfx79guUgkyw4Jow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCQsB-0007y7-J0; Mon, 23 Sep 2019 16:07:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCQry-0007vq-B3
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 16:07:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A4E611000;
 Mon, 23 Sep 2019 09:07:16 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 0107D3F67D; Mon, 23 Sep 2019 09:07:13 -0700 (PDT)
Date: Mon, 23 Sep 2019 17:07:11 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Jia He <justin.he@arm.com>
Subject: Re: [PATCH v8 1/3] arm64: cpufeature: introduce helper cpu_has_hw_af()
Message-ID: <20190923160710.GC10192@arrakis.emea.arm.com>
References: <20190921135054.142360-1-justin.he@arm.com>
 <20190921135054.142360-2-justin.he@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190921135054.142360-2-justin.he@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_090722_426789_C6FDD7DA 
X-CRM114-Status: GOOD (  17.94  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kaly Xin <Kaly.Xin@arm.com>,
 Ralph Campbell <rcampbell@nvidia.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Suzuki Poulose <Suzuki.Poulose@arm.com>, Marc Zyngier <maz@kernel.org>,
 Anshuman Khandual <anshuman.khandual@arm.com>, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, linux-mm@kvack.org,
 =?iso-8859-1?B?Suly9G1l?= Glisse <jglisse@redhat.com>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Punit Agrawal <punitagrawal@gmail.com>, hejianet@gmail.com,
 Thomas Gleixner <tglx@linutronix.de>, nd@arm.com,
 Will Deacon <will@kernel.org>, Alex Van Brunt <avanbrunt@nvidia.com>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Sep 21, 2019 at 09:50:52PM +0800, Jia He wrote:
> We unconditionally set the HW_AFDBM capability and only enable it on
> CPUs which really have the feature. But sometimes we need to know
> whether this cpu has the capability of HW AF. So decouple AF from
> DBM by new helper cpu_has_hw_af().
> 
> Reported-by: kbuild test robot <lkp@intel.com>
> Suggested-by: Suzuki Poulose <Suzuki.Poulose@arm.com>
> Signed-off-by: Jia He <justin.he@arm.com>
> ---
>  arch/arm64/include/asm/cpufeature.h | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/arch/arm64/include/asm/cpufeature.h b/arch/arm64/include/asm/cpufeature.h
> index c96ffa4722d3..46caf934ba4e 100644
> --- a/arch/arm64/include/asm/cpufeature.h
> +++ b/arch/arm64/include/asm/cpufeature.h
> @@ -667,6 +667,16 @@ static inline u32 id_aa64mmfr0_parange_to_phys_shift(int parange)
>  	default: return CONFIG_ARM64_PA_BITS;
>  	}
>  }
> +
> +/* Decouple AF from AFDBM. */

We could do with a better comment here or just remove it altogether. The
aim of the patch was to decouple AF check from the AF+DBM but the
comment here should describe what the function does. Maybe something
like: "Check whether hardware update of the Access flag is supported".

> +static inline bool cpu_has_hw_af(void)
> +{
> +	if (IS_ENABLED(CONFIG_ARM64_HW_AFDBM))
> +		return read_cpuid(ID_AA64MMFR1_EL1) & 0xf;
> +
> +	return false;
> +}

Other than the comment above,

Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
