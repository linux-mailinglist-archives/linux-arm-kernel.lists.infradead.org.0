Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A07369C7EA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 05:25:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YzAZOsjxF7RiyY3rbp/MXSjCRoT/jdFRjz0cWdKNvH0=; b=Y+sXW6bwnb6lik
	6AARfrMsExMp2omO+vsQZRLV+TNoflIjG3zfng+Ik7AkFbOnOJUh4/aaecVsN1rcJUvziGElAYxQQ
	6Rhm1uHghiAxVJwiqn/Bm2iZ5LVtm3+s0si/PJduNyuQUbFootR60z/m5MthDimnCfPvVOb3GhseF
	dIvWSbDa19Vevv0OTx+OrzBZyiDvLpoBBhOXrMl+5OHB6fj3TFM07L2CPpxZ7p9Yfsz0sIIHuem/f
	eLE+ikNUFk4sOTirPu5UYswL3jz2VA8i98lbKfzwabWeeQYVO+L8Pxd4LhHN09+U30fqDb/LVbkKf
	1EnTTXKMKUQEhu76V3IQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i25cv-0000Ib-Nc; Mon, 26 Aug 2019 03:25:06 +0000
Received: from mail-eopbgr20067.outbound.protection.outlook.com ([40.107.2.67]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i25cg-0000I4-DB
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 03:24:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FkiKPttgbyjsH0OMrbZGeZRmjwmnbTt2qVaY3QwMgkHf3UsLLt+YK+mI8sZEV32QG1QgtTpTZQ+gpl+RZanxJeElrWxGfSdolax+f445bot5+TFo8czLrnytueMyzr38qvbKOUeJAK+h9r3kKmxaUr/Xsn2uFigS6EHrBmHTfKbbAjbpNMjoy6gXSWvW4rDe3vqZONHdf0HuzUyxKyKPPIgqKoZ+kYwugduXZd7SY7MEsDH/ECZ7Pv7iYnepOaPVUjp2wlpf8a1ZrrJrtpzZ4Q9ulBMQNaKAlsi4BFBd4cPycXGoWsgGnm2wu8HUq4/MSs3S804vF5YyD8rbrTS2Og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=N7H08g3LYldEgslkDwY9ERc9nL/RQgUu4EY7Cbs4ZIM=;
 b=Ay5RUhhQD+cRw74ofVBbcKvqTJf6opOEFJVw3aDvpc5BfLRcB5xd+dZJfoVBW3KwEa1Ea2Fk1U0m6fhk/O+sH9WOFzKQAWkeJDjxuoyHqSnAI/MWjXZOFD1HmQC+XM4ubFYd27VruR44InK6EzH6MxV3yMEN2LG5m+sHwo6TyBnad7zBHecntVOH038BAmHPbla72wCfCg0eK2JcCVKbXnX6axN4eZQ0LjwsIJKaSn7tnfl1KRfBJ+h3T14XlL1VgKAWcs5KmdGfZKcaHdPpwKJHT3aLrlMAbVHfMx5H6819tsSEDBBbBmjRDZzzp4HZcyUGw28BUqJAreNta/X8qw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=N7H08g3LYldEgslkDwY9ERc9nL/RQgUu4EY7Cbs4ZIM=;
 b=ARZ+J8cmjmWyRoI27vHbn+PIvvSZ+eyMIlGFlBIwzR6+KxtNvgOHYegg0dTWEE1Eb47bi13m2TJR3zuGFyvokmThbLej3pIRxFbLpH7+HfSa4U8vTBQ4am6LocB/zgtC4+GIXdFiI6zt5eS16oSxIv/5zHbUR++F5sfaDNA7Ml8=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB4962.eurprd04.prod.outlook.com (20.177.41.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.21; Mon, 26 Aug 2019 03:24:45 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::44b4:2932:8e73:d707]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::44b4:2932:8e73:d707%7]) with mapi id 15.20.2199.021; Mon, 26 Aug 2019
 03:24:45 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Rob Herring <robh+dt@kernel.org>, "sboyd@kernel.org" <sboyd@kernel.org>
Subject: RE: [PATCH V4 01/11] dt-bindings: firmware: imx-scu: new binding to
 parse clocks from device tree
Thread-Topic: [PATCH V4 01/11] dt-bindings: firmware: imx-scu: new binding to
 parse clocks from device tree
Thread-Index: AQHVV0rkvU9QEOBnMEyGPLioXcHHlqcKs0GAgAIY3cA=
Date: Mon, 26 Aug 2019 03:24:45 +0000
Message-ID: <AM0PR04MB42117031C494202F24A7439980A10@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <1566299605-15641-1-git-send-email-aisheng.dong@nxp.com>
 <1566299605-15641-2-git-send-email-aisheng.dong@nxp.com>
 <20190824191957.GF16308@X250.getinternet.no>
