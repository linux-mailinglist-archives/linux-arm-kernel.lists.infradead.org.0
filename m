Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BED8C598BF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 12:48:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aqWj6JD+VhGbARqm/KlWvV67sxhOnnyZQ3CMo7nba6k=; b=h0vyNEwRPbkI6r
	rlB6R+kxqknU6fSBxHR0vvupfYHGAGMw7+ED6IbBTu+JXokxaYKE+TC5jfwfE4HxCGT6ojEV030YY
	bdKlzQKtQfyz0bTR/YeWdbKQV2C9KPQJA1hbDJzYSEqV4eQgpgC6Bhxsge4F9NQIuDkwBbURfVzyt
	Vz/XgPSKQPY0lvMOFPj7+jSKCgMDCB053ItsY0uWR7lCe48Zshlj6+pnOJCXdnrqdc96kOTrYWeGh
	JB/y2xaQNK8bMg6Lp4JydS84JgWq52Q8U/S6HHb58gaOrEpaVrdzJEKoPD8yOf4eZc49jY8VTOgA9
	G+8xmys732uz5PGuvOmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgoQF-0004Vd-9P; Fri, 28 Jun 2019 10:48:03 +0000
Received: from mail-qt1-f193.google.com ([209.85.160.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgoPw-0004Ul-Cd
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 10:47:45 +0000
Received: by mail-qt1-f193.google.com with SMTP id d17so5697909qtj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Jun 2019 03:47:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NVinKh98jKS9zokr8ydHNCBWzDAiTD09mu2we75eaLU=;
 b=RMKcs7uFyybUMQiSDWwzITreA1nLuCP7ArWddDueiWU9EbxHwElN5KRrEg5i1gNWDe
 vRWI7gH1dBPC+EdEPONbIC06AV1g+Oi22np+C+nQvQ+pgw9jKyn9/IeC4GDXS9U2xX0/
 Dq5uyVzHlGbbVdElYY+l+0qN8cG8iXcsWmNotmD/JFI4g+7R6ZYb6FpbIQioqbACianr
 XYxfhQ+wg4poXlTBr3uW80j4hhe1Gtx6zrl3+CU5pj6GOcir9oE3mR4iI1MLVHu+jHuN
 kjO6yqjJ7S7Yar+vRx1Dj9DFD5SjXUbHhVt8MlGxj5QOCRFTF8hHR7Dl4NN8FDv8D7aJ
 j9Lw==
X-Gm-Message-State: APjAAAXEfgnZK2DW/tvigkaoIfa0q0CfNwTQrrjZFmB504VVfKss2I1T
 dtXO7ij8lfsofpLlqG9AM8fkMXwanZAHNk24W98=
X-Google-Smtp-Source: APXvYqysF9BzxO+1TCPjWlwBt4glLmlNo2rduj1I87kx9rKzFs7FWUU0hg3HnQz1I0GfoEk0Btcv6dquQV2vbRxaxlw=
X-Received: by 2002:a0c:ba2c:: with SMTP id w44mr7558111qvf.62.1561718861770; 
 Fri, 28 Jun 2019 03:47:41 -0700 (PDT)
MIME-Version: 1.0
References: <20190628104132.2791616-1-arnd@arndb.de>
In-Reply-To: <20190628104132.2791616-1-arnd@arndb.de>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 28 Jun 2019 12:47:23 +0200
Message-ID: <CAK8P3a1CV-JUpBJ0pjixwXxxOzjQOX=+E3s-mKGAz_bMBc_Vuw@mail.gmail.com>
Subject: Re: [PATCH] mfd: davinci_voicecodec: remove pointless #include
To: Lee Jones <lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_034744_428006_D386B516 
X-CRM114-Status: GOOD (  17.27  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Richard Fontana <rfontana@redhat.com>, Sekhar Nori <nsekhar@ti.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[I missed the davinci maintainers on cc here, sorry]

On Fri, Jun 28, 2019 at 12:41 PM Arnd Bergmann <arnd@arndb.de> wrote:
>
> When building davinci as multiplatform, we get a build error
> in this file:
>
> drivers/mfd/davinci_voicecodec.c:22:10: fatal error: 'mach/hardware.h' file not found
>
> The header is only used to access the io_v2p() macro, but the
> result is already known because that comes from the resource
> a little bit earlier.
>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  drivers/mfd/davinci_voicecodec.c | 9 ++++-----
>  1 file changed, 4 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/mfd/davinci_voicecodec.c b/drivers/mfd/davinci_voicecodec.c
> index 13ca7203e193..e5c8bc998eb4 100644
> --- a/drivers/mfd/davinci_voicecodec.c
> +++ b/drivers/mfd/davinci_voicecodec.c
> @@ -19,7 +19,6 @@
>  #include <sound/pcm.h>
>
>  #include <linux/mfd/davinci_voicecodec.h>
> -#include <mach/hardware.h>
>
>  static const struct regmap_config davinci_vc_regmap = {
>         .reg_bits = 32,
> @@ -31,6 +30,7 @@ static int __init davinci_vc_probe(struct platform_device *pdev)
>         struct davinci_vc *davinci_vc;
>         struct resource *res;
>         struct mfd_cell *cell = NULL;
> +       dma_addr_t fifo_base;
>         int ret;
>
>         davinci_vc = devm_kzalloc(&pdev->dev,
> @@ -48,6 +48,7 @@ static int __init davinci_vc_probe(struct platform_device *pdev)
>
>         res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
>
> +       fifo_base = (dma_addr_t)res->start;
>         davinci_vc->base = devm_ioremap_resource(&pdev->dev, res);
>         if (IS_ERR(davinci_vc->base)) {
>                 ret = PTR_ERR(davinci_vc->base);
> @@ -70,8 +71,7 @@ static int __init davinci_vc_probe(struct platform_device *pdev)
>         }
>
>         davinci_vc->davinci_vcif.dma_tx_channel = res->start;
> -       davinci_vc->davinci_vcif.dma_tx_addr =
> -               (dma_addr_t)(io_v2p(davinci_vc->base) + DAVINCI_VC_WFIFO);
> +       davinci_vc->davinci_vcif.dma_tx_addr = fifo_base + DAVINCI_VC_WFIFO;
>
>         res = platform_get_resource(pdev, IORESOURCE_DMA, 1);
>         if (!res) {
> @@ -81,8 +81,7 @@ static int __init davinci_vc_probe(struct platform_device *pdev)
>         }
>
>         davinci_vc->davinci_vcif.dma_rx_channel = res->start;
> -       davinci_vc->davinci_vcif.dma_rx_addr =
> -               (dma_addr_t)(io_v2p(davinci_vc->base) + DAVINCI_VC_RFIFO);
> +       davinci_vc->davinci_vcif.dma_rx_addr = fifo_base + DAVINCI_VC_RFIFO;
>
>         davinci_vc->dev = &pdev->dev;
>         davinci_vc->pdev = pdev;
> --
> 2.20.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
