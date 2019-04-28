Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C098DB561
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 08:30:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r1iWiHeZZJB1tazZa7s2r/XlpVAI+jatUOpMjGtiBlg=; b=p8Vo52seYK/ooO
	2xKZQhfL/D9otskY38rLP3n/XWtY94lGcGsqGB62sQY8fvhcD81zbV/hJVdV2HGHl1gbd3/dsaCXn
	WhYb/AvrPTv4w6miQ/yiOZ4DmsPtbpti5CE23NtzqHWrd+a8F80+M3jiSjgwX+bh2kBfxoatXJdv4
	NOrQxKzzlwod3Y2/FNVz4jrqZROGPwMGgTHFbVDnN0TB3WOXYY+2keJP6qhfoQd+9GhZP055XKj12
	hJgTkwQMAuo1ZH3rJcEnvOb7hOIQ2wtvDFv1hame948vtcsUsyZV7emw3TIHb7gmje//pTFGYxMq8
	ZTqxJBNcJmZxQjQ4faZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKdKQ-00023o-Nk; Sun, 28 Apr 2019 06:30:22 +0000
Received: from mail-eopbgr10088.outbound.protection.outlook.com ([40.107.1.88]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKdKJ-00022z-F4
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 06:30:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V+XiZpZKuxdJ+J0p9GIjOP+zU9RiR1u5EvFoFpPUnAY=;
 b=GD3sGZm3Digv1mjnFuGWthJam17zQzS9jFVSDnL0vWxPlDBnea/Ywitw+T72a8U4tKBW1WFxnK29ZtVwrfNMA2CR+FHnei2BtQOCY5cCDJyUEiM/eNbSdEQgh1hyfdtcPJfaKVhUb46yn37nYstv08K6RIOK4VR9yvfEX56Wrb0=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3898.eurprd04.prod.outlook.com (52.134.65.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.12; Sun, 28 Apr 2019 06:30:11 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e8ca:4f6b:e43:c170]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e8ca:4f6b:e43:c170%3]) with mapi id 15.20.1835.016; Sun, 28 Apr 2019
 06:30:11 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Mukesh Ojha <mojha@codeaurora.org>, "dmitry.torokhov@gmail.com"
 <dmitry.torokhov@gmail.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "linux-input@vger.kernel.org" <linux-input@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] input: imx6ul_tsc: use devm_platform_ioremap_resource()
 to simplify code
Thread-Topic: [PATCH] input: imx6ul_tsc: use devm_platform_ioremap_resource()
 to simplify code
Thread-Index: AQHU6EqK7YCFSFAUiEmCAJSqda9wGaYm8dcAgCpVLOA=
Date: Sun, 28 Apr 2019 06:30:11 +0000
Message-ID: <DB3PR0402MB3916D9B009F5187D52A8A7D3F5380@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1554095712-15413-1-git-send-email-Anson.Huang@nxp.com>
 <d3b8cf17-36bb-d79d-7d60-76ae2416075d@codeaurora.org>
