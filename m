Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 102991A35CB
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 16:22:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sC20Q2tpzCNwufIXxLtifJ7+3SwhwX/1g7ZukNPjWUk=; b=oiFugXV9gYDbhp
	mNiXLPqrKdWfO0B8r0XDA7L938sbskCFdkg1HWWBtqoJeGWi6Hp/XfqbPfABl9pBzRP9Kc9RhX7Pd
	5VibBj0DhjgluqYIJCejnl3npuHGtlaCyphfuNsJXTwjRrtx6qM7UTSu1n4gIkq8D0Ek970yxyxLw
	gEaUj7m7iYo6VglF8FiFvR8jrpieAKlQ0t7ARvhcef2qbUzwY9yZIkqo1Ok0/4yfZk+b33tF+wUeV
	gZy0/LthgfVE81BDskLRyLUgW2fa9XKWgl/T2VlrKA9blmk/YFiS9JB1/b3zGxJLs1GfhkX47rNRR
	Hd6koUv+KZAri6g3TPEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMY4w-00016o-8L; Thu, 09 Apr 2020 14:22:50 +0000
Received: from mail-am6eur05on2087.outbound.protection.outlook.com
 ([40.107.22.87] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMY4o-000165-Hn
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 14:22:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zr0ZjtxvQQcqXgxdOCNVcfWUemoJKUctp1lHDRzZR3gw8EfgE14QtvstiMZQpJ+CpDqvDPue48GOYQ1mXPBooFRLq21WPsXe5z22KubCwq7dWyvJlvpYD+45ot0qe/D/aza1xmg+4it1FV5IdZ19SeYUs1EG901Q6Mj6rpkOm/YMVvOyEjxCZx1V8v32JCux6nUe/od2KjfAJTcfbjToW8zYa3Xn1xP8AV8K/nksASDOBfl0sZoIn6VTeP2ibVUyvTD64R4bW4g6dXWbEq81nwuj5stqXkRfYI4MCinS9PRz3/q+PaJDqegCC0kGLo2yE2AV+uH8fE+QoLFg0BrsQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=h/vvbJOc422qaHUzuJHahQtiGQDqmsMBSmQoxoXqzik=;
 b=jvI2nENBYBC7/8WDKS0WMNK98dakk8sRqENqNbQJtJudD35bgxV5Nba1YGYromOMa2zi+cyP//BdIw2RjmwO7MgY/DQJk99EdbVT+cVEL+hqzTCqeBOOEUuXYPtNHS0gbMxEKTl7QQC4i1W+t7SefA56AlY/PO/7LTGua5xpV3wMfSAapCue5Gt8SE0KmwYWjTN/j1G/KO8/Y62JjVFRCfrlMtJRE+JDM/N8pMcdjsu6xsiYqD5yDaSHz5S5DCvDzdv5CPmNyhWWSb9nxBPEmEIcBrSL/hc8WJVSjLWsYZ5SFKxQXvYcB4lcVnODdeqwvdsN6OibdgBILm64fPhCow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=h/vvbJOc422qaHUzuJHahQtiGQDqmsMBSmQoxoXqzik=;
 b=Bq2k6W69k4Lp9/3Es60f+33tXIQeLe3jMfNwJuqpLbeXcKOM7Ukk1KaxJyHlMEhIl4CCqGWF2xPrpoPD4Rzh3F54RwON2cL0o+8VKtqYS179koncB+PGmVJ1X+m+m1k7NlPYh02fJe88kSPmBe6UhO/62+8PbFg2rFaq1tMWqaM=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (2603:10a6:8:10::18)
 by DB3PR0402MB3819.eurprd04.prod.outlook.com (2603:10a6:8:f::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.16; Thu, 9 Apr
 2020 14:22:36 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3143:c46:62e4:8a8b]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3143:c46:62e4:8a8b%7]) with mapi id 15.20.2878.017; Thu, 9 Apr 2020
 14:22:35 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Amit Kucheria <amit.kucheria@verdurent.com>
Subject: RE: [PATCH] dt-bindings: thermal: Convert i.MX8MM to json-schema
Thread-Topic: [PATCH] dt-bindings: thermal: Convert i.MX8MM to json-schema
Thread-Index: AQHWDh6eVqsQPsFREUa3AYHCzbRZsKhw0f+AgAAEthA=
Date: Thu, 9 Apr 2020 14:22:35 +0000
Message-ID: <DB3PR0402MB39160A94CD5E97AA79E2DB5AF5C10@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1586402293-30579-1-git-send-email-Anson.Huang@nxp.com>
 <CAHLCerNonZ7qJi8Qihmj87QteEnxTF0PRS6vw5GPemMurOfS9Q@mail.gmail.com>
