Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 333E21264D9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 15:33:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mC39j+nqHHF6onw1nj1wOWM6hqTJO70liPlGKMglYpU=; b=QRqCjTTpvK2JQZ
	FJ/qte86ZNyeDfe5oL3YqOrRi94n1KydwZv3bcTnVFfIbnwYLS4EcYNs5gT739j7wxLc5A36XFYr7
	a2hCHVmiVdJRp5Y32TsSddVJ31UIvc8YrSF/h/K+b8MCKaqEncHzzbmrO71Q+Pr3TcYhnVRnZ4cNg
	uzjIvuoMDmFlxCykxr40rgnJqIWQ7k9Dtp/RzMT/zi1fGNw5uyaohQzABC2FU74DZzOsuk7qUnBe/
	fC+pD4k8b1PPEkdlmZ1Q7ytWf4Iv5OS3NBwAgCkEVMy49sh3ID306eUacD8c2B+IdIxfsfUIGS/5o
	z+p0dSME/OKs1wBhmB0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihwrZ-0004fh-Q4; Thu, 19 Dec 2019 14:33:13 +0000
Received: from mail-vk1-xa43.google.com ([2607:f8b0:4864:20::a43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihwrF-0004Yw-A2
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 14:32:57 +0000
Received: by mail-vk1-xa43.google.com with SMTP id i4so1690444vkc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 06:32:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YPrqmPawyC7QTitP+v5HFjQOiA2/JytHSGJGmUaJYSo=;
 b=HnkBmt7aQRcHDcMGiqeIVNQlFoTrNa80ZEsz/jq67ZFporQI48fPP1pB//sfII7cmp
 NV++BTuBM0fMSP3sCw40kxNz704Xs6z28/t22qeVeYvFWYC+LqiHRgil6I6MFdRSAmBI
 aiKeNDuitN1aHXmZP1AraJ/vV0PUVmt0AB7kOica+Pj4G8AZKnYYiG2UqReg6Y0H1JlL
 S9oofysNrjhnJ6OBygsD7XwR4WlPNbb2uGBSFPh1X5Xi0aueoG4hPNh9WK4gDgpooymS
 Hvl2e+WE78CehJerRxhHjb3qbsP/vtPoIvX0VXkzADx4nosf40jZ0Z5QJc7BRCSVZ5wE
 LOhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YPrqmPawyC7QTitP+v5HFjQOiA2/JytHSGJGmUaJYSo=;
 b=JollX6EUrq0xUuCCPmY7jM/w9FL9MfFL3HEudetwW/wjaSeVZobSrU6RTmNG6AxW7s
 si11ciqIDq+6dQC1P8YVVn18w63RuG98kNnK8YXlKsnevS52f5h07VncD+fsURIWCmop
 9kV1lg5UcATBiJRs7nbZAMKHZFww9DigXjjfkOtdEXxJRn7QAom5l2qei9XSeUbWKl/v
 jA5+jIVOLPi3WO+YRS3xxxEPLnkIw0P8CHn0LpUtCZzzZg+YFzocT0T9i34joQi/IlbE
 OB1xi5QGa/Y9nOMMoOAkxcp9AI6sEX5zVDC2T5ykc6aePi05wfnbSAD2u6TMtJeOfoR8
 FX1Q==
X-Gm-Message-State: APjAAAUv2yVioBeCqsVDUq3ISezkwBq9KK2rMh8eWJ8NT7DfR6rutldk
 a7WBpbKAM0N9hZl0qoZrnHuIkSaqlSdFrFEHLftLtA==
X-Google-Smtp-Source: APXvYqyql89PtQng31jiu4OfIUWL4pxdszTl7Rb2Z0v5tsXV+OuRCLt9eYGrN14WQCjnYoJhY9CerE7OOqyoBGkSmMA=
X-Received: by 2002:a1f:914b:: with SMTP id t72mr1596441vkd.101.1576765970818; 
 Thu, 19 Dec 2019 06:32:50 -0800 (PST)
MIME-Version: 1.0
References: <20191217122254.7103-1-peter.ujfalusi@ti.com>
In-Reply-To: <20191217122254.7103-1-peter.ujfalusi@ti.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 19 Dec 2019 15:32:13 +0100
Message-ID: <CAPDyKFrsq6Kua8Nr7GCVmvEHgDT9MWV05Lue3Z3Ha-_Aa744Rg@mail.gmail.com>
Subject: Re: [PATCH v2] mmc: bcm2835: Use dma_request_chan() instead
 dma_request_slave_channel()
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_063253_442036_05B46162 
X-CRM114-Status: GOOD (  20.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Tue, 17 Dec 2019 at 13:22, Peter Ujfalusi <peter.ujfalusi@ti.com> wrote:
>
> dma_request_slave_channel() is a wrapper on top of dma_request_chan()
> eating up the error code.
>
> By using dma_request_chan() directly the driver can support deferred
> probing against DMA.
>
> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>

Applied this one and the other related patches, thanks!

Kind regards
Uffe


> ---
> Hi,
>
> Changes since v1:
> - instead of returning jump to err: to free up resources
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
