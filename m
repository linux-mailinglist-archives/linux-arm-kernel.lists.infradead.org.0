Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 408D36C520
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 05:04:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b2vNp8g6aJpc89bczWwZ7pf2pLGdXssnYkpCJ+Mz+wc=; b=QPUM8DLQLX4qgn
	7mF+8sud4nLrt3DKTp1FVKhZ7ueIA4jKXFOya0zpIYolOWZkl6R/0i50+MQyNB5e9qjrROp+lB8eI
	Va754dopU2QTLNXQ8zM/xxFM1h9P+wcB/0Ac7CcwK5rfF8ATAqFLEDJjlo5wpXWZ1Hgqp9FoPuBwS
	huH4pjYW95LMWXA57k7iXZNxTtHGLSDBd6/dFfNuoHcGMSywAnSYmaK2myStqpwQAwDuxL/V3WFQS
	Rg+vH9jrtyjw7iFOKZy3ONgkjF6waB8Fn+3VmyFJagucZhZMLrYPDPy73dyzEfiQ7+AscVXq8j9xG
	EsNWO0MUe0aSe+jviTEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnwiJ-0002QP-DO; Thu, 18 Jul 2019 03:04:11 +0000
Received: from mail-eopbgr150051.outbound.protection.outlook.com
 ([40.107.15.51] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnwi6-0002P0-SD
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 03:04:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mb0Pb0QxbgD6yvL4nVH/xhERNW2Gt2sCLvZg7s3Jd/18UNq98erjyvWtXelbZ6NOHxvu0FTDQURulcVE3Ttn3gnVoDPswzZyi0teMRStI2h3G1lwQBNuBhvoaUMHhRmPZj4B0jji06e7xPGlfiYx3awjt1BEIvCbWlPdIOJv/sjwNe08ApaZM032gDS12ZSdvfspSCdwGFwEE4txf1/oTIxyx/ncftxouFxmAh15oVEg7QDt8PDotkGI8S4h1qkxyFfwCGzK6M8TY2Mk1JpNm9iTsX8woxah4ix1jhaLu9YqrCE1SpGaOZMSS+O2tqzdrOGzb46usRxvRY4Hbfzepg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=g/Zq7FZcArI3xMGNsJveRQuo4z77ICHqcqo69PcaFv4=;
 b=Zbi5b+uKNKBCohPiLn2MnNHbkZqD1L4gYloFPy6OMjntG1vnam/q5QCY8Yl3vmD6/k7dh/RauRGM9L1XAivgVS9uIT1HFVkXX4Ai17M0ekQMu+OX8eJOWnZYsa89JqD5oveIRmr1iX5K6raPivDDuPAoto0XWTqBXTu/S6xPg99tkuPlTOP5LtIW4ToxKMeZmwGQNiog9R8/n2qDeMcrDerB6MCr67bnyyovIO57ori4GWwbM37G/YmlmpsbUqvSdbAL+rmtCKGhhErnb+wl3Vyk+Fzu/7ov7a0YuVYp0Kz6vTf742vpDZtimpFK92Ne2jyIYrC/T5ij72nMYOMJdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=g/Zq7FZcArI3xMGNsJveRQuo4z77ICHqcqo69PcaFv4=;
 b=k42+sIevQZvZOX8lzMDSD9zOv0GAF9VjZOObIr7Z+w0yHYfgaF8QCeneQU6dRqvh/VFR0fNPSs5y8hsA/zRLi99rebiArJ1RsNO9NyFQVATnRY04EiHfxQdwJzromZc8/da+Pj5b8yEnCgplpEenpx3R7naBV9PqxY25plH6HCo=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB6212.eurprd04.prod.outlook.com (20.179.35.86) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.14; Thu, 18 Jul 2019 03:03:53 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::7882:51:e491:8431]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::7882:51:e491:8431%7]) with mapi id 15.20.2073.012; Thu, 18 Jul 2019
 03:03:53 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: RE: [PATCH 3/3] arm64: dts: freescale: Add support for i.MX8QXP AI_ML
 board
