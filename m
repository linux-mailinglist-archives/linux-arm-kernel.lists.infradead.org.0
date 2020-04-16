Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10BF11ACF9C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 20:26:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y/oiU6X/3IpGd1bDmciFZYd9gf+di1HreZaKmFgWvaA=; b=cBqdjCUmgStpAM
	XshpvLjscns2BoZuPEK64RHOEdwrSBfe0MAhUMr6RBLg/E5smtWeQI2MizNnNhjXKo+gNlUWeEu3T
	YDvBcFtkEwyh5NwRgfAr9O3XKkPvt92oTF5uA//9BDOEy45hDSGin0YmVbUV1VGJok+oOjljingk5
	KIba7jkFMArQypHuXlzGuI/F4kbNIT0QE61wRlc6lJ9o9bgmChRn2WPLemA+wm4J8DeTN4KZEZ7yp
	whUIKCGdV2a9e576FMeNsbuHP7sfHiOZohBFSS7iPLZV8SxLxr4xBV8jeNG3G3ZXWJw5Sm2tpepnc
	kyZASu8bfaQl6lNehyxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP9DP-0003ti-9o; Thu, 16 Apr 2020 18:26:19 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP9DB-0003ri-8k; Thu, 16 Apr 2020 18:26:06 +0000
Received: by mail-il1-x143.google.com with SMTP id t8so7905533ilj.3;
 Thu, 16 Apr 2020 11:26:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vXJ60xh3HRzmHUILtuHmOWVVlEEjctRU4VDOT5aOyJA=;
 b=B46r11rA0nYCy2R28GWGYHdW0Mc3ND/KQWNLb4j1VcOse4QKYvSSEGAwV9SAU6AqG1
 QaULdLnV8qwb6Vq0v8DCiQUtSISrDPdTEO00xZUbJ4SsIclKX1AN1h8mXWTv0N8CL3ez
 XkrVb26oJMpy2UE9Ohv9dtdV+VtHkoq7NlW7Md6qGnh/znZj2a4UsgMM9zBOMS36iXNm
 WVjm8QbiMXOWmugYo0V5iqMViRahoUqXQDvwxLOltFFA75FA4hgu9v8YPlzkSWUxaOhe
 rw6Gp/HevEYAtcDesDgSl+YBgNsW/MlV1hOqzcYAzMsnUE6OWhDswZ4tlsCc3Aa3snSJ
 HiCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vXJ60xh3HRzmHUILtuHmOWVVlEEjctRU4VDOT5aOyJA=;
 b=MhkucM5OGlAT7a+ZQ1xkRi/hoWHYqMQ3WTk2Dg4jaZgYIDo6VOVSMonxPmQCof9t4D
 8jrPGpGYam6rK3Ui+JRMZgfaL5wvMWAhhrHNxiLF4LSDklLWboZ5+BH+iXnkLvXYtKBY
 Y45VALispyA7lHx11A7J4bHhYGLVlhmxNuxL//oerS8MCy4A46BJX3xpLzWR55Whz6Vd
 Lm06fNfvZlsfVg89RA3p/yKie217EfauNsvqKwBbtAIc6NE+UE6o8FD2xm8EAlKptsLP
 g+xF2nbNXyRjlu5xOmZeNQ0D+83QeL6UqTTJsAeT7+qAUP0qkOvKjnqBEBsh8OhkBjI8
 qb3A==
X-Gm-Message-State: AGi0PuaJN90ptDpXW6cjDxfMBx6IYSC11eI4It/eOyVmq6JLwlZ+aYUc
 QXuJFOauZfMUANY9mh05wLL/fdHaUjWyceMNe2w=
X-Google-Smtp-Source: APiQypI0D2gbwvLqma38KDzK0z014Rfy0n2y547t4k9gphWQG0y+NQwRvKkvS+gnOgt7J+WNMxsXZw1ZEoAiq3JqnFo=
X-Received: by 2002:a92:7a07:: with SMTP id v7mr12363629ilc.238.1587061563488; 
 Thu, 16 Apr 2020 11:26:03 -0700 (PDT)
MIME-Version: 1.0
References: <1586165281-11888-1-git-send-email-chun-hung.wu@mediatek.com>
 <1586165281-11888-3-git-send-email-chun-hung.wu@mediatek.com>
 <CAOGqxeUjx+OWRhwWznk-uHZ9op7WTZaAGq6xd4Z4QdL+Hja2yA@mail.gmail.com>
 <1586823738.16047.7.camel@mtkswgap22>
