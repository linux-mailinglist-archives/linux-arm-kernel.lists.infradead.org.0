Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28EC11AEC87
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Apr 2020 14:40:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OUHD9fFClTYWpinzaaWe58Y31bhw/BAHkbFZ5HaA/zs=; b=tbbCERsRO9nDBl
	DWUZtPS3xcDtW8Z3vAzhzy7Udwa0hkAKyNKaZrIij7OIkQcHCwS1VVxlyDzGLLJBCHU83c+R8rzdk
	67YSTq+zC+EjjleipdxOA1HfdkRjUzXSw0aN89UCL5SXgv2ybcC/lFUHm8mqSlCLvh3sfAP6amD7/
	JCwnjZ1oe9//XkLkBjqmgN9LcpzhCBsnetL73sRiEc54sZlYtpz5/t4fknCvD223164nFZS2yNESG
	j0+chGRUWm/llCqSdVW+6iyFJl45g+BU04BJTUVHr143oC49VRgStRRILnN4ONVmF4xs5ykzfvJZ6
	O8RfXFmjHcFPQ0bloCkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPmm6-0004Y8-9v; Sat, 18 Apr 2020 12:40:46 +0000
Received: from mail-eopbgr60042.outbound.protection.outlook.com ([40.107.6.42]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPmlP-0001tI-2V
 for linux-arm-kernel@lists.infradead.org; Sat, 18 Apr 2020 12:40:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XWcItMsYOPC9QDwCwe0RTcNBkqVT6W69Af7dv+FJW0wdnqqOt6Y/HSn9q6YPy8nkTGaLS23/PHtAZFILmRF5MLR8ITwSettHBQYcN1TWI6ftE5mkOftGlS/MIOMwQ/eBJKB/7r4jP3iYVLQEKsGI/k1KvlkVO0kcmzSReaSDfHPcurXA+iCYXo44/8YpjCKdVtkiEcnFcbs0Ih3vVQerCmtAnz+O768rvPq5vKTgTe5FZlX15EaaOmXDab9Pc111YfbsMiRIjDrlnMzv7r3w20yVNNy9E3whqawLsLNaOqEf0VuSaP1rgu55gPGeZOaRLMElAkEzJbSSBq6nWLEJ8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tgzj0EPdQ6+1VipzqgvCpBatmaeafTHiCELdzqBsxl4=;
 b=fJqlWUw3Nq2iFRJ+9sa75Eh7tOAOzaat05fFjV803fb/S5CAXlVIuCiR27DtOKeEBacsIJ8U1AUQLmweCDmZuNPjZZTpa8rhHltTDH2Wst9ddY3a03e9iUOHGSZcZUsF79UEB1RO84H52ww2ooMOyOrAq+IRXkb1RXHfqXEXUm4bXDR+oha/XJ5D1OQlEHY/P3MquNHZtwoN7LsSsWbaScAjrJp0DXJRjU2OHagrsGelvZSje3rPkuV3w8goIbHaGvv5rrEHaM3eErOZZOoiA7JLc8gUvlldRlGmi2Orl0XhwBGOHSTgPlZrhOPn68qWuQQbVkN4GBwH1GxtJoy38g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tgzj0EPdQ6+1VipzqgvCpBatmaeafTHiCELdzqBsxl4=;
 b=cdfq9APSrT5B3VhyjplZyV9LZDngqI3R2KHOiSUQobPumBAgVRulCIZV1c9f4B3l7qNqXtdVoycTpncwGDPwr/vQS47+ef83QsOQu4dQCaSaL8nFrsIS0GBWmDwSTBjclConm5HCL+BMrtT+I+QGaQENAo5F5RmdRjFoakvzNaQ=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (2603:10a6:8:10::18)
 by DB3PR0402MB3643.eurprd04.prod.outlook.com (2603:10a6:8:5::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.25; Sat, 18 Apr
 2020 12:39:58 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3143:c46:62e4:8a8b]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3143:c46:62e4:8a8b%7]) with mapi id 15.20.2900.028; Sat, 18 Apr 2020
 12:39:58 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Aisheng Dong <aisheng.dong@nxp.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>, Leonard
 Crestez <leonard.crestez@nxp.com>, Daniel Baluta <daniel.baluta@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH 1/2] arm64: dts: imx8qxp-mek: Sort labels alphabetically
