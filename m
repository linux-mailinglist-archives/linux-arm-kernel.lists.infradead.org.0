Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC7008B4E1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 12:02:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=d0Hrq+MHy7PwU8U1QsJuJ+g2FJYmWavrmiSaV95hf5s=; b=QToUqDwhzIsm7EbU9dL23ZCv6
	kM/lW1c3t0FoTSsao6lKiOzmuYRf9ZXY8/HA1Adp9vqXS2gWO220cCNjYrYJMtou/l1rUFJhmGD1R
	Uocr6+wYgUws5+xzY567Tw6gN6J6SctTYC44YY8JgQJn49wlKoYoVYewZUlfiTuFN2XzrLGFiop2g
	Fg6zuTFbiZOn8H9kN7sOTGg1d87TnZYBTMnYFU1Tf2O1qT8MMaOmbzvPWqMEq2qM7zbCzaQe0h2HY
	pcJJlLZhYGZ7SsMQgLChumXnAFDCBd76Vo/FFf8oUlpMsi25RV7pzUUqhJW8AsNM2ms/AFvo0KI6n
	/J5207eWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxTd0-0006Ro-Gt; Tue, 13 Aug 2019 10:02:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxTcl-0006R3-Qc
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 10:01:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 231A6337;
 Tue, 13 Aug 2019 03:01:51 -0700 (PDT)
Received: from dawn-kernel.cambridge.arm.com (unknown [10.1.197.116])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8AF8B3F706;
 Tue, 13 Aug 2019 03:01:50 -0700 (PDT)
Subject: Re: [PATCH 2/2] arm64: Don't use KPTI where we have E0PD
To: broonie@kernel.org, catalin.marinas@arm.com, will@kernel.org
References: <20190812125738.17388-1-broonie@kernel.org>
 <20190812125738.17388-3-broonie@kernel.org>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <defe4663-770b-ee3a-21e1-29e7835c2344@arm.com>
Date: Tue, 13 Aug 2019 11:01:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190812125738.17388-3-broonie@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_030151_904153_0A5FD180 
X-CRM114-Status: GOOD (  23.77  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 12/08/2019 13:57, Mark Brown wrote:
> Since E0PD is intended to fulfil the same role as KPTI we don't need to
> use KPTI on CPUs where E0PD is available, we can rely on E0PD instead.
> Change the check that forces KPTI on when KASLR is enabled to check for
> E0PD before doing so, CPUs with E0PD are not expected to be affected by
> meltdown so should not need to enable KPTI for other reasons.
> 
> Since we repeat the KPTI check for all CPUs we will still enable KPTI if
> any of the CPUs in the system lacks E0PD. Since KPTI itself is not changed
> by this patch once we enable KPTI we will do so for all CPUs. This is safe
> but not optimally performant for such systems.
> 
> KPTI can still be forced on from the command line if required.
> 
> Signed-off-by: Mark Brown <broonie@kernel.org>
> ---
>   arch/arm64/kernel/cpufeature.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> index 4aa1d2026bef..322004409211 100644
> --- a/arch/arm64/kernel/cpufeature.c
> +++ b/arch/arm64/kernel/cpufeature.c
> @@ -995,7 +995,7 @@ static bool unmap_kernel_at_el0(const struct arm64_cpu_capabilities *entry,
>   
>   	/* Useful for KASLR robustness */
>   	if (IS_ENABLED(CONFIG_RANDOMIZE_BASE) && kaslr_offset() > 0) {
> -		if (!__kpti_forced) {
> +		if (!__kpti_forced && !this_cpu_has_cap(ARM64_HAS_E0PD)) {
>   			str = "KASLR";
>   			__kpti_forced = 1;
>   		}

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
