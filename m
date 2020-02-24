Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 208B3169C18
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 03:02:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z1Cs3X//Iwy8aIyXq0/c2TKYDFx/P972J9Abx+rFakI=; b=IjW30NZLE5vCAb
	xGd2zlwEiHrK4fNNRzGo1zLqR+3m/NVvir295OYTlaWy2Tf5NhF5e7infA354IMmqMkrNdj0ejRkc
	IWYowAzwFG3QKs2ceClLzlY0dqeojSvUhWVqUTDSvANyXjVLhLIN8yiVuDMxY5oRMrdLL2LOybD88
	3ICRxYHZaTDezTz0X7H69SFVthQwmYcbWZ/b8r+OcaMNXQz02MNmBUFWlkxk/BzyEicldOSSZgb3t
	PSShOyhibyDxfl2VOOeXHjpY4yCwf5bMXtRakm6JSUBr8nRHariMwnfK0tLBPDDo+foHQtBj7FfjY
	+6u+UVHvqK6op4brxLmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j634R-0003YF-VR; Mon, 24 Feb 2020 02:02:07 +0000
Received: from mail-eopbgr150042.outbound.protection.outlook.com
 ([40.107.15.42] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j634G-0003XF-GI
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 02:01:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fQ4cWRqvLAstoQkLR1MdBZnV6n1+iNOO8EAys2qCa5iF+0T8L2p9MRBKHJWkcLx25zl22kAuB0Dogn+M8EUL/rONmr/PZWgnRwSsGlEEGMufpTx7E9GHqS+oZH0o0lMSjG13gFwHl2DE91HMX9dahIfVp1ttqqla5cUVKRVzgH3Cqw0B+rqJiI0SwCpudq1nWtgDa4cmjuJUF+qGE18HO563s2+D83uO2QirlpuG7v6hV2AS+xz0gY3fDdZ1WNTVVoATgM4PJc+yBXWsd1vMgRM3l4Wy7Uw3wao+NJvR/ESmDTmqqf7Ecq05WPXb98+oYV0tnJTTJUNOuVSkLMxCPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8+Zr2GY8pjGaD22GFA0d4Jvlmmq9kQ+hUoXy5KQvA50=;
 b=T6iZaSblbgbZ/CWBz4pzxZuDwxSepp9ilSZ0PYCQNpuHDUatWG+HpmirJ4mmVqH69dN86IvrGYjaHVDwtZSGvWXkxXCLFwWsbp7vS7pClWsHQ84QKnz+q1sfF/e1pjl/nK150e5UjVWN8y3xIvTL+Ohv49IdKlPmt2hm/xGskU8NafvzkK4wIKrHngfasbZfB4EeHRwol1xSdGtf4kmhV5BgA/6p5OWYyRv2zb6L3zjDUYgnhrb/hDjyal7ou3Hgm3XaqJ2Dm0Q84OLYKo6IyDdEnOFyys0dkNzq8uxW2OA3jO07UerVnVqChdNZJ5YxVhV177ylTYthJctRO6Jz+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8+Zr2GY8pjGaD22GFA0d4Jvlmmq9kQ+hUoXy5KQvA50=;
 b=CG4icWvmwgzR3fJI8qHP051lvNjrivyPsI9AxDTqS/sdsE0aIFVBo6yMnJmJs/UOrEZZj80IkZbmO8WyVqRTTxNBKKs/0ItFts8a0Tp5MluwfgAIUynf+SehcvMqNqTT0aAn+9d1UGiXPSwNr/B2oL+ESmh0OvwCiqCauvxruJo=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3913.eurprd04.prod.outlook.com (52.134.65.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.21; Mon, 24 Feb 2020 02:01:51 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e44d:fa34:a0af:d96]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e44d:fa34:a0af:d96%5]) with mapi id 15.20.2750.021; Mon, 24 Feb 2020
 02:01:51 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH] arm64: dts: imx8mn-ddr4-evk: Adjust 1.2GHz OPP voltage to
 OD mode
Thread-Topic: [PATCH] arm64: dts: imx8mn-ddr4-evk: Adjust 1.2GHz OPP voltage
 to OD mode
Thread-Index: AQHV5f7nnxcZEOnHvUiMPtQ2Xd2MmKgpnOUAgAADUPA=
Date: Mon, 24 Feb 2020 02:01:50 +0000
Message-ID: <DB3PR0402MB391621D12FF3B43490505C7CF5EC0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1581990752-10219-1-git-send-email-Anson.Huang@nxp.com>
 <20200224014759.GB27688@dragon>
