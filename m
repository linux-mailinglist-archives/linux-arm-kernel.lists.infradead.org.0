Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EEBFDADB7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 15:00:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eJOXMiQqgNbqLAkPd3a9r3CY06u5nvABdS51Jcoo0FY=; b=dr96l7QskDopq7
	fo82u87lURpZ5hV9Nwp1Rd7MpD8T64H9/w7O9tLjQN/RNLBUGyuPv9RVUAYgKsPD4AfLrxxN9w08/
	XOaBxYyJUt/92Y+WYgsEl50rLO38EC1zG9iXX/FHnyxcT50SOpgR3NIE9EvGR3SeJryH95MsufKZH
	tWE82fPtrpWIR7N7N+NuE+nO8OemeS6X7Gb5+lpZLnVddVR7X047EprL3l31mtvJYSbT2QI+hMZVs
	9CAxuyDuZVGtkZBde3ZheBalpA0uRdQLjxY3AUVAabjGCg8eahVy9ryESkGwBW9RX7oxxNF0oyLKN
	PSQv38n+8rI4J8l4uxFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL5O4-0008AV-TT; Thu, 17 Oct 2019 13:00:16 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL5Ni-0008A6-3U
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 12:59:55 +0000
Received: by mail-pl1-x643.google.com with SMTP id w8so1107315plq.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 17 Oct 2019 05:59:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=JVwwdb+zQ9NSzWqZM+D+qhy9Nv1h+9z50bI96ImiwFA=;
 b=yipLLBVIoqam9ZEQvn5Rf5/4J06Zm6A3vprEphD1/20bTuSYMwQTjsi2fXVI9RA8Vc
 T95azBJNV68gtoOpRkyJfcXFLC/5WEiPAFdsvW2SjKW2QiRSylO7tv0w7Z/EzY8rECJG
 kTyYu3wRJT7nLTe7uwSgq1QA6Q5dWYGnEZ41hGSTnZLcVVE2xTi5RTQidRfOh3v8rH8s
 V3dtYdMnmXvMCOCY+2Ck1JAcalgJ/oNZ/X/as36DbTkVCa9AE4UY0NQSLsmSiO3/XruE
 aIG0EA4BCSq6H/KkUTMOMaMFFjPcjAbuufh85d22i5l+2Q6jLn6eRlvtE3GtsRuODB9k
 GMCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=JVwwdb+zQ9NSzWqZM+D+qhy9Nv1h+9z50bI96ImiwFA=;
 b=UGePmJv8363mi5vLwsxlGM4pzSdPgl3Tz+vIJ3haPQOTs0/7U6bylNhZolZc4UaSjU
 xySaoREG/DRz4im6GlKlDQnuNSl+v+ZtVxlXdZjRa5EzCzD5khjHKSW3NoHe8WmcUPHE
 IwcCuKmf/fgNAh/C0KiG2CZRwoFIDY7Fylyt2GhAxHR7THOoK64A4P7EkY9Rx2i/IOCq
 nWE+/AePR/4Dv4k9kF7trdQ1dD/3oOEUe2ThdcP7oPH0nPsGJ7rKff9FHjhrzGokQi2H
 DgnidvDmTgwC+mnS4OIZXV/0Wkc4HtUchzKpHUV0X8cA8WfZUQL/a83qCIWckKnxipjs
 EUXQ==
X-Gm-Message-State: APjAAAXtJ5H1jOo4Oe0DVnDfm/d5lfRP+2uJrj576CHF4Pl6i21jmfiP
 H6TiPZCyFsZN305ohJUaroWj
X-Google-Smtp-Source: APXvYqyzA6Z4cjckSGIKMOaUmTPEDpjA24NdP9kjBoDo+9GggM+8hRKzvWxgrdA1/AYK9n2JcE1sZw==
X-Received: by 2002:a17:902:bd88:: with SMTP id
 q8mr3605384pls.299.1571317193054; 
 Thu, 17 Oct 2019 05:59:53 -0700 (PDT)
Received: from mani ([103.59.133.81])
 by smtp.gmail.com with ESMTPSA id h2sm5064753pfq.108.2019.10.17.05.59.45
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 17 Oct 2019 05:59:52 -0700 (PDT)
Date: Thu, 17 Oct 2019 18:29:40 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: YueHaibing <yuehaibing@huawei.com>
Subject: Re: [PATCH -next 28/30] pinctrl: actions: use
 devm_platform_ioremap_resource() to simplify code
Message-ID: <20191017125940.GA25046@mani>
References: <20191017122640.22976-1-yuehaibing@huawei.com>
 <20191017122640.22976-29-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191017122640.22976-29-yuehaibing@huawei.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_055954_149346_0CADD7B8 
X-CRM114-Status: GOOD (  15.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: alexandre.belloni@bootlin.com, geert+renesas@glider.be,
 narmstrong@baylibre.com, linus.walleij@linaro.org, baruch@tkos.co.il,
 linux-kernel@vger.kernel.org, thierry.reding@gmail.com,
 jesper.nilsson@axis.com, f.fainelli@gmail.com, wens@csie.org,
 linux-arm-kernel@axis.com, jonathanh@nvidia.com,
 ludovic.desroches@microchip.com, agross@kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-msm@vger.kernel.org,
 rjui@broadcom.com, haojian.zhuang@gmail.com, vz@mleia.com,
 linux-gpio@vger.kernel.org, lars.persson@axis.com, linux-tegra@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, sbranden@broadcom.com,
 linux-renesas-soc@vger.kernel.org, linux-oxnas@groups.io, afaerber@suse.de,
 daniel@zonque.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 17, 2019 at 08:26:38PM +0800, YueHaibing wrote:
> Use devm_platform_ioremap_resource() to simplify the code a bit.
> This is detected by coccinelle.
> 
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Thanks,
Mani

> ---
>  drivers/pinctrl/actions/pinctrl-owl.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/pinctrl/actions/pinctrl-owl.c b/drivers/pinctrl/actions/pinctrl-owl.c
> index 5dfe718..5a0c8e8 100644
> --- a/drivers/pinctrl/actions/pinctrl-owl.c
> +++ b/drivers/pinctrl/actions/pinctrl-owl.c
> @@ -915,7 +915,6 @@ static int owl_gpio_init(struct owl_pinctrl *pctrl)
>  int owl_pinctrl_probe(struct platform_device *pdev,
>  				struct owl_pinctrl_soc_data *soc_data)
>  {
> -	struct resource *res;
>  	struct owl_pinctrl *pctrl;
>  	int ret, i;
>  
> @@ -923,8 +922,7 @@ int owl_pinctrl_probe(struct platform_device *pdev,
>  	if (!pctrl)
>  		return -ENOMEM;
>  
> -	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -	pctrl->base = devm_ioremap_resource(&pdev->dev, res);
> +	pctrl->base = devm_platform_ioremap_resource(pdev, 0);
>  	if (IS_ERR(pctrl->base))
>  		return PTR_ERR(pctrl->base);
>  
> -- 
> 2.7.4
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
