Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C65BC9FFA9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 12:23:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=02UpCwfzDiAWneybxpOxmuq6V+Al9R2mQlNBMa1CEaA=; b=Mc/lIW+itrIppt
	RWIjAsjyDw+Wcb/dagjI4edVkU9TQ+aUecba6h5USc45C/Uu5SMpIG+JTXxNXt0Hp/eyJAeGD9/M0
	2WZpRQs27hWwgtXOtzJdth7Yz/K+P2Ts/QwCTRkKSXPUndewWSLbSUUQsqNMX7IJyo40MEjGoFMbR
	B5PFuOiQjwy05OSQ71Rfp2i18Fc/Y/D7feYUDU1lgGNUDIoN+dYrVoG7AJ+3GgXZ9+xlgdT5330md
	RPFSwwjCH52iPLhZ0jh8iagwoeORKeR1di0j9nb8hOKy9ET8qDndO9MVqvoRQni05Ll/3pGMgSjmk
	B1p5rNwqH7usORq1+qqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2v6X-0002C5-A8; Wed, 28 Aug 2019 10:23:05 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2v6J-0002AX-DE; Wed, 28 Aug 2019 10:22:53 +0000
Received: by mail-ed1-x543.google.com with SMTP id w5so2391233edl.8;
 Wed, 28 Aug 2019 03:22:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=TluT6OUbvy60InunIVgzisQRXNrTEJL9yWsQxD4N54U=;
 b=OWF0vXILtjT95V0W0gOzyzPx9aEaTvacNFfJQXYJFvK5JNuFmXUf04ShFGoVUoONw3
 ZJmekyN8tlpXUw6Ovu59NWjfetsoYB0shuBtaNbbs8BVndz6je3zan3J0lNW1CcEa7Y7
 50v19HMC/lECgzsP0Mvp0Y4xP5kvDvcsYMaB3XhGMa8m85cqzWMlTARTieXM7+6MlHq5
 7jpAr88pZfiKasZFSqbCWRiIZc4ewSJUrhJ1LCw3a7VsU+Qm6qf5BWrXmxQiFCYknIPu
 KYhUcRp3X1gKrk3EAShKMVp5SCpWuu64hD3Yb8D/AmGxgKJVyQxRc9CVMcApamGuiVDb
 bQ6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=TluT6OUbvy60InunIVgzisQRXNrTEJL9yWsQxD4N54U=;
 b=o5oEXRRm3DrwUYBbhvoLEqdyqB6nLkjb5sDe7JboFD8NzdDMiDq5fLIN6V/S10An1E
 b55Q9qyDoRv17bxu3x5z8iNNtkdOBYihyOPyPVWgNt5d2ap4bSx7FJsmPfUZmRpJ759E
 TqCUWYc6SPJpzjsNJ1IRaOX35IVuwabCb4UrnhXFrAZdvUexj1Znkge9mlrBwnPVm28d
 h/7HB+L/Adugy/Ud3b0UR3uAd1zgKuR2FORDEHKD9RuzawC5j/Bvs1bJTjP5waO/V15T
 hC/sP1gmIMT+b7jKeB+WCAnl2lQ77ZtsDAg2bz2qBAjKVk4JgxV7uKKnNXlI9YsWe1/c
 K8qA==
X-Gm-Message-State: APjAAAU3fJiz5ZCG7ezWk4QleJwcDOK2kUkzd01JUH4z3AwiWG7jowD1
 J8/1fyYUJ3QvwgwPlztojbw=
X-Google-Smtp-Source: APXvYqyB8ERiCjUFYwL7hnnsb5Vrkw8Yy9jPGq6PFMYL0fkg/G/ggk6TrDUV52+6JPl7GjAC952RhQ==
X-Received: by 2002:a50:fa8a:: with SMTP id w10mr3100164edr.247.1566987769605; 
 Wed, 28 Aug 2019 03:22:49 -0700 (PDT)
Received: from ziggy.stardust ([95.169.228.146])
 by smtp.gmail.com with ESMTPSA id o26sm319235ejb.58.2019.08.28.03.22.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 28 Aug 2019 03:22:48 -0700 (PDT)
Subject: Re: [PATCH v7 06/13] soc: mediatek: Refactor sram control
To: Weiyi Lu <weiyi.lu@mediatek.com>, Nicolas Boichat
 <drinkcat@chromium.org>, Rob Herring <robh@kernel.org>
References: <1566983506-26598-1-git-send-email-weiyi.lu@mediatek.com>
 <1566983506-26598-7-git-send-email-weiyi.lu@mediatek.com>
