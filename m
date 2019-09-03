Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB360A6198
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 08:37:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MAMu/CbLHYbp0rRsFU9S0RGrFv7GgG5yF/9Rbmyc2Dw=; b=IORA/y86ZLaG9o
	4Y6J14SyZ2Dxm21c+21WjUx0nkUtwUS4tYc/DfaJ7N2xpkP+1GMJrX0TN6tvL8Ouep1+FRSzamZOl
	9XG0pK4hc0/NHaVlquknoN/Rwc49VtbVTF1OT+ElAGVN/aVZe9DOJv/5nsdaY1upoj6IXppj1O4ik
	6F1jQl3uLGU2WvR+gO3v8AlGZwDBsDdw//VNA0QU1EggLoTSlx15/euhZY3ZlGoOwEu+nBjCA3ZBL
	hoRpVSG+JTBckdsucyzc+L1CUItnp2Z3pb1/DygN4uCpuRjn3ON1t3S993oO1x2b/pQmF+ef63vAn
	ajmjQVREPMSpBJLAKORA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i52RK-0008SB-IB; Tue, 03 Sep 2019 06:37:18 +0000
Received: from mail-am5eur02on0626.outbound.protection.outlook.com
 ([2a01:111:f400:fe07::626]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i52R5-0008RD-S7
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 06:37:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RtudYmO8v+UPJxMaoAELM7/wwlgcdCh/ioIE2PAYCb9xbpwV/kllD1R0Xl3IG8d9rpyfvv7NnBjiSKhz7QrC7So66yxPyGD2QIC5XiZHDNhX21F8ZQWNCC12SM6JR14MIwj8KQfFM2ssdCdnekEQUCBHwBrjFVc0JoDxV5NyIUqUIG/6A8utfHqi2py0SiOVUR/W4Jk3un/9Us/8jpmbgd2i0/qaspQGWqZT7dD8ynEl4HnznJDg2CXmy7G1YatdzeWumij4PlZ8X/qAEe1/q0qi2ydxpbEBU42QdPlIEWakWfFXoiNduCqOFIRT6IlkvA0XzXrPB028yiDwFxIljA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NZhGOE9OrA4rJkPnM+TFObsmfrNy0UdJMrs+mrHKYBU=;
 b=m46A4SMtK4fYdMlpEM7M0ydKC3yqpoS2TbKOYjF5djGyXIwYMcIrwArCfCqySq4EJR2aN3rNxiZlC4Nv/UcjW4Nw10GPw6GSXnbJWlC1IUcu3sJjithSiTRZffz5sE3o4pnwjQFMmcEyHAfTgSPuM0iyULMQxY2Rnbdh5vzOyaDkU7vrrh3co2c4XhffqZuvDoxzV0owKnBgALCJ7yLU8wAt9PQdcWZBh1kZhBIJsxlJqvE2zbGpkU69TZ8nURlm2CD/bEN+6GzKkRg0x0WAOvhEuXrlHMYoSVLYwqCh5cQLDg1JNqcliBcsULQr605WM6WaW7PReFJZvXUIbq7Suw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NZhGOE9OrA4rJkPnM+TFObsmfrNy0UdJMrs+mrHKYBU=;
 b=H33/MIEgDY41Y1Jk/tE2cwKqlmq6kLKDefuBuJso4+bUTw0sNSi9qk7GmAnA9EpuXHTg9MM4WOBEJYF51rayomhnqU7moeicwgLXXA7MW7s+L7soLo7iNINDkMJrbpHegfwEQOj4LK7Ck4rbHaVlyvlTtz8weuLxHtb5KLtgsUs=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3914.eurprd04.prod.outlook.com (52.134.71.157) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.20; Tue, 3 Sep 2019 06:37:00 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::8958:299c:bc54:2a38]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::8958:299c:bc54:2a38%7]) with mapi id 15.20.2199.021; Tue, 3 Sep 2019
 06:37:00 +0000
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
Thread-Index: AQHVYfv+INaxBRtrokqtKaL9fDhNpqcZfq6AgAAAnFA=
Date: Tue, 3 Sep 2019 06:37:00 +0000
Message-ID: <DB3PR0402MB391656FC3603B30300ADBF27F5B90@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1567519424-32271-1-git-send-email-Anson.Huang@nxp.com>
 <21d2e400-976a-35c3-6875-4cc0c476fdf2@pengutronix.de>
