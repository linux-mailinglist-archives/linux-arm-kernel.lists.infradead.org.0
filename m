Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB363979EC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 14:50:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W526bvqpsMCIInhlUyQtHe/wFJ2rqC7ELdlK8eAT1Nw=; b=QkLgrROACU5eg4
	AcxVW8vk2B15YpeimT7FpuwAJuF7bV8d65HgHW//WVfFKhAdKdZTx6ErQZUBQM673Bw+sDfZmvPIo
	6mGhmBk9XeF/Eu9o9262ovPmRHDIlzbZHl6f8+tha/TMl1uXbrVBtUtD+yhbarNAJ2ORlFiuV/V4l
	WxIt3pSpCfy9Qzq7cJql/iPi2JATOStziX/xw7w1/XRTUo4YlItu9Hfy4/84qvDUngjCxDOec5T1z
	ZvzBqh6T/zJS+TKLUOrILo5BVnv/56O4kYGOh0unr5lkdjTgnoi5bV8vvqrU8r/t3cqD95yoSU8aL
	qAfmfaJnKIiH80Z0JUnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Q4A-0002IO-UO; Wed, 21 Aug 2019 12:50:19 +0000
Received: from mail-eopbgr30134.outbound.protection.outlook.com
 ([40.107.3.134] helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Q3v-0001Pq-Gg
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 12:50:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iDlZcG5SRcmOWa+Hy53BgPCW6RQcRIISwYa3XOFT2kp57osrw66ARg+EZcnLkOWb/orVSo8lAt6haptI/kSQ+iN07oKFW/4jeElu0Gna1UgGC0jTFNbKkxkWMPdYtTBNdH52GVvd9Km68JwPjsb1SqmnwlZ3+nFDkBwC64iF/Quf2sP1lDMZXNQvamSIxxW2fNz7dj4HwxqHe0nZ+PjNLKq5GFL/lyr+EDj9mfYJLfwzY8aSKZgG4aDVM2JpxETS89G3fj4xCUi8f/20XQubssf6v00nfh0bKGptFf5NmNPy98eNPrbRIYbgiP1kdozeKbV4XrGKR93MVsMDXQQ7XA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oBU/aNPlPu+bOiP5JoPcF5QZ0GSgwalm882I31f6wtk=;
 b=Kfx2xHvzgh+r91M+9wBMuij3xF8xxNEWZypiLccNA+aZKOvlbgaaiM7Wyc0ItR0wqYqgsDfaGRbAE5xmXkIj3AFMzRSmrnG2IMaXiLarfi2CDGNhQSU8PTPx0AvdI2w1FnrpYErQKZsIo6r3D9p1uq+9M4hVFFPJsGGZKTPLiFuEP9jm7sg3bUzwk0Vg+V4+MR8D8Cg7E9Jszub4JrEchEDsjg0VV4dvP6+hGus0oTjwzTooy2u52itDhZBp5IPmXiJrcbHNfGZKU6OJQprlYzimDm+Dnl/YoCJ1h5oUlD73jmNWFRXD1BH5BYtvYjAq1vWxoozC22t6+B5Q2tSulw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oBU/aNPlPu+bOiP5JoPcF5QZ0GSgwalm882I31f6wtk=;
 b=koU5cSZyUIgUdwYZHEnPxsgugsnX5D0bBSGQDCflp+ehwWHW1fikWnIB5ji2StLuZHE7ROBX+bc0X3JkV3WU5Mh2MQPw9RphJrKM3ZRpu5NXSx4NruOzGFvcDaerIl4NahC59LO5gjV4umPoJDhDOHJmja7sprdrbjGEkjh/aDA=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB3934.eurprd05.prod.outlook.com (52.134.6.27) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.18; Wed, 21 Aug 2019 12:49:50 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::f59f:a307:9c53:63b9]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::f59f:a307:9c53:63b9%6]) with mapi id 15.20.2178.018; Wed, 21 Aug 2019
 12:49:50 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: "shawnguo@kernel.org" <shawnguo@kernel.org>
Subject: Re: [PATCH v4 07/21] ARM: dts: imx7-colibri: fix 1.8V/UHS support
Thread-Topic: [PATCH v4 07/21] ARM: dts: imx7-colibri: fix 1.8V/UHS support
Thread-Index: AQHVURk5IAfU3hfTCUmCBg5Kg1vuIacCXYsAgAM+GIA=
Date: Wed, 21 Aug 2019 12:49:50 +0000
Message-ID: <94652d0c26732e159221bcfbca08e50e9e1f5f41.camel@toradex.com>
References: <20190812142105.1995-1-philippe.schenker@toradex.com>
 <20190812142105.1995-8-philippe.schenker@toradex.com>
 <20190819111847.GQ5999@X250>
