Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E675761B6B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 09:54:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xC5ZeJXfCmTfMFfoFXh2qKbua1AWhikQHbwuI6MgAqA=; b=BnD47P8dtwzmIQ
	Mvy9EsBKmb7ESOeL11PGrMlgZLfhPmkFGXy6WbhESDItfs0V1D05UhUsk4jmdH+ps03VXE0HX3t3e
	psCajsB5faBkusdz8KrSBgjUhDXN8cNnyqZ9Zqga0/dYLk6z28AvR00+GTh5voO2dgmOUPuLm0Lbv
	Jtcl84rxNFszT8Qp1py4k3uc30Q3hck6ZxKf5UQZaHG7ZW5bRjuy9pf8VTOafeEA89y5DPuyQk7uy
	f9Kzl8ZqyIEuIbCR2PwPcIoTGuvLdYE1UwgDJuG4fg7bUeyyeRVK4Y056suj5XcXYnbcURrDf0RYc
	WGg+pgZMP6Bw9ug8dXgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkOTk-0004eI-0P; Mon, 08 Jul 2019 07:54:28 +0000
Received: from mail-eopbgr40074.outbound.protection.outlook.com ([40.107.4.74]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkOTS-0004aE-Az
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 07:54:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7gFWwenjxdnLDMne55GinxjL08rhf6Z/YP812R8SfLI=;
 b=FJLzdS8xd9ztNOW31oNOWGr35QCdXX1wZuhRY+xAdU8Ch8Fdv7G1US+ElqiDezboF94DDgw7Cdds84C+7Woo65fNIsO65DqUAv5CuN0n+nyV35AdVVkdDDkJdTN7ZoIlf924Wzzq5SM6HZmZyXFZtVa1Qlu/xWtgr/M3u2sU07I=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3852.eurprd04.prod.outlook.com (52.134.71.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.15; Mon, 8 Jul 2019 07:54:03 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3945:fcda:5bdd:8191]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3945:fcda:5bdd:8191%4]) with mapi id 15.20.2052.020; Mon, 8 Jul 2019
 07:54:03 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Leonard Crestez <leonard.crestez@nxp.com>, "viresh.kumar@linaro.org"
 <viresh.kumar@linaro.org>
Subject: RE: [PATCH 2/2] arm64: dts: imx8mm: Assign highest opp as suspend opp
Thread-Topic: [PATCH 2/2] arm64: dts: imx8mm: Assign highest opp as suspend opp
Thread-Index: AQHVMjD62bccyXxndUyDszIpSDkBnaa6F2SAgAZH0bA=
Date: Mon, 8 Jul 2019 07:54:03 +0000
Message-ID: <DB3PR0402MB391651E56C147B1BD13727C5F5F60@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20190704061403.8249-1-Anson.Huang@nxp.com>
 <20190704061403.8249-2-Anson.Huang@nxp.com>
 <DB7PR04MB50519C02D90675070F21501DEEFA0@DB7PR04MB5051.eurprd04.prod.outlook.com>
 <DB3PR0402MB39165D27F23501EE358DE607F5FA0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
