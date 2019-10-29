Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44B89E8750
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 12:40:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y0dXDEciFcGqL8o6/cL9ongNaKrGc+kpC+KKC1wOEtw=; b=UTrUhQ+wZua7Oy
	fY+0wUMzE7WS7IC1xpF9fOEuGHhZ55p15werzqgFK+GLYgrC7QQp+lUtY3m8sMqa0CQSOzRJ93TDQ
	KSJTW/7E7kzB0o4dciL7xywxUCsMVo/SgycoDRdSRQK0eM2ZRsruC80vg/aY4QelqUdzCiDVDccIx
	P6k1gm8ZFxPylWAoyN8/5p0iroYO+hw4FLDqjnhSuRvEVydP1NYccpejwD5XtDeKJc5dAKzBOkb5H
	W2Gj1+h8SumKAtFRfkjJ/Kdih8uNXvCfuxOFIAZafEK536xKIBwuXEGYB0Ptr1l1gdTdrPCNHT7e9
	z5kpdPNm+QcgWrpEGA5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPPrE-0007DA-SK; Tue, 29 Oct 2019 11:40:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPPr0-0006pK-0n
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 11:40:03 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 39E53217D9;
 Tue, 29 Oct 2019 11:40:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572349201;
 bh=b0Yx/pOD5w63B522OXKc4nLFXgNhCQem4ZHf05cCJ/g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZmaImj/3fhMnxq2LJucsm59PXeqHQgfZdnKGWM3z08zi1lSOJM6NqcZfdRb0MtxXa
 U+z49SFHLkVTLSkePIR15C+hnvOLdZa9MwpR8XToJkzrtTEdsNdz5EguB9DH9PLqOQ
 p4aS4h+HcZc4G4k6QhPXz1ZwG3PmNOigtBkTEXNY=
Date: Tue, 29 Oct 2019 11:39:57 +0000
From: Will Deacon <will@kernel.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [PATCH] arm64: cpufeature: Enable Qualcomm erratas
Message-ID: <20191029113956.GC12103@willie-the-truck>
References: <20191029060432.1208859-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191029060432.1208859-1-bjorn.andersson@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_044002_120278_323E4BC9 
X-CRM114-Status: GOOD (  16.22  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 linux-arm-msm@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 28, 2019 at 11:04:32PM -0700, Bjorn Andersson wrote:
> With the introduction of 'cce360b54ce6 ("arm64: capabilities: Filter the
> entries based on a given mask")' the Qualcomm erratas are no long
> applied.
> 
> The result of not applying errata 1003 is that MSM8996 runs into various
> RCU stalls and fails to boot most of the times.
> 
> Give both 1003 and 1009 a "type" to ensure they are not filtered out in
> update_cpu_capabilities().

Oh nasty. Thanks for debugging and fixing this.

> Fixes: cce360b54ce6 ("arm64: capabilities: Filter the entries based on a given mask")
> Cc: stable@vger.kernel.org
> Reported-by: Mark Brown <broonie@kernel.org>
> Suggested-by: Will Deacon <will@kernel.org>
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> ---
>  arch/arm64/kernel/cpu_errata.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
> index df9465120e2f..cdd8df033536 100644
> --- a/arch/arm64/kernel/cpu_errata.c
> +++ b/arch/arm64/kernel/cpu_errata.c
> @@ -780,6 +780,7 @@ const struct arm64_cpu_capabilities arm64_errata[] = {
>  	{
>  		.desc = "Qualcomm Technologies Falkor/Kryo erratum 1003",
>  		.capability = ARM64_WORKAROUND_QCOM_FALKOR_E1003,
> +		.type = ARM64_CPUCAP_SCOPE_LOCAL_CPU,
>  		.matches = cpucap_multi_entry_cap_matches,

This should probably be ARM64_CPUCAP_LOCAL_CPU_ERRATUM instead, but I'll
want Suzuki's ack before I take the change.

>  		.match_list = qcom_erratum_1003_list,
>  	},
> @@ -788,6 +789,7 @@ const struct arm64_cpu_capabilities arm64_errata[] = {
>  	{
>  		.desc = "Qualcomm erratum 1009, ARM erratum 1286807",
>  		.capability = ARM64_WORKAROUND_REPEAT_TLBI,
> +		.type = ARM64_CPUCAP_SCOPE_LOCAL_CPU,
>  		ERRATA_MIDR_RANGE_LIST(arm64_repeat_tlbi_cpus),

ERRATA_MIDR_RANGE_LIST sets the type already, so I think this is redundant.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
