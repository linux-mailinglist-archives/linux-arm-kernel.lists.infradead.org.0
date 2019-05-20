Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAC51232F6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 13:45:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=7tGLf1LPJFab5b0KapBEX8Zo4nD9H9A0YE9jc0JQWSs=; b=l6eI/hRNutwzA0
	MZ/khaDIvV2om4xAzxDU1/VehsNirGuozf5WSfXTCHKUDpu3w4tc+qzABESSQAlbl2xncvaPU41gd
	qS76uh75/cMqsnD2MdkbbaceeZwx1Y/ZoPldrgeWGyJA4/vLdxDFFDlh3gXMo845Davzg5GtsHN/i
	iDAaIt13tFB45ByQx8lfObxe6Y5516HNs5we8zv5RZaSPhIEM682WGj+zjxv6B6r31ekdnXhn2u7B
	9rv7EHT6BTSH+Z6mCCxjNHB+V6RviQqhy0iotZkJtylsX/PR6vLv+KmAgB8Qv4OkWa3E3SVX49BTe
	yUVSF/addFWD9yM4aS4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSgjc-00009X-8o; Mon, 20 May 2019 11:45:40 +0000
Received: from mail-eopbgr70057.outbound.protection.outlook.com ([40.107.7.57]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSgjU-00008z-Q8
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 11:45:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XfA80TGvULLlPL07iN7Rc8pLxv5wrcP2TwaQn0zY7co=;
 b=PLJ91YXSI4UKqHl7kV35XM3/n2HwFeI7UoFSMNPxc5PCpLLa4gjqgdBkHZUlRDdPA1lom0BKKfQiIpxjoBMlxJ3VHAUrwwBmTpv1znxWocx9LKHDWaT9HAAa9aPYYwe1XX1RctI6tnWvVdslQpIyQt0M5cad1AQZZl82EAO3gUo=
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com (20.179.252.215) by
 AM0PR04MB4081.eurprd04.prod.outlook.com (52.134.93.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.18; Mon, 20 May 2019 11:45:29 +0000
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec]) by AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec%7]) with mapi id 15.20.1900.020; Mon, 20 May 2019
 11:45:29 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Aisheng Dong <aisheng.dong@nxp.com>, "sboyd@kernel.org" <sboyd@kernel.org>
Subject: Re: [PATCH V2 2/2] dt-bindings: clock: imx-lpcg: add support to parse
 clocks from device tree
Thread-Topic: [PATCH V2 2/2] dt-bindings: clock: imx-lpcg: add support to
 parse clocks from device tree
