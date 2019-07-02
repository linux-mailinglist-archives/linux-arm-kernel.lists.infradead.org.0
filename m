Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEA625C71D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 04:22:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=szWscDzWaNBMbnpTfIUKJwm1hRCrGb7l6HWQUCSRgrI=; b=cD7r39XQ/2okHN
	Qus3skHzOyrlJMyJG6+YWvKtC4+PnJFQxkQNuCf1wjzcdva/1z2t0Dd3cG0UxFElMYyy2VNGL7NS5
	fCOvzHwoRVqvYzHuIiTyE0i27H2DmMQLLm3MWG4gofukTuiGZqHB5hd5DoG/nIPIyTOCgQ0ilyHst
	YnfvaZ8eNU27jLQHlg4oyHyz/kkSBeg9f1ACZUh0ijIj7Qw4YHTgfOEYsWTsk+rYeK6Kr+jyB4jPw
	d9RRA4ACBxPajkWsRrhE6kXnnOgR7/Ch8o+v451x+frAf8Y8SNhW3fMuwXEUVk5k01Fus+uAya4BM
	yGLefmlsrnUqbjqoKYrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hi8Ra-0002dm-Py; Tue, 02 Jul 2019 02:22:55 +0000
Received: from mail-eopbgr130087.outbound.protection.outlook.com
 ([40.107.13.87] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hi8RO-0002cp-Kb
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 02:22:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s/gDAUpFXewypvzk2IdH6qNRNYJxfwIs6YnMoRAYLqM=;
 b=K7TGkKAfaTSWmYY7hakRWlcbAp3KnwoXgX+cx+Ci6zSqpLA8loa2zU6wR9VxG0oCUKMxMWC0WtJ4dyx7YUbNZDa4Eez4BHjuZn/6AVbSr3CakGqIguZsXQDrbep9E+DJmMMOd6V2ulHpfYrep6LWXpgd2GG2GTKLNMTaVCVjIBA=
Received: from VI1PR04MB5327.eurprd04.prod.outlook.com (20.177.52.16) by
 VI1PR04MB5519.eurprd04.prod.outlook.com (20.178.122.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.18; Tue, 2 Jul 2019 02:22:36 +0000
Received: from VI1PR04MB5327.eurprd04.prod.outlook.com
 ([fe80::c1bf:7842:6630:b87a]) by VI1PR04MB5327.eurprd04.prod.outlook.com
 ([fe80::c1bf:7842:6630:b87a%7]) with mapi id 15.20.2032.019; Tue, 2 Jul 2019
 02:22:36 +0000
From: Peter Chen <peter.chen@nxp.com>
To: Peter Chen <hzpeterchen@gmail.com>, "balbi@kernel.org" <balbi@kernel.org>
Subject: RE: [PATCH v5 2/8] usb: phy: phy-mxs-usb: add imx7ulp support
Thread-Topic: [PATCH v5 2/8] usb: phy: phy-mxs-usb: add imx7ulp support
Thread-Index: AQHVKjC2+eUELMfK2Ee5/v4ACES1I6aqH/uAgAyFV4A=
Date: Tue, 2 Jul 2019 02:22:36 +0000
Message-ID: <VI1PR04MB53271C703961E9DA4C04714A8BF80@VI1PR04MB5327.eurprd04.prod.outlook.com>
References: <20190624020258.21690-1-peter.chen@nxp.com>
 <20190624020258.21690-3-peter.chen@nxp.com>
 <CAL411-r_=44bAi6zupcM7cG7-ivcEH_Mu3YYffoE8Ve0d+xqRg@mail.gmail.com>
In-Reply-To: <CAL411-r_=44bAi6zupcM7cG7-ivcEH_Mu3YYffoE8Ve0d+xqRg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peter.chen@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 51f1d84e-2e80-47ac-956a-08d6fe942604
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB5519; 
x-ms-traffictypediagnostic: VI1PR04MB5519:
x-microsoft-antispam-prvs: <VI1PR04MB551941C32FA52B0AD6B51CEB8BF80@VI1PR04MB5519.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 008663486A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(366004)(396003)(136003)(376002)(346002)(199004)(189003)(54906003)(316002)(110136005)(55016002)(86362001)(5660300002)(71200400001)(71190400001)(256004)(44832011)(14444005)(7416002)(6116002)(68736007)(229853002)(305945005)(3846002)(7736002)(99286004)(66946007)(11346002)(66476007)(73956011)(52536014)(76116006)(66446008)(64756008)(33656002)(81166006)(8936002)(2501003)(66556008)(478600001)(81156014)(8676002)(486006)(2906002)(74316002)(186003)(102836004)(446003)(6506007)(76176011)(66066001)(53936002)(476003)(7696005)(6246003)(6436002)(14454004)(26005)(4326008)(9686003)(25786009);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5519;
 H:VI1PR04MB5327.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: j3igr7iDLTd7j0mMc6R5ElNXuYUdezHCEVlAV53A6QHL09XB8cF8wcqcc9qCDB3We0u4k7RbTSsalvNsNHXn236eIfE5t49RbjRcE0MKxvjeALlCPcuYJPvQ4aDi3LR+sX3+9Rr9+JiBXO8Z+LKUAcFGEyYXI5Rsjcn5TESfSlQFlE4lGpbM2IlYj//a57dHnnxvd1G+YGEAOHr52GuId9s8ypW+2l0tL/VMxd1Q0JvQergLUEVvJSTi1o9cc2FIe/FgX8b6pie0SiHKglKNw8ho+VofWAmJsMLiSpTDzrTzDXb9ZsekHGbdVmnAP0qVdAn7n+Kzvxxp3t3TH6ZSsXhSKAa05vC1chNZewovLvzoRqcykFlpGBImLmkVlIAfHsk/v1KysK861bm8El1bgPZ8Slq2P/IadQOJNmsTjT4=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 51f1d84e-2e80-47ac-956a-08d6fe942604
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jul 2019 02:22:36.4374 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: peter.chen@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5519
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_192242_675941_5E200C88 
X-CRM114-Status: GOOD (  20.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.87 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "sergei.shtylyov@cogentembedded.com" <sergei.shtylyov@cogentembedded.com>,
 USB list <linux-usb@vger.kernel.org>,
 "chunfeng.yun@mediatek.com" <chunfeng.yun@mediatek.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

 
> 
> Hi Felipe,
> 
> Would you please have a review for Patch 1 and Patch 2 in this series?
> Thanks.
> 

Ping...

The DTS and controller patches have already queued. Thanks.

Peter

> Peter
> 
> > Signed-off-by: Peter Chen <peter.chen@nxp.com>
> > ---
> >  drivers/usb/phy/phy-mxs-usb.c | 67
> > ++++++++++++++++++++++++++++++++++++++++++-
> >  1 file changed, 66 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/usb/phy/phy-mxs-usb.c
> > b/drivers/usb/phy/phy-mxs-usb.c index 6fa16ab31e2e..70b8c8248caf
> > 100644
> > --- a/drivers/usb/phy/phy-mxs-usb.c
> > +++ b/drivers/usb/phy/phy-mxs-usb.c
> > @@ -17,9 +17,11 @@
> >  #include <linux/of_device.h>
> >  #include <linux/regmap.h>
> >  #include <linux/mfd/syscon.h>
> > +#include <linux/iopoll.h>
> >
> >  #define DRIVER_NAME "mxs_phy"
> >
> > +/* Register Macro */
> >  #define HW_USBPHY_PWD                          0x00
> >  #define HW_USBPHY_TX                           0x10
> >  #define HW_USBPHY_CTRL                         0x30
> > @@ -37,6 +39,11 @@
> >  #define GM_USBPHY_TX_TXCAL45DN(x)            (((x) & 0xf) << 8)
> >  #define GM_USBPHY_TX_D_CAL(x)                (((x) & 0xf) << 0)
> >
> > +/* imx7ulp */
> > +#define HW_USBPHY_PLL_SIC                      0xa0
> > +#define HW_USBPHY_PLL_SIC_SET                  0xa4
> > +#define HW_USBPHY_PLL_SIC_CLR                  0xa8
> > +
> >  #define BM_USBPHY_CTRL_SFTRST                  BIT(31)
> >  #define BM_USBPHY_CTRL_CLKGATE                 BIT(30)
> >  #define BM_USBPHY_CTRL_OTG_ID_VALUE            BIT(27)
> > @@ -55,6 +62,12 @@
> >  #define BM_USBPHY_IP_FIX                       (BIT(17) | BIT(18))
> >
> >  #define BM_USBPHY_DEBUG_CLKGATE                        BIT(30)
> > +/* imx7ulp */
> > +#define BM_USBPHY_PLL_LOCK                     BIT(31)
> > +#define BM_USBPHY_PLL_REG_ENABLE               BIT(21)
> > +#define BM_USBPHY_PLL_BYPASS                   BIT(16)
> > +#define BM_USBPHY_PLL_POWER                    BIT(12)
> > +#define BM_USBPHY_PLL_EN_USB_CLKS              BIT(6)
> >
> >  /* Anatop Registers */
> >  #define ANADIG_ANA_MISC0                       0x150
> > @@ -168,6 +181,9 @@ static const struct mxs_phy_data imx6ul_phy_data = {
> >         .flags = MXS_PHY_DISCONNECT_LINE_WITHOUT_VBUS,
> >  };
> >
> > +static const struct mxs_phy_data imx7ulp_phy_data = { };
> > +
> >  static const struct of_device_id mxs_phy_dt_ids[] = {
> >         { .compatible = "fsl,imx6sx-usbphy", .data = &imx6sx_phy_data, },
> >         { .compatible = "fsl,imx6sl-usbphy", .data = &imx6sl_phy_data,
> > }, @@ -175,6 +191,7 @@ static const struct of_device_id mxs_phy_dt_ids[] = {
> >         { .compatible = "fsl,imx23-usbphy", .data = &imx23_phy_data, },
> >         { .compatible = "fsl,vf610-usbphy", .data = &vf610_phy_data, },
> >         { .compatible = "fsl,imx6ul-usbphy", .data = &imx6ul_phy_data,
> > },
> > +       { .compatible = "fsl,imx7ulp-usbphy", .data =
> > + &imx7ulp_phy_data, },
> >         { /* sentinel */ }
> >  };
> >  MODULE_DEVICE_TABLE(of, mxs_phy_dt_ids); @@ -199,6 +216,11 @@ static
> > inline bool is_imx6sl_phy(struct mxs_phy *mxs_phy)
> >         return mxs_phy->data == &imx6sl_phy_data;  }
> >
> > +static inline bool is_imx7ulp_phy(struct mxs_phy *mxs_phy) {
> > +       return mxs_phy->data == &imx7ulp_phy_data; }
> > +
> >  /*
> >   * PHY needs some 32K cycles to switch from 32K clock to
> >   * bus (such as AHB/AXI, etc) clock.
> > @@ -222,14 +244,49 @@ static void mxs_phy_tx_init(struct mxs_phy *mxs_phy)
> >         }
> >  }
> >
> > +static int mxs_phy_pll_enable(void __iomem *base, bool enable)
> > +{
> > +       int ret = 0;
> > +
> > +       if (enable) {
> > +               u32 value;
> > +
> > +               writel(BM_USBPHY_PLL_REG_ENABLE, base +
> HW_USBPHY_PLL_SIC_SET);
> > +               writel(BM_USBPHY_PLL_BYPASS, base +
> HW_USBPHY_PLL_SIC_CLR);
> > +               writel(BM_USBPHY_PLL_POWER, base +
> HW_USBPHY_PLL_SIC_SET);
> > +               ret = readl_poll_timeout(base + HW_USBPHY_PLL_SIC,
> > +                       value, (value & BM_USBPHY_PLL_LOCK) != 0,
> > +                       100, 10000);
> > +               if (ret)
> > +                       return ret;
> > +
> > +               writel(BM_USBPHY_PLL_EN_USB_CLKS, base +
> > +                               HW_USBPHY_PLL_SIC_SET);
> > +       } else {
> > +               writel(BM_USBPHY_PLL_EN_USB_CLKS, base +
> > +                               HW_USBPHY_PLL_SIC_CLR);
> > +               writel(BM_USBPHY_PLL_POWER, base +
> HW_USBPHY_PLL_SIC_CLR);
> > +               writel(BM_USBPHY_PLL_BYPASS, base +
> HW_USBPHY_PLL_SIC_SET);
> > +               writel(BM_USBPHY_PLL_REG_ENABLE, base +
> HW_USBPHY_PLL_SIC_CLR);
> > +       }
> > +
> > +       return ret;
> > +}
> > +
> >  static int mxs_phy_hw_init(struct mxs_phy *mxs_phy)
> >  {
> >         int ret;
> >         void __iomem *base = mxs_phy->phy.io_priv;
> >
> > +       if (is_imx7ulp_phy(mxs_phy)) {
> > +               ret = mxs_phy_pll_enable(base, true);
> > +               if (ret)
> > +                       return ret;
> > +       }
> > +
> >         ret = stmp_reset_block(base + HW_USBPHY_CTRL);
> >         if (ret)
> > -               return ret;
> > +               goto disable_pll;
> >
> >         /* Power up the PHY */
> >         writel(0, base + HW_USBPHY_PWD);
> > @@ -267,6 +324,11 @@ static int mxs_phy_hw_init(struct mxs_phy *mxs_phy)
> >         mxs_phy_tx_init(mxs_phy);
> >
> >         return 0;
> > +
> > +disable_pll:
> > +       if (is_imx7ulp_phy(mxs_phy))
> > +               mxs_phy_pll_enable(base, false);
> > +       return ret;
> >  }
> >
> >  /* Return true if the vbus is there */
> > @@ -388,6 +450,9 @@ static void mxs_phy_shutdown(struct usb_phy *phy)
> >         writel(BM_USBPHY_CTRL_CLKGATE,
> >                phy->io_priv + HW_USBPHY_CTRL_SET);
> >
> > +       if (is_imx7ulp_phy(mxs_phy))
> > +               mxs_phy_pll_enable(phy->io_priv, false);
> > +
> >         clk_disable_unprepare(mxs_phy->clk);
> >  }
> >
> > --
> > 2.14.1
> >
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
