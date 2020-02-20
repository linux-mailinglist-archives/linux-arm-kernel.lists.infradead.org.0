Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 552A1166351
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 17:40:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OoFbxxImBB/hFk7FMl3y9//KcL7uy8KLl3C8Nmjw7Ss=; b=n32tMiph/PaKxQ
	k4H/GIUuJ0Cq0TKuvjCJ09YVDUqFf1O+fbpqM0me2UmY9lrhWPEUo1pLBKmEH3Q+n21t3oTw19IsP
	b2Yl5Qas4kQAjPZM8+qLPMw7aQAxCbgQueoJbipfMzr4wjHQF/HS7VMMP2LaMJ0wPLcgeyfp3ou6B
	aunmMkq+sk9Beh39VJ0Al5hSCnn2vUEhMcRzmurdNQeEQPRqq5hqzt3W+bQRMGjmHr3F+QybVtLNr
	F0f1QNExh/KiDJ5mPSwYuIPD6CKDUrrUDEho3zPzcW/sCXCgr/RZAKhzzcPKSuTj03FkdXRtpBo0t
	JvQnzGZ55bv9uzyaLhsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4os3-0006zi-HD; Thu, 20 Feb 2020 16:40:15 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4orv-0006YX-EX
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 16:40:09 +0000
Received: by mail-wm1-x343.google.com with SMTP id s10so2722040wmh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 08:40:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=T8wvKjlefqfXFqJVlV8HQ9fed6fOUrFPLYsYuyXQJsc=;
 b=KD4LUyGZ/1BVloNtPKSarAXfsISTN4xbWaVgWNfdncTz/qaUX7KgNrisc3m+qPHasq
 majehoINj2pN2ZjotnmBIc6qKQBT1zAlcubRL6XzzC2JV9WfEhbS55FXQMjAyyEpK3ws
 kocGdv5IBgiQNZ7C7Y8lokT4ylrl90UjwP9+PKzvi6ftyxeLTu5IcEcPeBphtdeyx5i2
 OsahYJsAu4J84u1LShmSseucLBtGEUVcy+f2iPFiBx0WnqBNaIp9M2SknwADSXzjuOm0
 jj/3tVodyJrQGbGEHdjxaqhUKwBH+iT30cl0fDl098/5mKG1Pv5qLIG4ixGLc/cd6xe1
 TN5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=T8wvKjlefqfXFqJVlV8HQ9fed6fOUrFPLYsYuyXQJsc=;
 b=bFbBj8yFrlPoZzLXk2iO6FIv0oCdRb3lCI4inO6pIeMu+pJNleOS0f7c+B6nEGei7j
 BYYo8XWvYKdcS9oy7BJLlJl2Q36HAAUW3x8vn+G5F+N0B1+YUwb4z3/zWPl4wk+IMXeO
 lTnUbKQgCVk+0SFE6NnmsCeRM3q7m0yWwikakwP4lLJJ6KTlwzNEkDiIY5ixyPQ8aD32
 k6jS0BsfddQy2amrhz65S94ilxHC2dVib4iro2rsb2fp1JCR7Vxo3+1vmjafA/ftwa8o
 m1/i0XVkjfeDTDQTXVYY5zb52WTiVG4MQuE5pbNSV6SQmwjp4U6C7nGhxESfiQ3H9wQS
 XmIg==
X-Gm-Message-State: APjAAAXZZ3NC0iemghLHWoG5WYYmMCmGa7d4IrCpRJeU20l564O3VpMi
 wLOMkgeBuGYyLa24oQihHPOUd3RqUhLQlTNBvEAHNNdt
X-Google-Smtp-Source: APXvYqwkf835f50UsguvjN0cQ7ua7prvHuBgeEK5CQM0QeHyuBi4EBfRDg+VxNRdJlYg3S55ARTKcRM1btGen1oBtTk=
X-Received: by 2002:a05:600c:230d:: with SMTP id
 13mr5645941wmo.13.1582216805562; 
 Thu, 20 Feb 2020 08:40:05 -0800 (PST)
