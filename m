Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 884921CE6F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 19:58:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Hx1va2/57B1ImT8lf4wBQerDpT7UpddOl9kEAU9VxI=; b=u5/zrj6HK/Jnj5
	bqXstwtWKWkxWL8aSuMhyUjBOMoYopDxvgzdOKSbVkCmdUFsCPJC2Bt/bflVu4bvuCbdfnnMYdaF6
	Df4EUBr5Mpz27mPiFKolcNL7dqr5yBIdvwtFcpYUtvBZcFAurKhV/41eDGsLeodlxVL2m5wrnhoKI
	bF20mTZMI5FOYtKz+Q7ffxo77Kl1V+j2FIhu3nS2VpVb7+qFva0Hphan/BFjRJOm8zVU5OUMbXyxI
	Glvyx/x/64iNwgE3FZGpvzIzEWS/2EDsAX/2z2w7kujAIPSb3oyYuherzVw7zbnJDWwslsSy2RD/Y
	gQcWJqaw2tWvDKM+t0CQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQbh0-0001BH-TK; Tue, 14 May 2019 17:58:22 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQbgq-00019J-Ck; Tue, 14 May 2019 17:58:14 +0000
Received: by mail-oi1-x243.google.com with SMTP id k9so12801282oig.9;
 Tue, 14 May 2019 10:58:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dbgR9sIIi020lB4uMc6drG+hzB7QuAOCTK+0TBCg8Cc=;
 b=kz2jzjhPKbEnQayS8dgCy5rubRTQIqMh2n4HuPMUyO1VSNt3vJVG3lRGzuhbsI7p3E
 n5/wGiKy0e9r4F73sN9EtnuBGim238QQ5IXF5Kg2gjaXohTQqng7UWygNuC1ygsw4VxO
 M+8UD/VB0e1f5gHNJ5O+jT/vi6m/8R5TT1B1SR0/EbOy5+baCCimbQfw+Ouljrb9YPGu
 625otuoxIyGC/IELiz1fY+/4lN6Eb0wqhrrG9xleiIuzj7FxDFLVYYI8nlUC3sT+Hwjz
 KX51hfprCqpxSkRn/DY8eE8dlw9qG4vCtS4Wli4x7zRqP6P0Rw2srvdyHRSt6iYncg3/
 uT6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dbgR9sIIi020lB4uMc6drG+hzB7QuAOCTK+0TBCg8Cc=;
 b=cQY+DJ5ouK1PiRXtog+U11ha+df9ReAwEnVnhUkRNrKP5sniDGAOGp9SzoQ4nys5sS
 PEWUlm4ZUfuFYAqPu1nUeZN8uBjr0BhNrIiM4K0uwZ2+t5NuVSRMHZA9WKdT8vx2tA4b
 xXdr4sqwz6s/s15yhU+IoR0W9WJxPPYgUU3wCuJWHIJisOmSfjd+w9oNQ7EsZZfPAbcH
 Pu5gdM/2HXcuLf/YLfPpvjDgE70DEm2gsUJ/3QRqICbGZ4g67BjSFEULndW5ZIWzve56
 FXniYC8l1LSOLEIj1Sbz+QLWS4eukJhOgl9z4dRZ54VrsNNevqdc9RGG41/bJfDppWUq
 +7lQ==
X-Gm-Message-State: APjAAAUb8898d1oBtnFNxfsHnRvVqu0pvjZO6vj0O7XmF3JIbdZavYcG
 cykOLn2ofTe6nJL87c91tuNvEgdZddJK5ZlOrLg=
X-Google-Smtp-Source: APXvYqysSJO7wFng5taFNsIZOMTqAUX0pN7PyrW8jgVBQnbRhhf71UhUYZKIQp8b0gAYrWujo+I5sI1OdRoLfcqfyqo=
X-Received: by 2002:aca:5b06:: with SMTP id p6mr3946699oib.129.1557856691277; 
 Tue, 14 May 2019 10:58:11 -0700 (PDT)
MIME-Version: 1.0
References: <20190513091548.16674-1-narmstrong@baylibre.com>
 <20190513091548.16674-3-narmstrong@baylibre.com>
In-Reply-To: <20190513091548.16674-3-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Tue, 14 May 2019 19:58:00 +0200
Message-ID: <CAFBinCAMoNDnxoQA9XHKy0Xo9MduxD1CvQXOeLZQ3zZ4ViWm7A@mail.gmail.com>
Subject: Re: [PATCH 2/3] mmc: meson-gx: add ddr-access-quirk
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_105812_496791_01CB4A9D 
X-CRM114-Status: GOOD (  13.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: ulf.hansson@linaro.org, baylibre-upstreaming@groups.io,
 khilman@baylibre.com, linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Neil,

On Mon, May 13, 2019 at 11:16 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
[...]
> @@ -1158,15 +1183,27 @@ static int meson_mmc_probe(struct platform_device *pdev)
>          */
>         mmc->caps2 &= ~MMC_CAP2_HS400;
>
> -       /* data bounce buffer */
> -       host->bounce_buf_size = mmc->max_req_size;
> -       host->bounce_buf =
> -               dma_alloc_coherent(host->dev, host->bounce_buf_size,
> -                                  &host->bounce_dma_addr, GFP_KERNEL);
> -       if (host->bounce_buf == NULL) {
> -               dev_err(host->dev, "Unable to map allocate DMA bounce buffer.\n");
> -               ret = -ENOMEM;
> -               goto err_free_irq;
> +       if (host->ddr_access_quirk) {
> +               /*
> +                * The MMC Controller embeds 1,5KiB of internal SRAM
> +                * that can be used to be used as bounce buffer.
> +                * In the case of the G12A SDIO controller, use these
> +                * instead of the DDR memory
> +                */
> +               host->bounce_buf_size = SD_EMMC_SRAM_DATA_BUF_LEN;
> +               host->bounce_buf = host->regs + SD_EMMC_SRAM_DATA_BUF_OFF;
> +               host->bounce_dma_addr = res->start + SD_EMMC_SRAM_DATA_BUF_OFF;
I'm curious: why do you need to set bounce_dma_addr in this case?

> +       } else {
> +               /* data bounce buffer */
> +               host->bounce_buf_size = mmc->max_req_size;
> +               host->bounce_buf =
> +                       dma_alloc_coherent(host->dev, host->bounce_buf_size,
> +                                          &host->bounce_dma_addr, GFP_KERNEL);
> +               if (host->bounce_buf == NULL) {
> +                       dev_err(host->dev, "Unable to map allocate DMA bounce buffer.\n");
> +                       ret = -ENOMEM;
> +                       goto err_free_irq;
> +               }
>         }
>
>         host->descs = dma_alloc_coherent(host->dev, SD_EMMC_DESC_BUF_LEN,
if host->descs cannot be allocated then you need to conditionally skip
dma_free_coherent for the bounce buffer in the goto err_bounce_buf
case a few lines below (just like you did in meson_mmc_remove)


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
