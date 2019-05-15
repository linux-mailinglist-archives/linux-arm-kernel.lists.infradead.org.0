Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C4C11E71C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 05:23:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dqcnT+VJgFK+7xCviCoblZUyNUqh5KnITB82NbRytkA=; b=WRCOIWlxAxQQg1
	rR1WVgVjDs1VEKdFn+T7wBPO3SiHKLx0STvgkBatPr2ve10JHd3ORP4hX98aZlGs4H3sj7fqzt8zw
	9PSbMBuu17Hh/Ewbgd6NIVtsL7O3cGfeH3CFL8Ues/oGJuchyd3474ifQjoNZZ+ouOszLh4wuLuKn
	ormC9cSn1P7RPKAe/DawE869wFfwpX3HsvfwReP7+D+VV0xjbtg92kP6osAjBRzPzYnBiubHvRoSF
	ryRggP6wgbbyZ68MffQlhWibAph4NcAwzHli578ZypcCi2FMLPGksCY6ewPaThgA00GyCIgNGEQte
	8i/rl5JGN77nhW+30jPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQkWH-0000Wy-T9; Wed, 15 May 2019 03:23:53 +0000
Received: from mail-eopbgr40076.outbound.protection.outlook.com ([40.107.4.76]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQkWA-0000WX-Rk
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 03:23:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JFBhF9Itws187wrlQqkP8gO8nr8L/usDNTCbvBjihxc=;
 b=IoS2R6+nAoh33txFna3CvxTgwBq0EsQ0HPTIKCcA23prY1niDbUsoQ5H2eLC3Ze9P2aki3qpXuBGXES602D+HcLr5J4BPt6DivVvuzTIJEsKDwBKUwJD5j2rJ7K0Lk/A1paxkcqEN5UvrveR90BGDiFR+NOS9IeBDCIzBoh8ujM=
Received: from AM0PR04MB5314.eurprd04.prod.outlook.com (20.177.41.157) by
 AM0PR04MB4979.eurprd04.prod.outlook.com (20.177.40.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.22; Wed, 15 May 2019 03:23:43 +0000
Received: from AM0PR04MB5314.eurprd04.prod.outlook.com
 ([fe80::3095:ca86:db25:e7a]) by AM0PR04MB5314.eurprd04.prod.outlook.com
 ([fe80::3095:ca86:db25:e7a%7]) with mapi id 15.20.1878.024; Wed, 15 May 2019
 03:23:43 +0000
From: Peter Chen <peter.chen@nxp.com>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
Subject: RE: [PATCH v2 2/8] usb: phy: phy-mxs-usb: add imx7ulp support
Thread-Topic: [PATCH v2 2/8] usb: phy: phy-mxs-usb: add imx7ulp support
Thread-Index: AQHVCif2vRA1gZTNi0O1cb14Aet16KZqRRyAgAFBebA=
Date: Wed, 15 May 2019 03:23:41 +0000
Message-ID: <AM0PR04MB53144B3928AD2843758DF77D8B090@AM0PR04MB5314.eurprd04.prod.outlook.com>
References: <20190514073529.29505-1-peter.chen@nxp.com>
 <20190514073529.29505-3-peter.chen@nxp.com>
 <1557821523.10179.284.camel@mhfsdcap03>
In-Reply-To: <1557821523.10179.284.camel@mhfsdcap03>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peter.chen@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 98beb347-6043-4da2-0daf-08d6d8e4bb8d
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4979; 
x-ms-traffictypediagnostic: AM0PR04MB4979:
x-microsoft-antispam-prvs: <AM0PR04MB4979749AD607581C7AE3F8E38B090@AM0PR04MB4979.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0038DE95A2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(376002)(366004)(136003)(396003)(39860400002)(199004)(189003)(6916009)(53936002)(66446008)(64756008)(76116006)(73956011)(6246003)(66946007)(66556008)(446003)(25786009)(11346002)(486006)(476003)(8936002)(229853002)(8676002)(4326008)(81156014)(14444005)(256004)(186003)(26005)(6506007)(7696005)(74316002)(76176011)(81166006)(71200400001)(9686003)(6116002)(3846002)(102836004)(2906002)(14454004)(33656002)(7736002)(66476007)(6436002)(86362001)(55016002)(316002)(5660300002)(52536014)(66066001)(478600001)(68736007)(71190400001)(305945005)(99286004)(54906003)(44832011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4979;
 H:AM0PR04MB5314.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: dGcILI1PXuBOeKIzBAQzg0BeLCwwolz7EG8SnLdMu612uWUrRoqfEqrst3t/t4ed2yQdPjfnwD9Goc5sLBszshBYDzD6/FWvzAc+9HcqSZxBIXSVczL3wHxheNuvrKri/cihm6EnFZNR3LjRfhKpSSRr6yHzMCgr5Ol0E+HjDjoZAnuQllTg9znG0cxJVJ2V1gqf5g416W01Yld8k8YQNapUdExw1h4E/yaAQTKDqhT1ZWVdFNMA3Sc6H+DDoRm8uB7X5VqXtEPPZTSC7Yj4x6dvux6b6j0VcX2UQ3NyRKUxK3nQOjC1iZUogfMPMVWhvk4m7dyMHmAJds1Uaa5ChTYzUKrCQqg26k4zj9ZfDtlu/eLa5LNSQUTEqbPxhH40mylT0NbNDBI9985D+eb/xxIucnIWN5Gr15kCevM3XW4=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 98beb347-6043-4da2-0daf-08d6d8e4bb8d
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 May 2019 03:23:42.9560 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4979
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_202346_904594_A3AB9EDD 
X-CRM114-Status: GOOD (  16.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.76 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

 
> > Signed-off-by: Peter Chen <peter.chen@nxp.com>
> > ---
> >  drivers/usb/phy/phy-mxs-usb.c | 76
> > ++++++++++++++++++++++++++++++++++++++++++-
> >  1 file changed, 75 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/usb/phy/phy-mxs-usb.c
> > b/drivers/usb/phy/phy-mxs-usb.c index 1b1bb0ad40c3..90c96a8e9342
> > 100644
> > --- a/drivers/usb/phy/phy-mxs-usb.c
> > +++ b/drivers/usb/phy/phy-mxs-usb.c
> > @@ -20,6 +20,7 @@
> >
> >  #define DRIVER_NAME "mxs_phy"
> >
> > +/* Register Macro */
> >  #define HW_USBPHY_PWD				0x00
> >  #define HW_USBPHY_TX				0x10
> >  #define HW_USBPHY_CTRL				0x30
> > @@ -37,6 +38,11 @@
> >  #define GM_USBPHY_TX_TXCAL45DN(x)            (((x) & 0xf) << 8)
> >  #define GM_USBPHY_TX_D_CAL(x)                (((x) & 0xf) << 0)
> >
> > +/* imx7ulp */
> > +#define HW_USBPHY_PLL_SIC			0xa0
> > +#define HW_USBPHY_PLL_SIC_SET			0xa4
> > +#define HW_USBPHY_PLL_SIC_CLR			0xa8
> > +
> >  #define BM_USBPHY_CTRL_SFTRST			BIT(31)
> >  #define BM_USBPHY_CTRL_CLKGATE			BIT(30)
> >  #define BM_USBPHY_CTRL_OTG_ID_VALUE		BIT(27)
> > @@ -55,6 +61,12 @@
> >  #define BM_USBPHY_IP_FIX                       (BIT(17) | BIT(18))
> >
> >  #define BM_USBPHY_DEBUG_CLKGATE			BIT(30)
> > +/* imx7ulp */
> > +#define BM_USBPHY_PLL_LOCK			BIT(31)
> > +#define BM_USBPHY_PLL_REG_ENABLE		BIT(21)
> > +#define BM_USBPHY_PLL_BYPASS			BIT(16)
> > +#define BM_USBPHY_PLL_POWER			BIT(12)
> > +#define BM_USBPHY_PLL_EN_USB_CLKS		BIT(6)
> >
> >  /* Anatop Registers */
> >  #define ANADIG_ANA_MISC0			0x150
> > @@ -167,6 +179,9 @@ static const struct mxs_phy_data imx6ul_phy_data = {
> >  	.flags = MXS_PHY_DISCONNECT_LINE_WITHOUT_VBUS,
> >  };
> >
> > +static const struct mxs_phy_data imx7ulp_phy_data = { };
> > +
> >  static const struct of_device_id mxs_phy_dt_ids[] = {
> >  	{ .compatible = "fsl,imx6sx-usbphy", .data = &imx6sx_phy_data, },
> >  	{ .compatible = "fsl,imx6sl-usbphy", .data = &imx6sl_phy_data, }, @@
> > -174,6 +189,7 @@ static const struct of_device_id mxs_phy_dt_ids[] = {
> >  	{ .compatible = "fsl,imx23-usbphy", .data = &imx23_phy_data, },
> >  	{ .compatible = "fsl,vf610-usbphy", .data = &vf610_phy_data, },
> >  	{ .compatible = "fsl,imx6ul-usbphy", .data = &imx6ul_phy_data, },
> > +	{ .compatible = "fsl,imx7ulp-usbphy", .data = &imx7ulp_phy_data, },
> >  	{ /* sentinel */ }
> >  };
> >  MODULE_DEVICE_TABLE(of, mxs_phy_dt_ids); @@ -198,6 +214,11 @@
> static
> > inline bool is_imx6sl_phy(struct mxs_phy *mxs_phy)
> >  	return mxs_phy->data == &imx6sl_phy_data;  }
> >
> > +static inline bool is_imx7ulp_phy(struct mxs_phy *mxs_phy) {
> > +	return mxs_phy->data == &imx7ulp_phy_data; }
> > +
> >  /*
> >   * PHY needs some 32K cycles to switch from 32K clock to
> >   * bus (such as AHB/AXI, etc) clock.
> > @@ -221,14 +242,59 @@ static void mxs_phy_tx_init(struct mxs_phy *mxs_phy)
> >  	}
> >  }
> >
> > +static int wait_for_pll_lock(const void __iomem *base)
> > +{
> > +	int loop_count = 100;
> > +
> > +	/* Wait for PLL to lock */
> > +	do {
> > +		if (readl(base + HW_USBPHY_PLL_SIC) &
> BM_USBPHY_PLL_LOCK)
> > +			break;
> > +		usleep_range(100, 150);
> > +	} while (loop_count-- > 0);
> > +
> there is a common API readl_poll_timeout(), maybe you can try it.
> 
 
Checked it, it can be used. Thanks.

Peter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
