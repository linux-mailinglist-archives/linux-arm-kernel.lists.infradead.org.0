Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1CC8176F67
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 07:27:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Fult4xz85dj4gGcgoIRCH0H2jrrWXLzQpxbxe5ORAQ=; b=eKYapiiQltpT6q
	MCSn+0R9W7/rS+iZ2HVoP6lVRKGXJPyYIjkzTfY1B2D+Zx+Mvokf0D8LcfBAd5o0HzSs5WKXVjhsJ
	lkrLvjj5zLd+MZR9+9kSmltqgEAOANu2ElKZndZ0O2sVLZjq27v2orws4trouY50xq7HD9I16Nj5r
	42Q0cfb0q4OL4M1LFUMbogNogn/u58vcd1U/GWyNPDDd+zoDMjiXa3ooQUKpoEvzshu0+8uBXQ9DD
	2aFsDBi6hZb/CG5PGH7zhBlNNWfG/ynoc471/0alqWYI/W4ag8z4Y7XyW3wMyEj4Aqr19CdiAvDfb
	6iJ7uGLJ8PVuaZrazeWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j911n-0004ek-Sz; Tue, 03 Mar 2020 06:27:39 +0000
Received: from mail-eopbgr60050.outbound.protection.outlook.com ([40.107.6.50]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j911g-0004eJ-B5
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 06:27:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NA7BKgxaL0SAyLM7oejdfi7CyMQzurqDytP57Yn+KY0+uQtG/duS/b+y4TjTv/n5xNK1u4J5u0gznw7zvBrvcPSv9fORaglIJL3IAbyLQs/ulF9OK0WgiBZ09s0rPwL15QLeygePt+4Xd88s617PZRTExYkoWmwAqgpk9E0jT0OoYs3WBnOka6eJFE2+I/xjFZjWH3KmdShqFkdyhCPiktCLVS5FpL0gMmLW/KWci6tEbJ27g9db8YSEciIt6ii50CVSM8fuAlR/9wa1J/MDEKFaN87J0KFqTeIwTCUeq20v5DRDJEoB+TP82av8ALRrPfEY7BWkYVnMaMpNxtStIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=i/yWWJegFCy8U7jkNEy0FPqygBz8iHxwBvlw07fVKXY=;
 b=Ts1syfdLXAoO/vR8tfmc/uX5A9JATInnlRZqDkfXhX4+juHkm/yBHEQsmXPP6yJZzJgJ6OGPRgqzPj+8i5hrG27/bJ3KntaFa1OY7ipVxUENSzr5Q7i5+TuYAe8Wu3pwFts1rrLW4KN6sMAggmPq/CeF7F+amXGhHuUpsP4umyf33swwAoHQv46kq+OfZBn1aVtOawYpYEGYcJFxnHBE1mbdpiBbD/I/rl9DAVLWIWYzJzZJdpGTK50gJaj8XxY99JbIjvJz5vQq7LE5+Jk1IXzXNcrA5TlxtdsqWksPvqWgPx9IVn64rQs7RQU88hNmcWKc8lIHpL2IURnd7qmGqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=i/yWWJegFCy8U7jkNEy0FPqygBz8iHxwBvlw07fVKXY=;
 b=hiiwFuNgIPi/rQx83zE491Mvw851X4GWRrEFWxK+/UoGtZSrdUUWrbPzbn9nybdKQSEgvsFLXUzP2TdfNV8s3KBOX5FlLimxqt3TjsZ6L+hwLtrDncmfRIZfw4yDpW0HTsk+V1dbG+pipzmPsTunW4rVK94rQaplnpwxvgXkMMQ=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB7073.eurprd04.prod.outlook.com (10.186.131.212) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.18; Tue, 3 Mar 2020 06:27:29 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2772.019; Tue, 3 Mar 2020
 06:27:29 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Oleksij Rempel <o.rempel@pengutronix.de>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "jassisinghbrar@gmail.com" <jassisinghbrar@gmail.com>
Subject: RE: [PATCH V4 2/4] mailbox: imx: restructure code to make easy for
 new MU
Thread-Topic: [PATCH V4 2/4] mailbox: imx: restructure code to make easy for
 new MU
Thread-Index: AQHV8P9dHINnVxzpoECyccDVS0fOq6g2Y6EAgAACygA=
Date: Tue, 3 Mar 2020 06:27:29 +0000
Message-ID: <AM0PR04MB4481BD4CC61A8E30B8ECB68488E40@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1583200380-15623-1-git-send-email-peng.fan@nxp.com>
 <1583200380-15623-3-git-send-email-peng.fan@nxp.com>
 <f4b3384d-ee24-e254-2799-69e57625995b@pengutronix.de>
In-Reply-To: <f4b3384d-ee24-e254-2799-69e57625995b@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: b1b72ef6-a4a2-42a4-51a3-08d7bf3bf2d5
x-ms-traffictypediagnostic: AM0PR04MB7073:|AM0PR04MB7073:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB7073569DE0BEC69E0637850388E40@AM0PR04MB7073.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 03319F6FEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(376002)(39860400002)(366004)(396003)(199004)(189003)(15650500001)(71200400001)(26005)(316002)(186003)(44832011)(33656002)(52536014)(66446008)(4326008)(45080400002)(9686003)(86362001)(81156014)(55016002)(64756008)(8676002)(81166006)(66946007)(2906002)(110136005)(6506007)(8936002)(966005)(5660300002)(478600001)(76116006)(66476007)(66556008)(54906003)(53546011)(7696005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB7073;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kSqW40qfMFqBuLFLArxNYxeQWmmLpqKd/4rJCM+Fl1iwbm8D7/a23FZO61PH0sUREpmWKUNIKjLJsErgpn7Jqgutw1p4pcI3+Q/vuUFZ9M/T67jghzLCb0irHnD4r8c4CgvG9ixqLONBz7wqowfedGuXudc+IfHyWaPi1EdkQcxbjZIQ2K9yNp1MPDXjPZufCkrc6uvnDfcDC1LCKd/rfKySvOB+senISxdsEewvcOETxcAdJ2HXaST861WqEKe/TYmoED80/366UDnF51pGq5Wz44hgp4eDDZ5ard/EBHlV9fxcdSadt6GlW5Ys+U02ZMUbTMj+eOpnyVYQu6CGpCGnwLWOnSlPGN/c3dZ/6uYyd6xnkC+k4IViepsbRcbpfHWp3RT3iBrrB/v+KphLlYkn+1yvpomPoSkuPA8U3AYYJGPhUdmi+yITdduJGRVGeUeMTk3eYEjfzczl73+S3fkmJDFdKDST1OKaPaQrsRobf2nCDlElIDy3l6aivALNpWvMnJM2KDJY1gT1/VXpnQ==
x-ms-exchange-antispam-messagedata: OFqllVdXeqboHCpvgVjhAKAN8p7wVPw8ZI7r64nSNK8O8LMm6CGKkvd4UG+QtTJxtUFZF1jxGSccdzKV/Wy4wsSyzX2lFjEkX4hWq4OvccSQcHwgnVrSQI7SRaoSSIm1sjeBxq1v6nxpWaMxMplZlw==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b1b72ef6-a4a2-42a4-51a3-08d7bf3bf2d5
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Mar 2020 06:27:29.3227 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cX1Tf+twIycYoWOerdzvX9+GKANa4tYmgz9ZvNQw1vB0kYeb1TifGWkvl6bbWuk4KawpFs8QDb9XX4NRkpd+lQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB7073
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_222732_385527_BD38CE90 
X-CRM114-Status: GOOD (  18.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.50 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Oleksij,

> Subject: Re: [PATCH V4 2/4] mailbox: imx: restructure code to make easy for
> new MU
> 
> 
> 
> On 03.03.20 02:52, peng.fan@nxp.com wrote:
> > From: Peng Fan <peng.fan@nxp.com>
> >
> > Add imx_mu_generic_tx for data send and imx_mu_generic_rx for
> > interrupt data receive.
> >
> > Pack original mu chans related code into imx_mu_init_generic
> >
> > With these, it will be a bit easy to introduce i.MX8/8X SCU type MU
> > dedicated to communicate with SCU.
> >
> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > ---
> > V4:
> >   Pack MU chans init to imx_mu_init_generic
> > V3:
> >   New patch, restructure code.
> >
> >   drivers/mailbox/imx-mailbox.c | 127
> ++++++++++++++++++++++++++----------------
> >   1 file changed, 78 insertions(+), 49 deletions(-)
> >
> > diff --git a/drivers/mailbox/imx-mailbox.c
> > b/drivers/mailbox/imx-mailbox.c index 2cdcdc5f1119..e98f3550f995
> > 100644
> > --- a/drivers/mailbox/imx-mailbox.c
> > +++ b/drivers/mailbox/imx-mailbox.c
> > @@ -36,7 +36,12 @@ enum imx_mu_chan_type {
> >   	IMX_MU_TYPE_RXDB,	/* Rx doorbell */
> >   };
> >
> > +struct imx_mu_priv;
> > +struct imx_mu_con_priv;
> 
> Please move imx_mu_dcfg below struct imx_mu_priv. It was my mistaked, i
> missed this point.

That's fine.

> 
> >   struct imx_mu_dcfg {
> > +	int (*tx)(struct imx_mu_priv *priv, struct imx_mu_con_priv *cp, void
> *data);
> > +	int (*rx)(struct imx_mu_priv *priv, struct imx_mu_con_priv *cp);
> 
> please add init function here as well.

ok. I'll add as below:

int (*init)(struct imx_mu_priv *priv);

> 
> >   	u32	xTR[4];		/* Transmit Registers */
> >   	u32	xRR[4];		/* Receive Registers */
> >   	u32	xSR;		/* Status Register */
[....]

> > -
> >   	priv->side_b = of_property_read_bool(np, "fsl,mu-side-b");
> >
> > +	imx_mu_init_generic(priv);
> 
> please use priv->dcfg->init(priv);

I assume you agree the code I packed in imx_mu_init_generic.
I just need to assign init = imx_mu_init_generic; And use priv->dcfg->init(priv),
right?

Thanks,
Peng.

> 
> > +
> >   	spin_lock_init(&priv->xcr_lock);
> >
> >   	priv->mbox.dev = dev;
> >   	priv->mbox.ops = &imx_mu_ops;
> >   	priv->mbox.chans = priv->mbox_chans;
> > -	priv->mbox.num_chans = IMX_MU_CHANS;
> > -	priv->mbox.of_xlate = imx_mu_xlate;
> >   	priv->mbox.txdone_irq = true;
> >
> >   	platform_set_drvdata(pdev, priv);
> >
> > -	imx_mu_init_generic(priv);
> > -
> >   	return devm_mbox_controller_register(dev, &priv->mbox);
> >   }
> >
> > @@ -367,6 +378,24 @@ static int imx_mu_remove(struct platform_device
> *pdev)
> >   	return 0;
> >   }
> >
> > +static const struct imx_mu_dcfg imx_mu_cfg_imx6sx = {
> > +	.tx	= imx_mu_generic_tx,
> > +	.rx	= imx_mu_generic_rx,
> > +	.xTR	= {0x0, 0x4, 0x8, 0xc},
> > +	.xRR	= {0x10, 0x14, 0x18, 0x1c},
> > +	.xSR	= 0x20,
> > +	.xCR	= 0x24,
> > +};
> > +
> > +static const struct imx_mu_dcfg imx_mu_cfg_imx7ulp = {
> > +	.tx	= imx_mu_generic_tx,
> > +	.rx	= imx_mu_generic_rx,
> > +	.xTR	= {0x20, 0x24, 0x28, 0x2c},
> > +	.xRR	= {0x40, 0x44, 0x48, 0x4c},
> > +	.xSR	= 0x60,
> > +	.xCR	= 0x64,
> > +};
> > +
> >   static const struct of_device_id imx_mu_dt_ids[] = {
> >   	{ .compatible = "fsl,imx7ulp-mu", .data = &imx_mu_cfg_imx7ulp },
> >   	{ .compatible = "fsl,imx6sx-mu", .data = &imx_mu_cfg_imx6sx },
> >
> 
> Kind regards,
> Oleksij Rempel
> 
> --
> Pengutronix e.K.                           |
> |
> Industrial Linux Solutions                 |
> https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fwww.p
> engutronix.de%2F&amp;data=02%7C01%7Cpeng.fan%40nxp.com%7Ce59c2b
> ea2efd47dc8fb408d7bf39f68c%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C
> 0%7C0%7C637188127988825530&amp;sdata=d%2FN82zkoGy7m3yXf6Q8h9
> OWYs0ldZlozDzPwAnOMDkI%3D&amp;reserved=0  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0
> |
> Amtsgericht Hildesheim, HRA 2686           | Fax:
> +49-5121-206917-5555 |
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
