Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ABE282B2B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 07:42:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OvqnxLVpFURxlxDp19bDDzKQC3n/kHP2WeZSmQyu0Zw=; b=B/x/X5rVT6elqo
	3B+35zaK+wBpj9NvgtF9tRtksBsDR5mYxZD27zKM1kQkRAAo62mG/6plHEG30RKnOC9zIvSQXM2w3
	XJrIsZhPy90PEtuMkBPdtESSFHyVXe+1T3fRW5Pv7lU8AjibvR1YWijG5vBoswFDqlue6T755U7Nx
	MvYb5xkyiBnq6VfUdtRWudLv6N2K2u4LFFfDeeEL8qw3PtzqBnJeoEHY4PIMSm0s9rigk9pFPwYx+
	XcCo5tzRQ50pQM9xh+JKeTYrW90QlnRzf57fALYV5OCnh5U2pMQwuRL6NByIq1s++MLgWVI/LaD8C
	Js7Nsukt6pyLwZu+pbTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1husEj-0004bK-1s; Tue, 06 Aug 2019 05:42:17 +0000
Received: from mail-eopbgr80047.outbound.protection.outlook.com ([40.107.8.47]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1husEb-0004aq-8C
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 05:42:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SZ35JDsyjhCLc9U8CNwez0+TkhbruOLENHIiA6vQHTJGgU374AQUbcXllfSpH1jAtDR9wDOaqNuCNLywrbOHU5VLylkkvCd0d4nNx7pTZfbkvxj5XVrgyznUniDdJ885lkSeQLWjXJnnuG965zWScuIKDdOafgID4qLL+3vqzVUXjQhcL8DK9ZywzlwLbAUu+RjpuE/0iGwOz7mWIfU6aYNbCdJe62FFHlxKmZ78pMHauudfxYDQWaKyANorBCYfVhTwoMVQbUITizaFGoIx7foaRGHvYCj0Ge6tVJcRTu95QmZua8YazwN/528fthPLPykN8cX8+fQ3jFlOfeDtKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ySpnPtj+nAJhw3HWY0KdSsGAi8eKVcZHPYzTDwzW0iA=;
 b=j3YTQKf2bVx/HH0syXmodIDO/W8VK0RTZupRp7NuH2jLkCGmJtKoVZy6kTxRQBWeh2t3/0bXLWEnxwlgclZBJjC3UjJkAnLbZT3gl6UMPuogHfHeOw7QVO3fJ3WGNw1GBchV3L7ApsK9oj+2Fs800DkAXV6Leqex7xi5P+NBFmdMH+qNf2jDMaiebvcam2raM3Qd8SCGtu8WDw6S+ai55lF0wHMYvbob0RBuqwBnqzFKvts/FqMU5Pvvrxx29yn3HN7ffa8yzqrNujJfv1PkgViM/juuF+MItcW2AL/zFFNgID9hiPRVRWHSchrlf+ewHG634gZBH6K6HYsZfZKMLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ySpnPtj+nAJhw3HWY0KdSsGAi8eKVcZHPYzTDwzW0iA=;
 b=JWrGbIQ6BH1fWSOKf4EAFZYRPYg5wFjxmBs0DMiZYz/bN/tka5TlK1SRiLLYP2Uvt38ORhbnE91mxVWACZ362zMjAKKGS1TMjy5j4viuvrmR1wFW46/Qpr5O2SRu+hNvGc8aaZQ+D86aCkIB5tdqAKarEE7j/ciavQ4FlROyo1E=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3915.eurprd04.prod.outlook.com (52.134.71.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.17; Tue, 6 Aug 2019 05:42:06 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::7cdf:bddc:212c:f77e]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::7cdf:bddc:212c:f77e%4]) with mapi id 15.20.2136.018; Tue, 6 Aug 2019
 05:42:05 +0000
