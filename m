Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0071C8990E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 10:55:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9xh3HnUN0FmzHBuMPNMLqffTqXb3Epq2aHeHua09+Io=; b=lqOtSYWewnZQaW
	z/UhUX0VL8pg8qvwqDkaGGTDCjrAg3hAR1BijpdMq5hlZHfPbY4gLRoLTr96vyXZNrc4i5zmvea6N
	FzQF7+X4HrwBW3Ir6o2cGR/oytz9pggno6MmH41CJ4eCA8HLsJooXgd9fpKVnDikxbnD/iX8G9u8R
	Mq/SK/BlaIGGkJGYQgJyjg/OcStOufLD29y7NoxrySnVnZA5/wFeMLmj7RUMVE979uIHvCdX7fKXZ
	DwIMtbrbbKRWKX8BGcXqXqQE5K4YlSSdGFivE6e/DhKnTYd27PLXJFBQah1yHb9fz6Mtz0/WnNnKA
	LW4rPzdOt/czVbe2vxNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx66W-0004S3-Qj; Mon, 12 Aug 2019 08:55:00 +0000
Received: from mail-eopbgr50107.outbound.protection.outlook.com
 ([40.107.5.107] helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx66I-0004MI-Ji
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 08:54:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fK+Gvy3nfiDBOpmu0dsGrwG+W4byPbVFyPCDTDir3Zap5gkRCOp7M1BRUr9QkZi+P7LfSn7tSFbVTbcsNeZX/BAqs3msJ7s4gb/XxagPA5/8iJ+a+lMOLSqDmLUk3ow6Gf57wDCL9rFWph63qe5AFvy5vMxtjdz7sYDV+52AMzUnuNMW37MoSwDRTP1x1JUbumPwc7IYK+qtbdXqWywW2DNwUUiVmUBbUn0ofv2qayfhM7ECinHMRzvMuL4djkY1b0xz/c14VX4NneQ9jagt1uTMAiodvquG/tQLazbW34ICG4cVhXWNNGUeWmOkLgU6pnVD/Fs516nu9ckDDJdRMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jzLwzFTT8sBRJQtlvgWFYmo5dNmiKBkTtxunx6Tn2NQ=;
 b=UhMLSv3l7xaFahkvaPtvNmlm5lyFgQinwXaGaB0/9SW0RdIxjxY3WCWTe+pSuhlj1NUAHNhFGA/nRJ/pAE3N442Dqx2wD43NksFJw3ioHtkkeVVRFwXPp/ALqCJJglHsD99qaJQk3RkOwAyk6lLg8CxW9C4dY1tG/KGHml89mwAP9npVTqL/6HlSz3GDIWAKE4RfUyqQzAU277dHGNFVDPWML1hwcHpocDVOMy/SE6U5hMBMYrszqrP+10vcDDthaIbjN52acpywE0jNHeSOocnqEnWB1uo52tqOCPHQIxG9MaP9MzYnzsNbGYi7zyrEPL4uFxL02Nyeig2hGgTSKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jzLwzFTT8sBRJQtlvgWFYmo5dNmiKBkTtxunx6Tn2NQ=;
 b=ux0BEoCXcwQSGBvv1+6/c+tKT/G51w/ZhYK0/azQ9RrDL3PWNmOUQe7oDkf8ZS8X5JvSyt0lg7RycbFMXBj9qRZeUyRhsRhfhUaIQu8oO8eyw5SS+vx5ROcD/nzuvCfwfB5DyeLJMcRBm7ge2a/j+GKJwUq1kUFduWu/EIb31oI=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB2879.eurprd05.prod.outlook.com (10.172.255.149) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.16; Mon, 12 Aug 2019 08:54:44 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2%6]) with mapi id 15.20.2157.022; Mon, 12 Aug 2019
 08:54:44 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: "stefan@agner.ch" <stefan@agner.ch>, Marcel Ziswiler
 <marcel.ziswiler@toradex.com>, "festevam@gmail.com" <festevam@gmail.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, Max Krummenacher
 <max.krummenacher@toradex.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "michal.vokac@ysoft.com" <michal.vokac@ysoft.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>
Subject: Re: [PATCH v3 17/21] ARM: dts: imx6ull: improve can templates
Thread-Topic: [PATCH v3 17/21] ARM: dts: imx6ull: improve can templates
Thread-Index: AQHVTPnWg3X3des7t06cvcYeXC7Lxaby+aaAgARDkIA=
Date: Mon, 12 Aug 2019 08:54:43 +0000
Message-ID: <cd5a729891dc88e2d4552d003dc1a1c77b03947a.camel@toradex.com>
References: <20190807082556.5013-1-philippe.schenker@toradex.com>
 <20190807082556.5013-18-philippe.schenker@toradex.com>
 <8ae5742f29f17e61fd9fc39a8dbd1b7c3a2f45b0.camel@toradex.com>
