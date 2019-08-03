Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CADA80690
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  3 Aug 2019 16:13:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x0LmmaU+FxOmLd92CFYJyPM54Z/afpE5EfvfNyJSm/g=; b=vEQuFPqvjKmx/j
	5sr+Ilbu2nOLgVPAiWt4rBhTCdg3l8m5ZpIi0lFPVxh+eUD9As/l/n1iaYsBk9u5EFcYHFv87liyC
	E4um0/Va00UYUovHphgEGcpo/RwpliFCqa+qLez55e5DtulNXZh00ZJ/sqO0ijyEX2DTy57AwdrGU
	h+mkmEDb6f5Gt97mDuld3lYYeA+IyK1UOfWFrieVjTDSOMql6w4p+SforS7zGM1M7tENujp+mw5fZ
	/UHN6W1IkEg8JviyKFTMri6tJaikJq4gE1M9935iVXSbUdbyeBfpPR0Xipp8gu5ep+UwEgSV44PdR
	YOLWzKQmBKxM5udTxObg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htumr-0001eY-7l; Sat, 03 Aug 2019 14:13:33 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htumT-0001bV-2L
 for linux-arm-kernel@lists.infradead.org; Sat, 03 Aug 2019 14:13:10 +0000
Received: by mail-wr1-x443.google.com with SMTP id y4so80062608wrm.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 03 Aug 2019 07:13:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jamieiles-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=NH76ZaePsP0z4l5OXFKg/g6flaC7aHRV+c6EeQ9kS6o=;
 b=yve9gbrhv6FJmbJUZg2guU8pzriDoGRPtUNSqiUWlqQ4TkPhE7DfhQZ1Lvl6wlYKgn
 CUij4lT37fx3UBTzDkqS1of8xRypgfYdRJr/ZTXH9n4ogxbAsHcYxCGIrI95URXflv1g
 FJP9gYfinhrvwugGqlcrYzi3n2ruWV0GhOFk8DMONyy7mf8VlBaevDWMWbiu3MutmmwQ
 QmpvFm+ZUvNuHH0b4aYZwIypRKx4k7GEt4Eb0TgahitiT6Dp+zPrFxSJt1f2evofobtU
 wg0yc6oNTEOJez1sFjYfahVNfvSfG3X1JEqTzitL04k5N+LcsbHTEjXGJOyHEMLK2GEh
 3LLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=NH76ZaePsP0z4l5OXFKg/g6flaC7aHRV+c6EeQ9kS6o=;
 b=LZLkWGtke9Kn0zG6KrbalVy3a/YuwwQA3WL7dMz0uO7AE8659jx+c/xp3em/1YXULg
 B/KaTmAWrw6cbUahXsEvTK2GMToDyUzp7S/TQ00x58uJAGiBBS607UGjTvMwj+ykF8/P
 xUID2q+GRbsWR43chZq0khddo/eczoTa26mfSe3C+Enq1xsHrUpYK0RZZzx7Lq7wH/n2
 WEx7NfMlqfYkzza5eA+Jdt3swvGIu+RDePASvv3rH79K+ytyPqWjGpzguicN1jGh/y7a
 /wQSgv/JQV+dzMJkwDd3UOCC1gQxWFirkwfbB/JbnLmeCeuuBvWCbWJqxUoM7yfSmU+2
 tXSQ==
X-Gm-Message-State: APjAAAXP+xGCwkufYyv5lRMbIQODbyBNO2GzrVP6H5jG3VV8YAnXJBx1
 dS7WEp+iNvCeP+64Bsk9A3o=
X-Google-Smtp-Source: APXvYqwdvvXxz41HQ2tdGIQL/JsFnK1YhppKjv+IAl3mDZiell5PlMgO40s/vhGd/eO9sYQEnXx8mQ==
X-Received: by 2002:a5d:4b50:: with SMTP id
 w16mr143525518wrs.132.1564841581912; 
 Sat, 03 Aug 2019 07:13:01 -0700 (PDT)
Received: from localhost (cpc128704-hawk17-2-0-cust94.know.cable.virginm.net.
 [82.38.213.95])
 by smtp.gmail.com with ESMTPSA id c65sm80532453wma.44.2019.08.03.07.13.00
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 03 Aug 2019 07:13:00 -0700 (PDT)
Date: Sat, 3 Aug 2019 15:13:00 +0100
From: Jamie Iles <jamie@jamieiles.com>
To: YueHaibing <yuehaibing@huawei.com>
Subject: Re: [PATCH -next 07/12] crypto: picoxcell - use
 devm_platform_ioremap_resource() to simplify code
Message-ID: <20190803141300.GA26817@willow>
References: <20190802132809.8116-1-yuehaibing@huawei.com>
 <20190802132809.8116-8-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190802132809.8116-8-yuehaibing@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190803_071309_113724_7D2BE87B 
X-CRM114-Status: GOOD (  14.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: heiko@sntech.de, gary.hook@amd.com, clabbe.montjoie@gmail.com,
 linux-arm-kernel@axis.com, jamie@jamieiles.com,
 linux-stm32@st-md-mailman.stormreply.com, jesper.nilsson@axis.com,
 linux-samsung-soc@vger.kernel.org, herbert@gondor.apana.org.au,
 krzk@kernel.org, linux-rockchip@lists.infradead.org, wens@csie.org,
 agross@kernel.org, thomas.lendacky@amd.com, alexandre.torgue@st.com,
 antoine.tenart@bootlin.com, linux-arm-msm@vger.kernel.org, mripard@kernel.org,
 linux-mediatek@lists.infradead.org, lars.persson@axis.com,
 matthias.bgg@gmail.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-crypto@vger.kernel.org,
 mcoquelin.stm32@gmail.com, kgene@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 02, 2019 at 09:28:04PM +0800, YueHaibing wrote:
> Use devm_platform_ioremap_resource() to simplify the code a bit.
> This is detected by coccinelle.
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

Acked-by: Jamie Iles <jamie@jamieiles.com>

> ---
>  drivers/crypto/picoxcell_crypto.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/crypto/picoxcell_crypto.c b/drivers/crypto/picoxcell_crypto.c
> index b985cb85..9a939b4 100644
> --- a/drivers/crypto/picoxcell_crypto.c
> +++ b/drivers/crypto/picoxcell_crypto.c
> @@ -1624,7 +1624,7 @@ MODULE_DEVICE_TABLE(of, spacc_of_id_table);
>  static int spacc_probe(struct platform_device *pdev)
>  {
>  	int i, err, ret;
> -	struct resource *mem, *irq;
> +	struct resource *irq;
>  	struct device_node *np = pdev->dev.of_node;
>  	struct spacc_engine *engine = devm_kzalloc(&pdev->dev, sizeof(*engine),
>  						   GFP_KERNEL);
> @@ -1653,8 +1653,7 @@ static int spacc_probe(struct platform_device *pdev)
>  
>  	engine->name = dev_name(&pdev->dev);
>  
> -	mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -	engine->regs = devm_ioremap_resource(&pdev->dev, mem);
> +	engine->regs = devm_platform_ioremap_resource(pdev, 0);
>  	if (IS_ERR(engine->regs))
>  		return PTR_ERR(engine->regs);
>  
> -- 
> 2.7.4
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
