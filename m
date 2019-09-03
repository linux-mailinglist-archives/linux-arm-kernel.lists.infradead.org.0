Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2563A5F2B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 04:08:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eAea2XTUGL9HaUsXh+L7HTXYudW9QNekjGsSibJNny0=; b=elhaLJisl2sSDc
	9GqekK1ZY4gPxCnAtEVvqRyGfCfHdxjpJZ8pP2poY1Il4M1a8WckLT17toFRxlBe6iihzyCCtz+NU
	LpEuoIEaXF9UuG67jEePGzyeqNGYRu5KU8UnfytQhjybXVlxqN5kzOrw48JYHZkHvGgy9t19X+p8o
	ZHrDrJVj6mVfR6nI5FQtDPSmI+2Fzn9AtkhuGFPS6koC6Sur13lotFCf8iPViiX08DsPShQmY3XU7
	IQaeVQKAnKu+LjD5cqLPphExHuaws+q1MwPhcIpRLZsQjVxZUpXwey+Xflpf89tqDwra6dGGf6Uqf
	JnWQ1yazCJrQh3RGoRcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4yFa-0005dl-Hn; Tue, 03 Sep 2019 02:08:54 +0000
Received: from mail-eopbgr20051.outbound.protection.outlook.com ([40.107.2.51]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4yCR-0003Xm-AS
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 02:05:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nQDn4BjVsYArf33qIB/jVt0uKYnbhNVZVGMDVTBPUA3Pjn6nLX/H2qVSUxrY2fsLgLizLRaiE7b0TprNXiobRtG1oLG2CzFIf+2LsSRxWIeAY8kq45ax673pLBeCwjVxqDC99JlNAxLgXtg9sqSCaKl9qIF/dLyFPs96XBdDo84ZbEVEUHwjHCzP6ofhAed/zyPi4cWWOfh+4P4rDgEWKcuF9M/jvwZKKlxA5s6hst81+NbzG5FVuyZbkMkEAL9HJHJeecX+gAje68SxjkP9f/kp4ON0ZOcVAeYcjpU2nLgrcsgXkVBQUM0pfSxI2xwN9WC+jx1+X4E3xLAei7m9cQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FiyIedPARBcs6sNS0DslsfXPaNnfErxU9/VGxwmSQhI=;
 b=lC5kaHP61NK9v6f9LAVLQeYXhotFFjvCDC+frgHadQR/dEgqDkXVJEOWEEa+1o5Kg1shatD9qTheQAhL+2kA0WEfPbbwEHYutM9lVXbwvfjXqSnLHM8b65TnL2F4RQ+lddyBAWRZ2hrCVEae9z7GfcupK271zS3pqoqnxWY37kKnNB1CG92JHbdjjw2lsaWzDXjN9R+2xxpyQW1G43HJKf25W+zf/mv4PCLvY778bv/b6hjnp932wgNr8ARs/EX+sAYFmZR4PLX/ksPG9tCH7sGS6OgFClurfuZemKt5O4dQHPNX02sDpIRRMk7yCQcNDoK3RI+PRbLfCPzekzcOSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FiyIedPARBcs6sNS0DslsfXPaNnfErxU9/VGxwmSQhI=;
 b=mefGqYV0n8cgYpVz17DpZ2reI9iLnyQoeSaZJWyOXW/mEv4YJ6WwDal+I3redNoQ1fct5kLJj76GSGB4tfATAIV1tipCsfWcC2RMIHb92DOvdXI0nnWqPRORcbg+r2tsWAux2fvNN8dMLS2vcMxXo4jP1FL+2BOWoW2vABAQHoQ=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3819.eurprd04.prod.outlook.com (52.134.71.158) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.19; Tue, 3 Sep 2019 02:05:33 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::8958:299c:bc54:2a38]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::8958:299c:bc54:2a38%7]) with mapi id 15.20.2199.021; Tue, 3 Sep 2019
 02:05:33 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Rob Herring <robh@kernel.org>
Subject: RE: [PATCH 1/5] dt-bindings: fsl: scu: add scu power key binding
Thread-Topic: [PATCH 1/5] dt-bindings: fsl: scu: add scu power key binding
Thread-Index: AQHVXxCk6/I09s7BV0y76ajf6ryt2qcYaXwAgADQJXA=
Date: Tue, 3 Sep 2019 02:05:33 +0000
Message-ID: <DB3PR0402MB3916135233AA2DDD5DA177B8F5B90@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1567198429-27886-1-git-send-email-Anson.Huang@nxp.com>
 <20190902043521.GA14143@bogus>
