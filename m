Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B50228954D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 04:03:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qxx32fdzvXbgwjAMK8KwckG2cbld+b0Hk5ozYQs4h4E=; b=J3egUGsIfUHSR+
	WXbpqZrfbH/aR6l/yC4lQ2wWTdb720HIMsiNnbFp489QVgaKi/jhtVKlXiZxp8Yhdt/8Z6qqerf9l
	PimYNSqZJYCj2TfnWfSChzxald3+X7gRMwW6869ob3V4Q10BlPQ6/iyk5uNDPToJZacAo2ywcp6iS
	ffBJe02YN0rZG533GX6pV9YSjE/2cPaV6xsC7YPO211C/VGziCGwcRhde6sbfvTC0TuJdZ9QJJFua
	LguvY/WXdJeu15rxFUe1C/tKeFA9qqLgYza4TTiiRWTG8kx1BXJS1tIZJgV3hgtQlOfbyQhvbBzb5
	DDJpeHZ/cq3AuoYVXPjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwzgE-00031D-BX; Mon, 12 Aug 2019 02:03:26 +0000
Received: from mail-eopbgr140049.outbound.protection.outlook.com
 ([40.107.14.49] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwzg2-00030j-7o
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 02:03:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=idHGjKn+uz71cp0GvPsvBxF755AOuvXo3z/dDGKQx1Du7Woo+JFjV2go/qT16w6F1zbxLaZ/X1pAqhtu4ephZGUlB44eQSdso/Oc6HCabWjUW1MABzRD7CsdQGJZQHk+zJdHuK0a51BDg58WUufWAy8ZNM98mc6yD2FT4Zyl2IwYdmOF/3czEzbmhXsZmx97/uW6MX8V6qctqUaGgR7gxyM0TWNG71w5eZvPP0IWWmYmo/IP85ympfpIIBUaKNPAqVmNMegFNUb+sPxWyuVGjnNeD/nT+Te/3zQTSAT0DX6WwXFDaaJFVqmqidlSU2kty0R1OmxWxi1TDtpv2r8csg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=arWxFWLs/I/Yt9qT6aFIGOPRsxen3mDIw01xD4jgdjU=;
 b=HpxsPwkpIqqy4n5iDRcbp/tB6qz9Ny48SjSafG4HlS4Etl4cgE2H2qdzExleJYh3rqKgOHZmGyc5r4FUiCnUwiSOHEzyCyhwb1bIe/1U9SfzXg3RAjwH1yadeEWEUMaKAQN7vG8e0+hqDBiOab4hp63Tpo8OhRhv3C0V/71kl1xaFpqAsVx0Oy+bKSRrJz+BNKAd4IT/hwQj9Optd6jfc4fGxU1ygqkv6QYjno+RH/0Yvy1yd0+R/781/ALJ9ZqBjuU8egOyp0kNXu2ooYv3i4x6umdsk7aR5aZQbkS2diOPvQAbclqHCfBE65zp5fMf6URKz6O3yPXiuefEXyq2tA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=arWxFWLs/I/Yt9qT6aFIGOPRsxen3mDIw01xD4jgdjU=;
 b=PKpTKrgEHtEcSDiPk5Q7Z6qvqEdueHSnwzWFaFcfOtZrQIFHzHIzKeQ68MExpK70Axd0P9dWfczhKI65pDw08qmVqKnDsaO9qTse30mJpyDRG/Aw51FLTkprf3PpI8ouIt0xg3jDoUUYSnFUSN0w4ZatlcbAw/ke0uB9CG0G7DU=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3771.eurprd04.prod.outlook.com (52.134.67.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.15; Mon, 12 Aug 2019 02:03:03 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::7cdf:bddc:212c:f77e]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::7cdf:bddc:212c:f77e%4]) with mapi id 15.20.2157.022; Mon, 12 Aug 2019
 02:03:03 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Guenter Roeck <linux@roeck-us.net>
Subject: RE: [PATCH 1/4] dt-bindings: watchdog: Add i.MX7ULP bindings
Thread-Topic: [PATCH 1/4] dt-bindings: watchdog: Add i.MX7ULP bindings
Thread-Index: AQHVToVB4MOOtXDeCkyHClI34d9xYKbzBeaAgAO7LsA=
Date: Mon, 12 Aug 2019 02:03:03 +0000
Message-ID: <DB3PR0402MB39161E58AFF5681757DE1C06F5D30@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1565334842-28161-1-git-send-email-Anson.Huang@nxp.com>
 <20190809164245.GA17136@roeck-us.net>
