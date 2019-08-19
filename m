Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 128DE923B2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 14:43:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gASH5R6X6D1bSPw+ZeBcgrrrHTZ0gvXnz2xrLJLAvLI=; b=CxE7Ki76ZyJ5mF
	ch2kWi20sFPmAtow7e7boz63tZbu7wI4AqinQ6VrgDiYi0lrS39hfirh5kfJPsZN426l7Xg4FnsYP
	Q0YYzmVg44G9s7x5OTNCksGr1vNkmBucuzNneawJfuRQUvCbNzuxhGRt+cKVdLd1ausS4UNQ9sblI
	J5EUkHvftwYxM0bCMbIgELdhEz5dWKQoKHirUJg2bwGqe0Ej+c68GRDVztwj6kx5ns0ZOq5/PBM9h
	RVRFu366Q1SWTo9twr2+tliuYtURbG1LPOjnLpPaNATqrCmOjJKVD3chvEMth+eli7ALdk/eZbB6M
	esYXyjLqeA1l/UFtrwig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzh09-0000Xg-FQ; Mon, 19 Aug 2019 12:43:09 +0000
Received: from mail-eopbgr70040.outbound.protection.outlook.com ([40.107.7.40]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzh01-0000XH-GM
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 12:43:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UVY8ODTNbx4S7zzsf5zFkmBhfTJPG0S5XBlC+8KXeT8z+Bie7Sl1EOgcRPDUdBUvTlOgLdVLRjSZIBBuA3iIdh51ejcjSWhKtz0PnKBUQ+NhA6ydrnpU2oOpo9ur0DB/ofGMZaNZYKnDX+dQyLYBMjRj1QUHZ9MHnecuuo57aM1p1L+NklLjtnuuPZ6mFnrXS6iz71heAtH1U0FJooJca5SYHFVZqXWxlxNixveEHaHS99XTYcDv1XixXkpd/+c+t1QBFPbcg7nY8coXKFfO/kAaQnt1ceL5StqrUCD739DU6FZmVVpMXEkc97H8hJaoonHnDQA70dbEdtdTdDFWgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6TIQKApwY5DR7zhg8nMkLdOKTIlLOKbvYTZ3CI5d6ow=;
 b=i52GwjWiZ31H9hgEDXSw9wsI/RK6GKlfUK53qBBo1UowceGT+0u3VgA8cvOnZGWGj4rhJcJtzcan6EW4S2xmYZb+xwnoPRrNrN0L3r7LduhNwDSbGrjlB94QiKwMFDSuq77LWkJp2ICxDKmD6x0qXWz6zdOWqdRzdpm0SF8aFXiohy+wVirG2bxUndq241WZO5OgO01vfFxckE8s5tM/JPBpNx163J4vXbcM0nqOKnmaRHspQHAEMyviTR+hQ2T2G/ww3OnJuOVPsk+24orpnuRspBkPXNsPLh9pcS7xfxaQ6kvDR4BJAxZVxqsGhL63LslwtBq/AtuFoj/uG/3fMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6TIQKApwY5DR7zhg8nMkLdOKTIlLOKbvYTZ3CI5d6ow=;
 b=BfRrqhgijeVVzORnmVvJw4+PHe5cOwIhdu7Vm2aShCg4KehTJT0tU18iz5jUKhFLejTk2OyPZ3Z0nhlRtGfkHcMZjNoKhBmb+z3HieGK2RDtRBwdMA0ZhWYJBHbTA35thoMXL4sUvSyUahctdKliIdns4tWu3l7gH6WND4KHo70=
Received: from VI1PR04MB4094.eurprd04.prod.outlook.com (52.133.13.160) by
 VI1PR04MB4542.eurprd04.prod.outlook.com (20.177.55.89) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Mon, 19 Aug 2019 12:42:57 +0000
Received: from VI1PR04MB4094.eurprd04.prod.outlook.com
 ([fe80::c85e:7409:9270:3c3c]) by VI1PR04MB4094.eurprd04.prod.outlook.com
 ([fe80::c85e:7409:9270:3c3c%7]) with mapi id 15.20.2178.018; Mon, 19 Aug 2019
 12:42:57 +0000
From: Daniel Baluta <daniel.baluta@nxp.com>
To: Aisheng Dong <aisheng.dong@nxp.com>, "linux-clk@vger.kernel.org"
 <linux-clk@vger.kernel.org>
Subject: Re: [PATCH v3 02/11] dt-bindings: clock: imx-lpcg: add support to
 parse clocks from device tree
Thread-Topic: [PATCH v3 02/11] dt-bindings: clock: imx-lpcg: add support to
 parse clocks from device tree
Thread-Index: AQHVO+pjaalMbukSV0m/uPLkqZx8HqcCn2yA
Date: Mon, 19 Aug 2019 12:42:57 +0000
Message-ID: <e5214ff9ae6d431052bc871d4b7c22dc0c2c2829.camel@nxp.com>
References: <1563289265-10977-1-git-send-email-aisheng.dong@nxp.com>
 <1563289265-10977-3-git-send-email-aisheng.dong@nxp.com>
In-Reply-To: <1563289265-10977-3-git-send-email-aisheng.dong@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=daniel.baluta@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 99447afa-8aa3-4141-018f-08d724a2c375
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB4542; 
x-ms-traffictypediagnostic: VI1PR04MB4542:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB454243C2FBD8767B72245FDDF9A80@VI1PR04MB4542.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0134AD334F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(366004)(136003)(376002)(346002)(39860400002)(189003)(199004)(54534003)(53936002)(2906002)(44832011)(99286004)(76176011)(6512007)(25786009)(76116006)(36756003)(118296001)(66446008)(66946007)(66476007)(229853002)(6116002)(3846002)(486006)(446003)(66066001)(6486002)(2616005)(2501003)(476003)(6436002)(5660300002)(6246003)(4326008)(14454004)(50226002)(6506007)(316002)(11346002)(8936002)(7736002)(81166006)(8676002)(81156014)(26005)(305945005)(186003)(71190400001)(71200400001)(256004)(14444005)(478600001)(54906003)(91956017)(110136005)(86362001)(102836004)(64756008)(66556008)(99106002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4542;
 H:VI1PR04MB4094.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 0qI3Clqr5tolWxYJiT1Myfw7icVOQj2gG2BDTbm3Y0KmIuZoNiR0wVzHlAUPifmlJeqMbZ4iyMfLTmt0AVNzX3x1SscXereqO+i91nlO7cHNEhkUtxzmFXgvIJg113Umi9R0uESoosdFVWHZxSeppfPjCmPMQIyIvW21MGz23lEJEHPAhb9NWrkvnf/PP1zHk8KPpIbW++J8e5mvbA9HECa3V6mTd8+vdqbP4LawW3OICTULd+01eOTbzajLbmIHF69huY8yURU/ozAwMKgCBxmL4ExNAwrQUvgxNxtwOUEFxg2OpWKGyPECwvtK+A+fJlUBsy1fA3P6L6J7OO7W1xllUVXviSRefon2s7ZlY8Pc2GQZdL439FhmcUEufLyaMnj1otZ3vEyYHM53xHaRwnHSjXUVRDAvHueFV4S2StU=
Content-ID: <FAC9B6185F4BA148960D556F73713281@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 99447afa-8aa3-4141-018f-08d724a2c375
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Aug 2019 12:42:57.7112 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kXZhMonm6xaHsu+LdzpBObj9GD5QttMIRXOYKC4Omj9rnaLfNLV7IvFleoBRDNd/9ZVAAlzI0j/XrOD1xmZ8bg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4542
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_054301_551048_3C5D1051 
X-CRM114-Status: GOOD (  23.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.40 listed in list.dnswl.org]
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "daniel.baluta@gmail.com" <daniel.baluta@gmail.com>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2019-07-16 at 23:00 +0800, Dong Aisheng wrote:
> MX8QM and MX8QXP LPCG Clocks are mostly the same except they may
> reside
> in different subsystems across CPUs and also vary a bit on the
> availability.
> 
> Same as SCU clock, we want to move the clock definition into device
> tree
> which can fully decouple the dependency of Clock ID definition from
> device
> tree and make us be able to write a fully generic lpcg clock driver.
> 
> And we can also use the existence of clock nodes in device tree to
> address
> the device and clock availability differences across different SoCs.
> 
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Sascha Hauer <kernel@pengutronix.de>
> Cc: Michael Turquette <mturquette@baylibre.com>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
> ---
> ChangeLog:
> v2->v3:
>  * no changes
> v1->v2:
>  * Update example
>  * Add power domain property
> ---
>  .../devicetree/bindings/clock/imx8qxp-lpcg.txt     | 34
> ++++++++++++++++++----
>  1 file changed, 28 insertions(+), 6 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/clock/imx8qxp-lpcg.txt 
> b/Documentation/devicetree/bindings/clock/imx8qxp-lpcg.txt
> index 965cfa4..6fc2fd8 100644
> --- a/Documentation/devicetree/bindings/clock/imx8qxp-lpcg.txt
> +++ b/Documentation/devicetree/bindings/clock/imx8qxp-lpcg.txt
> @@ -11,6 +11,21 @@ enabled by these control bits, it might still not
> be running based
>  on the base resource.
>  
>  Required properties:
> +- compatible:		Should be one of:
> +			  "fsl,imx8qxp-lpcg"
> +			  "fsl,imx8qm-lpcg" followed by "fsl,imx8qxp-
> lpcg".
> +- reg:			Address and length of the register set.
> +- #clock-cells:		Should be 1. One LPCG supports multiple
> clocks.
> +- clocks:		Input parent clocks phandle array for each
> clock.
> +- bit-offset:		An integer array indicating the bit
> offset for each clock.
> +- hw-autogate:		Boolean array indicating whether
> supports HW autogate for
> +			each clock.
> +- clock-output-names:	Shall be the corresponding names of the
> outputs.
> +			NOTE this property must be specified in the
> same order
> +			as the clock bit-offset and hw-autogate
> property.
> +- power-domains:	Should contain the power domain used by this
> clock.
> +
> +Legacy binding (DEPRECATED):
>  - compatible:	Should be one of:
>  		  "fsl,imx8qxp-lpcg-adma",
>  		  "fsl,imx8qxp-lpcg-conn",
> @@ -33,10 +48,17 @@ Examples:
>  
>  #include <dt-bindings/clock/imx8qxp-clock.h>
>  
> -conn_lpcg: clock-controller@5b200000 {
> -	compatible = "fsl,imx8qxp-lpcg-conn";
> -	reg = <0x5b200000 0xb0000>;
> +sdhc0_lpcg: clock-controller@5b200000 {
> +	compatible = "fsl,imx8qxp-lpcg";
> +	reg = <0x5b200000 0x10000>;
>  	#clock-cells = <1>;
> +	clocks = <&sdhc0_clk IMX_SC_PM_CLK_PER>,
> +		 <&conn_ipg_clk>, <&conn_axi_clk>;
> +	bit-offset = <0 16 20>;
> +	clock-output-names = "sdhc0_lpcg_per_clk",
> +			     "sdhc0_lpcg_ipg_clk",
> +			     "sdhc0_lpcg_ahb_clk";
> +	power-domains = <&pd IMX_SC_R_SDHC_0>;
>  };
>  
>  usdhc1: mmc@5b010000 {
> @@ -44,8 +66,8 @@ usdhc1: mmc@5b010000 {
>  	interrupt-parent = <&gic>;
>  	interrupts = <GIC_SPI 232 IRQ_TYPE_LEVEL_HIGH>;
>  	reg = <0x5b010000 0x10000>;
> -	clocks = <&conn_lpcg IMX8QXP_CONN_LPCG_SDHC0_IPG_CLK>,
> -		 <&conn_lpcg IMX8QXP_CONN_LPCG_SDHC0_PER_CLK>,
> -		 <&conn_lpcg IMX8QXP_CONN_LPCG_SDHC0_HCLK>;
> +	clocks = <&sdhc0_lpcg 1>,
> +		 <&sdhc0_lpcg 0>,
> +		 <&sdhc0_lpcg 2>;

Is it possible to replace magic constants 1, 0, 2 with some meaningful
constants?

Are they the same with: IMX_SC_PM_CLK_PER, etc?

>  	clock-names = "ipg", "per", "ahb";
>  };
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
