Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C26AB65BB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 16:21:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VmkrUJld5DoIk3Y3haior7cgYTK0aHgKBiUwz5JQvB4=; b=tgiNb9JMJhSCuPEujzsHOVcBN
	TzVr8mIgET0wd1hkh1/GFLdZDikLvPFT7oiZneXhrYkSwGmcSeZm14o496TZ5mhnVmcIUy6NrGEHI
	VkZ8CMmjDvlieNRkzqlVr1EX16G1UOkHKoMzN2S57Z0xEtd+TxTHrp4xWw8OGMi+dcxc/Gp6gI6II
	fGOJqq98MEXWinr8R6Fem3bZ/GormpI3EXw98MnoMbU+MG2zslKgAr0II11dwOfYjeguhey1kJcBv
	AoDerVyVdn+GsEx48pl0z+CY1Qwtw2EBsOfxmrU7cmkycvqeENFSIQ2IbfGCNO55t3iHvBqGsvK+B
	GbWjLV1Fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAapK-00070k-3n; Wed, 18 Sep 2019 14:21:02 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAap5-0006zi-Lo
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 14:20:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 01E6D1000;
 Wed, 18 Sep 2019 07:20:45 -0700 (PDT)
Received: from dawn-kernel.cambridge.arm.com (unknown [10.1.197.116])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6A6B83F67D;
 Wed, 18 Sep 2019 07:20:42 -0700 (PDT)
Subject: Re: [PATCH v4 1/3] arm64: cpufeature: introduce helper cpu_has_hw_af()
To: Jia He <justin.he@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 James Morse <james.morse@arm.com>, Marc Zyngier <maz@kernel.org>,
 Matthew Wilcox <willy@infradead.org>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org
References: <20190918131914.38081-1-justin.he@arm.com>
 <20190918131914.38081-2-justin.he@arm.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <78881acb-5871-9534-c8cc-6f54937be3fd@arm.com>
Date: Wed, 18 Sep 2019 15:20:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <20190918131914.38081-2-justin.he@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_072047_970140_6D38CD80 
X-CRM114-Status: GOOD (  19.82  )
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
Cc: Ralph Campbell <rcampbell@nvidia.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Jun Yao <yaojun8558363@gmail.com>, Kaly Xin <Kaly.Xin@arm.com>,
 =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 Punit Agrawal <punitagrawal@gmail.com>, hejianet@gmail.com,
 Thomas Gleixner <tglx@linutronix.de>, Robin Murphy <robin.murphy@arm.com>,
 Alex Van Brunt <avanbrunt@nvidia.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jia,

On 18/09/2019 14:19, Jia He wrote:
> We unconditionally set the HW_AFDBM capability and only enable it on
> CPUs which really have the feature. But sometimes we need to know
> whether this cpu has the capability of HW AF. So decouple AF from
> DBM by new helper cpu_has_hw_af().
> 
> Signed-off-by: Jia He <justin.he@arm.com>
> Suggested-by: Suzuki Poulose <Suzuki.Poulose@arm.com>
> ---
>   arch/arm64/include/asm/cpufeature.h | 1 +
>   arch/arm64/kernel/cpufeature.c      | 6 ++++++
>   2 files changed, 7 insertions(+)
> 
> diff --git a/arch/arm64/include/asm/cpufeature.h b/arch/arm64/include/asm/cpufeature.h
> index c96ffa4722d3..206b6e3954cf 100644
> --- a/arch/arm64/include/asm/cpufeature.h
> +++ b/arch/arm64/include/asm/cpufeature.h
> @@ -390,6 +390,7 @@ extern DECLARE_BITMAP(boot_capabilities, ARM64_NPATCHABLE);
>   	for_each_set_bit(cap, cpu_hwcaps, ARM64_NCAPS)
>   
>   bool this_cpu_has_cap(unsigned int cap);
> +bool cpu_has_hw_af(void);
>   void cpu_set_feature(unsigned int num);
>   bool cpu_have_feature(unsigned int num);
>   unsigned long cpu_get_elf_hwcap(void);
> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> index b1fdc486aed8..c5097f58649d 100644
> --- a/arch/arm64/kernel/cpufeature.c
> +++ b/arch/arm64/kernel/cpufeature.c
> @@ -1141,6 +1141,12 @@ static bool has_hw_dbm(const struct arm64_cpu_capabilities *cap,
>   	return true;
>   }
>   
> +/* Decouple AF from AFDBM. */
> +bool cpu_has_hw_af(void)
> +{
Sorry for not having asked this earlier. Are we interested in,

"whether *this* CPU has AF support ?" or "whether *at least one*
CPU has the AF support" ? The following code does the former.

> +	return (read_cpuid(ID_AA64MMFR1_EL1) & 0xf);

Getting the latter is tricky, and I think it is what we are looking
for here. In which case we may need something more to report this.

Kind regards
Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
