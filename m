Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89F3A4B18F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 07:43:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oIIPW33Esufgef5th9frumt4LYAN2Lama99NEn4ZWt4=; b=fSqTJ6BNVIlKTx
	cLxhzk1n43kJd4zCUPoUe129R0Vaf3ByDh/lpOPrDp3gJiev1rTctcWbwDjHstKyVDPy1t22oO/al
	palAJBEbxADaHE4pQNPruYvEZeQAp8qtJM5GYaRnq3VI5czogDD532Di+MO3po77GgY7dfk/UjS8n
	/lc8JVMkYj9KguzhpclIvJ4kUTFVUFVTiKdOon5SayCv/nfed7rXiHrT9Q1Ol+ko8Ccrn1WzOwgyA
	BneReVOMRDaKcydyeRwio6hqhSkWim3Hu7KhYrBumYfgMbU0Cz0UCvDbEXYQwbUjWfp3ci1mTv1mt
	9A+oW8laZqiFFWGlxkpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdTNa-000835-8q; Wed, 19 Jun 2019 05:43:30 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdTNO-00082l-0z
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 05:43:19 +0000
Received: by mail-pl1-x644.google.com with SMTP id p1so6722165plo.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 22:43:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=RcMrhNV2rA8CLALBPr7bDQwyiJXyMuKwxFa8vNfUS7I=;
 b=LPLVcncCQs9OSVRTUCWqEJNKz0UKrN7gDxzSi2ofWu/7iy/NAVMPbpK4CBtIjhI9iR
 /T64O1dhPTXBGQkFAN0qw59FwQ8wsOYayBbkU9vsY7lznOvYYj2a/S4fvTWeOSGBvmvw
 RfXXtWINQHMHeJXJxKrnBVK7SbMYMzwxr0cqX/hB+lGeNjFF5Rbf6ETkvhUPfzMciqMT
 Ukdj0XgDCpUiJ/xag6fRqCk5/RWe5UM73SCm3ehcPXWO7kPf/X15XT0nniOkyWNnH1hY
 PTb2uehPnlTTxPms5OhFL37oAViZKA/LNjKIup6lcHKt9Bn3DZE+X32m3ZQLnXjKoQEW
 s8LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=RcMrhNV2rA8CLALBPr7bDQwyiJXyMuKwxFa8vNfUS7I=;
 b=X5PxOy8D1SUrpLJept6aTJpYfhl/ATgn1F6FxeB1Td9dz1/gtwAJTkFzJzNdDzx0sy
 SKPc8mr7MGvpqtU/6htzEd/GkBp1vf+8QgvtxhbcVgEqpAV6TUV1zeXamtuzXWkKN+Kj
 zewc0LiwjFXEBNZSPeoPfZkLlCYOpJ1XifzdF6GYK81o8s6eNDTCt27W6YpRq4u3cHVM
 cA+sBsFA74MJ4Kwu9w4w5aGNy4kXQn8LSwWwAuG84P+yBrKsc1j3lCI50fOlBURQ3zDK
 BCMM7+PAeX2qpdhhLzHesK0cYb1/TVisqiGikqe1DHGUC241+lt1LFEVMCM5G86b60GH
 ygig==
X-Gm-Message-State: APjAAAWCqnKTkHR6Wvo/TgHlh/0IH+kIxQ+XnyGVtBrUnJrsfqPmp7WE
 4KJq/DMCqK98Tj9NejtYntUGMg==
X-Google-Smtp-Source: APXvYqwQeIEFEJ28689Z3bGKlhY9VryoQA0Cf7rC3shUrKuMbmxfKOaXEntcBMTxDNNw8iuz5EjbVQ==
X-Received: by 2002:a17:902:4a:: with SMTP id
 68mr118225810pla.235.1560922996994; 
 Tue, 18 Jun 2019 22:43:16 -0700 (PDT)
