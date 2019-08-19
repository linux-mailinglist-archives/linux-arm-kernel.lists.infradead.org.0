Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A658D92395
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 14:37:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S3xMhAGR2B0gVSPL1rdoKntEp1DqBMGOarXCoOupU0Y=; b=Gux5M9a6Dryo7x
	zVrzS0wjjoczBoi2UrpR4KLg3Kmp/ga6ZPCSs27B+WBXNhWlQE/mz5pICjnMkooe/j8blYFT739Qk
	gUvjyIq9YZ8M1oS2yvUzu7gf1zF/kB6tgYcPKvw03tacLpv2QsWbxPqwTueMYsPB3LFWpXFS4kBu3
	JTY5jB19fb5eqU87zf1hFiRlpfXf6Y3JkxuS7t+XbSnwSpZxTRHuEfVSZlofSbszjqA0ISP1xlQKB
	vsYI11K4MPA4223CzFSC4CrLK0vjY8QDSMbuX87kkMfe1w5LJyRAFcJRDZjgySELUXrDg90Mfjsn5
	IeLfspgr3fGPRwfbwipg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzgu4-0003X0-KT; Mon, 19 Aug 2019 12:36:52 +0000
Received: from mail-eopbgr40066.outbound.protection.outlook.com ([40.107.4.66]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzgtv-0003Cs-Kw
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 12:36:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WzFQ5Pb2nOQHPMWeknqsLhr5Yo2NppRJDOXTZ/DAh7hlzntywacdL6elLKeHyO4ysJzTIHKoLRrYZVd2p00l7IqXrEI2W1wHLJZsQxexjlolQBAM9waQEHiJC5mGaA7jSw11GNRNocAwOFrD/3Qu9TxknmRgYhWNVF3u4Vgqxj0B+zyQUnPHXcCe0FKeWXmruXPjahXxV33KqqvRrVxRxjSPlnVDaRgSP3zcHj+BJvxvYGnbord5btwOlXyHUtbinWTRN32v5qv66mH5/ptsl+I36yXiz94h3I+Z2IEzPDFqYWWI+7M9WKq98e1m7qhys4UL+lEeFbRzeC0dDaO5WA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cz7RX9V2sBdhCfDyY5gs57smM8zshXCi+OyC0efeQsY=;
 b=oe/v/6POHDp3TUzV6zbKOVy/bTjspxP6c83oVsOAOTsjBYmlO8c/yxnDaSNSAL7ipxDf6sabr6Y/zqzHDOVKtUHYkvHovmQ+GR7j0Nzmw+APmyrbdfOkZfCojIPqj71PagpthDnJEAWWoOrnbEt2BlZJD0wpmrOs5zKGXBSNKBL72MCJKlLQJiknMAV4LFJGHoy9NvaOHg/ESpxz9Q5Tu3W8E+HFgBVLPvYodQyCfE0vvEdKG2DiVN5JyoeVOnsOgoD5cDpEl+jze7nmhFwQfTHzdEQojhNkTamwvtbmQ6w/ijvfQvoFmiiwYZLwgzyKtzJGkYLfAvE4xyGkzIQXUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cz7RX9V2sBdhCfDyY5gs57smM8zshXCi+OyC0efeQsY=;
 b=AacVxzDcCl4Jz0Vo+aLwIsCU5fJASxlzRyaZVZDTx8FSspEMKJ32HSje7yW0EiMI/71ohwPjuyEhY9asRg0d5/dedTC9lDWqMzWuAubdTdDMXEn3NZUmfgO5mQjwuTcDccJzCm4BiQduPVgeshOMDZUNFP1ywD7986pyYCTn3XU=
Received: from VI1PR04MB4094.eurprd04.prod.outlook.com (52.133.13.160) by
 VI1PR04MB6142.eurprd04.prod.outlook.com (20.179.27.15) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.18; Mon, 19 Aug 2019 12:36:36 +0000
Received: from VI1PR04MB4094.eurprd04.prod.outlook.com
 ([fe80::c85e:7409:9270:3c3c]) by VI1PR04MB4094.eurprd04.prod.outlook.com
 ([fe80::c85e:7409:9270:3c3c%7]) with mapi id 15.20.2178.018; Mon, 19 Aug 2019
 12:36:36 +0000
From: Daniel Baluta <daniel.baluta@nxp.com>
To: "dongas86@gmail.com" <dongas86@gmail.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>
Subject: Re: [PATCH v3 01/11] dt-bindings: firmware: imx-scu: new binding to
 parse clocks from device tree
Thread-Topic: [PATCH v3 01/11] dt-bindings: firmware: imx-scu: new binding to
 parse clocks from device tree
Thread-Index: AQHVO+pjpMhm5od2jUWUpLbDWVCffqbpm56AgAJt1oCAFpQwgA==
Date: Mon, 19 Aug 2019 12:36:36 +0000
Message-ID: <caab750569dc246c99e88bbe6d9ca137ae7f198f.camel@nxp.com>
References: <1563289265-10977-1-git-send-email-aisheng.dong@nxp.com>
 <1563289265-10977-2-git-send-email-aisheng.dong@nxp.com>
 <20190803144246.GM8870@X250.getinternet.no>
 <CAA+hA=Sm0MAHNwH1sZQfK8cO+3jLkue97u=ceFiUv34+qGos1Q@mail.gmail.com>
In-Reply-To: <CAA+hA=Sm0MAHNwH1sZQfK8cO+3jLkue97u=ceFiUv34+qGos1Q@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=daniel.baluta@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1a60cf5c-7366-49c4-23e8-08d724a1e02c
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB6142; 
x-ms-traffictypediagnostic: VI1PR04MB6142:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB61420C36210341CA3BE7AE73F9A80@VI1PR04MB6142.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0134AD334F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(366004)(376002)(396003)(136003)(39860400002)(54534003)(199004)(189003)(53546011)(6506007)(66446008)(64756008)(8676002)(91956017)(76116006)(102836004)(66556008)(25786009)(66476007)(81166006)(8936002)(186003)(6486002)(99286004)(26005)(118296001)(4326008)(53936002)(476003)(2616005)(81156014)(66946007)(316002)(11346002)(446003)(54906003)(486006)(44832011)(3846002)(110136005)(6246003)(6116002)(14444005)(71200400001)(36756003)(6436002)(50226002)(229853002)(76176011)(5660300002)(305945005)(2906002)(478600001)(2501003)(71190400001)(6512007)(86362001)(14454004)(66066001)(7736002)(256004)(99106002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB6142;
 H:VI1PR04MB4094.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: oYXytbRuxbTVRjB5A+IzUgc8hBhqo6Uax04MTYYiI5JbMt5/KG266/S7uTH8hlcFJuKijHGrYSObzipEdEkb390BGzx2lWOuNsZm5fowrNjJyEU729FHMes5ZxPhRYiArplwjHTWaxW5o3TkPY5bI0o5sAHVSAMW9E3lIeorDEZsVE1JoV2Oiv8UIrHTWqbGbKRXMuaH8KwJ72v6Hnyg0eoCev/J4IP4VmEan5iss1FFbRbEBsU7u9bPdXd6SWG1H6nJmLGp/1k7VSN+Wc0iXea4GDpCjeRI3dlgRc2kwgpUheG3xR1vcNLCwV5XLZPwW4j9DVB+nHfbWdenwt5/CB106ilCe2nbU8LQDyUgtpr80urY09WQKOL3L+0omFcslVzReacHlCp+1PemF4E1U1HTTXLcOBdDWmCKnYv30cE=
Content-ID: <00FD0AD8D6909240B0D78742C00FF69A@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a60cf5c-7366-49c4-23e8-08d724a1e02c
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Aug 2019 12:36:36.4358 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wmn1VLLqzAcx4/dI+FPikS6d9C61tfp7+nRTzA2WEFPjiZc789fZvBGplvvJCJmbHhWb6AWKd4Y0A20UcO+avw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6142
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_053643_832555_C998A6A3 
X-CRM114-Status: GOOD (  35.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2019-08-05 at 11:48 +0800, Dong Aisheng wrote:
> On Sun, Aug 4, 2019 at 11:49 AM Shawn Guo <shawnguo@kernel.org>
> wrote:
> > 
> > On Tue, Jul 16, 2019 at 11:00:55PM +0800, Dong Aisheng wrote:
> > > There's a few limitations on the original one cell clock binding
> > > (#clock-cells = <1>) that we have to define some SW clock IDs for
> > > device
> > > tree to reference. This may cause troubles if we want to use
> > > common
> > > clock IDs for multi platforms support when the clock of those
> > > platforms
> > > are mostly the same.
> > > e.g. Current clock IDs name are defined with SS prefix.
> > > 
> > > However the device may reside in different SS across CPUs, that
> > > means the
> > > SS prefix may not valid anymore for a new SoC. Furthermore, the
> > > device
> > > availability of those clocks may also vary a bit.
> > > 
> > > For such situation, we want to eliminate the using of SW Clock
> > > IDs and
> > > change to use a more close to HW one instead.
> > > For SCU clocks usage, only two params required: Resource id +
> > > Clock Type.
> > 
> > If this is how SCU firmware addresses the clock, I agree that it's
> > worth
> > witching to this new bindings, which describes the hardware (SCU
> > firmware in this case) better, IMO.
> > 
> > > Both parameters are platform independent. So we could use two
> > > cells binding
> > > to pass those parameters,
> > > 
> > > Cc: Rob Herring <robh+dt@kernel.org>
> > > Cc: Stephen Boyd <sboyd@kernel.org>
> > > Cc: Shawn Guo <shawnguo@kernel.org>
> > > Cc: Sascha Hauer <kernel@pengutronix.de>
> > > Cc: Michael Turquette <mturquette@baylibre.com>
> > > Cc: devicetree@vger.kernel.org
> > > Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
> > > ---
> > > ChangeLog:
> > > v2->v3:
> > >  * Changed to two cells binding and register all clocks in driver
> > >    instead of parse from device tree.
> > > v1->v2:
> > >  * changed to one cell binding inspired by arm,scpi.txt
> > >    Documentation/devicetree/bindings/arm/arm,scpi.txt
> > >    Resource ID is encoded in 'reg' property.
> > >    Clock type is encoded in generic clock-indices property.
> > >    Then we don't have to search all the DT nodes to fetch
> > >    those two value to construct clocks which is relatively
> > >    low efficiency.
> > >  * Add required power-domain property as well.
> > > ---
> > >  .../devicetree/bindings/arm/freescale/fsl,scu.txt       | 12
> > > +++++++-----
> > >  include/dt-bindings/firmware/imx/rsrc.h                 | 17
> > > +++++++++++++++++
> > >  2 files changed, 24 insertions(+), 5 deletions(-)
> > > 
> > > diff --git
> > > a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> > > b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> > > index 5d7dbab..351d335 100644
> > > --- a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> > > +++ b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> > > @@ -89,7 +89,10 @@ Required properties:
> > >                         "fsl,imx8qm-clock"
> > >                         "fsl,imx8qxp-clock"
> > >                       followed by "fsl,scu-clk"
> > > -- #clock-cells:              Should be 1. Contains the Clock ID
> > > value.
> > > +- #clock-cells:              Should be either
> > > +                     2: Contains the Resource and Clock ID
> > > value.
> > > +                     or
> > > +                     1: Contains the Clock ID value.
> > > (DEPRECATED)
> > >  - clocks:            List of clock specifiers, must contain an
> > > entry for
> > >                       each required entry in clock-names
> > >  - clock-names:               Should include entries
> > > "xtal_32KHz", "xtal_24MHz"
> > > @@ -162,7 +165,7 @@ firmware {
> > > 
> > >               clk: clk {
> > >                       compatible = "fsl,imx8qxp-clk", "fsl,scu-
> > > clk";
> > > -                     #clock-cells = <1>;
> > > +                     #clock-cells = <2>;
> > >               };
> > > 
> > >               iomuxc {
> > > @@ -192,8 +195,7 @@ serial@5a060000 {
> > >       ...
> > >       pinctrl-names = "default";
> > >       pinctrl-0 = <&pinctrl_lpuart0>;
> > > -     clocks = <&clk IMX8QXP_UART0_CLK>,
> > > -              <&clk IMX8QXP_UART0_IPG_CLK>;
> > > -     clock-names = "per", "ipg";
> > > +     clocks = <&uart0_clk IMX_SC_R_UART_0 IMX_SC_PM_CLK_PER>;
> > > +     clock-names = "ipg";
> > >       power-domains = <&pd IMX_SC_R_UART_0>;
> > >  };
> > > diff --git a/include/dt-bindings/firmware/imx/rsrc.h
> > > b/include/dt-bindings/firmware/imx/rsrc.h
> > > index 4e61f64..fbeaca7 100644
> > > --- a/include/dt-bindings/firmware/imx/rsrc.h
> > > +++ b/include/dt-bindings/firmware/imx/rsrc.h
> > > @@ -547,4 +547,21 @@
> > >  #define IMX_SC_R_ATTESTATION         545
> > >  #define IMX_SC_R_LAST                        546
> > > 
> > > +/*
> > > + * Defines for SC PM CLK
> > > + */
> > > +#define IMX_SC_PM_CLK_SLV_BUS                0       /* Slave
> > > bus clock */
> > > +#define IMX_SC_PM_CLK_MST_BUS                1       /* Master
> > > bus clock */
> > > +#define IMX_SC_PM_CLK_PER            2       /* Peripheral clock
> > > */
> > > +#define IMX_SC_PM_CLK_PHY            3       /* Phy clock */
> > > +#define IMX_SC_PM_CLK_MISC           4       /* Misc clock */
> 
> This is for typical device resource.
> 
> > > +#define IMX_SC_PM_CLK_MISC0          0       /* Misc 0 clock */
> > > +#define IMX_SC_PM_CLK_MISC1          1       /* Misc 1 clock */
> > > +#define IMX_SC_PM_CLK_MISC2          2       /* Misc 2 clock */
> > > +#define IMX_SC_PM_CLK_MISC3          3       /* Misc 3 clock */
> > > +#define IMX_SC_PM_CLK_MISC4          4       /* Misc 4 clock */
> 
> This is for some special clock types which do not belong to above
> normal clock types.
> Used very rare in SCU firmware.
> e.g.
> enet0_mac0_rxclk SC_R_ENE T_0 / SC_PM_CL K_MISC0
> 
> > > +#define IMX_SC_PM_CLK_CPU            2       /* CPU clock */
> > > +#define IMX_SC_PM_CLK_PLL            4       /* PLL */
> > > +#define IMX_SC_PM_CLK_BYPASS         4       /* Bypass clock */
> 
> They're for specific clock types for CPU/PLL/BYPASS only.

Hi Aisheng,

Yes, please separate this types of clocks in their own sections with
proper description.

> 
> > 
> > It seems that there are several sets of clock type which apply to
> > different resources/devices?  If so, can you separate them a bit
> > with
> > some comments to make the list easier for readers?
> > 
> 
> 
So, please send v4 with all comments fixed. I can help with testing.
I am also intrested in seeing this get in!

thanks,
Daniel.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
