Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2CD9306F2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 05:24:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SZV7g15SYIH01fnNd/QoO9GbET8AdNRe806ZqXJLKiE=; b=l2+86Wdt3HZYQS
	XaRgq6mOp1jxrfnp13fUxBVVYWEpRa1H9g7HxtbOVW5xuOCjX+s55/QrwsNl29oeOW51WyjdYBwoK
	DkD2mxtJ74Qs2miZ+I8cM6vxVXZ5iKHHseUvm3CFsvW6yWTUkyJCxST+6xqBCjNF4KZCNf+q/5TZw
	waA37LaaKfZIow2fw1DwWnGl48j/0e+PEKRHcl7Ia0osYxBU8pDfR1YQAPRuEGVRz1xKxlmHFw2U1
	zbqdtYY2zYy8VxB0y2OfycxBoExoq7A/zaCPNNlAfRp/ABJ7XrrjE2g1aJ8+x7ioVCURN4PoX2MdC
	quaECHigLKNC3h2mOAig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWY9S-0001qe-UH; Fri, 31 May 2019 03:24:18 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWY9L-0001px-Lz
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 03:24:13 +0000
Received: by mail-pg1-x544.google.com with SMTP id a3so3207728pgb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 May 2019 20:24:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Y0WMcpWfoXbnuMiOdOcy4f4+mdeXgK7Hsp1gRkSwmjI=;
 b=shygk1EyQfcMXGh963h1m75rbQl//nbJkYNuSkZIN9eHEnqkOPNfpMxY7xEIJhi1jT
 Iu1k+ZB/8NLCHx+0bgWxMwOHQPQi7AUg3JcScD4qsPF+vRh31tZl9RgXox4mSa8paq41
 /5VBucDtOkXbg+n//LsBjLXGwBa6+CTvvgyhutw3hX/nUEdopWsZ8LEWT/1IrJyIH8Mv
 WD4YjL//KgX5SMH6i0ENRY1ZPlojG0GAN10VEx8QAGRebHQ6j873cLx6tT8N4eg6zFNd
 hrPsH3Kr4cfeh6lyRB90AoFKazWLYFegSuqatjsKwZ0EO1n8VjbQOMh2t6ctrytK+Vu7
 RTjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Y0WMcpWfoXbnuMiOdOcy4f4+mdeXgK7Hsp1gRkSwmjI=;
 b=edlUrCOm1FOxAWVccWO5BOqSAjIG++nZRiFyZW26gjgtgEHJi4jCV2ui0X7guFyz6d
 LtFD255jOlTdZKvyarFyFwUxYg1nlp1TStMSzhdLcYqdGGwocR3ZYdwBMeP4L7vv255h
 xCND91Oaqe66HORWg69y6sQrglbCshnvSn1OaOVt8p9wgIYlR0AqrPrI5sX/Aa8K/hkF
 agXzGt3NZJrcIfEz/U5TqgaJWQld6puWErMY5dTw32qTvFFvMHEYPfnS19RqdikiWgJZ
 bbIO7h11WJUC1UX++h5cCEqnRpERdzMyzTcESjHwpC3C5W9pOAc3eVdBMfA2NwlNr9l9
 ZULQ==
X-Gm-Message-State: APjAAAWX+bPzhblhIhv/FfccvaHpAyv+IpLXnn7q+Of+haejdf0w3bhd
 SDJgRbECtc+RwOu/NDe1RVDZ
X-Google-Smtp-Source: APXvYqy234vuH9P3R1wJOZtHjpQSL9DPwJjmp2FbbRFLPm8wCMxrM6uNPF1nuywg4K99t7ajF1hGdg==
X-Received: by 2002:a17:90a:62cb:: with SMTP id
 k11mr6556683pjs.26.1559273049926; 
 Thu, 30 May 2019 20:24:09 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2405:204:72cb:ebf2:a51d:3877:feab:5634])
 by smtp.gmail.com with ESMTPSA id s66sm3864501pgs.87.2019.05.30.20.24.05
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 30 May 2019 20:24:08 -0700 (PDT)
Date: Fri, 31 May 2019 08:54:02 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Jianqun Xu <jay.xu@rock-chips.com>
Subject: Re: [PATCH v3 1/1] arm64: dts: rockchip: add core dtsi file for
 RK3399Pro SoCs
Message-ID: <20190531032402.GA9641@Mani-XPS-13-9360>
References: <20190529074752.19388-1-jay.xu@rock-chips.com>
 <20190530000848.28106-1-jay.xu@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190530000848.28106-1-jay.xu@rock-chips.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_202411_818034_2AFF1CB6 
X-CRM114-Status: GOOD (  17.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, heiko@sntech.de,
 linux-kernel@vger.kernel.org, zhangzj@rock-chips.com,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 30, 2019 at 08:08:48AM +0800, Jianqun Xu wrote:
> This patch adds core dtsi file for Rockchip RK3399Pro SoCs,
> include rk3399.dtsi. Also enable pciei0/pcie_phy for AP to
> talk to NPU part inside SoC.
> 
> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
> ---
> changes since v2:
> - only enable pcie0 and pcie_phy nodes, thanks for Heiko and manivannan
> 
> changes since v1:
> - remove dfi and dmc
> 
>  arch/arm64/boot/dts/rockchip/rk3399pro.dtsi | 22 +++++++++++++++++++++
>  1 file changed, 22 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3399pro.dtsi
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399pro.dtsi b/arch/arm64/boot/dts/rockchip/rk3399pro.dtsi
> new file mode 100644
> index 000000000000..bb5ebf6608b9
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3399pro.dtsi
> @@ -0,0 +1,22 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +// Copyright (c) 2019 Fuzhou Rockchip Electronics Co., Ltd.
> +
> +#include "rk3399.dtsi"
> +
> +/ {
> +	compatible = "rockchip,rk3399pro";
> +};
> +
> +/* Default to enabled since AP talk to NPU part over pcie */
> +&pcie_phy {
> +	status = "okay";
> +};
> +
> +/* Default to enabled since AP talk to NPU part over pcie */
> +&pcie0 {
> +	ep-gpios = <&gpio0 RK_PB4 GPIO_ACTIVE_HIGH>;
> +	num-lanes = <4>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pcie_clkreqn_cpm>;

No pinctrl config for ep-gpio? Other than that, it looks good to me.

Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Thanks,
Mani
> +	status = "okay";
> +};
> -- 
> 2.17.1
> 
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
