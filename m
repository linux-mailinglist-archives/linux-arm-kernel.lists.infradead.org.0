Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFDF05F431
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 10:00:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cKjhGGYHQ4hkMV6/0EeJCfbhaIp4R58OKoXdmJRyWFI=; b=Uge9+5q1WwaFlu
	Yg/P7gT/bPTcoI8QQrF1fa6q04paD/eiYpDIz2G/6gzt9d0GTIeCsxIUSjMK77EPpr9k43RGIBndk
	I87y8l2/1fcbuautlo9hGgEAarvK4wpe2Dmwy2Es5TvMdkN5L5l7I6b0HOuzob358Pu+VxoB+Jz/W
	96DB996itaXQFHE4+OmudGa9W0x1vkEkFiwggRdnavWocg7pdUWxnzKCc6RtBlGcjyK5l/C0KsV9F
	BzeJuZpLa2vOHwOqzjsq8Y1MRlb+e1ioPRAjsyiTfaN3qxMKB4VsjAg81uJ55eeJ8CgUE/W5ekGjq
	mM5pvR3Du4bLWdsOX8Tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiwfd-0003Xz-Oy; Thu, 04 Jul 2019 08:00:46 +0000
Received: from mail-eopbgr00066.outbound.protection.outlook.com ([40.107.0.66]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiwfO-0003XQ-9y
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 08:00:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0Os2M1u4hQFlUUZir5WG6cu5oF/YNz5e4IzKf5ru3hA=;
 b=XV/qNoVv0eEDPHrJ7os5NpML4t7YVkZz1DfCFCrOOEj6Cdh+i31ww8sV4yV2/bbiyo7vTC7pN4e3VClSjDJYjObLoxHr8ML8/Bs7r/kk2GTtMKzeMkSAFz5LV+r3bhHstTlDzpP43aSKlRDhZdbluJrONRUOMNf2PZ/3N00rpJ8=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3738.eurprd04.prod.outlook.com (52.134.70.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.20; Thu, 4 Jul 2019 08:00:25 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3945:fcda:5bdd:8191]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3945:fcda:5bdd:8191%4]) with mapi id 15.20.2052.010; Thu, 4 Jul 2019
 08:00:25 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Leonard Crestez <leonard.crestez@nxp.com>, "viresh.kumar@linaro.org"
 <viresh.kumar@linaro.org>
Subject: RE: [PATCH 2/2] arm64: dts: imx8mm: Assign highest opp as suspend opp
Thread-Topic: [PATCH 2/2] arm64: dts: imx8mm: Assign highest opp as suspend opp
Thread-Index: AQHVMjD62bccyXxndUyDszIpSDkBnaa6F2SA
Date: Thu, 4 Jul 2019 08:00:24 +0000
Message-ID: <DB3PR0402MB39165D27F23501EE358DE607F5FA0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20190704061403.8249-1-Anson.Huang@nxp.com>
 <20190704061403.8249-2-Anson.Huang@nxp.com>
 <DB7PR04MB50519C02D90675070F21501DEEFA0@DB7PR04MB5051.eurprd04.prod.outlook.com>
In-Reply-To: <DB7PR04MB50519C02D90675070F21501DEEFA0@DB7PR04MB5051.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f97e96a1-60ef-4b23-f80b-08d70055abce
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3738; 
x-ms-traffictypediagnostic: DB3PR0402MB3738:
x-microsoft-antispam-prvs: <DB3PR0402MB37385D5D32BA1619C0B548E9F5FA0@DB3PR0402MB3738.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0088C92887
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(396003)(39860400002)(346002)(136003)(366004)(199004)(189003)(8676002)(99286004)(229853002)(102836004)(66066001)(76176011)(7696005)(53546011)(25786009)(54906003)(6506007)(110136005)(3846002)(6116002)(33656002)(14454004)(7416002)(7736002)(305945005)(186003)(4326008)(8936002)(316002)(15650500001)(2906002)(81166006)(81156014)(478600001)(74316002)(26005)(68736007)(2501003)(71200400001)(71190400001)(53936002)(6246003)(66556008)(66946007)(76116006)(66446008)(66476007)(64756008)(73956011)(5660300002)(55016002)(486006)(44832011)(86362001)(52536014)(9686003)(6436002)(256004)(14444005)(446003)(11346002)(476003)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3738;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: sSACyW0V1pdegfYmDUfMLyW7K29iXC8f2vzGlbt4SxRekcCRm34M++/kyxkisjUtYV3nSkV2cTkXHDDiYoWSBzTxdG9rCyLJACd/2aa66quUtNbaqDZ+VyBomXf5/eq+U7SEvYlxBhW9s5T0D6svscgCdYZY+jlUujDAIcBvLjw3AC2E12Av8Xc7cIFtzocUFmkrNJIGYXt1MSd+K3v/4B3Fq1gBplOET9ClPaPxCP1rsNLjbSHY+sLRFdSraqptJgjTtnXIJNKHH9qgr2Z5AyiSpn2Vp0+YqsJjxcSlnLZhalspzcRwZRuwZvr+XhE6TrseeoG+t3VoGlC6Ub0M8/K8PtIJQXHZMG3SLMvYxKApyqCJ2CkGwi8fls9o1lrF/+J35IbFcomVPGds/MJijDYENvTG7Lm6c7w9TfcS6Bs=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f97e96a1-60ef-4b23-f80b-08d70055abce
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jul 2019 08:00:24.9793 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3738
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_010030_350769_2E2B985C 
X-CRM114-Status: GOOD (  17.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.66 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

> On 7/4/2019 9:23 AM, Anson.Huang@nxp.com wrote:
> > From: Anson Huang <Anson.Huang@nxp.com>
> >
> > Assign highest OPP as suspend OPP to reduce suspend/resume latency on
> > i.MX8MM.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> >   arch/arm64/boot/dts/freescale/imx8mm.dtsi | 1 +
> >   1 file changed, 1 insertion(+)
> >
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > index b11fc5e..3a62407 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > @@ -136,6 +136,7 @@
> >   			opp-microvolt = <1000000>;
> >   			opp-supported-hw = <0x8>, <0x3>;
> >   			clock-latency-ns = <150000>;
> > +			opp-suspend;
> >   		};
> >   	};
> 
> What if the highest OPP is unavailable due to speed grading? Ideally we
> should find a way to suspend at the highest *supported* OPP.
> 
> Maybe the opp-suspend marking could be assigned from imx-cpufreq-dt
> driver code?

Yes, this is also my concern, the current OPP driver does NOT handle it well, and
I was thinking to assigne it from imx-cpufreq-dt driver, 1 option is to runtime add
"suspend-opp" property into DT OPP node after parsing the speed grading fuse and
OPP table, but I do NOT like that very much, as we need to manually create a property,
the other option is to change cpu freq policy inside imx-cpufreq-dt driver in suspend/resume
callback? Which one do you prefer?

Thanks,
Anson

> 
> --
> Regards,
> Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
