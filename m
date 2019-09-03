Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80F27A61FC
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 08:56:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2x05vizx0omozDYQKqxYUpmQ74PSzrS0CjpqWoL+aQk=; b=PIlrw8GJoiOGKy
	vfml8rsaFp6ctM3atdmZyFTYbeIXSZe3z4qOtP/3mvgHXLn1LDvbkE16ZFfa1Req6vJf2ch/iOYfk
	nLy17afWasmUz7n2L1mk85n+7XFJDYS2l28hSN7HsrXwRhDM1/YWA5+JHXu/gvSTYJHh8UN3fNk5t
	0IGBa38GBEhev21oKTM5h2ig5+RENtyRXaps22L2d8kks1GsdJxyuahDnxWSVmcwlnw+FXaduNa4w
	MP1yRBBNVz1KqftQ5Pi0SYvz+Aln6W1O7uuzvQVdAk8GEANJQbF420JtMOm5Razbg96z96stBdzCa
	Fx6BtpqkZb2i0DtQrFCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i52jm-0002RH-Uz; Tue, 03 Sep 2019 06:56:23 +0000
Received: from mail-eopbgr140043.outbound.protection.outlook.com
 ([40.107.14.43] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i52jP-0002Pg-Fs
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 06:56:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YMti9hOcPkqPiSNezjFBky7VwS/CExYnScczV8EdJr4Hvge3ITRQ0LPr7nj23FC7On6wC21VQyfVStHJSL5UCi80noDefllSImdQ8T4gvCeBU9ZtkyZ4hhMPpcG2F9D249/uk/0hnjLN+IdpUEmiQ7bwRW4IKK5JNMDIWHDijbeAhoRkQNR1XHDbtNtsZys/18rgwus5QzjJdr5TDLbW1ivDiVGpEvMSkHQGKoboxOpHGouxqjSfPXU/H9Vq0+D+E4xt03sEIeplJZsSgYAUdoasgz19Xd1fWJfht6u/XYvl8vcOxcj6oIvD7v3MWnfbrhGKMOFIfpfKbOqRsqoWJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wPhTBwghFkpFZZ3LAF620WAMuwib6uEHrGVjIPcWcAI=;
 b=KQMmsD0cKZtkAsfZ1UcMu6g82B1n4ZeOXCz4H9w6wpojfwvwun1vPUNWGEer6AxjIw268dh0cxxyngiPPeQmcDIK0ruu/FcWGmHLCk5LpUGYDoBI1ItXEchUjQZE8aXdstPPiTxt0jLtAvsZLsKw7cTpNfdaWSx27tw84OCC+cNHxnMjJwnUgpYjYEEgWgj46aSnqZnTa4X4v3Og7SJhGXWqKqAMuCAUi2zpyFVuOQ0c7H9amiA+JqjoIGbNFfEUy3tX1A5DaxGyBlcGS7oE/FFijcwsEiOJbu+O1/ygW8fN9nZD9niftr6cvCJO1qJ55HfbsCyh8eBzMXL4EDercw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wPhTBwghFkpFZZ3LAF620WAMuwib6uEHrGVjIPcWcAI=;
 b=fGoRfVh7G/ZZUpxaTGlnU4OrCA1J1f1af3O5yHKzws0zB8uXhjDi4mvdxpN4us9Esnde497vwC2+A7K1tlfMauuCBn6c6tLVxEB9GbLuib1Em2WgWxNMOnPe6sihgOKOp21axMy1g/BGoyoJP3doU06+ue66PkQHh17tQuGMmUE=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3852.eurprd04.prod.outlook.com (52.134.71.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.21; Tue, 3 Sep 2019 06:55:56 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::8958:299c:bc54:2a38]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::8958:299c:bc54:2a38%7]) with mapi id 15.20.2199.021; Tue, 3 Sep 2019
 06:55:56 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Oleksij Rempel <o.rempel@pengutronix.de>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, "catalin.marinas@arm.com"
 <catalin.marinas@arm.com>, "will@kernel.org" <will@kernel.org>,
 "dmitry.torokhov@gmail.com" <dmitry.torokhov@gmail.com>, Aisheng Dong
 <aisheng.dong@nxp.com>, "ulf.hansson@linaro.org" <ulf.hansson@linaro.org>,
 Andy Duan <fugang.duan@nxp.com>, Peng Fan <peng.fan@nxp.com>, Daniel Baluta
 <daniel.baluta@nxp.com>, Leonard Crestez <leonard.crestez@nxp.com>,
 "mripard@kernel.org" <mripard@kernel.org>, "olof@lixom.net" <olof@lixom.net>, 
 "arnd@arndb.de" <arnd@arndb.de>, "jagan@amarulasolutions.com"
 <jagan@amarulasolutions.com>, "bjorn.andersson@linaro.org"
 <bjorn.andersson@linaro.org>, "dinguyen@kernel.org" <dinguyen@kernel.org>,
 "marcin.juszkiewicz@linaro.org" <marcin.juszkiewicz@linaro.org>,
 "stefan@agner.ch" <stefan@agner.ch>, "gregkh@linuxfoundation.org"
 <gregkh@linuxfoundation.org>, "andriy.shevchenko@linux.intel.com"
 <andriy.shevchenko@linux.intel.com>, "yuehaibing@huawei.com"
 <yuehaibing@huawei.com>, "tglx@linutronix.de" <tglx@linutronix.de>,
 "ronald@innovation.ch" <ronald@innovation.ch>, "m.felsch@pengutronix.de"
 <m.felsch@pengutronix.de>, Jacky Bai <ping.bai@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-input@vger.kernel.org"
 <linux-input@vger.kernel.org>
