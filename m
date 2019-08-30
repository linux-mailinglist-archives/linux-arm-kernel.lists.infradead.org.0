Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCD94A365B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 14:08:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/TmxDPgVvu4/YES5eKAQlw0YARSuLxih7L00bgrLjC0=; b=WEjNC6IEsBEIBGdqRRpvMGf6d
	uE2iNKOAgTC2Z2QidkjWx2zD/k48U4XYz70bn9Xz6Z66/jgwSiX8TJ2833NOQz5orIErZUYpTiCG3
	4ESWz77hz+gkD8tX7hy4tLPR9mm0BHoGBBTaHf5CBd7GLfbeMuvexxFPzuyLlKCgwuUOFesnBQJ3Q
	ttl0pR5tPlhfj4x8UFrgePyGoJJFzkJxP/OOVyZp9Kc1Fqe5+ACMnw9hohMTSKPL4vsjFw4ur0VOV
	3WcCsad/uShJBC56IJPjSrK5zp5T6xxEnMARsqHLuarvcW94hB5RrieDd71uP/JAleRVo6tDT4QQb
	iD4Fp+o7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3fhV-0003f4-Sq; Fri, 30 Aug 2019 12:08:21 +0000
Received: from mail.kapsi.fi ([2001:67c:1be8::25])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3fhN-0003eA-CU
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 12:08:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=kapsi.fi;
 s=20161220; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jLbS4wyC9BOXRvnGDvAgUlr1i1hEqcJjCnRO9VKhPUc=; b=BZpl7Ngf+S2Bt6nSPZh/NN47MA
 CZo5IsxbxOIhPbRsCUEEAISIcFO9gYpQ5qCF2AiymXNKNbg9f4BeKsz6+6KLYQKq45AcyCuJ7j/RF
 M5527anW5eKFWCBEMx8mneRbUBEDSHZ9Mv8tf0bfNx/s65Gf8jmvMppB5Vz72aX+gMlW/dLe+Jtqd
 eVM48GhC4uk0sljorhX3Hd1lR2p0z3iVFGOHDp7eSEO1Jwr3J7ADSYKNRYlwNJXcFGb2W4xx7XzL7
 loNQMDQEi191AvmYShK+cStNx6k99tOI6d/n/q70xO2q7cwuFZ0IddHyhhx21Tr+rMzZKchGnUeF7
 DkDDuyJQ==;
Received: from [193.209.96.43] (helo=[10.21.26.179])
 by mail.kapsi.fi with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <cyndis@kapsi.fi>)
 id 1i3fh8-0001wS-Ip; Fri, 30 Aug 2019 15:07:58 +0300
Subject: Re: [PATCH 2/7] dt-bindings: arm-smmu: Add binding for nvidia, smmu-v2
To: Krishna Reddy <vdumpa@nvidia.com>
References: <1567118827-26358-1-git-send-email-vdumpa@nvidia.com>
 <1567118827-26358-3-git-send-email-vdumpa@nvidia.com>
From: Mikko Perttunen <cyndis@kapsi.fi>
Message-ID: <86cc6861-08e6-7e16-cb85-93de0aa62087@kapsi.fi>
Date: Fri, 30 Aug 2019 15:07:58 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1567118827-26358-3-git-send-email-vdumpa@nvidia.com>
Content-Language: en-US
X-SA-Exim-Connect-IP: 193.209.96.43
X-SA-Exim-Mail-From: cyndis@kapsi.fi
X-SA-Exim-Scanned: No (on mail.kapsi.fi); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_050813_593424_E7F8F1C5 
X-CRM114-Status: GOOD (  14.25  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:67c:1be8:0:0:0:0:25 listed in] [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 mperttunen@nvidia.com, praithatha@nvidia.com, iommu@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, talho@nvidia.com, olof@lixom.net,
 yhsu@nvidia.com, linux-tegra@vger.kernel.org, treding@nvidia.com,
 avanbrunt@nvidia.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 30.8.2019 1.47, Krishna Reddy wrote:
> Add binding doc for Nvidia's smmu-v2 implementation.
> 
> Signed-off-by: Krishna Reddy <vdumpa@nvidia.com>
> ---
>   Documentation/devicetree/bindings/iommu/arm,smmu.txt | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/iommu/arm,smmu.txt b/Documentation/devicetree/bindings/iommu/arm,smmu.txt
> index 3133f3b..0de3759 100644
> --- a/Documentation/devicetree/bindings/iommu/arm,smmu.txt
> +++ b/Documentation/devicetree/bindings/iommu/arm,smmu.txt
> @@ -17,6 +17,7 @@ conditions.
>                           "arm,mmu-401"
>                           "arm,mmu-500"
>                           "cavium,smmu-v2"
> +                        "nidia,smmu-v2"

nvidia

Mikko

>                           "qcom,smmu-v2"
>   
>                     depending on the particular implementation and/or the
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
