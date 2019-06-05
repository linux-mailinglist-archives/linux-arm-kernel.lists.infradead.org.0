Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C504E356A6
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 08:09:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M278X0JchqnbUSedrO50FPvQo7n24XHijossawjPuB4=; b=SRJMSAKcevC/Mh
	SPa0Jhq3OcycHKrKPpQFqLH0/9JQeRqhLcrh4I3Jinl7kgMX+3YEQEZuyzrg+tH5Gs3G7CXtS08x4
	Dhpm0su4NK09a8CfWJHNCK34ZxZTnelLAsqw9zUZuKWXntfHqrB0gjn2D6iPjbJ0dj3WhHbznGeB/
	4FSQJ3qMwDB7sQXEv5xqk23ag51liFc3XNokGeDTRmmxBtzS18MtdttpHlvNz6c88xpxumLKhneHe
	g3J+FVclibmIF0N+6tYopWkJK9KLQVw6wzPxmhZmli9F+ZITmyofZ/maGjJdJYNb9Kay/dljRfEEh
	/b6Bqp1AwWEKDmdKxE2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYP70-0002ki-DQ; Wed, 05 Jun 2019 06:09:26 +0000
Received: from mail-eopbgr30052.outbound.protection.outlook.com ([40.107.3.52]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYP6p-0002jY-ON
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 06:09:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+Db72wNwLNCjACW4OkEMkrk1VZIqZQEtqNd6Bqke5ps=;
 b=RFOO1NGiOH0EpWEsHbCOf9B23Afnd4JbOWKdnybs5PZGrZ2enrEeP+GoP69PlsSIJ50TVhOJlKJkV0QL187xpAEr05r3qMbulzUFopOMO8+m/Qx7uccIDLc7XyCB1veVwpVdtXt5Nmpl/Wz5BhpwuENj+LQWQemvOh1E028UmsQ=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3866.eurprd04.prod.outlook.com (52.134.71.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.12; Wed, 5 Jun 2019 06:09:12 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec%5]) with mapi id 15.20.1943.023; Wed, 5 Jun 2019
 06:09:12 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH RESEND V4 2/3] arm64: dts: imx8qxp: Move watchdog node
 into scu node
Thread-Topic: [PATCH RESEND V4 2/3] arm64: dts: imx8qxp: Move watchdog node
 into scu node
Thread-Index: AQHVCKrxek0Xatu7SEyE08ZoyZ0h7KaLV72wgAFewQCAAAG+sA==
Date: Wed, 5 Jun 2019 06:09:12 +0000
Message-ID: <DB3PR0402MB39161D679A11B05ADCA8A28BF5160@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1557655528-12816-1-git-send-email-Anson.Huang@nxp.com>
 <1557655528-12816-2-git-send-email-Anson.Huang@nxp.com>
 <DB3PR0402MB39162F3811484D90546B4CC2F5150@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <20190605060000.GA29853@dragon>
