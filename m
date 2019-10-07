Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83135CDA23
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 03:29:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pigNi3N7uhYTob4jsMkg8bdfywXCLyd5LzSROyKro/4=; b=h+feBD1E3plrNH
	yA8P1Wg8FLd6qUxk2iPoBFL7j1jWYQsSQWESHfVBR1/Wa8V6xAAcmpeh96l7MVuBnpxm2uFOLTIm6
	11hauMmtkM3SMl8bH5WpMnfAWKTZ6fofePHCaoy9xIU5308w0zCrLwORcW6nEH3tdDsbZjtPfOaSi
	Iv4Q/86TgISUwx1eESqiN2L5S2SoxmiULU43D90z401YJVz7BPqGw86jBKddOF9XJr5ImlxS5fQuw
	E7lzjMpCiCxRBD08l6BTE3VllgKrImq/mKjpOu+0cYhU/l72HULnDlYC89/EeJiGm/PocLvLo5Hl3
	DDnsM3KTV0zUBygQPhDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHHq9-0007sv-5w; Mon, 07 Oct 2019 01:29:33 +0000
Received: from mail-ve1eur01on0621.outbound.protection.outlook.com
 ([2a01:111:f400:fe1f::621]
 helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHHpz-0007sQ-3v
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 01:29:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Dd+UWbndbFbSQAzR6APgh+VD4jiCiqK5EV5vK/BYpJV/359fvAiY0+zgDHa5bo2oPXqBU04sUp1feoSSEal2yeY3reK2w8ywRDBjc5cqEntkfzxIEyNxof/UNabeZp9UrkCmPeYZ9myrwbwRDH38bABbygBWAwZY+3/iSvNnXhrarT2Q/nnjBUqsweiExNbGcseexxAB3gBSzS50r9dlNzmgSo1eTF5iVr2qwuZ9p+/OzpxF6iPDCXXO9Sq0gOIm9NUJucb2ZMv8rCBb50iZLKNlmv1Jxv346RtEMK9tAIJccXNoWQ7NcHYlEWf6xQbvts7ZWjGyU6hcDYDeZFeFJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=deyhNno6UlybK5gyg5RYGiamjg2BvbixlWMrqj9bhWI=;
 b=C9QROfzq7/Wn7/5EXfpg6rkLujnfcbY/As/jE8v0JhZRsGPCzHwKILn8K5BAfNGyEgz0Qc9H6XSP52eEMd2ztumu+piN8GOJ8Wxo5VmVMR1UgIUmdhyEy3VO4Qvr4TUdJbiJdm29NffLJ63YmyUnzJBX09jgCiMhZ29b0onxaQJLPEVT0HROho+vxYxVkSgYIp8KXZ+ySsaDZgqKVVA5GxL+xzJNggLKtRLQDf4TXhK3/5cSCLb46P9jvu5mn+UE2eUotAW4rBb1eNFgklLMHJ5s2MAmskB7JnTgRk2sJj3KKQGWKQEMZ2xkR6T+1pD+rU3+XTYxSgn2Fe8p0oyXgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=deyhNno6UlybK5gyg5RYGiamjg2BvbixlWMrqj9bhWI=;
 b=RvWBTk/rm9Hq11UfNd35i3nuOQTCULc4WqEhuXulQ2+88KoRELGDc/MMPZFINWvRrby8FZx0n1F1U1Dkaw1BoTSrneD7hPURVa/mpfnvQ0oMAvKFyaDu572YF0lD03ql7aAsGPzt9CZaKT3ONyCdrOelHbSqPL39fmmVXn+4mI4=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3787.eurprd04.prod.outlook.com (52.134.73.25) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.20; Mon, 7 Oct 2019 01:29:19 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d469:ad51:2bec:19f0]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d469:ad51:2bec:19f0%6]) with mapi id 15.20.2305.023; Mon, 7 Oct 2019
 01:29:19 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH V2 1/5] dt-bindings: fsl: scu: add scu power key binding
Thread-Topic: [PATCH V2 1/5] dt-bindings: fsl: scu: add scu power key binding
Thread-Index: AQHVYfv+INaxBRtrokqtKaL9fDhNpqc3/ZaAgACs9fCAFEyMgIABobbA
Date: Mon, 7 Oct 2019 01:29:19 +0000
Message-ID: <DB3PR0402MB3916A5821856B3FEAE9265C8F59B0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1567519424-32271-1-git-send-email-Anson.Huang@nxp.com>
 <20190922161415.GD1999@bug>
 <DB3PR0402MB3916F48DA2A16E57C624432BF5850@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <20191006003225.GD7150@dragon>
