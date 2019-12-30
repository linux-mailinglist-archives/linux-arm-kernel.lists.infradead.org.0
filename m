Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50C6112CB65
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 01:09:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FnrAftneS8k4pJLW5mtAs/s/T1swiL3cqd+hmQKL8pA=; b=SL26Rn3vvpDn2z
	D4NxMXHEPom18hgyPsEab+Zb5TVUZnVEdPiaDnzkaHPg070LepDg8HOAgny+f/df1MzBwYZ1okE9E
	e6NRChylDDy9Q4+mu2ISg24nAY6AZadVfOi41rO73GYhwzlXVD1R6uNODVWd2Kf8IgkOotYwT2aDI
	qaQhEKUF/vWKxWY5pQGw4aSfvZXbGK63voPaEeJIw3VQ3kR4GOSW6TyI3cTQ0ORBa5GDQXHiD4I3M
	ncJZwk3mufe77NF3mTXGA2zt+JyFvk6sMx80pENfNKu6fRuG/O3GTpeoG16v80O5LKQJPAgsLAckH
	LSWCLwJaSL3avL0Xu83Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilicu-0002KD-5t; Mon, 30 Dec 2019 00:09:40 +0000
Received: from mail-oln040092067051.outbound.protection.outlook.com
 ([40.92.67.51] helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilicn-0002JS-Sq; Mon, 30 Dec 2019 00:09:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f0C1o8lqQlYDmPO0ecEigfulWlahkrN2WMg3Q8WevTc2ozTH30NgahJKbf+K7bSBNwi2MBW2J7pdibkoV9gj6Qf6j0Zl11pJ1ChK+1EiW8XVOWPGJG13ldgtPYpt4fBkeP8PCmXKwn5EZA3yP6QqfIc8WrkSGv+IfwGKd9Mx9lQwAUlNXxW+ruVmPVWCWArVp8e6d1fUw934Tq3wFqQ4DG+odBvxTUQsn9ock9quegN2fFLDsenXADY5qoUMpSw1F4AJWeX+0spdgjxJ+4Daz8O63FjCrJvtn4TQspVUOp8Pyee03U2cW/PKShAW6FVBp3xT0N0LguxjRhK2sSS3SQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lZnJ0DhEmV3EMmGvDd2qfpN9Zi9PBq3W7yE+Rqgek7k=;
 b=mv7qukd8jQPW3xqULgqw1XhbS6YuFi6lVjl6uXDIC0OfTCqQ7ArbKokXFFxtyWTR9g0Hf214LHPd/j2Q2KVGHdZORTs6jbp2yJSszJc+Z8jQfkZsfrN4csAbStyARNSWSNLGtsgHDvIB6UbTOMhvmOArKXHIbiTXbTEj9b/a4d8/o9tr2SEUuuwtgEsyHxmpzsY3oG84wIrSA8a2XCowQIMCoQOYGIiaV/DNNJBMZnGhthdnFRWQiqAeXGFwsd0LRINd/qX73Zlke61O+/jm0AD/yDaypygmmlqXrFZS0ZiAVEuhQHMrbteRpel8JDlD4Rv9CQgsImA7SK9P7pZD3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from AM5EUR02FT016.eop-EUR02.prod.protection.outlook.com
 (10.152.8.53) by AM5EUR02HT159.eop-EUR02.prod.protection.outlook.com
 (10.152.9.174) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2581.11; Mon, 30 Dec
 2019 00:09:22 +0000
Received: from HE1PR06MB4011.eurprd06.prod.outlook.com (10.152.8.52) by
 AM5EUR02FT016.mail.protection.outlook.com (10.152.8.90) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2581.11 via Frontend Transport; Mon, 30 Dec 2019 00:09:22 +0000
Received: from HE1PR06MB4011.eurprd06.prod.outlook.com
 ([fe80::b957:6908:9f62:c28b]) by HE1PR06MB4011.eurprd06.prod.outlook.com
 ([fe80::b957:6908:9f62:c28b%5]) with mapi id 15.20.2581.007; Mon, 30 Dec 2019
 00:09:22 +0000
Received: from [192.168.42.2] (89.253.98.102) by
 AM6PR05CA0033.eurprd05.prod.outlook.com (2603:10a6:20b:2e::46) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2581.11 via Frontend Transport; Mon, 30 Dec 2019 00:09:21 +0000
From: Jonas Karlman <jonas@kwiboo.se>
To: Robin Murphy <robin.murphy@arm.com>, "heiko@sntech.de" <heiko@sntech.de>
Subject: Re: [PATCH] arm64: dts: rockchip: Add RK3328 GPU OPPs
Thread-Topic: [PATCH] arm64: dts: rockchip: Add RK3328 GPU OPPs
Thread-Index: AQHVvoSobY0UI0qS/k2kVw/C6W/QbafRzb0A
Date: Mon, 30 Dec 2019 00:09:22 +0000
Message-ID: <HE1PR06MB4011483BC5EF6C87066983CCAC270@HE1PR06MB4011.eurprd06.prod.outlook.com>
References: <48607c137d46452291510e88d5891e705dc7993c.1577650403.git.robin.murphy@arm.com>
In-Reply-To: <48607c137d46452291510e88d5891e705dc7993c.1577650403.git.robin.murphy@arm.com>
Accept-Language: sv-SE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM6PR05CA0033.eurprd05.prod.outlook.com
 (2603:10a6:20b:2e::46) To HE1PR06MB4011.eurprd06.prod.outlook.com
 (2603:10a6:7:9c::32)
x-incomingtopheadermarker: OriginalChecksum:2A7E96757D38D52A7DB3F630FF3FAC07A2D10E3DFA3A5785D7A1E0E9DCAE133A;
 UpperCasedChecksum:5E5E66D22D9360CA19E9630DA2AD54EC0F1C9F8382FBBF4C3BF672DA520783A4;
 SizeAsReceived:7726; Count:50
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [bvi6BSDSvVzU5XQF+hXOE1Q6jfZ2LUjI]
x-microsoft-original-message-id: <3a3ea32d-dbfb-7934-9871-928c5a8b13aa@kwiboo.se>
x-ms-publictraffictype: Email
x-incomingheadercount: 50
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 1a924471-848c-4549-66b9-08d78cbc8581
x-ms-traffictypediagnostic: AM5EUR02HT159:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wrmqibVYHFVhwJoBD1frrclIc+JagEmxmU3BQhb50GoQcoXGaZDJdvaaGCRzEo0EOxk2J5SE6v30cLBPvKm0qtw4Cj6zey2rX0KcSD+AJOrPa5nG38djn3Vvujwd1Yn4ZOmWsm2kJM/dY/Ga5zlhiXmmj9nXDWrPPTnMrYkTF8e648j6wG+/74985TNCYqdv
x-ms-exchange-transport-forked: True
Content-ID: <ABCA922A364A964D80FE323B5337C08A@eurprd06.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a924471-848c-4549-66b9-08d78cbc8581
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Dec 2019 00:09:22.3561 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5EUR02HT159
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_160933_933258_5068146D 
X-CRM114-Status: GOOD (  14.89  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.67.51 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.92.67.51 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-12-29 21:14, Robin Murphy wrote:
> Add OPPs for the GPU, derived from the downstream Beelink A1 DTB.

My RK3328 devices (rock64, roc-cc and other android tv boxes) used to become
unstable when I used similar OPPs as these and vdd_logic got changed to anything
below 1.05v some time ago, network speeds slowed down and devices usually
become unresponsive.

I do use vendor ddr init blobs to run ddr at 786 or 933 MHz, gpu runs at 500 Mhz
and rock64/roc-cc LDO3 is set to use 1.0v instead of 1.1v used in A1 dts,
in case that could be affecting the stability at lower vdd_logic voltages.

These observations was a few months back so I will redo some tests and see if I
still get unstable systems using anything below default 1.1v for vdd_logic.

Best regards,
Jonas

>
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3328.dtsi | 22 ++++++++++++++++++++++
>  1 file changed, 22 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> index 91306ebed4da..e1b1b4551a8b 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> @@ -605,6 +605,28 @@
>  		clocks = <&cru ACLK_GPU>, <&cru ACLK_GPU>;
>  		clock-names = "bus", "core";
>  		resets = <&cru SRST_GPU_A>;
> +		operating-points-v2 = <&gpu_opp_table>;
> +	};
> +
> +	gpu_opp_table: opp_table1 {
> +		compatible = "operating-points-v2";
> +
> +		opp-200000000 {
> +			opp-hz = /bits/ 64 <200000000>;
> +			opp-microvolt = <900000>;
> +		};
> +		opp-300000000 {
> +			opp-hz = /bits/ 64 <300000000>;
> +			opp-microvolt = <950000>;
> +		};
> +		opp-400000000 {
> +			opp-hz = /bits/ 64 <400000000>;
> +			opp-microvolt = <1025000>;
> +		};
> +		opp-500000000 {
> +			opp-hz = /bits/ 64 <500000000>;
> +			opp-microvolt = <1125000>;
> +		};
>  	};
>  
>  	h265e_mmu: iommu@ff330200 {


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
