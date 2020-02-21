Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BAC5168057
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 15:34:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Is8wHrL2F1aRdB+jNdC8TRuP6GfOfGD4DJANODFvHwY=; b=XiW3W0OmOBmqjW
	Qq9BJihQydwyFtUj2wZpfq43Mbu7St4WG9WeAZP4rxPK4cifbVIltzrQ+2yFCoYt3OupLHiXdmI4T
	a4iWcg8Dwodyr4hGWrbkKT4LCMkElVeFDlLnm7H5vk+hUckBqr49CusCjMslHoY7sF2J/e+CCQ3YO
	Okorc+jmr/oIrNUFYXKrrftv5Mp8GIyEAIb3rpjwLsFAZ3F3yyoKNGLlhMWkOHW01QN8OVpHwEps8
	ORDNYYyRxVb48Mai64jiHXfnI+EDoZot2v433n0Ap6Fw6ZYD2s9AIQVii0ZieZq35AbLdnYw7bLzk
	pI61dRlCN2WSeFxITj+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j59Nm-0001pt-A1; Fri, 21 Feb 2020 14:34:22 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j59Nb-0001pJ-4o
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 14:34:12 +0000
Received: by mail-lj1-x241.google.com with SMTP id x14so2364110ljd.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Feb 2020 06:34:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qE1ZprvNAQZEaedKCgeg3ifr2lhMX5FFSbIkCacp4Kw=;
 b=DUMUWH+o5xdEn4HR/SntOIZf6pWK2WCRJo9GDytRJlf/wRrfthg3iixysSl789z7QV
 cWt75Jm8nDTe+v9ctDDtSdF0l5ln3hu7YnDUgIww04Q1jOLT3LlEJY5Np7xnnDm12q22
 zMtcwL6aW4EdhmjVpuhoKoluw2mZk8ZlFiPs7NXZpmM1yCzC0wVB0BH1b3EG4rqRqa9C
 pYVGdEP1BZ1xifOB1yzVdKi9iSVyJh2LWc8OsI88wTr7ivb3LyFWFFC5WkJlQ9bnDKOI
 Tv60UO/1LRXTVVXr8nBzNDWO6d8+PQniSdcEiO/19AcFYSeICRQ7COilyc6YYMi1QnPa
 y2iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qE1ZprvNAQZEaedKCgeg3ifr2lhMX5FFSbIkCacp4Kw=;
 b=LbsBhdP5Hl6w++CE3yNB43t72iq8WM4/IDt3vdfvAifNEddkFwvEtVsvn8Yd8MSHyI
 tIc9rTsjdaoCFhjQAOEgACwbsw1CmpnDx4WlBSpK/O07p+/oDjzS8vffasSunKtHjInT
 0C6WhdMTVfDUYX6hTEytzt97HxGkFdZYmfuA7s4kIGX+51bCY15h1Hhaw+Hz3c7G5iHz
 vbD+vtNaAfqrOTrEbeKYL72c4S0gm7pM8ljCX6Ng87ymP0L5hr7LQmdqikdPpF5T7RuN
 gPhwgVw9AW4PUxGafyaGOGIl67LnjQ2NYYsIR572l4yYmgUsBLMzm02nzmRJcEojuIU4
 ZXpA==
X-Gm-Message-State: APjAAAUtb/dtbZcwsOelB4JYzt0z+CVTUwV4muRGib29IIObwvPDCAs2
 7MDj0SeNF5AuH0Z5KQsupchFIqSksnyI452cvipcig==
X-Google-Smtp-Source: APXvYqw4oSVVlShPCelo7IGnTIlbPgsMGxvB5xli1PlMp8bLrG3RvR3Haq1OJ5idjUHugDKxC+iAjv/NG+M/2+LLAR0=
X-Received: by 2002:a2e:81c3:: with SMTP id s3mr21749572ljg.168.1582295649418; 
 Fri, 21 Feb 2020 06:34:09 -0800 (PST)
MIME-Version: 1.0
References: <1581921111-24172-1-git-send-email-chun-hung.wu@mediatek.com>
 <1581921111-24172-2-git-send-email-chun-hung.wu@mediatek.com>
In-Reply-To: <1581921111-24172-2-git-send-email-chun-hung.wu@mediatek.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 21 Feb 2020 15:33:58 +0100
Message-ID: <CACRpkdauCe-zAcsO5q_79+Ux_a2=bktA5UqKjWs4XdBJZ3wWeg@mail.gmail.com>
Subject: Re: [PATCH 1/4] [1/4] mmc: core: expose MMC_CAP2_CQE* to dt
To: Chun-Hung Wu <chun-hung.wu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_063411_190985_144A2ACD 
X-CRM114-Status: GOOD (  18.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Kate Stewart <kstewart@linuxfoundation.org>,
 Ulf Hansson <ulf.hansson@linaro.org>, wsd_upstream@mediatek.com,
 linux-mmc <linux-mmc@vger.kernel.org>, Pan Bian <bianpan2016@163.com>,
 Pavel Machek <pavel@ucw.cz>, Chaotian Jing <chaotian.jing@mediatek.com>,
 kernel-team@android.com,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Stanley Chu <stanley.chu@mediatek.com>,
 Allison Randal <allison@lohutok.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Mathieu Malaterre <malat@debian.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kuohong Wang <kuohong.wang@mediatek.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 17, 2020 at 7:32 AM Chun-Hung Wu <chun-hung.wu@mediatek.com> wrote:

> Expose MMC_CAP2_CQE and MMC_CAP2_CQE_DCMD
> to host->caps2 if
> 1. "supports-cqe" is defined in dt and
> 2. "disable-cqe-dcmd" is not defined in dt.
>
> ---
>  drivers/mmc/core/host.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/drivers/mmc/core/host.c b/drivers/mmc/core/host.c
> index 105b7a7..efb0dbe 100644
> --- a/drivers/mmc/core/host.c
> +++ b/drivers/mmc/core/host.c
> @@ -319,6 +319,14 @@ int mmc_of_parse(struct mmc_host *host)
>                 host->caps2 |= MMC_CAP2_NO_SD;
>         if (device_property_read_bool(dev, "no-mmc"))
>                 host->caps2 |= MMC_CAP2_NO_MMC;
> +       if (device_property_read_bool(dev, "supports-cqe"))
> +               host->caps2 |= MMC_CAP2_CQE;

I don't understand why this is even a DT property as it should
be clear from the hosts compatible whether it supports CQE or
not. But it's too late to do anything about that I suppose, and
I just assume there is something I don't understand here.

> +       /* Must be after "supports-cqe" check */
> +       if (!device_property_read_bool(dev, "disable-cqe-dcmd")) {
> +               if (host->caps2 & MMC_CAP2_CQE)
> +                       host->caps2 |= MMC_CAP2_CQE_DCMD;
> +       }

This is the right place to do this I suppose. Disabling CQE
selectively is something you might wanna do for debugging.
Acked-by: Linus Walleij <linus.walleij@linaro.org>

I see that some drivers are already parsing this DT property
on their own, should we follow up with patches so that these:

$ git grep 'supports-cqe'
drivers/mmc/host/sdhci-brcmstb.c:       if
(device_property_read_bool(&pdev->dev, "supports-cqe")) {
drivers/mmc/host/sdhci-msm.c:   if (of_property_read_bool(node, "supports-cqe"))
drivers/mmc/host/sdhci-tegra.c: if
(device_property_read_bool(host->mmc->parent, "supports-cqe"))

Make use of the central parsing instead?

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