In-Reply-To: <8ae5742f29f17e61fd9fc39a8dbd1b7c3a2f45b0.camel@toradex.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
x-originating-ip: [46.140.72.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 809d5546-01a5-474e-8415-08d71f02b871
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:VI1PR0502MB2879; 
x-ms-traffictypediagnostic: VI1PR0502MB2879:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0502MB2879C9D2D4715A9A5D2A4EA3F4D30@VI1PR0502MB2879.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2803;
x-forefront-prvs: 012792EC17
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(396003)(39840400004)(366004)(376002)(346002)(189003)(199004)(5660300002)(446003)(6506007)(14444005)(66066001)(6512007)(6486002)(478600001)(6436002)(4326008)(256004)(66476007)(66556008)(64756008)(66446008)(7416002)(486006)(25786009)(14454004)(2201001)(11346002)(76116006)(476003)(44832011)(91956017)(66946007)(36756003)(316002)(2616005)(53936002)(110136005)(71200400001)(71190400001)(118296001)(305945005)(7736002)(76176011)(186003)(54906003)(81166006)(81156014)(2501003)(99286004)(8676002)(102836004)(8936002)(229853002)(26005)(6246003)(6116002)(3846002)(2906002)(86362001)(32563001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB2879;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: gVJPdn4EEQy9cqg5RhCtxW8MBGB4otG4FCFmVeLUgj/Y2vLoTDX/GWUB/qnCQPR/gJgmo8yUgvDoUfAIuDU/+aMN1NlTbRzscwhw8kHnI9AFE5gPM4SLh6y+k7NBhF4YeuefwplVVv16owRYGSsYtG50T1886ZpchxOEQwq5Ix3qBk0hLPeQc3cmW31DUYureRsifB+B1p9vtV0tDMnmZcIGj7P8zFHaU2BzTKOmkSTvYkKUL3s0LRf3/yntvB0TJEwLNjDp+nM8e607cWP21JO0k5UqxTZNfwgcyL0rQRuxdcOTQtvw87ktoT6jHw/4ch8iIG5si6Caf4rN5lB4v6PpOBwBqmSlvmGegbHsbrmpBDMq7ULSiBxQDQkNu5mTbrkuGlROWKEw2AEV7EydmaaBT92JQ/vkVOUDDVECYuk=
Content-ID: <C14B383B5E775B4D8048422DF03ECA3C@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 809d5546-01a5-474e-8415-08d71f02b871
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2019 08:54:44.0067 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DZ8rblpoYz4sv8AF2mJpPuxLV1VhEV0dLUfl2Jg0aM2moNu02mArpX15ODIBdVpeZ9KwxizzN+IbRrVHc7ZigsoZWYxR7jlDP5eq7+hBWbA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB2879
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_015446_649097_03817065 
X-CRM114-Status: GOOD (  19.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.107 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2019-08-09 at 15:47 +0000, Marcel Ziswiler wrote:
> Hi Philippe
> 
> On Wed, 2019-08-07 at 08:26 +0000, Philippe Schenker wrote:
> > From: Max Krummenacher <max.krummenacher@toradex.com>
> > 
> > Add the pinmuxing and a inactive node for flexcan1 on SODIMM 55/63
> > and move the inactive flexcan nodes to imx6ull-colibri-eval-v3.dtsi
> > where they belong.
> > 
> > Note that this commit does not enable flexcan functionality, but
> > rather
> > eases the effort needed to do so.
> > 
> > Signed-off-by: Max Krummenacher <max.krummenacher@toradex.com>
> > Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
> > ---
> > 
> > Changes in v3: None
> > Changes in v2: None
> > 
> >  arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi | 12 ++++++++++++
> >  arch/arm/boot/dts/imx6ull-colibri-nonwifi.dtsi |  2 +-
> >  arch/arm/boot/dts/imx6ull-colibri-wifi.dtsi    |  2 +-
> >  arch/arm/boot/dts/imx6ull-colibri.dtsi         | 16 ++++++++++++++-
> > -
> >  4 files changed, 28 insertions(+), 4 deletions(-)
> > 
> > diff --git a/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi
> > b/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi
> > index b6147c76d159..3bee37c75aa6 100644
> > --- a/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi
> > +++ b/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi
> > @@ -83,6 +83,18 @@
> >  	};
> >  };
> >  
> > +&can1 {
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&pinctrl_flexcan1>;
> > +	status = "disabled";
> > +};
> > +
> > +&can2 {
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&pinctrl_flexcan2>;
> > +	status = "disabled";
> > +};
> 
> As those don't really have anything to do with the eval board
> directly,
> wouldn't it make more sense to rather move them into the module's dtsi
> just like the pin muxing further below?

I agree, moved for v4.

Thanks, Philippe
> 
> >  &i2c1 {
> >  	status = "okay";
> >  
> > diff --git a/arch/arm/boot/dts/imx6ull-colibri-nonwifi.dtsi
> > b/arch/arm/boot/dts/imx6ull-colibri-nonwifi.dtsi
> > index fb213bec4654..95a11b8bcbdb 100644
> > --- a/arch/arm/boot/dts/imx6ull-colibri-nonwifi.dtsi
> > +++ b/arch/arm/boot/dts/imx6ull-colibri-nonwifi.dtsi
> > @@ -15,7 +15,7 @@
> >  &iomuxc {
> >  	pinctrl-names = "default";
> >  	pinctrl-0 = <&pinctrl_gpio1 &pinctrl_gpio2 &pinctrl_gpio3
> > -		&pinctrl_gpio4 &pinctrl_gpio5 &pinctrl_gpio6>;
> > +		&pinctrl_gpio4 &pinctrl_gpio5 &pinctrl_gpio6
> > &pinctrl_gpio7>;
> >  };
> >  
> >  &iomuxc_snvs {
> > diff --git a/arch/arm/boot/dts/imx6ull-colibri-wifi.dtsi
> > b/arch/arm/boot/dts/imx6ull-colibri-wifi.dtsi
> > index 038d8c90f6df..a0545431b3dc 100644
> > --- a/arch/arm/boot/dts/imx6ull-colibri-wifi.dtsi
> > +++ b/arch/arm/boot/dts/imx6ull-colibri-wifi.dtsi
> > @@ -26,7 +26,7 @@
> >  &iomuxc {
> >  	pinctrl-names = "default";
> >  	pinctrl-0 = <&pinctrl_gpio1 &pinctrl_gpio2 &pinctrl_gpio3
> > -		&pinctrl_gpio4 &pinctrl_gpio5>;
> > +		&pinctrl_gpio4 &pinctrl_gpio5 &pinctrl_gpio7>;
> >  
> >  };
> >  
> > diff --git a/arch/arm/boot/dts/imx6ull-colibri.dtsi
> > b/arch/arm/boot/dts/imx6ull-colibri.dtsi
> > index e3220298dd6f..553d4c1f80e9 100644
> > --- a/arch/arm/boot/dts/imx6ull-colibri.dtsi
> > +++ b/arch/arm/boot/dts/imx6ull-colibri.dtsi
> > @@ -256,6 +256,13 @@
> >  		>;
> >  	};
> >  
> > +	pinctrl_flexcan1: flexcan1-grp {
> > +		fsl,pins = <
> > +			MX6UL_PAD_ENET1_RX_DATA0__FLEXCAN1_TX	0x1b
> > 0
> > 20
> > +			MX6UL_PAD_ENET1_RX_DATA1__FLEXCAN1_RX	0x1b
> > 0
> > 20
> > +		>;
> > +	};
> > +
> >  	pinctrl_flexcan2: flexcan2-grp {
> >  		fsl,pins = <
> >  			MX6UL_PAD_ENET1_TX_DATA0__FLEXCAN2_RX	0x1b
> > 0
> > 20
> > @@ -271,8 +278,6 @@
> >  
> >  	pinctrl_gpio1: gpio1-grp {
> >  		fsl,pins = <
> > -			MX6UL_PAD_ENET1_RX_DATA0__GPIO2_IO00	0x74
> > /* SODIMM 55 */
> > -			MX6UL_PAD_ENET1_RX_DATA1__GPIO2_IO01	0x74
> > /* SODIMM 63 */
> >  			MX6UL_PAD_UART3_RX_DATA__GPIO1_IO25	0X14
> > /* SODIMM 77 */
> >  			MX6UL_PAD_JTAG_TCK__GPIO1_IO14		0x14
> > /* SODIMM 99 */
> >  			MX6UL_PAD_NAND_CE1_B__GPIO4_IO14	0x14 /*
> > SODIMM 133 */
> > @@ -325,6 +330,13 @@
> >  		>;
> >  	};
> >  
> > +	pinctrl_gpio7: gpio7-grp { /* CAN1 */
> > +		fsl,pins = <
> > +			MX6UL_PAD_ENET1_RX_DATA0__GPIO2_IO00	0x74
> > /* SODIMM 55 */
> > +			MX6UL_PAD_ENET1_RX_DATA1__GPIO2_IO01	0x74
> > /* SODIMM 63 */
> > +		>;
> > +	};
> > +
> >  	pinctrl_gpmi_nand: gpmi-nand-grp {
> >  		fsl,pins = <
> >  			MX6UL_PAD_NAND_DATA00__RAWNAND_DATA00	0x10
> > 0
> > a9
> 
> Cheers
> 
> Marcel
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
