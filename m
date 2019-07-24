Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3161A73130
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 16:09:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8LxaFSeW81WZ+ndNUtRFZna3WvywHruJEN/79Q3zwBw=; b=ADQ357ngv/qvdQ
	G7QnPN5//+q36q9Em0pcXyp6sm6eCSGFG8MUefDSFNb5p2TauQI8ZPYoZh14NIyCvS3DD5ohw9VNe
	iMNRgRnsWB/iGlQhEdFNQKzvBMHwV2uxVQ2akCy9HAB3NcrsPwl7OKadKAIUb4SPh8n9vz7HynH3L
	Xm6V8LnUruvGEyrBAQ6T7J+cBvRzyswv9U52p+eeENWvqyrj/p10k5vZuo3AUGenUb8fIFTxDJIfS
	VK6QNvIS4mODpVmu4CL5q90/RQIIPYpiiGvoptGJW8/DsC88JBPkvHEd2sjIMlvF8OVQg28qGwuvT
	knaIjzwuc5BTO7KpEktQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqHxm-00038J-Oe; Wed, 24 Jul 2019 14:09:50 +0000
Received: from mail-ua1-x941.google.com ([2607:f8b0:4864:20::941])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqHxE-0002ij-Kx
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 14:09:18 +0000
Received: by mail-ua1-x941.google.com with SMTP id o19so18497037uap.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 07:09:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hdowrW6eyNVzCqnH+sg3YSjrdgr1LJmVf+XLhM5jeyg=;
 b=pwEwK7MPcChPu9C2pgvwXHbNp4lYkdiz64ftQlzrwykiOBpvbyyikwX0ULt30tK0pk
 cO9CV5Fd0M3pj1ubA8+2aQc0+X9d5H0EWedskNUZAb8wxxM3YuZtCvalUTwesVaQAtWJ
 3IlDQXCcBxDARDS7oPGjqX8Yyc6hQ/gmukMIh2FXdt2wnOCDhZYiXNmF6Hzv0s0UBjB1
 jgglhUJ5t5UWaEfhHbG1hkFtPiaQjRYPttLecdm9UNAkrEZzib1JS4EsHjnAV4AH2OTU
 jkbxbYVJ1RtcfuVKg3papWe5ahI+0bRsF7r9ostG+lOGen5hzJ11B7dX5Ue27sHZBUEl
 1a9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hdowrW6eyNVzCqnH+sg3YSjrdgr1LJmVf+XLhM5jeyg=;
 b=DcK5PcXRyO/v9KS7A5zChxy/nwu9TAlqAD0IntkA2EtD3vJz01sen+WHFSi7Z7XH5r
 nlG/7lM9g7Aj4gj8It44zybgcLKTc8BYSBYQKVuv9ff+o9zzgBnxCmAoRJwnxMD2BXf0
 GltO9blRxjGld7QYX1hjN8Nns4O9bT/i/dSU7u2X5EG67FnQxumG3SfWF5DCUUiqNMsP
 En42CLywOG1PBt84tUzKFFNrVYgoaxW5T75RDMKXeSMti5ofOq046IvJseqzw1ksLrtV
 HtFGvJE9AWtN9qy6LLrvjLnYqkGwQaW+2XmlATfmwf+oBsUMdK0byRzk98jyyHRosRaN
 rPVQ==
X-Gm-Message-State: APjAAAUUCdrdq8qZhiTvaTonTmWgoI2yYrYqUiYcuhnfMnS4MI8ll6+m
 i5MilgjKRmvdDEmUjigo0omlqfZRpuP6p+El0k9sPw==
X-Google-Smtp-Source: APXvYqwjP39LUP2n3wdv5p52VBWs/GbHFu/JeG/78KmrgvExwdDggNiwDfpKMMkZfKek8Eg0guVJMJcDtZtti1/q8U0=
X-Received: by 2002:a9f:31a2:: with SMTP id v31mr51915486uad.15.1563977355332; 
 Wed, 24 Jul 2019 07:09:15 -0700 (PDT)
MIME-Version: 1.0
References: <1563776607-8368-1-git-send-email-wahrenst@gmx.net>
In-Reply-To: <1563776607-8368-1-git-send-email-wahrenst@gmx.net>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 24 Jul 2019 16:08:38 +0200
Message-ID: <CAPDyKFoJgiSQOYTiNHidr99tDe1QmuASfj0sJ=H7Ot1tb9mcBg@mail.gmail.com>
Subject: Re: [PATCH 10/18] mmc: sdhci-iproc: Add support for emmc2 of the
 BCM2711
To: Stefan Wahren <wahrenst@gmx.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_070916_752886_F9D1A42A 
X-CRM114-Status: GOOD (  18.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:941 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Matthias Brugger <mbrugger@suse.com>,
 Scott Branden <sbranden@broadcom.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Ray Jui <rjui@broadcom.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>, Rob Herring <robh+dt@kernel.org>,
 Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 BCM Kernel Feedback <bcm-kernel-feedback-list@broadcom.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 22 Jul 2019 at 08:24, Stefan Wahren <wahrenst@gmx.net> wrote:
>
> The additional emmc2 interface of the BCM2711 is an improved version
> of the old emmc controller, which is able to provide DDR50 mode on the
> Raspberry Pi 4. Except 32 bit only register access no other quirks are
> known yet.
>
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  drivers/mmc/host/sdhci-iproc.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
>
> diff --git a/drivers/mmc/host/sdhci-iproc.c b/drivers/mmc/host/sdhci-iproc.c
> index 2feb4ef..2b9cdcd 100644
> --- a/drivers/mmc/host/sdhci-iproc.c
> +++ b/drivers/mmc/host/sdhci-iproc.c
> @@ -261,8 +261,17 @@ static const struct sdhci_iproc_data bcm2835_data = {
>         .mmc_caps = 0x00000000,
>  };
>
> +static const struct sdhci_pltfm_data sdhci_bcm2711_pltfm_data = {
> +       .ops = &sdhci_iproc_32only_ops,
> +};
> +
> +static const struct sdhci_iproc_data bcm2711_data = {
> +       .pdata = &sdhci_bcm2711_pltfm_data,
> +};
> +
>  static const struct of_device_id sdhci_iproc_of_match[] = {
>         { .compatible = "brcm,bcm2835-sdhci", .data = &bcm2835_data },
> +       { .compatible = "brcm,bcm2711-emmc2", .data = &bcm2711_data },
>         { .compatible = "brcm,sdhci-iproc-cygnus", .data = &iproc_cygnus_data},
>         { .compatible = "brcm,sdhci-iproc", .data = &iproc_data },
>         { }
> --
> 2.7.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
