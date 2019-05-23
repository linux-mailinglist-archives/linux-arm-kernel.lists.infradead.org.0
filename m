Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CF8F27593
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 07:35:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6DrvD40SwTfmdghAOv3RO89HiDOFN6gf1FqNyseyRXM=; b=tiO6TbT2x0y88j
	vU5mr87tBge+Q7kQbNqqO+WUq7O2yXAKKZM8luSttjo+4EabG9bq+X/APnxISCLebLyVEZcl14Pj0
	EOzTSVYkVFfSK44Rw/Ayn/XJV46y4LJchq6SrO5Kycmj/d7csZEzXMMWyogeT5LJls2ug0YH1025i
	vFn23hh59Y/+ROeN9rSgxrZO+fqNz3UpqijTBeOdtSmjsWYhYH4iMxqwmLO9vza5R9cl/9Y6uFScO
	8v2HNmSnplKGHv4uua5HirB9i9B2/4pE5lSouo1xXDHqEhlJGVkqBRywwdaglY+QCQo1PfHpYXUXU
	3RdzzVvGPY8uI/6JPh0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTgOD-00027f-OG; Thu, 23 May 2019 05:35:41 +0000
Received: from mail-eopbgr10063.outbound.protection.outlook.com ([40.107.1.63]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTgO6-00026x-3P
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 05:35:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nMH8RD8sl6yUuOIvyzYCW/6JsQEdmgntuaXBC/M1Nfw=;
 b=CNxpHC6cQDpS1KDIvrQXH5tYWaNtNFNv6fbFeq0DrW9KuHI/SX1ll2AmEIfNFfoMue9HJaFsC89tfkJNOgEVQFT3FAYHHf5coNB567gm8EP8cgI/hgzYjVQt4Mdh4YSPGUv+P9Orx+WEJhOgQwJdoxz3A9ElGVpTXczry17qyU4=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB5875.eurprd04.prod.outlook.com (20.178.203.81) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.16; Thu, 23 May 2019 05:35:30 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::c415:3cab:a042:2e13]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::c415:3cab:a042:2e13%6]) with mapi id 15.20.1900.020; Thu, 23 May 2019
 05:35:30 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Leonard Crestez <leonard.crestez@nxp.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>
Subject: RE: [PATCH V2 2/2] dt-bindings: clock: imx-lpcg: add support to parse
 clocks from device tree
Thread-Topic: [PATCH V2 2/2] dt-bindings: clock: imx-lpcg: add support to
 parse clocks from device tree
Thread-Index: AQHU/3scQmNSzEByRUu6j1Pj1Cb9paZ4UX7w
Date: Thu, 23 May 2019 05:35:30 +0000
Message-ID: <AM0PR04MB4211D5D802D1F216F73360E580010@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <1556645270-20648-1-git-send-email-aisheng.dong@nxp.com>
 <1556645270-20648-3-git-send-email-aisheng.dong@nxp.com>
 <AM0PR04MB64342D68FBE19FFE3A5BC618EE060@AM0PR04MB6434.eurprd04.prod.outlook.com>
