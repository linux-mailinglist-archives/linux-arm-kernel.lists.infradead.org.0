Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53C9AB45EF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 05:15:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y++9RKMl/SfK+fa6URnnTsqnwY5XNBEXvg/YIYJGouY=; b=W5DCjUp4HkKVsy
	3J8yZEcoiIH/NRloWHbhGFNRnpB6uZyUIV1Rly0xfjkDj9xVV/FD4IzVSQ8LkxXvdIi00fTw/qwS+
	Rvz2TrC4ck5D5FPZPKECE6UB0qk3dC+iHtHx9xkKvmsoFP5Ppg/+Ek10I16PemhOUW1fGTQWKbVND
	Njnon/R2o9VAvoUMvvKOWfqGA9/zb9zkryfDsenPpzAs4DMkql1kY4ZQfYv6zhCMNnVtpc6TfjgV4
	RvmyPn6LI4cAO25plpYVmY07k5o9+h7EkwaOGUCQsv6xEZ2QoErRCpDADAPR54eZyndGvlKdcaQfz
	GHtaIFRwO8BjQ0+lYT6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA3y1-0007cl-J5; Tue, 17 Sep 2019 03:15:49 +0000
Received: from mail-eopbgr10045.outbound.protection.outlook.com ([40.107.1.45]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA3wu-0005Wi-LE
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 03:14:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aa03HIN+Qi/w6y0ohJiDtjukBcwgjx19m7ICICuKHg0O8aNyk4ncUBVZ4eGc8+TlZTPX5toFEg3e9AJyu/9Zl38hpN2iDEkkR5Qh2jjVgStSylfyjMInPH7aARTgkBacQxXz6DfgbuHc36Je2UvGiP05lupUWtB2HgYnqWDuGUMJ7VTalSsPr3fDRd/ze8UiWtDQcm0jc2WH54aa0tmwr1qH6PYsKpien9klbEuBBYaRZRTb/HJPsGWKgveWHTCsq4vIDhc9tA9f1wKhAFPIVrnjDsCZHtX8tHLVWjwISKUtsVMjyHs5mDYMzUvyGfbcO+i3rLjBJqpQJr3cXejVIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=g7+nWfHbgNCQ5Yt+1FqvzaAHKbtGTxIR1AmDscz07Xc=;
 b=JAZrTp1kXMPIs1yCT+avO6S6Y3SbOJblK+HYRwqCuct8ybP8r9PDGXhAz+PL4lGe0BHYRC2kNf1NQas24TeHh5NRTqHZs3B7O/ErMQOB8eEdm2gMRqIF6JlXbg6lTlznw4CoXamblWmLk2oaYzS1++tXfCXYQZhAnYMdpIEqMrBFkztsbE1cv4jBC7k0vjb5z3+x5sGafucdj1ReyBOvy4oiPXytouaJ18xufjnI2mqJQDzGzwfCSmJCaW4GCE5/Hp3PHXsraeBLK5uOvpZuap4qt5ORzJBPuP9Pt4JAwqav1nHJGr6A0umlv2f9mHPbHhyB4tBjg5J+HnzwcCfdPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=g7+nWfHbgNCQ5Yt+1FqvzaAHKbtGTxIR1AmDscz07Xc=;
 b=QJbT9cmV05HyRksw8X8BNDIDeIaW3IwWHwR6GFPTBw7dAWP4HL5Ev+/xox5lOAsWyirzFQlwAMWqXNeBz+CbSfC+8t9T2n7DQEjhCepHxi45+yt1+EhGCgvrUe+vVDieb869HHkYNR1m21j4z36wXd/GlM5CAQ3f+5wpRGfmjdQ=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.23; Tue, 17 Sep 2019 03:14:35 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::8958:299c:bc54:2a38]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::8958:299c:bc54:2a38%7]) with mapi id 15.20.2263.023; Tue, 17 Sep 2019
 03:14:35 +0000
From: Anson Huang <anson.huang@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>, "will@kernel.org"
 <will@kernel.org>, "dmitry.torokhov@gmail.com" <dmitry.torokhov@gmail.com>,
 Aisheng Dong <aisheng.dong@nxp.com>, "ulf.hansson@linaro.org"
 <ulf.hansson@linaro.org>, Andy Duan <fugang.duan@nxp.com>, Peng Fan
 <peng.fan@nxp.com>, Leonard Crestez <leonard.crestez@nxp.com>, Daniel Baluta
 <daniel.baluta@nxp.com>, "olof@lixom.net" <olof@lixom.net>,
 "mripard@kernel.org" <mripard@kernel.org>, "arnd@arndb.de" <arnd@arndb.de>,
 "jagan@amarulasolutions.com" <jagan@amarulasolutions.com>,
 "dinguyen@kernel.org" <dinguyen@kernel.org>, "bjorn.andersson@linaro.org"
 <bjorn.andersson@linaro.org>, "marcin.juszkiewicz@linaro.org"
 <marcin.juszkiewicz@linaro.org>, "andriy.shevchenko@linux.intel.com"
 <andriy.shevchenko@linux.intel.com>, "yuehaibing@huawei.com"
 <yuehaibing@huawei.com>, "cw00.choi@samsung.com" <cw00.choi@samsung.com>,
 "enric.balletbo@collabora.com" <enric.balletbo@collabora.com>,
 "m.felsch@pengutronix.de" <m.felsch@pengutronix.de>, Jacky Bai
 <ping.bai@nxp.com>, "ronald@innovation.ch" <ronald@innovation.ch>,
 "stefan@agner.ch" <stefan@agner.ch>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-input@vger.kernel.org"
 <linux-input@vger.kernel.org>