MIME-Version: 1.0
References: <20200114170231.16421-1-andrew.smirnov@gmail.com>
In-Reply-To: <20200114170231.16421-1-andrew.smirnov@gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 20 Feb 2020 08:39:54 -0800
Message-ID: <CAHQ1cqGYkJA6a6KZ8fbyM=x-Uo7fJ23u-Ywv___0zHWx8swa2w@mail.gmail.com>
Subject: Re: [PATCH] PCI: imx6: Add L1SS support for i.MX8MQ
To: linux-pci@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_084007_524954_556C1925 
X-CRM114-Status: GOOD (  21.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andrew.smirnov[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Richard Zhu <hongxing.zhu@nxp.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Chris Healy <cphealy@gmail.com>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 14, 2020 at 9:02 AM Andrey Smirnov <andrew.smirnov@gmail.com> wrote:
>
> Add code to configure PCI IP block to utilize supported ASPM features.
>
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Cc: Bjorn Helgaas <bhelgaas@google.com>
> Cc: Chris Healy <cphealy@gmail.com>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: Richard Zhu <hongxing.zhu@nxp.com>
> Cc: linux-imx@nxp.com
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> Cc: linux-pci@vger.kernel.org
> ---
>  drivers/pci/controller/dwc/pci-imx6.c | 72 ++++++++++++++++++++++-----
>  1 file changed, 60 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/pci/controller/dwc/pci-imx6.c b/drivers/pci/controller/dwc/pci-imx6.c
> index acfbd34032a8..3cc94ab7d22b 100644
> --- a/drivers/pci/controller/dwc/pci-imx6.c
> +++ b/drivers/pci/controller/dwc/pci-imx6.c
> @@ -40,6 +40,9 @@
>  #define IMX8MQ_GPR12_PCIE2_CTRL_DEVICE_TYPE    GENMASK(11, 8)
>  #define IMX8MQ_PCIE2_BASE_ADDR                 0x33c00000
>
> +#define IMX8MQ_PCIE_LINK_CAP_L1EL_64US         (0x6 << 15)
> +#define IMX8MQ_PCIE_CTRL_APPS_CLK_REQ          BIT(4)
> +
>  #define to_imx6_pcie(x)        dev_get_drvdata((x)->dev)
>
>  enum imx6_pcie_variants {
> @@ -64,12 +67,14 @@ struct imx6_pcie {
>         struct dw_pcie          *pci;
>         int                     reset_gpio;
>         bool                    gpio_active_high;
> +       bool                    supports_clkreq;
>         struct clk              *pcie_bus;
>         struct clk              *pcie_phy;
>         struct clk              *pcie_inbound_axi;
>         struct clk              *pcie;
>         struct clk              *pcie_aux;
>         struct regmap           *iomuxc_gpr;
> +       struct regmap           *src;
>         u32                     controller_id;
>         struct reset_control    *pciephy_reset;
>         struct reset_control    *apps_reset;
> @@ -421,11 +426,17 @@ static unsigned int imx6_pcie_grp_offset(const struct imx6_pcie *imx6_pcie)
>         return imx6_pcie->controller_id == 1 ? IOMUXC_GPR16 : IOMUXC_GPR14;
>  }
>
> +static unsigned int
> +imx6_pcie_pciphy_rcr_offset(const struct imx6_pcie *imx6_pcie)
> +{
> +       WARN_ON(imx6_pcie->drvdata->variant != IMX8MQ);
> +       return imx6_pcie->controller_id == 1 ? 0x48 : 0x2C;
> +}
> +
>  static int imx6_pcie_enable_ref_clk(struct imx6_pcie *imx6_pcie)
>  {
>         struct dw_pcie *pci = imx6_pcie->pci;
>         struct device *dev = pci->dev;
> -       unsigned int offset;
>         int ret = 0;
>
>         switch (imx6_pcie->drvdata->variant) {
> @@ -463,17 +474,19 @@ static int imx6_pcie_enable_ref_clk(struct imx6_pcie *imx6_pcie)
>                         break;
>                 }
>
> -               offset = imx6_pcie_grp_offset(imx6_pcie);
> -               /*
> -                * Set the over ride low and enabled
> -                * make sure that REF_CLK is turned on.
> -                */
> -               regmap_update_bits(imx6_pcie->iomuxc_gpr, offset,
> -                                  IMX8MQ_GPR_PCIE_CLK_REQ_OVERRIDE,
> -                                  0);
> -               regmap_update_bits(imx6_pcie->iomuxc_gpr, offset,
> -                                  IMX8MQ_GPR_PCIE_CLK_REQ_OVERRIDE_EN,
> -                                  IMX8MQ_GPR_PCIE_CLK_REQ_OVERRIDE_EN);
> +               if (!imx6_pcie->supports_clkreq) {
> +                       unsigned int offset = imx6_pcie_grp_offset(imx6_pcie);
> +                       /*
> +                        * Set the over ride low and enabled
> +                        * make sure that REF_CLK is turned on.
> +                        */
> +                       regmap_update_bits(imx6_pcie->iomuxc_gpr, offset,
> +                                          IMX8MQ_GPR_PCIE_CLK_REQ_OVERRIDE,
> +                                          0);
> +                       regmap_update_bits(imx6_pcie->iomuxc_gpr, offset,
> +                                        IMX8MQ_GPR_PCIE_CLK_REQ_OVERRIDE_EN,
> +                                        IMX8MQ_GPR_PCIE_CLK_REQ_OVERRIDE_EN);
> +               }

Ugh, I just realized all of my testing was implicitly relying on
bootloader configuring those CLKREQ overrides bits, so all of the code
related to in in this patch is bogus and broken. Glad it didn't get
applied. Will submit corrected v2 once I work out the right way to do
this.

>                 break;
>         }
>
> @@ -547,6 +560,27 @@ static void imx6_pcie_deassert_core_reset(struct imx6_pcie *imx6_pcie)
>         switch (imx6_pcie->drvdata->variant) {
>         case IMX8MQ:
>                 reset_control_deassert(imx6_pcie->pciephy_reset);
> +               if (imx6_pcie->supports_clkreq) {
> +                       u32 lcr;
> +
> +                       regmap_update_bits(imx6_pcie->src,
> +                               imx6_pcie_pciphy_rcr_offset(imx6_pcie),
> +                               IMX8MQ_PCIE_CTRL_APPS_CLK_REQ,
> +                               IMX8MQ_PCIE_CTRL_APPS_CLK_REQ);
> +                       /*
> +                        * Configure the L1 latency of rc to less than
> +                        * 64us Otherwise, the L1/L1SUB wouldn't be
> +                        * enable by ASPM.
> +                        */
> +                       dw_pcie_dbi_ro_wr_en(pci);
> +
> +                       lcr  = dw_pcie_readl_dbi2(pci, PCIE_RC_LCR);
> +                       lcr &= ~PCI_EXP_LNKCAP_L1EL;
> +                       lcr |= IMX8MQ_PCIE_LINK_CAP_L1EL_64US;
> +                       dw_pcie_writel_dbi2(pci, PCIE_RC_LCR, lcr);
> +
> +                       dw_pcie_dbi_ro_wr_dis(pci);
> +               }
>                 break;
>         case IMX7D:
>                 reset_control_deassert(imx6_pcie->pciephy_reset);
> @@ -1054,6 +1088,11 @@ static int imx6_pcie_probe(struct platform_device *pdev)
>         pci->dbi_base = devm_ioremap_resource(dev, dbi_base);
>         if (IS_ERR(pci->dbi_base))
>                 return PTR_ERR(pci->dbi_base);
> +       /*
> +        * Configure dbi_base2 to access DBI space with CS2
> +        * asserted
> +        */
> +       pci->dbi_base2 = pci->dbi_base + SZ_1M;
>
>         /* Fetch GPIOs */
>         imx6_pcie->reset_gpio = of_get_named_gpio(node, "reset-gpio", 0);
> @@ -1107,6 +1146,13 @@ static int imx6_pcie_probe(struct platform_device *pdev)
>                         dev_err(dev, "pcie_aux clock source missing or invalid\n");
>                         return PTR_ERR(imx6_pcie->pcie_aux);
>                 }
> +               imx6_pcie->src =
> +                       syscon_regmap_lookup_by_compatible("fsl,imx8mq-src");
> +               if (IS_ERR(imx6_pcie->src)) {
> +                       dev_err(dev, "SRC regmap is missing or invalid\n");
> +                       return PTR_ERR(imx6_pcie->src);
> +               }
> +
>                 /* fall through */
>         case IMX7D:
>                 if (dbi_base->start == IMX8MQ_PCIE2_BASE_ADDR)
> @@ -1179,6 +1225,8 @@ static int imx6_pcie_probe(struct platform_device *pdev)
>                 imx6_pcie->vpcie = NULL;
>         }
>
> +       imx6_pcie->supports_clkreq = of_property_read_bool(node,
> +                                                          "supports-clkreq");
>         platform_set_drvdata(pdev, imx6_pcie);
>
>         ret = imx6_pcie_attach_pd(dev);
> --
> 2.21.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
