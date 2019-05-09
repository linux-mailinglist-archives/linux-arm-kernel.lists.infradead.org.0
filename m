Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C7DB18354
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 03:45:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WVI9hx54mKGF9MuXEb6pq1Qr7IKkipG5FwqTjsiskkM=; b=l9QN9kdPzvhSwS
	uXab4GFio7dlzJ7OV0voqGl86qXafnbY7Xvx02AoTURKiY1SptbiQtKLnjuEIll2npyUBgxuKd7wl
	lRCUh23ODz0CXCWwL4LktzEecn35z9UdIwHj85Phrm7GULzac2tffS3RzlBpjVpTESRAZ5irjQRCu
	68AX+PsFLsERebHg/0wQnDaR63wQW2L1h42yabx+rMi6w4EDUk7fc8nIQ3mtsF6KZsjPCLJKoEvoW
	1fCjePDGKxUZCay0bJF2bk6qEf/QxVzSYtmTEAreWjWZ6KP6mx8BpdC4mRiHqk87HFLSBRBHuLe+z
	8C+k23SBWR2AGrgbPYCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOY7T-0000EC-LJ; Thu, 09 May 2019 01:45:11 +0000
Received: from mail-eopbgr50089.outbound.protection.outlook.com ([40.107.5.89]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOY7F-0000B2-2A
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 01:45:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BR4GmPXL/fG4byVM9M1vgEpnvIfOqiAJA8lFd/D9Crw=;
 b=QAFGE+TypN1xOBqHMvB7XcvKmlU4gJNWJ5BymkowHr0Jka2K0KOAspXmiypgwcpL+UCgeMr0emuHgszp06JrsFksXOmKPRxAfOUQaPbTAcLJYALzrxplu7hiwbRT1V9JWCKw4AUxSYCaHo6bYI7gQs2lWQLglPhU6uwcm/SlWuY=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3929.eurprd04.prod.outlook.com (52.134.70.31) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.20; Thu, 9 May 2019 01:44:53 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d%2]) with mapi id 15.20.1878.022; Thu, 9 May 2019
 01:44:53 +0000
From: Anson Huang <anson.huang@nxp.com>
To: "thierry.reding@gmail.com" <thierry.reding@gmail.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>, "stefan@agner.ch"
 <stefan@agner.ch>, "otavio@ossystems.com.br" <otavio@ossystems.com.br>,
 Leonard Crestez <leonard.crestez@nxp.com>, Robin Gong <yibin.gong@nxp.com>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 "linux-pwm@vger.kernel.org" <linux-pwm@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH V11 0/5] Add i.MX7ULP EVK PWM backlight support
Thread-Topic: [PATCH V11 0/5] Add i.MX7ULP EVK PWM backlight support
Thread-Index: AQHU7z9bBIw0J0eEykuFfv84e8UBB6ZKtMlwgBd+SBA=
Date: Thu, 9 May 2019 01:44:53 +0000
Message-ID: <DB3PR0402MB39166E774B176ADCA82EE46BF5330@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1554860547-18237-1-git-send-email-Anson.Huang@nxp.com>
 <AM6PR0402MB39113C3CA7E1AB8969882B41F53C0@AM6PR0402MB3911.eurprd04.prod.outlook.com>