In-Reply-To: <20191006003225.GD7150@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d15abafd-0f14-4dea-e108-08d74ac5c665
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: DB3PR0402MB3787:|DB3PR0402MB3787:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3787B13F983F8B1A4C7A2C8BF59B0@DB3PR0402MB3787.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 01834E39B7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39860400002)(366004)(376002)(346002)(136003)(189003)(199004)(33656002)(486006)(44832011)(4326008)(6246003)(66066001)(476003)(6916009)(25786009)(6436002)(74316002)(99286004)(71190400001)(26005)(186003)(305945005)(8676002)(7736002)(8936002)(81156014)(81166006)(478600001)(9686003)(5660300002)(256004)(7416002)(446003)(6506007)(7696005)(229853002)(52536014)(11346002)(102836004)(66556008)(3846002)(54906003)(6116002)(86362001)(316002)(14454004)(66446008)(64756008)(66946007)(66476007)(2906002)(76116006)(71200400001)(76176011)(55016002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3787;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 13nhrK6UZQGZDOIgrXUUpSLO0FHgy6xXSFQQvAFpcv2cUgRVjM26E21ZI0O4EOLknouWIynBzU+mSP7rIovSV6juGYlX+o+lf+8Uu4dIgWjQFymnAtRXKSSuCjP1b11bxsQ+/OzJqQkjSuqkbMAe+R43slqY4l9KJ5jAgqF0BF7KalNZZHI4zd8ISb+yp42ozgAT4bb6o2ilm9s7H9pRR4IG2dYvRqXwTJ5yr+xO059Mt3MzXf2jCDFrWRSMudRyfKxvy6bPo1AezXe/5ZgyNxmnXl6nzKXPvCUNt48h5InxGA8E9Q6vz4Ni7olR/D/7IO1X8mJtUG6pOHXuesu/JkxDAzDq2SeENTJeg1hsk3C3iPTJCJqNqgZM5l7FjA+GY3YMASmI5nyTrwPBSuWfsOV4xrrKGrVbUjkAOWXfTYY=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d15abafd-0f14-4dea-e108-08d74ac5c665
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Oct 2019 01:29:19.2033 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: soyMP4W6xPzdV2+MPZ1iO0zEeC9nTMRKcfvrjDBWLgDviGYFarlz6sOh0BM8yokpioyNWEu5uU2YHJ6xuLGulg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3787
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_182923_158727_FC0B2543 
X-CRM114-Status: GOOD (  20.95  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe1f:0:0:0:621 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 1.0 FORGED_SPF_HELO        No description available.
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "ulf.hansson@linaro.org" <ulf.hansson@linaro.org>,
 Jacky Bai <ping.bai@nxp.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 Peng Fan <peng.fan@nxp.com>, "stefan@agner.ch" <stefan@agner.ch>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 Pavel Machek <pavel@ucw.cz>, Leonard Crestez <leonard.crestez@nxp.com>,
 "will@kernel.org" <will@kernel.org>, "festevam@gmail.com" <festevam@gmail.com>,
 "yuehaibing@huawei.com" <yuehaibing@huawei.com>,
 "marcin.juszkiewicz@linaro.org" <marcin.juszkiewicz@linaro.org>,
 "jagan@amarulasolutions.com" <jagan@amarulasolutions.com>,
 "linux-input@vger.kernel.org" <linux-input@vger.kernel.org>,
 "ronald@innovation.ch" <ronald@innovation.ch>,
 dl-linux-imx <linux-imx@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "mripard@kernel.org" <mripard@kernel.org>,
 "m.felsch@pengutronix.de" <m.felsch@pengutronix.de>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Andy Duan <fugang.duan@nxp.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "dmitry.torokhov@gmail.com" <dmitry.torokhov@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dinguyen@kernel.org" <dinguyen@kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "olof@lixom.net" <olof@lixom.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Shawn

> On Mon, Sep 23, 2019 at 02:34:07AM +0000, Anson Huang wrote:
> > Hi, Pavel
> >
> > > Subject: Re: [PATCH V2 1/5] dt-bindings: fsl: scu: add scu power key
> > > binding
> > >
> > > On Tue 2019-09-03 10:03:40, Anson Huang wrote:
> > > > NXP i.MX8QXP is an ARMv8 SoC with a Cortex-M4 core inside as
> > > > system controller, the system controller is in charge of system
> > > > power, clock and power key event etc. management, Linux kernel has
> > > > to communicate with system controller via MU (message unit) IPC to
> > > > get power key event, add binding doc for i.MX system controller power
> key driver.
> > > >
> > > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > > > ---
> > > > Changes since V1:
> > > > 	- remove "wakeup-source" property, as it is NOT needed for SCU
> > > interrupt;
> > > > 	- remove "status" in example.
> > > > ---
> > > >  .../devicetree/bindings/arm/freescale/fsl,scu.txt          | 14
> > > ++++++++++++++
> > > >  1 file changed, 14 insertions(+)
> > > >
> > > > diff --git
> > > > a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> > > > b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> > > > index c149fad..f93e2e4 100644
> > > > --- a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> > > > +++ b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> > > > @@ -157,6 +157,15 @@ Required properties:
> > > >  Optional properties:
> > > >  - timeout-sec: contains the watchdog timeout in seconds.
> > > >
> > > > +Power key bindings based on SCU Message Protocol
> > > > +------------------------------------------------------------
> > > > +
> > > > +Required properties:
> > > > +- compatible: should be:
> > > > +              "fsl,imx8qxp-sc-pwrkey"
> > > > +              followed by "fsl,imx-sc-pwrkey";
> > > > +- linux,keycodes: See
> > > > +Documentation/devicetree/bindings/input/keys.txt
> > >
> > > Note you have keycode_s_ here, but keycode in the example and in the
> > > dts patch.
> >
> > NOT quite understand your point, could you please provide more details?
> 
> The property being used in driver, DTS, and DT example in the bindings are
> all 'linux,keycode' rather than 'linux,keycodes'.

I see now, since Documentation/devicetree/bindings/input/keys.txt uses "linux,keycodes",
so I will also use "linux,keycodes" for driver, DTS and DT example in V3.

Thanks,
Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