In-Reply-To: <1586823738.16047.7.camel@mtkswgap22>
From: Alan Cooper <alcooperx@gmail.com>
Date: Thu, 16 Apr 2020 14:25:52 -0400
Message-ID: <CAOGqxeWvo0Dd6DaSEnosFV8xWngUq9By-hdtu4yJZwh6R=PgLw@mail.gmail.com>
Subject: Re: [PATCH 2/5] [2/5] mmc: host: Remove redundant host CQE bindings
To: Chun-Hung Wu <chun-hung.wu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_112605_333855_FDAF95D2 
X-CRM114-Status: GOOD (  22.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [alcooperx[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Kate Stewart <kstewart@linuxfoundation.org>,
 Ulf Hansson <ulf.hansson@linaro.org>, wsd_upstream@mediatek.com,
 linux-mmc <linux-mmc@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, linux-tegra@vger.kernel.org,
 Thierry Reding <thierry.reding@gmail.com>, Pavel Machek <pavel@ucw.cz>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Michal Simek <michal.simek@xilinx.com>, Jonathan Hunter <jonathanh@nvidia.com>,
 Andy Gross <agross@kernel.org>,
 BCM Kernel Feedback <bcm-kernel-feedback-list@broadcom.com>,
 Chaotian Jing <chaotian.jing@mediatek.com>, kernel-team@android.com,
 Pan Bian <bianpan2016@163.com>, DTML <devicetree@vger.kernel.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-arm-msm@vger.kernel.org, mirq-linux@rere.qmqm.pl,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Stanley Chu <stanley.chu@mediatek.com>,
 Allison Randal <allison@lohutok.net>,
 "moderated list:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Mathieu Malaterre <malat@debian.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kuohong Wang <kuohong.wang@mediatek.com>,
 Adrian Hunter <adrian.hunter@intel.com>,
 ": Linux Kernel Mailing List" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 13, 2020 at 8:22 PM Chun-Hung Wu <chun-hung.wu@mediatek.com> wrote:
>
> On Mon, 2020-04-06 at 09:59 -0400, Alan Cooper wrote:
> > On Mon, Apr 6, 2020 at 5:28 AM Chun-Hung Wu <chun-hung.wu@mediatek.com> wrote:
> > >
> > > CQE bindings "supports-cqe" and "disable-cqe-dcmd" is parsed
> > > in mmc_of_parse(). Remove vendor code which parses CQE bindings,
> > > and use mmc_host->caps2 to decide support CQE or not.
> > >
> > > Signed-off-by: Chun-Hung Wu <chun-hung.wu@mediatek.com>
> > > ---
> > >  drivers/mmc/host/sdhci-brcmstb.c   | 11 ++++++-----
> > >  drivers/mmc/host/sdhci-msm.c       |  3 +--
> > >  drivers/mmc/host/sdhci-of-arasan.c |  3 ---
> > >  drivers/mmc/host/sdhci-tegra.c     |  2 +-
> > >  4 files changed, 8 insertions(+), 11 deletions(-)
> > >
> > > diff --git a/drivers/mmc/host/sdhci-brcmstb.c b/drivers/mmc/host/sdhci-brcmstb.c
> > > index ad01f64..07c90c6 100644
> > > --- a/drivers/mmc/host/sdhci-brcmstb.c
> > > +++ b/drivers/mmc/host/sdhci-brcmstb.c
> > > @@ -247,10 +247,6 @@ static int sdhci_brcmstb_probe(struct platform_device *pdev)
> > >                 return res;
> > >
> > >         memset(&brcmstb_pdata, 0, sizeof(brcmstb_pdata));
> > > -       if (device_property_read_bool(&pdev->dev, "supports-cqe")) {
> > > -               has_cqe = true;
> > > -               match_priv->ops->irq = sdhci_brcmstb_cqhci_irq;
> >
> > The above line that sets the irq was moved to later in the function,
> > but needs to come before sdhci_pltfm_init()
> >
> > Al
> After check the code in sdhci_pltfm_init(), I don't see where
> match_priv->ops->irq being used in code section.
> Only "host->ops = pdata->ops;" is assigned, may I know why should
> we put match_priv->ops->irq = sdhci_brcmstb_cqhci_irq; before
> sdhci_pltfm_init()?
> By the way, host only added to kernel after sdhci_brcmstb_add_host(),
> So, I suppose isr assignment is ok before anywhere of it.

I thought I remembered having to move the "set irq" to before
sdhci_pltfm_init() when I first added the functionality, but it looks
like it isn't necessary
I tested your changes and they worked correctly.
Acked-by: Al Cooper <alcooperx@gmail.com>



> >
> > > -       }
> > >         brcmstb_pdata.ops = match_priv->ops;
> > >         host = sdhci_pltfm_init(pdev, &brcmstb_pdata,
> > >                                 sizeof(struct sdhci_brcmstb_priv));
> > > @@ -261,7 +257,6 @@ static int sdhci_brcmstb_probe(struct platform_device *pdev)
> > >
> > >         pltfm_host = sdhci_priv(host);
> > >         priv = sdhci_pltfm_priv(pltfm_host);
> > > -       priv->has_cqe = has_cqe;
> > >
> > >         /* Map in the non-standard CFG registers */
> > >         iomem = platform_get_resource(pdev, IORESOURCE_MEM, 1);
> > > @@ -276,6 +271,12 @@ static int sdhci_brcmstb_probe(struct platform_device *pdev)
> > >         if (res)
> > >                 goto err;
> > >
> > > +       if (host->mmc->caps2 & MMC_CAP2_CQE) {
> > > +               has_cqe = true;
> > > +               match_priv->ops->irq = sdhci_brcmstb_cqhci_irq;
> > > +       }
> > > +       priv->has_cqe = has_cqe;
> > > +
> > >         /*
> > >          * If the chip has enhanced strobe and it's enabled, add
> > >          * callback
> > > diff --git a/drivers/mmc/host/sdhci-msm.c b/drivers/mmc/host/sdhci-msm.c
> > > index c3a160c..fbb2f57 100644
> > > --- a/drivers/mmc/host/sdhci-msm.c
> > > +++ b/drivers/mmc/host/sdhci-msm.c
> > > @@ -1880,7 +1880,6 @@ static int sdhci_msm_probe(struct platform_device *pdev)
> > >         u8 core_major;
> > >         const struct sdhci_msm_offset *msm_offset;
> > >         const struct sdhci_msm_variant_info *var_info;
> > > -       struct device_node *node = pdev->dev.of_node;
> > >
> > >         host = sdhci_pltfm_init(pdev, &sdhci_msm_pdata, sizeof(*msm_host));
> > >         if (IS_ERR(host))
> > > @@ -2076,7 +2075,7 @@ static int sdhci_msm_probe(struct platform_device *pdev)
> > >         pm_runtime_use_autosuspend(&pdev->dev);
> > >
> > >         host->mmc_host_ops.execute_tuning = sdhci_msm_execute_tuning;
> > > -       if (of_property_read_bool(node, "supports-cqe"))
> > > +       if (host->mmc->caps2 & MMC_CAP2_CQE)
> > >                 ret = sdhci_msm_cqe_add_host(host, pdev);
> > >         else
> > >                 ret = sdhci_add_host(host);
> > > diff --git a/drivers/mmc/host/sdhci-of-arasan.c b/drivers/mmc/host/sdhci-of-arasan.c
> > > index e49b44b..359eff6 100644
> > > --- a/drivers/mmc/host/sdhci-of-arasan.c
> > > +++ b/drivers/mmc/host/sdhci-of-arasan.c
> > > @@ -1281,9 +1281,6 @@ static int sdhci_arasan_probe(struct platform_device *pdev)
> > >                                         sdhci_arasan_voltage_switch;
> > >                 sdhci_arasan->has_cqe = true;
> > >                 host->mmc->caps2 |= MMC_CAP2_CQE;
> > > -
> > > -               if (!of_property_read_bool(np, "disable-cqe-dcmd"))
> > > -                       host->mmc->caps2 |= MMC_CAP2_CQE_DCMD;
> > >         }
> > >
> > >         ret = sdhci_arasan_add_host(sdhci_arasan);
> > > diff --git a/drivers/mmc/host/sdhci-tegra.c b/drivers/mmc/host/sdhci-tegra.c
> > > index 403ac44..d09abdd 100644
> > > --- a/drivers/mmc/host/sdhci-tegra.c
> > > +++ b/drivers/mmc/host/sdhci-tegra.c
> > > @@ -715,7 +715,7 @@ static void tegra_sdhci_parse_dt(struct sdhci_host *host)
> > >         struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
> > >         struct sdhci_tegra *tegra_host = sdhci_pltfm_priv(pltfm_host);
> > >
> > > -       if (device_property_read_bool(host->mmc->parent, "supports-cqe"))
> > > +       if (host->mmc->caps2 & MMC_CAP2_CQE)
> > >                 tegra_host->enable_hwcq = true;
> > >         else
> > >                 tegra_host->enable_hwcq = false;
> > > --
> > > 1.9.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
