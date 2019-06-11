Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ADDE3C997
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 13:00:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0JNO/SvhtPuiXJVEfjT/9EYNf+EbVfhRemI59ug8ICI=; b=OQPI5M3E/WGgDS
	zbi6rSq/ZtTQPIQXSf4utaLaIS5PGl83AlqZSumlu5YxcaQHpDt4ubW0hUFy4srDA8oftn+qE4Eas
	Rh6ZuFWImPEwCeuBMUZsGzzD3W0fjADbNnz8fkcG3tw+HL60He2VGbH5dYSchoW2jdoy0GtUZT6uY
	xhm2vvvEaPuTfcQ/58Wmaz7pKEjiIslA/U+iq1D+GZD/N6Zf6HI8l8/RnVqrBn4ntzkTUXvW8jYxd
	M0JAkzESnsTwoGeUx8B+OTStkVGB6wH58X8PKne9c22PKTQmXqrnGWRoyuOVHNW3MR4peYBvl1sXN
	9eJaLw9KvcOIUlJ+l5Xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haeWJ-0005Bl-M8; Tue, 11 Jun 2019 11:00:51 +0000
Received: from mail-eopbgr00076.outbound.protection.outlook.com ([40.107.0.76]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haeWA-0005B6-Dt
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 11:00:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fT8pjQngHVRU6TLjykPGtJTaf00Z65BmSzEW9J+cJv4=;
 b=bUPaNwIVxorzfdE7hMw+e2dHMy+ho4d7lTV6WjNuKE+Riu1z2O+suzqPoEvhMNxhndJV+1kcCFg3x80TH3gN7zRbXnDVt0Gn1AxWKYoSkgshYTjtZYREvZgJ4OKikEzdY9JWV8GglJRLEW2jxzMMYQcPl4Rdwkdf0uXsyfKnun4=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB5844.eurprd04.prod.outlook.com (20.178.118.217) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.14; Tue, 11 Jun 2019 11:00:38 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::11e1:3bb9:156b:a3e4]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::11e1:3bb9:156b:a3e4%3]) with mapi id 15.20.1965.017; Tue, 11 Jun 2019
 11:00:38 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "corbet@lwn.net" <corbet@lwn.net>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>, "rui.zhang@intel.com"
 <rui.zhang@intel.com>, "edubezval@gmail.com" <edubezval@gmail.com>,
 "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>,
 "ulf.hansson@linaro.org" <ulf.hansson@linaro.org>, Peng Fan
 <peng.fan@nxp.com>, "mchehab+samsung@kernel.org"
 <mchehab+samsung@kernel.org>, "linux@roeck-us.net" <linux@roeck-us.net>,
 Daniel Baluta <daniel.baluta@nxp.com>, "maxime.ripard@bootlin.com"
 <maxime.ripard@bootlin.com>, "olof@lixom.net" <olof@lixom.net>,
 "jagan@amarulasolutions.com" <jagan@amarulasolutions.com>,
 "horms+renesas@verge.net.au" <horms+renesas@verge.net.au>, Leonard Crestez
 <leonard.crestez@nxp.com>, "bjorn.andersson@linaro.org"
 <bjorn.andersson@linaro.org>, "dinguyen@kernel.org" <dinguyen@kernel.org>,
 "enric.balletbo@collabora.com" <enric.balletbo@collabora.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-pm@vger.kernel.org"
 <linux-pm@vger.kernel.org>
Subject: RE: [PATCH V14 1/5] dt-bindings: fsl: scu: add thermal binding
Thread-Topic: [PATCH V14 1/5] dt-bindings: fsl: scu: add thermal binding
Thread-Index: AQHVHzds3B6qJhqXrUKDEg49ewd/b6aWSyaQ
Date: Tue, 11 Jun 2019 11:00:37 +0000
Message-ID: <AM0PR04MB4211D325B1AE944F68EA7F5C80ED0@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <20190610025254.23940-1-Anson.Huang@nxp.com>
In-Reply-To: <20190610025254.23940-1-Anson.Huang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a071d497-05c9-41e2-919a-08d6ee5c095d
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5844; 
x-ms-traffictypediagnostic: AM0PR04MB5844:
x-microsoft-antispam-prvs: <AM0PR04MB5844A069D21AF3FD3736F51080ED0@AM0PR04MB5844.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1417;
x-forefront-prvs: 006546F32A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(346002)(39860400002)(396003)(366004)(376002)(199004)(189003)(4326008)(4744005)(8676002)(81156014)(81166006)(2906002)(7736002)(99286004)(73956011)(3846002)(44832011)(66446008)(64756008)(66556008)(66476007)(68736007)(25786009)(33656002)(476003)(66946007)(5660300002)(76116006)(52536014)(7416002)(8936002)(446003)(11346002)(486006)(6246003)(186003)(53936002)(6116002)(6506007)(229853002)(256004)(86362001)(6436002)(66066001)(55016002)(9686003)(14454004)(26005)(71190400001)(71200400001)(2201001)(7696005)(2501003)(305945005)(76176011)(316002)(110136005)(102836004)(478600001)(74316002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5844;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: w4uCYPxyenv3+SSwz73XSCi6fFAqEOUz9O+L8VniRLckLT12y7w6pL7Ot62gairj7O4BT750tU62M7vLbJs7L1i0zfpjtBSX7CaGFuvgefXVAxNop9jpt0Di1I78terKgmTcFaKBUAS8bnB6aaEY0F9Sihzf5NEx4niYBQm89H0kEjPyRPvei4iX6ScPygDwLbT6HnfTVM2XjGIQzZfewXf5+uvsVVpoVuZl+6ms/Vbiveb5BHMCKaAWzViDpsoMbpD5JoZkcrueFqdln0Vpc65THhqrl9ITXvi93d408b8rY9akBFYwnow3oPNfyNfD7Z4v4lHj3Hz8KJ7FwZTw1hJTYugFxho42auY1di0KRtt/3fiOp5PC873vQu1oKNrpTyJTpAkuFTM194OknqnqAoTDG0XzrNSJwwtzN7ewIo=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a071d497-05c9-41e2-919a-08d6ee5c095d
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2019 11:00:37.9943 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aisheng.dong@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5844
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_040042_464011_68949B7E 
X-CRM114-Status: UNSURE (   8.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.76 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Anson.Huang@nxp.com [mailto:Anson.Huang@nxp.com]
> Sent: Monday, June 10, 2019 10:53 AM
> 
> NXP i.MX8QXP is an ARMv8 SoC with a Cortex-M4 core inside as system
> controller, the system controller is in charge of system power, clock and
> thermal sensors etc. management, Linux kernel has to communicate with
> system controller via MU (message unit) IPC to get temperature from thermal
> sensors, this patch adds binding doc for i.MX system controller thermal driver.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> Reviewed-by: Rob Herring <robh@kernel.org>

Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Dong Aisheng
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
