Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D04F5F5EF
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 11:46:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fq17T1p5MjTKCtAtSy7JhJLDd4nEKq6FXh/i/0znAy0=; b=JEELppsFZm0L3o
	kGqJHivLs7FW5DNl+iTC3Bxw0SCmqDzGJ1ZfXnoaTtD8epRsMHfmhn2jNx8Wv+eUfcCEVF/fqawlA
	QXNfH9m9gByS/X32agXor2ruj+Po51WWd3VM07jUNrVSJ7WW5wsq2MXLm3gn+b+wrG9D6wi9fuUBe
	Xu9DIE3S91tNZTfLZZYAMc7ZAkZbHzdVYqiqRTH04nQmpI2rLr/qMk6UaUxkIgt3yXk1JINlZcgoS
	+yjdtJpHGbxnxXx6iUjJYPJzUngtOAilmAucJ3aLvImiiV5xt0f3+0eWujZow0IO2gao8AmkB0lhr
	Ob+tg/wNvJ/0f8io5Qtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiyKF-0002ec-4x; Thu, 04 Jul 2019 09:46:47 +0000
Received: from mail-am5eur03on0615.outbound.protection.outlook.com
 ([2a01:111:f400:fe08::615]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiyJp-0002TY-F1
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 09:46:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ljhj7FeAXiWI5a7VODEiedFpUN79C177M6SU/g6CbqU=;
 b=GVswGwjQhGypOVx18cNaiBWndm/j8ynoNRE6RBh3lDSUGeNnTk2pjqlEkPYR3XLIBOt++gq8iRDbz+9DpvZR0jwso0njgxfeAssc+srZ+/e7/7W5BH3wZB4gG3X0nTSolWA4k4J238WLoaDMwpv5Q/GSI/aqISsEoevWEg3VKlU=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3913.eurprd04.prod.outlook.com (52.134.65.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.18; Thu, 4 Jul 2019 09:46:17 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3945:fcda:5bdd:8191]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3945:fcda:5bdd:8191%4]) with mapi id 15.20.2052.010; Thu, 4 Jul 2019
 09:46:17 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Philipp Zabel <p.zabel@pengutronix.de>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Leonard Crestez
 <leonard.crestez@nxp.com>, Jacky Bai <ping.bai@nxp.com>, Daniel Baluta
 <daniel.baluta@nxp.com>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH V2 1/2] dt-bindings: reset: imx7: Add support for i.MX8MM
Thread-Topic: [PATCH V2 1/2] dt-bindings: reset: imx7: Add support for i.MX8MM
Thread-Index: AQHVMkvG0A7TyfvQREempPzkyhw2Raa6NMqAgAAA3KA=
Date: Thu, 4 Jul 2019 09:46:17 +0000
Message-ID: <DB3PR0402MB39167FBAA2A3867148063F83F5FA0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20190704092600.38015-1-Anson.Huang@nxp.com>
 <1562233305.6641.8.camel@pengutronix.de>
In-Reply-To: <1562233305.6641.8.camel@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 281aeadd-c385-48ee-99a5-08d700647609
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3913; 
x-ms-traffictypediagnostic: DB3PR0402MB3913:
x-microsoft-antispam-prvs: <DB3PR0402MB39137D96F5F59631D53A906CF5FA0@DB3PR0402MB3913.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0088C92887
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(366004)(396003)(39860400002)(346002)(136003)(199004)(189003)(66946007)(76116006)(64756008)(186003)(66446008)(26005)(44832011)(73956011)(66476007)(76176011)(102836004)(478600001)(66556008)(2501003)(6506007)(110136005)(476003)(316002)(486006)(68736007)(2906002)(446003)(81166006)(8936002)(5660300002)(33656002)(11346002)(8676002)(81156014)(7696005)(52536014)(71200400001)(229853002)(71190400001)(74316002)(7736002)(99286004)(305945005)(66066001)(9686003)(14444005)(2201001)(6116002)(55016002)(25786009)(256004)(53936002)(7416002)(86362001)(4326008)(3846002)(14454004)(6436002)(6246003)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3913;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: kNusKhIU6hMPzMyqe3C1XzQtvxCaFbhVS/0x5zhRA4X4mdybEX1BOlByZyTmG2xYeuNzPddlfRxg724yYlbQ2kZdVGV5V8BlSc3Mzym2ySp4QLoLh2Nxw5ETlq8jogxkcz6Yss81SSKNslKZ+e0mIl/u5+fneh2NXSuy9ATlRGsY3bs+f19Zc2Vig8O+vrBr+3wNCJxqMGRXRRZKmTGmsykuueTfYLXTzDimkJXeOugTX7LQ64YA/h0ky1WusgS8u/nd8/hgjxycBU8Fuwet6S7Wji2535o9G/dfA4Dv+C/Xh+iSUQpDPhWSEHaKjQUHKeCie1xA0v/GosvpLneUjCBjsWQJirWUgEFc3WQ3jbylwUgcwr0aDvSHYSi4Ru1p/o1D5BSpHNIuxtWtcs0zgn82mP2IKj8Hzbj0k3ghobI=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 281aeadd-c385-48ee-99a5-08d700647609
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jul 2019 09:46:17.2885 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3913
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_024621_522739_A4CD5CF3 
X-CRM114-Status: GOOD (  16.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe08:0:0:0:615 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Philipp

> On Thu, 2019-07-04 at 17:25 +0800, Anson.Huang@nxp.com wrote:
> > From: Anson Huang <Anson.Huang@nxp.com>
> >
> > i.MX8MM can reuse i.MX8MQ's reset driver, update the compatible
> > property and related info to support i.MX8MM.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> > New patch.
> > ---
> >  Documentation/devicetree/bindings/reset/fsl,imx7-src.txt | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/reset/fsl,imx7-src.txt
> > b/Documentation/devicetree/bindings/reset/fsl,imx7-src.txt
> > index 13e0951..bc24c45 100644
> > --- a/Documentation/devicetree/bindings/reset/fsl,imx7-src.txt
> > +++ b/Documentation/devicetree/bindings/reset/fsl,imx7-src.txt
> > @@ -7,7 +7,7 @@ controller binding usage.
> >  Required properties:
> >  - compatible:
> >  	- For i.MX7 SoCs should be "fsl,imx7d-src", "syscon"
> > -	- For i.MX8MQ SoCs should be "fsl,imx8mq-src", "syscon"
> > +	- For i.MX8MQ/i.MX8MM SoCs should be "fsl,imx8mq-src", "syscon"
> 
> Please still add the "fsl,imx8mm-src" for i.MX8MM, just in case a significant
> difference is discovered later.

OK, then I will add a new line as below:

For i.MX8MM SoCs should be "fsl,imx8mm-src", "fsl,imx8mq-src", "syscon"

Anson.

> 
> regards
> Philipp
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
