Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26FF649ABF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 09:39:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yIK2b7oaBvijw6P1MtIF5Co1GaaSz5CURBdCI2qj+eA=; b=WjA5ZFtDEF6rx9
	ePVJOF9EPQ0yYKB4AuZsd6RI3Dt916nCfPkL+5lfp7xUn2bU+HJnIZa6lkW5jIQEtnWRo26M8OGpL
	Olwjwombt24gb1K7dyEi2DxrmEDYaNB3jElDLKMcByRjTN9eByJt5pZocdcsE41f6RE5sG7o5UBO7
	MhfhaWeWem2p2H3F1EYz5YwJJtIXQ0Z+TAsmpw0g50p/y+fJSiyH4ZxtaMZIx5JjHdoXQhe7+0lvv
	2Hi/M4XhL7TzfuL0bVmywuJ8y5FZBNWqAVx3sNESFRtkcaKMTrVH5wE1RGtXrUi67eU3yjP2Y6y23
	VgzakUYsU7Xps6OGNodg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd8iA-0000uH-DC; Tue, 18 Jun 2019 07:39:22 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd8hz-0000tg-2x
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 07:39:12 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 0EE63215C6;
 Tue, 18 Jun 2019 09:39:08 +0200 (CEST)
Received: from [192.168.108.49] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id EABDD20962;
 Tue, 18 Jun 2019 09:39:07 +0200 (CEST)
Subject: Re: [PATCH] arm64: dts: qcom: msm8996: Rename smmu nodes
To: Bjorn Andersson <bjorn.andersson@linaro.org>,
 Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>
References: <20190618052441.32306-1-bjorn.andersson@linaro.org>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <fbe71878-a129-1b11-d978-48a99b292086@free.fr>
Date: Tue, 18 Jun 2019 09:39:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190618052441.32306-1-bjorn.andersson@linaro.org>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Tue Jun 18 09:39:08 2019 +0200 (CEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_003911_276404_66579B34 
X-CRM114-Status: GOOD (  10.05  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: MSM <linux-arm-msm@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 18/06/2019 07:24, Bjorn Andersson wrote:

> Node names shouldn't include "qcom," and should whenever possible use
> a generic identifier. Resolve this by renaming the smmu nodes "iommu".

You mention "qcom" here, but the prefix you changed is "arm"
/me confused ^_^


>  arch/arm64/boot/dts/qcom/msm8996.dtsi | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
> index 2ecd9d775d61..c934e00434c7 100644
> --- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
> +++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
> @@ -1163,7 +1163,7 @@
>  			};
>  		};
>  
> -		vfe_smmu: arm,smmu@da0000 {
> +		vfe_smmu: iommu@da0000 {
>  			compatible = "qcom,msm8996-smmu-v2", "qcom,smmu-v2";
>  			reg = <0xda0000 0x10000>;
>  
> @@ -1314,7 +1314,7 @@
>  			};
>  		};
>  
> -		adreno_smmu: arm,smmu@b40000 {
> +		adreno_smmu: iommu@b40000 {
>  			compatible = "qcom,msm8996-smmu-v2", "qcom,smmu-v2";
>  			reg = <0xb40000 0x10000>;
>  
> @@ -1331,7 +1331,7 @@
>  			power-domains = <&mmcc GPU_GDSC>;
>  		};
>  
> -		mdp_smmu: arm,smmu@d00000 {
> +		mdp_smmu: iommu@d00000 {
>  			compatible = "qcom,msm8996-smmu-v2", "qcom,smmu-v2";
>  			reg = <0xd00000 0x10000>;
>  
> @@ -1347,7 +1347,7 @@
>  			power-domains = <&mmcc MDSS_GDSC>;
>  		};
>  
> -		lpass_q6_smmu: arm,smmu-lpass_q6@1600000 {
> +		lpass_q6_smmu: iommu@1600000 {
>  			compatible = "qcom,msm8996-smmu-v2", "qcom,smmu-v2";
>  			reg = <0x1600000 0x20000>;
>  			#iommu-cells = <1>;
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
