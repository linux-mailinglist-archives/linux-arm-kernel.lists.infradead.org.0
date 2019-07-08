Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6121D61BF9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 10:54:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WUp6GkhWTz6Nb/JM8BSrLN8OQKZXRiOK1veBBD2vsRs=; b=MUTA/dIoWQj1Nx
	9kC58gEDPLgLdhXViNGgXfP+mgzHB9w8AW+E+wqg/hAdprXXAnyT82vjP+h5pvFOb1I2gEC/d0hcZ
	h/YnTcATI/eh/exOy+S2IHrbq95eVjzW9T2Nql0BTL5BE7whc4peaJ4qzCAoX3qRj4IZmbANCSxIm
	9f2YySQz9MUEXYIK/cezoP3vnEoLFBWzTL6uwH0hkzz4XDvUoRL+tShJgqk/iAgU2afpq7UZfc6Tq
	mVf2ZGQnFlmUDzvDTnNh0pZpLwn3MHj6Py0j8UxY5c7uumiag8VVzMDCzXOyOCdJFaGTuFkDhcBUC
	F2pMZNOnipA77oEFxVwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkPQ3-0002hA-7O; Mon, 08 Jul 2019 08:54:43 +0000
Received: from mail-eopbgr80052.outbound.protection.outlook.com ([40.107.8.52]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkPPk-0002gY-Sx
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 08:54:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IcNlbZo/PmBMhKNMU2vkni64ggmauEBrCouHRhzqkS8=;
 b=g19Wg0xgTBWjazM9GlyiY6M8P78AQN8D/g2dgpi1b/MfQP8XYVEPHlc3UH0FV1OU2zXUfi+SRXh7ezwUL+ma3fw7oUEHBp8yN3OUFB+wuwQ3+4lMZywitKwOb3q5LFCpum5hNNoDp+3t7CVibXFWawwzryXc7HMT7si2R92wvOg=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3756.eurprd04.prod.outlook.com (52.134.73.29) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.18; Mon, 8 Jul 2019 08:54:19 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3945:fcda:5bdd:8191]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3945:fcda:5bdd:8191%4]) with mapi id 15.20.2052.020; Mon, 8 Jul 2019
 08:54:19 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: RE: [PATCH 2/2] arm64: dts: imx8mm: Assign highest opp as suspend opp
Thread-Topic: [PATCH 2/2] arm64: dts: imx8mm: Assign highest opp as suspend opp
Thread-Index: AQHVMjD62bccyXxndUyDszIpSDkBnabAaO+AgAACe/CAAARwgIAAADZQ
Date: Mon, 8 Jul 2019 08:54:19 +0000
Message-ID: <DB3PR0402MB39164E2F386181255ED37F45F5F60@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20190704061403.8249-1-Anson.Huang@nxp.com>
 <20190704061403.8249-2-Anson.Huang@nxp.com>
 <DB7PR04MB50519C02D90675070F21501DEEFA0@DB7PR04MB5051.eurprd04.prod.outlook.com>
 <20190708082511.py7gnjbqyp7bnhqx@vireshk-i7>
 <DB3PR0402MB391622133CD116FDE26A4F9AF5F60@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <20190708084957.waiwdun327pgvfv4@vireshk-i7>
