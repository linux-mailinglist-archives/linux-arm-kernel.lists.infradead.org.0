Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E8205000D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 05:09:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cOfn3B3OLEjkKfT7FWaewCw7Klgz9sTNnozgFmper8A=; b=Dke5VvCrEuOpdG
	3IrTgDUl75g07ULWpgOsdQVJycaStXZkChgHa8L3j6cNd+NoJpUkpMxF0AXWQAf5uTAWY42JZZ71Z
	6vXb/FQxLHFqG0WtqaEbIarlgn3l5B/ODmp5jYzt7hor75w2uDqpLwCIC/GDVD1ErVjIQZ0UQQ3ux
	FKOxEFg+rbhNwxHtytRsfXRcpSBm96s1CatF2WAtzuQ1iSvLtWv19O7snXHCAiKrBSHP+SpQc5/ij
	QEmVFfoH5bUjMHYuVQwT+AtDUKOCghA/Ia6WKHlO7w/0/di+9v9N4zglIkG+Teeu/6gjO6k2AGgGa
	eYheCwOPIoWup4gi6XnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfFMJ-0008JK-Sg; Mon, 24 Jun 2019 03:09:31 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfFM6-0008Ix-K1
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 03:09:20 +0000
Received: by mail-io1-xd42.google.com with SMTP id r185so607057iod.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 23 Jun 2019 20:09:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ka07R5MBT3qdEd4LNE8j7RfXe7ufFgvDbzjplApYGDA=;
 b=Bp1zH7h0J+eGgC3P+i4bMVJyd2LukoGYodB+H5UZMi5tdMreUQdPTHgdo2TFZrvw1k
 eaIGIgKJWJOMqn1jpJOfjMVu098KpasLedWXQKczMCbH/ubVYedYlbyRad/WYAP52ux7
 KnH6/0tS1v9GjlZH5Bkcl2YgSlzINeUs1wwbFKlf5YgK0YLsTaueAb5Ocqm2ZL6ixLCO
 IlkHx0HXzw5etMNDr0fWOh/IuJPwuaGdxrNET9NG10nZstH94SDC09PwiSodONizJAef
 cnCgVALxraWfqpnOFHcmXM+HsAN7I8NzI0hwK6ra62hJeKuBkCIU5yXAIBH4tSmXexlL
 oTnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ka07R5MBT3qdEd4LNE8j7RfXe7ufFgvDbzjplApYGDA=;
 b=MVz1pTItyJKC+WalJ6XSnRNyUj5i0CEsVZtTDB9u4KpP2qMuF3lP/HLSaiEFRtCYLv
 4ae0mflvogmNIaEbapRQpovaEwpzREjSXer1I+UwtI2YUkMTK3INwIacesUGfcSPdflJ
 aJfm017Bjz1AGKLSCirmzPRRNgXKURdls3a2HMreZd1i2aJGkAQOyBLTQsapAma5ACxz
 3kxfnGnn5foA8JicblE0P/c519m4v2kRdl8K9yOWf5dDsjbASB3cNvw6tYi5unYJ9At+
 KKDmeoPPezZMorPERRTVg4uooZqQC02KZ7Xn9go2HgRQCvtlMypR+Fw1gVvBI9h88NkI
 EfRg==
X-Gm-Message-State: APjAAAWReqWm3aDtm1eqFLgzM6rTSfvhrIC+T03BQ3bDYJBNd2n4/pLU
 hi/TLaRmUL66Lan05uWNSdz8Dpa57iibqeUV/Cs=
X-Google-Smtp-Source: APXvYqxD8VGTjTK70nPC+63PvSZM6zUi+XqoRijUjB177Z58G/jcQot2k6naC5+rm52XUaWVX7MD6cP0JiCc0XP1U6c=
X-Received: by 2002:a02:6516:: with SMTP id u22mr23229404jab.49.1561345757250; 
 Sun, 23 Jun 2019 20:09:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190624020258.21690-1-peter.chen@nxp.com>
 <20190624020258.21690-3-peter.chen@nxp.com>
