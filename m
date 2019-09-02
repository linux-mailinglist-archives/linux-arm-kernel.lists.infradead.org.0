Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45DBDA4E3C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 06:13:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=snMkLxvHsBRypcUldhOk7wB6YiVICrQ4jc01HtvjElA=; b=SsqXNcVKXJImcx
	UotL7yQToBWQyv30z7dM00WQxWqJgOxD1KVG02Bs8CmsOS5fvzmmlWPd3dVZRsElwyA6FQlyv1Nsd
	hthsrukeiJdZyqP2prdAJ0l8zA9LP8zlqxvRw9qlYGgBsQXev2K7vsXnuY03zUo2G6vstfTPVmJrz
	FtQEtnHifmTVB/IAJa4mMVrIShW4WSTSbjBX5jVySnOr5pBiVE3+PAgkEhpuzn9Oa9xNrUa86SZsz
	LmWa6afZSuosj7/xryPkJ1vujz2ChVlE/76CoW7uohm5tZt4kxWplRIMezJaog6Y7HVSDb6aEcbQq
	Vz5uXExr2IKOmftEarlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4diN-0006dK-6X; Mon, 02 Sep 2019 04:13:15 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4diC-0006cL-PB
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 04:13:06 +0000
Received: by mail-qk1-x743.google.com with SMTP id 4so11436901qki.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 01 Sep 2019 21:13:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tEtrc1rdzh/Z7dC3mMEoNjpzKu9VEPrGxsmA4Ux5oa0=;
 b=dN7IQbc7odvWieIZ5FEdT/iecR2k9co0ZKCiVEoF2+XtJgJEdBx8dxIzOy3zhL02jM
 Ng4NLHSa7h/5wwE7q5SJd047yMm+wIvJm2pobbFMrlKBydk8kDSkH9Vuy1khb04sb0IG
 QvFDdo4L8E5TGP0OzMn69C3bccFG0s+t/Y2hM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tEtrc1rdzh/Z7dC3mMEoNjpzKu9VEPrGxsmA4Ux5oa0=;
 b=GNHYh5f/FIqDjEHrg/ZqoTLQt7KFAu6fSTuPg698HuPee0Mi7E4PknOa1NdElrA00Q
 NjgGpCX8LKLzpIFirlWcvPHDiOVjvq69GIYVHkvJnutROZttSUrMP2sFNn1irAKtwDkq
 0vc5q/lkpTuc5W+fisqlusxWlA9xAyQQYubNW5UBb48OjKceCFhWZS0g7AEGF/cV97Cv
 iBf18+UQjjIqadFaMaBcKiCG7Lk/gP53OgLKWcQJ5jR2eRHvspVk+2DkfWj8qETKjpvc
 fdsE9q9aEBSWBHYhpadrlmKHtuvV636rkU3oCNhj7wvdfWiIUJx/YODtdDsoqZJ12FtH
 bIPA==
X-Gm-Message-State: APjAAAWmXzr1lwiUU9N5RH23mWFmCRwutcvpQu1CbpilIOfrHWhsU7MY
 FwPFNNGGP+O7+TRetaJeBjPLJgIAsFKJ5WanXMg=
X-Google-Smtp-Source: APXvYqx0AbdqwDb0w0SXIQPBfCsiY91eO/PaLq21Y0/TBBmbdFC4DKJXXqARBT3GurZhBmBSWqMC8OS98b5LFv7L5rI=
X-Received: by 2002:a37:4f4c:: with SMTP id d73mr13799291qkb.171.1567397583086; 
 Sun, 01 Sep 2019 21:13:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190902035842.2747-1-andrew@aj.id.au>
 <20190902035842.2747-2-andrew@aj.id.au>
In-Reply-To: <20190902035842.2747-2-andrew@aj.id.au>
From: Joel Stanley <joel@jms.id.au>
Date: Mon, 2 Sep 2019 04:12:51 +0000
Message-ID: <CACPK8XfYgEUfaK6rtr+FdEq-Vau6d4wE2Rvfp6Q4G2-kjVLT0g@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] mmc: sdhci-of-aspeed: Fix link failure for SPARC
To: Andrew Jeffery <andrew@aj.id.au>, Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_211304_878262_3DDD578D 
X-CRM114-Status: GOOD (  19.81  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, kbuild test robot <lkp@intel.com>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>, linux-mmc@vger.kernel.org,
 adrian.hunter@intel.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2 Sep 2019 at 03:58, Andrew Jeffery <andrew@aj.id.au> wrote:
>
> Resolves the following build error reported by the 0-day bot:
>
>     ERROR: "of_platform_device_create" [drivers/mmc/host/sdhci-of-aspeed.ko] undefined!
>
> SPARC does not set CONFIG_OF_ADDRESS so the symbol is missing. Guard the
> callsite to maintain build coverage for the rest of the driver.
>
> Reported-by: kbuild test robot <lkp@intel.com>
> Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> ---
>  drivers/mmc/host/sdhci-of-aspeed.c | 38 ++++++++++++++++++++----------
>  1 file changed, 25 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/mmc/host/sdhci-of-aspeed.c b/drivers/mmc/host/sdhci-of-aspeed.c
> index d5acb5afc50f..96ca494752c5 100644
> --- a/drivers/mmc/host/sdhci-of-aspeed.c
> +++ b/drivers/mmc/host/sdhci-of-aspeed.c
> @@ -224,10 +224,30 @@ static struct platform_driver aspeed_sdhci_driver = {
>         .remove         = aspeed_sdhci_remove,
>  };
>
> -static int aspeed_sdc_probe(struct platform_device *pdev)
> -
> +static int aspeed_sdc_create_sdhcis(struct platform_device *pdev)
>  {
> +#if defined(CONFIG_OF_ADDRESS)

This is going to be untested code forever, as no one will be running
on a chip with this hardware present but OF_ADDRESS disabled.

How about we make the driver depend on OF_ADDRESS instead?

Cheers,

Joel



>         struct device_node *parent, *child;
> +
> +       parent = pdev->dev.of_node;
> +
> +       for_each_available_child_of_node(parent, child) {
> +               struct platform_device *cpdev;
> +
> +               cpdev = of_platform_device_create(child, NULL, &pdev->dev);
> +               if (!cpdev) {
> +                       of_node_put(child);
> +                       return -ENODEV;
> +               }
> +       }
> +#endif
> +
> +       return 0;
> +}
> +
> +static int aspeed_sdc_probe(struct platform_device *pdev)
> +
> +{
>         struct aspeed_sdc *sdc;
>         int ret;
>
> @@ -256,17 +276,9 @@ static int aspeed_sdc_probe(struct platform_device *pdev)
>
>         dev_set_drvdata(&pdev->dev, sdc);
>
> -       parent = pdev->dev.of_node;
> -       for_each_available_child_of_node(parent, child) {
> -               struct platform_device *cpdev;
> -
> -               cpdev = of_platform_device_create(child, NULL, &pdev->dev);
> -               if (!cpdev) {
> -                       of_node_put(child);
> -                       ret = -ENODEV;
> -                       goto err_clk;
> -               }
> -       }
> +       ret = aspeed_sdc_create_sdhcis(pdev);
> +       if (ret)
> +               goto err_clk;
>
>         return 0;
>
> --
> 2.20.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
