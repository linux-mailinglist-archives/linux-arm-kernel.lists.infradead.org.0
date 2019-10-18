Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 824B6DBB59
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 03:40:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a8+Qq/zVO6z7eyqOQKnLlfY0yrSeOaoUeG00wCHp+rE=; b=PdrOoGPmRmFaGx
	x2n+Qdk/BgYRi9I2XGZYN9xEr7er0D1EHcAz72dVldZ5atKy/bN681xrkXjg0FiAXMlbESh0oD77S
	NYlTezj9chiPJxl78Xkf1nyF84o2Toz3kRyPYjbumaLmuOl6d9WTSPSIDuCG7ZQYxw9tTv/wxjRxZ
	wLHnept81zMr5Ri85Oz4R7xt2MHBlVF2XKpgC3X6qh7t8a9JjnXye/KSdT2U9jFlJmPsFWH8G5bPz
	gudgQfC7osaLXltkPW8+NlhhguYBBd91iJmlgGpfaTvmJPFGeBNwg2c7Qm/tiMqGHqalS/fiYygSV
	cG0NYDkwOqbxLTk2bYIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLHFj-00028A-J9; Fri, 18 Oct 2019 01:40:27 +0000
Received: from mail-eopbgr150078.outbound.protection.outlook.com
 ([40.107.15.78] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLHFZ-00026T-LH
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 01:40:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eyj2WtKX7gVWxLSQ2Kj8nWq+QNLTvBv+xGpuAJMZ/vYQTkvSTOeVbnyg3qQOqaADhDGVu7cxgTRCEl1yPL9HeJMEuT3w/XgIGDp6n8wsXnPzh7znEYyY1suS3sLzdX29+Sg+qTIkpFSbKQilYqq28BTFlJhuTsMjUhfmgqIwJBTk4zqM2boHwN2QQufTvmy/P/5GqkqzsxMhOC0NrWs/2jeZfDf/bvqW4CgrqTF7/Y8F7hjjXnfKrWWnXookVXoEW4t4i5wvalNHwsWGe2RwisM8j3HOu+0p1GXBhULGXnnj/JAAYHoR8R7IqBFP9svL1wQhb3ReYDqy7W+WHl4Kjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VvpBT7uci3ETWyMsDwGLIzuRRHPudaOH7VYydqD3xx8=;
 b=R3PY02+7ioSori648+tQmfqEM/NAgSwkBsRume6mXvliUH0Dlv8lV5qykzFakmDzsYDe201/KyZ7p/ciVHrRColSnO++jEvfuRqheF9isHQj93+cAG6VtHfWb46QnjPgV3y2LDX71m2+vRj2tm7zxxLt3nrPGTii8OcUa9dWyHZxqbWOH9qRY7mdc5nH3BbxGoZlH5/JnxOLith8kLzX2Yf0EYT+T19Bjw76snSze1lv9c45VMqc1Rc9V5KQhEFGH2qL/LBvYc/73ewetc7kyJzyyV3QrOSrE2lndw2SvpIPOU+5t8vShbKPPsjMgVPqg7t7xoq/l2XXpHiCqD3gwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VvpBT7uci3ETWyMsDwGLIzuRRHPudaOH7VYydqD3xx8=;
 b=SUDrhBrYk84PqV8x8xrk8sQgBfdxXwNm8UgeMYvU2if2vJvxlrHGPWrNC01aMyVb6sR9kqJczgj2Ifd5WZPIsg0YVpyfrH3/732r5HGLBQE0c9wkN96atHGTdY/LdmMoP6kG1LUnqymCVIsT4QvlEZFbb0wEWRpH7jttjZZAhHw=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3801.eurprd04.prod.outlook.com (52.134.65.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.16; Fri, 18 Oct 2019 01:40:10 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d469:ad51:2bec:19f0]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d469:ad51:2bec:19f0%6]) with mapi id 15.20.2347.023; Fri, 18 Oct 2019
 01:40:10 +0000
From: Anson Huang <anson.huang@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>, "will@kernel.org"
 <will@kernel.org>, "dmitry.torokhov@gmail.com" <dmitry.torokhov@gmail.com>,
 Aisheng Dong <aisheng.dong@nxp.com>, "ulf.hansson@linaro.org"
 <ulf.hansson@linaro.org>, Peng Fan <peng.fan@nxp.com>, Andy Duan
 <fugang.duan@nxp.com>, Leonard Crestez <leonard.crestez@nxp.com>, Daniel
 Baluta <daniel.baluta@nxp.com>, "olof@lixom.net" <olof@lixom.net>,
 "mripard@kernel.org" <mripard@kernel.org>, "bjorn.andersson@linaro.org"
 <bjorn.andersson@linaro.org>, "jagan@amarulasolutions.com"
 <jagan@amarulasolutions.com>, "dinguyen@kernel.org" <dinguyen@kernel.org>,
 "marcin.juszkiewicz@linaro.org" <marcin.juszkiewicz@linaro.org>,
 "arnd@arndb.de" <arnd@arndb.de>, "andriy.shevchenko@linux.intel.com"
 <andriy.shevchenko@linux.intel.com>, "stefan@agner.ch" <stefan@agner.ch>,
 "enric.balletbo@collabora.com" <enric.balletbo@collabora.com>,
 "yuehaibing@huawei.com" <yuehaibing@huawei.com>, Jacky Bai
 <ping.bai@nxp.com>, "m.felsch@pengutronix.de" <m.felsch@pengutronix.de>,
 "ronald@innovation.ch" <ronald@innovation.ch>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-input@vger.kernel.org"
 <linux-input@vger.kernel.org>
