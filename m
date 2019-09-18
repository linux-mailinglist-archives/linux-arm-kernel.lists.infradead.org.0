Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3F7FB684E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 18:38:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RBH8opFO9Ql5kzg53AuHOOihZuUxRirJON1iO4Ni75g=; b=LNDyEDMivOuqhYlZfrEOLQb/5
	bhvnAlBXctABDz4yUxYOiIPRFq4ZNgQJa75jw9MPBL9nMQuQ762JUtLZRqdDO8FcixwMKWxSDy00m
	V2aCi2GlR5wVUAIhE318UgOF2GoiK7JTXjJ/wL3SvdELSnd/qzOr1eg8I/+ZXkANLlPp8V1m7mxDM
	W+GiBOUEWztbgaXFvwkOUwogMN3v+AAJYig7OW9QWAWeKltAD5QtjA5SfhigxtH4cWkOQK5dUW6QI
	YjKylkXHHe8/3ADi/VDipJiKnYQ+cLDYVa5gCWMtpY54rGO1Lavc1xRQasSkamj9b+UPk8VW87aAH
	xJxcuKZxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAcxt-0003mo-TA; Wed, 18 Sep 2019 16:38:02 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAcxh-0003m5-UU
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 16:37:51 +0000
Received: by mail-pl1-x644.google.com with SMTP id d3so220222plr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 09:37:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=J1GkKLG6lvp/GtC0MAMhWfOb994e64EiCwfOJPxf8RM=;
 b=I0HjyZYmt7lgF05P8+nOoOIyNjRfcLWECZitfwk5PAP2klJk3jejiBnRCUDDt09hJg
 BH+gAJQa+UeOpN53giu+MThtAinc39ChY9NOwhYQAA34u97TKZnaYLUxjjJJq5i8/oee
 85iANBtFodXnXr5Fv6FzHWHQkSHdrOux63uLU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=J1GkKLG6lvp/GtC0MAMhWfOb994e64EiCwfOJPxf8RM=;
 b=q4gwsVo9blqfZqxoSYDTBAgM9jO3QWTOd9PJA/8DokcKnBmZr52wXfKfj+FEPm/CsT
 2QLtlHP9FOeUd0XcxlYH+bG0r3RN3WDUBV/mEhbjwlZumSTuFmNdoIwQB+pvbGtATkba
 pROx6ZMF9FDAZ/DmGkK7spQmU2ekzUMTlwdfcuHmmw0kdDm0mEn6KPAdgzcxuiOeOZEE
 BZgoC1A4PaBm6a3kCn4v6V7K/hxJ4krH4I5K99pr+dBO4YVxbW09pcYnpHzIP+X9r8SK
 YHFvsc+lugF/BOhsdDOyhFXjJg+OPo0+qZV7JJ3BBvnUcwzLYnbZOic2zE96xtiMZARO
 LgTA==
X-Gm-Message-State: APjAAAX5naWdC+Ym9aZ2UnaYbol+fARqiP+Z1nhuNNtLwo/nAyeuip+R
 Yon2hk01ZfSlkG4vZ8Yd+wwQHw==
X-Google-Smtp-Source: APXvYqznLi1akMyvUhQjFSDE6RFyBEIeeFSwv7tfyPa8JsRx7uUSxWx9D9JPEV56WoHDBaJwAZ3Bvw==
X-Received: by 2002:a17:902:7489:: with SMTP id
 h9mr1598620pll.166.1568824668412; 
 Wed, 18 Sep 2019 09:37:48 -0700 (PDT)
Received: from rj-aorus.ric.broadcom.com ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id g12sm5367137pgb.26.2019.09.18.09.37.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 18 Sep 2019 09:37:47 -0700 (PDT)
Subject: Re: [PATCH] hwrng: iproc-rng200 - Use
 devm_platform_ioremap_resource() in iproc_rng200_probe()
To: Markus Elfring <Markus.Elfring@web.de>, linux-crypto@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, bcm-kernel-feedback-list@broadcom.com,
 Arnd Bergmann <arnd@arndb.de>, Florian Fainelli <f.fainelli@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Herbert Xu <herbert@gondor.apana.org.au>, Matt Mackall <mpm@selenic.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>
References: <0ecb0679-0558-6cbe-af2f-6ee9122a4a7e@web.de>
From: Ray Jui <ray.jui@broadcom.com>
Message-ID: <667911b3-602e-e5a9-5e83-bd8c17625bb7@broadcom.com>
Date: Wed, 18 Sep 2019 09:37:45 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <0ecb0679-0558-6cbe-af2f-6ee9122a4a7e@web.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_093749_989874_8CDFA86A 
X-CRM114-Status: GOOD (  20.57  )
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 kernel-janitors@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 Himanshu Jha <himanshujha199640@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 9/18/19 12:19 AM, Markus Elfring wrote:
> From: Markus Elfring <elfring@users.sourceforge.net>
> Date: Wed, 18 Sep 2019 09:09:22 +0200
> 
> Simplify this function implementation by using a known wrapper function.
> 
> This issue was detected by using the Coccinelle software.
> 
> Signed-off-by: Markus Elfring <elfring@users.sourceforge.net>
> ---
>   drivers/char/hw_random/iproc-rng200.c | 9 +--------
>   1 file changed, 1 insertion(+), 8 deletions(-)
> 
> diff --git a/drivers/char/hw_random/iproc-rng200.c b/drivers/char/hw_random/iproc-rng200.c
> index 92be1c0ab99f..899ff25f4f28 100644
> --- a/drivers/char/hw_random/iproc-rng200.c
> +++ b/drivers/char/hw_random/iproc-rng200.c
> @@ -181,7 +181,6 @@ static void iproc_rng200_cleanup(struct hwrng *rng)
>   static int iproc_rng200_probe(struct platform_device *pdev)
>   {
>   	struct iproc_rng200_dev *priv;
> -	struct resource *res;
>   	struct device *dev = &pdev->dev;
>   	int ret;
> 
> @@ -190,13 +189,7 @@ static int iproc_rng200_probe(struct platform_device *pdev)
>   		return -ENOMEM;
> 
>   	/* Map peripheral */
> -	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -	if (!res) {
> -		dev_err(dev, "failed to get rng resources\n");
> -		return -EINVAL;
> -	}
> -
> -	priv->base = devm_ioremap_resource(dev, res);
> +	priv->base = devm_platform_ioremap_resource(pdev, 0);
>   	if (IS_ERR(priv->base)) {
>   		dev_err(dev, "failed to remap rng regs\n");
>   		return PTR_ERR(priv->base);
> --
> 2.23.0
> 

Change looks good to me, thanks!

Reviewed-by: Ray Jui <ray.jui@broadcom.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