Thread-Topic: [PATCH 3/3] arm64: dts: freescale: Add support for i.MX8QXP
 AI_ML board
Thread-Index: AQHVPGZyIR348aAD1EKdeUBRiwSuo6bOm9pAgAASkICAAQKbwA==
Date: Thu, 18 Jul 2019 03:03:53 +0000
Message-ID: <AM0PR04MB4211DB3B62D728BA2C70DEA280C80@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <20190717061039.9271-1-manivannan.sadhasivam@linaro.org>
 <20190717061039.9271-4-manivannan.sadhasivam@linaro.org>
 <AM0PR04MB42116A61D7E32E6BA36D1CBA80C90@AM0PR04MB4211.eurprd04.prod.outlook.com>
 <20190717113435.GA32330@Mani-XPS-13-9360>
In-Reply-To: <20190717113435.GA32330@Mani-XPS-13-9360>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1833a256-edd1-4056-7c2d-08d70b2c90d2
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB6212; 
x-ms-traffictypediagnostic: AM0PR04MB6212:
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-microsoft-antispam-prvs: <AM0PR04MB6212EA613CF37768D04F097180C80@AM0PR04MB6212.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 01026E1310
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(366004)(136003)(396003)(39860400002)(376002)(189003)(199004)(446003)(186003)(66946007)(8676002)(6916009)(7696005)(316002)(86362001)(52536014)(4326008)(229853002)(76116006)(99286004)(66476007)(6436002)(66556008)(66446008)(5660300002)(68736007)(64756008)(26005)(71190400001)(2906002)(71200400001)(6506007)(256004)(54906003)(478600001)(74316002)(9686003)(6246003)(7736002)(305945005)(55016002)(81156014)(53936002)(66066001)(81166006)(33656002)(14454004)(11346002)(76176011)(6116002)(8936002)(25786009)(3846002)(486006)(4744005)(476003)(7416002)(44832011)(102836004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6212;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: k5vmkhRvmsWCncInNg5Fk/sjFSRmrEowKZHE7C3Cjh484AXoxSe+z2JbrHw0JuDfZza60B3u1dfZeIWVlztaU0aJtsR6AkXXziCmCbH2SCJgyD4ozn/3QSehScbcONWZYjgroD8+muBr3lZ5L/0TKFQ3urdZVMVJ92xQWqDuq5AnZFScygGLGXlUj9t6IVIj7Bj8B4syKI686oWl4njsQd3640Ji2MiLYhTGe6Vy7F9kc5d2XYLoXQkQ63bYjdGz9XmlRYhYQSkZLCoawTuRChC8k38OQ0GI/6W488eCcXQsAZYmRDk6a3o0oU4SzIFQUEKQJ/jaKRXSlenpeUrpeyyyLGV5QFZnkk3a03yRt7oUUzyyOu1Vk46181MbWZS+6UK5knsJYRm7jMHbxDe7fN3PAB7AHIglcThHBmc0ZpQ=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1833a256-edd1-4056-7c2d-08d70b2c90d2
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jul 2019 03:03:53.1844 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aisheng.dong@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6212
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_200358_981866_36A8C4F2 
X-CRM114-Status: GOOD (  10.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.51 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Kinjan Patel <Kinjan.patel@einfochips.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Darshak Patel <Darshak.patel@einfochips.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Prajose John <Prajose.john@einfochips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> > > +&adma_lpuart1 {
> > > +	pinctrl-names = "default";
> > > +	pinctrl-0 = <&pinctrl_lpuart1>;
> > > +	status = "okay";
> > > +};
> > > +
> > > +/* Debug */
> > > +&adma_lpuart2 {
> > > +	pinctrl-names = "default";
> > > +	pinctrl-0 = <&pinctrl_lpuart2>;
> > > +	status = "okay";
> > > +};
> > > +
> > > +/* PCI-E */
> >
> > A bit confusing for the comments...
> >
> 
> Hmm. How about, "PCI-E UART"?
> 

It seems to be related to your board. So up to you.
I'm fine with it.

Regards
Aisheng
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
