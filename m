Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A16EB87C8C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 16:20:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SvXlVz8hrWX9N+Rgvv2gSOwqmeDz/pYaufzL30jFD1Y=; b=quj/KMDGHyh8Mj
	rP11Vinh+AheUGLMDrwt+uj3tp/M6bXijOBzK1HwDs32p1kWcmmz6g5lozQI5LYb0wdgNoKAHyrYg
	nLsbzQRNkJ+k4y9me+Hw2fs6cHhE9R215H8kaCvPL35af3BwywD8r01q55JCR3PySqUAiakw/C4Yz
	dcAydtQHH1vycVvLEt3ABZXHG9ZQ5EDbbMuocOdaAoHDKB7wZPBao8KHVP6r92dyUqHJGyzaIm3QA
	FviM1O04QGO1uouFSy0NVtIegJLJtJDW68mcSv7YxuWQKSZHu8TXFLnCstQB5LmwzNyzJz0Ulmw45
	CIetfOTrAG9yugpF5iWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw5lI-0004xJ-Bm; Fri, 09 Aug 2019 14:20:56 +0000
Received: from mail-eopbgr40137.outbound.protection.outlook.com
 ([40.107.4.137] helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw5l6-0004wq-20
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 14:20:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KhaCGdb5sGdiCRkpwVYHYFogVDE0Er9Xy4nXr7hXwdvqiVcv0akj5eYJXgFVf2LVWxi3lRhV3yXG4b8mqYJDuCSsPi7+Dz/p5eUIud7b37vxMZqvehncT/7WIs0yVXECStvQIM194X9ICO8VdW8TYXP71lAy/G15IY1d/BT52Qngj2rg/1UC3ZNwaTXtLKRhjzPdp1X2z5QSulniaK8DZBIlVRWczqnhbS9uMnAn9dsm7b5HpHrXZ9AA7GRMyPR+uIcfRXeQLwWzvNqGi42BFlmfGbe+aMvprlqiaAW5OipkDVU6aBhZUkQPuAs/fuYqqnBhM6WxA/Wg5LTRa3KR1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Vn5/d5Ol5Ve/V4u+MRpEZPDqiH3nlEUVUkcqsBU1ans=;
 b=XnC0XEs1SD0JmTOQHjHXviyC3hkHpEEayEYmi7KGiHMMlmJqzGamuWurqzhWFFC2nhUDz50/0jp7lMGZxerSJ4FSSFePr3iwoA37seyL/LL/VHD8sdiwvOn1fqGW3ZFBtActn4eTbJbPnY/AXsF7Mt1pShSAbXxSqDmL4jAJGH+eSYnQHBUr2hzDaFPwvCaHmdsF+7j7FM0yXRs1BJa4KeFNRj2e6VVjuOnHE+wNKdIqPLKKflwECrOk2XLhlctgLwcMbSuG/0mWFEE0lfidGhi1Tgz8LXXi6TeqlXJ3Q6ZsYs6qlmMW9cUmvePGPxztiVF+7n34wDXaaiQbmxFKEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=toradex.com;dmarc=pass action=none
 header.from=toradex.com;dkim=pass header.d=toradex.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Vn5/d5Ol5Ve/V4u+MRpEZPDqiH3nlEUVUkcqsBU1ans=;
 b=BFwtgRlXhG98R6WfrzcVOdbay7AgeDY1TUnp+bTLLYhGX2x3JMrW0g9rXVtfIQnKlqJIVW1vHsBKSo47+9fkVdDMQm1Nlx6+BZX4nNMCOjWstxp9if/KxwakLAWhqQ6WckdjDDrEXugULlEGnuaO5dFqRv+oHwph4j1Ib70ZcPw=
Received: from VI1PR05MB6415.eurprd05.prod.outlook.com (20.179.27.139) by
 VI1PR05MB3293.eurprd05.prod.outlook.com (10.170.238.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.17; Fri, 9 Aug 2019 14:20:38 +0000
Received: from VI1PR05MB6415.eurprd05.prod.outlook.com
 ([fe80::f1b2:353a:da9b:c19a]) by VI1PR05MB6415.eurprd05.prod.outlook.com
 ([fe80::f1b2:353a:da9b:c19a%4]) with mapi id 15.20.2157.020; Fri, 9 Aug 2019
 14:20:38 +0000
From: Marcel Ziswiler <marcel.ziswiler@toradex.com>
To: Max Krummenacher <max.krummenacher@toradex.com>, "stefan@agner.ch"
 <stefan@agner.ch>, Philippe Schenker <philippe.schenker@toradex.com>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "michal.vokac@ysoft.com"
 <michal.vokac@ysoft.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>
Subject: Re: [PATCH v3 04/21] ARM: dts: imx7-colibri: Add sleep mode to
 ethernet
Thread-Topic: [PATCH v3 04/21] ARM: dts: imx7-colibri: Add sleep mode to
 ethernet
Thread-Index: AQHVTPnH96JuUo3YOEOwLp+M+8nuNqby4UaA
Date: Fri, 9 Aug 2019 14:20:38 +0000
Message-ID: <fc209916b83968d019017efcf065b9a29e6e061f.camel@toradex.com>
References: <20190807082556.5013-1-philippe.schenker@toradex.com>
 <20190807082556.5013-5-philippe.schenker@toradex.com>
In-Reply-To: <20190807082556.5013-5-philippe.schenker@toradex.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=marcel.ziswiler@toradex.com; 
x-originating-ip: [2a01:2a8:8501:4d00:ca5b:76ff:fedf:3c49]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 40f53518-5b10-40fd-1a9e-08d71cd4c095
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR05MB3293; 
x-ms-traffictypediagnostic: VI1PR05MB3293:
x-microsoft-antispam-prvs: <VI1PR05MB32935D066048163EAF9DB7F1FBD60@VI1PR05MB3293.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 01244308DF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(366004)(136003)(346002)(39850400004)(396003)(199004)(189003)(81156014)(6506007)(71190400001)(71200400001)(6436002)(6116002)(81166006)(118296001)(478600001)(2201001)(7736002)(6486002)(66476007)(66446008)(2616005)(66946007)(6512007)(8676002)(305945005)(14444005)(46003)(66556008)(44832011)(64756008)(446003)(2906002)(11346002)(229853002)(53936002)(14454004)(36756003)(86362001)(4326008)(102836004)(486006)(256004)(110136005)(476003)(2501003)(6246003)(91956017)(186003)(76116006)(8936002)(76176011)(25786009)(7416002)(99286004)(5660300002)(316002)(54906003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR05MB3293;
 H:VI1PR05MB6415.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 9wF8GmM7+jtmJGKKSzONaxKA9lgsuAUHFhgyiEeHyPB91OyH6m9blGkWf67BbHoLqE1BnHe9c9zp+WPUBg341Vy/3o1kqgfZIXKpEU7EupgSSDsqiwMi5RtlJK1ftgAM14OMVdlwFCowKZnhunMb0hROAasZorauokGdX83XcV2WPorlmt15lfbZC9zbDsK1DZ6CfE7PMtsu3YLnGdv92m9gDC8dditKdFdtzE3VtSFzN0hHcyWjxQ2VYPJHbZlq0mbbt6mcYAdsVMgS4XHFRBwfttjX2wgF1MYQ0a+xZRCDogC/yHxu3KtFNztcRGiRSTM8JeJiJLnQZ2lkdXZ8SrWVAyhDVhMnayB3Jfjf5nyzYFf6LL9LfR9f8dSJWxVHRo6OyWrv/SknvyXLPsRXgX8cB7yLbKY7Qot0j2WzsUs=
Content-ID: <BA86C9A909602842B2DD0C11F584CD61@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 40f53518-5b10-40fd-1a9e-08d71cd4c095
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Aug 2019 14:20:38.4047 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: djYNQ99C5UGXjlBI3OsKJgvcErJaFTn7lbSyJv8uqKh1mU6hRUr+z+PGnobcjQtpvhIbRGoh84RoAnZ2/4bdwWpBEof9jzddVfq240ZQdwo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB3293
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_072044_107311_10708E7D 
X-CRM114-Status: GOOD (  14.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.137 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-08-07 at 08:26 +0000, Philippe Schenker wrote:
> Add sleep pinmux to the fec so it can properly sleep.
> 
> Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>

Acked-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>

> ---
> 
> Changes in v3: None
> Changes in v2: None
> 
>  arch/arm/boot/dts/imx7-colibri.dtsi | 19 ++++++++++++++++++-
>  1 file changed, 18 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/imx7-colibri.dtsi
> b/arch/arm/boot/dts/imx7-colibri.dtsi
> index 52046085ce6f..a8d992f3e897 100644
> --- a/arch/arm/boot/dts/imx7-colibri.dtsi
> +++ b/arch/arm/boot/dts/imx7-colibri.dtsi
> @@ -101,8 +101,9 @@
>  };
>  
>  &fec1 {
> -	pinctrl-names = "default";
> +	pinctrl-names = "default", "sleep";
>  	pinctrl-0 = <&pinctrl_enet1>;
> +	pinctrl-1 = <&pinctrl_enet1_sleep>;
>  	clocks = <&clks IMX7D_ENET_AXI_ROOT_CLK>,
>  		<&clks IMX7D_ENET_AXI_ROOT_CLK>,
>  		<&clks IMX7D_ENET1_TIME_ROOT_CLK>,
> @@ -463,6 +464,22 @@
>  		>;
>  	};
>  
> +	pinctrl_enet1_sleep: enet1sleepgrp {
> +		fsl,pins = <
> +			MX7D_PAD_ENET1_RGMII_RX_CTL__GPIO7_IO4		
> 0x0
> +			MX7D_PAD_ENET1_RGMII_RD0__GPIO7_IO0		
> 0x0
> +			MX7D_PAD_ENET1_RGMII_RD1__GPIO7_IO1		
> 0x0
> +			MX7D_PAD_ENET1_RGMII_RXC__GPIO7_IO5		
> 0x0
> +
> +			MX7D_PAD_ENET1_RGMII_TX_CTL__GPIO7_IO10		
> 0x0
> +			MX7D_PAD_ENET1_RGMII_TD0__GPIO7_IO6		
> 0x0
> +			MX7D_PAD_ENET1_RGMII_TD1__GPIO7_IO7		
> 0x0
> +			MX7D_PAD_GPIO1_IO12__GPIO1_IO12			
> 0x0
> +			MX7D_PAD_SD2_CD_B__GPIO5_IO9			
> 0x0
> +			MX7D_PAD_SD2_WP__GPIO5_IO10			
> 0x0
> +		>;
> +	};
> +
>  	pinctrl_ecspi3_cs: ecspi3-cs-grp {
>  		fsl,pins = <
>  			MX7D_PAD_I2C2_SDA__GPIO4_IO11		0x14
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
