Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21B6E1D7061
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 07:32:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hVIpY82942Pc61iXOjFVXpPWi4GgBQ79jZeFhPNkOU0=; b=HJ2gXwhNHN+pDJ
	MXmz8r8MyICsvkQQxNcjywDF3Qrmnx1LgpNxDzXfoRIcexUa7uoYykMNuvpAafMRBeqwjyDFqxiyA
	3CztpxhuzKLX0SLbwBBqQHcceGZOiKQ9cdry4Z/zd5wT+CvGrX9lwOKclOfgP4333YeR2LupAMXAa
	agzuM+BDcXN33b6MQV5TrmV7sBu9Jjr4xCvB0FlozvemF26dqBcCo+MVjJIGFnt/uGZ7++MD90eFG
	E4xIC2GwL7N/9en3UwmCdbN4Q5XU14P0vPbFOo59MTy5g/A+VdwuKNRzAm1rpNk16SJcOU6VgYKwh
	N0RsbI3q/mIOcc2siQrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaYNZ-0002ah-VU; Mon, 18 May 2020 05:31:57 +0000
Received: from mail-eopbgr80055.outbound.protection.outlook.com ([40.107.8.55]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaYNR-0002Zi-As
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 05:31:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YJfAxd0P9Dk4DLE3hfzOyhYv2z0dDuMVO39WrtvDFegZsm4wqHgZnvvpIROFdXnN25dXJ94s9cGYoShsRT6RY0IzENR2FVU60mHzVhmVFmL6gur44hXeuJlfxs5GNdPVXzjJ3EhbYBD8IW1pu+wH+Q58QDdURAPoVd/cg4DCHz/Iue5f4krcitqnkWV0litn9T7sjesNCVQAz+cJm01a8NDq2KvZInpn/Qyj8MLtQsk3uKRFzaFt3p/8uPgVjMwIIZXez0SPz7RIPa1cj6/QP+29Mpd3HXzhjD3/xuIVe12j0MGe9yOShVKpgZmxQjq6FPPciHKezNJSOIraOR8pDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DRizpJhk7+qdJh3MbajO9cq3eB/cwAZ4p9CleWXEzdA=;
 b=WISaLMaIjk/8v4qp50tKZEzNSUJ+eBFSc7+CTYkIifwNkoGPOfee+C+7mG4IF1AapEPfqUacEEhifwiB98CNOC0qNzYNwF9X3FwdlhLHIxsJoxda5qumdCel2MTFEye4RS0SQiAmrudIAP0WpGHpAvPfhOcRtNqNqDliXoDrURubGonkFRCaR/NFoe8wJoaWUl683rtGXrxmluODwSBsdVdvtovGA7mO65/G1MxEO/maAyLUXrAERbuW4BXXtdYWTvjZcjxVOqWXX/CSC3WPpygiOC2M5cZE1L41BfTuravRxliNX4kk93ax6WZQuOd+XATjR56n1TaX8QDseFkfIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DRizpJhk7+qdJh3MbajO9cq3eB/cwAZ4p9CleWXEzdA=;
 b=jZMmIFRSKAtWd1t8HFjC8k5NkhV33MKh4gDEI1gTB12lQOfjW4scCMJZ7WIt47KXnvACNfDh2FUy1MLUOz4QRbPUjIgmCGnLEM2/RQrgQT1BbnAgFrkT8yKAf1gRpoz2SOgY1UmzTsFoY1/cARBzTuY9neqi4mk9SE+TTdMWyug=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (2603:10a6:8:10::18)
 by DB3PR0402MB3691.eurprd04.prod.outlook.com (2603:10a6:8:5::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.31; Mon, 18 May
 2020 05:31:43 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::1dab:b68c:e028:acb3]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::1dab:b68c:e028:acb3%6]) with mapi id 15.20.3000.033; Mon, 18 May 2020
 05:31:43 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Aisheng Dong <aisheng.dong@nxp.com>, "thierry.reding@gmail.com"
 <thierry.reding@gmail.com>, "u.kleine-koenig@pengutronix.de"
 <u.kleine-koenig@pengutronix.de>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, "linux-pwm@vger.kernel.org"
 <linux-pwm@vger.kernel.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] dt-bindings: pwm: Convert mxs pwm to json-schema
Thread-Topic: [PATCH] dt-bindings: pwm: Convert mxs pwm to json-schema
Thread-Index: AQHWKeXnwgIqcPijn06Ta1X0H9EaU6itVJ0AgAAB8bA=
Date: Mon, 18 May 2020 05:31:43 +0000
Message-ID: <DB3PR0402MB3916B5980C0681BFF3C08FE5F5B80@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1589456470-2658-1-git-send-email-Anson.Huang@nxp.com>
 <AM6PR04MB4966B92CFFA23DD77748C77680B80@AM6PR04MB4966.eurprd04.prod.outlook.com>