In-Reply-To: <20190624020258.21690-3-peter.chen@nxp.com>
From: Peter Chen <hzpeterchen@gmail.com>
Date: Mon, 24 Jun 2019 11:09:05 +0800
Message-ID: <CAL411-r_=44bAi6zupcM7cG7-ivcEH_Mu3YYffoE8Ve0d+xqRg@mail.gmail.com>
Subject: Re: [PATCH v5 2/8] usb: phy: phy-mxs-usb: add imx7ulp support
To: Peter Chen <peter.chen@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_200918_689367_64D209B2 
X-CRM114-Status: GOOD (  18.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hzpeterchen[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: aisheng.dong@nxp.com, balbi@kernel.org, sergei.shtylyov@cogentembedded.com,
 devicetree@vger.kernel.org, USB list <linux-usb@vger.kernel.org>,
 chunfeng.yun@mediatek.com, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, fabio.estevam@nxp.com, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> At imx7ulp, the USB related analog register is located in PHY register
> region too, so we need to control PLL at PHY driver directly.
>

Hi Felipe,

Would you please have a review for Patch 1 and Patch 2 in this series?
Thanks.

Peter

> Signed-off-by: Peter Chen <peter.chen@nxp.com>
> ---
>  drivers/usb/phy/phy-mxs-usb.c | 67 ++++++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 66 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/usb/phy/phy-mxs-usb.c b/drivers/usb/phy/phy-mxs-usb.c
> index 6fa16ab31e2e..70b8c8248caf 100644
> --- a/drivers/usb/phy/phy-mxs-usb.c
> +++ b/drivers/usb/phy/phy-mxs-usb.c
> @@ -17,9 +17,11 @@
>  #include <linux/of_device.h>
>  #include <linux/regmap.h>
>  #include <linux/mfd/syscon.h>
> +#include <linux/iopoll.h>
>
>  #define DRIVER_NAME "mxs_phy"
>
> +/* Register Macro */
>  #define HW_USBPHY_PWD                          0x00
>  #define HW_USBPHY_TX                           0x10
>  #define HW_USBPHY_CTRL                         0x30
> @@ -37,6 +39,11 @@
>  #define GM_USBPHY_TX_TXCAL45DN(x)            (((x) & 0xf) << 8)
>  #define GM_USBPHY_TX_D_CAL(x)                (((x) & 0xf) << 0)
>
> +/* imx7ulp */
> +#define HW_USBPHY_PLL_SIC                      0xa0
> +#define HW_USBPHY_PLL_SIC_SET                  0xa4
> +#define HW_USBPHY_PLL_SIC_CLR                  0xa8
> +
>  #define BM_USBPHY_CTRL_SFTRST                  BIT(31)
>  #define BM_USBPHY_CTRL_CLKGATE                 BIT(30)
>  #define BM_USBPHY_CTRL_OTG_ID_VALUE            BIT(27)
> @@ -55,6 +62,12 @@
>  #define BM_USBPHY_IP_FIX                       (BIT(17) | BIT(18))
>
>  #define BM_USBPHY_DEBUG_CLKGATE                        BIT(30)
> +/* imx7ulp */
> +#define BM_USBPHY_PLL_LOCK                     BIT(31)
> +#define BM_USBPHY_PLL_REG_ENABLE               BIT(21)
> +#define BM_USBPHY_PLL_BYPASS                   BIT(16)
> +#define BM_USBPHY_PLL_POWER                    BIT(12)
> +#define BM_USBPHY_PLL_EN_USB_CLKS              BIT(6)
>
>  /* Anatop Registers */
>  #define ANADIG_ANA_MISC0                       0x150
> @@ -168,6 +181,9 @@ static const struct mxs_phy_data imx6ul_phy_data = {
>         .flags = MXS_PHY_DISCONNECT_LINE_WITHOUT_VBUS,
>  };
>
> +static const struct mxs_phy_data imx7ulp_phy_data = {
> +};
> +
>  static const struct of_device_id mxs_phy_dt_ids[] = {
>         { .compatible = "fsl,imx6sx-usbphy", .data = &imx6sx_phy_data, },
>         { .compatible = "fsl,imx6sl-usbphy", .data = &imx6sl_phy_data, },
> @@ -175,6 +191,7 @@ static const struct of_device_id mxs_phy_dt_ids[] = {
>         { .compatible = "fsl,imx23-usbphy", .data = &imx23_phy_data, },
>         { .compatible = "fsl,vf610-usbphy", .data = &vf610_phy_data, },
>         { .compatible = "fsl,imx6ul-usbphy", .data = &imx6ul_phy_data, },
> +       { .compatible = "fsl,imx7ulp-usbphy", .data = &imx7ulp_phy_data, },
>         { /* sentinel */ }
>  };
>  MODULE_DEVICE_TABLE(of, mxs_phy_dt_ids);
> @@ -199,6 +216,11 @@ static inline bool is_imx6sl_phy(struct mxs_phy *mxs_phy)
>         return mxs_phy->data == &imx6sl_phy_data;
>  }
>
> +static inline bool is_imx7ulp_phy(struct mxs_phy *mxs_phy)
> +{
> +       return mxs_phy->data == &imx7ulp_phy_data;
> +}
> +
>  /*
>   * PHY needs some 32K cycles to switch from 32K clock to
>   * bus (such as AHB/AXI, etc) clock.
> @@ -222,14 +244,49 @@ static void mxs_phy_tx_init(struct mxs_phy *mxs_phy)
>         }
>  }
>
> +static int mxs_phy_pll_enable(void __iomem *base, bool enable)
> +{
> +       int ret = 0;
> +
> +       if (enable) {
> +               u32 value;
> +
> +               writel(BM_USBPHY_PLL_REG_ENABLE, base + HW_USBPHY_PLL_SIC_SET);
> +               writel(BM_USBPHY_PLL_BYPASS, base + HW_USBPHY_PLL_SIC_CLR);
> +               writel(BM_USBPHY_PLL_POWER, base + HW_USBPHY_PLL_SIC_SET);
> +               ret = readl_poll_timeout(base + HW_USBPHY_PLL_SIC,
> +                       value, (value & BM_USBPHY_PLL_LOCK) != 0,
> +                       100, 10000);
> +               if (ret)
> +                       return ret;
> +
> +               writel(BM_USBPHY_PLL_EN_USB_CLKS, base +
> +                               HW_USBPHY_PLL_SIC_SET);
> +       } else {
> +               writel(BM_USBPHY_PLL_EN_USB_CLKS, base +
> +                               HW_USBPHY_PLL_SIC_CLR);
> +               writel(BM_USBPHY_PLL_POWER, base + HW_USBPHY_PLL_SIC_CLR);
> +               writel(BM_USBPHY_PLL_BYPASS, base + HW_USBPHY_PLL_SIC_SET);
> +               writel(BM_USBPHY_PLL_REG_ENABLE, base + HW_USBPHY_PLL_SIC_CLR);
> +       }
> +
> +       return ret;
> +}
> +
>  static int mxs_phy_hw_init(struct mxs_phy *mxs_phy)
>  {
>         int ret;
>         void __iomem *base = mxs_phy->phy.io_priv;
>
> +       if (is_imx7ulp_phy(mxs_phy)) {
> +               ret = mxs_phy_pll_enable(base, true);
> +               if (ret)
> +                       return ret;
> +       }
> +
>         ret = stmp_reset_block(base + HW_USBPHY_CTRL);
>         if (ret)
> -               return ret;
> +               goto disable_pll;
>
>         /* Power up the PHY */
>         writel(0, base + HW_USBPHY_PWD);
> @@ -267,6 +324,11 @@ static int mxs_phy_hw_init(struct mxs_phy *mxs_phy)
>         mxs_phy_tx_init(mxs_phy);
>
>         return 0;
> +
> +disable_pll:
> +       if (is_imx7ulp_phy(mxs_phy))
> +               mxs_phy_pll_enable(base, false);
> +       return ret;
>  }
>
>  /* Return true if the vbus is there */
> @@ -388,6 +450,9 @@ static void mxs_phy_shutdown(struct usb_phy *phy)
>         writel(BM_USBPHY_CTRL_CLKGATE,
>                phy->io_priv + HW_USBPHY_CTRL_SET);
>
> +       if (is_imx7ulp_phy(mxs_phy))
> +               mxs_phy_pll_enable(phy->io_priv, false);
> +
>         clk_disable_unprepare(mxs_phy->clk);
>  }
>
> --
> 2.14.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