In-Reply-To: <20190809164245.GA17136@roeck-us.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5ef953b6-18d9-475b-2d17-08d71ec935a7
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3771; 
x-ms-traffictypediagnostic: DB3PR0402MB3771:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3771E2CB34DAA7ABEAEC49ECF5D30@DB3PR0402MB3771.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 012792EC17
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(396003)(136003)(346002)(39860400002)(366004)(189003)(199004)(186003)(53936002)(71190400001)(71200400001)(86362001)(26005)(486006)(66066001)(9686003)(6916009)(3846002)(6116002)(229853002)(44832011)(8936002)(256004)(81156014)(81166006)(7736002)(4326008)(7416002)(305945005)(74316002)(8676002)(25786009)(52536014)(102836004)(6246003)(6436002)(54906003)(478600001)(7696005)(6506007)(2906002)(66946007)(66476007)(66556008)(64756008)(66446008)(76116006)(11346002)(316002)(55016002)(446003)(5660300002)(99286004)(33656002)(476003)(14454004)(76176011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3771;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 3PGCiGJVhQMuNFPqIaFwKs8mxISmuxPkWRa72htJ/sHtPxo3yO6Bpf2O3UVHwYmdJb+qbO2IEzVnaByIZabumDDDyvLqXe6aZuX18+Y4Nm+Jm0fRNzcJvIHDvrHkV4lcme6E3jED6bbaDmSDDuvFJ2GsdPqd8skZdSEYS0/cgVv9w/NktoVCxlCtzjhgJ6zcLo7SV7QwzX9g9VB6dvyv6WVBOGG6f7VsW3E2stkAO6wDeWBrjdGvwbAGuLtCVcHvxHjHSN8tuwCEoWZI99/gHcURrHrc6hrR2XpR1q/Lm7qSBTD6lGpXjaY9AI1Iy7VZaIybzYcyyBT8IHTIZKFC01XEcR8P5ynaql3jr7ZNbYwQ13Dc2ZVujWOncJLmPPuim7JgQSRS2vNp4V+YLhBHBT4OqGtvfXXvi9eYKF3JUOk=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ef953b6-18d9-475b-2d17-08d71ec935a7
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2019 02:03:03.2763 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aT8N0ZwayjIGjlu8M/uF7JmxdEqM0AVk1diAAOWR3ym1QtKyjdoaSIH7MSDJEh5gmW7ZsYQ928mVwV8dW+UReA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3771
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190811_190314_600995_30766495 
X-CRM114-Status: GOOD (  18.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.49 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "schnitzeltony@gmail.com" <schnitzeltony@gmail.com>,
 "linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>,
 "otavio@ossystems.com.br" <otavio@ossystems.com.br>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "jan.tuerk@emtrion.com" <jan.tuerk@emtrion.com>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 "wim@linux-watchdog.org" <wim@linux-watchdog.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Guenter

> On Fri, Aug 09, 2019 at 03:13:59PM +0800, Anson Huang wrote:
> > Add the watchdog bindings for Freescale i.MX7ULP.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> >  .../bindings/watchdog/fsl-imx7ulp-wdt.txt          | 22
> ++++++++++++++++++++++
> >  1 file changed, 22 insertions(+)
> >  create mode 100644
> > Documentation/devicetree/bindings/watchdog/fsl-imx7ulp-wdt.txt
> >
> > diff --git
> > a/Documentation/devicetree/bindings/watchdog/fsl-imx7ulp-wdt.txt
> > b/Documentation/devicetree/bindings/watchdog/fsl-imx7ulp-wdt.txt
> > new file mode 100644
> > index 0000000..d83fc5c
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/watchdog/fsl-imx7ulp-wdt.txt
> > @@ -0,0 +1,22 @@
> > +* Freescale i.MX7ULP Watchdog Timer (WDT) Controller
> > +
> > +Required properties:
> > +- compatible : Should be "fsl,imx7ulp-wdt"
> > +- reg : Should contain WDT registers location and length
> > +- interrupts : Should contain WDT interrupt
> > +- clocks: Should contain a phandle pointing to the gated peripheral clock.
> 
> The driver as submitted does not include clock or interrupt handling.
> Why are those properties listed as mandatory if they are not really needed
> (nor used) ?

I missed the clk part in driver, it is working ONLY because the wdog clock is enabled
unexpected, I will add it in V2, thanks for pointing out such big mistake!

Anson

> 
> > +
> > +Optional properties:
> > +- timeout-sec : Contains the watchdog timeout in seconds
> > +
> > +Examples:
> > +
> > +wdog1: wdog@403d0000 {
> > +	compatible = "fsl,imx7ulp-wdt";
> > +	reg = <0x403d0000 0x10000>;
> > +	interrupts = <GIC_SPI 55 IRQ_TYPE_LEVEL_HIGH>;
> > +	clocks = <&pcc2 IMX7ULP_CLK_WDG1>;
> > +	assigned-clocks = <&pcc2 IMX7ULP_CLK_WDG1>;
> > +	assigned-clocks-parents = <&scg1 IMX7ULP_CLK_FIRC_BUS_CLK>;
> > +	timeout-sec = <40>;
> > +};
> > --
> > 2.7.4
> >
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
