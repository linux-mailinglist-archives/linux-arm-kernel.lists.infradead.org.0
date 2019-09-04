Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A83EA9400
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 22:45:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BEC+19mHmTHMxwdeHS9Q/+SW74+astSF0Mrw/JPQPFI=; b=Nvt6ynGrRZ5TLx
	G46rUpyjIFXdJJuuZ9QdiWA4ICLd8XiRp0KzyB6rbtN3scngWEzu8Upr6Y2n8QgYDFkMw3axIs8av
	5B/Fz+q/YVtZ/MbBf048Rc958b6Ti7fKr00LR93kwbGFPJvWTlGu+rCF0i4WeNqbARY+ua1+FxV1y
	0RYzRlTLznI8qYNvsA0Wv5AiqmDOcrQB5H8LuM9FnQCiRH6WkQVnrZKTrLG/sIUSiEIfI8pEotKwA
	IVnfsXVnfmveUNYpXwClgYNaGe0vcDG9kSjzzqH0j7UthgF4ARJZTpjnIvv1ewIGRaCB5E7WXGmCN
	rnbQ35f1ZAv1atTOWZCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5c96-0004QM-3e; Wed, 04 Sep 2019 20:44:52 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5c8s-0004Mz-Oo
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 20:44:41 +0000
Received: by mail-pl1-x641.google.com with SMTP id b10so103910plr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 13:44:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=vZGgKk8jeW8NM2wT+HTq6+KHx26Kcf2Hd/HdxeR6J0c=;
 b=TzzsMJ3gWG917Iis4NdDhBIHth4GqtK3/sv+X2gQXSJdeB0qEqMFs9o843HMPvOYUn
 vxtcCBUDaWeRrnOi1h22RIfgxWB3iIQod31jZJoOVeGfutT9zeffgawMOBlMyWm9nSwy
 YYRmz4yz3DSBRuxsOrQNDlVkq2BDtx9qG5bw/7teX4Y2Jiv+jUIX5DTvPqMzRVOzI9X5
 4aJ+GjJekgkZ7uptwZX/lTBColHi+7J8HLkvOOdJeAxLEmtHbAncsA81jTFaDEk/tFKN
 czMqG3CwBQQXU35NXerVTyXs4EAwGQjCKS5/StfvvxlCQdQ0G6qjrLlu6glTZVxMY3++
 m0oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=vZGgKk8jeW8NM2wT+HTq6+KHx26Kcf2Hd/HdxeR6J0c=;
 b=h3Lf1v3tC8yhXT38AuXsg6YSrRj9mW3txf5wbaLMXFzab0T9E0dHXe1eQLSey7dpN2
 6swEfkwY19HXUZzdtr8NV+1Ciuzi+IjReotO/M5G7KiGhQN+dsZ3s5HBETrLjN3ITgnH
 I49IynowR2d5usF3K9ybc5STOq1rQOOmKKZHpZDqx085LldopxYEoajLrQKn77IJkR+b
 hRlS/y3Mq7slnxjkA8sze3Y/LJqDOMEBUjAvn85ODHUaB7lccM5yVIw/79LnMXNdhPFL
 G0v5AOYp1dGgZzLpWzjn/9cZ0j3lkMbv+daHCCmmtlQc9x6iXQW1Q0r11yxEfwI7IVHm
 yL+w==
X-Gm-Message-State: APjAAAUX2xylIWP7i7SDYi8llp+4nAJ/j1+AnSJlsYvvJsagOwDNRTuV
 L4TCusany2ocT19BN37jU7o/Kg==
X-Google-Smtp-Source: APXvYqx4qZrRLrrr0VmXx5Jsx7rH4OjMuKZvmx+AszzG5hedxbJVd30/b6Bg8l9gTJn3rOqOMRdQqA==
X-Received: by 2002:a17:902:7b82:: with SMTP id
 w2mr41037414pll.250.1567629878103; 
 Wed, 04 Sep 2019 13:44:38 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id r187sm19257078pfc.105.2019.09.04.13.44.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Sep 2019 13:44:37 -0700 (PDT)
Date: Wed, 4 Sep 2019 13:44:33 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: YueHaibing <yuehaibing@huawei.com>
Subject: Re: [PATCH -next 13/36] spi: spi-geni-qcom: use
 devm_platform_ioremap_resource() to simplify code
Message-ID: <20190904204433.GE580@tuxbook-pro>
References: <20190904135918.25352-1-yuehaibing@huawei.com>
 <20190904135918.25352-14-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190904135918.25352-14-yuehaibing@huawei.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_134438_818054_8839F6EE 
X-CRM114-Status: GOOD (  14.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: tmaimon77@gmail.com, palmer@sifive.com, tali.perry1@gmail.com,
 eric@anholt.net, ldewangan@nvidia.com, linux-riscv@lists.infradead.org,
 festevam@gmail.com, linux-samsung-soc@vger.kernel.org, f.fainelli@gmail.com,
 benjaminfair@google.com, shc_work@mail.ru, khilman@baylibre.com,
 openbmc@lists.ozlabs.org, michal.simek@xilinx.com, krzk@kernel.org,
 jonathanh@nvidia.com, yuenn@google.com, wens@csie.org, agross@kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-imx@nxp.com,
 linux-arm-msm@vger.kernel.org, linux-tegra@vger.kernel.org, andi@etezian.org,
 rjui@broadcom.com, s.hauer@pengutronix.de, mripard@kernel.org,
 broonie@kernel.org, linux-mediatek@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org, paul.walmsley@sifive.com,
 matthias.bgg@gmail.com, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, baohua@kernel.org, sbranden@broadcom.com,
 yamada.masahiro@socionext.com, avifishman70@gmail.com, venture@google.com,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 thierry.reding@gmail.com, wahrenst@gmx.net, kernel@pengutronix.de,
 kgene@kernel.org, shawnguo@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed 04 Sep 06:58 PDT 2019, YueHaibing wrote:

> Use devm_platform_ioremap_resource() to simplify the code a bit.
> This is detected by coccinelle.
> 

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> ---
>  drivers/spi/spi-geni-qcom.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/spi/spi-geni-qcom.c b/drivers/spi/spi-geni-qcom.c
> index 242b6c8..6f3d64a 100644
> --- a/drivers/spi/spi-geni-qcom.c
> +++ b/drivers/spi/spi-geni-qcom.c
> @@ -534,7 +534,6 @@ static int spi_geni_probe(struct platform_device *pdev)
>  	int ret, irq;
>  	struct spi_master *spi;
>  	struct spi_geni_master *mas;
> -	struct resource *res;
>  	void __iomem *base;
>  	struct clk *clk;
>  
> @@ -542,8 +541,7 @@ static int spi_geni_probe(struct platform_device *pdev)
>  	if (irq < 0)
>  		return irq;
>  
> -	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -	base = devm_ioremap_resource(&pdev->dev, res);
> +	base = devm_platform_ioremap_resource(pdev, 0);
>  	if (IS_ERR(base))
>  		return PTR_ERR(base);
>  
> -- 
> 2.7.4
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
