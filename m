Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2D49138BBF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 07:20:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KzdBaLT+PLHXzcK9s08Xro1Kx2j/pn9dcgKdHm7HSPM=; b=HclKjyl5oQG3vd
	aG/zpl2JZudJlyeMjghQHNcsP+fSV2Bo5W3mqzWU6q+OYPqdqIbz773ffPkP6ZJqePNnkA9bRcTO3
	V9yIdXi28T0yha0/7eJegg87l9FH6HgsQu+mGn+3aC+LUDoCm6zFxjfG9XznVyu9jvtxb0SPkmjoj
	BTPSdQNH4MPh+s3rllUKm4VVE20G3E2t978gi2eXc4Mcc9+ZBIPViIji8Pvaz5Bx6MTev9PME2yFt
	NX4nSn4WjRU8WJliKyHEjx4u5CmLdjeOvTLRfFL0Q62Mvnr95TkZxFhQivolLsHokDf9loRGc9gnK
	abHLU/1dz7AYt+mV732Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqt4r-0003S5-FN; Mon, 13 Jan 2020 06:19:53 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqt4h-0003Qe-K6
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 06:19:45 +0000
Received: by mail-qk1-x743.google.com with SMTP id c17so7527591qkg.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 12 Jan 2020 22:19:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NjRr9TqgpmMrAVeoghWMBXd1ZgBA7Z+irKgKROJlv7w=;
 b=oKpCh9Neh3fc+aXwIUAB/tiw2nGsLH7HPBN6SUxCflRgo2UsaHKF1Rx2aVu8+gljzZ
 82jSMTQrtUZPpw4BrXfu7LlSCMQ4FrkT1hkkvRuqbOe0jJCR/c8pmBhfckyeDIv30JV3
 e4w9ziCKuzgYiOIWc9HP5tVfOg/50fPFhMPOA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NjRr9TqgpmMrAVeoghWMBXd1ZgBA7Z+irKgKROJlv7w=;
 b=mRC0/KXAwVF0G+oXR4+l3NAYhg2f8AoLAmse94zChkv/A5JVSdZcomRTmegvG4qrfy
 I4Hn7+G884o/MbrKzZnRY+4QnlNrg530vNZEHbyewsyE/ofe1fHUY5KWwhAVsvrEaLRm
 GBa40zsngw9NVtMgMSz7aSyT64nmwg1d9OQCYWUi7kTjA+/RWUPFyEFkThXvlfPdup0p
 IGne2F1mJ83fFRKlfc+VhpZLJUceQQabAFckyQU90/bUZ+3fVkW3Lb5SCTRhxjK14LD7
 OEMQT9UF6PwO5PwwL8n7d7KFtKvf27VzFlzVssCgHcvWnbucyvhMPw11QaslOYIvZ9OD
 ZliQ==
X-Gm-Message-State: APjAAAXNCImxF6KYPnM5LqX49fCaqugD6aZ5pehrbijPdDtFtSkc3JHl
 u+9LF5v5YWBMjlUGkiyexgcktyZ3VPKfMTNpH26Osw==
X-Google-Smtp-Source: APXvYqzA0S+930GfQqHyxhU3+UoYDL7XD6vSsgbjWChKCawPdFoGi9QyBy3cS03ZIJQTrcCFM5FAqgiEixxHtgbOZGk=
X-Received: by 2002:a37:6551:: with SMTP id z78mr15344155qkb.144.1578896382357; 
 Sun, 12 Jan 2020 22:19:42 -0800 (PST)
MIME-Version: 1.0
References: <1578639862-14480-1-git-send-email-jiaxin.yu@mediatek.com>
 <1578639862-14480-3-git-send-email-jiaxin.yu@mediatek.com>