In-Reply-To: <20190824191957.GF16308@X250.getinternet.no>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d0632995-9ca6-4264-7aab-08d729d4f17e
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4962; 
x-ms-traffictypediagnostic: AM0PR04MB4962:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB496242314E79E98C9102950A80A10@AM0PR04MB4962.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 01415BB535
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(396003)(376002)(39860400002)(136003)(346002)(199004)(189003)(54534003)(186003)(71190400001)(6436002)(71200400001)(55016002)(66066001)(86362001)(81156014)(81166006)(9686003)(8676002)(5660300002)(76116006)(33656002)(8936002)(3846002)(6116002)(66946007)(66556008)(64756008)(66446008)(7696005)(2501003)(2906002)(76176011)(66476007)(486006)(6246003)(476003)(26005)(25786009)(110136005)(446003)(102836004)(4326008)(99286004)(54906003)(74316002)(305945005)(14444005)(14454004)(52536014)(11346002)(229853002)(256004)(7736002)(316002)(53936002)(478600001)(44832011)(53546011)(6506007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4962;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: xOzdqcCu3/PLxUUrbC0/uCbB77VGL2+41/7lcHCUQgLgv5NC1H3hg66v0iuK3zODPDpQ5pKny6Iz1eyBTO8ZcSUD1WRx78DCTf5AOsNaRurzb6uVY7lZyrNL+JVx4x2tN8QidwQs1zGwK+GcZZqmZJuV5Kk1xbFfhSou/4bq0zsfvK/hCH09HJDKLU6zPrRl+FgIJNgjPQjEkyCUEtRR9EtxeBBQ6vmq3w7pjjQKwPe+CyF7zcO96y0Apnx6qL8CDi8dT5ITxLKrksxEA7TIVMmbzsqtNW24DOl2LFA5UxVqvZ9No37lyOAH71QDlYjkEfeAtScS9oAR5kUsOQY79XDCFhVz1wVmDNm5STigxiusFepXINk1DN8Ghw3Iy3NMvHoM3XQmg3TXvqzgTANUpQ17nv2ybBfFQRiSHkNu5Kc=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d0632995-9ca6-4264-7aab-08d729d4f17e
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Aug 2019 03:24:45.6928 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fgMtr4lJwIMDJREYfB5KxDDUXYKUCtdzF87JrqLcMKTDprp2kVtgSx36nv3IZlFIQ8n668lgKCsR4iCI/0ELCw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4962
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_202450_456405_7BA544E0 
X-CRM114-Status: GOOD (  29.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.67 listed in list.dnswl.org]
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Shawn Guo <shawnguo@kernel.org>
> Sent: Sunday, August 25, 2019 3:20 AM
> Subject: Re: [PATCH V4 01/11] dt-bindings: firmware: imx-scu: new binding to
> parse clocks from device tree
> 
> On Tue, Aug 20, 2019 at 07:13:15AM -0400, Dong Aisheng wrote:
> > There's a few limitations on the original one cell clock binding
> > (#clock-cells = <1>) that we have to define some SW clock IDs for
> > device tree to reference. This may cause troubles if we want to use
> > common clock IDs for multi platforms support when the clock of those
> > platforms are mostly the same.
> > e.g. Current clock IDs name are defined with SS prefix.
> >
> > However the device may reside in different SS across CPUs, that means
> > the SS prefix may not valid anymore for a new SoC. Furthermore, the
> > device availability of those clocks may also vary a bit.
> >
> > For such situation, we want to eliminate the using of SW Clock IDs and
> > change to use a more close to HW one instead.
> > For SCU clocks usage, only two params required: Resource id + Clock Type.
> > Both parameters are platform independent. So we could use two cells
> > binding to pass those parameters,
> >
> > Cc: Rob Herring <robh+dt@kernel.org>
> > Cc: Stephen Boyd <sboyd@kernel.org>
> > Cc: Shawn Guo <shawnguo@kernel.org>
> > Cc: Sascha Hauer <kernel@pengutronix.de>
> > Cc: Michael Turquette <mturquette@baylibre.com>
> > Cc: devicetree@vger.kernel.org
> > Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
> 
> I'm fine with it.
> 
> Acked-by: Shawn Guo <shawnguo@kernel.org>
> 

And this one.

Stephen & Rob,
Do you have change to look at it?

We need this to be finalized early for the following work.

Regards
Aisheng


> Shawn
> 
> > ---
> > ChangeLog:
> > v3->v4:
> >  * add some comments for various clock types
> > v2->v3:
> >  * Changed to two cells binding and register all clocks in driver
> >    instead of parse from device tree.
> > v1->v2:
> >  * changed to one cell binding inspired by arm,scpi.txt
> >    Documentation/devicetree/bindings/arm/arm,scpi.txt
> >    Resource ID is encoded in 'reg' property.
> >    Clock type is encoded in generic clock-indices property.
> >    Then we don't have to search all the DT nodes to fetch
> >    those two value to construct clocks which is relatively
> >    low efficiency.
> >  * Add required power-domain property as well.
> > ---
> >  .../devicetree/bindings/arm/freescale/fsl,scu.txt  | 12 ++++++-----
> >  include/dt-bindings/firmware/imx/rsrc.h            | 23
> ++++++++++++++++++++++
> >  2 files changed, 30 insertions(+), 5 deletions(-)
> >
> > diff --git
> > a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> > b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> > index a575e42..8cee5bf 100644
> > --- a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> > +++ b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> > @@ -89,7 +89,10 @@ Required properties:
> >  			  "fsl,imx8qm-clock"
> >  			  "fsl,imx8qxp-clock"
> >  			followed by "fsl,scu-clk"
> > -- #clock-cells:		Should be 1. Contains the Clock ID value.
> > +- #clock-cells:		Should be either
> > +			2: Contains the Resource and Clock ID value.
> > +			or
> > +			1: Contains the Clock ID value. (DEPRECATED)
> >  - clocks:		List of clock specifiers, must contain an entry for
> >  			each required entry in clock-names
> >  - clock-names:		Should include entries "xtal_32KHz", "xtal_24MHz"
> > @@ -184,7 +187,7 @@ firmware {
> >
> >  		clk: clk {
> >  			compatible = "fsl,imx8qxp-clk", "fsl,scu-clk";
> > -			#clock-cells = <1>;
> > +			#clock-cells = <2>;
> >  		};
> >
> >  		iomuxc {
> > @@ -229,8 +232,7 @@ serial@5a060000 {
> >  	...
> >  	pinctrl-names = "default";
> >  	pinctrl-0 = <&pinctrl_lpuart0>;
> > -	clocks = <&clk IMX8QXP_UART0_CLK>,
> > -		 <&clk IMX8QXP_UART0_IPG_CLK>;
> > -	clock-names = "per", "ipg";
> > +	clocks = <&uart0_clk IMX_SC_R_UART_0 IMX_SC_PM_CLK_PER>;
> > +	clock-names = "ipg";
> >  	power-domains = <&pd IMX_SC_R_UART_0>;  }; diff --git
> > a/include/dt-bindings/firmware/imx/rsrc.h
> > b/include/dt-bindings/firmware/imx/rsrc.h
> > index 4e61f64..24c153d 100644
> > --- a/include/dt-bindings/firmware/imx/rsrc.h
> > +++ b/include/dt-bindings/firmware/imx/rsrc.h
> > @@ -547,4 +547,27 @@
> >  #define IMX_SC_R_ATTESTATION		545
> >  #define IMX_SC_R_LAST			546
> >
> > +/*
> > + * Defines for SC PM CLK
> > + */
> > +
> > +/* Normal device resource clock */
> > +#define IMX_SC_PM_CLK_SLV_BUS		0	/* Slave bus clock */
> > +#define IMX_SC_PM_CLK_MST_BUS		1	/* Master bus clock */
> > +#define IMX_SC_PM_CLK_PER		2	/* Peripheral clock */
> > +#define IMX_SC_PM_CLK_PHY		3	/* Phy clock */
> > +#define IMX_SC_PM_CLK_MISC		4	/* Misc clock */
> > +
> > +/* Special clock types which do not belong to above normal clock types */
> > +#define IMX_SC_PM_CLK_MISC0		0	/* Misc 0 clock */
> > +#define IMX_SC_PM_CLK_MISC1		1	/* Misc 1 clock */
> > +#define IMX_SC_PM_CLK_MISC2		2	/* Misc 2 clock */
> > +#define IMX_SC_PM_CLK_MISC3		3	/* Misc 3 clock */
> > +#define IMX_SC_PM_CLK_MISC4		4	/* Misc 4 clock */
> > +
> > +/* Special clock types for CPU/PLL/BYPASS only */
> > +#define IMX_SC_PM_CLK_CPU		2	/* CPU clock */
> > +#define IMX_SC_PM_CLK_PLL		4	/* PLL */
> > +#define IMX_SC_PM_CLK_BYPASS		4	/* Bypass clock */
> > +
> >  #endif /* __DT_BINDINGS_RSCRC_IMX_H */
> > --
> > 2.7.4
> >
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
