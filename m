Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE858419A9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 02:48:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2o5/y7lHai0RNlcGAFTTH40d/3biPznYZgkpnP41P9U=; b=nFRBJss40eUA8M
	M7vz5kkySEQsEgRFl2LXgMJO0duVBYeimFda5r4ivnQB/sO87ENKMt3P5uo3vp4s/bHB8AUeZpyVl
	7zWCW2399/VKUcGLPQfGPVnTdh0sfdg7dEV4+Z4FKmZ+w3+ZZ6cl/JgVZZEsYPs3C+1ONmvECxHuI
	J6SbP/itCIloBgSatQNH3tkHnj93U4/c0nNwO74JKPENfVBnjarE4XGf7cpVfd4DXHeaAU6F30K7q
	G50Tl7wZTE5zwDj32qb2VCS+K5ubiKQ6/4eD/auV3yNggNIUwKOivzXevV1xuK5CyaonXtN08Kfzd
	i1+H69+MN8zXojja1sSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1harRR-0000Rk-M2; Wed, 12 Jun 2019 00:48:41 +0000
Received: from mail-eopbgr40042.outbound.protection.outlook.com ([40.107.4.42]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1harRI-0000RC-M0
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 00:48:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yXWHZF95DwEycl0RUeS6J8fj9rYs9oheuVIRC97732Q=;
 b=aIQeWjHK3pz1EUjr9F817IaKy7ke8SfXJlelf3AREHFZOA3rTWR6yF/xovZfcDirub/sxkTwGnk7IoqaD6/eF4QZpRNQ1Fn0krYDMQj8YHFLsijSn7W1x6KHjKgbJFrl4ARQhKSqanrmuFg6Dz5MvLzFB+yVmILaYksQd95knAY=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3692.eurprd04.prod.outlook.com (52.134.65.15) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.13; Wed, 12 Jun 2019 00:48:27 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec%5]) with mapi id 15.20.1965.017; Wed, 12 Jun 2019
 00:48:27 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Trent Piepho <tpiepho@impinj.com>, "festevam@gmail.com"
 <festevam@gmail.com>
Subject: RE: [PATCH 2/3] rtc: imx-sc: Make compatible string more generic
Thread-Topic: [PATCH 2/3] rtc: imx-sc: Make compatible string more generic
Thread-Index: AQHVIB9el1hRP4OpP0mqPxlvyclbtaaW6UGAgAADuICAAEE6AA==
Date: Wed, 12 Jun 2019 00:48:27 +0000
Message-ID: <DB3PR0402MB3916A7887EBC63477A5297E6F5EC0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20190611063333.48501-1-Anson.Huang@nxp.com>
 <20190611063333.48501-2-Anson.Huang@nxp.com>
 <CAOMZO5BCuBKHs1jXkm3qFD84_xcB=0NSwE3SLJHx9kq4Stbd_A@mail.gmail.com>
 <1560285930.2354.8.camel@impinj.com>
