Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2034D1FAF3B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 13:33:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lEmFDKWD7wfFkpySoSsa06YIeHecbenHP+49trjw4e0=; b=h7Ed9HqqlT+9ye
	yuMSkuoheqAF2EYnnr8ex6R4aC3RaY1IRb9RI0mKcxcSKqFRsp7gk4LtLXXNHMBd/XFRyGGASN4VS
	3kIACYAmVYYsETVZMRm8DmuHXYj45dq/XZ3CCESsU9Q1/Rgui7MN041Z80MZLTMlBk+Vo+mmc4qY4
	8U+2ffTZ3p4Q8M7PCAFWHxma255WrjI591yMT/okViOtkecK9HP4ReRJKt99IpT2ZTDtL5fct6KRp
	BPl3hy9gi6MrTJT4ZLvep8zuno+Ff3izpUD5mjtxGU4P1X43fCBlrcHFyJcU9MHfzA4NT0W3XlQLi
	HqOjNa8rsfZS4fF9dCcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl9qG-0005M7-Cr; Tue, 16 Jun 2020 11:33:24 +0000
Received: from mail-vk1-xa41.google.com ([2607:f8b0:4864:20::a41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl9q6-0005Ky-Bq
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 11:33:15 +0000
Received: by mail-vk1-xa41.google.com with SMTP id u15so4702305vkk.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 04:33:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZSg0muGbkwOyh6Ot3lTlpvo0Mmt4wgCAweHT5tRHxm0=;
 b=VibwAZSD84LU+4hHmx7H20bVV8ZpftSbkJ7qeyM+fPSnWy5b52HMmY8uC6oN/TOJ3N
 Ppd7MeLLzhu4lLdwL1u8+HFFzEJwEkIRbPl3l2liiO84a2tEXnOOLJLVeD2eQr2LEdo1
 GuqKU5ksA+/+QuCtf656nkvB+l8BnzLR+CwMeWI8NMKjSG87T6hTFLog6RcU8uJ5b42y
 lBqr6ENJXZQ31zwwwbbWm8fG8NZlpIVe4l6fg47KvRL/VkNsBi3g56UkQTQ64+dQKFpF
 89zZO5b6w/YjOAiLDeGYGxLcR5EKhAFvvlLFVKqumAr2y0DtwWTd9++bWUxaqHYG4fEh
 NmyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZSg0muGbkwOyh6Ot3lTlpvo0Mmt4wgCAweHT5tRHxm0=;
 b=tZpt+gbqR/wL5b2povSEB4OT3Ck+rGb0OUEetk9kqYMlohosAiIP7Sb9Sja3KCoOBq
 ZnHythz1MV1BiuFyAFIRH7q4CgFjf+9szCYQJnTK7BFXxl8TcPLggXNd4EsG7Zxl/VbJ
 CIFiwBWkgp0Pr8KTsAwumQcSl/yTZS88GmtiK3v2fpmZVqJYkbJO1NEhqz48IL4QFzs8
 c/kj2ZRybo/a7DkI03q9rO4sVXkX10q06j9vMCrrN1QerHuoq5fDLD9d9yviDDTHOrYS
 hVbDLjCwiRMuxbabE+EsOLmlBaSFxM/R+VSzvKfcExvT8a7CfzbkLmsAVQoG7eUVEjEE
 Pk4w==
X-Gm-Message-State: AOAM533ScMAJNiYoA6u0JROWGbqUiLuefolnEks9UN43JqHsSWk/aLA/
 sSSl4GHr3JUeeKcJ3izJuVHIUuN7C9S3xctIOoUgnQ==
X-Google-Smtp-Source: ABdhPJznqqxzYSq4IwrFjXL5kmjhHPScZNDOA7H32xZbM7qlqeiuriVkd5OOYnJKbb8oO4Q4Ov7r07YvZL4Xn1v7YjE=
X-Received: by 2002:a1f:2145:: with SMTP id h66mr1118293vkh.53.1592307192362; 
 Tue, 16 Jun 2020 04:33:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200608084458.32014-1-narmstrong@baylibre.com>
In-Reply-To: <20200608084458.32014-1-narmstrong@baylibre.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 16 Jun 2020 13:32:36 +0200
Message-ID: <CAPDyKFo7VA-wbOZUxExUpPoc+u446KecFARX0KNCakaubowpXg@mail.gmail.com>
Subject: Re: [PATCH] mmc: meson-gx: limit segments to 1 when dram-access-quirk
 is needed
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_043314_408559_61A7A993 
X-CRM114-Status: GOOD (  18.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a41 listed in]
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
Cc: "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Christian Hewitt <christianshewitt@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 Art Nikpal <art@khadas.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 8 Jun 2020 at 10:45, Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> The actual max_segs computation leads to failure while using the broadcom
> sdio brcmfmac/bcmsdh driver, since the driver tries to make usage of scatter
> gather.
>
> But with the dram-access-quirk we use a 1,5K SRAM bounce buffer, and the
> max_segs current value of 3 leads to max transfers to 4,5k, which doesn't work.
>
> This patch sets max_segs to 1 to better describe the hardware limitation,
> and fix the SDIO functionnality with the brcmfmac/bcmsdh driver on Amlogic
> G12A/G12B SoCs on boards like SEI510 or Khadas VIM3.
>
> Reported-by: Art Nikpal <art@khadas.com>
> Reported-by: Christian Hewitt <christianshewitt@gmail.com>
> Fixes: acdc8e71d9bb ("mmc: meson-gx: add dram-access-quirk")
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>

Applied for fixes and by adding a stable tag, thanks!

Kind regards
Uffe


> ---
>  drivers/mmc/host/meson-gx-mmc.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/mmc/host/meson-gx-mmc.c b/drivers/mmc/host/meson-gx-mmc.c
> index 35400cf2a2e4..cfaf8e7e22ec 100644
> --- a/drivers/mmc/host/meson-gx-mmc.c
> +++ b/drivers/mmc/host/meson-gx-mmc.c
> @@ -1143,9 +1143,11 @@ static int meson_mmc_probe(struct platform_device *pdev)
>
>         mmc->caps |= MMC_CAP_CMD23;
>         if (host->dram_access_quirk) {
> +               /* Limit segments to 1 due to low available sram memory */
> +               mmc->max_segs = 1;
>                 /* Limit to the available sram memory */
> -               mmc->max_segs = SD_EMMC_SRAM_DATA_BUF_LEN / mmc->max_blk_size;
> -               mmc->max_blk_count = mmc->max_segs;
> +               mmc->max_blk_count = SD_EMMC_SRAM_DATA_BUF_LEN /
> +                                    mmc->max_blk_size;
>         } else {
>                 mmc->max_blk_count = CMD_CFG_LENGTH_MASK;
>                 mmc->max_segs = SD_EMMC_DESC_BUF_LEN /
> --
> 2.22.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
