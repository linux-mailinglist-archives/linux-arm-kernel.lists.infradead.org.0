Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0425E1D46C8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 09:10:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CnwLEUMNykKvXhuTCHCJfOgZDT/aQ533aBIa6uAXIK4=; b=ZGuHC8nLbPWEOQ
	IakzVEbDbQcWruGKHAmvmn450j7OV7DxpytrmaRKGjo5+pTaUOiZxKlsu5C0SUhaASEqz2gM3IQxu
	Hgn6EG9v88p6q77WPkT2gR/mzBxqZsUk9/tph+udLyZ+vJ5Svdoc5vI1la5a9dXFG6dQdVUZADOeN
	P9DnSB+hIAEZ+pJVYZpLQ+cKL0OU6irfJrTjnK87hAWVHJBWENOI0cJuEdkuc4cR9MeCW4pU/39qk
	m/rN/deaDmMQFHScDjELIJr+Pfb2VMeTvaBLw9BsjwjdAvmGXxaUCCJebOo/FkDXZ15l9ci/fJ7zp
	o7ICVEnd0hh0EsFyiKEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZUU9-00069M-ES; Fri, 15 May 2020 07:10:21 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZUTg-00067B-4C
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 07:09:56 +0000
Received: by mail-vs1-xe42.google.com with SMTP id e10so618204vsp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 May 2020 00:09:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=f3fYY5yxRSWyMrWhXVWpCgKXf6kjqn8O3WyktHkVJvs=;
 b=J+DJaO6lb/DVfzg6le0iyAhKwILSh9Nc5Zg7NpCPc2RTFD2yGXLLzHiAH1J2yeJyCp
 E2eVXIO8AWpFcomiyK1b8HPC/H9I0LW0/r/orhjE6OZIiZkCAbP2Hi210Hxzl7TePTmn
 XLixq8G6wt25vuh0L0D6exnfanu7TUyHHZvH6dndHQA/PXS1ysZUK3e9LInI7dIA00XV
 bkXXkIHJbLaKY9JdKGNk9K3IKSpQXhYUcV67Pi0q5zSI29xzWg54irX5geL6nu5xHJBa
 5MUmKX5yqxomn1dxb1OAVUXXaDslVMTxqPYrALte2T7r08oenkBCpmZXOrl4OQjXpW6c
 7C4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=f3fYY5yxRSWyMrWhXVWpCgKXf6kjqn8O3WyktHkVJvs=;
 b=kjpU+bqXbt5p8vN3jBOMdf44/OJoiJ5V2zNoNrVlyN60DjtqFBN/WQzZbduqd+enl5
 Q6vM7ATLH4RQYgSgWNqVavtOjarhaMOm+WXwXVX9pK4Vq2549TOfCop0a3dRDJWnD4Bp
 Y5YQ1MyPWQ6MRXJthc+HnJc64lQK1FizIzYZB8c1fID0jXlwKvI3/+U1YY7uy4tIp+2a
 qQdlKg7CQ5UlazviNlL0hPVe8gI2PQDVK2X3PkYLw/FkpojOH5ZJyqSNK51APODt3E1r
 oftUUF+zee964ZZW+OT+D7G94D5lIg9kQe8XF+0EHB/qU50UuEn4UqoGHJVuNNTS5PzP
 O9VQ==
X-Gm-Message-State: AOAM5338ddufYf/qc3uiKfd9w1iwFxydjYVczK/YMKonkKXX3ezaZBBL
 ecGm7fdVmr51Azh6BqTwPA0uVqYFAZAUa9ZPhjo2bZRp
X-Google-Smtp-Source: ABdhPJzzUy+Okca43KdCqziTJYdPvVNhxflbrgWvfHQj3Y+hDQBIYW1+MYbVFpP1Mf1G3ejSUZK71yzlaozfixXGP0E=
X-Received: by 2002:a67:302:: with SMTP id 2mr1470297vsd.165.1589526590700;
 Fri, 15 May 2020 00:09:50 -0700 (PDT)
MIME-Version: 1.0
References: <20200511062158.1790924-1-yamada.masahiro@socionext.com>
In-Reply-To: <20200511062158.1790924-1-yamada.masahiro@socionext.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 15 May 2020 09:09:14 +0200
Message-ID: <CAPDyKFonzvtfeERzxMm0WLWOwR492GCkNvB24bxoOQEfgZXsZw@mail.gmail.com>
Subject: Re: [PATCH] mmc: uniphier-sd: call devm_request_irq() after
 tmio_mmc_host_probe()
To: Masahiro Yamada <yamada.masahiro@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_000952_168436_7153F0CA 
X-CRM114-Status: GOOD (  17.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 11 May 2020 at 08:22, Masahiro Yamada
<yamada.masahiro@socionext.com> wrote:
>
> Currently, tmio_mmc_irq() handler is registered before the host is
> fully initialized by tmio_mmc_host_probe(). I did not previously notice
> this problem.
>
> The boot ROM of a new Socionext SoC unmasks interrupts (CTL_IRQ_MASK)
> somehow. The handler is invoked before tmio_mmc_host_probe(), then
> emits noisy call trace.
>
> Move devm_request_irq() below tmio_mmc_host_probe().
>
> Fixes: 3fd784f745dd ("mmc: uniphier-sd: add UniPhier SD/eMMC controller driver")
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>

Applied for next, and by adding a stable tag, thanks!

Kind regards
Uffe


> ---
>
>  drivers/mmc/host/uniphier-sd.c | 12 +++++++-----
>  1 file changed, 7 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/mmc/host/uniphier-sd.c b/drivers/mmc/host/uniphier-sd.c
> index a1683c49cb90..f82baf99fd69 100644
> --- a/drivers/mmc/host/uniphier-sd.c
> +++ b/drivers/mmc/host/uniphier-sd.c
> @@ -610,11 +610,6 @@ static int uniphier_sd_probe(struct platform_device *pdev)
>                 }
>         }
>
> -       ret = devm_request_irq(dev, irq, tmio_mmc_irq, IRQF_SHARED,
> -                              dev_name(dev), host);
> -       if (ret)
> -               goto free_host;
> -
>         if (priv->caps & UNIPHIER_SD_CAP_EXTENDED_IP)
>                 host->dma_ops = &uniphier_sd_internal_dma_ops;
>         else
> @@ -642,8 +637,15 @@ static int uniphier_sd_probe(struct platform_device *pdev)
>         if (ret)
>                 goto free_host;
>
> +       ret = devm_request_irq(dev, irq, tmio_mmc_irq, IRQF_SHARED,
> +                              dev_name(dev), host);
> +       if (ret)
> +               goto remove_host;
> +
>         return 0;
>
> +remove_host:
> +       tmio_mmc_host_remove(host);
>  free_host:
>         tmio_mmc_host_free(host);
>
> --
> 2.25.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
