Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4524CE8E4F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 18:39:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dzo0chs60aZQ2GZ5A3wY0ksaF8NH1mkmB3V62pVgUJ8=; b=BVG6j5bKIIo0oS
	fJGSEL6j8Fh/dErwfYXwPJ2NuilYrEG9S3/EHCJtEOIK1+wZmd/++OX0Xc6DYsdcB2bd4l0GA/gU2
	OFbTnlox3+2DRFwvdDjH0OmynkDSK0is11WNQUA3nXTfG1bF/GqioC0lWKDS8OEsTM6RnExkEW5/E
	B3UldDLSkVCTN1CpxWshzlIoCjnnIGXAVyrKNqppb3yzjQvQBlp0XVGTmhrLpfY1i/Hdn2NbMNObZ
	Ewf2ZGzgXnpV2hWR6HM0v1VA48UM0yIl26tE0OYmxtjXNnXLe1Wvibrtp1Zg1+qR8BMjz12rmRe55
	L4AS8TSPVYTLrW5H7SSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPVSu-0003R9-ET; Tue, 29 Oct 2019 17:39:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPVSj-0003PR-RA
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 17:39:23 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 95A02208E3;
 Tue, 29 Oct 2019 17:39:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572370761;
 bh=tsXvNgMCLtR2kuqm1evXZDlLqqX0YULzlHhwJ/E5i/s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=2dU3cm7PgO/ow0TadOq/6Bwc7XtLUensNccc5tmNmofFREhKLD/vngdmbLG3JE3KO
 69XR/Lsd/xToVK/LJnacwXJKdbHTZyMcxMDH19YML2B7YS9NgPCVYJ05Z6hNzW0LGz
 2+m+vTxOI3/O2ikGt2SZgt03eq+C2Xjtm9vEjQps=
Date: Tue, 29 Oct 2019 17:39:15 +0000
From: Will Deacon <will@kernel.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [PATCH v2] arm64: cpufeature: Enable Qualcomm Falkor/Kryo errata
 1003
Message-ID: <20191029173915.GC13281@willie-the-truck>
References: <20191029171539.1374553-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191029171539.1374553-1-bjorn.andersson@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_103921_901058_F5D84E08 
X-CRM114-Status: GOOD (  16.66  )
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

On Tue, Oct 29, 2019 at 10:15:39AM -0700, Bjorn Andersson wrote:
> With the introduction of 'cce360b54ce6 ("arm64: capabilities: Filter the
> entries based on a given mask")' the Qualcomm Falkor/Kryo errata 1003 is
> no long applied.
> 
> The result of not applying errata 1003 is that MSM8996 runs into various
> RCU stalls and fails to boot most of the times.
> 
> Give 1003 a "type" to ensure they are not filtered out in
> update_cpu_capabilities().
> 
> Fixes: cce360b54ce6 ("arm64: capabilities: Filter the entries based on a given mask")
> Cc: stable@vger.kernel.org
> Reported-by: Mark Brown <broonie@kernel.org>
> Suggested-by: Will Deacon <will@kernel.org>
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> ---
> 
> Changes since v1:
> - s/ARM64_CPUCAP_SCOPE_LOCAL_CPU/ARM64_CPUCAP_LOCAL_CPU_ERRATUM/
> - Dropped 1009 "fix" as it already had a type from ERRATA_MIDR_RANGE_LIST()
> 
>  arch/arm64/kernel/cpu_errata.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
> index df9465120e2f..3facd5ca52ed 100644
> --- a/arch/arm64/kernel/cpu_errata.c
> +++ b/arch/arm64/kernel/cpu_errata.c
> @@ -780,6 +780,7 @@ const struct arm64_cpu_capabilities arm64_errata[] = {
>  	{
>  		.desc = "Qualcomm Technologies Falkor/Kryo erratum 1003",
>  		.capability = ARM64_WORKAROUND_QCOM_FALKOR_E1003,
> +		.type = ARM64_CPUCAP_LOCAL_CPU_ERRATUM,
>  		.matches = cpucap_multi_entry_cap_matches,
>  		.match_list = qcom_erratum_1003_list,
>  	},
> -- 
> 2.23.0

Thanks, I'll pick this up as a fix.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
