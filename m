Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B8449F442
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 22:40:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bkriwvqYeY2bd0MwNrhwH9nNeVGwkSWI0rx/ew22aiI=; b=RKAV/XfOXANseKXGwYywltrG2
	OzlnR/4YkZNaA8u0ChFdaEgjn6GjniJBGQQ4gGuwdYkBWoK2nII25Bu8CduTLFWcdUrXoxxjtck4Y
	Y8kPrJp5q2ggcDZDPhB/720KvXOMpeR0NbTVdEY7XxKjbvWkhJXNshGKPEbSkjkZcLYVRpUCnaBTn
	BxtDDX35RlIEflcl8klXZny2E8TMazjMwrcsS3boM81EF3Bwn4Ci/Vj/ExgiuZQBsGlDCkSMr027z
	HYT6soUV3g7p8wA6fTJ0AELqBY6iwl+Iq5/UM6berDNaGhJze+kGFaNWF9xiU5I7b8zFTsfmGwtd+
	ZHo9a0Wug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2iGV-0004bc-4r; Tue, 27 Aug 2019 20:40:31 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2iGH-0004bF-Lm
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 20:40:19 +0000
Received: by mail-wr1-x442.google.com with SMTP id y19so182050wrd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 13:40:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=LVY+aGgV5phVkgMSXjfnQV4zLurQzKqT7u/u8Bbhqn4=;
 b=SdSulqDQhvJQaCl/gqpRI29PMKcIigY1c472uiQr0zBUH0suP/3zID/TWaFKLGGxt6
 wJU4/jiPdnLLZ98QU2A5JBMHijilc4FRAF9U1kvjapIdUhWELzGMNFxpZJT2qx3bai4t
 XnCyR06QWZxXtqEDbK+YC3i+qsylW9SxNrCTY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=LVY+aGgV5phVkgMSXjfnQV4zLurQzKqT7u/u8Bbhqn4=;
 b=lCue8+CiptDHnYfL3M3UJvlxwi/0r+5RkEWAymdMW+XvL3Mhj4CQ3+TE5wpgX/qXj/
 wfUPv/fSaWAbP/DEeaGe6C/OM+n8K6rJHzRtadTFb9V+4YG93sSIVc6926yTA6y2sO/6
 Azm2IWXOpIUAehV5zYDzQkYKOSMJayEbygAqqMq9T+ItOqg5w+PiJs5RzIHIZQR6ra36
 xJTeBUSq+J5wFQ8l3jrWn5+PC7tShijyZ4bG6OUplyDqxYUsQFMYer1UDPp9oebJla2v
 lyhspY36XgEm31NHc+rC5onjGEAhba10vL2mU8zt7gemf1YwrimGu88vjp2cTpk5cdFv
 qTNw==
X-Gm-Message-State: APjAAAU03OSv0eloPjh7qq5tnUGHZ83AS4hfBoM+5qN/uSnNUyVbB8k9
 c+oPZ0XWRFjDkZcwjMzUmRHyxQ==
X-Google-Smtp-Source: APXvYqw2S8S1S6srBLnhNXgrsUaeESkm3bBtz02xDGo7Ut/x/S+256UHwPqj2L8/y9Wugysbq7pyJQ==
X-Received: by 2002:adf:ce81:: with SMTP id r1mr133139wrn.114.1566938414417;
 Tue, 27 Aug 2019 13:40:14 -0700 (PDT)
Received: from rj-aorus.ric.broadcom.com ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id d69sm189454wmd.4.2019.08.27.13.40.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 27 Aug 2019 13:40:13 -0700 (PDT)
Subject: Re: [PATCH net-next] phy: mdio-bcm-iproc: use
 devm_platform_ioremap_resource() to simplify code
To: YueHaibing <yuehaibing@huawei.com>, andrew@lunn.ch, f.fainelli@gmail.com, 
 hkallweit1@gmail.com, davem@davemloft.net, rjui@broadcom.com,
 sbranden@broadcom.com
References: <20190827134616.11396-1-yuehaibing@huawei.com>
From: Ray Jui <ray.jui@broadcom.com>
Message-ID: <27e43388-bc8f-6a36-5696-beb3b8d140d4@broadcom.com>
Date: Tue, 27 Aug 2019 13:40:08 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190827134616.11396-1-yuehaibing@huawei.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_134017_721111_C7B00977 
X-CRM114-Status: GOOD (  17.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: netdev@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2019-08-27 6:46 a.m., YueHaibing wrote:
> Use devm_platform_ioremap_resource() to simplify the code a bit.
> This is detected by coccinelle.
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> ---
>   drivers/net/phy/mdio-bcm-iproc.c | 4 +---
>   1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/net/phy/mdio-bcm-iproc.c b/drivers/net/phy/mdio-bcm-iproc.c
> index 7d0f388..7e9975d 100644
> --- a/drivers/net/phy/mdio-bcm-iproc.c
> +++ b/drivers/net/phy/mdio-bcm-iproc.c
> @@ -123,15 +123,13 @@ static int iproc_mdio_probe(struct platform_device *pdev)
>   {
>   	struct iproc_mdio_priv *priv;
>   	struct mii_bus *bus;
> -	struct resource *res;
>   	int rc;
>   
>   	priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
>   	if (!priv)
>   		return -ENOMEM;
>   
> -	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -	priv->base = devm_ioremap_resource(&pdev->dev, res);
> +	priv->base = devm_platform_ioremap_resource(pdev, 0);
>   	if (IS_ERR(priv->base)) {
>   		dev_err(&pdev->dev, "failed to ioremap register\n");
>   		return PTR_ERR(priv->base);
> 

Looks good to me. Thanks.

Reviewed-by: Ray Jui <ray.jui@broadcom.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