In-Reply-To: <20190708084957.waiwdun327pgvfv4@vireshk-i7>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9fe22632-f024-41fc-58de-08d70381dd2f
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3756; 
x-ms-traffictypediagnostic: DB3PR0402MB3756:
x-microsoft-antispam-prvs: <DB3PR0402MB375670A7E32EBD3CD424F656F5F60@DB3PR0402MB3756.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 00922518D8
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(39860400002)(376002)(346002)(136003)(396003)(199004)(189003)(102836004)(3846002)(76116006)(66946007)(11346002)(6116002)(73956011)(68736007)(81156014)(26005)(2906002)(71190400001)(81166006)(8676002)(66556008)(66476007)(44832011)(15650500001)(54906003)(64756008)(14454004)(66446008)(446003)(52536014)(71200400001)(186003)(486006)(8936002)(66066001)(476003)(6916009)(7416002)(478600001)(256004)(7696005)(86362001)(316002)(53936002)(14444005)(7736002)(99286004)(74316002)(6436002)(5660300002)(6246003)(55016002)(305945005)(25786009)(9686003)(229853002)(4326008)(33656002)(76176011)(6506007)(53546011)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3756;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: uDpyWP9lwNJsxGDH0PD5HdEXSqM6Qibt+w3utjtHcBnaXJf9s44t6d3JF3bzGm3WbcmQwMnkASD6DYFFT3xyzRJjkr9jBe0vpE5feUF9x5PKOWIfLS3IdwF3+xArZwFtYTTEPTTDAWI5ad7iHRFW1C0QSBVFZktvqwtW/gwBrAdeqfmCoMlu85AxlnGcle3dZf92NIeXYJ6Cwikmi4Jn0RC7k3YT7B1k9C6czgphiK5QR4pWevqZzSd21197GXJIOcuaVWMTndE5PRF5Sc7mtNUHh+q1TvyYukuguZMHFWblrS5ez8Qhyxe09AW84eYJVmOKYkp+xV4Uof1hQInNVGtBvFKFhWN4x0hPZ1uCftkt1xTu0ABlHNiy2XdBu3AV19AjCEaQ4W9tPcliwl1+Y1R5colHm2yE9ELT7OjshXA=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9fe22632-f024-41fc-58de-08d70381dd2f
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jul 2019 08:54:19.1857 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3756
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_015424_974049_A224AE96 
X-CRM114-Status: GOOD (  20.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.52 listed in list.dnswl.org]
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
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "angus@akkea.ca" <angus@akkea.ca>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "agx@sigxcpu.org" <agx@sigxcpu.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Viresh

> On 08-07-19, 08:43, Anson Huang wrote:
> > Hi, Viresh
> >
> > > On 04-07-19, 07:49, Leonard Crestez wrote:
> > > > On 7/4/2019 9:23 AM, Anson.Huang@nxp.com wrote:
> > > > > From: Anson Huang <Anson.Huang@nxp.com>
> > > > >
> > > > > Assign highest OPP as suspend OPP to reduce suspend/resume
> > > > > latency on i.MX8MM.
> > > > >
> > > > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > > > > ---
> > > > >   arch/arm64/boot/dts/freescale/imx8mm.dtsi | 1 +
> > > > >   1 file changed, 1 insertion(+)
> > > > >
> > > > > diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > > > > b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > > > > index b11fc5e..3a62407 100644
> > > > > --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > > > > +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > > > > @@ -136,6 +136,7 @@
> > > > >   			opp-microvolt = <1000000>;
> > > > >   			opp-supported-hw = <0x8>, <0x3>;
> > > > >   			clock-latency-ns = <150000>;
> > > > > +			opp-suspend;
> > > > >   		};
> > > > >   	};
> > > >
> > > > What if the highest OPP is unavailable due to speed grading?
> > >
> > > What does this exactly mean ? How is the OPP made unavailable in
> > > your case ?
> >
> > That is because in i.MX8M series SoCs, the speed grading and market
> > segment fuses settings could affect the OPP defined in DT, in a word,
> > all possible OPPs are defined in DT, but each parts could ONLY select
> > some of them to be working OPPs, so if the "opp-suspend" is added for
> > 1 OPP in DT, if the part's speed grading or market segment fuse settings
> make that OPP as unavailable,  then that "opp-suspend"
> > is NOT working at all.
> 
> How is this selection done ? You using some OPP helper or something else ?

Each OPP has "opp-supported-hw" property as below, the first value needs to be
checked with speed grading fuse, and the second one needs to be checked with
market segment fuse, ONLY both of them passed, then this OPP is supported. It
calls dev_pm_opp_set_supported_hw() to tell OPP framework to parse the OPP
table, this is my understanding.

opp-supported-hw = <0x8>, <0x3>;

thanks,
Anson

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
