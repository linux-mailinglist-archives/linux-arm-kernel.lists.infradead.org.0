Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3377713DDAC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 15:41:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PzwsyLuICWV6Ivmw79vVkUAVsVNKXJz0EzSa0yh3GJo=; b=ZEPuJq9okHeRcZ
	kH1CVS5GjNcLcMaPvaT7xMAf8LqPUe/Fgci7WKXcI08wHdrQ4w9iov4rjc/TMjHHjvw5SruoSxTR1
	NXwAD4sn7/qTr4Xn7W30bJ/QfyatZl6m8msKEX+NKbAH4dcwe1yA378oYsx4u2HI6K+8dBspf38y5
	3Fi1TEIi9knrhNORNChI77cS+xByIMMlgWM/+jQdbyaJmLsA2dmdef6ch5mN3g6DxENqY5bimsEAb
	51lMHkyK9tmQXi/XTWLMu6S0s5GFGHp78k0yUyxqx6c/Df3zkIAzCMPqZHiyb8OGN2lopL/8+xtgL
	WMrZqmrHgoedIDNu2uTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is6KW-0000Xs-8o; Thu, 16 Jan 2020 14:41:04 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is6KE-0000Wh-9j
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 14:40:50 +0000
Received: by mail-vs1-xe44.google.com with SMTP id u14so12805968vsu.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 06:40:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MVhtaTZCnCfNAKfqW6Z96W5OFC2Pq+R/wFI5kI7mdb4=;
 b=gXEtdQ7PCw+gTlTwk1m8oaajlGEKXgyLcnQ9O/Q3xrgixx5T22kdhtzB2RxINoEeYz
 7eY9jpwmUVVR32V/YGB1Hf5+pC9LvE1fyWYBuaBY84d8VnJWSVlhLtU3vo2ngr3NSQ8u
 s0h28cTMPi+qhCHTXZoZD1FkXjkwgb9xQlrqIyhqMaLPoc1P0m3JoASsyLh/bngQWlkh
 g2aOkk3mZO1/tMmjtt6fe9B+4LvgPIzfYQMYbZqXe2BaoVLlx4EXvtbl0tWzEXpwTyFH
 Ajj1kCy4Sa1iR4cs5ps/nMGuJimSypSXdHgDhJfvgDJKzeBRbHbE19yw6SxqQTQ0tUck
 6rtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MVhtaTZCnCfNAKfqW6Z96W5OFC2Pq+R/wFI5kI7mdb4=;
 b=Pp067HtO9AR8OBqhin8YUVJsc8Rc4sHXTYOmBgbqwdUJDumVVIj/87LtAcEqYirbJp
 +3/kk5XMA07tlWOp0rZda3Pv9CzaL84ykxPk7EGi3pzNsPLPK+lVvFCHC8bnH9Wu8zRJ
 nXX4sKgK0KemPJclWmM8G3gmkPEZ/mskFtGLN/lr7cXsaNIcdEPaLX1fCZFsPwTIlcxD
 71pyJ09y5RcO6aufb2/dUeEdgB9eFCLk2ndjTOEiWEiX6Ytp4v3hNQTbP7RFlfG9QdaC
 SvNPrC7auSgV9Ux5Esudr228F+PaU4NMSzbanxBlw1UBk+6/5HYV9spiEA/lPwPyHvX2
 Jfvg==
X-Gm-Message-State: APjAAAWrb2EI7m9JRMvqRlzUaBi5QjnFO9+F+Gb/G2QZsg72yJhfkEb+
 3dGC54ivmTWo0/nZ4FH6jHcmE/OV4viNKMbEmiGv0w==
X-Google-Smtp-Source: APXvYqxdGqQVZL1Cp2YXroa6T/66ubc1o8e1OjNbTTh0kzG7LTpsQVMQx7USP1Q+2n2bYrFlgiT+1QU5tEx365YNJ9U=
X-Received: by 2002:a67:cd96:: with SMTP id r22mr1631688vsl.165.1579185640833; 
 Thu, 16 Jan 2020 06:40:40 -0800 (PST)
MIME-Version: 1.0
References: <20200107104040.14500-1-peter.ujfalusi@ti.com>
In-Reply-To: <20200107104040.14500-1-peter.ujfalusi@ti.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 16 Jan 2020 15:40:04 +0100
Message-ID: <CAPDyKFqjiwqP-QzHQT4r-YXzLD2rdjNZK5Vb9=KC1SDTuhwtOw@mail.gmail.com>
Subject: Re: [PATCH v2] mmc: bcm2835: Use dma_request_chan() instead
 dma_request_slave_channel()
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_064046_344258_82337923 
X-CRM114-Status: GOOD (  19.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Vinod Koul <vkoul@kernel.org>,
 BCM Kernel Feedback <bcm-kernel-feedback-list@broadcom.com>,
 linux-rpi-kernel@lists.infradead.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 7 Jan 2020 at 11:40, Peter Ujfalusi <peter.ujfalusi@ti.com> wrote:
>
> dma_request_slave_channel() is a wrapper on top of dma_request_chan()
> eating up the error code.
>
> By using dma_request_chan() directly the driver can support deferred
> probing against DMA.
>
> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>

I thought I had already applied this, but maybe I didn't publish my
branch back then.

Oh well, please double check so the code has been included in my next branch.

Kind regards
Uffe


> ---
> Hi,
>
> Changes since v1:
> - jump to err: instead of returning in case of EPROBE_DEFER
>
> Regards,
> Peter
>
>  drivers/mmc/host/bcm2835.c | 12 +++++++++++-
>  1 file changed, 11 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/mmc/host/bcm2835.c b/drivers/mmc/host/bcm2835.c
> index 99f61fd2a658..c3d949847cbd 100644
> --- a/drivers/mmc/host/bcm2835.c
> +++ b/drivers/mmc/host/bcm2835.c
> @@ -1393,7 +1393,17 @@ static int bcm2835_probe(struct platform_device *pdev)
>         host->dma_chan = NULL;
>         host->dma_desc = NULL;
>
> -       host->dma_chan_rxtx = dma_request_slave_channel(dev, "rx-tx");
> +       host->dma_chan_rxtx = dma_request_chan(dev, "rx-tx");
> +       if (IS_ERR(host->dma_chan_rxtx)) {
> +               ret = PTR_ERR(host->dma_chan_rxtx);
> +               host->dma_chan_rxtx = NULL;
> +
> +               if (ret == -EPROBE_DEFER)
> +                       goto err;
> +
> +               /* Ignore errors to fall back to PIO mode */
> +       }
> +
>
>         clk = devm_clk_get(dev, NULL);
>         if (IS_ERR(clk)) {
> --
> Peter
>
> Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
> Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
