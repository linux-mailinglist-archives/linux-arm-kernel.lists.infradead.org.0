Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4469DA940F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 22:47:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1gGAcv8aSp+y04sOXrH22iU99AOc99fDthAPurOSk1U=; b=GZ4mEFJn4SXZZQ
	NWl+nHFkPMDdN2SKhKwsNZuDH6LHtvb26o6bCzRhSNL0UZPVIdB0CQOJkNVY7mzFs13vtfYsiCjfT
	5vU+LCIGoA0kPqom9FrDZWAzTlXv3P37e42M24l3M0eM7xJMWoiyPR9Snq0kmjEm0Vl/O/pUuYBiw
	aAw5/h0RSSUWRwB5+Ig56iIPrbYbngl0Tc7/BE+weO6pxS8sOOdZnNixBpdjW39046wKAsvHsVlv7
	wwXvkx2oQVQWO6wOgYR75IP0oI6Hi6s8E1Zt8pq9NXca63QPOrEJ5mpv66z0w7b+CEO8otEsFn/5J
	+I5IUYYcYsEqhKJ1ZS1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5cBJ-00067D-0e; Wed, 04 Sep 2019 20:47:09 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5cB5-00061c-Af
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 20:46:57 +0000
Received: by mail-pg1-x541.google.com with SMTP id n9so86891pgc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 13:46:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=7FpVgaIhgimDRqpweFDbMiGBjSsk/JazcD80okKL/K8=;
 b=B3ZwBoxDNj5wp/W0+6EgPLtyn42FRM4lKEPuGul/INFNVDV0d6vrjAfI74kiYbBjwb
 RtwOAFpFkp8ULzlYQBnaGau4RSDKiK2Sdq8Hjs6JHKbU5On8H56ARMSYggt77ImaOAXR
 Phja5i1TBR6bjGzSRWjJc8EZqzoOHCuT1G+iocES8UWBNVeoOYiRY6HkgRLZvKh5M6Sb
 WHzguaFI/2ByIIVLDKt6nFLW+FJbEXZiBcnjB+VvF1jsWXutZ6GLiXNq+3ly3QHxD/gn
 UhmFNW0RtNQQoSqk6dbh3isqFmSp5AkCvUY6fi5kmUt8vL3neywbb2V1USK8/dnNvSiJ
 Cxug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=7FpVgaIhgimDRqpweFDbMiGBjSsk/JazcD80okKL/K8=;
 b=mxMN6I7SunlYrlE8MdLb+LKFpfvcKh20eRnXE6xZeqWAJSpmkUCbaAy6Cw4PkAKy5E
 2ZLSydo/AkbPGv3qfgc5mFybDUk6NnbhfrCbe24d3C3HfKnhaOYqOHdqwnOtGK2J9acH
 YxuSfBiRItpE/Mum0Tff+YPd24KL1tGs0vfBYrZ4lXmft8MeM/TJJu7Pm3HLYOKwhq/H
 +WZO8Q5MZRH4U0JYiPHhbuN435GuQj5q82fQ9vlTww7Adj+j26LNgi9eCIQYa2SLN5n7
 ZTrOXE1fNwUNM32N0Rrpn753LSqhdVAYDGyMfKc+aTEJav1NKHvXzSpySg/NMg1Z0Wkc
 D/YA==
X-Gm-Message-State: APjAAAVAxUq5PknfJktupWCBIX00ZH2rrKCNZjjcEk+pK1t3guK21spX
 x102ZGUGn7m63rEeD+8madBC+A==
X-Google-Smtp-Source: APXvYqx6p9POXMCXKO+7CZNt3OeG669blGTjX7rgKqWleU9xBmKU6iit1LtXZOmDeIMaYc7+Sw+ZcA==
X-Received: by 2002:a63:66c5:: with SMTP id a188mr49168pgc.127.1567630014448; 
 Wed, 04 Sep 2019 13:46:54 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id br18sm3019455pjb.20.2019.09.04.13.46.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Sep 2019 13:46:53 -0700 (PDT)
Date: Wed, 4 Sep 2019 13:46:49 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: YueHaibing <yuehaibing@huawei.com>
Subject: Re: [PATCH -next 23/36] spi: spi-qcom-qspi: use
 devm_platform_ioremap_resource() to simplify code
Message-ID: <20190904204649.GF580@tuxbook-pro>
References: <20190904135918.25352-1-yuehaibing@huawei.com>
 <20190904135918.25352-24-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190904135918.25352-24-yuehaibing@huawei.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_134655_374179_85265E85 
X-CRM114-Status: GOOD (  14.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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

On Wed 04 Sep 06:59 PDT 2019, YueHaibing wrote:

> Use devm_platform_ioremap_resource() to simplify the code a bit.
> This is detected by coccinelle.
> 

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> ---
>  drivers/spi/spi-qcom-qspi.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/spi/spi-qcom-qspi.c b/drivers/spi/spi-qcom-qspi.c
> index a0ad73f..250fd60 100644
> --- a/drivers/spi/spi-qcom-qspi.c
> +++ b/drivers/spi/spi-qcom-qspi.c
> @@ -424,7 +424,6 @@ static int qcom_qspi_probe(struct platform_device *pdev)
>  {
>  	int ret;
>  	struct device *dev;
> -	struct resource *res;
>  	struct spi_master *master;
>  	struct qcom_qspi *ctrl;
>  
> @@ -440,8 +439,7 @@ static int qcom_qspi_probe(struct platform_device *pdev)
>  
>  	spin_lock_init(&ctrl->lock);
>  	ctrl->dev = dev;
> -	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -	ctrl->base = devm_ioremap_resource(dev, res);
> +	ctrl->base = devm_platform_ioremap_resource(pdev, 0);
>  	if (IS_ERR(ctrl->base)) {
>  		ret = PTR_ERR(ctrl->base);
>  		goto exit_probe_master_put;
> -- 
> 2.7.4
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
