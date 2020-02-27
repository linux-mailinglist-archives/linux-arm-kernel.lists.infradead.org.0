Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EED51171B26
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 15:00:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/lQFr0ajwOBkoXRcMIU6D6MYbOm/7Th7kYL9YIROE1s=; b=OX5BYcoHob/FWE
	mBFCt7fHXB+k9i9hkVSHUph5UBOzUUI3sCnMPjTR2sR4ZnO+Iy00nShVoR2Di9HlVrIRS6YKtl1Tc
	B9i9mtOewTfaNar9LPBe6YnoFf2lez+J2lwFq3Q80YJRyyh3MufFr/x2H/CS34CtxrNPbsZZzcQvY
	F6HOJOPlbK8fCxNHpoHVG0XAGSWzqpDEU/JipRunrcfB1fFUhOTTitBrGJJwtkRC8DD1H1Bw9jneN
	qKQfgOPHF5MOS9PGZFj32Nu+ETZVFfSTZ8N3a/s6H/SyJOvL6VAy7nGzMQ6e2Si5np5QY9BwbT3oU
	8rTxITjK4B7TWezpDtCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Jhf-0003G1-Ui; Thu, 27 Feb 2020 13:59:51 +0000
Received: from mail-am6eur05on2043.outbound.protection.outlook.com
 ([40.107.22.43] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7JhU-0003Ew-QA
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 13:59:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RP+q8ZoI9bZTI/fHFtVao7kph6zQUa0vAd3S8JunyhB0Bsvgj6LKYDe8mHaaXAkQKnzU0Rd2MM3pfcz+Ppwlze5528iVa+100LZklVFuVNz/rxDTfga80A7Ezgrn0UfjWLz4NNJIIZa4flezmXRkN28VSnRqZbkihn0n0Z+MBjdwtFGCM/lmDNEiqOEcJYiU2sq5m6kMsSh5D8lZ0frtpY27vzIfL6/IePj5KDUr/s82/U0CvHwnpUbEFucUywlvkAglhaXU1BuUUMLxIXWEaKJTtbN4Jp+N9LKDrmLqcTNetpjhamkF0UQ1WiAUMNcNg4ERpUlo0v7Vn3mzzoLTzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=u+OoXlv+5DJUilBFUVJMtUVmrZEhnsO/2uccgrm8+qk=;
 b=bQoR/dEX7ujo5nzQ9Z/jbKQpWV/+xTUppyUTBNUypf8ausG4gt2T+WSyTobwQ6G4lhgfzdDsPTh/j5rodNO0ShPKXIHB0bPsngwWpziZW9nlcDvmyYUeoMStDIbviA2/L05IwjRxmzg6HNAI83m/hU5ZFjs6klsMR6KhrMrDxJjqZfl77w9XUAnSaZFZpfvAhdqxW4+FQdqddARYlfGer2/GLhqM1vX9mbn0Z8h1jxHFK1BxeL8vsiX3DL/4Dnqix3pmsILDIsKvQJQixdr+wuxEcJbIBG8UtUcETdpHyNlj0+9mp/CkQr/emKudeJZVB6Oy4/2ltFz8Q51ymvbb8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=u+OoXlv+5DJUilBFUVJMtUVmrZEhnsO/2uccgrm8+qk=;
 b=e2Y/qKdlpT3khrExaa+sv+5twXTfwcFTy5ciSdhSv5oXwznzRVknUOY+3eHIUsZHEu43UGeF6RDReTBsVIkPxCuaDT+aPrsN6wGCn0yjB6k+aHCcHJmQdLmKUbrQXIIlOcx6Rs4EYg9RwY3xSBVz5hqnCzTFz0FIBUcYS2IjgvY=
Received: from VI1PR04MB5327.eurprd04.prod.outlook.com (20.177.51.23) by
 VI1PR04MB6958.eurprd04.prod.outlook.com (52.133.246.144) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.21; Thu, 27 Feb 2020 13:59:36 +0000
Received: from VI1PR04MB5327.eurprd04.prod.outlook.com
 ([fe80::9547:9dfa:76b8:71b1]) by VI1PR04MB5327.eurprd04.prod.outlook.com
 ([fe80::9547:9dfa:76b8:71b1%7]) with mapi id 15.20.2750.021; Thu, 27 Feb 2020
 13:59:36 +0000
From: Peter Chen <peter.chen@nxp.com>
To: Marco Felsch <m.felsch@pengutronix.de>
Subject: RE: [PATCH 0/3] USB IMX Chipidea fix gpio vbus control
Thread-Topic: [PATCH 0/3] USB IMX Chipidea fix gpio vbus control
Thread-Index: AQHV7VqVZ4BeDr6e5UuTM5ZPfBO9kqgu5JsAgAAEwYCAAAyagIAABoeAgAAFTBCAAA4DIA==
Date: Thu, 27 Feb 2020 13:59:35 +0000
Message-ID: <VI1PR04MB532766F9451C419409CC0B358BEB0@VI1PR04MB5327.eurprd04.prod.outlook.com>
References: <20200227104212.12562-1-m.felsch@pengutronix.de>
 <20200227111838.GA24071@b29397-desktop>
 <20200227113539.gcx3nfwm2fbm3ukv@pengutronix.de>
 <20200227122045.GB24071@b29397-desktop>
 <20200227124406.6kbgu3dbru4qmews@pengutronix.de>
 <VI1PR04MB53270541BB66CAB1EB8F00008BEB0@VI1PR04MB5327.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR04MB53270541BB66CAB1EB8F00008BEB0@VI1PR04MB5327.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peter.chen@nxp.com; 
x-originating-ip: [222.65.251.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 43af10b0-342f-4100-8230-08d7bb8d4783
x-ms-traffictypediagnostic: VI1PR04MB6958:|VI1PR04MB6958:|VI1PR04MB6958:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB69589C95D7CFFE6D279397388BEB0@VI1PR04MB6958.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 03264AEA72
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(39860400002)(396003)(366004)(136003)(376002)(199004)(189003)(6506007)(316002)(26005)(54906003)(71200400001)(186003)(2906002)(6916009)(8676002)(81166006)(81156014)(44832011)(2940100002)(52536014)(8936002)(4326008)(33656002)(9686003)(66556008)(76116006)(66446008)(66476007)(66946007)(55016002)(478600001)(5660300002)(7696005)(86362001)(64756008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB6958;
 H:VI1PR04MB5327.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3rH7Z9+yC5niupsYEljmr0QnU4mKaN50uPh6ktI4EYD75YiVm033OpW3UzysjJNViK7dfqocJk9PoOrgD8gIYFCJnzYQTCysHWgDqY0EPbp5+8dK7isfI7fvyC5hwQnTFY6ThcG/2ijadud6U4aT1Xri9bQ6iNIuVdrKEsQUFZs0ookWxaSVQ1+BTHAdK2RJBvqVN7K2YbskNGFNtLqt64oO6kekVP0JpBLmSgRXJVbS/YPjIeBn1yTq/M13dc69MJS0Hggo98IWfJ/18MBcLpWWGB51sJ2NRNBY86wniCJLneuoqdIsRwqioFCTxFPFB5C1TJMez+IpyRHFkHOHRpBW3CtWj7ZRHj6qFNwLncKkDkrJCh6ElNoijtkFrINDwkTAf/qYNhv029PUubUV57k3789p8BE6Jt5mAhE4X0LG85CxpP1q4c2Dp7ZffmOH
x-ms-exchange-antispam-messagedata: ibXyapL6WOvpCQGIgvFDEHMQM3B1o39lPmNOJfAm2YegFmA1571iFWni4YT0Xdbn3JkIxPiIeR9zkfRTuaAVLHtTu8eH9/KfzeKpO7HXON67GbHkc4xg8NCWAi38FFGoCAs2RuzLyj6Mzy+80TPXVA==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 43af10b0-342f-4100-8230-08d7bb8d4783
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Feb 2020 13:59:35.9688 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6UfMtFopeeCVCkon4OYUeKmCwkOjmkehryE/8rHP+hhpOBf01z5pWkwYYdwttSPIAufUKpaVo8Y0tbJpskR9Pg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6958
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_055940_852554_05A1BC1A 
X-CRM114-Status: GOOD (  15.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.43 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "jun.li@freescale.com" <jun.li@freescale.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "stern@rowland.harvard.edu" <stern@rowland.harvard.edu>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

 
> > I had the problem that the vbus regulator wasn't turned off during a
> > suspend/resume logic. The first issue within the usb-core should be
> > fixed by [1] (v2 RFC is on the way). You never run in that case if you
> > don't fix this. After I fixed it the port-power is called during
> > suspend but obviously the regulator didn't get turned off because we don't add it
> to the priv->reg_vbus.
> >
> > This patchset should fix this and get rid of the
> > CI_HDRC_TURN_VBUS_EARLY_ON flag.
> >
> 
> Hi Marco,
> 
> I may understand your case now. At old USB port design, the VBUS is never
> allowed to turned off to response the USB wakeup event. But the expected behavior
> has changed after pm_qos_no_power_off is introduced for USB port, it is allowed
> the port is powered off.
> 
> PORTSC.PP could be controlled by USB core, but USB VBUS's power is not
> controlled by this bit if the VBUS power enable pin is configured as GPIO function,
> that is your case.
> 
> CI_HDRC_TURN_VBUS_EARLY_ON is introduced by fixing a bug that some i.mx
> USB controllers PHY's power is sourced from VBUS, the PHY's power need to be
> on before touch some ehci registers, otherwise, the USB signal will be wrong at
> some low speed devices use case. So, this flag can't be deleted, it may cause
> regression.
> 
> The solution I see is your may need to implement chipidea VBUS control flow by
> considering pm_qos_no_power_off at suspend situation. You may add .suspend
> API for ci_role_driver, and called by ci_controller_suspend/ci_controller_resume, of
> cos, better solution is welcome.
> 

Or you keep refcount for VBUS regulator on/off, if VBUS is already on, don't re-turn on
again. Do not consider CI_HDRC_TURN_VBUS_EARLY_ON after probe, and let
the USB core handle pm_qos_no_power_off, and call .ehci_ci_portpower accordingly.

Peter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