Thread-Topic: [PATCH 1/2] arm64: dts: imx8qxp-mek: Sort labels alphabetically
Thread-Index: AQHWFHuqDS+qjcBTvkSC+6fN5KRxoKh+0MaAgAAB9+A=
Date: Sat, 18 Apr 2020 12:39:57 +0000
Message-ID: <DB3PR0402MB3916E212269C5D5BD6E12D21F5D60@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1587101946-19495-1-git-send-email-Anson.Huang@nxp.com>
 <AM6PR04MB496663AED27DFD38E648169C80D60@AM6PR04MB4966.eurprd04.prod.outlook.com>
In-Reply-To: <AM6PR04MB496663AED27DFD38E648169C80D60@AM6PR04MB4966.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [183.192.13.100]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 81e307c4-b874-4691-fb90-08d7e3959aad
x-ms-traffictypediagnostic: DB3PR0402MB3643:|DB3PR0402MB3643:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB364308271DA3850B448215BAF5D60@DB3PR0402MB3643.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0377802854
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB3PR0402MB3916.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(396003)(366004)(136003)(346002)(376002)(39860400002)(8676002)(2906002)(71200400001)(7696005)(81156014)(6506007)(76116006)(33656002)(44832011)(966005)(5660300002)(478600001)(186003)(26005)(52536014)(64756008)(4326008)(66476007)(66946007)(86362001)(9686003)(66556008)(66446008)(55016002)(316002)(110136005)(8936002)(21314003)(921003)(32563001);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6VuWkPveEAGTPGc1xRqXnYySu9mjM8SThMoXzQtjTClAGKKlOJN+XaZBykF7aka6xAh/Ky4soyP0mX6LxlrhEmuGgp5kCnUCJ+vbXDui6DU/LB8MufwLFXxGcNj1sDkmXnHNW9SiX5uhpW47F8d++7KOd9rfuZ4K1Bptf2ykk7zzwLCWX1Tje2lFzauELYe153j5oUtPJ2OS5U3Jzv11Q3sT+EqAROrkKh9XjDTLeopfQ8Xgk9rGeSr1KK17VwedKshUUx0YPv8fM0EVUuV7PeJHMPkS7qMyyiJ9N+8TwXUTv47OTLDvrtKgjzfc73Slrh2Jr3Pvy9YwUe2zrtdHGtHdGgh/In3Xa07uPxnJcYJwNd36U4+5I1ZJyU72Zs4DGaYKnFp9uKD+9kErItrOjoJxQnEgNsfEZQLbAXtJoOKeB4FRTZxpnRnUkucRVgQOzwitYwTXtpBbuZMNcNi4e+sJxtbDAFqKcuSXJBVZ1/LxJjEAY97MLkKHFROX5g3fW31il+7sJUlDC/7ABFEWpyx0o0UIhxRroPkIr6r6E50HOXBSvJn5MTpoJJMQlcCjPVBQ6IQi0OpjsEeR0J/fnF28bU0250BvM2IR9cojARU=
x-ms-exchange-antispam-messagedata: YdE/4hEjySUHbfVNyeostdOTtpLCkuD22UPsucV2nNV7o7+HEOgjiYNn1RurbZAlUwzOAuCJosk1haeO1EAzQfOo6qvPt7gt+B3uxU5oJStTAyThfcD4ZLMR4IGb+M68I1QvQAZ2owyh9d5X26DsLdAX06hiwlkx9Yd2oEzOgZlsAr3sjCGKtQDsWipU4dem2ZFtBt+D/UsY5yjVFYbMXkpJIVR/iYReXWR03hIZCBgemFifqlTLUvI9+97f3ledQTOHkHTrCUnlmGUgyefrk4YKCGkTLUN2C4BHe4JHKslBRuF+bCJo4iYP9kGuEfP2IM014atnxO6TtLn9Rghs7Hpk5zkRyFJOEkpjNQw30/4OVqb1iJd4Hvx90zQX/zpuLtBEXubKx0zjykppDociMFbry44DUVvZIgCNR/eexe+QB6BMfou/JxdnzvyZQ6vIgvlKqAA9N6jT6DN/J1F2w3FZzAri45FpkgGA2tMr09D/d8VCydRNFR4mdYfBd/lQ7xO9Kffd6ZAwz4sClGqm5ukkBhAkh0VEkeARkg3xO9PHSvqttL9FwZKYCUdU4Lx3s+ttaHaKlpQHMyNLeS8DwS2AN1XTqQVvmZKWz1rjo87ZH/GJUdn1UjDC90v7Be0cWBvLHx4QsOp/DdZitOJF/M4NyC+JjcKpTJ3HEyqtOQjirdaY00NV9nz3CF2vEQbtpHkg8nUGlbxxaIIHYvHDx+tn4JrNWRy7D3PiBXfToUvWzq49cnYeyOCj2BWYtmFfX0KYmjvvY2N7oXiMadO1OVx19etyOhK6yn1hwPb7T98=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 81e307c4-b874-4691-fb90-08d7e3959aad
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Apr 2020 12:39:58.0150 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: otHPEVWQDTKW+AHRzaVsE0utMqZ853oGLCpbBOamlFF6QwSgMRPNxVF5ClzzFhDMObnr7LBS0yYNtMr8FMQzbg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3643
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_054003_146272_F4BD07C3 
X-CRM114-Status: GOOD (  17.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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



> Subject: RE: [PATCH 1/2] arm64: dts: imx8qxp-mek: Sort labels alphabetically
> 
> > From: Anson Huang <Anson.Huang@nxp.com>
> > Sent: Friday, April 17, 2020 1:39 PM
> >
> > Sort the labels alphabetically for consistency.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> 
> This patch is meaningless as subsys prefix (e.g. adma_xxx) will be removed
> later and devices nodes all moved into subsys dtsi.
> I've replied this before:
> https://lkml.org/lkml/2020/3/16/244

I knew you replied this before, but do you have an exact day of when subsys dtsi will be implemented?
Many previous patches of my mine to add features to DTS file, I have been asked by Shawn to
add a new patch to help sort the labels, I think this is some maintainers' hobby, so if Shawn thinks no
need this for 8QXP, I can drop this patch.

Anson


> 
> Regards
> Aisheng
> 
> > ---
> >  arch/arm64/boot/dts/freescale/imx8qxp-mek.dts | 60
> > +++++++++++++--------------
> >  1 file changed, 30 insertions(+), 30 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
> > b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
> > index 13460a3..2ed7aba 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
> > +++ b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
> > @@ -30,29 +30,8 @@
> >  	};
> >  };
> >
> > -&adma_lpuart0 {
> > -	pinctrl-names = "default";
> > -	pinctrl-0 = <&pinctrl_lpuart0>;
> > -	status = "okay";
> > -};
> > -
> > -&fec1 {
> > -	pinctrl-names = "default";
> > -	pinctrl-0 = <&pinctrl_fec1>;
> > -	phy-mode = "rgmii-id";
> > -	phy-handle = <&ethphy0>;
> > -	fsl,magic-packet;
> > +&adma_dsp {
> >  	status = "okay";
> > -
> > -	mdio {
> > -		#address-cells = <1>;
> > -		#size-cells = <0>;
> > -
> > -		ethphy0: ethernet-phy@0 {
> > -			compatible = "ethernet-phy-ieee802.3-c22";
> > -			reg = <0>;
> > -		};
> > -	};
> >  };
> >
> >  &adma_i2c1 {
> > @@ -131,6 +110,35 @@
> >  	};
> >  };
> >
> > +&adma_lpuart0 {
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&pinctrl_lpuart0>;
> > +	status = "okay";
> > +};
> > +
> > +&fec1 {
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&pinctrl_fec1>;
> > +	phy-mode = "rgmii-id";
> > +	phy-handle = <&ethphy0>;
> > +	fsl,magic-packet;
> > +	status = "okay";
> > +
> > +	mdio {
> > +		#address-cells = <1>;
> > +		#size-cells = <0>;
> > +
> > +		ethphy0: ethernet-phy@0 {
> > +			compatible = "ethernet-phy-ieee802.3-c22";
> > +			reg = <0>;
> > +		};
> > +	};
> > +};
> > +
> > +&scu_key {
> > +	status = "okay";
> > +};
> > +
> >  &usdhc1 {
> >  	assigned-clocks = <&clk IMX_CONN_SDHC0_CLK>;
> >  	assigned-clock-rates = <200000000>;
> > @@ -229,11 +237,3 @@
> >  		>;
> >  	};
> >  };
> > -
> > -&adma_dsp {
> > -	status = "okay";
> > -};
> > -
> > -&scu_key {
> > -	status = "okay";
> > -};
> > --
> > 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