In-Reply-To: <1560285930.2354.8.camel@impinj.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c482f7a8-d7eb-442f-da26-08d6eecfaec2
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3692; 
x-ms-traffictypediagnostic: DB3PR0402MB3692:
x-microsoft-antispam-prvs: <DB3PR0402MB3692DAF118BEB48CD9548CDAF5EC0@DB3PR0402MB3692.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0066D63CE6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(396003)(366004)(136003)(39860400002)(13464003)(199004)(189003)(6436002)(6506007)(53546011)(11346002)(81166006)(446003)(68736007)(186003)(476003)(14454004)(53936002)(81156014)(55016002)(316002)(305945005)(110136005)(52536014)(229853002)(99286004)(9686003)(486006)(2906002)(7736002)(44832011)(7696005)(54906003)(8936002)(8676002)(102836004)(76176011)(478600001)(71190400001)(3846002)(5660300002)(6116002)(6246003)(66066001)(7416002)(74316002)(71200400001)(2501003)(66476007)(256004)(4326008)(66946007)(73956011)(14444005)(26005)(66446008)(64756008)(66556008)(33656002)(76116006)(25786009)(86362001)(41533002)(21314003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3692;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Sjc5NB7ETkfFBBKs4PNMA64RJvPcXS3qoRu9SKBGwVzz0w25ustbk4HUZjJoM0RqLp0lmjfwRfwUY57rvyhQ9pcSL6eAZa386SA29RXavUrdxgb2euMTiUXCEIcwXzgATvX47QoB9dB1PA1/+yh9q3f623K4yg9alav3ukvjn+H/sSafMtctBwxisuckm+7WLczKBl73/C/gxESvrK2a/DlRNPyHFHCZ7BFdiyeNQr4S4jFDoFu3dq3SN/oPyrNJvrkGVppsxDDAi6v/B/BY9AvWnCz/E2opN9WbJ/aas51NzHc6OgnzPqWaWOzaX+nJc96d8OJDlWHLT/koCP+FBi6866NIxtmnr+eNkmKxa9WOylXDMpTGxy0Wf2bH6wdf8trEZ+65C/lX4r9KnTNO/4FpASMz8D81nUQ8H5xGuMw=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c482f7a8-d7eb-442f-da26-08d6eecfaec2
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jun 2019 00:48:27.5701 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3692
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_174832_808174_826A85BD 
X-CRM114-Status: GOOD (  26.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.42 listed in list.dnswl.org]
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "alexandre.belloni@bootlin.com" <alexandre.belloni@bootlin.com>,
 "a.zummo@towertech.it" <a.zummo@towertech.it>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "ulf.hansson@linaro.org" <ulf.hansson@linaro.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, Peng Fan <peng.fan@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-rtc@vger.kernel.org" <linux-rtc@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Fabio/Trent

> -----Original Message-----
> From: Trent Piepho <tpiepho@impinj.com>
> Sent: Wednesday, June 12, 2019 4:46 AM
> To: festevam@gmail.com; Anson Huang <anson.huang@nxp.com>
> Cc: Aisheng Dong <aisheng.dong@nxp.com>; alexandre.belloni@bootlin.com;
> robh+dt@kernel.org; dl-linux-imx <linux-imx@nxp.com>; linux-
> kernel@vger.kernel.org; devicetree@vger.kernel.org;
> a.zummo@towertech.it; mark.rutland@arm.com; Peng Fan
> <peng.fan@nxp.com>; shawnguo@kernel.org; linux-arm-
> kernel@lists.infradead.org; Daniel Baluta <daniel.baluta@nxp.com>;
> ulf.hansson@linaro.org; kernel@pengutronix.de; linux-rtc@vger.kernel.org;
> s.hauer@pengutronix.de
> Subject: Re: [PATCH 2/3] rtc: imx-sc: Make compatible string more generic
> 
> On Tue, 2019-06-11 at 17:32 -0300, Fabio Estevam wrote:
> > Hi Anson,
> >
> > On Tue, Jun 11, 2019 at 3:31 AM <Anson.Huang@nxp.com> wrote:
> > >
> > > From: Anson Huang <Anson.Huang@nxp.com>
> > >
> > > i.MX system controller RTC driver can support all i.MX SoCs with
> > > system controller inside, this patch makes the compatible string
> > > more generic to support other i.MX SoCs with system controller
> > > inside, such as i.MX8QM etc..
> > >
> > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > > ---
> > >  drivers/rtc/rtc-imx-sc.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/rtc/rtc-imx-sc.c b/drivers/rtc/rtc-imx-sc.c
> > > index c933045..38ef3ca 100644
> > > --- a/drivers/rtc/rtc-imx-sc.c
> > > +++ b/drivers/rtc/rtc-imx-sc.c
> > > @@ -178,7 +178,7 @@ static int imx_sc_rtc_probe(struct
> > > platform_device *pdev)  }
> > >
> > >  static const struct of_device_id imx_sc_dt_ids[] = {
> > > -       { .compatible = "fsl,imx8qxp-sc-rtc", },
> > > +       { .compatible = "fsl,imx-sc-rtc", },
> >
> > What is wrong with the current compatible string?

Nothing wrong, just want to make it aligned with other SCU drivers, like
SCU watchdog, SCU thermal etc., the driver ONLY contains "fsl,imx-sc-xxx"
compatible string, then for new SoC, we can just add it as compatible or
fallback compatible string, no need to do any change for driver.  

> >
> > If you want to support i.MX8QM just add in its dtsi:
> >
> > compatible = "fsl,imx8qm-sc-rtc", "fsl,imx8qxp-sc-rtc"
> >
> > and add a dt-bindings entry for "fsl,imx8qm-sc-rtc"

I am OK if we can just use " fsl,imx8qxp-sc-rtc" as fallback compatible string
for later SoCs.

> 
> Yes, I thought this is (was?) the recommended practice for IP blocks in SoCs
> that don't have their own version (vs something like a Synopsis block used
> many places):
> 
> * Use the first SoC to have the block as the base compatible for the block.
> * Always add the current SoC, in additional to the base, in the SoC's dts's list
> of compatibles.  Even if unneeded at the present.
> * The driver will list the base compatible in the match table, and will add new
> ones for specific socs if/when there is a need for it.

Make sense, I was recommended to make the fallback compatible string aligned
for all SCU drivers, for me, I am OK with either way, so if you think it is NOT necessary
to do it, we can drop this series.

Thanks,
Anson

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
