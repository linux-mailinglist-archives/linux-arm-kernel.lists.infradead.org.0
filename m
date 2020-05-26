Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2307A1E199B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 04:40:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SmRq7f9QRE0j8Vc+vxdbDIhyNpFbbId8rDcLKKeaFy4=; b=GmpY7c2T4Jdk9M
	JB428IOXPXlsOnkucAnmRPO8an41TlE98x/kB1DNEthFy+eNEshcsXWiOQ8SHCWzbqLbfA5RxroeA
	y8uZFauunnwDKIp6907IxPLyWKVqhUIcTHhEzddowe+cYk2KTAhaeMjDpcXmE3v3M1cY4TrqwUtb+
	ljNCOTZr/iGfPZ2Dg58suV/e4mhCqVaOFCh870lHj+jQb2TESTiY7eemagnpIQRdKPjNydkdVeBXK
	EJGGROuAer/EMJBeP/q53MtxSnEsHjEMd4JiVN5//6wiizv698ZUcdSeSJRwejFiQIJUbAijIRiGa
	1P/5LfUiD8Ch91wDjP6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdPVZ-0005wZ-18; Tue, 26 May 2020 02:40:01 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdPVR-0005vG-EW
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 02:39:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D92A51FB;
 Mon, 25 May 2020 19:39:50 -0700 (PDT)
Received: from [10.163.76.123] (unknown [10.163.76.123])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3712B3F52E;
 Mon, 25 May 2020 19:39:42 -0700 (PDT)
Subject: Re: [PATCH v3 1/6] arm64: Detect the ARMv8.4 TTL feature
To: Zhenyu Ye <yezhenyu2@huawei.com>, catalin.marinas@arm.com,
 peterz@infradead.org, mark.rutland@arm.com, will@kernel.org,
 aneesh.kumar@linux.ibm.com, akpm@linux-foundation.org, npiggin@gmail.com,
 arnd@arndb.de, rostedt@goodmis.org, maz@kernel.org, suzuki.poulose@arm.com,
 tglx@linutronix.de, yuzhao@google.com, Dave.Martin@arm.com,
 steven.price@arm.com, broonie@kernel.org, guohanjun@huawei.com
References: <20200525125300.794-1-yezhenyu2@huawei.com>
 <20200525125300.794-2-yezhenyu2@huawei.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <c6b6eb07-2606-9fc0-280a-e53b81a6491c@arm.com>
Date: Tue, 26 May 2020 08:09:03 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20200525125300.794-2-yezhenyu2@huawei.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_193953_528852_2BE3017C 
X-CRM114-Status: GOOD (  13.41  )
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
Cc: linux-arch@vger.kernel.org, linux-kernel@vger.kernel.org,
 xiexiangyou@huawei.com, zhangshaokun@hisilicon.com, linux-mm@kvack.org,
 arm@kernel.org, prime.zeng@hisilicon.com, kuhn.chenqun@huawei.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Zhenyu,

On 05/25/2020 06:22 PM, Zhenyu Ye wrote:
> diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
> index c4ac0ac25a00..477d84ba1056 100644
> --- a/arch/arm64/include/asm/sysreg.h
> +++ b/arch/arm64/include/asm/sysreg.h
> @@ -725,6 +725,7 @@
>  
>  /* id_aa64mmfr2 */
>  #define ID_AA64MMFR2_E0PD_SHIFT		60
> +#define ID_AA64MMFR2_TTL_SHIFT		48
>  #define ID_AA64MMFR2_FWB_SHIFT		40
>  #define ID_AA64MMFR2_AT_SHIFT		32
>  #define ID_AA64MMFR2_LVA_SHIFT		16
> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> index 9fac745aa7bb..d993dc6dc7d5 100644
> --- a/arch/arm64/kernel/cpufeature.c
> +++ b/arch/arm64/kernel/cpufeature.c
> @@ -244,6 +244,7 @@ static const struct arm64_ftr_bits ftr_id_aa64mmfr1[] = {
>  
>  static const struct arm64_ftr_bits ftr_id_aa64mmfr2[] = {
>  	ARM64_FTR_BITS(FTR_HIDDEN, FTR_NONSTRICT, FTR_LOWER_SAFE, ID_AA64MMFR2_E0PD_SHIFT, 4, 0),
> +	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64MMFR2_TTL_SHIFT, 4, 0),
>  	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64MMFR2_FWB_SHIFT, 4, 0),
>  	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64MMFR2_AT_SHIFT, 4, 0),
>  	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64MMFR2_LVA_SHIFT, 4, 0),
> @@ -1622,6 +1623,16 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
>  		.matches = has_cpuid_feature,
>  		.cpu_enable = cpu_has_fwb,
>  	},

This patch (https://patchwork.kernel.org/patch/11557359/) is adding some
more ID_AA64MMFR2 features including the TTL. I am going to respin parts
of the V4 series patches along with the above mentioned patch. So please
rebase this series accordingly, probably on latest next.

- Anshuman

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
