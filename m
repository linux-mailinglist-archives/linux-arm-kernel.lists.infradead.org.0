Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4036113DEE
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 May 2019 08:32:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YTkQ1imH7+kn20XCuVvBNG79dDtNlHRqxbUjb55NhrY=; b=gybkZ5LZjFShUA
	Eg3IrQuw0QmY8G92RHcT7ApStmBWcYIqpzqsJCCCR57mrjgw38hNuk96FSsDJ+WhHRMZIE3fwjzK1
	ZYRG+hIEd/oGL6TNSOwelibnDWf8fISi1hQpAbM+ThnGhfgKNSugxSg2pZxSIwkki2tDP5+mGAWr9
	YtNepGvulQMenF2fU7bTE2qqoQuoGtzGLd5IgCvd3O43Ymm3rCPQgReeCE/FFDBSKEiZ+hj421AHF
	DC7XwbyIeS2Eo2WYMVsy11UF7kGDLyb8BvOOrcWZ4LHBJ83mvetOGdNMmr2GopmcxFte8QbdV5I9g
	OFUSs4lufKwdRuGv9bQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNAhY-0002Ty-TI; Sun, 05 May 2019 06:32:44 +0000
Received: from mail-eopbgr60050.outbound.protection.outlook.com ([40.107.6.50]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNAhL-0002Tc-6t
 for linux-arm-kernel@lists.infradead.org; Sun, 05 May 2019 06:32:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YvCLbovyrtXbhBwylybs9/WOyi1tEma+jWqgLTlf+xc=;
 b=P6MTzGn5o4gnj8zrwlAgkEnrm+MNFAbXTrG4juQ30j5dNbKfDw45fGb1dpxwtG7CHyingp7bH0ZTGEyQfa4P9l/JP5P78O8gZODaC1EpkW7KLLHjUFr56/FGPn4y1i70FA50N40YSN0xqq2FG94ZniC4nXSQIf56piHqk3bstrE=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB4196.eurprd04.prod.outlook.com (52.134.90.28) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.11; Sun, 5 May 2019 06:32:21 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::c415:3cab:a042:2e13]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::c415:3cab:a042:2e13%6]) with mapi id 15.20.1856.012; Sun, 5 May 2019
 06:32:21 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "mturquette@baylibre.com"
 <mturquette@baylibre.com>, "sboyd@kernel.org" <sboyd@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, "l.stach@pengutronix.de"
 <l.stach@pengutronix.de>, "pp@emlix.com" <pp@emlix.com>,
 "tiny.windzz@gmail.com" <tiny.windzz@gmail.com>, "colin.didier@devialet.com"
 <colin.didier@devialet.com>, "robh@kernel.org" <robh@kernel.org>, Jacky Bai
 <ping.bai@nxp.com>, Leonard Crestez <leonard.crestez@nxp.com>,
 "hofrat@osadl.org" <hofrat@osadl.org>, "michael@amarulasolutions.com"
 <michael@amarulasolutions.com>, "stefan@agner.ch" <stefan@agner.ch>, Abel
 Vesa <abel.vesa@nxp.com>, "linux-clk@vger.kernel.org"
 <linux-clk@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH 1/2] clk: imx: Add common API for masking MMDC handshake
Thread-Topic: [PATCH 1/2] clk: imx: Add common API for masking MMDC handshake
Thread-Index: AQHVAwpmnCdleDO3TECDUWrDtJQRdKZcEfNg
Date: Sun, 5 May 2019 06:32:21 +0000
Message-ID: <AM0PR04MB42111E93D8F3C867CA49CC4280370@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <1557036830-13567-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1557036830-13567-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8c10e469-88b5-4f97-a225-08d6d1236ddc
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4196; 
x-ms-traffictypediagnostic: AM0PR04MB4196:
x-microsoft-antispam-prvs: <AM0PR04MB419602F0AF2956654CF4308980370@AM0PR04MB4196.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3044;
x-forefront-prvs: 00286C0CA6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(376002)(366004)(396003)(346002)(136003)(189003)(199004)(66066001)(6246003)(4744005)(53936002)(14454004)(66556008)(4326008)(7416002)(2501003)(44832011)(26005)(186003)(476003)(2201001)(7736002)(486006)(305945005)(316002)(81166006)(2906002)(76116006)(81156014)(66476007)(66446008)(73956011)(9686003)(8676002)(66946007)(8936002)(64756008)(5660300002)(6436002)(86362001)(55016002)(229853002)(52536014)(68736007)(71200400001)(71190400001)(53546011)(6506007)(7696005)(76176011)(256004)(102836004)(33656002)(99286004)(6116002)(446003)(3846002)(11346002)(110136005)(478600001)(74316002)(25786009)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4196;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 75MZNZTJC0oRR0rNu4i2eEyrb6v9ry7X/mc9gwWj8cWrqXTvJ0t1pD26pKvwgoHWBLXPniSFx6QVRoWXMM7bceiUszDw447JZophY9tpyyfsAd+gEDOcO5XPJUBV91xcn9e38SoGlGRRKXYDG1pae5FuRPUUHxN5rf/y4ZXbXgWKBEG32J1RZSskg7iF4Xa4dsqofVpze8N+3EbqPQ0XlHLI9+UMqrvKAj7IC7kirpxbkWs/PMuRLM9h78LpVDpo450aclHjOcEUVUduUY9RNvC+OWEkukI5D2oHXSz814WahpPltjts8L+6PmZUIJDWQJSdR6kgLz7wCnrBUzdntJ4/cb+Qortww/4hOkJEf8XhwukdV2/4hh26e+CDfOLKYAQZR2dgiV85LHNE+f2pcQ+y7E8r/GLbeTmV52/jbmg=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c10e469-88b5-4f97-a225-08d6d1236ddc
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 May 2019 06:32:21.5391 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4196
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_233231_252312_2AEBEFE6 
X-CRM114-Status: UNSURE (   7.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.50 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Anson Huang
> Sent: Sunday, May 5, 2019 2:19 PM
> Subject: [PATCH 1/2] clk: imx: Add common API for masking MMDC handshake
> 
> All i.MX6 SoCs need to mask unused MMDC channel's handshake for low
> power modes, this patch provides common API for masking the MMDC
> channel passed from caller.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Dong Aisheng

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
