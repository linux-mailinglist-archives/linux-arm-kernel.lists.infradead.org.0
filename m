Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 074B9194A85
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 22:27:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xPhBIxKb09zD2dL/U4QkGZ32GlvJ/06FXQ5mU8yIbSc=; b=C/78lhExTzeHJa
	A2L8OYCEitMnzkOtK7XPQhgbcGWwJY6x7AJ6L45O9sW01UBFxW6qjy9U8OWsVwB+v/U1wTCvA/LfL
	zjSPrrl1gcvb71J3jdGEvJf++52y88MOBYfR4MsgyUTRDTXJUeZrHGY/VkKJGf/jIWWJE87LR1G4U
	0SNkL01EiQtlty3Fz2ELPaedqx0J2dviCZpXWG2gOigcvPQakcv5cW/qO3kvfJqG731Tl4yLYd0CR
	cg8EmFlx9H03xmnYabjneh6fjXavQkz3nJAmmlHJBvCU77jz8E+LJgwzr7bgZN20xTsxKdIG857WY
	ZEacNLRtGE7r/4f5f2PQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHa1i-0007dy-3m; Thu, 26 Mar 2020 21:26:58 +0000
Received: from mail-eopbgr60079.outbound.protection.outlook.com ([40.107.6.79]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHa1Y-0007d5-PQ
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 21:26:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Bdw7pJ6rIhCAOgdPt4aQftetcoNaipCfe22jV/vSpvc8puzAsdkn6Jdnd7ctdiK15+0fprgxx+p/AUI7rERqDPIEr8AgyJ0V7DXEKcVUBOWGEjEO8Piayp67cGogmIuxNY1QNFNYlQqF16pjM1AZf84oyqf0HSm9cQcp1uiYNJFssj4IuLkprLUVXuaG1FtlzX3jl5sTbQuVFiQjRm+30HF+hPvmls+RBa80iA1TlH43gRnF0YkLCFBuN2u+XUMv6bUePt4G8jqw7j6vxFOhK/5jC+e32NanAjFSK1PHcmZOQf07n1P5a8d0xRvu0qpO6l01KwxjlMBlN10HEkQ2UA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=i+0nIhiDG3AuNsEk0ZFs7ErobUsZ3IMmeC1mSGa262w=;
 b=gxPEkiZ01L+kIBobgVJ/BzuJ9dNZEDE/Pa55LH3NTdEFmSx6JHhAUTCv4Ooov/TSkACtfbI5uIC1vcIZgDvvCgqqcw87Jx1QOO9QlITMPUYZjnjd1EQytFLBPo3bEDfTS6qbX37Pt8nTIO/hfeDqA+tSd6JFA89au12iSNd00IJufRzoELSA++oXbQTZl44OF3P8WIIr5vFvaiT2dnfPZrc+5YpagNWU4Qz3A8FRu0zJUbmM795TOO+Fml/saU8DI1fHW2qDps7rCP9ikVVl5p0/J3D2MNgBGX4m3MZlEcqr/wX5eZNWmeueEdMltFFvtXboJZiUMkz/gDUxFRVfQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=i+0nIhiDG3AuNsEk0ZFs7ErobUsZ3IMmeC1mSGa262w=;
 b=csSahE5RYqbfIgRZ8UvXOkCfI4tVR4uoeSGbCZYwMWQTKdd2oyJuqt/daa5+gWoFXNhlcH+gkpmCgU5KSKBuw6qGx5DVNJM+rlPM82GURu9D3LwFfpcp5x+VtYIvQJ2G90gK+6EwjAoxqqWs32bZ6XqjmWYigutD5WNRKbdFv34=
Received: from DB8PR04MB6828.eurprd04.prod.outlook.com (52.133.240.149) by
 DB8PR04MB7097.eurprd04.prod.outlook.com (52.135.62.75) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2835.19; Thu, 26 Mar 2020 21:26:46 +0000
Received: from DB8PR04MB6828.eurprd04.prod.outlook.com
 ([fe80::e44e:f867:d67:e901]) by DB8PR04MB6828.eurprd04.prod.outlook.com
 ([fe80::e44e:f867:d67:e901%2]) with mapi id 15.20.2835.023; Thu, 26 Mar 2020
 21:26:46 +0000
From: Ioana Ciornei <ioana.ciornei@nxp.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: RE: [RFC net-next 3/5] arm64: dts: lx2160a: add PCS MDIO nodes
Thread-Topic: [RFC net-next 3/5] arm64: dts: lx2160a: add PCS MDIO nodes
Thread-Index: AQHV/GvPzUWzrwiI5Eyn+VTY72VeyKhbbKRggAADbQCAAABWYA==
Date: Thu, 26 Mar 2020 21:26:46 +0000
Message-ID: <DB8PR04MB682817485CBD1EFA1AA179F1E0CF0@DB8PR04MB6828.eurprd04.prod.outlook.com>
References: <20200317144944.GP25745@shell.armlinux.org.uk>
 <E1jEDaS-0008JO-Po@rmk-PC.armlinux.org.uk>
 <DB8PR04MB6828FA55AA75B710BDB53BC8E0CF0@DB8PR04MB6828.eurprd04.prod.outlook.com>
 <20200326212104.GE25745@shell.armlinux.org.uk>
In-Reply-To: <20200326212104.GE25745@shell.armlinux.org.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ioana.ciornei@nxp.com; 
x-originating-ip: [79.115.60.40]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 8ba33cc8-b9fc-43fe-382c-08d7d1cc630d
x-ms-traffictypediagnostic: DB8PR04MB7097:|DB8PR04MB7097:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB8PR04MB70971C0CE9B3204E956964E4E0CF0@DB8PR04MB7097.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0354B4BED2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(396003)(136003)(366004)(39860400002)(376002)(66446008)(66556008)(186003)(66946007)(66476007)(26005)(8936002)(2906002)(7696005)(6506007)(64756008)(6916009)(7416002)(52536014)(9686003)(316002)(8676002)(478600001)(44832011)(54906003)(33656002)(5660300002)(71200400001)(81156014)(86362001)(81166006)(76116006)(4326008)(55016002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR04MB7097;
 H:DB8PR04MB6828.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Vc04jNlYXVq7GBsfTCl7B5/qGcSbAYxk2SBUiHbZxsjWDU6Vcwl5CLHTPX6E/mIxrY8To+KYs3q2d67t6rpzU0lCvJweJuBpLZ5xxK0S6u1xQXQzQ6CmU+OjxwHTDaHcslg2MBdZ9mqbUoWKT+oR7SB9EX2sBMZv/mlMaYGaCOeqXxsWHWMxv8a8KA9keaODTp+8BNjXt+IEJelbwMRCg+Gob97m3a01pZXl0BVP0MCi8+Wcnr3TaO1bj/Uc9MC6HbOCKmCKfDs8j3FCjsqcWvxWb/vAtuYOwfn7Uh0mjXwR3zO9qLB0ge1puqQl96LEFQpbI+TFXgsuTvCuCGh2qinQUkieg0icZ5AdOp4pHJaq2fvAZvzu7ahJ5K5qIiDiGaGw1nOsYHrdolvlBRRPHM1YhhlZMOR+VhUid00NK7LK8n8akTjbBWev5P8ZE5se
x-ms-exchange-antispam-messagedata: B9nFNMhH1JrWkdfJ2oX5kBxjcvpMR/5D++EAVMNomWJxLYm5Uk0Uqunjrftcw3D+nQzbS0pl9dXRhTlWWYqZ8MzeZ9USkiv85Z6hj+DinR1V/cFAl6zcWuQc73s5xnL3RuNLPK4UdNv+Rsxv9GS7kQ==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ba33cc8-b9fc-43fe-382c-08d7d1cc630d
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Mar 2020 21:26:46.0941 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KYYGgAWo8zHefdYZcntW3pqWBlaYkaEnuv9lm11cslA3ThvmE0F/WZF4Q1Kb7Ha0pTbHT6Rb7O5kMinyiIUpnQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB7097
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_142648_838345_02B0C4F5 
X-CRM114-Status: GOOD (  21.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.79 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.6.79 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Leo Li <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


> Subject: Re: [RFC net-next 3/5] arm64: dts: lx2160a: add PCS MDIO nodes
> 
> On Thu, Mar 26, 2020 at 09:14:13PM +0000, Ioana Ciornei wrote:
> > > Subject: [RFC net-next 3/5] arm64: dts: lx2160a: add PCS MDIO nodes
> > >
> > > *NOT FOR MERGING*
> > >
> > > Add PCS MDIO nodes for the LX2160A, which will be used when the MAC
> > > is in PHY mode and is using in-band negotiation.
> > >
> > > Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
> > > ---
> > >  .../arm64/boot/dts/freescale/fsl-lx2160a.dtsi | 144
> > > ++++++++++++++++++
> > >  1 file changed, 144 insertions(+)
> > >
> > > diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
> > > b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
> > > index e5ee5591e52b..732af33eec18 100644
> > > --- a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
> > > +++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
> > > @@ -960,6 +960,132 @@
> > >  			status = "disabled";
> > >  		};
> > >
> > > +		pcs_mdio1: mdio@8c07000 {
> > > +			compatible = "fsl,fman-memac-mdio";
> > > +			reg = <0x0 0x8c07000 0x0 0x1000>;
> > > +			little-endian;
> > > +			status = "disabled";
> > > +		};
> >
> > Are the PCS MDIO buses shareable? I am asking this because in case of QSGMII
> our structure is a little bit quirky.
> > There are 4 MACs but all PCSs sit on the first MACs internal MDIO bus only. The
> other 3 internal MDIO buses are empty.
> 
> I haven't looked at QSGMII yet, I've only considered single-lane setups and only
> implemented that. For _this_ part, it doesn't matter as this is just declaring
> where the hardware is.  I think that matters more for the dpmac nodes.

Sorry for misplacing the comment.

I am going to take a look tomorrow and see how workable this approach is going to be in the long term since I have a board with QSGMII handy.


> 
> > > +
> > > +		pcs_mdio2: mdio@8c0b000 {
> > > +			compatible = "fsl,fman-memac-mdio";
> > > +			reg = <0x0 0x8c0b000 0x0 0x1000>;
> > > +			little-endian;
> > > +			status = "disabled";
> > > +		};
> > > +
> > > +		pcs_mdio3: mdio@8c0f000 {
> > > +			compatible = "fsl,fman-memac-mdio";
> > > +			reg = <0x0 0x8c0f000 0x0 0x1000>;
> > > +			little-endian;
> > > +			status = "disabled";
> > > +		};
> > > +
> > > +		pcs_mdio4: mdio@8c13000 {
> > > +			compatible = "fsl,fman-memac-mdio";
> > > +			reg = <0x0 0x8c13000 0x0 0x1000>;
> > > +			little-endian;
> > > +			status = "disabled";
> > > +		};
> > > +
> > > +		pcs_mdio5: mdio@8c17000 {
> > > +			compatible = "fsl,fman-memac-mdio";
> > > +			reg = <0x0 0x8c17000 0x0 0x1000>;
> > > +			little-endian;
> > > +			status = "disabled";
> > > +		};
> > > +
> > > +		pcs_mdio6: mdio@8c1b000 {
> > > +			compatible = "fsl,fman-memac-mdio";
> > > +			reg = <0x0 0x8c1b000 0x0 0x1000>;
> > > +			little-endian;
> > > +			status = "disabled";
> > > +		};
> > > +
> > > +		pcs_mdio7: mdio@8c1f000 {
> > > +			compatible = "fsl,fman-memac-mdio";
> > > +			reg = <0x0 0x8c1f000 0x0 0x1000>;
> > > +			little-endian;
> > > +			status = "disabled";
> > > +		};
> > > +
> > > +		pcs_mdio8: mdio@8c23000 {
> > > +			compatible = "fsl,fman-memac-mdio";
> > > +			reg = <0x0 0x8c23000 0x0 0x1000>;
> > > +			little-endian;
> > > +			status = "disabled";
> > > +		};
> > > +
> > > +		pcs_mdio9: mdio@8c27000 {
> > > +			compatible = "fsl,fman-memac-mdio";
> > > +			reg = <0x0 0x8c27000 0x0 0x1000>;
> > > +			little-endian;
> > > +			status = "disabled";
> > > +		};
> > > +
> > > +		pcs_mdio10: mdio@8c2b000 {
> > > +			compatible = "fsl,fman-memac-mdio";
> > > +			reg = <0x0 0x8c2b000 0x0 0x1000>;
> > > +			little-endian;
> > > +			status = "disabled";
> > > +		};
> > > +
> > > +		pcs_mdio11: mdio@8c2f000 {
> > > +			compatible = "fsl,fman-memac-mdio";
> > > +			reg = <0x0 0x8c2f000 0x0 0x1000>;
> > > +			little-endian;
> > > +			status = "disabled";
> > > +		};
> > > +
> > > +		pcs_mdio12: mdio@8c33000 {
> > > +			compatible = "fsl,fman-memac-mdio";
> > > +			reg = <0x0 0x8c33000 0x0 0x1000>;
> > > +			little-endian;
> > > +			status = "disabled";
> > > +		};
> > > +
> > > +		pcs_mdio13: mdio@8c37000 {
> > > +			compatible = "fsl,fman-memac-mdio";
> > > +			reg = <0x0 0x8c37000 0x0 0x1000>;
> > > +			little-endian;
> > > +			status = "disabled";
> > > +		};
> > > +
> > > +		pcs_mdio14: mdio@8c3b000 {
> > > +			compatible = "fsl,fman-memac-mdio";
> > > +			reg = <0x0 0x8c3b000 0x0 0x1000>;
> > > +			little-endian;
> > > +			status = "disabled";
> > > +		};
> > > +
> > > +		pcs_mdio15: mdio@8c3f000 {
> > > +			compatible = "fsl,fman-memac-mdio";
> > > +			reg = <0x0 0x8c3f000 0x0 0x1000>;
> > > +			little-endian;
> > > +			status = "disabled";
> > > +		};
> > > +
> > > +		pcs_mdio16: mdio@8c43000 {
> > > +			compatible = "fsl,fman-memac-mdio";
> > > +			reg = <0x0 0x8c43000 0x0 0x1000>;
> > > +			little-endian;
> > > +			status = "disabled";
> > > +		};
> > > +
> > > +		pcs_mdio17: mdio@8c47000 {
> > > +			compatible = "fsl,fman-memac-mdio";
> > > +			reg = <0x0 0x8c47000 0x0 0x1000>;
> > > +			little-endian;
> > > +			status = "disabled";
> > > +		};
> > > +
> > > +		pcs_mdio18: mdio@8c4b000 {
> > > +			compatible = "fsl,fman-memac-mdio";
> > > +			reg = <0x0 0x8c4b000 0x0 0x1000>;
> > > +			little-endian;
> > > +			status = "disabled";
> > > +		};
> > > +
> >
> > Please sort the nodes alphabetically.
> 
> Huh?  The nodes in this file are already sorted according to address, and this
> patch preserves that sorting.  The hex address field also happens to be
> alphabetical.
> 
> Or do you mean the label for these modes - I've never heard of sorting by label
> for a SoC file.

Uhh, I remember now. For some reason I thought this was a board file.

Ioana

[snip]

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