In-Reply-To: <CAHLCerNonZ7qJi8Qihmj87QteEnxTF0PRS6vw5GPemMurOfS9Q@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [183.192.13.100]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 37f53c12-7536-41cc-1f4b-08d7dc917353
x-ms-traffictypediagnostic: DB3PR0402MB3819:|DB3PR0402MB3819:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB381961BECCE7802F59E0BB26F5C10@DB3PR0402MB3819.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2000;
x-forefront-prvs: 0368E78B5B
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB3PR0402MB3916.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(39860400002)(376002)(346002)(366004)(396003)(136003)(52536014)(66476007)(53546011)(4326008)(66556008)(76116006)(8676002)(54906003)(66946007)(7696005)(8936002)(64756008)(316002)(6506007)(71200400001)(44832011)(81166007)(9686003)(6916009)(45080400002)(33656002)(26005)(55016002)(66446008)(5660300002)(81156014)(2906002)(86362001)(186003)(83080400001)(7416002)(478600001);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Vxf/BhmByAUtb2CFhaVrYdZ73U2yElqd14vJEtt6hH9LGmYMte6nBskdKB/C/QrW55iCLaKKy9gaoghjbHkSDCnUoq/0kj4T01XELoEJstYL/mNqG0944D/EDPNuL3YJbl+7rYwwfqAoJS1SFvxaTC1SdeeZsfxL3YS85+r8eJql+AzRZtSTvmtTLeoXG8M8/ki2tAjWJDhRcnWAkKzolV7hKVTCXZAfMSzJup022qIG5RzUFiHLhoUKnngdREW4XSjuNmXtjqwurxK+SCGD81FlME+grwYfltN3mh83+12M6+EqvCGrZr1DQXVD4csnCj/L/B864UwlvFql+hQuO2I45TIxW2UNVdnmcF32e6ahVrNcjY8vz/zB3kHLC8t1Z7oNGkC3K3QEcHv6uclXuGs9KHKECU4MPB/AbyIpqhXAf1nBuLK1+gxTP2TPqujEz7BmA67/iYWSEl4762JXDwOBBJduM1+e5zVNtAdC3txCAForaOqQOp2hZHjKgIq8C1hSTLFhcmeAu6KH+Bn9Ig==
x-ms-exchange-antispam-messagedata: ovaxsw5qxxciUpLLA7mob7T///Cu+N0G7ZV7i+8kkUQZpt5qW5QaKJ6hxRX8aFOh8gmTcWgruD+SiEzlfDwqn3eD9o/w7+hS8emR9QgZZ0XjHxItd2ownM2avSh9p9+EuSHYgMB6hSrD1Rq0WvglLQ==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 37f53c12-7536-41cc-1f4b-08d7dc917353
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2020 14:22:35.8221 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: T52ULGU6/1REWtfilU23XxGrpAAQ5eM4AckaAkvy6d3AGdJFuCan46qqUAViEtYcLIF82oKasPjlVawe/xnUcA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3819
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_072242_722073_13F2ED08 
X-CRM114-Status: GOOD (  21.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.87 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Linux PM list <linux-pm@vger.kernel.org>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 LKML <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Zhang Rui <rui.zhang@intel.com>, Shawn Guo <shawnguo@kernel.org>,
 lakml <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Amit

> Subject: Re: [PATCH] dt-bindings: thermal: Convert i.MX8MM to json-schema
> 
> Hi Anson,
> 
> On Thu, Apr 9, 2020 at 8:56 AM Anson Huang <Anson.Huang@nxp.com>
> wrote:
> >
> > Convert the i.MX8MM thermal binding to DT schema format using
> > json-schema
> 
> Would it be possible to have a single yaml file for all i.MX thermal sensors by
> playing with required and optional properties ?

i.MX SoCs have many different thermal sensor IP and hence different thermal driver
is used, and different i.MX thermal drivers have different DT bindings, so is it good to
put all of them into single yaml file? For example, imx_thermal.c is for i.MX6/7 SoCs which
do NOT use of_thermal framework, imx8mm_thermal.c is for i.MX8MM/i.MX8MP which
use of_thermal framework.

If putting all of them into 1 yaml file, it will be almost like just putting 2 files together, I
Personally don't think it is a good idea.

> 
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> >  .../devicetree/bindings/thermal/imx8mm-thermal.txt | 15 ------
> >  .../bindings/thermal/imx8mm-thermal.yaml           | 53
> ++++++++++++++++++++++
> >  2 files changed, 53 insertions(+), 15 deletions(-)  delete mode
> > 100644 Documentation/devicetree/bindings/thermal/imx8mm-thermal.txt
> >  create mode 100644
> > Documentation/devicetree/bindings/thermal/imx8mm-thermal.yaml
> >
> > diff --git
> > a/Documentation/devicetree/bindings/thermal/imx8mm-thermal.txt
> > b/Documentation/devicetree/bindings/thermal/imx8mm-thermal.txt
> > deleted file mode 100644
> > index 3629d3c..0000000
> > --- a/Documentation/devicetree/bindings/thermal/imx8mm-thermal.txt
> > +++ /dev/null
> > @@ -1,15 +0,0 @@
> > -* Thermal Monitoring Unit (TMU) on Freescale i.MX8MM SoC
> > -
> > -Required properties:
> > -- compatible : Must be "fsl,imx8mm-tmu" or "fsl,imx8mp-tmu".
> > -- reg : Address range of TMU registers.
> > -- clocks : TMU's clock source.
> > -- #thermal-sensor-cells : Should be 0 or 1. See ./thermal.txt for a description.
> > -
> > -Example:
> > -tmu: tmu@30260000 {
> > -       compatible = "fsl,imx8mm-tmu";
> > -       reg = <0x30260000 0x10000>;
> > -       clocks = <&clk IMX8MM_CLK_TMU_ROOT>;
> > -       #thermal-sensor-cells = <0>;
> > -};
> > diff --git
> > a/Documentation/devicetree/bindings/thermal/imx8mm-thermal.yaml
> > b/Documentation/devicetree/bindings/thermal/imx8mm-thermal.yaml
> > new file mode 100644
> > index 0000000..53a42b3
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/thermal/imx8mm-thermal.yaml
> > @@ -0,0 +1,53 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +%YAML 1.2
> > +---
> > +$id:
> > +https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevi
> >
> +cetree.org%2Fschemas%2Fthermal%2Fimx8mm-thermal.yaml%23&amp;data
> =02%7
> >
> +C01%7CAnson.Huang%40nxp.com%7Cb190e049130e49e0750d08d7dc8e48
> a3%7C686e
> >
> +a1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637220375963888457&am
> p;sdata=s
> >
> +S8%2FR2j%2BT1UmDqXFIPPzPgWs26lMiwW3saTq4qlZAUs%3D&amp;reserve
> d=0
> > +$schema:
> > +https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevi
> >
> +cetree.org%2Fmeta-schemas%2Fcore.yaml%23&amp;data=02%7C01%7CAns
> on.Hua
> >
> +ng%40nxp.com%7Cb190e049130e49e0750d08d7dc8e48a3%7C686ea1d3bc
> 2b4c6fa92
> >
> +cd99c5c301635%7C0%7C0%7C637220375963898454&amp;sdata=tXIh9d%
> 2BszcExH0
> > +7ic7s%2BqJyUdbE0aHM3tH%2BwkWgnbhQ%3D&amp;reserved=0
> > +
> > +title: NXP i.MX8M Mini Thermal Binding
> > +
> > +maintainers:
> > +  - Anson Huang <Anson.Huang@nxp.com>
> > +
> > +properties:
> > +  compatible:
> > +    oneOf:
> > +      - items:
> > +          - enum:
> > +              - fsl,imx8mm-tmu
> > +              - fsl,imx8mp-tmu
> > +  reg:
> > +    description: |
> > +      Address range of TMU registers.
> > +    maxItems: 1
> > +  clocks:
> > +    description: |
> > +      TMU's clock source.
> > +    maxItems: 1
> > +
> > +  # See ./thermal.txt for details
> 
> Don't point to thermal.txt anymore. thermal.txt will be replaced by
> thermal-*.yaml files at some point soon.

OK, will remove it.

> 
> > +  "#thermal-sensor-cells":
> > +    enum:
> > +      - 0
> 
> Don't you have multiple sensors connected to this controller? In that case, 0
> won't be a valid value.

imx8mm_thermal driver is for i.MX8MM and i.MX8MP, i.MX8MM ONLY has 1 sensor,
while i.MX8MP has 2 sensors, that is why I put both 0 and 1 here.

Thanks,
Anson

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