From: Matthias Brugger <matthias.bgg@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=matthias.bgg@gmail.com; prefer-encrypt=mutual; keydata=
 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
 jrHWeQEI2ucSKsNa8FllDmG/fQ==
Message-ID: <d9462fa7-3395-347d-da44-8ff86713fd6d@gmail.com>
Date: Wed, 28 Aug 2019 12:22:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1566983506-26598-7-git-send-email-weiyi.lu@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_032251_473026_16CF6756 
X-CRM114-Status: GOOD (  23.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (matthias.bgg[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: James Liao <jamesjj.liao@mediatek.com>, srv_heupstream@mediatek.com,
 linux-kernel@vger.kernel.org, Fan Chen <fan.chen@mediatek.com>,
 linux-mediatek@lists.infradead.org, Yong Wu <yong.wu@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 28/08/2019 11:11, Weiyi Lu wrote:
> Put sram enable and disable control in separate functions.
> 
> Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
> Reviewed-by: Nicolas Boichat <drinkcat@chromium.org>

Applied with the following changes made to your patch:

diff --git a/drivers/soc/mediatek/mtk-scpsys.c b/drivers/soc/mediatek/mtk-scpsys.c
index ad0f6199cd0c..603262d547c3 100644
--- a/drivers/soc/mediatek/mtk-scpsys.c
+++ b/drivers/soc/mediatek/mtk-scpsys.c
@@ -236,7 +236,8 @@ static int scpsys_sram_enable(struct scp_domain *scpd, void
__iomem *ctl_addr)
        u32 pdn_ack = scpd->data->sram_pdn_ack_bits;
        int tmp;

-       val = readl(ctl_addr) & ~scpd->data->sram_pdn_bits;
+       val = readl(ctl_addr);
+       val &= ~scpd->data->sram_pdn_bits;
        writel(val, ctl_addr);

        /* Either wait until SRAM_PDN_ACK all 0 or have a force wait */
@@ -265,7 +266,8 @@ static int scpsys_sram_disable(struct scp_domain *scpd, void
__iomem *ctl_addr)
        u32 pdn_ack = scpd->data->sram_pdn_ack_bits;
        int tmp;

-       val = readl(ctl_addr) | scpd->data->sram_pdn_bits;
+       val = readl(ctl_addr);
+       vale |= scpd->data->sram_pdn_bits;
        writel(val, ctl_addr);

        /* Either wait until SRAM_PDN_ACK all 1 or 0 */
@@ -357,7 +359,8 @@ static int scpsys_power_off(struct generic_pm_domain *genpd)
                goto out;

        /* subsys power off */
-       val = readl(ctl_addr) | PWR_ISO_BIT;
+       val = readl(ctl_addr);
+       val |= PWR_ISO_BIT;
        writel(val, ctl_addr);

        val &= ~PWR_RST_B_BIT;

Hope that is OK for you (and I didn't made any mistake). If you see any problem,
please let me know.

Thanks,
Matthias

> ---
>  drivers/soc/mediatek/mtk-scpsys.c | 79 +++++++++++++++++++++++++--------------
>  1 file changed, 51 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/soc/mediatek/mtk-scpsys.c b/drivers/soc/mediatek/mtk-scpsys.c
> index 73e4a1a..ad0f619 100644
> --- a/drivers/soc/mediatek/mtk-scpsys.c
> +++ b/drivers/soc/mediatek/mtk-scpsys.c
> @@ -230,12 +230,55 @@ static int scpsys_clk_enable(struct clk *clk[], int max_num)
>  	return ret;
>  }
>  
> +static int scpsys_sram_enable(struct scp_domain *scpd, void __iomem *ctl_addr)
> +{
> +	u32 val;
> +	u32 pdn_ack = scpd->data->sram_pdn_ack_bits;
> +	int tmp;
> +
> +	val = readl(ctl_addr) & ~scpd->data->sram_pdn_bits;
> +	writel(val, ctl_addr);
> +
> +	/* Either wait until SRAM_PDN_ACK all 0 or have a force wait */
> +	if (MTK_SCPD_CAPS(scpd, MTK_SCPD_FWAIT_SRAM)) {
> +		/*
> +		 * Currently, MTK_SCPD_FWAIT_SRAM is necessary only for
> +		 * MT7622_POWER_DOMAIN_WB and thus just a trivial setup
> +		 * is applied here.
> +		 */
> +		usleep_range(12000, 12100);
> +	} else {
> +		/* Either wait until SRAM_PDN_ACK all 1 or 0 */
> +		int ret = readl_poll_timeout(ctl_addr, tmp,
> +				(tmp & pdn_ack) == 0,
> +				MTK_POLL_DELAY_US, MTK_POLL_TIMEOUT);
> +		if (ret < 0)
> +			return ret;
> +	}
> +
> +	return 0;
> +}
> +
> +static int scpsys_sram_disable(struct scp_domain *scpd, void __iomem *ctl_addr)
> +{
> +	u32 val;
> +	u32 pdn_ack = scpd->data->sram_pdn_ack_bits;
> +	int tmp;
> +
> +	val = readl(ctl_addr) | scpd->data->sram_pdn_bits;
> +	writel(val, ctl_addr);
> +
> +	/* Either wait until SRAM_PDN_ACK all 1 or 0 */
> +	return readl_poll_timeout(ctl_addr, tmp,
> +			(tmp & pdn_ack) == pdn_ack,
> +			MTK_POLL_DELAY_US, MTK_POLL_TIMEOUT);
> +}
> +
>  static int scpsys_power_on(struct generic_pm_domain *genpd)
>  {
>  	struct scp_domain *scpd = container_of(genpd, struct scp_domain, genpd);
>  	struct scp *scp = scpd->scp;
>  	void __iomem *ctl_addr = scp->base + scpd->data->ctl_offs;
> -	u32 pdn_ack = scpd->data->sram_pdn_ack_bits;
>  	u32 val;
>  	int ret, tmp;
>  
> @@ -247,6 +290,7 @@ static int scpsys_power_on(struct generic_pm_domain *genpd)
>  	if (ret)
>  		goto err_clk;
>  
> +	/* subsys power on */
>  	val = readl(ctl_addr);
>  	val |= PWR_ON_BIT;
>  	writel(val, ctl_addr);
> @@ -268,24 +312,9 @@ static int scpsys_power_on(struct generic_pm_domain *genpd)
>  	val |= PWR_RST_B_BIT;
>  	writel(val, ctl_addr);
>  
> -	val &= ~scpd->data->sram_pdn_bits;
> -	writel(val, ctl_addr);
> -
> -	/* Either wait until SRAM_PDN_ACK all 0 or have a force wait */
> -	if (MTK_SCPD_CAPS(scpd, MTK_SCPD_FWAIT_SRAM)) {
> -		/*
> -		 * Currently, MTK_SCPD_FWAIT_SRAM is necessary only for
> -		 * MT7622_POWER_DOMAIN_WB and thus just a trivial setup is
> -		 * applied here.
> -		 */
> -		usleep_range(12000, 12100);
> -
> -	} else {
> -		ret = readl_poll_timeout(ctl_addr, tmp, (tmp & pdn_ack) == 0,
> -					 MTK_POLL_DELAY_US, MTK_POLL_TIMEOUT);
> -		if (ret < 0)
> -			goto err_pwr_ack;
> -	}
> +	ret = scpsys_sram_enable(scpd, ctl_addr);
> +	if (ret < 0)
> +		goto err_pwr_ack;
>  
>  	if (scpd->data->bus_prot_mask) {
>  		ret = mtk_infracfg_clear_bus_protection(scp->infracfg,
> @@ -312,7 +341,6 @@ static int scpsys_power_off(struct generic_pm_domain *genpd)
>  	struct scp_domain *scpd = container_of(genpd, struct scp_domain, genpd);
>  	struct scp *scp = scpd->scp;
>  	void __iomem *ctl_addr = scp->base + scpd->data->ctl_offs;
> -	u32 pdn_ack = scpd->data->sram_pdn_ack_bits;
>  	u32 val;
>  	int ret, tmp;
>  
> @@ -324,17 +352,12 @@ static int scpsys_power_off(struct generic_pm_domain *genpd)
>  			goto out;
>  	}
>  
> -	val = readl(ctl_addr);
> -	val |= scpd->data->sram_pdn_bits;
> -	writel(val, ctl_addr);
> -
> -	/* wait until SRAM_PDN_ACK all 1 */
> -	ret = readl_poll_timeout(ctl_addr, tmp, (tmp & pdn_ack) == pdn_ack,
> -				 MTK_POLL_DELAY_US, MTK_POLL_TIMEOUT);
> +	ret = scpsys_sram_disable(scpd, ctl_addr);
>  	if (ret < 0)
>  		goto out;
>  
> -	val |= PWR_ISO_BIT;
> +	/* subsys power off */
> +	val = readl(ctl_addr) | PWR_ISO_BIT;
>  	writel(val, ctl_addr);
>  
>  	val &= ~PWR_RST_B_BIT;
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
