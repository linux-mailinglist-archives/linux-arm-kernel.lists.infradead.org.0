Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67E9F1C479
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 10:12:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2/z72RKxgwtROxjvD7eOMpS7k/uJkKsSxnBJMIufTB8=; b=KTB931oUq0rByY
	77Rdhw37tzJie708z4Ja4AF2OOpkeozF+HATtqMOQxmJyFnOJqJVS2h62wNvl28sva6PHHlTAGxFt
	xFQyS2Afks+ASkno0E0t25OV8eY9Yk2L3TcSfPFbuoWKcJ6oIdNvs3Z7QskAZYTWAUiTWxCmOFW3b
	XmPmnbfFwUZDdUvA1+Pk57FnJNHG+FrDuECQHai5wtBihDaN3kk2h/g2W3uKNQ6b2sYv0fWPrLGs8
	SNFZNMTkF/dTM96Xcz9tDQlc8dGWJpKxkfapDNMnnx6tMm90abkS5Ui+Qf+LQV7TXnEantzLznMwG
	/loRBhBPJCzRM0q4nwEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQSY2-0007hp-Hq; Tue, 14 May 2019 08:12:30 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQSXu-0007gv-8I
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 08:12:23 +0000
X-UUID: b0a76b57f2f343679e2c33571790dc87-20190514
X-UUID: b0a76b57f2f343679e2c33571790dc87-20190514
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1054463371; Tue, 14 May 2019 00:12:07 -0800
Received: from MTKMBS33N1.mediatek.inc (172.27.4.75) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 14 May 2019 01:12:05 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS33N1.mediatek.inc
 (172.27.4.75) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Tue, 14 May 2019 16:12:03 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 14 May 2019 16:12:03 +0800
Message-ID: <1557821523.10179.284.camel@mhfsdcap03>
Subject: Re: [PATCH v2 2/8] usb: phy: phy-mxs-usb: add imx7ulp support
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Peter Chen <peter.chen@nxp.com>
Date: Tue, 14 May 2019 16:12:03 +0800
In-Reply-To: <20190514073529.29505-3-peter.chen@nxp.com>
References: <20190514073529.29505-1-peter.chen@nxp.com>
 <20190514073529.29505-3-peter.chen@nxp.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_011222_301493_62B67D5E 