In-Reply-To: <AM0PR04MB64342D68FBE19FFE3A5BC618EE060@AM0PR04MB6434.eurprd04.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f42ede5a-2e72-4aec-ca3b-08d6df407844
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5875; 
x-ms-traffictypediagnostic: AM0PR04MB5875:
x-microsoft-antispam-prvs: <AM0PR04MB587566B3CFAA3FA2E56A22AA80010@AM0PR04MB5875.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 00462943DE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(376002)(136003)(39860400002)(396003)(366004)(189003)(199004)(26005)(6246003)(229853002)(99286004)(186003)(74316002)(5660300002)(52536014)(81166006)(76176011)(8936002)(81156014)(71190400001)(86362001)(66066001)(478600001)(71200400001)(8676002)(476003)(44832011)(486006)(53936002)(7736002)(66476007)(66446008)(110136005)(64756008)(256004)(6116002)(66946007)(54906003)(66556008)(73956011)(76116006)(14454004)(6506007)(25786009)(53546011)(14444005)(305945005)(55016002)(6436002)(102836004)(316002)(446003)(2906002)(9686003)(68736007)(33656002)(3846002)(7696005)(2501003)(11346002)(4326008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5875;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: P4OPUsnL9CRVIJXitAmvsoHtQsRxl6tMRfLk3cG+M7XWpEmT0NQV+lw/X0eR8ubKOPitmkT/x0o2Ak7BbdKoQIcBh3ls2Au4h6eRdYbL6MhEEoENlVygIyUxWdR8+zFM+Heh/VoEgpLCtxlk9Umwfh5Fhu+JSi82UHUXXxfuM/n2y7qbXieX/DjR/Z4U7aqXLLMBufzmzGld/mItCL2q0+3QrsTRhc9ggsKu143/lxBkIGfIiqt+xNWVPI1MIBITwJUm879NVYFiOFhlDWg3USMA3m+wwwn+Ttq8eCudTa81FIy5GqwBp4qvRsYvccmBJvUkweXQS6SSh65jOovgfMibJj7LFmhpvilNhpCYFWBFg5fmmSLbWV1Dn3ZMXyjMeTHbsJQWemYzWGGKfLFa53sWZTFN1Fmy6lPJ4Nb/c5s=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f42ede5a-2e72-4aec-ca3b-08d6df407844
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 May 2019 05:35:30.7349 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5875
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_223534_488637_8C277A84 
X-CRM114-Status: GOOD (  19.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.63 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Leonard Crestez
> Sent: Monday, May 20, 2019 7:45 PM
> 
> On 30.04.2019 20:35, Aisheng Dong wrote:
> > MX8QM and MX8QXP LPCG Clocks are mostly the same except they may
> > reside in different subsystems across CPUs and also vary a bit on the
> availability.
> >
> > Same as SCU clock, we want to move the clock definition into device
> > tree which can fully decouple the dependency of Clock ID definition
> > from device tree and make us be able to write a fully generic lpcg clock
> driver.
> >
> > And we can also use the existence of clock nodes in device tree to
> > address the device and clock availability differences across different SoCs.
> >
> > diff --git a/Documentation/devicetree/bindings/clock/imx8qxp-lpcg.txt
> > b/Documentation/devicetree/bindings/clock/imx8qxp-lpcg.txt
> >
> >   Required properties:
> > +- compatible:		Should be one of:
> > +			  "fsl,imx8qxp-lpcg"
> > +			  "fsl,imx8qm-lpcg" followed by "fsl,imx8qxp-lpcg".
> > +- reg:			Address and length of the register set.
> > +- #clock-cells:		Should be 1. One LPCG supports multiple clocks.
> > +- clocks:		Input parent clocks phandle array for each clock.
> > +- bit-offset:		An integer array indicating the bit offset for each clock.
> > +- hw-autogate:		Boolean array indicating whether supports HW
> autogate for
> > +			each clock.
> > +- clock-output-names:	Shall be the corresponding names of the outputs.
> > +			NOTE this property must be specified in the same order
> > +			as the clock bit-offset and hw-autogate property.
> 
> Splitting the LPCG areas is good but describing "bit-offset" and similar inside
> devicetree seems excessively generic.
> 
> Perhaps we could have many smaller imx8qxp-lpcg-sdhc, imx8qxp-lpcg-enet
> etc where the actual clks inside each node are still defined in driver code.
> 

If that way, we would have too many more compatible strings per clocks
and we have to add more for new SoCs which I'd like to avoid.

> >   usdhc1: mmc@5b010000 {
> > @@ -44,8 +66,8 @@ usdhc1: mmc@5b010000 {
> >   	interrupt-parent = <&gic>;
> >   	interrupts = <GIC_SPI 232 IRQ_TYPE_LEVEL_HIGH>;
> >   	reg = <0x5b010000 0x10000>;
> > -	clocks = <&conn_lpcg IMX8QXP_CONN_LPCG_SDHC0_IPG_CLK>,
> > -		 <&conn_lpcg IMX8QXP_CONN_LPCG_SDHC0_PER_CLK>,
> > -		 <&conn_lpcg IMX8QXP_CONN_LPCG_SDHC0_HCLK>;
> > +	clocks = <&sdhc0_lpcg 1>,
> > +		 <&sdhc0_lpcg 0>,
> > +		 <&sdhc0_lpcg 2>;
> 
> This is less readable, can't we keep symbolic constants?

I'm scared to define more macros for device clocks.
It's usually a one time job and could be referenced easily by looking into
the definition of sdhc0_lpcg in DT.
So less readable may not be a real problem.

Regards
Dong Aisheng
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