In-Reply-To: <21d2e400-976a-35c3-6875-4cc0c476fdf2@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c3ca1df6-ca44-429e-a77a-08d730391fed
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3914; 
x-ms-traffictypediagnostic: DB3PR0402MB3914:|DB3PR0402MB3914:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB39140FB68264E1BE4ECAC4F9F5B90@DB3PR0402MB3914.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 01494FA7F7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(366004)(396003)(136003)(39860400002)(189003)(199004)(478600001)(14454004)(256004)(5660300002)(86362001)(8676002)(33656002)(316002)(446003)(71190400001)(102836004)(186003)(52536014)(2201001)(7416002)(6506007)(26005)(66066001)(2501003)(53546011)(71200400001)(476003)(44832011)(486006)(11346002)(25786009)(55016002)(9686003)(74316002)(99286004)(229853002)(7696005)(76176011)(6116002)(3846002)(76116006)(7736002)(305945005)(66946007)(66556008)(81166006)(110136005)(81156014)(66476007)(66446008)(64756008)(8936002)(6436002)(53936002)(4326008)(6246003)(2906002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3914;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: CZ/dRw4Ot/ZiZP0iRPwX40nfstkCoVd/j/HgATYQsyMZ/9uFTbl06ILwsiBbxQZO8jQtQ1/wQCqt2cbAAuwezHwq8jaR0td5EMcwdN8QMFawA1xtGLVNCbsRMoiBF8VEyx/04WfHt1ehl9qbbvHOkqqpNJM50vvVu7//2mH7PvJmQNSNUCPHe3BZWtWq0FB9N5ltP8OsZnulqvOE643q6OjWe9iIDyC4P2blJbbYGr/zr8twYMgTpyAuOPif0+Y3kYfk59E0EWMOFbH9X8TkJwR9Z4lWDOttgQmSW7zmO+2yNfPrJyM08Bq7Y9k3AF1T5IOAi2d2LtddYkl3lJR0S2vqxEwUnPlq59I/4IOEQRZCwgcylTf32FLpUZEw0dSRLugckcgNXc5KoPLBn8mZGf0amB5Dh+v6+GhGDr6EJMM=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c3ca1df6-ca44-429e-a77a-08d730391fed
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2019 06:37:00.2542 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9SNMIp/kyqaD5b7kPCpFrXug03bODGhFklvFuIEtR7NwPWW/4RX80ZrW6HnIGrCwocBiJF2JyQu5+hHOeVQbsA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3914
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_233703_917276_E0A30C57 
X-CRM114-Status: GOOD (  17.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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

> On 03.09.19 16:03, Anson Huang wrote:
> > NXP i.MX8QXP is an ARMv8 SoC with a Cortex-M4 core inside as system
> > controller, the system controller is in charge of system power, clock
> > and power key event etc. management, Linux kernel has to communicate
> > with system controller via MU (message unit) IPC to get power key
> > event, add binding doc for i.MX system controller power key driver.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> > Changes since V1:
> > 	- remove "wakeup-source" property, as it is NOT needed for SCU
> interrupt;
> > 	- remove "status" in example.
> > ---
> >   .../devicetree/bindings/arm/freescale/fsl,scu.txt          | 14
> ++++++++++++++
> >   1 file changed, 14 insertions(+)
> >
> > diff --git
> > a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> > b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> > index c149fad..f93e2e4 100644
> > --- a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> > +++ b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> > @@ -157,6 +157,15 @@ Required properties:
> >   Optional properties:
> >   - timeout-sec: contains the watchdog timeout in seconds.
> >
> > +Power key bindings based on SCU Message Protocol
> > +------------------------------------------------------------
> > +
> > +Required properties:
> > +- compatible: should be:
> > +              "fsl,imx8qxp-sc-pwrkey"
> > +              followed by "fsl,imx-sc-pwrkey";
> > +- linux,keycodes: See
> > +Documentation/devicetree/bindings/input/keys.txt
> 
> linux,keycodes is required parameter. So, this kay cab be anything. Why the
> compatible is called pwrkey? Probably it is better to call it "*-sc-key"

This key is kind of special, it is ON/OFF button which is designed for power key
purpose, it has HW function such as long pressing it would shutdown the system power,
so we always use it as power key, NOT general key, does it make sense?

Thanks,
Anson.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