Subject: RE: [PATCH V5 1/5] dt-bindings: fsl: scu: add scu key binding
Thread-Topic: [PATCH V5 1/5] dt-bindings: fsl: scu: add scu key binding
Thread-Index: AQHVbQOgbAy+nmBgzE6GK6ufj5vsxacvMaaQ
Date: Tue, 17 Sep 2019 03:14:35 +0000
Message-ID: <DB3PR0402MB3916304253A29BA216433DA3F58F0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1568688939-13649-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1568688939-13649-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 31dea72c-12b5-4446-cebf-08d73b1d2af4
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3916; 
x-ms-traffictypediagnostic: DB3PR0402MB3916:|DB3PR0402MB3916:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3916CE93948E13E60F29FB93F58F0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 01630974C0
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(366004)(136003)(376002)(346002)(189003)(199004)(2906002)(76176011)(71200400001)(446003)(66066001)(74316002)(6246003)(66556008)(7416002)(66476007)(6436002)(66946007)(229853002)(486006)(64756008)(76116006)(55016002)(110136005)(99286004)(8676002)(81166006)(81156014)(44832011)(9686003)(186003)(7696005)(8936002)(11346002)(71190400001)(2201001)(52536014)(2501003)(6506007)(102836004)(25786009)(7736002)(66446008)(305945005)(26005)(476003)(478600001)(14454004)(33656002)(3846002)(6116002)(5660300002)(316002)(256004)(86362001)(4326008)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3916;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: YPrFl314JXRsdwQAABjwPFgBPW4nM5VPczZ1PAXqo0JNmLYLe6FeJyXm/qsOaS3nDgYCwYcJYrV6na241uMeNxxvcrPWkBTve1HQe3DQbgAWDQR7Nwk1rybfRtmtGQy8Ug7gCP0Fakzy2ZVm+gW4SFRUM7lFscD53hCG+E9gZDftiU0rkHZHAXgwCgBzrDwa0eMzx2MJB1iqGm9fxSRC84HIcR+fMe4rsjkJl7fch1Mm3WZ2N1ejPQTkSJlF7YB5heMLdaqwGU0kZh8T9xgONuAZ+ucEn4O7DrKhJt4YJpjoNz8D1cTBioZBE2GVkaFB94qd7EV6uBERBHCEagkrUOoPyrx671eSPgTl871NsF8TJLBqC3WapHDcCTDEUYAqpnCSpLWckPKdSuxOiaPlEa+K0Fsizf51yXb3mbiP6MY=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 31dea72c-12b5-4446-cebf-08d73b1d2af4
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Sep 2019 03:14:35.5712 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vg3AFwdvbyFKe+v/0TadttyvfkJe+AvN4oXxxGJWxKd24SvzIb7+YsdCY9LHdF0wFBpArMnYeJM/48+mkdAKJw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3916
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_201440_767012_87CF93EA 
X-CRM114-Status: GOOD (  15.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Sorry, please ignore this version, it has build issue, just resent the patch series.

Anson.

> Subject: [PATCH V5 1/5] dt-bindings: fsl: scu: add scu key binding
> 
> NXP i.MX8QXP is an ARMv8 SoC with a Cortex-M4 core inside as system
> controller, the system controller is in charge of system power, clock and scu
> key event etc. management, Linux kernel has to communicate with system
> controller via MU (message unit) IPC to get scu key event, add binding doc for
> i.MX system controller key driver.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> No changes.
> ---
>  .../devicetree/bindings/arm/freescale/fsl,scu.txt          | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> index c149fad..5eab7d0 100644
> --- a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> +++ b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> @@ -157,6 +157,15 @@ Required properties:
>  Optional properties:
>  - timeout-sec: contains the watchdog timeout in seconds.
> 
> +SCU key bindings based on SCU Message Protocol
> +------------------------------------------------------------
> +
> +Required properties:
> +- compatible: should be:
> +              "fsl,imx8qxp-sc-key"
> +              followed by "fsl,imx-sc-key";
> +- linux,keycodes: See Documentation/devicetree/bindings/input/keys.txt
> +
>  Example (imx8qxp):
>  -------------
>  aliases {
> @@ -220,6 +229,11 @@ firmware {
>  			compatible = "fsl,imx8qxp-sc-rtc";
>  		};
> 
> +		scu_key: scu-key {
> +			compatible = "fsl,imx8qxp-sc-key", "fsl,imx-sc-key";
> +			linux,keycode = <KEY_POWER>;
> +		};
> +
>  		watchdog {
>  			compatible = "fsl,imx8qxp-sc-wdt", "fsl,imx-sc-wdt";
>  			timeout-sec = <60>;
> --
> 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
