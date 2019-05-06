Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 690DC1469E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 10:43:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DQHj3qjODQGSMtOMT8V4LF3OoxnkSuthoZ5+xIT+kTc=; b=A/+N8n3wnnvmWc
	XQ93bYJo739cqxqNo3odq5+wUAnxAN7mUZmE1bTgzmAoYAaJUOkOKbdMS3lbyN6KaoFrA7Ok+9OWk
	3j3du77kVtCqXWIn5ucH8wxwgeQA5ZqshQfiY7hoCcjYIwoIlw5/rjy7YC1EBiSQEAy7byb8hkGNw
	3FMT61jB9TfCuBSaE22kUknAlsEoeXNC0BgvRx2Lav57h2TtydJFE3Ejd/vpkNCU99t3uGU/PqYIp
	gVkaqZd/MgnsFqCz4GKjj/jjU2ffyGg31ESulpP33ohrV7xatyvcsy1s5/vrf8Q1AgQ6lsCgqGBaC
	2k8fVZ3zH0qhE5UNa8Qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNZDG-0004ne-JZ; Mon, 06 May 2019 08:43:06 +0000
Received: from mail-eopbgr70088.outbound.protection.outlook.com ([40.107.7.88]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNZD7-0004nB-Dv
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 08:42:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lrLClPDmFFzYV7WkJUQASlMITI/BjdzrmHGemSvdd+g=;
 b=WrqNS/INc5/AjdfMrJZTyV2DhurFoapcwWxRTp/Xa54EQ+eVPt1uPBllkobm5wfDJN4FliQA56bhHgD3AnAusDKvIDDLH3z8qHolrUQtcSoynJvJHbalH/ANKLTwspCyB+X1ekQKKLuByl6w6HkU1UrG899OfEQp6gcIY39X5GI=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB5523.eurprd04.prod.outlook.com (20.178.113.75) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.15; Mon, 6 May 2019 08:42:54 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::c415:3cab:a042:2e13]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::c415:3cab:a042:2e13%6]) with mapi id 15.20.1856.012; Mon, 6 May 2019
 08:42:54 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "srinivas.kandagatla@linaro.org" <srinivas.kandagatla@linaro.org>
Subject: RE: [PATCH 4/4] arm64: dts: imx: add i.MX8QXP ocotp support
Thread-Topic: [PATCH 4/4] arm64: dts: imx: add i.MX8QXP ocotp support
Thread-Index: AQHVA0Zt0jza7L79NEWlMXlMGOglhqZdyLUw
Date: Mon, 6 May 2019 08:42:54 +0000
Message-ID: <AM0PR04MB421175C951494A6F8E83917980300@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <20190505134130.28071-1-peng.fan@nxp.com>
 <20190505134130.28071-4-peng.fan@nxp.com>
In-Reply-To: <20190505134130.28071-4-peng.fan@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c57bc14d-6277-44bc-0851-08d6d1fed4cf
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5523; 
x-ms-traffictypediagnostic: AM0PR04MB5523:
x-microsoft-antispam-prvs: <AM0PR04MB55239050D62DF70B1BF7268580300@AM0PR04MB5523.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:267;
x-forefront-prvs: 0029F17A3F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(136003)(396003)(39860400002)(366004)(199004)(189003)(476003)(86362001)(2201001)(486006)(44832011)(4326008)(3846002)(7416002)(99286004)(6246003)(54906003)(110136005)(6506007)(53546011)(316002)(66066001)(256004)(25786009)(53936002)(14454004)(5660300002)(186003)(74316002)(71190400001)(71200400001)(8676002)(81156014)(6436002)(2906002)(478600001)(68736007)(7736002)(81166006)(8936002)(33656002)(26005)(52536014)(66476007)(229853002)(64756008)(66556008)(76176011)(66946007)(66446008)(446003)(11346002)(2501003)(7696005)(102836004)(73956011)(305945005)(55016002)(6116002)(9686003)(76116006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5523;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: fYVlG/ptSxhZ1yxL11ekxzFD2wFD1gKnuuJeHykUolXjZ7CnSZjdl8sJSedbqWmEwK8+616bSpdzM4OifcZlY6Iqm6NvA5CTl4rxixCVOlzkKgY7LPwsyqlPM2utkFyhiEUg0bqYhukH70YzqABrODvvNG5FyAWItvHHr9Muo83ZXcHMI6svZuAA70duh21//k+hI6imzNs2ynPmyxZQfMhNKyRVrQ265l7yc2vA3RGS7NkmZgx/YgTawgYAcsD4ftPm5lT5vWh7Ix2iVjogRwWTvRDT0PTXyEgurrziPmU0U5X1Drv9/x8VFfq3bIWXMF/0trbuW6c0E5/99i9zdj7KMG7fFZ5IMK6XVEikXEnPa1pFPjR4yxXnuR4G2eZOeDPa4R/abACyjuoeLby9PK74i51T9+IZtdSWJkNSifg=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c57bc14d-6277-44bc-0851-08d6d1fed4cf
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 May 2019 08:42:54.0890 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5523
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_014257_471313_910B2CCB 
X-CRM114-Status: GOOD (  14.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.88 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Anson Huang <anson.huang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "van.freenix@gmail.com" <van.freenix@gmail.com>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Peng Fan
> Sent: Sunday, May 5, 2019 9:28 PM
> Subject: [PATCH 4/4] arm64: dts: imx: add i.MX8QXP ocotp support
> 
> Add i.MX8QXP ocotp node
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: Aisheng Dong <aisheng.dong@nxp.com>
> Cc: Anson Huang <anson.huang@nxp.com>
> Cc: Daniel Baluta <daniel.baluta@nxp.com>
> Cc: devicetree@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> ---
>  arch/arm64/boot/dts/freescale/imx8qxp.dtsi | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> index 0683ee2a48ae..f29998d7274a 100644
> --- a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> @@ -141,6 +141,12 @@
>  			compatible = "fsl,imx8qxp-iomuxc";
>  		};
> 
> +		ocotp: imx8qx-ocotp {
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +			compatible = "fsl,imx8qxp-ocotp";
> +		};

See my reply on Patch [1/4]

Regards
Dong Aisheng

> +
>  		pd: imx8qx-pd {
>  			compatible = "fsl,imx8qxp-scu-pd";
>  			#power-domain-cells = <1>;
> --
> 2.16.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
