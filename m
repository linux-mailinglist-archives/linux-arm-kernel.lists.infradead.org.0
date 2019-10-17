Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E46E5DADC0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 15:01:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EEswD4o7NuzEnCrD/yoRkMiSxe43heLyXzh7/6hx/ZA=; b=uzKth5jn1hn5EL
	2mWqWWVbsTjzMdUPVFMSwpaXC7ptpSaq8o1QyAy8YjVWjdA2fquusx18pMUd1g7bWRZtcq+3f3w2D
	od671eRnv0wXEA2+KWb9HP9pe1EGbG87bqsoWris22skt7pPqxH/ml2plCXA/LG1lC027Jl24F188
	x6TFPTETvubGywjNt3L46PbJabPJehie0wGMHZd37cu/Rpk1XhHMgrKUbB0afq/JqLZPf51nHrbC8
	AIJSD7U/kRLFOEW+UmvCPzVVLNnGsL+pYiI2FRfKKQb+HduiNSoT9KzWQaiJInFayS8ITo1iDH0C7
	qVxjrSOYOrHMC5jpYPtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL5Oy-0001TM-37; Thu, 17 Oct 2019 13:01:12 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL5Oj-0001Sk-61
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 13:00:58 +0000
Received: by mail-pl1-x642.google.com with SMTP id u12so1090066pls.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 17 Oct 2019 06:00:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=yfYp7qhZbl65vNKUTYsaxlWaCnBTNx7GglyjHYhUNIE=;
 b=K/QVAoxCRRVNlHuppUhAVFzLPGRyb1qTL2zA24HcsSkfncwvmhMgdeJPnhVPP6qPVV
 8N6DiV+y7xDvSi5kSxnKlW+Bn5wnpY4yxsHrRezVPj0NumwFiRHUzLp6CDBnwZDlpj6Z
 p1g9Fo+8cepblVehZurYU4snoQ1hiF4EOZXxMqMYOQ1Whz35LcyXzmxTpxXPYjHBskZD
 uOB1WyDaRulr4qWPaZxUnGSfdME/meS6RVkenfo4MARBhTfbMPLbHT5i4KEAkeqlZnbt
 nu4dzLy11xSO7YlCBv7W6lJGLd/3QL2f2RpWHrDVyq5B1JGcZDM4kQ+p8r7VUlGRObqX
 jniQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=yfYp7qhZbl65vNKUTYsaxlWaCnBTNx7GglyjHYhUNIE=;
 b=BwX+ZlcJId+78GgeL/RAp7s75njlgtQsrTszIFn64PBLXVNNmQplcdTvcwtS7DqtYT
 DNPbpUdBJCfF7Y2SxxKApUZ4WSEXEYdqW9S7a0+inQUWCae8Zo3WisrK3/Y+Lss9H99P
 tEbNsuG+uuvUU59Y2Jjz6+5qWjE7R3k40BHKOxiF6piCKyqcxdYOPpquyVbIl/KsH2ya
 uRFcUSNVPveWDhBfsQK4y1y34sn7rBv6srSf+k6KwlQxV6W5s+zBbelTWXfCJXWMydz5
 pWch2agRhY77V6Lm6xXzqSEmSUOPIJkueVNY/SYKz8YBcsR3jGf5g/TSIaeYTbm+xWBm
 I5bg==
X-Gm-Message-State: APjAAAXvHkwEVyNA6b7/BKOx9ZIUsJpJvC58ra8eCukcFModkjPdrpzs
 5O8Cjh62F0K/MlbuhAUVt8mT
X-Google-Smtp-Source: APXvYqwXeZAaSYCvV1FS/rjh8RsCufqorARnCkghqamNFA/Ehwy/l+zGZEoGNx2xjhw2EnTl69o8bg==
X-Received: by 2002:a17:902:b611:: with SMTP id
 b17mr3852502pls.23.1571317256478; 
 Thu, 17 Oct 2019 06:00:56 -0700 (PDT)
Received: from mani ([103.59.133.81])
 by smtp.gmail.com with ESMTPSA id o64sm7246854pjb.24.2019.10.17.06.00.49
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 17 Oct 2019 06:00:55 -0700 (PDT)
Date: Thu, 17 Oct 2019 18:30:44 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: YueHaibing <yuehaibing@huawei.com>
Subject: Re: [PATCH -next 26/30] pinctrl: bm1880: use
 devm_platform_ioremap_resource() to simplify code
Message-ID: <20191017130044.GB25046@mani>
References: <20191017122640.22976-1-yuehaibing@huawei.com>
 <20191017122640.22976-27-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191017122640.22976-27-yuehaibing@huawei.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_060057_228111_87BF00E3 
X-CRM114-Status: GOOD (  15.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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

On Thu, Oct 17, 2019 at 08:26:36PM +0800, YueHaibing wrote:
> Use devm_platform_ioremap_resource() to simplify the code a bit.
> This is detected by coccinelle.
> 
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Thanks,
Mani

> ---
>  drivers/pinctrl/pinctrl-bm1880.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/pinctrl/pinctrl-bm1880.c b/drivers/pinctrl/pinctrl-bm1880.c
> index 63b130c..f7dff4f 100644
> --- a/drivers/pinctrl/pinctrl-bm1880.c
> +++ b/drivers/pinctrl/pinctrl-bm1880.c
> @@ -1308,15 +1308,13 @@ static struct pinctrl_desc bm1880_desc = {
>  static int bm1880_pinctrl_probe(struct platform_device *pdev)
>  
>  {
> -	struct resource *res;
>  	struct bm1880_pinctrl *pctrl;
>  
>  	pctrl = devm_kzalloc(&pdev->dev, sizeof(*pctrl), GFP_KERNEL);
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