Thread-Index: AQHU/3scG8TUQr2pEky5UPAqffgQoQ==
Date: Mon, 20 May 2019 11:45:29 +0000
Message-ID: <AM0PR04MB64342D68FBE19FFE3A5BC618EE060@AM0PR04MB6434.eurprd04.prod.outlook.com>
References: <1556645270-20648-1-git-send-email-aisheng.dong@nxp.com>
 <1556645270-20648-3-git-send-email-aisheng.dong@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: be90ab91-34ae-4bcd-c11b-08d6dd18a87f
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4081; 
x-ms-traffictypediagnostic: AM0PR04MB4081:
x-microsoft-antispam-prvs: <AM0PR04MB408172DBB8AE565A9103F367EE060@AM0PR04MB4081.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 004395A01C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(39860400002)(376002)(366004)(136003)(346002)(199004)(189003)(44832011)(486006)(66476007)(6436002)(66946007)(66556008)(64756008)(66446008)(186003)(76116006)(76176011)(476003)(305945005)(8936002)(66066001)(102836004)(68736007)(25786009)(316002)(91956017)(446003)(478600001)(5660300002)(86362001)(7736002)(7696005)(99286004)(2906002)(74316002)(73956011)(2501003)(14454004)(6246003)(54906003)(26005)(53546011)(9686003)(6506007)(110136005)(256004)(14444005)(53936002)(6116002)(3846002)(4326008)(52536014)(81166006)(81156014)(229853002)(33656002)(8676002)(71190400001)(71200400001)(55016002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4081;
 H:AM0PR04MB6434.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: H1Z6YgyHbGiKEGt24jAizOa+QnPU77xIBUtc2inKN7ljP5P3GEU1rQpoxbThwi12SJS/Y0Ewhgqf5qCJ/4t3n0d13quGa7YS4rabPEZ6jZLgdC/gBBQ1SSwoozdFMNJm+p9/hYfUj4c+JAJnKJqpNhwaqls1mzbTEl7KQeWnwFOq0Jij6At0dOjr/upINRUpyiCN6kopn2+CsyGqjXNYzOxmVPRCZGkIBNMIV5GT5EtgfukeafdpXy62Vxo6VK+dv2eSEgLeLmnSeZQTSH5E74zXm9VpMoCcLQelj5G0AxL0f5FGlXFbNoxGl7YmkVc5TteVWVn6AOt0FF7ZXixY/z02ikZpsnHD12PbQUKE4LAX/+d9TnBG1+RVzOcx2KrZIWjMytbS8OhmRo6YIEGp676hC+b0lErlWF8NuGUFKyM=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: be90ab91-34ae-4bcd-c11b-08d6dd18a87f
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2019 11:45:29.3933 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4081
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_044532_852230_46B4058B 
X-CRM114-Status: GOOD (  13.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.57 listed in list.dnswl.org]
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

On 30.04.2019 20:35, Aisheng Dong wrote:
> MX8QM and MX8QXP LPCG Clocks are mostly the same except they may reside
> in different subsystems across CPUs and also vary a bit on the availability.
> 
> Same as SCU clock, we want to move the clock definition into device tree
> which can fully decouple the dependency of Clock ID definition from device
> tree and make us be able to write a fully generic lpcg clock driver.
> 
> And we can also use the existence of clock nodes in device tree to address
> the device and clock availability differences across different SoCs.
> 
> diff --git a/Documentation/devicetree/bindings/clock/imx8qxp-lpcg.txt b/Documentation/devicetree/bindings/clock/imx8qxp-lpcg.txt
>   
>   Required properties:
> +- compatible:		Should be one of:
> +			  "fsl,imx8qxp-lpcg"
> +			  "fsl,imx8qm-lpcg" followed by "fsl,imx8qxp-lpcg".
> +- reg:			Address and length of the register set.
> +- #clock-cells:		Should be 1. One LPCG supports multiple clocks.
> +- clocks:		Input parent clocks phandle array for each clock.
> +- bit-offset:		An integer array indicating the bit offset for each clock.
> +- hw-autogate:		Boolean array indicating whether supports HW autogate for
> +			each clock.
> +- clock-output-names:	Shall be the corresponding names of the outputs.
> +			NOTE this property must be specified in the same order
> +			as the clock bit-offset and hw-autogate property.

Splitting the LPCG areas is good but describing "bit-offset" and similar 
inside devicetree seems excessively generic.

Perhaps we could have many smaller imx8qxp-lpcg-sdhc, imx8qxp-lpcg-enet 
etc where the actual clks inside each node are still defined in driver code.

>   usdhc1: mmc@5b010000 {
> @@ -44,8 +66,8 @@ usdhc1: mmc@5b010000 {
>   	interrupt-parent = <&gic>;
>   	interrupts = <GIC_SPI 232 IRQ_TYPE_LEVEL_HIGH>;
>   	reg = <0x5b010000 0x10000>;
> -	clocks = <&conn_lpcg IMX8QXP_CONN_LPCG_SDHC0_IPG_CLK>,
> -		 <&conn_lpcg IMX8QXP_CONN_LPCG_SDHC0_PER_CLK>,
> -		 <&conn_lpcg IMX8QXP_CONN_LPCG_SDHC0_HCLK>;
> +	clocks = <&sdhc0_lpcg 1>,
> +		 <&sdhc0_lpcg 0>,
> +		 <&sdhc0_lpcg 2>;

This is less readable, can't we keep symbolic constants?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
