Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B69011248FD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 15:02:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OKnb31cJFiKMyJsdwyyyQxWxnL+jIHaTxKL2qpfa5dA=; b=APntYZgl6MZI4B
	nwGJWsXB0w2nFTr2XV0FUrZP915urUqHT6zLEeG0fnfxYs1MxCfupTe6Uhzw+E1L+z9HdJ7lNuHUS
	DPGJIdjaXTy1KC/LM7b8DdZjzIFwJrENp5nrjI4ier9A22UWcAjwXMN06uv26NHc1YQuvx/0tgwUd
	EoUaKFXQ4pVjSDgwwjuNNvj4N5O4d4raorcKvnWhRsGqrVisTOvZxQ6Q6bhkxLijTjsGix55goIVD
	X+4Yuq3U/C8XXhc1tyqRz2GS+bfUi2sMZoxe8YXz07U/uOojlyaxEy+Elyq27BycJBQlcYulh3ZTG
	18TKakFr9r6oaGVuIjzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihZuM-0000m9-Le; Wed, 18 Dec 2019 14:02:34 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihZuA-0000js-8u
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 14:02:24 +0000
Received: by mail-ua1-x943.google.com with SMTP id y23so669105ual.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Dec 2019 06:02:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XWfYBni5NvApXaQAN+Sc8AcAyWYbtB1RtpsTw1gA/Ig=;
 b=UIoDOfeeFGo8xJL7UOOA5AiHtOnoVYYX8uWUVSYGlN91z4GJFaIV3YUvfPbrkK6EaC
 kN+uw1xgypetPlU+ZEfU9QyIYqJy3XnYRf1RjpOeMfmO0rhb4J0O1iYnvCySqhlJ67hG
 pBmkr43dD5CdHdXH67Lr6LhaWtSPujA60xbFz71VAA7xD00Bmx0f37SXneXyo/tMTZnY
 wAokPjmzQ2ays98bjhWAL12sbuwFo4dkwmpPPg/isp7TCJVtyOcPNZXgOGZt6mQMSVPZ
 HLFnwFCGNYsQscjiVRnnABGHWMqY5ytLEZAzpE+/8TNkGb9R5VQhp9NsjuRb+GCX8Bq5
 Zfxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XWfYBni5NvApXaQAN+Sc8AcAyWYbtB1RtpsTw1gA/Ig=;
 b=MVSMZhb9G1Oq+GdTAHO62cvrr0hRxf3t93a4bnQeY6fP3G5vqXTruPegAPh68VYfDk
 C7LmUCMdUGLLyutLab3/oPOgpM0B8bR6DEEjAdhymMzHFXcR61Aa8cNPPoW3S0cidg+S
 sQ+e2qIOfKc68YfE+rpufdnA+3fdMfLo7N+QQXcW5Bz7TvTOMdlqZmGHcV3b6FM8wYVg
 8DigOH6ecg3vm5GK4wR1Dc4YNkCZQNJcrojLgyNbViVrYWSRZOLNVv3OjEd8AUvcpfUv
 hk1nX1Lbqaa/CNBQS/7sfyLdiFxpcJNwvHJE+DX/Zl0Jawx/EBd/Q58165isBgCMcEo4
 HCEQ==
X-Gm-Message-State: APjAAAWg5veRsN1gBkfvwdS0FT4z9wdAvai2GGOmRM5AoKizHyNG+wkp
 /XR3b7OVApqK8JYw7ZkySKKJj7V2RR04mVi9p6mE4Q==
X-Google-Smtp-Source: APXvYqzlW10cgVZlH4+ozp+d38GOPO+fFsjnBu+gNNFWD1IskWWWrLnsiB7uOFCa5PBl7aGksxtQ4pSl6TsVj61svpo=
X-Received: by 2002:ab0:5510:: with SMTP id t16mr1519430uaa.15.1576677736310; 
 Wed, 18 Dec 2019 06:02:16 -0800 (PST)
MIME-Version: 1.0
References: <20191215175120.3290-1-tiny.windzz@gmail.com>
 <20191215175120.3290-10-tiny.windzz@gmail.com>
 <20191218063028.GC3755841@builder>
In-Reply-To: <20191218063028.GC3755841@builder>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 18 Dec 2019 15:01:40 +0100
Message-ID: <CAPDyKFrNXqwHuTNkT-Q9=jswXyPXkNNg9eTWfzv-Rwd1P5JqEA@mail.gmail.com>
Subject: Re: [PATCH 10/13] mmc: sdhci-msm: convert to
 devm_platform_ioremap_resource
To: Bjorn Andersson <bjorn.andersson@linaro.org>,
 Yangtao Li <tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_060222_308780_F2D14EC8 
X-CRM114-Status: GOOD (  13.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:943 listed in]
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
Cc: "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>, Andy Gross <agross@kernel.org>,
 linux-mediatek@lists.infradead.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

-trimmed cc list

On Wed, 18 Dec 2019 at 07:30, Bjorn Andersson
<bjorn.andersson@linaro.org> wrote:
>
> On Sun 15 Dec 09:51 PST 2019, Yangtao Li wrote:
>
> > Use devm_platform_ioremap_resource() to simplify code.
> >
> > Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> > ---
> >  drivers/mmc/host/sdhci-msm.c | 5 +----
> >  1 file changed, 1 insertion(+), 4 deletions(-)
> >
> > diff --git a/drivers/mmc/host/sdhci-msm.c b/drivers/mmc/host/sdhci-msm.c
> > index 3d0bb5e2e09b..6daacef4ceec 100644
> > --- a/drivers/mmc/host/sdhci-msm.c
> > +++ b/drivers/mmc/host/sdhci-msm.c
> > @@ -1746,7 +1746,6 @@ static int sdhci_msm_probe(struct platform_device *pdev)
> >       struct sdhci_host *host;
> >       struct sdhci_pltfm_host *pltfm_host;
> >       struct sdhci_msm_host *msm_host;
> > -     struct resource *core_memres;
> >       struct clk *clk;
> >       int ret;
> >       u16 host_version, core_minor;
> > @@ -1847,9 +1846,7 @@ static int sdhci_msm_probe(struct platform_device *pdev)
> >       }
> >
> >       if (!msm_host->mci_removed) {
> > -             core_memres = platform_get_resource(pdev, IORESOURCE_MEM, 1);
> > -             msm_host->core_mem = devm_ioremap_resource(&pdev->dev,
> > -                             core_memres);
> > +             msm_host->core_mem = devm_platform_ioremap_resource(pdev, 1);
> >
>
> This would now look better without this empty line.

Good point, I fixed it when applying. No actions needed.

>
> Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
>

[...]

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