In-Reply-To: <d3b8cf17-36bb-d79d-7d60-76ae2416075d@codeaurora.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 66cf7c47-e8e2-4339-8bc2-08d6cba2f775
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3898; 
x-ms-traffictypediagnostic: DB3PR0402MB3898:
x-microsoft-antispam-prvs: <DB3PR0402MB38982A5F16B9A55EFE413586F5380@DB3PR0402MB3898.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1824;
x-forefront-prvs: 0021920B5A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(366004)(396003)(346002)(136003)(376002)(189003)(13464003)(199004)(71190400001)(102836004)(6246003)(256004)(110136005)(2201001)(97736004)(2906002)(64756008)(66476007)(66556008)(476003)(5660300002)(71200400001)(478600001)(11346002)(86362001)(446003)(73956011)(76116006)(66066001)(66446008)(66946007)(186003)(7696005)(6436002)(26005)(76176011)(33656002)(55016002)(486006)(7736002)(14454004)(52536014)(8936002)(68736007)(74316002)(99286004)(305945005)(44832011)(6116002)(81156014)(229853002)(3846002)(8676002)(53546011)(53936002)(4326008)(81166006)(2501003)(9686003)(316002)(25786009)(6506007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3898;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: K33xFCdCJREOUNEmM/mljdmLlYpMi5xv63VJZvVDrUN6KT771CoBhBcy91JmWx4vXHDv6Zg+CMy/ac4JgqAECSxFq6UG+yyn58h1XD0dJHLeA/Mu6VaXdCyDAk5El2JVutX9vyR6aG9ntjJqqWj+HKSuYhpijn0qc5/oPWpmChymRBnr2rq6ui6uXxZohEhZ6i61ijlmm+MpXi85l3JZNA3Bhc2S6WtogUzxRv97hDL3ujfmW09XPonc3L3YMmYRFtrRffHfX4kpWGZ5IPlcfW67zAp+yer8TgnFRMrxCrSWFKrIXdyiJvNHE3nu6PJaZFUmnJWuhS9TPxsQhgGFu3ujkHeRnIc9oDbuC/sb8chvJS8R5UnikHwC/z2TbBgDDIVPD348HkY7c0HiLmnL+XuabqjfI3QvpZ1Z4iBrcZU=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 66cf7c47-e8e2-4339-8bc2-08d6cba2f775
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Apr 2019 06:30:11.4739 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3898
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190427_233015_923325_B9C26434 
X-CRM114-Status: GOOD (  16.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.88 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ping...

> -----Original Message-----
> From: Mukesh Ojha [mailto:mojha@codeaurora.org]
> Sent: Monday, April 1, 2019 4:02 PM
> To: Anson Huang <anson.huang@nxp.com>; dmitry.torokhov@gmail.com;
> shawnguo@kernel.org; s.hauer@pengutronix.de; kernel@pengutronix.de;
> festevam@gmail.com; linux-input@vger.kernel.org; linux-arm-
> kernel@lists.infradead.org; linux-kernel@vger.kernel.org
> Cc: dl-linux-imx <linux-imx@nxp.com>
> Subject: Re: [PATCH] input: imx6ul_tsc: use
> devm_platform_ioremap_resource() to simplify code
> 
> 
> On 4/1/2019 10:49 AM, Anson Huang wrote:
> > Use the new helper devm_platform_ioremap_resource() which wraps the
> > platform_get_resource() and devm_ioremap_resource() together, to
> > simplify the code.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> 
> 
> Reviewed-by: Mukesh Ojha <mojha@codeaurora.org>
> 
> Cheers,
> -Mukesh
> 
> > ---
> >   drivers/input/touchscreen/imx6ul_tsc.c | 8 ++------
> >   1 file changed, 2 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/input/touchscreen/imx6ul_tsc.c
> > b/drivers/input/touchscreen/imx6ul_tsc.c
> > index c10fc59..e04eecd 100644
> > --- a/drivers/input/touchscreen/imx6ul_tsc.c
> > +++ b/drivers/input/touchscreen/imx6ul_tsc.c
> > @@ -364,8 +364,6 @@ static int imx6ul_tsc_probe(struct platform_device
> *pdev)
> >   	struct device_node *np = pdev->dev.of_node;
> >   	struct imx6ul_tsc *tsc;
> >   	struct input_dev *input_dev;
> > -	struct resource *tsc_mem;
> > -	struct resource *adc_mem;
> >   	int err;
> >   	int tsc_irq;
> >   	int adc_irq;
> > @@ -403,16 +401,14 @@ static int imx6ul_tsc_probe(struct
> platform_device *pdev)
> >   		return err;
> >   	}
> >
> > -	tsc_mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> > -	tsc->tsc_regs = devm_ioremap_resource(&pdev->dev, tsc_mem);
> > +	tsc->tsc_regs = devm_platform_ioremap_resource(pdev, 0);
> >   	if (IS_ERR(tsc->tsc_regs)) {
> >   		err = PTR_ERR(tsc->tsc_regs);
> >   		dev_err(&pdev->dev, "failed to remap tsc memory: %d\n",
> err);
> >   		return err;
> >   	}
> >
> > -	adc_mem = platform_get_resource(pdev, IORESOURCE_MEM, 1);
> > -	tsc->adc_regs = devm_ioremap_resource(&pdev->dev, adc_mem);
> > +	tsc->adc_regs = devm_platform_ioremap_resource(pdev, 1);
> >   	if (IS_ERR(tsc->adc_regs)) {
> >   		err = PTR_ERR(tsc->adc_regs);
> >   		dev_err(&pdev->dev, "failed to remap adc memory: %d\n",
> err);
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
