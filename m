Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 805C627914
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 11:20:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=alBDpx1mXewehv5X6CS7sLG699zigq6W1c0GpTUN66c=; b=ZKQWFINV64eAai
	++qWS9siTSPXIgOtM1lajqFWZAMiqxwrv+Nq5YpMWTgUa8wMXXqf22NAjlMmSP6mkGIw7uudvplwJ
	eM7LjV6/FLiVg2lq2PkATrPtg0vzNebcqCviyWgP74OznPP0Vs9EMiSY23kdGRVfU8Em88ewOVK44
	reOXA5/M6XiDSKnuT6wTht1PtPmioh8E0eL4DcLGxUruRPbW7JRDsmMt5fhaUzia7IrVOntOx0/Zk
	SlJNKLueSL51o/LsAxWeIKAlWPTDN4IqpUBk0/8usv4r7ZmqnNZbdKp/J6ntewSv4WpVsyCqqEF1w
	RCEwEmyFoNaKQ/4vfxqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTjtd-0003AY-3I; Thu, 23 May 2019 09:20:21 +0000
Received: from mail-eopbgr60066.outbound.protection.outlook.com ([40.107.6.66]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTjtM-0001pf-Dj; Thu, 23 May 2019 09:20:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QtaSH7hJXC9cObCtJhz/YFYtWUSBibeamdSR5Eke58Q=;
 b=Vzg85cbZ5MOKBu6Lh1MitvepoC6RsdFducqk9/SbRTJ/hkMqNUPhkMF0arZxWl43GK5/U7KJuihpLipV8QsMHaiRoCO/mXEijZIPK9KiEx8P3Ik+CTQv/7UFtOjWoN5F7V68yyxtUA6xcPsdLdej+/hbEoYZcaMGEanTbMatih0=
Received: from AM0PR0402MB3556.eurprd04.prod.outlook.com (52.133.43.147) by
 AM0PR0402MB3763.eurprd04.prod.outlook.com (52.133.39.15) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.18; Thu, 23 May 2019 09:19:59 +0000
Received: from AM0PR0402MB3556.eurprd04.prod.outlook.com
 ([fe80::f891:76d:8a6a:3dfd]) by AM0PR0402MB3556.eurprd04.prod.outlook.com
 ([fe80::f891:76d:8a6a:3dfd%2]) with mapi id 15.20.1922.016; Thu, 23 May 2019
 09:19:59 +0000
From: Kuldeep Singh <kuldeep.singh@nxp.com>
To: Schrempf Frieder <frieder.schrempf@kontron.de>, Shawn Guo
 <shawnguo@kernel.org>
Subject: RE: [EXT] Re: [PATCH] arm64: dts: ls1012a: Add QSPI support for
 ls1012a
Thread-Topic: [EXT] Re: [PATCH] arm64: dts: ls1012a: Add QSPI support for
 ls1012a
Thread-Index: AQHVC90UTCiz+BGzB0G+bjSJzqfmRKZ4b4UAgAAE1QCAAAFicA==
Date: Thu, 23 May 2019 09:19:59 +0000
Message-ID: <AM0PR0402MB3556C556ADC2EEF1117CC880E0010@AM0PR0402MB3556.eurprd04.prod.outlook.com>
References: <20190516114807.30817-1-kuldeep.singh@nxp.com>
 <20190523084340.GM9261@dragon>
 <d3605699-24ea-a071-93da-1c04c7e40f1b@kontron.de>
In-Reply-To: <d3605699-24ea-a071-93da-1c04c7e40f1b@kontron.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=kuldeep.singh@nxp.com; 
x-originating-ip: [92.120.1.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f74254ac-9f72-485c-7e5f-08d6df5fd432
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR0402MB3763; 
x-ms-traffictypediagnostic: AM0PR0402MB3763:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <AM0PR0402MB376392C070BEB08A5AC4E823E0010@AM0PR0402MB3763.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1824;
x-forefront-prvs: 00462943DE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(396003)(366004)(39860400002)(346002)(376002)(13464003)(199004)(189003)(81166006)(7736002)(8936002)(66066001)(8676002)(14444005)(81156014)(256004)(76116006)(7696005)(76176011)(305945005)(33656002)(966005)(71190400001)(66946007)(73956011)(53546011)(102836004)(71200400001)(14454004)(478600001)(66556008)(64756008)(66446008)(66476007)(6506007)(45080400002)(2906002)(52536014)(186003)(26005)(446003)(86362001)(5660300002)(6246003)(74316002)(54906003)(53936002)(110136005)(476003)(9686003)(229853002)(4326008)(6116002)(316002)(6436002)(11346002)(99286004)(3846002)(6306002)(25786009)(68736007)(55016002)(486006)(44832011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR0402MB3763;
 H:AM0PR0402MB3556.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: cpET23o1pSQgxTilM1kBsLWGxbCN/0+km6W6X2Quspv4C7fNl1prLJe7jQiEjS6WBV1nwj3sSYm2doZskScx2DXJdVFg3pIcIMat0MsYquo3ySmEfPvoUeL2blNRSeVBtdAuMYyV4S1iZQOtZGwu+kaeVuKRU8Xj7obzOaTSgziqqT+VLWYa/YycD7wt+hEz1z9gSatDWc0CZfWJ3PDm7MIA4s+O0aJLAQM00WzXoK2Ndb+f9ErJtHAIQ+XZraz1sujQ2M7yZ+ZGBBk7lbEEPg+X7LnbQzQ1r44uqk9XbUfjVsQaxpxD30AaiaINyEUUep8/42P/v0qoAv3sNviToy0+c4hepZTmvjWEJnn9XMV29HetdW3kF1BuwPkdn+O8UviMspVZSC2ziYbHmbX84Cy9StDvYNJ7VpnpsBO+c0Y=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f74254ac-9f72-485c-7e5f-08d6df5fd432
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 May 2019 09:19:59.3670 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR0402MB3763
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_022004_544666_F03503DF 
X-CRM114-Status: GOOD (  17.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "bbrezillon@kernel.org" <bbrezillon@kernel.org>,
 Ashish Kumar <ashish.kumar@nxp.com>, "broonie@kernel.org" <broonie@kernel.org>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Shawn and Frieder,

> -----Original Message-----
> From: Schrempf Frieder [mailto:frieder.schrempf@kontron.de]
> Sent: Thursday, May 23, 2019 2:31 PM
> To: Shawn Guo <shawnguo@kernel.org>; Kuldeep Singh
> <kuldeep.singh@nxp.com>
> Cc: devicetree@vger.kernel.org; bbrezillon@kernel.org; Ashish Kumar
> <ashish.kumar@nxp.com>; broonie@kernel.org; linux-
> mtd@lists.infradead.org; linux-arm-kernel@lists.infradead.org
> Subject: [EXT] Re: [PATCH] arm64: dts: ls1012a: Add QSPI support for ls1012a
> 
> Caution: EXT Email
> 
> On 23.05.19 10:43, Shawn Guo wrote:
> > On Thu, May 16, 2019 at 11:47:04AM +0000, Kuldeep Singh wrote:
> >> QSPI support is added for kernel version greater than 5.0 and
> >> supports quad mode defined by TX-WIDTH = <4>, RX-WIDTH = <4>
> >>
> >> RDB/QDS has one 64MB flash from SPANSION(s25fs512s)
> >>
> >> Signed-off-by: Ashish Kumar <ashish.kumar@nxp.com>
> >> Signed-off-by: Kuldeep Singh <kuldeep.singh@nxp.com>
> >> ---
> >> Dependency on
> >>
> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fpat
> >>
> chwork.ozlabs.org%2Fpatch%2F1100471%2F&amp;data=02%7C01%7Ckuldee
> p.sin
> >>
> gh%40nxp.com%7C5f9556e9b9b943c5568608d6df5d2e40%7C686ea1d3bc2b4
> c6fa92
> >>
> cd99c5c301635%7C0%7C0%7C636941988633482881&amp;sdata=Pj4XNJHmhK
> HtBrzg
> >> eC%2BNA7Lkl3BDEdL1uEVqAnoPcS8%3D&amp;reserved=0
> >> Dependency on
> >>
> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fpat
> >>
> chwork.ozlabs.org%2Fpatch%2F1100472%2F&amp;data=02%7C01%7Ckuldee
> p.sin
> >>
> gh%40nxp.com%7C5f9556e9b9b943c5568608d6df5d2e40%7C686ea1d3bc2b4
> c6fa92
> >>
> cd99c5c301635%7C0%7C0%7C636941988633482881&amp;sdata=zZ4jCpNyxQl
> CL6uU
> >> PK8LG%2BVV8jWOCBg45ZrGoqT3gnU%3D&amp;reserved=0
> >>
> >>   .../arm64/boot/dts/freescale/fsl-ls1012a-frdm.dts | 15
> +++++++++++++++
> >>   .../arm64/boot/dts/freescale/fsl-ls1012a-frwy.dts | 15
> +++++++++++++++
> >>   arch/arm64/boot/dts/freescale/fsl-ls1012a-qds.dts | 15
> +++++++++++++++
> >>   arch/arm64/boot/dts/freescale/fsl-ls1012a-rdb.dts | 15
> +++++++++++++++
> >>   arch/arm64/boot/dts/freescale/fsl-ls1012a.dtsi    | 15
> +++++++++++++++
> >>   5 files changed, 75 insertions(+)
> >>
> >> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1012a-frdm.dts
> >> b/arch/arm64/boot/dts/freescale/fsl-ls1012a-frdm.dts
> >> index f90c040fd5e8..8826278b37bf 100644
> >> --- a/arch/arm64/boot/dts/freescale/fsl-ls1012a-frdm.dts
> >> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1012a-frdm.dts
> >> @@ -61,6 +61,21 @@
> >>      status = "okay";
> >>   };
> >>
> >> +&qspi {
> >
> > Please sort these labeling nodes alphabetically.  That said, &qspi
> > should go after &i2c0.

Ok, will update in next version

> >
> >> +    status = "okay";
> >> +
> >> +    qflash0: flash@0 {
> >> +            compatible = "spansion,m25p80", "jedec,spi-nor";
> >> +            #address-cells = <1>;
> >> +            #size-cells = <1>;
> >> +            m25p,fast-read;
> >> +            spi-max-frequency = <20000000>;
> >> +            spi-rx-bus-width = <4>;
> >> +            spi-tx-bus-width = <4>;
> >> +            reg = <0>;
> >> +    };
> >> +};
> >> +
> >>   &i2c0 {
> >>      status = "okay";
> >>
> >> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1012a-frwy.dts
> >> b/arch/arm64/boot/dts/freescale/fsl-ls1012a-frwy.dts
> >> index 8749634c55ee..0246e8c97628 100644
> >> --- a/arch/arm64/boot/dts/freescale/fsl-ls1012a-frwy.dts
> >> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1012a-frwy.dts
> >> @@ -20,6 +20,21 @@
> >>      status = "okay";
> >>   };
> >>
> >> +&qspi {
> >> +    status = "okay";
> >> +
> >> +    qflash0: flash@0 {
> >> +            compatible = "spansion,m25p80", "jedec,spi-nor";
> >> +            #address-cells = <1>;
> >> +            #size-cells = <1>;
> >> +            m25p,fast-read;
> >> +            spi-max-frequency = <20000000>;
> >> +            spi-rx-bus-width = <4>;
> >> +            spi-tx-bus-width = <4>;
> >> +            reg = <0>;
> >> +    };
> >> +};
> >> +
> >>   &i2c0 {
> >>      status = "okay";
> >>   };
> >> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1012a-qds.dts
> >> b/arch/arm64/boot/dts/freescale/fsl-ls1012a-qds.dts
> >> index 2fb1cb1f7d8f..c304fa20c1c9 100644
> >> --- a/arch/arm64/boot/dts/freescale/fsl-ls1012a-qds.dts
> >> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1012a-qds.dts
> >> @@ -90,6 +90,21 @@
> >>      };
> >>   };
> >>
> >> +&qspi {
> >> +    status = "okay";
> >> +
> >> +    qflash0: flash@0 {
> >> +            compatible = "spansion,m25p80", "jedec,spi-nor";
> >> +            #address-cells = <1>;
> >> +            #size-cells = <1>;
> >> +            m25p,fast-read;
> >> +            spi-max-frequency = <20000000>;
> >> +            spi-rx-bus-width = <4>;
> >> +            spi-tx-bus-width = <4>;
> >> +            reg = <0>;
> >> +    };
> >> +};
> >> +
> >>   &duart0 {
> >>      status = "okay";
> >>   };
> >> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1012a-rdb.dts
> >> b/arch/arm64/boot/dts/freescale/fsl-ls1012a-rdb.dts
> >> index 5edb1e137a52..6017e9cfe40a 100644
> >> --- a/arch/arm64/boot/dts/freescale/fsl-ls1012a-rdb.dts
> >> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1012a-rdb.dts
> >> @@ -38,3 +38,18 @@
> >>   &sata {
> >>      status = "okay";
> >>   };
> >> +
> >> +&qspi {
> >> +    status = "okay";
> >> +
> >> +    qflash0: flash@0  {
> >> +            compatible = "spansion,m25p80", "jedec,spi-nor";
> >> +            #address-cells = <1>;
> >> +            #size-cells = <1>;
> >> +            m25p,fast-read;
> >> +            spi-max-frequency = <20000000>;
> >> +            spi-rx-bus-width = <4>;
> >> +            spi-tx-bus-width = <4>;
> >> +            reg = <0>;
> >> +    };
> >> +};
> >> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1012a.dtsi
> >> b/arch/arm64/boot/dts/freescale/fsl-ls1012a.dtsi
> >> index ec6257a5b251..268268c6a149 100644
> >> --- a/arch/arm64/boot/dts/freescale/fsl-ls1012a.dtsi
> >> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1012a.dtsi
> >> @@ -350,6 +350,21 @@
> >>                      status = "disabled";
> >>              };
> >>
> >> +            qspi: spi@1550000 {
> >
> > Please sort node with unit-address in that address.  That said, it
> > should go before esdhc@1560000.

Ok

> >
> >> +                    compatible = "fsl,ls1021a-qspi", "fsl,ls1012a-qspi";
> >> +                    #address-cells = <1>;
> >> +                    #size-cells = <0>;
> >> +                    reg = <0x0 0x1550000 0x0 0x10000>,
> >> +                            <0x0 0x40000000 0x0 0x10000000>;
> >> +                    reg-names = "QuadSPI", "QuadSPI-memory";
> >> +                    interrupts = <GIC_SPI 99 IRQ_TYPE_LEVEL_HIGH>;
> >> +                    clock-names = "qspi_en", "qspi";
> >> +                    clocks = <&clockgen 4 1>, <&clockgen 4 1>;
> >> +                    big-endian;
> >> +                    fsl,qspi-has-second-chip;
> >
> > Undocumented property?
> 
> Both properties, "fsl,qspi-has-second-chip" and "big-endian" are deprecated.

Will remove both in next version
> 
> See:
> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fgit.ke
> rnel.org%2Fpub%2Fscm%2Flinux%2Fkernel%2Fgit%2Ftorvalds%2Flinux.git%2
> Fcommit%2F%3Fid%3D78df30808961cd32f0517c7469886386b0680852&amp;d
> ata=02%7C01%7Ckuldeep.singh%40nxp.com%7C5f9556e9b9b943c5568608d6
> df5d2e40%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C6369419886
> 33482881&amp;sdata=CDxhRylo%2FLO2rHtEUu5DhtFiBr%2BWFRQl0%2BJFVJ
> T7y%2B0%3D&amp;reserved=0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
