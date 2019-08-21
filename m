Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0247E97A7E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 15:16:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ehsd+vsxzZURJAwgheMReeOwAPM29hrplCACPvRVVgw=; b=Pnbd6vjJO2QzZR
	ISam5q7ZaixJ47I68re6WM1y79avQe0Q21nCxpu9wR/f9honGjgattQiiWtXUVZVIHCkib7tSQrwx
	IxQ5ao1lDbn0N3bNX+TfWh7FjmTs8GmyXXG+lUL6QuYL8UuFBpDV8mOOOZiIWp8oqXvN+I82VeziQ
	hf8JZ0soZWQ/vAhu3Wd6ugSGYqHxPGxJ6Ul05rfNX1Q2vvNJAvZ/hPlH79rttrq6gXTRkBdgJyZxr
	LVmYdDQGEqxTIN+m5w02XrlCIqw+eBnIvsdYBpVsAI71XURBOCZoQXyQ5rRm+h96i2KJGwNET34bU
	URqJD5yfCog2c4EW8Ucw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0QTJ-0005KK-QJ; Wed, 21 Aug 2019 13:16:18 +0000
Received: from mail-eopbgr70111.outbound.protection.outlook.com
 ([40.107.7.111] helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0QT1-0005Ju-5r
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 13:16:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LpiiokpI5merFZw/vkPf7SMOzVB2Op5c+6geXEL6wBmrwM/PQRCkxuzdT3xyeGPTkJpZ1b4wbrsPTpDcylfbAzrWFWZ4TZclGLJYj5FTo/C7XVLR8PuF72tHTY/BZ8K0SzPOrvWgCf3AeqTeYlS2Efk3KAEsuRanIt76ypq+Qygc8P+xGdKkyTi/Cq7P4r8xnBID5nSbCYC7rEK1vGt7KHyugN8oiqZuAOGHo5QDHSRBDDDChRrPKE1u4Ud6tZzkxjZcFn5lK5D8vI+RuQDqjA4pPzdW5uOu185kzWuW13PfYi+9lXS55ka3hQlas+we2p146zfZ3jVxi+2bY9aVIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7XvvoYtczd3wCcNvyHVjlYmdeqsfygsQqs3FFBwWScI=;
 b=CdU0giYWR3zGpp99wFMdMlJ7+QWHEMkLmd8/dsAgC8oGLf8qdzxnlvs6nxdvyd1+9Q2Mhwb61cpzktzqGg8/9tGn+LEkN/5UIbQnrqFobe3VWs2vXs1oYwhxATM+7+rHwg1vMaqX7x80JVD2yhI7xVvN5jIOYdj6ol5KLY6zpvDVmLt/QMbBhOT7e/VaSFyWsz3EXjGlaxEUw2J4FIrYC3CUhaqcEh2JPFkQbXmYKRdk8gGckT5Hds6mayGYm+DW0BIehy3f1kphzsLgHynpmjmfaJud2+kGbfbvT98ONpmOBYtZdeHRo8yDEwyLe4gonm7p9jE34zw73cAjF5XC2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7XvvoYtczd3wCcNvyHVjlYmdeqsfygsQqs3FFBwWScI=;
 b=lZsIr7ALJhX4Cb9L4i4vjhxstAhivtaraZ5sp5brhDW99798QAzGNXAqis/WfrR3u8HliBAKz7jGAjmUavB64KtlHNOufKwQ54kZkzCJubl42hltAp0ztmg4V+wwfQy3fVuTQ3InHGsyiz93ZVY3EehcrzVQCQnXhG66byu+Auk=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB4048.eurprd05.prod.outlook.com (52.134.18.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Wed, 21 Aug 2019 13:15:54 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::f59f:a307:9c53:63b9]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::f59f:a307:9c53:63b9%6]) with mapi id 15.20.2178.018; Wed, 21 Aug 2019
 13:15:54 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: "shawnguo@kernel.org" <shawnguo@kernel.org>