In-Reply-To: <AM6PR04MB4966B92CFFA23DD77748C77680B80@AM6PR04MB4966.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [183.192.13.100]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: d7b47085-4ca6-4301-322b-08d7faecc010
x-ms-traffictypediagnostic: DB3PR0402MB3691:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3691DEF429E06F2C6898F056F5B80@DB3PR0402MB3691.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 04073E895A
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LDX3N41jtK/KebeZZ8f2no2NonKRWpI+w8ru/evEHqix5Xp8hG/S9Xkpgb3/vyCQHPFuIBLkzgx0RLPVvruZgFbW/MCfW6rvwCNW7GWIB8NfcrMA6Wls24SycJF+0BbkFPnKWmNQ7ND4cevA3qG54j7b5Z/Byj7EKetZ9gjbrdJQ57Nw8nLSoI5VrpwgRAeYqEdLDakE24T7paRg/eaqDafnAbqkGFpsyIcCnI/9YpOltb+SHFvvmcwIbrJERenQsCbd33IEEDHLSYFEIsM+d//wtcc5vWozenz4Y5YKNwqKpm/J2sqY4+vXDz0e9P9bqe1ArCPgrG/ymPxrlaWJ3qUGcRIGuOOTzXmgNAi3bKft+RZszZdhw5sChsUd0TYESu+Qwo4aeyqgIL25FV0BMoc4D4XnmvflnXjKeRh6cWMl0z6dA2o6cW9Ca/Hjk9bnDE2YxgSWZmmwNLyGdF2vPoWDiKkQy+/mAOPLCZTU/7w=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB3PR0402MB3916.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(136003)(396003)(376002)(346002)(366004)(66446008)(64756008)(66556008)(66476007)(76116006)(66946007)(86362001)(7696005)(478600001)(5660300002)(4326008)(2906002)(8676002)(6506007)(8936002)(55016002)(44832011)(71200400001)(9686003)(52536014)(26005)(186003)(110136005)(316002)(33656002)(7416002)(4744005)(921003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: zQ5k9qRWnFoebgB+3CUOod6FgKs9wGvonejCjt7F4hR3AW3HR3XSryIPndQK46HgpnTkgXfhjbrA4qaDajy0Gry5UYClTkHWSUMkFpHMqP4bgBYLl529MNhZavZOrUN19MFF/y668LA5Jw3UoeHu0FZszxcyRs7zUq45Fp0VgNVbTD19hxnYqSlGn1afbTIsEK4203KCThLEwpjUF18szXlQCJUiZXGI/XgxgH/SjsyTsPR83H0pebZZrh04uKn0MAlNPkEq6IX9k4y3xocGEEPzVTiPwAvHEIkE7ujxPAfCfLtSZEc9pWS0TgBpTy+4Ta5zNxmjxYUHzbq5oT9AOu7dIjFbAhmIbjQtejL+p8XiDJ4xuMnRzDIlTvgbNM0ts74wFNcdjgt/xYG/SDa6IyZKiI99Z6rgA+wQP8Imu68BwLlIjIqPsE3q4jnKG9SeGHBSgoP6ocHVzznVe8qgegr41/sfL7cy++GH+5bMngxA/xNv4Dic7FcxRseld06a
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d7b47085-4ca6-4301-322b-08d7faecc010
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 May 2020 05:31:43.6887 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: X4pqvJLm0DZQqIl0787b5zod2+kZNjVMvoNBihtvYwyUZTNYYMt1uKcEZiogoLqP/L4esjUeC7mKl3IPsYV5xw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3691
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200517_223149_374470_6BD1FC92 
X-CRM114-Status: UNSURE (   8.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.8.55 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.55 listed in wl.mailspike.net]
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



> Subject: RE: [PATCH] dt-bindings: pwm: Convert mxs pwm to json-schema
> 
> > +title: Freescale MXS PWM controller
> > +
> > +maintainers:
> > +  - Shawn Guo <shawn.guo@linaro.org>
> > +  - Anson Huang <anson.huang@nxp.com>
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - fsl,imx23-pwm
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  "#pwm-cells":
> > +    const: 3
> 
> Seems you missed the reference to pwm.yaml.

It is because many pwm yaml files also has no "#pwm-cells" reference, so I
am NOT sure if it is a MUST:

Documentation/devicetree/bindings/pwm/allwinner,sun4i-a10-pwm.yaml
Documentation/devicetree/bindings/pwm/google,cros-ec-pwm.yaml
Documentation/devicetree/bindings/pwm/iqs620a-pwm.yaml
...

Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
