Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82D15175816
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 11:15:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nCINwIz9VdlveihzFImrDQTe0bZfr+OYTUwDZ8iwqgc=; b=EUZpTbaIlZ6nkJ
	HX5EzeGI3lSbBZK80kIHOWWoknC/J8zcsyIqt8uv7Yaafpa5hV9U1wtUzYX2FFD5Z0AA6Pmqjb9OY
	eLZn1OBQzmU2vGsJ98AUd3pxCwdRvRPv/ny2evf2mHlYRycLH86F7q10hE0uumbOAF6xR9F7UDseX
	uv5q+UKhTSuinyOzRQwumRGcpOttFDDtKtGANBHP5drIE1rnpefvoWzO4KiZBdFBVplK3D2N9QziG
	dwX3rXWtxX0TAp9ozU4YJDktLe+c7cAMoFcbVcEcAtc72PmOu8TYKSo5W7xteOu6SihuoaiF+N92M
	udcbebWhlXcKtesnZK+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8i67-0002em-W4; Mon, 02 Mar 2020 10:14:52 +0000
Received: from mail-eopbgr40079.outbound.protection.outlook.com ([40.107.4.79]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8i5x-0002dN-CZ
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 10:14:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IUspKe4E1mBl6EgJHVlxvFN2Q+HlQsNudNkygkqWDE5bh91uYSsFLmV40wfsz8aVacpDo1xYe6MH1P+X/jQDfAL4rexD1uSVq0IcGMQyIATAtIz9urCgumUVGINrTAViKu7GWsPn8/6wmAPV51/TwcrKMw3dJlodalIH0+qOA80rAprjsI0WPJFA73zwm/P3WpMvyfd3/P+ISITogP44W6bw5GeMjyl6UJ7knp2PRaS+Ifmz+h/XaKtfFSLojxXvn71LNFh6aD6ucmPee5ZYRD0yyuAf3XcCaRAAr2a2eugO4L6Ml40A7pHwviYOReUCdpiexAKgRgBJ1s7btNsHHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LlhgFPe5sB4a5YBFOi50EM1LMRozKvVN3u/+SVra8FU=;
 b=bQTQQlqDApcwoeBlYpLjmCSiFLVnrPQRGRobOOgI7XgoDOKXlmdPOB7sbHTjgzylEKFZ5IT2CmyBeS5VMy4nG7uto/vkva/fj6PTPA9PRMOJzE2YuwA49qY3DN4QDxMRtiaEYlYFMRaOYh4pg3pjSwfJwdQaC6jwk1wWLYCI0TXHZxDuFoYr63d6iMtAGtypgPbWvrASkaCtkES49YwKM+yNMzEAIXi3oJWIxvFUxP5mbLPbs50wsXdOWzphoXvFYfgW66DcXptwx6KAJ9aWw6Q0L/BMkDLNW8GbjISdhOwj8ejcDsEAu29QlaT4T0rP2rx80QL2rddsJMBvfHTzew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LlhgFPe5sB4a5YBFOi50EM1LMRozKvVN3u/+SVra8FU=;
 b=SRXOXMmlv0x/LDb9Gts9e+bo18HznmjuNWZdNJH6/8JfjjM7aOQnS2CLJ9CFa65EkJtNCcZsbeygh//JEbl/WRhCIW5CADqFb7Lp3eO2j9KUah8To07PgwDNtMAqLaCzqBZ5Ip+erehBoGXoUOdTAPTs5UKxDCp9suHJssjJnJQ=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5907.eurprd04.prod.outlook.com (20.178.202.32) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.18; Mon, 2 Mar 2020 09:58:52 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2772.019; Mon, 2 Mar 2020
 09:58:52 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Oleksij Rempel <o.rempel@pengutronix.de>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "jassisinghbrar@gmail.com" <jassisinghbrar@gmail.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>
Subject: RE: [PATCH V3 2/4] mailbox: imx: restructure code to make easy for
 new MU
Thread-Topic: [PATCH V3 2/4] mailbox: imx: restructure code to make easy for
 new MU
Thread-Index: AQHV7F/D1+t3dxfBAkOPMOPdKAM1H6g1DAcAgAAM5uA=
Date: Mon, 2 Mar 2020 09:58:52 +0000
Message-ID: <AM0PR04MB4481E7A469C74773C387B00488E70@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1582692043-683-1-git-send-email-peng.fan@nxp.com>
 <1582692043-683-3-git-send-email-peng.fan@nxp.com>
 <67ebbf3d-d6aa-17fc-5110-eead63c8232d@pengutronix.de>
In-Reply-To: <67ebbf3d-d6aa-17fc-5110-eead63c8232d@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 69750752-07d9-4703-c1a8-08d7be90503c
x-ms-traffictypediagnostic: AM0PR04MB5907:|AM0PR04MB5907:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB5907F7465B97E658991C709E88E70@AM0PR04MB5907.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 033054F29A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(396003)(376002)(136003)(39860400002)(366004)(199004)(189003)(9686003)(316002)(478600001)(76116006)(45080400002)(4326008)(7696005)(55016002)(8936002)(53546011)(54906003)(33656002)(186003)(6506007)(110136005)(81156014)(8676002)(81166006)(26005)(52536014)(86362001)(2906002)(5660300002)(15650500001)(66946007)(66556008)(64756008)(966005)(66476007)(66446008)(44832011)(71200400001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5907;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: AKprHsYJq6SGI8EZGrIjhiMxa9/ARHaSoFxVAkuoZFVAxdeibnMjH1dJ+Bd/mjxYOyu9QAUWK7+BxNfEzF0pA/wqXU4C79lrq7974lzz2nIFXgZF1g2s8PsFbHavugfI/RblDeCPZnG9fv2ttrWolmK9gCZUVh0gKO8/novNQeE7QR20NHQbFpV96s+TOe+HxFSt/NitFZKiSWnaDW9PYAuYKGLn7Yf0EuQrX+vbc2xReCZe0oA26vK+VNp7jwfS8Tto6xYovg4xgPvbjMZkdWSQHPWwMRLsW8Qlx+Tw109RSezqD5lXW3QiLcSf2f1VCHPaHAFyUPKwJZMqcBv+f/KKvxjWEQ/fZsF6iclV1CMfZghusauA3xUK97mRaRRkzs2lo6td8Y6FoMboq6g3X1s6oDJq5ONDDt39B0fznjUOAWRfadCYMVkr862COAw8yc5xRXvY23QIZuX3SoUEuweC7djCCeUySVAqr8KKunJ0TNqLKL3A7i5vUIYcnXZSirVoDQyTbaTDIT2hcxTbbQ==
x-ms-exchange-antispam-messagedata: pS3VgG0QHCRm0ySM55bsLZv4S2r6Z5xxN54i+q1Ghp20x1D+sLdqUJBj6jCa4aUkipJB7mGCmNNvthKLH34dTRUNIAF7bgiWtDH4J/b6sZGnAvYj9aMomp/Q/KOV91HpHwqntZ6NRFr6hM5vam0uUg==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 69750752-07d9-4703-c1a8-08d7be90503c
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2020 09:58:52.6162 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 01D0Vlx8rcllXkxcp/dqYYcIqUk4zSN/NaAW7cvrFKqHSw4/p3f66hqehPWEinzaxI9tglqBZ+NjHdXFUX62hA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5907
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_021441_575868_90A26576 
X-CRM114-Status: GOOD (  19.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.79 listed in list.dnswl.org]
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

> Subject: Re: [PATCH V3 2/4] mailbox: imx: restructure code to make easy for
> new MU
> 
> Hi Peng,
> 
> On 26.02.20 05:40, peng.fan@nxp.com wrote:
> > From: Peng Fan <peng.fan@nxp.com>
> >
> > Add imx_mu_generic_tx for data send and imx_mu_generic_rx for
> > interrupt data receive.
> > Add 'type' for MU type.
> >
> > With these, it will be a bit easy to introduce i.MX8/8X SCU type MU
> > dedicated to communicate with SCU.
> >
> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > ---
> >
> > V3:
> >   New patch, restructure code.
> >
> >   drivers/mailbox/imx-mailbox.c | 100
> ++++++++++++++++++++++++++++--------------
> >   1 file changed, 67 insertions(+), 33 deletions(-)
> >
> > diff --git a/drivers/mailbox/imx-mailbox.c
> > b/drivers/mailbox/imx-mailbox.c index 2cdcdc5f1119..901a3431fdb5
> > 100644
> > --- a/drivers/mailbox/imx-mailbox.c
> > +++ b/drivers/mailbox/imx-mailbox.c
> > @@ -36,7 +36,17 @@ enum imx_mu_chan_type {
> >   	IMX_MU_TYPE_RXDB,	/* Rx doorbell */
> >   };
> >
> > +enum imx_mu_type {
> > +	IMX_MU_TYPE_GENERIC,
> > +};
> 
> I assume this enum is not needed, see my next email

This is to just differentiate with SCU MU, ok, will check your next email.
Then back if anything I not follow up.

> > +struct imx_mu_priv;
> > +struct imx_mu_con_priv;
> > +
> >   struct imx_mu_dcfg {
> > +	enum imx_mu_type type;
> > +	int (*tx)(struct imx_mu_priv *priv, struct imx_mu_con_priv *cp, void
> *data);
> > +	int (*rx)(struct imx_mu_priv *priv, struct imx_mu_con_priv *cp);
> >   	u32	xTR[4];		/* Transmit Registers */
> >   	u32	xRR[4];		/* Receive Registers */
> >   	u32	xSR;		/* Status Register */
> > @@ -67,20 +77,6 @@ struct imx_mu_priv {
> >   	bool			side_b;
> >   };
> >
> > -static const struct imx_mu_dcfg imx_mu_cfg_imx6sx = {
> > -	.xTR	= {0x0, 0x4, 0x8, 0xc},
> > -	.xRR	= {0x10, 0x14, 0x18, 0x1c},
> > -	.xSR	= 0x20,
> > -	.xCR	= 0x24,
> > -};
> > -
> > -static const struct imx_mu_dcfg imx_mu_cfg_imx7ulp = {
> > -	.xTR	= {0x20, 0x24, 0x28, 0x2c},
> > -	.xRR	= {0x40, 0x44, 0x48, 0x4c},
> > -	.xSR	= 0x60,
> > -	.xCR	= 0x64,
> > -};
> 
> Please, do not move it.

Ok. Then I need to add imx_mu_generic_tx prototype above the
upper two.

Thanks,
Peng.

> 
> >   static struct imx_mu_priv *to_imx_mu_priv(struct mbox_controller
> *mbox)
> >   {
> >   	return container_of(mbox, struct imx_mu_priv, mbox); @@ -111,6
> > +107,40 @@ static u32 imx_mu_xcr_rmw(struct imx_mu_priv *priv, u32 set,
> u32 clr)
> >   	return val;
> >   }
> >
> > +static int imx_mu_generic_tx(struct imx_mu_priv *priv,
> > +			     struct imx_mu_con_priv *cp,
> > +			     void *data)
> > +{
> > +	u32 *arg = data;
> > +
> > +	switch (cp->type) {
> > +	case IMX_MU_TYPE_TX:
> > +		imx_mu_write(priv, *arg, priv->dcfg->xTR[cp->idx]);
> > +		imx_mu_xcr_rmw(priv, IMX_MU_xCR_TIEn(cp->idx), 0);
> > +		break;
> > +	case IMX_MU_TYPE_TXDB:
> > +		imx_mu_xcr_rmw(priv, IMX_MU_xCR_GIRn(cp->idx), 0);
> > +		tasklet_schedule(&cp->txdb_tasklet);
> > +		break;
> > +	default:
> > +		dev_warn_ratelimited(priv->dev, "Send data on wrong channel
> type: %d\n", cp->type);
> > +		return -EINVAL;
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> > +static int imx_mu_generic_rx(struct imx_mu_priv *priv,
> > +			     struct imx_mu_con_priv *cp)
> > +{
> > +	u32 dat;
> > +
> > +	dat = imx_mu_read(priv, priv->dcfg->xRR[cp->idx]);
> > +	mbox_chan_received_data(cp->chan, (void *)&dat);
> > +
> > +	return 0;
> > +}
> > +
> >   static void imx_mu_txdb_tasklet(unsigned long data)
> >   {
> >   	struct imx_mu_con_priv *cp = (struct imx_mu_con_priv *)data; @@
> > -123,7 +153,7 @@ static irqreturn_t imx_mu_isr(int irq, void *p)
> >   	struct mbox_chan *chan = p;
> >   	struct imx_mu_priv *priv = to_imx_mu_priv(chan->mbox);
> >   	struct imx_mu_con_priv *cp = chan->con_priv;
> > -	u32 val, ctrl, dat;
> > +	u32 val, ctrl;
> >
> >   	ctrl = imx_mu_read(priv, priv->dcfg->xCR);
> >   	val = imx_mu_read(priv, priv->dcfg->xSR); @@ -152,8 +182,7 @@
> > static irqreturn_t imx_mu_isr(int irq, void *p)
> >   		imx_mu_xcr_rmw(priv, 0, IMX_MU_xCR_TIEn(cp->idx));
> >   		mbox_chan_txdone(chan, 0);
> >   	} else if (val == IMX_MU_xSR_RFn(cp->idx)) {
> > -		dat = imx_mu_read(priv, priv->dcfg->xRR[cp->idx]);
> > -		mbox_chan_received_data(chan, (void *)&dat);
> > +		priv->dcfg->rx(priv, cp);
> >   	} else if (val == IMX_MU_xSR_GIPn(cp->idx)) {
> >   		imx_mu_write(priv, IMX_MU_xSR_GIPn(cp->idx),
> priv->dcfg->xSR);
> >   		mbox_chan_received_data(chan, NULL); @@ -169,23 +198,8
> @@ static
> > int imx_mu_send_data(struct mbox_chan *chan, void *data)
> >   {
> >   	struct imx_mu_priv *priv = to_imx_mu_priv(chan->mbox);
> >   	struct imx_mu_con_priv *cp = chan->con_priv;
> > -	u32 *arg = data;
> > -
> > -	switch (cp->type) {
> > -	case IMX_MU_TYPE_TX:
> > -		imx_mu_write(priv, *arg, priv->dcfg->xTR[cp->idx]);
> > -		imx_mu_xcr_rmw(priv, IMX_MU_xCR_TIEn(cp->idx), 0);
> > -		break;
> > -	case IMX_MU_TYPE_TXDB:
> > -		imx_mu_xcr_rmw(priv, IMX_MU_xCR_GIRn(cp->idx), 0);
> > -		tasklet_schedule(&cp->txdb_tasklet);
> > -		break;
> > -	default:
> > -		dev_warn_ratelimited(priv->dev, "Send data on wrong channel
> type: %d\n", cp->type);
> > -		return -EINVAL;
> > -	}
> >
> > -	return 0;
> > +	return priv->dcfg->tx(priv, cp, data);
> >   }
> >
> >   static int imx_mu_startup(struct mbox_chan *chan) @@ -367,6 +381,26
> > @@ static int imx_mu_remove(struct platform_device *pdev)
> >   	return 0;
> >   }
> >
> > +static const struct imx_mu_dcfg imx_mu_cfg_imx6sx = {
> > +	.type	= IMX_MU_TYPE_GENERIC,
> > +	.tx	= imx_mu_generic_tx,
> > +	.rx	= imx_mu_generic_rx,
> > +	.xTR	= {0x0, 0x4, 0x8, 0xc},
> > +	.xRR	= {0x10, 0x14, 0x18, 0x1c},
> > +	.xSR	= 0x20,
> > +	.xCR	= 0x24,
> > +};
> > +
> > +static const struct imx_mu_dcfg imx_mu_cfg_imx7ulp = {
> > +	.type	= IMX_MU_TYPE_GENERIC,
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
> engutronix.de%2F&amp;data=02%7C01%7Cpeng.fan%40nxp.com%7Ccf660c
> 3909e14128e65f08d7be898905%7C686ea1d3bc2b4c6fa92cd99c5c301635%
> 7C0%7C0%7C637187370224967554&amp;sdata=ZdgIGuzpnhX1liQO4KmCtXx
> jjg%2BnDJoPze4pfVXIAig%3D&amp;reserved=0  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0
> |
> Amtsgericht Hildesheim, HRA 2686           | Fax:
> +49-5121-206917-5555 |
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