In-Reply-To: <AM6PR0402MB39113C3CA7E1AB8969882B41F53C0@AM6PR0402MB3911.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 586725a8-bc2d-4837-4882-08d6d41feea6
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3929; 
x-ms-traffictypediagnostic: DB3PR0402MB3929:
x-microsoft-antispam-prvs: <DB3PR0402MB39298BB16AB6543E873FE528F5330@DB3PR0402MB3929.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:107;
x-forefront-prvs: 003245E729
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(366004)(39860400002)(376002)(346002)(396003)(189003)(199004)(13464003)(5660300002)(316002)(52536014)(7696005)(99286004)(229853002)(478600001)(76176011)(68736007)(8936002)(102836004)(11346002)(53546011)(476003)(446003)(9686003)(81156014)(44832011)(55016002)(81166006)(33656002)(53936002)(73956011)(8676002)(2501003)(486006)(26005)(6436002)(76116006)(66946007)(64756008)(66446008)(66476007)(66556008)(110136005)(14454004)(86362001)(4326008)(66066001)(6246003)(25786009)(186003)(2201001)(6506007)(2906002)(7736002)(305945005)(7416002)(256004)(71200400001)(71190400001)(3846002)(6116002)(74316002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3929;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: FX43mK3u2WtM9J9rbqHdknoYL/Kb14cn0aOfoMVNiAkkkerZwxP+M8PtDSTYrk4V/UPT+VFkQqL08DsiKkAFI0Kiy+LnPtMRWC05xW0Mn5uJnOI85gN/4inwSpZZDQKy24fL9sx9fkk0dj8J9tZCFwU6VWPFKB8NpJThaEuEzrdKtDQEmMk43GsqMo5sZCn7JqSfakZ0kRxMspGEZdsYnTylMRIa+P3pRP0M0/PWwRiLoFvQQsL/Lg4vNaOHUy3fkcLXeY6LGfWvlsL1qvFvGzEJJDqmWQifvPDg0/H6CNQHIZsPXPQIMY0n9u7CJ8ip0ozhmcd/CtgNusrUCPgzu1aj7ji4wYZTOOQtZoCLoCGm24mU9m3t6c05N/nbbEeb/3l3mXN5JISVTVPG9D73+dX6X25VDnGAJEu+/Qu4qRE=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 586725a8-bc2d-4837-4882-08d6d41feea6
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 May 2019 01:44:53.1342 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3929
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_184457_113298_F965BC10 
X-CRM114-Status: GOOD (  16.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.89 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ping...

> -----Original Message-----
> From: Anson Huang
> Sent: Wednesday, April 24, 2019 10:59 AM
> To: thierry.reding@gmail.com; robh+dt@kernel.org; mark.rutland@arm.com;
> shawnguo@kernel.org; s.hauer@pengutronix.de; kernel@pengutronix.de;
> festevam@gmail.com; linux@armlinux.org.uk; stefan@agner.ch;
> otavio@ossystems.com.br; Leonard Crestez <leonard.crestez@nxp.com>;
> Robin Gong <yibin.gong@nxp.com>; u.kleine-koenig@pengutronix.de; linux-
> pwm@vger.kernel.org; devicetree@vger.kernel.org; linux-arm-
> kernel@lists.infradead.org; linux-kernel@vger.kernel.org
> Cc: dl-linux-imx <linux-imx@nxp.com>
> Subject: RE: [PATCH V11 0/5] Add i.MX7ULP EVK PWM backlight support
> 
> Gentle ping...
> 
> > -----Original Message-----
> > From: Anson Huang
> > Sent: Wednesday, April 10, 2019 9:47 AM
> > To: thierry.reding@gmail.com; robh+dt@kernel.org;
> > mark.rutland@arm.com; shawnguo@kernel.org; s.hauer@pengutronix.de;
> > kernel@pengutronix.de; festevam@gmail.com; linux@armlinux.org.uk;
> > stefan@agner.ch; otavio@ossystems.com.br; Leonard Crestez
> > <leonard.crestez@nxp.com>; Robin Gong <yibin.gong@nxp.com>;
> > u.kleine-koenig@pengutronix.de; linux- pwm@vger.kernel.org;
> > devicetree@vger.kernel.org; linux-arm- kernel@lists.infradead.org;
> > linux-kernel@vger.kernel.org
> > Cc: dl-linux-imx <linux-imx@nxp.com>
> > Subject: [PATCH V11 0/5] Add i.MX7ULP EVK PWM backlight support
> >
> > i.MX7ULP EVK board has MIPI-DSI display, its backlight is supplied by
> > TPM PWM module, this patch set enables i.MX7ULP TPM PWM driver
> support
> > and also add backlight support for MIPI-DSI display.
> >
> > Changes since V10:
> > 	- ONLY change the pwm driver patch.
> >
> > Anson Huang (5):
> >   dt-bindings: pwm: Add i.MX TPM PWM binding
> >   pwm: Add i.MX TPM PWM driver support
> >   ARM: imx_v6_v7_defconfig: Add TPM PWM support by default
> >   ARM: dts: imx7ulp: Add tpm pwm support
> >   ARM: dts: imx7ulp-evk: Add backlight support
> >
> >  .../devicetree/bindings/pwm/imx-tpm-pwm.txt        |  22 +
> >  arch/arm/boot/dts/imx7ulp-evk.dts                  |  21 +
> >  arch/arm/boot/dts/imx7ulp.dtsi                     |  10 +
> >  arch/arm/configs/imx_v6_v7_defconfig               |   1 +
> >  drivers/pwm/Kconfig                                |  11 +
> >  drivers/pwm/Makefile                               |   1 +
> >  drivers/pwm/pwm-imx-tpm.c                          | 442
> +++++++++++++++++++++
> >  7 files changed, 508 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/pwm/imx-tpm-
> > pwm.txt
> >  create mode 100644 drivers/pwm/pwm-imx-tpm.c
> >
> > --
> > 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