In-Reply-To: <20190902043521.GA14143@bogus>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 31d47967-da42-43e3-2413-08d730133479
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3819; 
x-ms-traffictypediagnostic: DB3PR0402MB3819:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3819337D43B7EA56B243AB1BF5B90@DB3PR0402MB3819.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 01494FA7F7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(39860400002)(376002)(366004)(346002)(199004)(189003)(66476007)(66946007)(74316002)(66556008)(64756008)(66446008)(14444005)(316002)(76116006)(33656002)(229853002)(66066001)(71200400001)(8936002)(256004)(54906003)(81166006)(8676002)(25786009)(71190400001)(6506007)(44832011)(86362001)(7416002)(6116002)(305945005)(7736002)(102836004)(3846002)(476003)(446003)(11346002)(14454004)(5660300002)(486006)(9686003)(186003)(76176011)(99286004)(55016002)(7696005)(26005)(2906002)(478600001)(53936002)(6436002)(52536014)(6246003)(81156014)(6916009)(4326008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3819;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: RITtNNqlFogUllF4UfZHyf3EtEqzomiHfQ3NGwkj/MvnkjtVP4MEmJrqPW4CWIERLCquEJIYynnJtjPgVELrgU1G5gpdXL3TakboP7ri1HDV4VR6YzM3LBkorwHVsewxLBdNybHK7nXdaqYxAMGRGGCyYsl/3qiGRzMXKp++3tYETU0oGPkP4ZJi9kiicn+t/DbShp2ILWyIK8PX55NAEXqm9sFZmHL5r07W3Pp/4ZPNJ/iLthpkmZGntV2zu3vseJkXdh9zwzesoNF4zwTURf/jl8D12aoBXxPOLF9vswQ1d8cYINsVsvGvXPN4jWiW3rZ+/0k0aZxp4JHIfQf57BJAS1n2v6dzuXaM+uIYXHngcqNC+/r6KQCzS6lDxZBRpmI8DpTR0iUNrJ7DCrqi8J1kTLg0y1+qW3IBY/uAe/M=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 31d47967-da42-43e3-2413-08d730133479
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2019 02:05:33.7351 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gCwugCLTAplz48+t0co9B7cU/R0qL5hS9JnIlXWY6gFI+qGSNTQ31VJP67lK0LvLIRr0vaMfvT6Zst2f+yeZRg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3819
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_190539_957315_FF46A2B6 
X-CRM114-Status: GOOD (  17.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.51 listed in list.dnswl.org]
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "ulf.hansson@linaro.org" <ulf.hansson@linaro.org>,
 Jacky Bai <ping.bai@nxp.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 Peng Fan <peng.fan@nxp.com>, "stefan@agner.ch" <stefan@agner.ch>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, "will@kernel.org" <will@kernel.org>,
 "dinguyen@kernel.org" <dinguyen@kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
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
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Andy Duan <fugang.duan@nxp.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "dmitry.torokhov@gmail.com" <dmitry.torokhov@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "hsweeten@visionengravers.com" <hsweeten@visionengravers.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "olof@lixom.net" <olof@lixom.net>, "shawnguo@kernel.org" <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Rob

> On Fri, Aug 30, 2019 at 04:53:45PM -0400, Anson Huang wrote:
> > NXP i.MX8QXP is an ARMv8 SoC with a Cortex-M4 core inside as system
> > controller, the system controller is in charge of system power, clock
> > and power key event etc. management, Linux kernel has to communicate
> > with system controller via MU (message unit) IPC to get power key
> > event, add binding doc for i.MX system controller power key driver.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> >  .../devicetree/bindings/arm/freescale/fsl,scu.txt      | 18
> ++++++++++++++++++
> >  1 file changed, 18 insertions(+)
> >
> > diff --git
> > a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> > b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> > index c149fad..001d0b7 100644
> > --- a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> > +++ b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> > @@ -157,6 +157,17 @@ Required properties:
> >  Optional properties:
> >  - timeout-sec: contains the watchdog timeout in seconds.
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
> > +Optional Properties:
> > +- wakeup-source: See
> > +Documentation/devicetree/bindings/power/wakeup-source.txt
> > +
> >  Example (imx8qxp):
> >  -------------
> >  aliases {
> > @@ -220,6 +231,13 @@ firmware {
> >  			compatible = "fsl,imx8qxp-sc-rtc";
> >  		};
> >
> > +		scu_pwrkey: scu-pwrkey {
> > +			compatible = "fsl,imx8qxp-sc-pwrkey", "fsl,imx-sc-
> pwrkey";
> > +			linux,keycode = <KEY_POWER>;
> > +			wakeup-source;
> 
> wakeup-source implies an interrupt property.

After further check, I confirm this "wakeup-source" property is NOT needed for SCU general interrupt
wakeup, remove it in V2. 

> 
> > +			status = "disabled";
> 
> Don't should status in examples.

Removed it in V2, please help review, thanks.

Anson

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
