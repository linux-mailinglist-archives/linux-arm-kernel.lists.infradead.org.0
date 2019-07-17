Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E10E16B9FA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 12:22:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D8p91Mfa0A6wnLqpULGJRByaf1Q63Qnm9vmh0jnS72I=; b=Zd3w+c66uP2w2I
	YnMZW03nD6F1L1EXAdYFmnye920M4kaVCHqOf7M3X/jmJIRswnUbkBqOIf9zI/X8Jo7V15A5RuBFM
	NHuGvSVqG4oAmRbqagx3lHsyW0MlzXekoDV5DGOIYW+uefztnRntN4Fk+c7ikTAv5nZfE2unPXJTF
	bWR6N122K0d7WXA5YZ+sWj8J0IdS9kO8J2H1wDN1ouz+1DhPO5sXPywOkvCN4a3eWbhBy7gWxdW39
	ECpQTvjf8DyK/gk3fLThHo4e4AQKoes/YxjGll65iZVmXSMZhHiPL9UDquU/V9Mnst5uD0uFK4z5o
	O8FrHQnLw0vA2SRs1Xpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnh4X-00056O-Lh; Wed, 17 Jul 2019 10:22:05 +0000
Received: from mail-db5eur01on0610.outbound.protection.outlook.com
 ([2a01:111:f400:fe02::610]
 helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnh4J-00055R-JD
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 10:21:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V03kG1Cf0fv7yoA0jf9gIqeDP3G8P8kjrtLKs117Cao85+zIRPih68kKTNI2yFxRgcgR8x0ya0WW6MVNH8gD1dtnrlbMI+kpg0Rl50XmXEPcMWryrKj/OWvQkOtnsl+cnb0XtniZ/bsCYlVahpf/HdYRouQMjvmKSmHkAmCMj3YdydXLL9H9I3mAf5kH43XwbFHI4rPLos+MVJn+dgn12WlQyRNmFJfi0iXNzff1L8mFWrxz7+YWWfMVRZElXVIhGaw/xcu6BQ2JSL32dsxfmJJ9evRKAeEEuUabEPtpYQfS7C6brF0iJ6H3X7435L+OZfMkEX0IGd0C2GkRuAfX2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B9j9YsTLIVstJLesTo3qPz2WaYhEd2PeuBWvILNqO6w=;
 b=YYrBKO7Oa9S17nEdcqy5ulVq23Vs0eV3jN1lxJznXoMif2Nk0by9ce9gEU6J/ppi43D9SedjNOfUh2zMnSJQMsT5dMQH/Hfz8QAJk67TDbhZi4ugkuA937AUIzSmNcjEihNluVPKwWrhQXbxEjKqsGZVYNrIVNDorRjOId4ItPdl9SAqTjVzgzvM0IDLKKJTR1TqWrdEr/s12zvyPHmuVwpfIkTHllUskUnF/DV+UVHQ5UO4WKJ3If1kDhGOmBPPuFl/5ggwZpHpqOBKHzFcvoMKOBZBJU5KPcryBgLYv5O+gul62QXylgtheRznAsbBYxxwKtWCT4WsG6zgemRHEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B9j9YsTLIVstJLesTo3qPz2WaYhEd2PeuBWvILNqO6w=;
 b=WuuUsnzMgP5N78XQpzjwI/E759bswKbSclhGXnVZUsuhdQRtehI8TKB3rsC8nc60LSjQrZdvIP3CpFvEvv+ck1wn093ry6vf6u7M6K7SIC4zMoZ4WCLATxY13UHcEkycpIRSSrJwO7rc9PtV3HfOjlIlwWeYnx8LyaOma8RO9CI=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB6306.eurprd04.prod.outlook.com (20.179.33.150) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.14; Wed, 17 Jul 2019 10:21:48 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::7882:51:e491:8431]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::7882:51:e491:8431%7]) with mapi id 15.20.2073.012; Wed, 17 Jul 2019
 10:21:48 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, "wsa+renesas@sang-engineering.com"
 <wsa+renesas@sang-engineering.com>, "linux-i2c@vger.kernel.org"
 <linux-i2c@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH 1/2] i2c: mxs: use devm_platform_ioremap_resource() to
 simplify code
Thread-Topic: [PATCH 1/2] i2c: mxs: use devm_platform_ioremap_resource() to
 simplify code