Received: from minitux (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id 25sm17432761pfp.76.2019.06.18.22.43.15
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 18 Jun 2019 22:43:16 -0700 (PDT)
Date: Tue, 18 Jun 2019 22:43:14 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v4 3/6] soc: qcom: geni: Add support for ACPI
Message-ID: <20190619054314.GJ4814@minitux>
References: <20190612142654.9639-1-lee.jones@linaro.org>
 <20190612142654.9639-4-lee.jones@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190612142654.9639-4-lee.jones@linaro.org>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_224318_065919_7273D863 
X-CRM114-Status: GOOD (  16.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: balbi@kernel.org, wsa+renesas@sang-engineering.com,
 gregkh@linuxfoundation.org, linux-gpio@vger.kernel.org,
 ard.biesheuvel@linaro.org, agross@kernel.org, linux-kernel@vger.kernel.org,
 david.brown@linaro.org, alokc@codeaurora.org, linux-i2c@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, jlhugo@gmail.com,
 linux-arm-kernel@lists.infradead.org, linux-usb@vger.kernel.or
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed 12 Jun 07:26 PDT 2019, Lee Jones wrote:

> When booting with ACPI as the active set of configuration tables,
> all; clocks, regulators, pin functions ect are expected to be at
> their ideal values/levels/rates, thus the associated frameworks
> are unavailable.  Ensure calls to these APIs are shielded when
> ACPI is enabled.
> 

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

> Signed-off-by: Lee Jones <lee.jones@linaro.org>
> Acked-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> ---
>  drivers/soc/qcom/qcom-geni-se.c | 21 +++++++++++++++------
>  1 file changed, 15 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/soc/qcom/qcom-geni-se.c b/drivers/soc/qcom/qcom-geni-se.c
> index 6b8ef01472e9..d5cf953b4337 100644
> --- a/drivers/soc/qcom/qcom-geni-se.c
> +++ b/drivers/soc/qcom/qcom-geni-se.c
> @@ -1,6 +1,7 @@
>  // SPDX-License-Identifier: GPL-2.0
>  // Copyright (c) 2017-2018, The Linux Foundation. All rights reserved.
>  
> +#include <linux/acpi.h>
>  #include <linux/clk.h>
>  #include <linux/slab.h>
>  #include <linux/dma-mapping.h>
> @@ -450,6 +451,9 @@ int geni_se_resources_off(struct geni_se *se)
>  {
>  	int ret;
>  
> +	if (has_acpi_companion(se->dev))
> +		return 0;
> +
>  	ret = pinctrl_pm_select_sleep_state(se->dev);
>  	if (ret)
>  		return ret;
> @@ -487,6 +491,9 @@ int geni_se_resources_on(struct geni_se *se)
>  {
>  	int ret;
>  
> +	if (has_acpi_companion(se->dev))
> +		return 0;
> +
>  	ret = geni_se_clks_on(se);
>  	if (ret)
>  		return ret;
> @@ -724,12 +731,14 @@ static int geni_se_probe(struct platform_device *pdev)
>  	if (IS_ERR(wrapper->base))
>  		return PTR_ERR(wrapper->base);
>  
> -	wrapper->ahb_clks[0].id = "m-ahb";
> -	wrapper->ahb_clks[1].id = "s-ahb";
> -	ret = devm_clk_bulk_get(dev, NUM_AHB_CLKS, wrapper->ahb_clks);
> -	if (ret) {
> -		dev_err(dev, "Err getting AHB clks %d\n", ret);
> -		return ret;
> +	if (!has_acpi_companion(&pdev->dev)) {
> +		wrapper->ahb_clks[0].id = "m-ahb";
> +		wrapper->ahb_clks[1].id = "s-ahb";
> +		ret = devm_clk_bulk_get(dev, NUM_AHB_CLKS, wrapper->ahb_clks);
> +		if (ret) {
> +			dev_err(dev, "Err getting AHB clks %d\n", ret);
> +			return ret;
> +		}
>  	}
>  
>  	dev_set_drvdata(dev, wrapper);
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
