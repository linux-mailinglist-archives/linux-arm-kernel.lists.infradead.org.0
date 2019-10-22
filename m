Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 778B5E0B1C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 19:57:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=R8+34YXAlCjYcte4wxe1BaMWavJSg9eP2qgw365kdoE=; b=CVGGQitqeGcS9yfGo+XPk+dIG
	w4z3YNJugMbLQK9J1QIS83AXV4UmiIjydcdTEGfr5DGu9/cEDYrcQNPB2M+xPbbXX+YPdbwI+voni
	J17MQsFnCVtTP3AYpuFglwO+OTP7tT9VNsfLr4coiMnLx0hl4bXaP7JU7RLUAHXNcOx/lk+1BnQ0h
	VNP8rxeGPhBJLPmxLygCcWWycyXDRnlFowc6qXGAawGHyWnt4Un7ybh79gyeZU7kOo+UpCjcR9vCs
	94+UUYkPX2IR9r3VAW+vK6k0UIvwha+f3KahHk9QPPOvZJLt7RU8WyUM6G5ks8ClRrbivEqhsL8IQ
	3p1+t3ZlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMyOs-0006Wg-K2; Tue, 22 Oct 2019 17:56:54 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMyOh-0006Vw-KG
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 17:56:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A7C71161B;
 Tue, 22 Oct 2019 10:56:32 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6CE643F718;
 Tue, 22 Oct 2019 10:56:30 -0700 (PDT)
Subject: Re: [PATCH v3 3/7] dt-bindings: arm-smmu: Add binding for Tegra194
 SMMU
To: Krishna Reddy <vdumpa@nvidia.com>
References: <1571441492-21919-1-git-send-email-vdumpa@nvidia.com>
 <1571441492-21919-4-git-send-email-vdumpa@nvidia.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <76513c1a-2fec-0b84-a9fb-f485f5fcbb78@arm.com>
Date: Tue, 22 Oct 2019 18:56:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1571441492-21919-4-git-send-email-vdumpa@nvidia.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_105643_711020_94DA1DBA 
X-CRM114-Status: GOOD (  18.31  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: snikam@nvidia.com, thomasz@nvidia.com, jtukkinen@nvidia.com,
 mperttunen@nvidia.com, Rob Herring <robh@kernel.org>, joro@8bytes.org,
 linux-kernel@vger.kernel.org, praithatha@nvidia.com, talho@nvidia.com,
 olof@lixom.net, iommu@lists.linux-foundation.org, nicolinc@nvidia.com,
 linux-tegra@vger.kernel.org, yhsu@nvidia.com, treding@nvidia.com,
 will@kernel.org, avanbrunt@nvidia.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19/10/2019 00:31, Krishna Reddy wrote:
> Add binding for NVIDIA's Tegra194 Soc SMMU that is based
> on ARM MMU-500.
> 
> Signed-off-by: Krishna Reddy <vdumpa@nvidia.com>
> ---
>   Documentation/devicetree/bindings/iommu/arm,smmu.txt | 4 ++++

Rob (+cc) is in the process of converting the SMMU bindings to schema, 
so we might need a bit of coordination here...

Robin.

>   1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/iommu/arm,smmu.txt b/Documentation/devicetree/bindings/iommu/arm,smmu.txt
> index 3133f3b..1d72fac 100644
> --- a/Documentation/devicetree/bindings/iommu/arm,smmu.txt
> +++ b/Documentation/devicetree/bindings/iommu/arm,smmu.txt
> @@ -31,6 +31,10 @@ conditions.
>                     as below, SoC-specific compatibles:
>                     "qcom,sdm845-smmu-500", "arm,mmu-500"
>   
> +                  NVIDIA SoCs that use more than one ARM MMU-500 together
> +                  needs following SoC-specific compatibles along with "arm,mmu-500":
> +                  "nvidia,tegra194-smmu"
> +
>   - reg           : Base address and size of the SMMU.
>   
>   - #global-interrupts : The number of global interrupts exposed by the
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