From: Anson Huang <anson.huang@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
 "manivannan.sadhasivam@linaro.org" <manivannan.sadhasivam@linaro.org>,
 "j.neuschaefer@gmx.net" <j.neuschaefer@gmx.net>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>, Leo Li
 <leoyang.li@nxp.com>, Aisheng Dong <aisheng.dong@nxp.com>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>, Vabhav Sharma
 <vabhav.sharma@nxp.com>, Bhaskar Upadhaya <bhaskar.upadhaya@nxp.com>, Jacky
 Bai <ping.bai@nxp.com>, Pramod Kumar <pramod.kumar_1@nxp.com>, Leonard
 Crestez <leonard.crestez@nxp.com>, Daniel Baluta <daniel.baluta@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH V4 1/4] dt-bindings: arm: imx: Add the soc binding for
 i.MX8MN
Thread-Topic: [PATCH V4 1/4] dt-bindings: arm: imx: Add the soc binding for
 i.MX8MN
Thread-Index: AQHVJkWH8FCDNlj8C0OpehzGXmDK06bt5qDg
Date: Tue, 6 Aug 2019 05:42:05 +0000
Message-ID: <DB3PR0402MB39162CCE914A9C250CC203BFF5D50@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20190619022145.42398-1-Anson.Huang@nxp.com>
In-Reply-To: <20190619022145.42398-1-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 637edd3b-8101-4843-3777-08d71a30d0cb
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3915; 
x-ms-traffictypediagnostic: DB3PR0402MB3915:
x-microsoft-antispam-prvs: <DB3PR0402MB391563657ADE1D3EFC05F6F2F5D50@DB3PR0402MB3915.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2201;
x-forefront-prvs: 0121F24F22
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(396003)(366004)(376002)(346002)(189003)(199004)(66446008)(66556008)(44832011)(305945005)(74316002)(7736002)(8936002)(14454004)(8676002)(478600001)(99286004)(186003)(26005)(81156014)(4326008)(446003)(33656002)(11346002)(53936002)(486006)(81166006)(2501003)(9686003)(71200400001)(25786009)(6246003)(476003)(6116002)(316002)(2906002)(3846002)(2201001)(68736007)(6506007)(66066001)(76116006)(229853002)(110136005)(7696005)(6436002)(52536014)(71190400001)(256004)(76176011)(55016002)(86362001)(4744005)(64756008)(7416002)(102836004)(66946007)(66476007)(5660300002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3915;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 7zFdRHDwW2sKsZGoC4D0tJQAEmfG+egYV81Axgm/ifaIFIXWZknjk1AgMTwcua6ztvjZC18/6IL1PtjK6zt63bWNqi/W9FRHMz/BJ2JnfXtV1vgo1/6ecrWtbkbc95TsxYkWiSkOOxnnqOKOqDjLhMYLDbbCuT6VUUbyIWZ2LDmI2xRyOYk7kfox466h4ZPfNbuoz0ROIXEPWaQloQu468dKYG48pq+BYw5kf9XzRYAXZlw/IbdHLqaXJUUE/4BmUYi74MBXWL3FAHPzar7wyPKX6iV0FUwgetKmKfz3b+Wq26c512M5Jjn6ENfW0GolO0VCfAAAc6EtzUVxAmQb040AS8wPW0+FBSurjvxKX0JEuFYDZMmQ6sP6KgJksS0cB3Sgp6pgeEOmrKTpIyw9HiyWzLNJeVfZqPdF7XrAQBM=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 637edd3b-8101-4843-3777-08d71a30d0cb
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Aug 2019 05:42:05.8726 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3915
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_224209_292763_6176AD55 
X-CRM114-Status: GOOD (  14.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.47 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Ping for this patch series...

> From: Anson Huang <Anson.Huang@nxp.com>
> 
> This patch adds the soc & board binding for i.MX8MN.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
> No change.
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml
> b/Documentation/devicetree/bindings/arm/fsl.yaml
> index 407138e..b35abb1 100644
> --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> @@ -177,6 +177,12 @@ properties:
>                - fsl,imx8mm-evk            # i.MX8MM EVK Board
>            - const: fsl,imx8mm
> 
> +      - description: i.MX8MN based Boards
> +        items:
> +          - enum:
> +              - fsl,imx8mn-ddr4-evk            # i.MX8MN DDR4 EVK Board
> +          - const: fsl,imx8mn
> +
>        - description: i.MX8QXP based Boards
>          items:
>            - enum:
> --
> 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
