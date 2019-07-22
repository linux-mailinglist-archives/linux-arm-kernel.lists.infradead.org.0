Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15AB470179
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 15:45:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=61tHBFbbx5SX6IaaM9eVPaCCetbu2AW0eT37pxesmO8=; b=PmjHMLwnJSnhCb
	5sBy+FrLfo2NAGgtlLN8j6bMIK3lZf2h85eK3Jzbvz9urElcEELhbM8nHJI6FkPIffjeIWIngA3kh
	rF4GtdRRP88/n+t+lsuQdOcQbZXtVqcwK2auTiEvZzpJ2RdaAjBmvbi4zck90TTtrFqhMqVRLu8M9
	kzhnHDmY+xT8S+LpfWP6z7olJw+UQbCbUvkwTk8JVnWZ2cVj5w60pMJKDaUjqPkNnUeh/yjNTKDY1
	9+THad8gxwpbTLbJCBqB01fss98/qI9Nb9BXbKKPPi9m5sdAnYrXl7z7w9i5m4iMLfBZLFxFnUHNO
	2z8OPyV6gXcUZY+NxiQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpYce-0001OU-W0; Mon, 22 Jul 2019 13:45:01 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpYbS-0000xE-H4
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 13:43:48 +0000
Received: by mail-vs1-xe42.google.com with SMTP id u124so26120552vsu.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 06:43:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uGmqG4ptpoLIjXtcAYy8btzZvJKDKHMEImKjNaUWrIw=;
 b=cXznW2faB3D/zdq8swGVmyFl8k+9mAGF+PgWbMSfNGiTYAg646sq3YBoAbRbi9gTv7
 1MjSWnUxAD3qZGkTFy9ERBAOA1/OqdzaDngC73lRQRVFjw4yANKrr7ksdw68RfR2u3f1
 k4Xx6OL6BAVjai3eJBIl0Phg3dUszMgfYzZJDqkr63ZcUzA9t17Bgw31+mCMCgN86FPN
 T7zxWbbDUhAg+mfGUFjJLvlGSU4eq33rw4UCFosTKHZZ/R/E7HwhdeTrxcOZxHFoQWQ/
 vdmvtJgN6mHpn7QEtxBHfwSrysZTZClVtNYUvxqiTQuGIrxQt6Y8vsReWrs8Ow8AWgR8
 z61Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uGmqG4ptpoLIjXtcAYy8btzZvJKDKHMEImKjNaUWrIw=;
 b=Reb/bVcDVX3flbfVh7Bi7wETZu71kr0bEx4XEWMZLpLI9BhqUSAQYXuhtSbFMCEfXW
 e6lurh1rx4/etBuzzp4SnI3dRoJt7OJtYoHjxgXoZiNfi7fPHTN6joT/3LGQoHG/uYlt
 FWhLSo3Pq9o+jNt9y5vcd4pKIDzZh3rjdrG3jJTd08OzWNFdvR4fOzWrKUmxAbMMdNwK
 +CbylB8X1nEW6CL/djb3XfLGx1Ga2IDFEFFyS2SfDqFZ3v6w5BRL45PW3qU4Rr7oox5G
 u8GfF8QcCWEvDJ/nqdtTIZyRqguYbvuLzt+1W4SRKVbIX0wYS/xIEYZ34FvHAbToy93r
 uSIw==
X-Gm-Message-State: APjAAAWeIyXS5ZklbT8HXGqPRMImrC8JJefHRfBpNb5XVsOBKIINjAcn
 pB///nD33RsQRpnh6bihW9wbV5oPAdpCTX/QB+NrDg==
X-Google-Smtp-Source: APXvYqzkfGZ1DKRRQAo+4IRI8owf3oXR3DF9EBGvHNO5tTE1l1JMNbpTfmAk+9D6uiCqKpvCr7b42xz1Nh+0fNXXddQ=
X-Received: by 2002:a67:ee16:: with SMTP id f22mr41692590vsp.191.1563803025344; 
 Mon, 22 Jul 2019 06:43:45 -0700 (PDT)
MIME-Version: 1.0
References: <20190717085259.31235-1-Anson.Huang@nxp.com>
In-Reply-To: <20190717085259.31235-1-Anson.Huang@nxp.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 22 Jul 2019 15:43:09 +0200
Message-ID: <CAPDyKFqfhk6S0gN-eN5ozYKZPBWb8+gC2A_vy55gYOx7dOKQ-w@mail.gmail.com>
Subject: Re: [PATCH] mmc: mxs: use devm_platform_ioremap_resource() to
 simplify code
To: Anson Huang <Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_064346_597279_58145AD0 
X-CRM114-Status: GOOD (  16.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 Kate Stewart <kstewart@linuxfoundation.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dl-linux-imx <Linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Thomas Gleixner <tglx@linutronix.de>, Fabio Estevam <festevam@gmail.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 17 Jul 2019 at 11:02, <Anson.Huang@nxp.com> wrote:
>
> From: Anson Huang <Anson.Huang@nxp.com>
>
> Use the new helper devm_platform_ioremap_resource() which wraps the
> platform_get_resource() and devm_ioremap_resource() together, to
> simplify the code.
>
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  drivers/mmc/host/mxs-mmc.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/mmc/host/mxs-mmc.c b/drivers/mmc/host/mxs-mmc.c
> index b334e81..78e7e35 100644
> --- a/drivers/mmc/host/mxs-mmc.c
> +++ b/drivers/mmc/host/mxs-mmc.c
> @@ -571,7 +571,6 @@ static int mxs_mmc_probe(struct platform_device *pdev)
>         struct device_node *np = pdev->dev.of_node;
>         struct mxs_mmc_host *host;
>         struct mmc_host *mmc;
> -       struct resource *iores;
>         int ret = 0, irq_err;
>         struct regulator *reg_vmmc;
>         struct mxs_ssp *ssp;
> @@ -587,8 +586,7 @@ static int mxs_mmc_probe(struct platform_device *pdev)
>         host = mmc_priv(mmc);
>         ssp = &host->ssp;
>         ssp->dev = &pdev->dev;
> -       iores = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -       ssp->base = devm_ioremap_resource(&pdev->dev, iores);
> +       ssp->base = devm_platform_ioremap_resource(pdev, 0);
>         if (IS_ERR(ssp->base)) {
>                 ret = PTR_ERR(ssp->base);
>                 goto out_mmc_free;
> --
> 2.7.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
