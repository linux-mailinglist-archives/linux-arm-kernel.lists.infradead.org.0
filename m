Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DFE96BA06
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 12:23:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ScImnZu8nQS+diaC9K1wZRXqP8hye3HJ4Wi57qYx1FA=; b=aO9J8GuBpb0H2M
	TOEDn14/prw7NZb1Qn8OCFUmHleHPGiPqPl6in1F6tHO7LYfKQpIm8Oj7Bjvj1VyXcxLAzC2nJ54v
	6mgl5CwvZuqub06m1ZKB8/LkqrGuUf7fupSj99JtCjgdE2wJyiutn4uhoe6yt3EfK58ExNaRuLEbG
	eLw7k63ff7AiJL1oGWIVhhAMwegIEeXjeUtaC5u25pcS0Y1Spj6N7fSaTSagbWdI9HGfNbrs1Wq+/
	7M/0pQyttU44xc9kpzQd+LWuyxCfsv75pNCbThruY18JptIJN0SKpss9/pwTYGucbORdX7bMeXrvU
	2emzRaeOmzncVs8JPiDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnh6C-0005gQ-DC; Wed, 17 Jul 2019 10:23:48 +0000
Received: from mail-eopbgr150059.outbound.protection.outlook.com
 ([40.107.15.59] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnh5z-0005fb-Lk
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 10:23:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oCCh6G0rzEGFy1hE82SMmkwmF8XPKgOyBzy44kyDHK3BF38IQteOIdmineqvs856DnR+7mLg1jaDVgJxMOKnVdz0AnPxBkJawse0IlyjuaQ+UdGIMntTBqTxavJuLmON00UU6Qu/rMn1pyUWtckfsPg2lZCp/bosor1LrPzw+Elos2iGbIm2NcV650atST7e8tQNd2OBQj0SnkLqrsZU0L3o8biqvqYzAqo8eEec2CyI3i4r1Yq/A3np4DyzkUyIGqTrG9HeNUdgnuUlXDh9gSKZbn+QM7gKUfzsqGv+ksaQbMg/NrEJ5lx/VJKnM9jMpsVMOe4Xp0dCPZWiEgauBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wueCf/hXeaQyAwOm6UmL07RiNuadLcnmS2Ujosk091M=;
 b=iHXGBPRUEbHm4xpCi8QBlGo0rnDWf7m6qSWhWhx65i+LZQ2VlM/KnJMhPERkOq+sHUhjIb7nLBfuyhTpMDcNbiwaQle/u3xU/Zm0wSOASZXHI+4bW9UFosMLG0zuHj9DCfIQHgLJQPyD/p/SkmxCeZssCBmr5GOXm+I4Tj+DwxVJaTBUyvUBJDmZPLQ8rQ9HePOT+vNIXuym+/bMZsjlt17EayZ/Y/ENXDrEH+sKvIVlYUMuUbLYEvWbITYiTXqABlPvBr5LcVQK/dDgrJEsxNCbyOd/01fKUhjlcAWGYNwsurIr9jMeaX8VDb6g111w0r8bs9h5EIHvql93lQ3F8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wueCf/hXeaQyAwOm6UmL07RiNuadLcnmS2Ujosk091M=;
 b=MXceF338k9S0MQVGCwQxlY/AqeJ3061OlmLHTBNslz5NaeyQDjO9f8kS+jtA61R07rPoHbAmhvt7pGU5NuR2na0wojo1fy4uOB8l/WUzpaU4JkhEQcgw2ngRE+IYBHcuA/K4639iKJB71KijXTaEuorWJSSfeplIuKPaDKxGynw=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB6306.eurprd04.prod.outlook.com (20.179.33.150) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.14; Wed, 17 Jul 2019 10:23:32 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::7882:51:e491:8431]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::7882:51:e491:8431%7]) with mapi id 15.20.2073.012; Wed, 17 Jul 2019
 10:23:27 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "ulf.hansson@linaro.org"
 <ulf.hansson@linaro.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "stefan.wahren@i2se.com" <stefan.wahren@i2se.com>,
 "kstewart@linuxfoundation.org" <kstewart@linuxfoundation.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>, "linux-mmc@vger.kernel.org"
 <linux-mmc@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] mmc: mxs: use devm_platform_ioremap_resource() to
 simplify code
Thread-Topic: [PATCH] mmc: mxs: use devm_platform_ioremap_resource() to
 simplify code
Thread-Index: AQHVPH5ZD2s2daZHsEmyPNL+D+zKhabOmihg
Date: Wed, 17 Jul 2019 10:23:27 +0000
Message-ID: <AM0PR04MB4211E9CDDD5F3B0A54C07E8380C90@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <20190717085259.31235-1-Anson.Huang@nxp.com>
In-Reply-To: <20190717085259.31235-1-Anson.Huang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 03393e12-9b38-4c30-d136-08d70aa0ceb3
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB6306; 
x-ms-traffictypediagnostic: AM0PR04MB6306:
x-microsoft-antispam-prvs: <AM0PR04MB6306EE9D1E1856E12172DC7180C90@AM0PR04MB6306.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1247;
x-forefront-prvs: 01018CB5B3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(376002)(366004)(346002)(396003)(199004)(189003)(7416002)(81166006)(81156014)(446003)(74316002)(2501003)(7736002)(25786009)(64756008)(66946007)(66476007)(66556008)(66446008)(86362001)(8936002)(478600001)(558084003)(68736007)(76116006)(316002)(8676002)(110136005)(53936002)(76176011)(55016002)(5660300002)(6436002)(3846002)(4326008)(6116002)(66066001)(33656002)(52536014)(7696005)(11346002)(476003)(14454004)(2906002)(71190400001)(44832011)(305945005)(486006)(71200400001)(9686003)(6246003)(229853002)(186003)(102836004)(26005)(6506007)(2201001)(256004)(99286004)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6306;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 7WR9AQ7PwPg1DMWmIZAf6ck97y2jWZRmc7TnGoIjB9EDU85QLO8XhrFI6FIzgga96bBJ/UgJYFnoD5TQVt4XAfP5WxJv211mb1rgJAo2ifv1OxX1H9FDfiF04Pk7LQtmmi1uUn5xsQn/PINiAzPmbGTNX5HIIzSaoQe28Oa3OoEYHeTG+6wV6eW08rmqshFK8nEnpCkfCc5vrOHS4votdtC79nY16fc7JQqeVWGkwIJ+gwjEXVBNcXFJJ93iuLh39Ekxn4B2+ohBOzVrahR01ZXnhBgwcP1NAWtrSMTVs/QRmvZOkUX+sLcP6Ik59EGSfwLNIztSJww2IEApneuISAjVzlngBCVrA10YzyNFbDxGKQ2mB33kiJutdzhIt7zpkRfUGTV60iNwIsnhQEvs1PJdcfo/Eg0L1ZP+5wJbQak=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 03393e12-9b38-4c30-d136-08d70aa0ceb3
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jul 2019 10:23:27.4630 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aisheng.dong@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6306
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_032335_717804_8AC847B4 
X-CRM114-Status: UNSURE (   6.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.59 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
> Sent: Wednesday, July 17, 2019 4:53 PM
> 
> Use the new helper devm_platform_ioremap_resource() which wraps the
> platform_get_resource() and devm_ioremap_resource() together, to simplify
> the code.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Aisheng
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