X-CRM114-Status: GOOD (  21.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Aisheng Dong <aisheng.dong@nxp.com>, "balbi@kernel.org" <balbi@kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2019-05-14 at 07:38 +0000, Peter Chen wrote:
> At imx7ulp, the USB related analog register is located in PHY register
> region too, so we need to control PLL at PHY driver directly.
> 
> Signed-off-by: Peter Chen <peter.chen@nxp.com>
> ---
>  drivers/usb/phy/phy-mxs-usb.c | 76 ++++++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 75 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/usb/phy/phy-mxs-usb.c b/drivers/usb/phy/phy-mxs-usb.c
> index 1b1bb0ad40c3..90c96a8e9342 100644
> --- a/drivers/usb/phy/phy-mxs-usb.c
> +++ b/drivers/usb/phy/phy-mxs-usb.c
> @@ -20,6 +20,7 @@
>  
>  #define DRIVER_NAME "mxs_phy"
>  
> +/* Register Macro */
>  #define HW_USBPHY_PWD				0x00
>  #define HW_USBPHY_TX				0x10
>  #define HW_USBPHY_CTRL				0x30
> @@ -37,6 +38,11 @@
>  #define GM_USBPHY_TX_TXCAL45DN(x)            (((x) & 0xf) << 8)
>  #define GM_USBPHY_TX_D_CAL(x)                (((x) & 0xf) << 0)
>  
> +/* imx7ulp */
> +#define HW_USBPHY_PLL_SIC			0xa0
> +#define HW_USBPHY_PLL_SIC_SET			0xa4
> +#define HW_USBPHY_PLL_SIC_CLR			0xa8
> +
>  #define BM_USBPHY_CTRL_SFTRST			BIT(31)
>  #define BM_USBPHY_CTRL_CLKGATE			BIT(30)
>  #define BM_USBPHY_CTRL_OTG_ID_VALUE		BIT(27)
> @@ -55,6 +61,12 @@
>  #define BM_USBPHY_IP_FIX                       (BIT(17) | BIT(18))
>  
>  #define BM_USBPHY_DEBUG_CLKGATE			BIT(30)
> +/* imx7ulp */
> +#define BM_USBPHY_PLL_LOCK			BIT(31)
> +#define BM_USBPHY_PLL_REG_ENABLE		BIT(21)
> +#define BM_USBPHY_PLL_BYPASS			BIT(16)
> +#define BM_USBPHY_PLL_POWER			BIT(12)
> +#define BM_USBPHY_PLL_EN_USB_CLKS		BIT(6)
>  
>  /* Anatop Registers */
>  #define ANADIG_ANA_MISC0			0x150
> @@ -167,6 +179,9 @@ static const struct mxs_phy_data imx6ul_phy_data = {
>  	.flags = MXS_PHY_DISCONNECT_LINE_WITHOUT_VBUS,
>  };
>  
> +static const struct mxs_phy_data imx7ulp_phy_data = {
> +};
> +
>  static const struct of_device_id mxs_phy_dt_ids[] = {
>  	{ .compatible = "fsl,imx6sx-usbphy", .data = &imx6sx_phy_data, },
>  	{ .compatible = "fsl,imx6sl-usbphy", .data = &imx6sl_phy_data, },
> @@ -174,6 +189,7 @@ static const struct of_device_id mxs_phy_dt_ids[] = {
>  	{ .compatible = "fsl,imx23-usbphy", .data = &imx23_phy_data, },
>  	{ .compatible = "fsl,vf610-usbphy", .data = &vf610_phy_data, },
>  	{ .compatible = "fsl,imx6ul-usbphy", .data = &imx6ul_phy_data, },
> +	{ .compatible = "fsl,imx7ulp-usbphy", .data = &imx7ulp_phy_data, },
>  	{ /* sentinel */ }
>  };
>  MODULE_DEVICE_TABLE(of, mxs_phy_dt_ids);
> @@ -198,6 +214,11 @@ static inline bool is_imx6sl_phy(struct mxs_phy *mxs_phy)
>  	return mxs_phy->data == &imx6sl_phy_data;
>  }
>  
> +static inline bool is_imx7ulp_phy(struct mxs_phy *mxs_phy)
> +{
> +	return mxs_phy->data == &imx7ulp_phy_data;
> +}
> +
>  /*
>   * PHY needs some 32K cycles to switch from 32K clock to
>   * bus (such as AHB/AXI, etc) clock.
> @@ -221,14 +242,59 @@ static void mxs_phy_tx_init(struct mxs_phy *mxs_phy)
>  	}
>  }
>  
> +static int wait_for_pll_lock(const void __iomem *base)
> +{
> +	int loop_count = 100;
> +
> +	/* Wait for PLL to lock */
> +	do {
> +		if (readl(base + HW_USBPHY_PLL_SIC) & BM_USBPHY_PLL_LOCK)
> +			break;
> +		usleep_range(100, 150);
> +	} while (loop_count-- > 0);
> +
there is a common API readl_poll_timeout(), maybe you can try it.

> +	return readl(base + HW_USBPHY_PLL_SIC) & BM_USBPHY_PLL_LOCK
> +			? 0 : -ETIMEDOUT;
> +}
> +
> +static int mxs_phy_pll_enable(void __iomem *base, bool enable)
> +{
> +	int ret = 0;
> +
> +	if (enable) {
> +		writel(BM_USBPHY_PLL_REG_ENABLE, base + HW_USBPHY_PLL_SIC_SET);
> +		writel(BM_USBPHY_PLL_BYPASS, base + HW_USBPHY_PLL_SIC_CLR);
> +		writel(BM_USBPHY_PLL_POWER, base + HW_USBPHY_PLL_SIC_SET);
> +		ret = wait_for_pll_lock(base);
> +		if (ret)
> +			return ret;
> +		writel(BM_USBPHY_PLL_EN_USB_CLKS, base +
> +				HW_USBPHY_PLL_SIC_SET);
> +	} else {
> +		writel(BM_USBPHY_PLL_EN_USB_CLKS, base +
> +				HW_USBPHY_PLL_SIC_CLR);
> +		writel(BM_USBPHY_PLL_POWER, base + HW_USBPHY_PLL_SIC_CLR);
> +		writel(BM_USBPHY_PLL_BYPASS, base + HW_USBPHY_PLL_SIC_SET);
> +		writel(BM_USBPHY_PLL_REG_ENABLE, base + HW_USBPHY_PLL_SIC_CLR);
> +	}
> +
> +	return ret;
> +}
> +
>  static int mxs_phy_hw_init(struct mxs_phy *mxs_phy)
>  {
>  	int ret;
>  	void __iomem *base = mxs_phy->phy.io_priv;
>  
> +	if (is_imx7ulp_phy(mxs_phy)) {
> +		ret = mxs_phy_pll_enable(base, true);
> +		if (ret)
> +			return ret;
> +	}
> +
>  	ret = stmp_reset_block(base + HW_USBPHY_CTRL);
>  	if (ret)
> -		return ret;
> +		goto disable_pll;
>  
>  	/* Power up the PHY */
>  	writel(0, base + HW_USBPHY_PWD);
> @@ -253,6 +319,11 @@ static int mxs_phy_hw_init(struct mxs_phy *mxs_phy)
>  	mxs_phy_tx_init(mxs_phy);
>  
>  	return 0;
> +
> +disable_pll:
> +	if (is_imx7ulp_phy(mxs_phy))
> +		mxs_phy_pll_enable(base, false);
> +	return ret;
>  }
>  
>  /* Return true if the vbus is there */
> @@ -374,6 +445,9 @@ static void mxs_phy_shutdown(struct usb_phy *phy)
>  	writel(BM_USBPHY_CTRL_CLKGATE,
>  	       phy->io_priv + HW_USBPHY_CTRL_SET);
>  
> +	if (is_imx7ulp_phy(mxs_phy))
> +		mxs_phy_pll_enable(phy->io_priv, false);
> +
>  	clk_disable_unprepare(mxs_phy->clk);
>  }
>  



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