In-Reply-To: <DB3PR0402MB39165D27F23501EE358DE607F5FA0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1513bb46-1363-4059-9c0d-08d70379722a
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3852; 
x-ms-traffictypediagnostic: DB3PR0402MB3852:
x-microsoft-antispam-prvs: <DB3PR0402MB3852A97E40F1103FFD4DC43BF5F60@DB3PR0402MB3852.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 00922518D8
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(39860400002)(346002)(376002)(366004)(189003)(199004)(74316002)(2501003)(53936002)(9686003)(110136005)(99286004)(54906003)(6436002)(229853002)(55016002)(316002)(44832011)(11346002)(476003)(486006)(14444005)(256004)(6506007)(7696005)(6246003)(53546011)(446003)(3846002)(33656002)(14454004)(6116002)(76176011)(26005)(76116006)(186003)(102836004)(5660300002)(4326008)(15650500001)(66556008)(66946007)(73956011)(8676002)(86362001)(66446008)(64756008)(66476007)(2906002)(81166006)(81156014)(66066001)(7736002)(25786009)(71190400001)(71200400001)(68736007)(8936002)(478600001)(7416002)(305945005)(52536014)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3852;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 71gxXUF9Ra8hl72EAiw3cjJonP9VnouPbYaqBWikAbHovdaGPC0KT0V1IzNEOA1YzoMtnbtNjR97Ta+3Yy3axTXkaOb7KhIta7nS057uQVdbVrUpTVZdgDGFvoKrNZrn6eGF2CtC8cAOazLMd/djoeGa83IN1bAHn0iVdybpliaADy/utyfsT+6BQJHiykl7cp2eg0aRMyFje1/jIyDsGv0kV2vDL/+SWMrEBu2C6xQl44yRLamLsuUpeaQwFaNQJ4D6wIyPZk849510KpDI32XqjZTaQnPpuQ3H6y2NoXSLiYAMqow7MUP6ZqWJcsGfFBCvzTCitbw/Iq/cIjNE9L5FXRfGzEzEK8P6nGw7MULDTD3yriUtPpV2LO3t1NJ8Nnvq5yMFJ9k875wr/DgnRowYFSOe5rJwLS6EejzyHfc=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1513bb46-1363-4059-9c0d-08d70379722a
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jul 2019 07:54:03.6096 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3852
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_005410_721008_6002237B 
X-CRM114-Status: GOOD (  21.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.74 listed in list.dnswl.org]
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
 Jacky Bai <ping.bai@nxp.com>, "ccaione@baylibre.com" <ccaione@baylibre.com>,
 "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "angus@akkea.ca" <angus@akkea.ca>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, "agx@sigxcpu.org" <agx@sigxcpu.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Leonard

> > On 7/4/2019 9:23 AM, Anson.Huang@nxp.com wrote:
> > > From: Anson Huang <Anson.Huang@nxp.com>
> > >
> > > Assign highest OPP as suspend OPP to reduce suspend/resume latency
> > > on i.MX8MM.
> > >
> > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > > ---
> > >   arch/arm64/boot/dts/freescale/imx8mm.dtsi | 1 +
> > >   1 file changed, 1 insertion(+)
> > >
> > > diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > > b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > > index b11fc5e..3a62407 100644
> > > --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > > +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > > @@ -136,6 +136,7 @@
> > >   			opp-microvolt = <1000000>;
> > >   			opp-supported-hw = <0x8>, <0x3>;
> > >   			clock-latency-ns = <150000>;
> > > +			opp-suspend;
> > >   		};
> > >   	};
> >
> > What if the highest OPP is unavailable due to speed grading? Ideally
> > we should find a way to suspend at the highest *supported* OPP.
> >
> > Maybe the opp-suspend marking could be assigned from imx-cpufreq-dt
> > driver code?
> 
> Yes, this is also my concern, the current OPP driver does NOT handle it well,
> and I was thinking to assigne it from imx-cpufreq-dt driver, 1 option is to
> runtime add "suspend-opp" property into DT OPP node after parsing the
> speed grading fuse and OPP table, but I do NOT like that very much, as we
> need to manually create a property, the other option is to change cpu freq
> policy inside imx-cpufreq-dt driver in suspend/resume callback? Which one
> do you prefer?

After looking through the cpufreq driver, I think we can use below late init function
to assign the suspend_freq, then no need to add "opp-suspend " in DT, and the freq
get from cpufreq_quick_get_max() is already the max supported freq considering the
speed grading and market segment fuse settings, please ignore these 2 patches, I will
send out a imx-cpufreq-dt.c patch with below change to support all SoCs with imx-cpufreq-dt
driver.

+static int __init imx_cpufreq_dt_setup_suspend_opp(void)
+{
+       struct cpufreq_policy *policy = cpufreq_cpu_get(0);
+
+       policy->suspend_freq = cpufreq_quick_get_max(0);
+
+       return 0;
+}
+late_initcall(imx_cpufreq_dt_setup_suspend_opp);

Anson.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