Subject: RE: [PATCH V2 1/5] dt-bindings: fsl: scu: add scu power key binding
Thread-Topic: [PATCH V2 1/5] dt-bindings: fsl: scu: add scu power key binding
Thread-Index: AQHVYfv+INaxBRtrokqtKaL9fDhNpqcZfq6AgAAAnFCAAAPHgIAAAKtg
Date: Tue, 3 Sep 2019 06:55:56 +0000
Message-ID: <DB3PR0402MB39166F389FA13B290F357C80F5B90@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1567519424-32271-1-git-send-email-Anson.Huang@nxp.com>
 <21d2e400-976a-35c3-6875-4cc0c476fdf2@pengutronix.de>
 <DB3PR0402MB391656FC3603B30300ADBF27F5B90@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <7c3b6ae3-9f22-11f8-2464-79d02ac656f3@pengutronix.de>
In-Reply-To: <7c3b6ae3-9f22-11f8-2464-79d02ac656f3@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 119ac745-6b24-4c0b-7f98-08d7303bc4fd
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3852; 
x-ms-traffictypediagnostic: DB3PR0402MB3852:|DB3PR0402MB3852:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3852463CEB422BC762929A98F5B90@DB3PR0402MB3852.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2887;
x-forefront-prvs: 01494FA7F7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(136003)(39860400002)(396003)(366004)(189003)(199004)(4326008)(66946007)(76116006)(476003)(7696005)(316002)(53546011)(6506007)(102836004)(186003)(446003)(486006)(76176011)(11346002)(71200400001)(53936002)(71190400001)(99286004)(26005)(478600001)(66446008)(66476007)(66556008)(64756008)(14444005)(256004)(25786009)(52536014)(2201001)(5660300002)(14454004)(9686003)(74316002)(2906002)(7416002)(8936002)(6246003)(44832011)(86362001)(55016002)(7736002)(8676002)(6116002)(229853002)(3846002)(305945005)(81166006)(6436002)(81156014)(66066001)(110136005)(2501003)(33656002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3852;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Kp2l8z+hOUYA9VFsQ638I6c77buenle3DYUZmmpCfTxfcJkQQnHYnhTKgbLFGhn8YpiYFNwn11ZC8WgsCXsG/DZJiZP7PMldQRDwXYl4KZrpe1Z5yNgfT4SuqT1X+WEM1sWP0UMWjojbsovhV6yjWot+fOB2A4K58IivMEeQr/sDWrkVx4WtnfG/II7hHGHdzjwI6Skr8PZSOC/7YmcYodUwc9nVw1tkWZNhUQ/ugsMGBNoGj4HxTKwPsThdAn+A/TuUuuFA/Y06nSxhkgcFyolxPF7hK0NtDx3z4ZyDIfN0+ZbUNZip9EtudszYSglYsPzLj6u3c4WNuDsoD5OZ6GYngsjWL+LyNNPXzSmdEppnO7fEtoSavv9i9r0QbdKNdIiVAXibHhCSVs8rDgXO+0fLabTILAv6pYzpUI0exP8=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 119ac745-6b24-4c0b-7f98-08d7303bc4fd
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2019 06:55:56.1336 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kRkivdznoyWw6HhBz0Lz6aFaOGGd05+FC5ndo/MWsudeTLALqjjBgYlmKWVWA3txu7deT0tauC2GUOdJleuyPw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3852
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_235559_698155_4C7C3334 
X-CRM114-Status: GOOD (  17.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.43 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

Hi, Oleksij

> On 03.09.19 08:37, Anson Huang wrote:
> > Hi, Oleksij
> >
> >> On 03.09.19 16:03, Anson Huang wrote:
> >>> NXP i.MX8QXP is an ARMv8 SoC with a Cortex-M4 core inside as system
> >>> controller, the system controller is in charge of system power,
> >>> clock and power key event etc. management, Linux kernel has to
> >>> communicate with system controller via MU (message unit) IPC to get
> >>> power key event, add binding doc for i.MX system controller power key
> driver.
> >>>
> >>> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> >>> ---
> >>> Changes since V1:
> >>> 	- remove "wakeup-source" property, as it is NOT needed for SCU
> >> interrupt;
> >>> 	- remove "status" in example.
> >>> ---
> >>>    .../devicetree/bindings/arm/freescale/fsl,scu.txt          | 14
> >> ++++++++++++++
> >>>    1 file changed, 14 insertions(+)
> >>>
> >>> diff --git
> >>> a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> >>> b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> >>> index c149fad..f93e2e4 100644
> >>> --- a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> >>> +++ b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> >>> @@ -157,6 +157,15 @@ Required properties:
> >>>    Optional properties:
> >>>    - timeout-sec: contains the watchdog timeout in seconds.
> >>>
> >>> +Power key bindings based on SCU Message Protocol
> >>> +------------------------------------------------------------
> >>> +
> >>> +Required properties:
> >>> +- compatible: should be:
> >>> +              "fsl,imx8qxp-sc-pwrkey"
> >>> +              followed by "fsl,imx-sc-pwrkey";
> >>> +- linux,keycodes: See
> >>> +Documentation/devicetree/bindings/input/keys.txt
> >>
> >> linux,keycodes is required parameter. So, this kay cab be anything.
> >> Why the compatible is called pwrkey? Probably it is better to call it "*-sc-
> key"
> >
> > This key is kind of special, it is ON/OFF button which is designed for
> > power key purpose, it has HW function such as long pressing it would
> > shutdown the system power, so we always use it as power key, NOT
> general key, does it make sense?
> 
> I assume, OF devs will argue: DT is describing hardware not software.
> On other hand, software will get notification about assertion/deassertion of
> this key. So, it is just normal key. If, for some reason, it will trigger world
> destruction, if it is pressed too long... probably no body cares.
> You can provide fsl,imx-sc-key as additional compatible. In case linux will
> need some quirks, we still can fall back to more precise compatible
> "fsl,imx8qxp-sc-pwrkey".

I am OK with that, so I will use "fsl,imx-sc-key" as additional compatible and also
present in driver. 

Anson.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
