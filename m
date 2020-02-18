Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C018D162015
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 06:10:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DRCz2BRTCEPomBj4Ae0EEKEAsPVcYstd8QL1pjwA/ec=; b=ie3+xsZX6Buho/
	Kp1U5eIkg15jvU8W2/XnhoSWl910Lz57w5prP9uaHOb9LnMzQy3vLi1czU8B/Q71/1yeG4/g8cONo
	7mZkk5HBPMl4N1WPrBaUK82bZiT5MIET9Op5ivw8UQb6N3S/gDG59Tm6/ZbPl0dks/YOG2XKuYKLA
	dg4Klx5zRjKFZBT2tyreO8vnqLS9QVR27kUE7CUgCgBl5o2BJkuM9t+buNAQHCCQycfBTG/CKZXVa
	5IEiA1uNv3J7MwnlUYKkjOvsAX6Z82/UDi+y8GRNNDeG9XXuBaJKH33iCX059gJELeMDjlJAjqAAz
	IPg0yv2ZDqfLW0eJPeHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3v9E-0003yD-FY; Tue, 18 Feb 2020 05:10:16 +0000
Received: from mail-am6eur05on2075.outbound.protection.outlook.com
 ([40.107.22.75] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3v91-0003CL-45
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 05:10:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gnepVLDHYV/u3sUIqDoQDzBZ+CNseLVdIwXgh+82oygnmxANxzt9eOr15EZNw2yJlUv+z9o9P6K3V7GPg9/i8wNap1dBl2lhgsICB8j+j9q8buWJc4mYL/t0exhw69WgGwlC20S0McZuwNqKFRORXB8Idkd7/TV/2zMOcatF/Vn5EWtEethGRSDkvsz/qh/fRZfFlFdbzH1HWPFGIbBIclDziPbPE+CiFFkxdTFIF17zR54ehBM9o2kdd44uBidP85LggpVXlUJA1MDM6imJfGa/nliF7uC4BM0Y8DrVly1zKHChyQtdZvqFJOv4+JMkTFL1INXsz5Qb98cSGoNa1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hFWi8OlVW/eK3r063nuga03E208BYT4X2CBCpMzpQps=;
 b=klWeXChVu90WIzGvwhylpFlQEK0WfIc4NPruHKbghAzSOnH26eavONY2LoZ4JlP4TTquFaEyiaO/bgtz4XacDzN2197r5JAYyg2eepcK/eZUYRoRvoU1pOUOjdyT2UPhDdzAW8sHk2TgFyH9HgaehonZD0AfVjZnP4kf0jV5LuB0L/9UBtnIEwQ9WjQ2LJXWlZRP75tJ396Rs5CnBp8j+F1WJSDHg15/niCUC18IRXNsb5ZOJbpm4p7PPzmpywaaDVcH5LLX/pz7sF2O83YNgMcLJp0srnEgyKlNbbZxWt0SAygSRCe7OcO/n75uz4KlGfRk3oqatcd8bejoSII7BA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hFWi8OlVW/eK3r063nuga03E208BYT4X2CBCpMzpQps=;
 b=DoMoHuupQ3RfjitlCWxHsCSaWgAGpjBioe5Mmyqt2d+9Z+SWTUJQnGuwPp+5janDrCMuOkVVXZy4RP6mJjHiAQcQm+xU3ccLuR9yQSFr92iMIzPvCPpxV7aPyCbWMc29WkOw4XikPHcGWrKcjbzio+Ks4zIVenQBpczQuirtFRo=
Received: from VI1PR0402MB3600.eurprd04.prod.outlook.com (52.134.3.146) by
 VI1PR0402MB2941.eurprd04.prod.outlook.com (10.175.24.135) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.25; Tue, 18 Feb 2020 04:55:51 +0000
Received: from VI1PR0402MB3600.eurprd04.prod.outlook.com
 ([fe80::18c:4d15:c3ab:afa6]) by VI1PR0402MB3600.eurprd04.prod.outlook.com
 ([fe80::18c:4d15:c3ab:afa6%7]) with mapi id 15.20.2729.032; Tue, 18 Feb 2020
 04:55:50 +0000
From: Andy Duan <fugang.duan@nxp.com>
To: Leonard Crestez <leonard.crestez@nxp.com>, Fabio Estevam
 <festevam@gmail.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>
Subject: RE: [PATCH] arm64: dts: imx8qxp-mek: Remove unexisting Ethernet PHY
Thread-Topic: [PATCH] arm64: dts: imx8qxp-mek: Remove unexisting Ethernet PHY
Thread-Index: AQHV5caiMKKkq2Vf80m7IxXHefTKlaggYshA
Date: Tue, 18 Feb 2020 04:55:50 +0000
Message-ID: <VI1PR0402MB36000C70DAD9B755D4678F1EFF110@VI1PR0402MB3600.eurprd04.prod.outlook.com>
References: <20200217191503.31444-1-festevam@gmail.com>
 <VI1PR04MB702395CCF71A85209077F9F1EE160@VI1PR04MB7023.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR04MB702395CCF71A85209077F9F1EE160@VI1PR04MB7023.eurprd04.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=fugang.duan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 0d89c8ed-6ea1-4069-9011-08d7b42ed3b4
x-ms-traffictypediagnostic: VI1PR0402MB2941:|VI1PR0402MB2941:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0402MB2941C82A6C851827FDA752DEFF110@VI1PR0402MB2941.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 031763BCAF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(346002)(376002)(396003)(39860400002)(366004)(199004)(189003)(55016002)(9686003)(4326008)(7696005)(5660300002)(52536014)(26005)(66946007)(53546011)(6506007)(186003)(478600001)(66446008)(64756008)(66476007)(54906003)(110136005)(66556008)(8936002)(316002)(76116006)(81166006)(8676002)(81156014)(86362001)(33656002)(2906002)(71200400001)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB2941;
 H:VI1PR0402MB3600.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 81oLR2SbfsvOMzaj9ig65lS9R9WEGXq5IHnuJ/YiCpZ9OLDSTRTGQtE9mBwHg+Dhps/j2i56OTSMMTyNVdvwUG3p+QCww/PdWvNfdSj7G2gZUNSLUpZlroSHny1Qb0H2LIN+Ae3mSlDVC6isIgVF4x99s1T5jn423++I0odAo1yQkffG3vPKvzllbrlJjtcYoPtK5CXktKHBwgqxyi7CvwNQfoeVJPvYEewLNosbV5kyI0ELYDEAApPERnyAejOQ1y1+eyaSr0oN9YlXvrgq9ZJYiWLxubjTxMoHSGziE3FQiqXE0AmHQLVwYJem75XhJzPQL7jy+G0RSi+7S9FJiAG2QVQ0Y5MQ/Z//2+3XcybuKMpB19tywWSMNMV9GwF2gXQo94Z6/eQIz6CExvfTrWMTVNJEMfRJlHoheL3bcnaw20i0BLP+jJUdgiiFHAXQ8D62NnMawphTCnfbM1C4Dkb+1+ZzY3RBJ6zxG5/a7+AoATA1uY9SRuNXre3YMYuw
x-ms-exchange-antispam-messagedata: 0iASY1BrtZgYn4JnyjYfI3oKYVw5KKh0i89llB5QhaSyqq6yj1gxzznf7y7eYm4RZSflf3Fd0ODXaeCDBQX/5Gm6dUHf5gjEm8JWn5KYJI1VDXKw6zUFycT4b8mrYCVckd0sAnz+N/mly7bh5PoIkw==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d89c8ed-6ea1-4069-9011-08d7b42ed3b4
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Feb 2020 04:55:50.8266 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AwtTWBXHc4xaOwFNiUx2jjAsCRIPhLui56aKx+onliumLoI0/sSnr2wUPDa6RvmFnBbHb3AhMzjKWG0Yt1+/cA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB2941
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_211003_174277_3CEAF728 
X-CRM114-Status: GOOD (  15.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.75 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "robh@kernel.org" <robh@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Leonard Crestez <leonard.crestez@nxp.com> Sent: Tuesday, February 18, 2020 4:10 AM
> On 17.02.2020 21:15, Fabio Estevam wrote:
> > There is only on Ethernet port and one Ethernet PHY on imx8qxp-mek.
> >
> > Remove the unexisting ethphy1 port.
> >
> > This fixes a run-time warning:
> >
> > mdio_bus 5b040000.ethernet-1: MDIO device at address 1 is missing.
> >
> > Fixes: fdea904e85e1 ("arm64: dts: imx: add imx8qxp mek support")
> > Signed-off-by: Fabio Estevam <festevam@gmail.com>
> 
> +Andy
> 
> I remember that it's possible to get a second ethernet port through a
> baseboard on imx8qxp. It's not a default option but it's real.
> 
> Unless I'm missing something?

Yes, the phy is attached to second net device that is on baseboard.
Because there have pin conflict with esai0, there have another extra
dts file for it.

Andy
> 
> > ---
> >   arch/arm64/boot/dts/freescale/imx8qxp-mek.dts | 5 -----
> >   1 file changed, 5 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
> > b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
> > index d3d26cca7d52..13460a360c6a 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
> > +++ b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
> > @@ -52,11 +52,6 @@
> >   			compatible = "ethernet-phy-ieee802.3-c22";
> >   			reg = <0>;
> >   		};
> > -
> > -		ethphy1: ethernet-phy@1 {
> > -			compatible = "ethernet-phy-ieee802.3-c22";
> > -			reg = <1>;
> > -		};
> >   	};
> >   };
> >
> >


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