In-Reply-To: <20190605060000.GA29853@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 609bb4ae-5001-4178-9a2b-08d6e97c5485
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3866; 
x-ms-traffictypediagnostic: DB3PR0402MB3866:
x-microsoft-antispam-prvs: <DB3PR0402MB3866EA2E70096753F939FC90F5160@DB3PR0402MB3866.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:873;
x-forefront-prvs: 00594E8DBA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(366004)(136003)(396003)(346002)(376002)(13464003)(199004)(189003)(11346002)(2906002)(53936002)(316002)(478600001)(52536014)(99286004)(33656002)(14454004)(5660300002)(55016002)(6246003)(74316002)(7736002)(476003)(6436002)(229853002)(9686003)(7416002)(86362001)(486006)(54906003)(68736007)(73956011)(76176011)(66946007)(81166006)(81156014)(66446008)(8936002)(66066001)(8676002)(64756008)(71200400001)(71190400001)(26005)(186003)(305945005)(256004)(66476007)(66556008)(76116006)(44832011)(4326008)(25786009)(102836004)(6116002)(6506007)(6916009)(53546011)(3846002)(446003)(7696005)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3866;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: iBT9eEv4XovsbVCYl6CRe4rURH3wdXD6G/SUcDBmTreCe7VRvctcVtxfxxvNbanGC+uvEMaRsJci2OrJf7JiBwKpyhNz9g1Fn5mwOgmJHY6SR0sjuwO34vVHWlNmHzMi/IAucl61+MeKykNf+GT36ew7ImoBLQOw3p9iSjjWFZVE9bKcY/80sfcSsXhJ4BSNlTyQ4CiqCA/vKokBIL9rHMVKxx6dRbWp5mQhRYxESRwJ8qujznD4bRJyzyZuU4oocCBc6ftrw14GuRUh407hfKfNFwdlrWaNtT/9v9EOhNcl+vcy+Q2rKtaC6bCoq7I7M5mhVOrwL/yPOWTSTbIlAA9y28mZUHCe/o4Hg9XGN3Ir37i5g/FlaM5PEIC44XvZh2t5qbqqrpTKyM5gT6SMID/KN24/vrrubzzHU2w/XpA=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 609bb4ae-5001-4178-9a2b-08d6e97c5485
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jun 2019 06:09:12.0913 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3866
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_230915_878020_F7FF7A18 
X-CRM114-Status: GOOD (  22.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.52 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Aisheng Dong <aisheng.dong@nxp.com>,
 "ulf.hansson@linaro.org" <ulf.hansson@linaro.org>,
 "linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, Peng Fan <peng.fan@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "wim@linux-watchdog.org" <wim@linux-watchdog.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux@roeck-us.net" <linux@roeck-us.net>, dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Shawn

> -----Original Message-----
> From: Shawn Guo <shawnguo@kernel.org>
> Sent: Wednesday, June 5, 2019 2:00 PM
> To: Anson Huang <anson.huang@nxp.com>
> Cc: robh+dt@kernel.org; mark.rutland@arm.com; wim@linux-watchdog.org;
> linux@roeck-us.net; s.hauer@pengutronix.de; kernel@pengutronix.de;
> festevam@gmail.com; Aisheng Dong <aisheng.dong@nxp.com>;
> ulf.hansson@linaro.org; Daniel Baluta <daniel.baluta@nxp.com>; Peng Fan
> <peng.fan@nxp.com>; devicetree@vger.kernel.org; linux-
> kernel@vger.kernel.org; linux-watchdog@vger.kernel.org; linux-arm-
> kernel@lists.infradead.org; dl-linux-imx <linux-imx@nxp.com>
> Subject: Re: [PATCH RESEND V4 2/3] arm64: dts: imx8qxp: Move watchdog
> node into scu node
> 
> On Tue, Jun 04, 2019 at 09:06:28AM +0000, Anson Huang wrote:
> > Hi, Shawn
> > 	The driver and binding doc are already reviewed and waiting for DT
> patch, will you help review this DT patch?
> 
> I'm fine with it.  Should I just pick this patch up, or is there any dependency
> we need to handle?

No dependency, it just makes more sense to move the node into SCU node as it is NOW depending on SCU
driver. Once you pick up this patch (and maybe the dt-binding patch as well?), I will notify the watchdog
maintainer to pick up the watchdog patch in this series.

Thanks,
Anson

> 
> Shawn
> 
> >
> > Thanks,
> > Anson
> >
> > > -----Original Message-----
> > > From: Anson Huang
> > > Sent: Sunday, May 12, 2019 6:11 PM
> > > To: robh+dt@kernel.org; mark.rutland@arm.com;
> > > wim@linux-watchdog.org; linux@roeck-us.net; shawnguo@kernel.org;
> > > s.hauer@pengutronix.de; kernel@pengutronix.de; festevam@gmail.com;
> > > Aisheng Dong <aisheng.dong@nxp.com>; ulf.hansson@linaro.org; Daniel
> > > Baluta <daniel.baluta@nxp.com>; Peng Fan <peng.fan@nxp.com>;
> > > devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; linux-
> > > watchdog@vger.kernel.org; linux-arm-kernel@lists.infradead.org
> > > Cc: dl-linux-imx <linux-imx@nxp.com>
> > > Subject: [PATCH RESEND V4 2/3] arm64: dts: imx8qxp: Move watchdog
> > > node into scu node
> > >
> > > i.MX system controller watchdog has pretimeout function which
> > > depends on i.MX SCU driver, so it should be a subnode of SCU.
> > >
> > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > > ---
> > > No change, just resend patch with correct encoding.
> > > ---
> > >  arch/arm64/boot/dts/freescale/imx8qxp.dtsi | 10 +++++-----
> > >  1 file changed, 5 insertions(+), 5 deletions(-)
> > >
> > > diff --git a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> > > b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> > > index 0683ee2..b17c22e 100644
> > > --- a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> > > +++ b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> > > @@ -149,6 +149,11 @@
> > >  		rtc: rtc {
> > >  			compatible = "fsl,imx8qxp-sc-rtc";
> > >  		};
> > > +
> > > +		watchdog {
> > > +			compatible = "fsl,imx8qxp-sc-wdt", "fsl,imx-sc-wdt";
> > > +			timeout-sec = <60>;
> > > +		};
> > >  	};
> > >
> > >  	timer {
> > > @@ -517,9 +522,4 @@
> > >  			power-domains = <&pd IMX_SC_R_GPIO_7>;
> > >  		};
> > >  	};
> > > -
> > > -	watchdog {
> > > -		compatible = "fsl,imx8qxp-sc-wdt", "fsl,imx-sc-wdt";
> > > -		timeout-sec = <60>;
> > > -	};
> > >  };
> > > --
> > > 2.7.4
> >
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
