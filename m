Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C58DA112F12
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 16:56:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=o0t8kSW6e5zvK4PcyvSzd6Ju9w5UURIdKLnwP+5+Bhg=; b=t6+cZTIzdvUd2PRyjN4fd9zbl
	uNlZddvOtpzzqX2cMTirfuX30AwzG8mcny6aW7IMWQtIaG7hhgyewqj1KI9kwnWvHnHTV1vDABNh6
	PjKgsuqAmsLpK3UIPWXR7fpH/7ilBD7xxfF0AKVRp93WYlUJrIbywSKJTrHJOto13cKS73nnsxbf2
	LBjPBm5A+PYcU8O+7eoLd3ypk46IXRcmDsHKBg1kTn65u1WFz7T2lrClRERgDA42iGw27fUFEpbPR
	/VAKVGtLQYnruVQb9XAP5fwhmOdAiDCy4ix4+QZRitpVwXLw6LAvl3VQrWnUHhOPWt95n0TvWPj/3
	wm1aU9gwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icX0g-0006hX-Cn; Wed, 04 Dec 2019 15:56:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icX0V-0006go-IZ
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 15:56:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1BC9E31B;
 Wed,  4 Dec 2019 07:56:00 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A0FE53F52E;
 Wed,  4 Dec 2019 07:55:58 -0800 (PST)
Subject: Re: [PATCH v2 1/8] dt-bindings: arm-smmu: Add Adreno GPU variant
To: Jordan Crouse <jcrouse@codeaurora.org>, iommu@lists.linux-foundation.org
References: <1574465484-7115-1-git-send-email-jcrouse@codeaurora.org>
 <0101016e95751c0b-33c9379b-6b8c-43b1-8785-e5e1b6f084f1-000000@us-west-2.amazonses.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <3a283a7c-df75-a30a-1bcb-74e631f06a71@arm.com>
Date: Wed, 4 Dec 2019 15:55:57 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <0101016e95751c0b-33c9379b-6b8c-43b1-8785-e5e1b6f084f1-000000@us-west-2.amazonses.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_075603_656831_CBEC3E72 
X-CRM114-Status: GOOD (  15.06  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 22/11/2019 11:31 pm, Jordan Crouse wrote:
> Add a compatible string to identify SMMUs that are attached
> to Adreno GPU devices that wish to support split pagetables.

A software policy decision is not, in itself, a good justification for a 
DT property. Is the GPU SMMU fundamentally different in hardware* from 
the other SMMU(s) in any given SoC?

(* where "hardware" may encompass hypervisor shenanigans)

> Signed-off-by: Jordan Crouse <jcrouse@codeaurora.org>
> ---
> 
>   Documentation/devicetree/bindings/iommu/arm,smmu.yaml | 6 ++++++
>   1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
> index 6515dbe..db9f826 100644
> --- a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
> +++ b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
> @@ -31,6 +31,12 @@ properties:
>                 - qcom,sdm845-smmu-v2
>             - const: qcom,smmu-v2
>   
> +      - description: Qcom Adreno GPU SMMU iplementing split pagetables
> +        items:
> +          - enum:
> +              - qcom,adreno-smmu-v2
> +          - const: qcom,smmu-v2

Given that we already have per-SoC compatibles for Qcom SMMUs in 
general, this seems suspiciously vague.

Robin.

> +
>         - description: Qcom SoCs implementing "arm,mmu-500"
>           items:
>             - enum:
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
