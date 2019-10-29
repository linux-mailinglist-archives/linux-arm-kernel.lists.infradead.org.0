Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 732F2E8778
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 12:50:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=00kXZfzUSZCMVXKSwiazwTq9b5ODlPg1dH3Q975opSI=; b=n8vV/lHgIXt0b6
	ysjIshTXA/qX+UUXanLDqbTaTT9gbUadocXfLSwmFuHyYjC2KoVxBhhl460EJy/vf1ziN/imRQWpr
	Iiv3G1Ccg9rv2gKleBSTb6r8yRqqcrL4uh7xt0wPmiX4MbQNh3N+R23kLF6ZuUgEMJLUPiYNcx8SO
	ZklRBkWuENSgOJ/CIO6BXlUEjMco3A4SbG6nZJT0OZfCDUIawXX0PmjG/Q70dWWdAjD9GzcauJ2pl
	c5VQl5IRmiJ26HvFyAzXPp93EfKSRmGkvrGi96C7p78GNXEvDAZCOV4zjQ+KxVYMRkhstLBGba0yQ
	Q/iqTNGq0swwJi+X5ilQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPQ13-0003nY-7d; Tue, 29 Oct 2019 11:50:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPQ0r-0003mr-Qx
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 11:50:15 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5318521D7C;
 Tue, 29 Oct 2019 11:50:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572349813;
 bh=p2adGSsLxFxJ6cJw5+JhARA/vjF5DCxuALEJz8Rs+gg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ykT8g89+JWnDxsAJIOKwWqOE7A55myYIXLzfivx+uV0Dc6SF+5RuHkqtR5M6IDv1J
 AU4L9D/f+lTo9naAOu80Tc4BUjrFLT4WBKFWJGCM3WBRVAJ0djYZArXJ1OcSZceRo2
 H/hLX75tkDBzcYUerj12rnOXHPZrt3Tgrd4h9Bqo=
Date: Tue, 29 Oct 2019 11:50:08 +0000
From: Will Deacon <will@kernel.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [PATCH] arm64: cpufeature: Enable Qualcomm Falkor errata 1009
 for Kryo
Message-ID: <20191029115008.GD12103@willie-the-truck>
References: <20191029060604.1208925-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191029060604.1208925-1-bjorn.andersson@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_045013_896051_FCFDEE13 
X-CRM114-Status: GOOD (  15.83  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 28, 2019 at 11:06:04PM -0700, Bjorn Andersson wrote:
> The Kryo cores share errata 1009 with Falkor, so add their model
> definitions and enable it for them as well.
> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> ---
>  arch/arm64/include/asm/cputype.h | 4 ++++
>  arch/arm64/kernel/cpu_errata.c   | 2 ++
>  2 files changed, 6 insertions(+)
> 
> diff --git a/arch/arm64/include/asm/cputype.h b/arch/arm64/include/asm/cputype.h
> index b1454d117cd2..8067476ea2e4 100644
> --- a/arch/arm64/include/asm/cputype.h
> +++ b/arch/arm64/include/asm/cputype.h
> @@ -84,6 +84,8 @@
>  #define QCOM_CPU_PART_FALKOR_V1		0x800
>  #define QCOM_CPU_PART_FALKOR		0xC00
>  #define QCOM_CPU_PART_KRYO		0x200
> +#define QCOM_CPU_PART_KRYO_GOLD		0x211
> +#define QCOM_CPU_PART_KRYO_SILVER	0x205

Can you double-check this, please? My Pixel-1 phone claims something with
0x201, but I don't know if that's what you were aiming for. It would be
great if Qualcomm could document these register fields somewhere, especially
since we're trying to work around their hardware errata for them.

That said...

>  #define NVIDIA_CPU_PART_DENVER		0x003
>  #define NVIDIA_CPU_PART_CARMEL		0x004
> @@ -109,6 +111,8 @@
>  #define MIDR_QCOM_FALKOR_V1 MIDR_CPU_MODEL(ARM_CPU_IMP_QCOM, QCOM_CPU_PART_FALKOR_V1)
>  #define MIDR_QCOM_FALKOR MIDR_CPU_MODEL(ARM_CPU_IMP_QCOM, QCOM_CPU_PART_FALKOR)
>  #define MIDR_QCOM_KRYO MIDR_CPU_MODEL(ARM_CPU_IMP_QCOM, QCOM_CPU_PART_KRYO)
> +#define MIDR_QCOM_KRYO_GOLD MIDR_CPU_MODEL(ARM_CPU_IMP_QCOM, QCOM_CPU_PART_KRYO_GOLD)
> +#define MIDR_QCOM_KRYO_SILVER MIDR_CPU_MODEL(ARM_CPU_IMP_QCOM, QCOM_CPU_PART_KRYO_SILVER)
>  #define MIDR_NVIDIA_DENVER MIDR_CPU_MODEL(ARM_CPU_IMP_NVIDIA, NVIDIA_CPU_PART_DENVER)
>  #define MIDR_NVIDIA_CARMEL MIDR_CPU_MODEL(ARM_CPU_IMP_NVIDIA, NVIDIA_CPU_PART_CARMEL)
>  #define MIDR_FUJITSU_A64FX MIDR_CPU_MODEL(ARM_CPU_IMP_FUJITSU, FUJITSU_CPU_PART_A64FX)
> diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
> index cdd8df033536..315780e7bee7 100644
> --- a/arch/arm64/kernel/cpu_errata.c
> +++ b/arch/arm64/kernel/cpu_errata.c
> @@ -627,6 +627,8 @@ static const struct midr_range arm64_harden_el2_vectors[] = {
>  static const struct midr_range arm64_repeat_tlbi_cpus[] = {
>  #ifdef CONFIG_QCOM_FALKOR_ERRATUM_1009
>  	MIDR_RANGE(MIDR_QCOM_FALKOR_V1, 0, 0, 0, 0),
> +	MIDR_ALL_VERSIONS(MIDR_QCOM_KRYO_GOLD),
> +	MIDR_ALL_VERSIONS(MIDR_QCOM_KRYO_SILVER),

... why aren't you following what we do for E1003 and using the
'is_kryo_midr' callback to match these CPUs?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
