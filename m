Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84F37125CC
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 02:52:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qBFO0fXNW1Lpk8Vs0G7BOlE4PmBv+D/S3le/9BTSfZM=; b=KBP7iIsh7oP3MG
	ZW7Ak5c3RaZ7abkfGhAmT4EiuTRWouTAxaaCPpXZ9yu5XjrR3bSqYZ76ID0ZmgiVvLuhiUllNvjVo
	ZzvmB3bvJujvy1+MWSwEJEn6FuaxU3x6vbNGXNsZnSjJLxRzZ0VRw1ad4gRaTs2jPNrKHP+N0i/mO
	Nl9Y/dihYJvSixMRLBXy+BcML9S/jXJG7tkB3oeqnoDdakDhlQewPGteKmqc8Aywqh2gdBPKrZ4Wd
	LsxrzM4lqBnsICumpJK/d34JnTBTh8A8mf+fcxNhy0yGK2Jz/esOYAyceKsgwJFIMKlmFQlJUd2/9
	AFIG/U1WA0pECwaYc5/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMMRI-00068X-HC; Fri, 03 May 2019 00:52:36 +0000
Received: from mail-am5eur03on0605.outbound.protection.outlook.com
 ([2a01:111:f400:fe08::605]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMMRB-000683-JG
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 00:52:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KBHPtdW70JPi+vsXxciAWn0+D/PcRDhCVzWhQ/Bm7lA=;
 b=Ul+9Usipgq4C9zqw4cIBQA/n80PS1B1iSLUeXlRYozsNjcf8eFH4CvqjYWff5WrBB37fj5mpvWwVhzxeosc8tVDNIlCvYoXsr+EVEwQgW6P9oLPWLcwiB04x8zNkH4RcDAqx2C5T5ef8+ghiGevJ151jIxY6UFurEzuyJqDgmak=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB5026.eurprd04.prod.outlook.com (20.177.40.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.16; Fri, 3 May 2019 00:52:17 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::c415:3cab:a042:2e13]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::c415:3cab:a042:2e13%6]) with mapi id 15.20.1856.008; Fri, 3 May 2019
 00:52:17 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: RE: [PATCH V2 0/2] clk: imx: scu: add parsing clocks from device tree
 support
Thread-Topic: [PATCH V2 0/2] clk: imx: scu: add parsing clocks from device
 tree support
Thread-Index: AQHU/3sXAchBbqvng0+oy01651OLQqZYlC0A
Date: Fri, 3 May 2019 00:52:17 +0000
Message-ID: <AM0PR04MB4211508CC25111598527757A80350@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <1556645270-20648-1-git-send-email-aisheng.dong@nxp.com>
In-Reply-To: <1556645270-20648-1-git-send-email-aisheng.dong@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [101.93.238.110]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5dd3edc7-3ab4-49fa-c740-08d6cf619710
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5026; 
x-ms-traffictypediagnostic: AM0PR04MB5026:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <AM0PR04MB502680CADF20174F1679EA1780350@AM0PR04MB5026.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0026334A56
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(376002)(39860400002)(136003)(366004)(396003)(54534003)(189003)(199004)(53936002)(9686003)(68736007)(76116006)(110136005)(256004)(4326008)(478600001)(55016002)(305945005)(26005)(316002)(86362001)(52536014)(6246003)(54906003)(6306002)(2501003)(33656002)(25786009)(74316002)(2906002)(73956011)(486006)(186003)(476003)(6116002)(5660300002)(71200400001)(81166006)(6506007)(102836004)(81156014)(229853002)(71190400001)(7736002)(446003)(3846002)(966005)(99286004)(8676002)(7696005)(76176011)(8936002)(44832011)(64756008)(66476007)(14454004)(66066001)(66946007)(6436002)(11346002)(66556008)(66446008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5026;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: hHHBZsSeEyikvY/6dta2fX+LtC9hAmQOl2TGLmdP8SUqDRGT6EhDZXVYVbkMpLkqeHjkuDSfsCAGJL8ZhusJeImUu1SOSjfNAICLSN3Dpl9DseqlqMF4gJj4x7v6xbJCOn0tP7DSdhcwYM8p1WAPkX39xEpSB+bK+vm1rrNogpFNJAN4VvaNwSByfQvorZzDNCk6CSOqSTqL8wpKObEB/YKSKe1r1Yz1/fZAKiRw/CRBzqqdMMLKI1SXmMGDj+vwdsTy/YLABWX+rhRGlFyLSla9ZmRqXWKEDzFme8vVJ2JGHm/sxuep6XYQglO/E4F8OragCn3FgxN+yYEYTaQKjrzh8NwK72bxQm+tsr34B4WOZLjrHxsO+054d0jWDRmtz0rG6ygRJsuTobyqroFZ2Z4Tfhbwm0cqo4ur8t3zhvw=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5dd3edc7-3ab4-49fa-c740-08d6cf619710
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 May 2019 00:52:17.1451 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5026
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_175229_636379_925FE09B 
X-CRM114-Status: GOOD (  17.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe08:0:0:0:605 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "sboyd@kernel.org" <sboyd@kernel.org>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

Do you have a chance to help look at this?

Regards
Dong Aisheng

> From: Aisheng Dong
> Sent: Wednesday, May 1, 2019 1:35 AM
> 
> This is a follow up of the patch thread.
> https://www.spinics.net/lists/devicetree/msg283675.html
> 
> This patch series is a preparation for the MX8 Architecture improvement.
> As for IMX SCU based platforms like MX8QM and MX8QXP, they are comprised
> of a couple of SS(Subsystems) while most of them within the same SS can be
> shared. e.g. Clocks, Devices and etc.
> 
> However, current device tree is heavily depends on Clocks IDs defined which
> cause some troubles in writing the common <soc>-ss-xx.dtsi file.
> 
> This patch series adds a new binding to support parsing clocks from device tree
> which can fully decouple the dependency of Clock IDs in device tree and make
> us be able to write a fully generic clock driver for SCU based SoCs.
> And it can make the driver much easily to be maintained in the future and
> avoid writing a lot of duplicated codes.
> 
> ChangeLog:
> v1->v2:
>  * SCU clock changed to one cell clock binding inspired by arm,scpi.txt
>    Documentation/devicetree/bindings/arm/arm,scpi.txt
>  * Add required power domain property
>  * Dropped PATCH 3&4 first, will send the updated version accordingly
>    after the binding is finally determined,
> 
> Dong Aisheng (2):
>   dt-bindings: firmware: imx-scu: new binding to parse clocks from
>     device tree
>   dt-bindings: clock: imx-lpcg: add support to parse clocks from device
>     tree
> 
>  .../devicetree/bindings/arm/freescale/fsl,scu.txt  | 45
> ++++++++++++++++++----
>  .../devicetree/bindings/clock/imx8qxp-lpcg.txt     | 34 +++++++++++++---
>  include/dt-bindings/firmware/imx/rsrc.h            | 17 ++++++++
>  3 files changed, 82 insertions(+), 14 deletions(-)
> 
> --
> 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