Thread-Index: AQHVPHyRBlijijTup0aiqRJOOQ662KbOmbdQ
Date: Wed, 17 Jul 2019 10:21:47 +0000
Message-ID: <AM0PR04MB4211E8DCEC24D6D1D7848A6A80C90@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <20190717084017.30987-1-Anson.Huang@nxp.com>
In-Reply-To: <20190717084017.30987-1-Anson.Huang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 07f2dd7f-dba4-4328-ce68-08d70aa09373
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB6306; 
x-ms-traffictypediagnostic: AM0PR04MB6306:
x-microsoft-antispam-prvs: <AM0PR04MB6306B3D5EB1791A8B2A8F26D80C90@AM0PR04MB6306.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:800;
x-forefront-prvs: 01018CB5B3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(376002)(366004)(346002)(396003)(199004)(189003)(81166006)(81156014)(446003)(74316002)(2501003)(7736002)(25786009)(64756008)(66946007)(66476007)(66556008)(66446008)(86362001)(8936002)(478600001)(68736007)(76116006)(316002)(8676002)(110136005)(53936002)(76176011)(55016002)(5660300002)(6436002)(3846002)(4326008)(6116002)(66066001)(33656002)(52536014)(7696005)(11346002)(476003)(14454004)(2906002)(71190400001)(44832011)(305945005)(486006)(71200400001)(9686003)(6246003)(229853002)(186003)(102836004)(26005)(6506007)(2201001)(256004)(99286004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6306;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: YMPcApg77P3MGHLb7cBIx/WyTS5MbPOwieuEIQLzpQaa4VJSJC0PqcPNe9wAOhr0HhF2c2giuKjh6+hC7W1QxSA0fFdmhYjz6opAGjcZbV8DCQhQQu3Wt4tq6kuMD9wRihcdqPXThAm8Mt69rn+a1Z04GJ/U1pwfmFzb/tPjqtr/H0V8tvJsdSXVG3B70AaYTCUWktgUKI3itRidgemTlRKPp01XAWCV1hsKsPn2LSRPPhZ/1pyz5FbKwCci46CORV66KrIdtu1jCxkhSR73NLlyXtTMwb3yM4DlPJgUv+SltrX3o0JxTAYsEmoZ3YLteDUG18d7g5wjUXtZvAL2E0VE41zIbpNaCC2PnfBx4ViV9A5TKmxNH1bLCjCHUzXBQ/akTB/yY9Rh59x04IZpusKzVhT9kscFqrCz91RTxGg=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 07f2dd7f-dba4-4328-ce68-08d70aa09373
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jul 2019 10:21:48.0620 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aisheng.dong@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6306
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_032151_638798_F4D3C068 
X-CRM114-Status: GOOD (  13.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe02:0:0:0:610 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Anson.Huang@nxp.com <Anson.Huang@nxp.com>
> Sent: Wednesday, July 17, 2019 4:40 PM
> 
> Use the new helper devm_platform_ioremap_resource() which wraps the
> platform_get_resource() and devm_ioremap_resource() together, to simplify
> the code.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Aisheng

> ---
>  drivers/i2c/busses/i2c-mxs.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/i2c/busses/i2c-mxs.c b/drivers/i2c/busses/i2c-mxs.c index
> 7d79317..8922491 100644
> --- a/drivers/i2c/busses/i2c-mxs.c
> +++ b/drivers/i2c/busses/i2c-mxs.c
> @@ -802,7 +802,6 @@ static int mxs_i2c_probe(struct platform_device
> *pdev)
>  	struct device *dev = &pdev->dev;
>  	struct mxs_i2c_dev *i2c;
>  	struct i2c_adapter *adap;
> -	struct resource *res;
>  	int err, irq;
> 
>  	i2c = devm_kzalloc(dev, sizeof(*i2c), GFP_KERNEL); @@ -814,8 +813,7
> @@ static int mxs_i2c_probe(struct platform_device *pdev)
>  		i2c->dev_type = device_id->driver_data;
>  	}
> 
> -	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -	i2c->regs = devm_ioremap_resource(&pdev->dev, res);
> +	i2c->regs = devm_platform_ioremap_resource(pdev, 0);
>  	if (IS_ERR(i2c->regs))
>  		return PTR_ERR(i2c->regs);
> 
> --
> 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
