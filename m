Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E77521E5D15
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 12:24:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+R7nndaItMyZkV0/rXMuVFTkRvgRJ2ip45XoCC0txww=; b=QIwc4+P+g6w1kC
	EBqr4ZMtIsnTlowDqueARBWT8J+fwx3P5VFhS2jAp0ADoa/SJw1tzrNLdj3dohgohxXpPyVIyGCjI
	AexsriWDc1PlNrGXrQo75q0i3ie1By3IVWRETafchDD7thf4jXbTJQaGJvG9pnUH9zXyA9NEg/TN/
	inPclxEUncvQB6U0m6Waavud6rtyZflSor8nwZ7SqGZaHmA6qpa6iS+NNy/LuK75WoNOSBrRbtnkc
	/AIT63rYyuE1ZJj6/uuDHd7QqM6PGDi5a/ax+oEDmTUln3JSvMBtMLAGAxPuzFkJW639Rq4omMX3i
	Hq9QVMzgr1VEFgoSfgKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeFht-00041w-Tz; Thu, 28 May 2020 10:24:14 +0000
Received: from mail-am6eur05on2086.outbound.protection.outlook.com
 ([40.107.22.86] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeFhk-00040q-9u
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 10:24:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QviM4m5HSXZ4odqs7ftu2sD+dPsI4kdoV51svBJhgDR6gKU4EkKMrxaReRvsyXe3gENaToqMqzrV53Efk7OIWT3AzNMR+KWm57dRG7mdYBkUPBzYciT7qJCyMGku8wOtGl9hEuoCR+mlWJIoCuAZX30rmz3SzjOF29H7Py/kcwdP55uWuw4+X0+ELjZLpBJ2y+9pUhj8nJ2HHyIwKeBRBOOFnzUpN1gaM4ZUGOV094VsEWvpZDVl+F3wivFo+Jlx2DNh45dOTv2zSWG37ZJF/eW72TtvzrCd0kOo7uHu734Y8pF0v6QSZv0mQCu70+Xizxx4IlYfr4UDrAb6t/sIrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GFi/wOtHX56MMEoarjJxi2VPm9qDyNr9C75tR6Jkkdw=;
 b=EBMewNZdQy/OEDc/5CBEED1VLYL498NcVu2/QrdbUcwvKGpn2xSgWL91fozwrVc42gQ5FOfX/hEs/5k1PXpyuscYLB92cKUaoTEBOh8r+W0gjHBesxCBcX1w5Siwea9Blef1seEcEGlaV/XzIMRE/rFu1TqFVu0bwztbs8tHSAyEeOvhc9nd97Spuzu1EZv/2k5XyBKiwyTfRgqRaq4QU52oDpWZIJvEGMA4gmk5ICJmJA/wQ2tYoIUpJbt85U/ohmw215/fU0jeALoxR6DzJpIx2JZTdHdTplRDGJ7TPHtlutBv0nIQrZwwla410+o+MWZju5D7v9Z9PRZovaOpVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GFi/wOtHX56MMEoarjJxi2VPm9qDyNr9C75tR6Jkkdw=;
 b=MLmno7ivpsxJtKt/dzDT8ikN0Arjf46pIO1YO7Dg8gUHoUQRwi6FRHiGgwnNz2eI7EnXIIIZtzJrPP9SIGgUDvco6JCuFeAkzozp6+SJXJj7lQYUmqM3gCYEa4M1BubgYgTSfDW1p9vyE9mTJWdOU2saAeeZEat2SYxlDG12a1c=
Received: from AM6PR0402MB3607.eurprd04.prod.outlook.com
 (2603:10a6:209:12::18) by AM6PR0402MB3591.eurprd04.prod.outlook.com
 (2603:10a6:209:8::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.27; Thu, 28 May
 2020 10:23:59 +0000
Received: from AM6PR0402MB3607.eurprd04.prod.outlook.com
 ([fe80::35f8:f020:9b47:9aa1]) by AM6PR0402MB3607.eurprd04.prod.outlook.com
 ([fe80::35f8:f020:9b47:9aa1%7]) with mapi id 15.20.3045.018; Thu, 28 May 2020
 10:23:59 +0000
From: Andy Duan <fugang.duan@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>, Daniel
 Baluta <daniel.baluta@nxp.com>, Leonard Crestez <leonard.crestez@nxp.com>,
 Peng Fan <peng.fan@nxp.com>, "aford173@gmail.com" <aford173@gmail.com>, Jun
 Li <jun.li@nxp.com>, "S.j. Wang" <shengjiu.wang@nxp.com>, Horia Geanta
 <horia.geanta@nxp.com>, Aisheng Dong <aisheng.dong@nxp.com>,
 "agx@sigxcpu.org" <agx@sigxcpu.org>, "l.stach@pengutronix.de"
 <l.stach@pengutronix.de>, "andrew.smirnov@gmail.com"
 <andrew.smirnov@gmail.com>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH 0/4] Change i.MX/MXS SoCs ocotp/iim node name to efuse
Thread-Topic: [PATCH 0/4] Change i.MX/MXS SoCs ocotp/iim node name to efuse
Thread-Index: AQHWNJ9Qc3eKhmeCkkefYIr7+smDLqi9Sr6A
Date: Thu, 28 May 2020 10:23:59 +0000
Message-ID: <AM6PR0402MB36074774F61793C6D460C7E7FF8E0@AM6PR0402MB3607.eurprd04.prod.outlook.com>
References: <1590635570-8541-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1590635570-8541-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: ff032d7c-bd3d-4ae7-f36e-08d802f13c8f
x-ms-traffictypediagnostic: AM6PR0402MB3591:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR0402MB359109CC71DAFF57ACB39A4AFF8E0@AM6PR0402MB3591.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2089;
x-forefront-prvs: 0417A3FFD2
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: D8bh+btM5ktNbmQCvBm3TyA7bnOJZVgfAUe2RtqeJphqmAjwGuXwSF4np6c4sRQVpYa2QkEeEms0TEqmULdsL5Y3o80x755EtChIGbLizYFEbBmavE52sj4iALRn22j93K5I1dTY5CQ+qSOUxK9CoJWwH6mq7iOOTvpBE86up0bbCEkCRHR+/qrf9Upe0umy/29pA2CdVfFTWEr926iNr9X8OqWkBsxRf2oH7z9o7zwPr1rlGoc18O4f5yZiSgdZ5snjCYXxCnhqNGN+mkeyFUaNCCmFoAHSon8e2oBdat18061lG0YeA94BclPCLyw5x/CHh2l/uPp12UC5ByRQ3lRyxSBM8MvkkLbFJZsoXgjjYdEhgvEiciwN7MjwSp/N
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR0402MB3607.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(6029001)(4636009)(39860400002)(376002)(396003)(346002)(366004)(136003)(8936002)(64756008)(316002)(26005)(66476007)(8676002)(66446008)(186003)(478600001)(9686003)(55016002)(66946007)(7696005)(2906002)(71200400001)(4326008)(5660300002)(83380400001)(6506007)(76116006)(52536014)(7416002)(66556008)(86362001)(33656002)(110136005)(921003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: ltM0D42e6hEWzx2xif6RTQmgvNDXyRhqytDFjrGSsJy5GFS5cmjLHlGtfLovs/cuNWtpJvRD3rvTUmYdQzDRxxdm6754zC9p3PdCnFVjKuYEvtfRkik2jgOu0LzPEsJoRD8nWxR0105LFNsKihZAH8LbP/oxA+76+gKINzqvqkMoBBnyCe6loLvvIEbewDB47VQ0+AdNl5yIc/RA0NSz0/bQrtcwi53yc/TJg2r0JJipnY5h/tIsQOGNtt0XMMFzZbNvHdGaay1PmsdV+BxQM8JcB1HrmwKsLOaRV/fTlB0Fxp8Bk8stW4BJVMAf65v12izGRrdF4jBjNyGK85n5uD52fdGDnAPz9js7rMYMiayJ4t9nCHo5qrT1hlyoqVFO2VsgzB3dQ55cDGKBSKn3GAruFX9kYNWHsGgGdnQdsB8k4LI+YYolyQji+ljATuMY8Uqmes/RFAfar0ZaE2BZZ0rVHzOrHc5rhkvED0avUYZGPm9jSRo/+rivuq/oYg6O
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ff032d7c-bd3d-4ae7-f36e-08d802f13c8f
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2020 10:23:59.8023 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gxErtIuS/UW46mjpxAKHGN8UoO/lpc8qD4HHFWHyd2LtbTj0+PJ1ooljPlcU0caE6XuGCkHo/ktbyA+BaUTD0A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0402MB3591
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_032404_430706_3C8E2AF1 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.22.86 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.86 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

From: Anson Huang <Anson.Huang@nxp.com> Sent: Thursday, May 28, 2020 11:13 AM
> In the nvmem yaml schema, it requires the nodename to be one of
> "eeprom|efuse|nvram", so need to change all i.MX/MXS SoCs ocotp/iim node
> name to efuse:
> 
> MXS platforms: i.MX23/28;
> i.MX platforms with IIM: i.MX25/27/31/35/51/53.
> i.MX ARMv7 platforms with OCOTP: i.MX6QDL/6SL/6SX/6SLL/6UL/7S/7ULP.
> i.MX ARMv8 platforms with OCOTP: i.MX8MQ/8MM/8MN/8MP.

Reviewed-by: Fugang Duan <fugang.duan@nxp.com>
> 
> Anson Huang (4):
>   ARM: dts: imx: change ocotp node name on i.MX6/7 SoCs
>   arm64: dts: imx8m: change ocotp node name on i.MX8M SoCs
>   ARM: dts: imx: change ocotp node name on MXS SoCs
>   ARM: dts: imx: change iim node name on i.MX SoCs
> 
>  arch/arm/boot/dts/imx23.dtsi              | 2 +-
>  arch/arm/boot/dts/imx25.dtsi              | 2 +-
>  arch/arm/boot/dts/imx27.dtsi              | 2 +-
>  arch/arm/boot/dts/imx28.dtsi              | 2 +-
>  arch/arm/boot/dts/imx31.dtsi              | 2 +-
>  arch/arm/boot/dts/imx35.dtsi              | 2 +-
>  arch/arm/boot/dts/imx51.dtsi              | 2 +-
>  arch/arm/boot/dts/imx53.dtsi              | 2 +-
>  arch/arm/boot/dts/imx6qdl.dtsi            | 2 +-
>  arch/arm/boot/dts/imx6sl.dtsi             | 2 +-
>  arch/arm/boot/dts/imx6sll.dtsi            | 2 +-
>  arch/arm/boot/dts/imx6sx.dtsi             | 2 +-
>  arch/arm/boot/dts/imx6ul.dtsi             | 2 +-
>  arch/arm/boot/dts/imx7s.dtsi              | 2 +-
>  arch/arm/boot/dts/imx7ulp.dtsi            | 2 +-
>  arch/arm64/boot/dts/freescale/imx8mm.dtsi | 2 +-
> arch/arm64/boot/dts/freescale/imx8mn.dtsi | 2 +-
> arch/arm64/boot/dts/freescale/imx8mp.dtsi | 2 +-
> arch/arm64/boot/dts/freescale/imx8mq.dtsi | 2 +-
>  19 files changed, 19 insertions(+), 19 deletions(-)
> 
> --
> 2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
