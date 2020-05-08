Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCE9D1CA284
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 07:06:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xtsOpG6UexYe/sxMnbTqgc0I2h1RbjKI5yXOjB1+OLc=; b=DpYNzDCI5Z4sf5
	13UnfdIoJsPFIij5k5U7QWgIcr0JY0CroA2ZAmEwkznOvzBbOCFCQfsUtbHp3PCq3Zj2D3aT/+90H
	5Bfb6HdXvCKPlQR6+++OQZ7yfck9RaCR/7iF8KnWwz3sEaYi0FZI4k0xyMAKu68kgz5h+ARhyQf/r
	S/+Man31CG9zTvu3wOnaOrY2Eh6V8K22V7W6U0KgpWZ7obsK/nxFR9v3NMcrSrrES/eA5+p2Zn+Wr
	wlkkm+sjRnhS8soQ8DqTg4K1bUDfu3Zv2WXnX6sv7IbFppVV3MXU+k+LYnpS9b8oWtLxo3O66fl50
	6Ze+wYNWc4lLL5CX4aNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWvDD-0007tZ-5h; Fri, 08 May 2020 05:06:15 +0000
Received: from mail-ua1-x942.google.com ([2607:f8b0:4864:20::942])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWvD5-0007sn-AU
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 05:06:08 +0000
Received: by mail-ua1-x942.google.com with SMTP id g35so207544uad.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 22:06:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GOyJCplE0htCyKO+7S6/vnX0Dv0M9OHzxvwXwcOQOP4=;
 b=yOR+kZsOgcu3/Opchfd0y0C8bGMkBMGR0doFFK9FPvDPc7z8ErZvL7sKHTdw/qa/dz
 vwQb7uq+1bBHAJitd7DHu33y1u5/2XWL6XeR7xIfarln2m0W5tyjJxIQtragP/eGPxSZ
 QICFM4RGditudJKQTQrhmZJqvAMtj+Yli1q6nJY0g3+7l/ikFJYY48TWu6Mx7KHEHC/4
 Ir622C0eVbJVEXEqtkrkjMVfd/sijw36iAinDFuIlOYVM2FNShq5zd9P1r0ydAMOBLn9
 4G1Ez4KEljvtrT13T1s5DY74tCI1M7t50tW71tit6nh8LhN7AeyBuWfJIeLwQXONv5aQ
 yQig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GOyJCplE0htCyKO+7S6/vnX0Dv0M9OHzxvwXwcOQOP4=;
 b=BLfhyfU4OHd3+iaktifO3k2ks/KmE28pAWQvBZ55W3OssSfLZIYeuSkY/EOPZRgAIC
 XDq4C0llSzWJ2UsvwK1l5wSKGyUALdXsWMXVAs1LWqo7ik0tJetTHRa/0kT9C/JaR354
 DWnsTE4qOg5aZQp7i5GXGgB1HBRqlI9MB3n1F6Tgui1feznhCg2Nfq46pqElt7JWAkAl
 NB5wd8dIFhFkM7Q49Mfq9wkGxdZMRhitP1O7aELJ5MRbo2g7K98a7g5GfbrnfIdyfrfn
 G5xOFlF2tZYJCIoIr9wogqibr6JUqqvqO3Id+ADK7uHffiMbgQFqgAV9hhaJtXsRMLBU
 OqtA==
X-Gm-Message-State: AGi0PuYwitND6QF+VpBqL+kye79UxPYXrVnm9+mpzAbzCCSN/gPbFxxb
 nm9zP3hQI1cbaM3W7RUix7r//zeSwgfFpW6VHB704A==
X-Google-Smtp-Source: APiQypIV3sbG4ZSLW2R9RC7kszUeNGv4pTkPCpr++SJIgTpFreELrbQMO3vTo+toXhRCi6FYQeprQHSzN9Qws1pY5HQ=
X-Received: by 2002:ab0:5ca:: with SMTP id e68mr505205uae.19.1588914365738;
 Thu, 07 May 2020 22:06:05 -0700 (PDT)
MIME-Version: 1.0
References: <1588031768-23677-1-git-send-email-chun-hung.wu@mediatek.com>
 <1588031768-23677-2-git-send-email-chun-hung.wu@mediatek.com>
 <9bc2454f-0b42-e256-7927-2564b56f369f@codeaurora.org>
 <CAPDyKFq7ffHeWg-S41tLvScg_BXCUULig=G=EzD_to1TG0NhVg@mail.gmail.com>
 <f9fa0232-3945-4e47-9238-0b51f6531199@codeaurora.org>
