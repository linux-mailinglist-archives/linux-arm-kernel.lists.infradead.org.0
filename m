Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EA021C76A7
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 18:37:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=utRW2z5qMjiDCdWXaHNNycc5R4dKAk2iotpj3zmsrlc=; b=qrS5zMn8j+Bzlq
	TwaSTIH9cVfeL+x7kjP0uW7ZVHxYmCHAD+e9ZdfWFjsnHr4XTKIP5RCAkHTfMTviNotEGcJmNfWjK
	SBOHtJM87D5LnxvBgb3qK8mI+mpXgeEddEivKYZIEp2C/+MrFdMfhtomm8GqWJwpxizEarCIObIEn
	sHvUtD3EPGoeeskpNyXd4T3B5R6HH10xnfqwVSxAUbG2okL29SJrNk2QvGivShI2oOC9L8lCxUxej
	tq4xGxW8Fy09DfvwSRgiYYJULWneDc37b5B3ErDErxKGu1irvLboGp8EUArCSHtwTu1ijylqfpKJL
	ius6Ut1k7z64H5ZJ/1ZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWN2Z-0005R0-0m; Wed, 06 May 2020 16:36:59 +0000
Received: from mail-vk1-xa41.google.com ([2607:f8b0:4864:20::a41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWN2R-0005PT-Km
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 16:36:52 +0000
Received: by mail-vk1-xa41.google.com with SMTP id w188so837572vkf.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 May 2020 09:36:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qEp/F3SbsRoDv1jpNGzhOxbfis7J4KDcT9P9z6XWkHg=;
 b=eVnVRn4S8Hb7sl1mAhlDpCkwg2p7TvzKWg0qVVe/dWs+kNzu0dkUnF12cuHSLRfxJA
 k1JsPhNHp6gpFvg3metDV/hPplaRlu3pQXHecw2lhBu91JqE8L0mSdp5Zmc9jNhUWqIB
 1xGIHjkcCR9gqoJXy85LS+19SdMWYi5+Ih9W8LUXfrQqUUPxnoOEUhmxOrI+MLwWHhr+
 E9RKn25uZiu4s/nZwk/EVD7PaM11znkaVIxenvyVhmirLDphTRgJue6k6ZZ0J3TwDTz6
 0ZY1n1k1WDVUIhczz4M4qBDev1+txdlb4jFvLkVck7EDsXiBjF4LLHsLj3SpxlVGryrw
 tIxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qEp/F3SbsRoDv1jpNGzhOxbfis7J4KDcT9P9z6XWkHg=;
 b=JoMK8J6u1u0wcFJ6f2FrbHcz1FUk0kZ6l1+DaRPHGADIwGwpBBcaiVxKjDlGr/n7wb
 cphttm6nQSdQ0kJxHlgzR+EqEMBvZs02uqUO33qMEOm7aU+lU3X/8QxSBkBqosVTDP0c
 5e7VpHu+SHxp78dYaYI1jKzf/d10KGLdrAwuHAKu+f3YSn3x3TnC7W4k2JHPX0TLPRpC
 S0A6sI4Is3IobKshSeQTkmstObDJvlj4vCTSHeZG/60HTsBpmlpVEFImFEieUYcGQzDA
 +fiw3bOswAvuytoCPY0Up8caEhy53PUv6IvBQoocpLv7JFPnvvk/F8OLtncv3yIVPwXK
 rxdA==
X-Gm-Message-State: AGi0Pua6W8sGLVL229xXUHQmIkMsjzaDFwEpizgCYJ3VJ5sPPR9I+QnP
 TdiQf/IZZ2GZ2gSMIyn9iC18eGGELLygxJD1HCd32g==
X-Google-Smtp-Source: APiQypLm9f0btuKktuvMb+D03IME6dlX6dRX4NRiQ4NXE3O3t6sARzsGX6NfhfAe3VIx+4GZEIKh+9FQbLrJ4BJaBxM=
X-Received: by 2002:a1f:8ccf:: with SMTP id o198mr8122974vkd.53.1588783008587; 
 Wed, 06 May 2020 09:36:48 -0700 (PDT)
MIME-Version: 1.0
References: <1588031768-23677-1-git-send-email-chun-hung.wu@mediatek.com>
 <1588031768-23677-2-git-send-email-chun-hung.wu@mediatek.com>
 <9bc2454f-0b42-e256-7927-2564b56f369f@codeaurora.org>
In-Reply-To: <9bc2454f-0b42-e256-7927-2564b56f369f@codeaurora.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 6 May 2020 18:36:12 +0200
Message-ID: <CAPDyKFq7ffHeWg-S41tLvScg_BXCUULig=G=EzD_to1TG0NhVg@mail.gmail.com>
Subject: Re: [PATCH v5 1/5] mmc: core: Extend mmc_of_parse() to parse CQE
 bindings
To: Veerabhadrarao Badiganti <vbadigan@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_093651_714235_48BD66EA 
X-CRM114-Status: GOOD (  21.45  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Kate Stewart <kstewart@linuxfoundation.org>, wsd_upstream@mediatek.com,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, Al Cooper <alcooperx@gmail.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-tegra <linux-tegra@vger.kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>, Pavel Machek <pavel@ucw.cz>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Michal Simek <michal.simek@xilinx.com>, Jonathan Hunter <jonathanh@nvidia.com>,
 Andy Gross <agross@kernel.org>,
 BCM Kernel Feedback <bcm-kernel-feedback-list@broadcom.com>,
 Allison Randal <allison@lohutok.net>,
 Android Kernel Team <kernel-team@android.com>, Pan Bian <bianpan2016@163.com>,
 DTML <devicetree@vger.kernel.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Chun-Hung Wu <chun-hung.wu@mediatek.com>,
 =?UTF-8?B?TWljaGHFgiBNaXJvc8WCYXc=?= <mirq-linux@rere.qmqm.pl>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Stanley Chu <stanley.chu@mediatek.com>,
 Chaotian Jing <chaotian.jing@mediatek.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Mathieu Malaterre <malat@debian.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kuohong Wang <kuohong.wang@mediatek.com>,
 Adrian Hunter <adrian.hunter@intel.com>, Yong Mao <yong.mao@mediatek.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 6 May 2020 at 15:01, Veerabhadrarao Badiganti
<vbadigan@codeaurora.org> wrote:
>
>
> On 4/28/2020 5:26 AM, Chun-Hung Wu wrote:
> > Parse CQE bindings "supports-cqe" and "disable-cqe-dcmd"
> > in mmc_of_parse().
> >
> > Signed-off-by: Chun-Hung Wu <chun-hung.wu@mediatek.com>
> > ---
> >   drivers/mmc/core/host.c | 5 +++++
> >   1 file changed, 5 insertions(+)
> >
> > diff --git a/drivers/mmc/core/host.c b/drivers/mmc/core/host.c
> > index c876872..47521c6 100644
> > --- a/drivers/mmc/core/host.c
> > +++ b/drivers/mmc/core/host.c
> > @@ -302,6 +302,11 @@ int mmc_of_parse(struct mmc_host *host)
> >               host->caps2 |= MMC_CAP2_NO_SD;
> >       if (device_property_read_bool(dev, "no-mmc"))
> >               host->caps2 |= MMC_CAP2_NO_MMC;
> > +     if (device_property_read_bool(dev, "supports-cqe"))
> > +             host->caps2 |= MMC_CAP2_CQE;
>
> This change is breaking emmc driver on qcom platforms where this dt
> property is defined.
>
> [    1.543453]  cqhci_deactivate+0xc/0x38
> [    1.545627]  sdhci_msm_reset+0x40/0x58
> [    1.549447]  sdhci_do_reset+0x48/0x7c
> [    1.553180]  __sdhci_read_caps+0x7c/0x214
> [    1.556913]  sdhci_setup_host+0x58/0xce8
> [    1.560905]  sdhci_msm_probe+0x588/0x8a4
> [    1.564900]  platform_drv_probe+0x4c/0xb0
>
> So, we cant have this flag defined before sdhci_setup_host().
>
> I will have to clear this cap and re-enable it in our initialization.

Thanks for reporting! I have dropped all the four patches from
Chun-Hung, so we can figure out how to fix this.

Please help to review the next version of the series.

>
> > +     if (!device_property_read_bool(dev, "disable-cqe-dcmd")) {
> > +             host->caps2 |= MMC_CAP2_CQE_DCMD;
> > +     }
> >
> >       /* Must be after "non-removable" check */
> >       if (device_property_read_u32(dev, "fixed-emmc-driver-type", &drv_type) == 0) {

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
