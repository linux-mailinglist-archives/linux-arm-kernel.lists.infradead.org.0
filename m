Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CA4E1FAF4C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 13:33:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xlpdx8U9J4k8nBnAoTNCu9VnKZLgJF33A/Kq/QRzUUM=; b=jYQ5VLmcuBA8su
	3G79lBWIFUvDNuJqjVT3SKco5yfnE9IgkPA0LIdiBLfJdOfwVKwnQPntLOX5c1WG8dyPlTO80c+nL
	8D91FOxkfCZXelEEKu6TNain3V5MIq0scm2gcaRtFY1ETJOWJcA5pd0f+rhixk7htLC5bWvA8Ut0Y
	sF0yJr59UEYf/fhztj7TtnKr1GO0gIV2woN3xhfmOLZJvDXa0ooqCAhZik1g9gCVaI1/pE2R+aR05
	rZitlpVy6OxBjZBhsGbEG89BnoxSTiJwa4mCyDKdCiTUfSo47TYkiUAHgA01UO55Bo9+XYe25ydhF
	XXtcb9c4xIvt4zhd8zjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl9qd-0005em-4b; Tue, 16 Jun 2020 11:33:47 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl9qP-0005cs-Hh
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 11:33:35 +0000
Received: by mail-vs1-xe44.google.com with SMTP id 190so11192760vsr.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 04:33:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Z4+Iz5hXHc4KqHs/Siy+ZWN5Iucm03GbQ2VElO3GIbE=;
 b=nDIBdjVmKagHvZo44/5GnMutd+R9LOzqdj7KoKAjZCeARsNRBWF+9cGFnYMjSfV7Vs
 r4303MeB7Zgsz3BHhUBei2NxgJ77BYTNOA6KEqwV2dziFSfcZeH/37omrb/OhrA2FVhN
 iVNLxGGtaXs8BSbxMcqI1p1jIEB5fmqAanfN0b/EtI8ut38Sql4N/26QCNTV3WypKHL7
 Zt940MpjDG13b3XlCEGfJ5u6HOdKds0M50x4KT+fPeZ+d5gjJmO3/4sxjcS67kQrPfUf
 wAagBLnmntF9pcPlTMGp34+8QiVEPqy3ZyRCeSFCk6rky6z01YGR03XLjBKgUcGL6oXy
 h9+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Z4+Iz5hXHc4KqHs/Siy+ZWN5Iucm03GbQ2VElO3GIbE=;
 b=mrfPwBdfHKhJsXSKdl59m69gGRwgCSHlsQkrlnmO/z8smm2fMwVXEf34vsOXBQYlq5
 C25tZN0szih52cPDpMvey72La17NXsVzpTLYU1g4jNItvZsx4H3e6NjY66iipXXKN0ql
 xEbKEVtNuK2JmCpZReCVkcmzz7fdxwhyVnplczZ4WhkrBADHBmxK9ccBrNx2NLsDDogc
 rNvNSucmxJVycEiGcjsIlxgx2ErUqsyDZnRREawH8tQUVaQxqvxvVYTt0mMOf3vKBgGq
 Qz6ZzmfUot3LNMMH/Ra6oWK77YkxT4xkbCKCFX9FyQVPcjxuqi1sf3LEzWLoyphSCeZM
 YQ6A==
X-Gm-Message-State: AOAM531v+UzhkBuWM4aO1A0Z/ZTIVgR/BIXMePkOOjYTJ3bFzEMe2H/+
 sxzT6z/W3N0ARu23rA81rT0RfyEHRX24y+ev88pvUQ==
X-Google-Smtp-Source: ABdhPJyGZERfhW1QKFPZ5+rChUj0a55YKn9tZGUbhrD+eRw5UOrhMGu/7HPk1pqELV9Q/H4lqZhJMwIGM2yDSPP9sLo=
X-Received: by 2002:a67:903:: with SMTP id 3mr1156423vsj.191.1592307212063;
 Tue, 16 Jun 2020 04:33:32 -0700 (PDT)
MIME-Version: 1.0
References: <20200608162226.3259186-1-hslester96@gmail.com>
In-Reply-To: <20200608162226.3259186-1-hslester96@gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 16 Jun 2020 13:32:55 +0200
Message-ID: <CAPDyKFrrrydrUaOVGB+VTgLSGMn41JO+ughhza_BzGPE7wm_yw@mail.gmail.com>
Subject: Re: [PATCH] mmc: sdhci-of-arasan: Add missed checks for
 devm_clk_register()
To: Chuhong Yuan <hslester96@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_043333_621619_A0A7BB3E 
X-CRM114-Status: GOOD (  14.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Douglas Anderson <dianders@chromium.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Michal Simek <michal.simek@xilinx.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 8 Jun 2020 at 18:22, Chuhong Yuan <hslester96@gmail.com> wrote:
>
> These functions do not check the return value of devm_clk_register():
>   - sdhci_arasan_register_sdcardclk()
>   - sdhci_arasan_register_sampleclk()
>
> Therefore, add the missed checks to fix them.
>
> Fixes: c390f2110adf1 ("mmc: sdhci-of-arasan: Add ability to export card clock")
> Signed-off-by: Chuhong Yuan <hslester96@gmail.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  drivers/mmc/host/sdhci-of-arasan.c | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/drivers/mmc/host/sdhci-of-arasan.c b/drivers/mmc/host/sdhci-of-arasan.c
> index db9b544465cd..fb26e743e1fd 100644
> --- a/drivers/mmc/host/sdhci-of-arasan.c
> +++ b/drivers/mmc/host/sdhci-of-arasan.c
> @@ -1299,6 +1299,8 @@ sdhci_arasan_register_sdcardclk(struct sdhci_arasan_data *sdhci_arasan,
>         clk_data->sdcardclk_hw.init = &sdcardclk_init;
>         clk_data->sdcardclk =
>                 devm_clk_register(dev, &clk_data->sdcardclk_hw);
> +       if (IS_ERR(clk_data->sdcardclk))
> +               return PTR_ERR(clk_data->sdcardclk);
>         clk_data->sdcardclk_hw.init = NULL;
>
>         ret = of_clk_add_provider(np, of_clk_src_simple_get,
> @@ -1349,6 +1351,8 @@ sdhci_arasan_register_sampleclk(struct sdhci_arasan_data *sdhci_arasan,
>         clk_data->sampleclk_hw.init = &sampleclk_init;
>         clk_data->sampleclk =
>                 devm_clk_register(dev, &clk_data->sampleclk_hw);
> +       if (IS_ERR(clk_data->sampleclk))
> +               return PTR_ERR(clk_data->sampleclk);
>         clk_data->sampleclk_hw.init = NULL;
>
>         ret = of_clk_add_provider(np, of_clk_src_simple_get,
> --
> 2.26.2
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