In-Reply-To: <f9fa0232-3945-4e47-9238-0b51f6531199@codeaurora.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 8 May 2020 07:05:29 +0200
Message-ID: <CAPDyKFoAa3=Rg77Af7nNQOZN13m9NQYERosrqiK_kuL3s-YECA@mail.gmail.com>
Subject: Re: [PATCH v5 1/5] mmc: core: Extend mmc_of_parse() to parse CQE
 bindings
To: Veerabhadrarao Badiganti <vbadigan@codeaurora.org>,
 Chun-Hung Wu <chun-hung.wu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_220607_368795_FB51CFED 
X-CRM114-Status: GOOD (  25.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:942 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Chaotian Jing <chaotian.jing@mediatek.com>,
 Android Kernel Team <kernel-team@android.com>, Pan Bian <bianpan2016@163.com>,
 DTML <devicetree@vger.kernel.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 =?UTF-8?B?TWljaGHFgiBNaXJvc8WCYXc=?= <mirq-linux@rere.qmqm.pl>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Stanley Chu <stanley.chu@mediatek.com>,
 Allison Randal <allison@lohutok.net>,
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

On Thu, 7 May 2020 at 18:33, Veerabhadrarao Badiganti
<vbadigan@codeaurora.org> wrote:
>
>
> On 5/6/2020 10:06 PM, Ulf Hansson wrote:
> > On Wed, 6 May 2020 at 15:01, Veerabhadrarao Badiganti
> > <vbadigan@codeaurora.org> wrote:
> >>
> >> On 4/28/2020 5:26 AM, Chun-Hung Wu wrote:
> >>> Parse CQE bindings "supports-cqe" and "disable-cqe-dcmd"
> >>> in mmc_of_parse().
> >>>
> >>> Signed-off-by: Chun-Hung Wu <chun-hung.wu@mediatek.com>
> >>> ---
> >>>    drivers/mmc/core/host.c | 5 +++++
> >>>    1 file changed, 5 insertions(+)
> >>>
> >>> diff --git a/drivers/mmc/core/host.c b/drivers/mmc/core/host.c
> >>> index c876872..47521c6 100644
> >>> --- a/drivers/mmc/core/host.c
> >>> +++ b/drivers/mmc/core/host.c
> >>> @@ -302,6 +302,11 @@ int mmc_of_parse(struct mmc_host *host)
> >>>                host->caps2 |= MMC_CAP2_NO_SD;
> >>>        if (device_property_read_bool(dev, "no-mmc"))
> >>>                host->caps2 |= MMC_CAP2_NO_MMC;
> >>> +     if (device_property_read_bool(dev, "supports-cqe"))
> >>> +             host->caps2 |= MMC_CAP2_CQE;
> >> This change is breaking emmc driver on qcom platforms where this dt
> >> property is defined.
> >>
> >> [    1.543453]  cqhci_deactivate+0xc/0x38
> >> [    1.545627]  sdhci_msm_reset+0x40/0x58
> >> [    1.549447]  sdhci_do_reset+0x48/0x7c
> >> [    1.553180]  __sdhci_read_caps+0x7c/0x214
> >> [    1.556913]  sdhci_setup_host+0x58/0xce8
> >> [    1.560905]  sdhci_msm_probe+0x588/0x8a4
> >> [    1.564900]  platform_drv_probe+0x4c/0xb0
> >>
> >> So, we cant have this flag defined before sdhci_setup_host().
> >>
> >> I will have to clear this cap and re-enable it in our initialization.
> > Thanks for reporting! I have dropped all the four patches from
> > Chun-Hung, so we can figure out how to fix this.
> >
> > Please help to review the next version of the series.
>
> Thanks Ulf.
>
> Hi Chun-Hung,
>
> On qcom controller CQE also gets reset when SDHC is reset. So we have to
> explicitly disable CQE
> by invoking  cqhci_deactivate() during sdhc reset
>
> SDHC gets reset in sdhci_setup_host() even before cqe is initialized.
> With MMC_CAP2_CQE_DCMD cap set even before sdhci_set_host(), we are
> getting null pointer access with cqhci_deactivate().
>
> If CQE getting reset with SDHC reset is generic (applicable to other
> controllers) then you have revisit your logic.
> If its not the case then only qcom driver would get affected.

Thanks for clarifying the problem, much appreciated.

To me, it looks like the DT parsing of the CQE properties are better
suited to be managed by each sdhci variant, to continue to leave some
room for flexibility.

Chun-Hung, can you please drop patch 1 and patch2 from the series and
adapt to this change in the mediatek variant?

[...]

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
