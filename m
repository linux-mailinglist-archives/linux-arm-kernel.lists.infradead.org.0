Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A05EE1EBBD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 12:05:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=1Jn6/eP9GP131t2cnHO2NO752WvbXPrF5Jf02G+6E90=; b=JdcQ/8yw34nXHi
	HfM80Ljf7WMhq3kcSgqWSlMleglCt+RXN2oz/XnryPicf+h1xBn5gDtCPQadNMpKEEC3XSnCHKw9j
	txDxC0kfhjaGOz13czVvMuVsJ3+p+uxpMwFYt2A/IZSabXKepgapqHcZyiD+Vy6bVdnObKnLBfHUB
	J+Rltj7t37RSY9J10KxBIfpqKQi/FsJQK/zVwTrRmpKzenP5QaM/98C71j6+qreKJVyiCnCrM3YH4
	UN8wwKy8RGNymrAJG724k3XdiIpgo3a8uEwbz/zc4/A5/QGX+F3yryZUyS8U/2Edti8hzkhnt3hSQ
	CDuz4E9+d34Gz6CrGiNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQqml-0002eI-TP; Wed, 15 May 2019 10:05:19 +0000
Received: from mail-vi1eur04on0622.outbound.protection.outlook.com
 ([2a01:111:f400:fe0e::622]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQqmJ-0001mZ-1L
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 10:04:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sm2X//WPXOIgD5UW/K/WAjv2L76gLqUFtG3NSJhdqLY=;
 b=Mn4zWIIoM4a2at+hWHmy9qriRlUKed+NYgG5SedLvMisPKBjxgCHILC/VPr3tLTLpj2zQnHozv8/uDfVru754RgLLRTR/FMtg7N4X0hSQTrSZiUGdIvdicbMYoeg4PwcSlWSH7vOoaZU0T7HKyS2iSYLMGTswTl7lYPF0WR2CNw=
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com (20.179.252.215) by
 AM0PR04MB4801.eurprd04.prod.outlook.com (20.177.41.155) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.25; Wed, 15 May 2019 10:04:46 +0000
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec]) by AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec%7]) with mapi id 15.20.1900.010; Wed, 15 May 2019
 10:04:46 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Anson Huang <anson.huang@nxp.com>
Subject: Re: [PATCH V2 1/2] soc: imx: Add SCU SoC info driver support
Thread-Topic: [PATCH V2 1/2] soc: imx: Add SCU SoC info driver support
Thread-Index: AQHVCvixb1MFrIDHlECOalYM+lyDeQ==
Date: Wed, 15 May 2019 10:04:46 +0000
Message-ID: <AM0PR04MB6434C2BCE2116836CFC0FEBFEE090@AM0PR04MB6434.eurprd04.prod.outlook.com>
References: <1557908823-11349-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e9c69b43-db63-4003-37d1-08d6d91cc2ba
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4801; 
x-ms-traffictypediagnostic: AM0PR04MB4801:
x-microsoft-antispam-prvs: <AM0PR04MB480156536BF4DAA6805F45BAEE090@AM0PR04MB4801.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-forefront-prvs: 0038DE95A2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(346002)(396003)(136003)(376002)(366004)(189003)(199004)(44832011)(486006)(66476007)(66556008)(53936002)(66066001)(5660300002)(6862004)(229853002)(73956011)(66446008)(64756008)(91956017)(76116006)(52536014)(99286004)(476003)(66946007)(478600001)(7696005)(14454004)(316002)(86362001)(76176011)(4744005)(446003)(102836004)(6116002)(8676002)(2906002)(71190400001)(186003)(14444005)(6506007)(53546011)(26005)(256004)(55016002)(9686003)(54906003)(3846002)(6636002)(4326008)(33656002)(6246003)(6436002)(305945005)(71200400001)(7736002)(81156014)(74316002)(81166006)(25786009)(8936002)(68736007)(7416002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4801;
 H:AM0PR04MB6434.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: y/ThbNd0wWXL7H2R4+RjpW0YsbGv8HGlcSfPA1sydRKGglH2TBBVqXpoeTvbrNw85ApwzaQu3KgLSlvsZIgCjH8k3SJNciRvyKCuFijM8wN316RjllItPd1wgnuRuZ9HaUZRjS0hqWydR+xQVP3guhdMaSseLfuFSTXCwdUP7eOzYJu/JKJqEOT2oQasUWkz0NQ6qIvhLc/E5Yy49cGihE51W01XQt6pm36DiXu6XSQCgi6iiDFJvTn1S6cYWMsBaq234YaXDLz9ddbKa7s0f1agfrQVkldkhoCJPf/rH8f/S33njOqLiDbh6vwjw7d6fucwZtFuwfrmeeWSK+lbTMAtiLaEOCajkbK29ORMN0BHCV+U8xasMzUoMB7IEmC8FHGkuLO8q0zTxf/HO7gOZXRudTWpj7lcXdonIYTBaWE=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e9c69b43-db63-4003-37d1-08d6d91cc2ba
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 May 2019 10:04:46.7000 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4801
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_030451_084926_96BB0A94 
X-CRM114-Status: UNSURE (   9.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0e:0:0:0:622 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "maxime.ripard@bootlin.com" <maxime.ripard@bootlin.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 "festevam@gmail.com" <festevam@gmail.com>, "robh@kernel.org" <robh@kernel.org>,
 Abel Vesa <abel.vesa@nxp.com>, "agross@kernel.org" <agross@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "jagan@amarulasolutions.com" <jagan@amarulasolutions.com>,
 "marc.w.gonzalez@free.fr" <marc.w.gonzalez@free.fr>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "olof@lixom.net" <olof@lixom.net>,
 "horms+renesas@verge.net.au" <horms+renesas@verge.net.au>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dinguyen@kernel.org" <dinguyen@kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "enric.balletbo@collabora.com" <enric.balletbo@collabora.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 15.05.2019 11:32, Anson Huang wrote:
> Add i.MX SCU SoC info driver to support i.MX8QXP SoC, introduce
> driver dependency into Kconfig as CONFIG_IMX_SCU must be
> selected to support i.MX SCU SoC driver, also need to use
> platform driver model to make sure IMX_SCU driver is probed
> before i.MX SCU SoC driver.
> 
> With this patch, SoC info can be read from sysfs:

> +	id = of_match_node(imx_scu_soc_match, root);
> +	if (!id) {
> +		of_node_put(root);
> +		return -ENODEV;
> +	}

Perhaps this check should be moved from imx_scu_soc_probe to 
imx_scu_soc_init? As far as I can tell this "probe" function will be 
attempted on all SOCs (even non-imx). Better to check if we're on a 
SCU-based soc early and avoid temporary allocations.

> +module_init(imx_scu_soc_init);
> +module_exit(imx_scu_soc_exit);

Please don't make this a module

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