Subject: RE: [PATCH V6 3/5] arm64: dts: imx8qxp: Add scu key node
Thread-Topic: [PATCH V6 3/5] arm64: dts: imx8qxp: Add scu key node
Thread-Index: AQHVfLDFmP5Z6hMXG0yS4sRUAZxu6qdfsAEg
Date: Fri, 18 Oct 2019 01:40:10 +0000
Message-ID: <DB3PR0402MB3916BA030CDAD9057017F52FF56C0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1570412509-7893-1-git-send-email-Anson.Huang@nxp.com>
 <1570412509-7893-3-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1570412509-7893-3-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0c152cb0-64dd-47c0-9497-08d7536c1d2d
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: DB3PR0402MB3801:|DB3PR0402MB3801:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB380154C6ECFD9FF42F5A6C98F56C0@DB3PR0402MB3801.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3044;
x-forefront-prvs: 01949FE337
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(346002)(366004)(39860400002)(376002)(189003)(199004)(478600001)(229853002)(74316002)(76176011)(5660300002)(4326008)(25786009)(7736002)(44832011)(3846002)(6506007)(81166006)(66476007)(186003)(26005)(8676002)(2906002)(6116002)(71190400001)(71200400001)(81156014)(99286004)(52536014)(8936002)(7696005)(6246003)(76116006)(66946007)(102836004)(86362001)(476003)(316002)(14454004)(55016002)(446003)(9686003)(110136005)(14444005)(256004)(66066001)(486006)(11346002)(33656002)(66556008)(64756008)(66446008)(2501003)(7416002)(6436002)(2201001)(305945005)(921003)(32563001)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3801;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ccx0BBsRl7yx/z1yHG1aw4hnQQeXQ6cnO410wvum0iWDytzYLwjPk1O2nyodbQa3LW9bEVuH0xW+qYaH5OJ22VdGGKoCJB/2PocNKyGCLd2TZwBNHOk5mMztYfGtvYCaxThi+pZkgd5AMhMp1N3UAEhs/NhTk0yNZaVxu/iPiWy3hOSYsBIFIR2wWJvus8K+ApQewcj0fLdRJl1KXmjZqTlFghxSsC3rfX0M4fghGIL11KSizR/uJq8ekXiTm0GXMrvNz0pWY21t6BseYR2y2lYZZ2qrMzLugIIQ4ahYTVrU393Q7LTmMDmeOP61sTr+v0jLsTtkGM1Y25dYImBJ2DMMluNL7LW9DbH6Eh44tkDO6nl3bMm/xWngxoG2A4jsgcFl9igSNOMe7ST+lzmfw+puMmRBnq+dAslbM9Ml9QU=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c152cb0-64dd-47c0-9497-08d7536c1d2d
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Oct 2019 01:40:10.4126 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UzusZtMACZR1BxD+xPqABGHiuw/gCFWjaU8xL8ArCma33hVdqxz2Hmv4Q0rfPlgf+PFEWbFblOUSaWntGo9s4g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3801
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_184017_770786_CC9416B2 
X-CRM114-Status: GOOD (  14.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.78 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Hi, Shawn
	Dmitry has picked up the #1 and #2 patch, would you please pick up #3 ~ #5, thanks.

Anson

> Subject: [PATCH V6 3/5] arm64: dts: imx8qxp: Add scu key node
> 
> Add scu key node for i.MX8QXP, disabled by default as it depends on board
> design.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> Changes since V5:
> 	- use "linux,keycodes" instead of "linux,keycode".
> ---
>  arch/arm64/boot/dts/freescale/imx8qxp.dtsi | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> index 1133b41..2d69f1a 100644
> --- a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> @@ -8,6 +8,7 @@
>  #include <dt-bindings/clock/imx8-clock.h>  #include <dt-
> bindings/firmware/imx/rsrc.h>  #include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
>  #include <dt-bindings/pinctrl/pads-imx8qxp.h>
> 
> @@ -174,6 +175,12 @@
>  			#power-domain-cells = <1>;
>  		};
> 
> +		scu_key: scu-key {
> +			compatible = "fsl,imx8qxp-sc-key", "fsl,imx-sc-key";
> +			linux,keycodes = <KEY_POWER>;
> +			status = "disabled";
> +		};
> +
>  		rtc: rtc {
>  			compatible = "fsl,imx8qxp-sc-rtc";
>  		};
> --
> 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
