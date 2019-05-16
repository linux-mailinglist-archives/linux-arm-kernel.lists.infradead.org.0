Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C77B32031D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 12:06:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=Tk6be1FicW8Az6+kTUaitwGFyjbAmRfuKs/bmA6j2f0=; b=poc/xeVj4F5r8T
	j77YG3NU8OOycoK5AQqPwNg6tyC8S560NaMou5EuqjRXcBl2AN8etPNQgdLXzMKUBGpJgnVjASCxh
	XhltbPejCNT58+38v8KKpYrGA0zszSG4AAAObdrHgKNgjuJWOb+1JjElxWKr2SvEYrriARgDupUGz
	j5LvmiaA8IFrmkZWNFw5DBApgTn1KquY+sKTyoUFm8YixuMeRCAWQFs0We9Yti0GybDnHBEigVFeC
	gMhwtdnZcDzUzPBsr5x0W4AqXAlEcQLmBlwIJSvYoefuihhHGEPbLUXYLpEtQVlsrO/LLk1l50bkn
	jdTcd9X1bnu9ltNAUSOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRDHl-0002bk-5e; Thu, 16 May 2019 10:06:49 +0000
Received: from mail-ve1eur02on0624.outbound.protection.outlook.com
 ([2a01:111:f400:fe06::624]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRDHd-0002an-13
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 10:06:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I5vBga45MYiqdpNu7zWqidi/XNYLU95cZZEPhk9WmO0=;
 b=aiqcbv0Z+2WvwEz3JGM2xtnR+B+92AbYcPHK3Su7+vlWZUUKzChDlOyCw+s3iP5WBiGENcKdxcZ9VmpjfzIzJ0DZesvSWoEG0L38f2BLEnahI8a9H7iohH41sgYrgG1HrTw12CM21DwOWPI0Y1Idnu+y41H7HH63gAtX9dOY294=
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com (20.179.252.215) by
 AM0PR04MB4947.eurprd04.prod.outlook.com (20.177.40.80) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.17; Thu, 16 May 2019 10:06:34 +0000
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec]) by AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec%7]) with mapi id 15.20.1900.010; Thu, 16 May 2019
 10:06:34 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>
Subject: Re: [PATCH V3 1/2] soc: imx: Add SCU SoC info driver support
Thread-Topic: [PATCH V3 1/2] soc: imx: Add SCU SoC info driver support
Thread-Index: AQHVC5bqk1P5MqRzRU2gqcSUyb18Bw==
Date: Thu, 16 May 2019 10:06:34 +0000
Message-ID: <AM0PR04MB6434E01AD0A18405A9E0DDF8EE0A0@AM0PR04MB6434.eurprd04.prod.outlook.com>
References: <1557976777-8304-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 341301dc-2b6c-4a33-fb56-08d6d9e62d3b
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4947; 
x-ms-traffictypediagnostic: AM0PR04MB4947:
x-microsoft-antispam-prvs: <AM0PR04MB49477F0C70A62999B4BCCABDEE0A0@AM0PR04MB4947.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0039C6E5C5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(136003)(346002)(39860400002)(376002)(366004)(199004)(189003)(2906002)(5660300002)(446003)(6436002)(74316002)(476003)(7416002)(71200400001)(6246003)(316002)(55016002)(53936002)(14454004)(9686003)(71190400001)(86362001)(4326008)(25786009)(44832011)(305945005)(229853002)(486006)(256004)(6116002)(3846002)(73956011)(8676002)(81156014)(8936002)(26005)(81166006)(68736007)(2501003)(6506007)(99286004)(7696005)(76176011)(53546011)(102836004)(66066001)(66946007)(66476007)(186003)(33656002)(52536014)(54906003)(110136005)(7736002)(66556008)(91956017)(478600001)(64756008)(76116006)(66446008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4947;
 H:AM0PR04MB6434.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: NK78dy9QOveRvtdyRBZ5mkr3oJhFX0/Ybyz6HvkgdI2u7tA4lJldjYKl/l1/b5IK6CoCgI5v4wBClZIx7blgC/0MOPbCCxPOfxJvspa4l3rzoeEMP1NL958MIrCFVduSMrSAKtKD0T/0Cq7q7UBc96U3rWXp35yZIoCtwLGMvMvSv+nQ06vBBBe1mioyQfUIyyTb7hQ908CavBU+gKhPXE5qxp2E58f6l8qIZkbsLWE3bR0VZd8xqoPaHJorTPOwzecAx/HjMtQ3j2rY3DuXoAyG2TyPb4yC3SKgsdBPQ/HigbDOYtgi0Z7dd2PHETdrhBnPxdoH5kMJ+ZyAGiPqhIKfo1eViCHMJ20NlYP3YP0wywQLLrw/dHoymW1nErSJtf0ja9EGpqFhL67mIHM8mJQn/gOZmp5W9mWqZzQsnWc=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 341301dc-2b6c-4a33-fb56-08d6d9e62d3b
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2019 10:06:34.3525 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4947
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_030641_073507_53030A96 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe06:0:0:0:624 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 "enric.balletbo@collabora.com" <enric.balletbo@collabora.com>,
 Abel Vesa <abel.vesa@nxp.com>,
 "marc.w.gonzalez@free.fr" <marc.w.gonzalez@free.fr>,
 "maxime.ripard@bootlin.com" <maxime.ripard@bootlin.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 "dinguyen@kernel.org" <dinguyen@kernel.org>,
 "agross@kernel.org" <agross@kernel.org>,
 "jagan@amarulasolutions.com" <jagan@amarulasolutions.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 dl-linux-imx <linux-imx@nxp.com>, "olof@lixom.net" <olof@lixom.net>,
 "horms+renesas@verge.net.au" <horms+renesas@verge.net.au>,
 "festevam@gmail.com" <festevam@gmail.com>, "robh@kernel.org" <robh@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 16.05.2019 06:24, Anson Huang wrote:
> Add i.MX SCU SoC info driver to support i.MX8QXP SoC, introduce
> driver dependency into Kconfig as CONFIG_IMX_SCU must be
> selected to support i.MX SCU SoC driver, also need to use
> platform driver model to make sure IMX_SCU driver is probed
> before i.MX SCU SoC driver.

> +#define imx_scu_revision(soc_rev) \
> +	soc_rev ? \
> +	kasprintf(GFP_KERNEL, "%d.%d", (soc_rev >> 4) & 0xf,  soc_rev & 0xf) : \
> +	"unknown"

> +	id = of_match_node(imx_scu_soc_match, pdev->dev.of_node);
> +	data = id->data;
> +	if (data) {
> +		soc_dev_attr->soc_id = data->name;
> +		if (data->soc_revision)
> +			soc_rev = data->soc_revision();
> +	}
> +
> +	soc_dev_attr->revision = imx_scu_revision(soc_rev);
> +	if (!soc_dev_attr->revision)
> +		return -ENODEV;

The imx_scu_revision macro returns either kasprintf or "unknown", never 
NULL. So it's not clear what this return -ENODEV does exactly.

It makes more sense to return -ENODEV if get_soc_revision fails, so 
maybe check "soc_rev != 0" instead?

If you really want to check the kasprintf result then you should return 
-ENOMEM for it. It would be clearer if you dropped the imx_scu_revision 
revision macro and open-coded instead.

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
