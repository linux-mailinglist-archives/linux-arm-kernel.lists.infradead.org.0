Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0D1CA81AE
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 13:59:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QCa8O5BT7783tDhMLMnu73owq19lWlHDyg+SLshcq3I=; b=dZAPwQHIHDlw6R
	pItBde+kGQXuyv1O7pZFj/MYeaer/bz+oRzZmhdM2aPFY5wjH+Jj41dTa3pe0cu8Mm/zGYDX1si4n
	0PrPBBhPxNjuEdWhZJ6Y044C4YIz4TvyScz/wFcZGANlVQvBGE9q4tTrj5mvg6GBlguJEddB8WqmZ
	xVk3VN6ge7d+hyCMSzf2/SpiAhKUR7XCX/6POACeQWLMjZJm1WDQreKRsPea2Pziol9aFiEE2NImE
	WmNc4Y/A4FpYmVCSfuhdD55LR9gYS/L5bFMgXUD0MhJcqc5aUSR2J3dRBtzpTFKcDJckhb/g04r1n
	N8UBEdclPC1ulmO066SQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Twh-0002uZ-OX; Wed, 04 Sep 2019 11:59:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5TwT-0002u1-Id
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 11:59:19 +0000
Received: from localhost (unknown [122.182.201.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5E26722CF5;
 Wed,  4 Sep 2019 11:59:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567598357;
 bh=QOB+pnpJzvM3T17WHP6bSNkNARFO49kKixC1PCOUZsM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=aOlfHDSGCDjFeO2R0XS7K6sD4Lgld5REbGaRR3Qia3o5yuRAt/i0/X9owavTvrpO8
 ScrJCDtPQJM+KraQIysQVQWs7fTg5FLoD8fIathUzBvL58Y07IwwuO7RoithpqZvdC
 VmY5Psyz9wHu1jd8h41snskHyvO731eV6EdFByvs=
Date: Wed, 4 Sep 2019 17:28:08 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH 2/2] dt-bindings: soc: qcom: Provide option to select
 FIFO mode
Message-ID: <20190904115808.GX2672@vkoul-mobl>
References: <20190904113613.14997-1-lee.jones@linaro.org>
 <20190904113613.14997-2-lee.jones@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190904113613.14997-2-lee.jones@linaro.org>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_045918_373102_2375B4F9 
X-CRM114-Status: GOOD (  15.11  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, agross@kernel.org,
 robh+dt@kernel.org, bjorn.andersson@linaro.org, alokc@codeaurora.org,
 linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04-09-19, 12:36, Lee Jones wrote:
> Used when DMA is not available or the best option.

Ah binding is the second patch, I would assume think that this should be
first patch :)

Nevertheless looks good to me.

Reviewed-by: Vinod Koul <vkoul@kernel.org>

> Signed-off-by: Lee Jones <lee.jones@linaro.org>
> ---
>  Documentation/devicetree/bindings/soc/qcom/qcom,geni-se.txt | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,geni-se.txt b/Documentation/devicetree/bindings/soc/qcom/qcom,geni-se.txt
> index dab7ca9f250c..b0e71c07e604 100644
> --- a/Documentation/devicetree/bindings/soc/qcom/qcom,geni-se.txt
> +++ b/Documentation/devicetree/bindings/soc/qcom/qcom,geni-se.txt
> @@ -40,6 +40,7 @@ Required properties:
>  Optional property:
>  - clock-frequency:	Desired I2C bus clock frequency in Hz.
>  			When missing default to 100000Hz.
> +- qcom,geni-se-fifo:	Selects FIFO processing - as opposed to DMA.
>  
>  Child nodes should conform to I2C bus binding as described in i2c.txt.
>  
> -- 
> 2.17.1

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