In-Reply-To: <20200224014759.GB27688@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [27.157.70.3]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: cf10751b-8994-4d9c-48c7-08d7b8cd838e
x-ms-traffictypediagnostic: DB3PR0402MB3913:|DB3PR0402MB3913:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3913BA8FDE045CFFA9E6A48EF5EC0@DB3PR0402MB3913.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 032334F434
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(136003)(346002)(396003)(39860400002)(366004)(199004)(189003)(26005)(76116006)(186003)(54906003)(66556008)(66476007)(66946007)(7696005)(66446008)(64756008)(44832011)(52536014)(6506007)(8936002)(8676002)(81166006)(81156014)(9686003)(55016002)(71200400001)(4326008)(6916009)(316002)(5660300002)(2906002)(86362001)(33656002)(478600001)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3913;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fXKGRmUZzzIn1cl560IY0YTE5SP4FNoh9sp60Vq/fSjA6FcQvop9entv4V1xoV4hDwok9xryVmrE8WGMhpc6gQNTGij4VhDGyRFo+g2lwWjy5N9D7jUh8daZQvh+6TsKO+nu9d2MuW3XCPgn8r09k9Ul0F5mAjLXk8JL2c1YTRVFbRGFWLd+w/ySJQ4vWCbvLsNPqWMvtOi69FvpS6Wm5FKbE3dmdN/jt/RKBBHGFEGm5uoKlrcrALqpBrEt9yNYSYFccOZ4tQnr6T5nExR26knY3MhPBkao73r291lspaSzMnP4Aqcfd8jr7+PYAsrBR3t5ydOHJEbSO58DyrInS+8F6CHqtZwHQBJ0mJNwtVRXA3iCnO13loP7xAESOeNvpzVTMDXp0D+nsi5DGGvcd1hvF0wSy/vHWxp86vYuM7QuxTItNs6lTzs+uYkGOCdbOn2XO3N4DbM+8EA8vhrluSvZ0mWy3wTOnz8pyeHxs3ZTxbuIvGthqtZl1c5CNTVy
x-ms-exchange-antispam-messagedata: KtbuREThz5kQAnjuy6BG7qs/F61/77o/U7xYmZyJtilK/st5MoJMjg40pKoPd3Krkq9FuE2FDXCBbAJP2RWzSE5QdCRx/AHmWVQkxpYF5TwFTKrLZs9g7T6iMXEPk3BdslBCnQeW7ekiWXiOqt5t3g==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cf10751b-8994-4d9c-48c7-08d7b8cd838e
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Feb 2020 02:01:50.9611 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bERlAgkG6yginfNijV+YKQvR56EtX7+eMZA+IEL1/zlS/OEsFPahQnNJMOU5SkbguLYxZZYnPCoTeU3NzGS/uA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3913
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_180156_540484_FCF9CCAB 
X-CRM114-Status: GOOD (  17.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Abel Vesa <abel.vesa@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Shawn

> Subject: Re: [PATCH] arm64: dts: imx8mn-ddr4-evk: Adjust 1.2GHz OPP
> voltage to OD mode
> 
> On Tue, Feb 18, 2020 at 09:52:32AM +0800, Anson Huang wrote:
> > According to latest datasheet Rev.0, 10/2019, there is restriction as
> > below:
> >
> > "If VDD_SOC/GPU/DDR = 0.95V, then VDD_ARM must be >= 0.95V."
> >
> > As by default SoC is running at OD mode(VDD_SOC = 0.95V), so VDD_ARM
> > 1.2GHz OPP's voltage should be increased to 0.95V.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> >  arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts | 6 ++++++
> >  1 file changed, 6 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts
> > b/arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts
> > index 2497eeb..7a61a1a 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts
> > +++ b/arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts
> > @@ -13,6 +13,12 @@
> >  	compatible = "fsl,imx8mn-ddr4-evk", "fsl,imx8mn";  };
> >
> > +&a53_opp_table {
> > +	opp-1200000000 {
> > +		opp-microvolt = <950000>;
> > +	};
> > +};
> > +
> 
> The restriction applies to SoC rather than a particular board, right?
> If so, the change should be made in imx8mn.dtsi?

Yes, you are correct, for now, it is NOT related to board, I will do the change
in .dtsi in V2.

Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