In-Reply-To: <1578639862-14480-3-git-send-email-jiaxin.yu@mediatek.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Mon, 13 Jan 2020 14:19:31 +0800
Message-ID: <CANMq1KBPLCVW=LkmbYFjGwGCo=EeGShW3pom=AS+uEczuCUV_A@mail.gmail.com>
Subject: Re: [PATCH v11 2/3] watchdog: mtk_wdt: mt8183: Add reset controller
To: Jiaxin Yu <jiaxin.yu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_221943_686801_FE22BC0A 
X-CRM114-Status: GOOD (  19.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Devicetree List <devicetree@vger.kernel.org>,
 Yong Liang <yong.liang@mediatek.com>, freddy.hsin@mediatek.com,
 linux-watchdog@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 lkml <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Yingjoe Chen <yingjoe.chen@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, chang-an.chen@mediatek.com,
 wim@linux-watchdog.org, linux@roeck-us.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 10, 2020 at 3:04 PM Jiaxin Yu <jiaxin.yu@mediatek.com> wrote:
>
> Add reset controller API in watchdog driver.
> Besides watchdog, MTK toprgu module alsa provide sub-system (eg, audio,
> camera, codec and connectivity) software reset functionality.
>
> Signed-off-by: yong.liang <yong.liang@mediatek.com>
> Signed-off-by: Jiaxin Yu <jiaxin.yu@mediatek.com>

Since there was a doubt about the history of the tags, trying to detangle:

> Reviewed-by: Yingjoe Chen <yingjoe.chen@mediatek.com>
> Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>

This comes from v7 (https://patchwork.kernel.org/patch/11311039/),
that also had MT2712, but otherwise the patch is functionally similar.

> Reviewed-by: Rob Herring <robh@kernel.org>
> Reviewed-by: Guenter Roeck <groeck7@gmail.com>

I don't see these tags anywhere in the history, please drop them.

> ---
>  drivers/watchdog/mtk_wdt.c | 99 +++++++++++++++++++++++++++++++++++++-
>  1 file changed, 98 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/watchdog/mtk_wdt.c b/drivers/watchdog/mtk_wdt.c
> index 9c3d0033260d..e88aacb0404d 100644
> --- a/drivers/watchdog/mtk_wdt.c
> +++ b/drivers/watchdog/mtk_wdt.c
> @@ -9,6 +9,8 @@
>   * Based on sunxi_wdt.c
>   */
>
> +#include <dt-bindings/reset-controller/mt8183-resets.h>
> +#include <linux/delay.h>
>  #include <linux/err.h>
>  #include <linux/init.h>
>  #include <linux/io.h>
> @@ -16,10 +18,11 @@
>  #include <linux/module.h>
>  #include <linux/moduleparam.h>
>  #include <linux/of.h>
> +#include <linux/of_device.h>
>  #include <linux/platform_device.h>
> +#include <linux/reset-controller.h>
>  #include <linux/types.h>
>  #include <linux/watchdog.h>
> -#include <linux/delay.h>
>
>  #define WDT_MAX_TIMEOUT                31
>  #define WDT_MIN_TIMEOUT                1
> @@ -44,6 +47,9 @@
>  #define WDT_SWRST              0x14
>  #define WDT_SWRST_KEY          0x1209
>
> +#define WDT_SWSYSRST           0x18U
> +#define WDT_SWSYS_RST_KEY      0x88000000
> +
>  #define DRV_NAME               "mtk-wdt"
>  #define DRV_VERSION            "1.0"
>
> @@ -53,8 +59,90 @@ static unsigned int timeout;
>  struct mtk_wdt_dev {
>         struct watchdog_device wdt_dev;
>         void __iomem *wdt_base;
> +       spinlock_t lock; /* protects WDT_SWSYSRST reg */
> +       struct reset_controller_dev rcdev;
> +};
> +
> +struct mtk_wdt_data {
> +       int toprgu_sw_rst_num;
>  };
>
> +static const struct mtk_wdt_data mt8183_data = {
> +       .toprgu_sw_rst_num = MT8183_TOPRGU_SW_RST_NUM,
> +};
> +
> +static int toprgu_reset_update(struct reset_controller_dev *rcdev,
> +                              unsigned long id, bool assert)
> +{
> +       unsigned int tmp;
> +       unsigned long flags;
> +       struct mtk_wdt_dev *data =
> +                container_of(rcdev, struct mtk_wdt_dev, rcdev);
> +
> +       spin_lock_irqsave(&data->lock, flags);
> +
> +       tmp = readl(data->wdt_base + WDT_SWSYSRST);
> +       if (assert)
> +               tmp |= BIT(id);
> +       else
> +               tmp &= ~BIT(id);
> +       tmp |= WDT_SWSYS_RST_KEY;
> +       writel(tmp, data->wdt_base + WDT_SWSYSRST);
> +
> +       spin_unlock_irqrestore(&data->lock, flags);
> +
> +       return 0;
> +}
> +
> +static int toprgu_reset_assert(struct reset_controller_dev *rcdev,
> +                              unsigned long id)
> +{
> +       return toprgu_reset_update(rcdev, id, true);
> +}
> +
> +static int toprgu_reset_deassert(struct reset_controller_dev *rcdev,
> +                                unsigned long id)
> +{
> +       return toprgu_reset_update(rcdev, id, false);
> +}
> +
> +static int toprgu_reset(struct reset_controller_dev *rcdev,
> +                       unsigned long id)
> +{
> +       int ret;
> +
> +       ret = toprgu_reset_assert(rcdev, id);
> +       if (ret)
> +               return ret;
> +
> +       return toprgu_reset_deassert(rcdev, id);
> +}
> +
> +static const struct reset_control_ops toprgu_reset_ops = {
> +       .assert = toprgu_reset_assert,
> +       .deassert = toprgu_reset_deassert,
> +       .reset = toprgu_reset,
> +};
> +
> +static int toprgu_register_reset_controller(struct platform_device *pdev,
> +                                           int rst_num)
> +{
> +       int ret;
> +       struct mtk_wdt_dev *mtk_wdt = platform_get_drvdata(pdev);
> +
> +       spin_lock_init(&mtk_wdt->lock);
> +
> +       mtk_wdt->rcdev.owner = THIS_MODULE;
> +       mtk_wdt->rcdev.nr_resets = rst_num;
> +       mtk_wdt->rcdev.ops = &toprgu_reset_ops;
> +       mtk_wdt->rcdev.of_node = pdev->dev.of_node;
> +       ret = devm_reset_controller_register(&pdev->dev, &mtk_wdt->rcdev);
> +       if (ret != 0)
> +               dev_err(&pdev->dev,
> +                       "couldn't register wdt reset controller: %d\n", ret);
> +       return ret;
> +}
> +
>  static int mtk_wdt_restart(struct watchdog_device *wdt_dev,
>                            unsigned long action, void *data)
>  {
> @@ -155,6 +243,7 @@ static int mtk_wdt_probe(struct platform_device *pdev)
>  {
>         struct device *dev = &pdev->dev;
>         struct mtk_wdt_dev *mtk_wdt;
> +       const struct mtk_wdt_data *wdt_data;
>         int err;
>
>         mtk_wdt = devm_kzalloc(dev, sizeof(*mtk_wdt), GFP_KERNEL);
> @@ -190,6 +279,13 @@ static int mtk_wdt_probe(struct platform_device *pdev)
>         dev_info(dev, "Watchdog enabled (timeout=%d sec, nowayout=%d)\n",
>                  mtk_wdt->wdt_dev.timeout, nowayout);
>
> +       wdt_data = of_device_get_match_data(dev);
> +       if (wdt_data) {
> +               err = toprgu_register_reset_controller(pdev,
> +                                                      wdt_data->toprgu_sw_rst_num);
> +               if (err)
> +                       return err;
> +       }
>         return 0;
>  }
>
> @@ -219,6 +315,7 @@ static int mtk_wdt_resume(struct device *dev)
>
>  static const struct of_device_id mtk_wdt_dt_ids[] = {
>         { .compatible = "mediatek,mt6589-wdt" },
> +       { .compatible = "mediatek,mt8183-wdt", .data = &mt8183_data },
>         { /* sentinel */ }
>  };
>  MODULE_DEVICE_TABLE(of, mtk_wdt_dt_ids);
> --
> 2.18.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