Subject: Re: [PATCH v4 11/21] ARM: dts: imx6qdl-apalis: Add sleep state to can
 interfaces
Thread-Topic: [PATCH v4 11/21] ARM: dts: imx6qdl-apalis: Add sleep state to
 can interfaces
Thread-Index: AQHVURk8tkL06lEcYEKQgOqHfUf7lKcCYBeAgANC1IA=
Date: Wed, 21 Aug 2019 13:15:53 +0000
Message-ID: <4c318f310babcf655be8db79abcfce547daea284.camel@toradex.com>
References: <20190812142105.1995-1-philippe.schenker@toradex.com>
 <20190812142105.1995-12-philippe.schenker@toradex.com>
 <20190819112754.GU5999@X250>
In-Reply-To: <20190819112754.GU5999@X250>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
x-originating-ip: [46.140.72.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d32ebc35-d871-47ce-8129-08d72639b22f
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:VI1PR0502MB4048; 
x-ms-traffictypediagnostic: VI1PR0502MB4048:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0502MB4048BF548A2D00EABE5B4504F4AA0@VI1PR0502MB4048.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2043;
x-forefront-prvs: 0136C1DDA4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(346002)(396003)(39850400004)(136003)(366004)(199004)(189003)(6116002)(7416002)(229853002)(6436002)(2616005)(476003)(5640700003)(76116006)(66476007)(66446008)(91956017)(64756008)(66946007)(14454004)(2906002)(316002)(6246003)(486006)(4326008)(66556008)(2351001)(11346002)(118296001)(44832011)(6506007)(25786009)(7736002)(6486002)(102836004)(36756003)(54906003)(478600001)(3846002)(186003)(256004)(5660300002)(2501003)(14444005)(76176011)(8676002)(81166006)(6916009)(305945005)(8936002)(1730700003)(53936002)(446003)(86362001)(6512007)(99286004)(71200400001)(26005)(81156014)(66066001)(71190400001)(32563001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB4048;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: sKa/N/Q97pty9rchz4rfUYKsL6u6vvnD0OMcWf+wd+Wab+oVDu0AsorM3zppzCKKccNkSvz9c0ct1fT9+M8WEWU5YqPkGv9oE/AsVVEw4z1/aSBjnHJQfN2ILbJ8U/ZT14sxKmGChyrX471Q36ArSZMvMIx8C8iMV+/9x7c6aQQeQ/qfXvydocg6VcNUFWMkpha6EzuFWnkFORz7GgYxzi9uuA5jgfBhxWuii2IxMDz+MAi9L0Ukz/d4nGi4+5DZJc1Cu2GL1ZWH0N+EQpH+32H+MXL/oV0j0Fg5XRRR2kgR0sx0GovMbkRPsmRKyoEk3wIYV9InUwCwfCSrJqzCCXIU9WURTpxo/PA2lokJ54AdRBfIwYLLZJcPG3NsAjoKKu08Qwphu7VXtP5MGMLTM7NxnTXRfXvdBYMqqTccyeQ=
Content-ID: <59B0EF509A0A674089D3E25AC9E6EBF7@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d32ebc35-d871-47ce-8129-08d72639b22f
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Aug 2019 13:15:53.8754 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IoKNDGqgZiVuEBQ4TYCJJRBiC2cV+a3m7l6cvom93mOY2W9/o7F1pwzgS0lboJJX8P8LqIemx+U5XM89OhonCzrgHc7GtAGIB9Wa1xLYta0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB4048
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_061559_220762_76E0E2E3 
X-CRM114-Status: GOOD (  19.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.111 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "michal.vokac@ysoft.com" <michal.vokac@ysoft.com>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stefan@agner.ch" <stefan@agner.ch>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2019-08-19 at 13:27 +0200, Shawn Guo wrote:
> On Mon, Aug 12, 2019 at 02:21:31PM +0000, Philippe Schenker wrote:
> > This patch prepares the devicetree for the new Ixora V1.2 where we
> > are
> > able to turn off the supply of the can transceiver. This implies to
> > use
> > a sleep state on transmission pins in order to prevent backfeeding.
> > 
> > Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
> > Acked-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> > 
> > ---
> > 
> > Changes in v4:
> > - Add Marcel Ziswiler's Ack
> > 
> > Changes in v3: None
> > Changes in v2:
> > - Changed commit title to '...imx6qdl-apalis:...'
> > 
> >  arch/arm/boot/dts/imx6qdl-apalis.dtsi | 27 +++++++++++++++++++++---
> > ---
> >  1 file changed, 21 insertions(+), 6 deletions(-)
> > 
> > diff --git a/arch/arm/boot/dts/imx6qdl-apalis.dtsi
> > b/arch/arm/boot/dts/imx6qdl-apalis.dtsi
> > index 7c4ad541c3f5..59ed2e4a1fd1 100644
> > --- a/arch/arm/boot/dts/imx6qdl-apalis.dtsi
> > +++ b/arch/arm/boot/dts/imx6qdl-apalis.dtsi
> > @@ -148,14 +148,16 @@
> >  };
> >  
> >  &can1 {
> > -	pinctrl-names = "default";
> > -	pinctrl-0 = <&pinctrl_flexcan1>;
> 
> This line doesn't need to be changed.

You're right, but by adding pinctrl_flexcan1_sleep here, I'd like to
emphasize between "default" and "sleep" and change that.

Since it's only used in this file I don't see any problems.

Philippe
> 
> > +	pinctrl-names = "default", "sleep";
> > +	pinctrl-0 = <&pinctrl_flexcan1_default>;
> > +	pinctrl-1 = <&pinctrl_flexcan1_sleep>;
> >  	status = "disabled";
> >  };
> >  
> >  &can2 {
> > -	pinctrl-names = "default";
> > -	pinctrl-0 = <&pinctrl_flexcan2>;
> > +	pinctrl-names = "default", "sleep";
> > +	pinctrl-0 = <&pinctrl_flexcan2_default>;
> > +	pinctrl-1 = <&pinctrl_flexcan2_sleep>;
> >  	status = "disabled";
> >  };
> >  
> > @@ -599,19 +601,32 @@
> >  		>;
> >  	};
> >  
> > -	pinctrl_flexcan1: flexcan1grp {
> 
> Ditto.  I take them as unnecessary changes.
> 
> Shawn
> 
> > +	pinctrl_flexcan1_default: flexcan1defgrp {
> >  		fsl,pins = <
> >  			MX6QDL_PAD_GPIO_7__FLEXCAN1_TX 0x1b0b0
> >  			MX6QDL_PAD_GPIO_8__FLEXCAN1_RX 0x1b0b0
> >  		>;
> >  	};
> >  
> > -	pinctrl_flexcan2: flexcan2grp {
> > +	pinctrl_flexcan1_sleep: flexcan1slpgrp {
> > +		fsl,pins = <
> > +			MX6QDL_PAD_GPIO_7__GPIO1_IO07 0x0
> > +			MX6QDL_PAD_GPIO_8__GPIO1_IO08 0x0
> > +		>;
> > +	};
> > +
> > +	pinctrl_flexcan2_default: flexcan2defgrp {
> >  		fsl,pins = <
> >  			MX6QDL_PAD_KEY_COL4__FLEXCAN2_TX 0x1b0b0
> >  			MX6QDL_PAD_KEY_ROW4__FLEXCAN2_RX 0x1b0b0
> >  		>;
> >  	};
> > +	pinctrl_flexcan2_sleep: flexcan2slpgrp {
> > +		fsl,pins = <
> > +			MX6QDL_PAD_KEY_COL4__GPIO4_IO14 0x0
> > +			MX6QDL_PAD_KEY_ROW4__GPIO4_IO15 0x0
> > +		>;
> > +	};
> >  
> >  	pinctrl_gpio_bl_on: gpioblon {
> >  		fsl,pins = <
> > -- 
> > 2.22.0
> > 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