In-Reply-To: <20190819111847.GQ5999@X250>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
x-originating-ip: [46.140.72.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 03ca9955-26ec-499a-cc16-08d726360e45
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0502MB3934; 
x-ms-traffictypediagnostic: VI1PR0502MB3934:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0502MB3934100F26D40273A8D5DBF6F4AA0@VI1PR0502MB3934.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1775;
x-forefront-prvs: 0136C1DDA4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39850400004)(366004)(376002)(136003)(346002)(396003)(189003)(199004)(5660300002)(86362001)(4326008)(2501003)(66066001)(99286004)(54906003)(14454004)(6246003)(53936002)(6116002)(3846002)(7416002)(25786009)(316002)(76176011)(71200400001)(71190400001)(186003)(102836004)(81156014)(2351001)(6506007)(1730700003)(6436002)(229853002)(486006)(44832011)(561944003)(76116006)(36756003)(478600001)(5640700003)(8676002)(305945005)(66476007)(91956017)(66446008)(66556008)(2616005)(64756008)(7736002)(11346002)(66946007)(118296001)(26005)(446003)(256004)(6512007)(81166006)(476003)(8936002)(6916009)(6486002)(2906002)(14444005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB3934;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: b4Hvlgy/jPOhvTlTR0Q9TAcYF7d4CZVZFTw+QHssH/UknTP7r876pRrLvxdtDTpeQ1kW/AFgCQ3VGlD8bmBX+DkEueu6GSIo0ngNcljLhxjup/ePDmVe8FTgrHly8bHslSyigocDZIv6VUcRlWZ5mIMp2mmDryndVHItxC5xk4z1njUMehQFutw9YV1+c3siuq/0mJL1K6yLjibWKZ78OmSDuSbBPQAdkwn0eL/HJRZNOEwiN36KVbhYFeliQYmVDs8VadF4LZ2xdL53l+h2iniGE7ht0Pyt+1BQlvHdpRnZMa7kY5ROx1p4Jfgr5W3j1M0vwgUG7etrRFX5I/HuC+JUsyNcVl8UIklew4PT/hxQRQOHfIHxu8WdIZQ10u6OuTutK9RaWqd8MZUx00gABIm0cNsBMt9Ego3den075cc=
Content-ID: <EAD4D12799869A40AA8BE48071850D29@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 03ca9955-26ec-499a-cc16-08d726360e45
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Aug 2019 12:49:50.4589 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: s/f+ViAN6W+OaR6l5FUDNtcmSpJlIvGcmsKvFmY2ky2MXjedCxuL1ZCwPQlQQF7Kcf+kmRLMawIvWwkSk/IYigKChBtrWsBvr9rkY+Am1zg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB3934
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_055003_568270_7B95E9C5 
X-CRM114-Status: GOOD (  20.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.134 listed in list.dnswl.org]
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
 Stefan Agner <stefan.agner@toradex.com>,
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

On Mon, 2019-08-19 at 13:18 +0200, Shawn Guo wrote:
> On Mon, Aug 12, 2019 at 02:21:25PM +0000, Philippe Schenker wrote:
> > From: Stefan Agner <stefan.agner@toradex.com>
> > 
> > Add pinmuxing and do not specify voltage restrictions for the usdhc
> > instance available on the modules edge connector. This allows to use
> > SD-cards with higher transfer modes if supported by the carrier
> > board.
> > 
> > Signed-off-by: Stefan Agner <stefan.agner@toradex.com>
> > Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
> > Acked-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> > 
> > ---
> > 
> > Changes in v4:
> > - Add Marcel Ziswiler's Ack
> > 
> > Changes in v3:
> > - Add new commit message from Stefan's proposal on ML
> > 
> > Changes in v2: None
> > 
> >  arch/arm/boot/dts/imx7-colibri.dtsi | 23 ++++++++++++++++++++++-
> >  1 file changed, 22 insertions(+), 1 deletion(-)
> > 
> > diff --git a/arch/arm/boot/dts/imx7-colibri.dtsi
> > b/arch/arm/boot/dts/imx7-colibri.dtsi
> > index 5347ed38acb2..c563bb821b5e 100644
> > --- a/arch/arm/boot/dts/imx7-colibri.dtsi
> > +++ b/arch/arm/boot/dts/imx7-colibri.dtsi
> > @@ -326,7 +326,6 @@
> >  &usdhc1 {
> >  	pinctrl-names = "default";
> >  	pinctrl-0 = <&pinctrl_usdhc1 &pinctrl_cd_usdhc1>;
> > -	no-1-8-v;
> >  	cd-gpios = <&gpio1 0 GPIO_ACTIVE_LOW>;
> >  	disable-wp;
> >  	vqmmc-supply = <&reg_LDO2>;
> > @@ -671,6 +670,28 @@
> >  		>;
> >  	};
> >  
> > +	pinctrl_usdhc1_100mhz: usdhc1grp_100mhz {
> > +		fsl,pins = <
> > +			MX7D_PAD_SD1_CMD__SD1_CMD	0x5a
> > +			MX7D_PAD_SD1_CLK__SD1_CLK	0x1a
> > +			MX7D_PAD_SD1_DATA0__SD1_DATA0	0x5a
> > +			MX7D_PAD_SD1_DATA1__SD1_DATA1	0x5a
> > +			MX7D_PAD_SD1_DATA2__SD1_DATA2	0x5a
> > +			MX7D_PAD_SD1_DATA3__SD1_DATA3	0x5a
> > +		>;
> > +	};
> > +
> > +	pinctrl_usdhc1_200mhz: usdhc1grp_200mhz {
> 
> No reference to them from usdhc1 node?
> 
> Shawn

No. I'd like to have that pinmuxing prepared for someone to add UHS
support to SD. Primary functionality of that pins is something else so
this will have priority.

Philippe

> 
> > +		fsl,pins = <
> > +			MX7D_PAD_SD1_CMD__SD1_CMD	0x5b
> > +			MX7D_PAD_SD1_CLK__SD1_CLK	0x1b
> > +			MX7D_PAD_SD1_DATA0__SD1_DATA0	0x5b
> > +			MX7D_PAD_SD1_DATA1__SD1_DATA1	0x5b
> > +			MX7D_PAD_SD1_DATA2__SD1_DATA2	0x5b
> > +			MX7D_PAD_SD1_DATA3__SD1_DATA3	0x5b
> > +		>;
> > +	};
> > +
> >  	pinctrl_usdhc3: usdhc3grp {
> >  		fsl,pins = <
> >  			MX7D_PAD_SD3_CMD__SD3_CMD		0x59
> > -- 
> > 2.22.0
> > 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
