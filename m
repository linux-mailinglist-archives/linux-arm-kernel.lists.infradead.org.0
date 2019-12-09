Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAE9C11764A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 20:51:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZNdr91X80kjmup28MLhQqlzc2JkdWtIREhq9u1+4B2E=; b=r1eXhUkEBKjYB9
	5BGxnVxzhB7JUxG7vMr94dDhlMWyh4hT0PXt1WXqQNUghTFukBvSskvCkwubmKxkdL4ig1BSbHHDd
	vsHqJuvQXW7oBvo7jf8ve+9iBxCc6BxZ0/HNlv+M305pYL6MkN46qi2U4qg2wz4rXioLZlZGfmCAw
	Xr/43dDa/EV0gXSHXjSFs+++h9y5V1GnqGWdmpjUnhVj5NCboaHjqA3Xlt7ZG50RDnj8b4X7z6ct1
	6tp6lqXzz/sdvzb37Py1KZYc6QzDEN/T34GDEuez6lp+k8d3UaQ5vJXHBHOM7QMmza1c+Qc4jKC5W
	ZZN7pSqz6+Q01Qg6ZiMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieP3V-0007dz-0n; Mon, 09 Dec 2019 19:50:53 +0000
Received: from mail-db5eur03on0628.outbound.protection.outlook.com
 ([2a01:111:f400:fe0a::628]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieP3N-0007dD-JJ
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 19:50:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dOGL+utWNTDRvyeUq6Oy5JLVoxBAj04zk3YlRJMvKNtQPxnN5Yk12UQLKcY9QbCX8DSFVsgOBA3N+w8qSDaHGQcwaPBJuUOqGKdVlOckSHbrq9r6eylN4kemeAtqTfSJW/fNohmfcIxvz1fDUkb23h5WdNyBcCwjStokC0yCFaUU/ftwEXqUHkbi2wHJ7A+DNRUm2r1E49a/WKH115h+vlyhV7lbFxRNNH8arzYiaMdUQ1Ykyqqak10SQ9gOrse3RhMtLEk5rMKdJ2PSn/HpvoiIUiE3l2Rp0yW/3Z/vvYbz/MmITOGqrEWHDLB4xuSCug1xBpRPVsqRkXkPwNqoUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wuL3k3OMRAuDSx5j/pqvS5ffTbqocxDy5N8f1ScvhN0=;
 b=aSsn8OEGskpZn+3m+9zWXcGH4yxwoOLnNlX1pzIpX/Ab1NFfCjI4aJXlKssOL9gAjjm7+wXvV7FcgR0WsORCk53GninhJG0CNSEszcX4LozmNdWPqDbkwNrlxbaju8+XfzenWGcdoN6Wz1/VXxGVWKSrsGuO77xV5Q57vbyhFnCAQ8yzvV99+N70GmDrzd8lxqllCdWZ8mDTB4CtQBiX4ivGw01pDecqXvFWzz2t+NA+fbYFSYTNtC3xf09mYKcVom0+AqmEczOloHbsNv998MtyZbu5Yvoy0wKsJx5h+5OK1ia7XU++IYyPoHp1YLKDqK7GD7hkAyd/008B/49wJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wuL3k3OMRAuDSx5j/pqvS5ffTbqocxDy5N8f1ScvhN0=;
 b=A9lrbQYpGwWyPg6EsM16e0T64Zrk21bwwuTZ9W8A/XDzALiMMK4QnH4bnzdpHBAqQ2z7MtVYzVtq9tYCgn2PbInihKKysEpZpdKQzHCCgDTZh6O78pNhofUR8c6Yz4474/aBgEUTqSuEmHE40Vl6WqYv8JDawMdfiFLRxp48Dn8=
Received: from VE1PR04MB6687.eurprd04.prod.outlook.com (20.179.234.30) by
 VE1PR04MB6445.eurprd04.prod.outlook.com (20.179.232.214) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.17; Mon, 9 Dec 2019 19:50:40 +0000
Received: from VE1PR04MB6687.eurprd04.prod.outlook.com
 ([fe80::d91b:86b1:7d97:944d]) by VE1PR04MB6687.eurprd04.prod.outlook.com
 ([fe80::d91b:86b1:7d97:944d%7]) with mapi id 15.20.2516.017; Mon, 9 Dec 2019
 19:50:40 +0000
From: Leo Li <leoyang.li@nxp.com>
To: Michael Walle <michael@walle.cc>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH v2] arm64: dts: ls1028a: fix reboot node
Thread-Topic: [PATCH v2] arm64: dts: ls1028a: fix reboot node
Thread-Index: AQHVrsESw4ah5znw0UmG0v9WXCnxKKeyNhjA
Date: Mon, 9 Dec 2019 19:50:40 +0000
Message-ID: <VE1PR04MB6687035009C691D31844C51D8F580@VE1PR04MB6687.eurprd04.prod.outlook.com>
References: <20191209184644.14057-1-michael@walle.cc>
In-Reply-To: <20191209184644.14057-1-michael@walle.cc>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leoyang.li@nxp.com; 
x-originating-ip: [64.157.242.222]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: ce08cba7-a2af-4def-7b48-08d77ce111f3
x-ms-traffictypediagnostic: VE1PR04MB6445:
x-microsoft-antispam-prvs: <VE1PR04MB64458244C962DFC2567EB58B8F580@VE1PR04MB6445.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 02462830BE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(39860400002)(346002)(396003)(376002)(189003)(199004)(13464003)(66476007)(4326008)(478600001)(64756008)(66946007)(66446008)(76116006)(66556008)(33656002)(52536014)(186003)(229853002)(9686003)(55016002)(26005)(53546011)(5660300002)(2906002)(54906003)(7696005)(305945005)(81156014)(8936002)(8676002)(110136005)(71200400001)(6506007)(81166006)(86362001)(316002)(71190400001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6445;
 H:VE1PR04MB6687.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PsB/40aM/00u7wMeZ3DaKsPoByMxhnYRBkfnac0SgpGWjXsCBRt6yGEen/Bje6LXn7V9xfHn1uECXrhcObsY3ufom+AseW1XX5Ji/YvXnq7Wev37CQkqoLLp+4uAPwKJQSkmeRViA6ItDF4uE3VC9o8Jez4htyBU4C1ZS1acEZ2qqcOilP9hXM23ZAqtpvqtA/ZGXKKfPD2kUe7zxTp2E3wLGkuw5U2yshu/pH2cbyd/Wde3q5+oCkd4h/U8Dqs3MlgnTf+MXpaRbktAOtJgV6rxuc3U7wQHsXGOIO11tTMYYYVq70Qwwu6Y4u23/39mfB/+AFuGiMe5DCgY+DRTohoigqC4FcbUL3gENcYCqxy3EbJzzBhpfmkb5tXbwbSQrq63rhWgp01ypVFe+1t0b0HXXAZT9WjST9WxZclXcakSH70L0Squeg8L6i7quETuHpI4QcSaD2jnKT5Mr4FWF1IdzcYxVVZfSwX/wo9MMyPc95s6oQkIUUeEPOPk5AR0
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ce08cba7-a2af-4def-7b48-08d77ce111f3
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Dec 2019 19:50:40.5830 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uk5sKrQqzteuRlDg0QAtG48JrNrfAcqQJqEVw6f8xCF+HcSFq1z1/LgXvObiwrOkEupuGivffiCF41JjCTX3eA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6445
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_115045_692445_A85414AC 
X-CRM114-Status: GOOD (  14.02  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0a:0:0:0:628 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.0 FORGED_SPF_HELO        No description available.
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Michael Walle <michael@walle.cc>
> Sent: Monday, December 9, 2019 12:47 PM
> To: linux-arm-kernel@lists.infradead.org; devicetree@vger.kernel.org; linux-
> kernel@vger.kernel.org
> Cc: Shawn Guo <shawnguo@kernel.org>; Leo Li <leoyang.li@nxp.com>; Rob
> Herring <robh+dt@kernel.org>; Mark Rutland <mark.rutland@arm.com>;
> Michael Walle <michael@walle.cc>
> Subject: [PATCH v2] arm64: dts: ls1028a: fix reboot node
> 
> The reboot register isn't located inside the DCFG controller, but in its own RST
> controller. Fix it.
> 
> Fixes: 8897f3255c9c ("arm64: dts: Add support for NXP LS1028A SoC")
> Signed-off-by: Michael Walle <michael@walle.cc>

Acked-by: Li Yang <leoyang.li@nxp.com>

> ---
> 
> changes since v1:
>  - add fixes tag
>  - remove "ls1028a-rst" compatible string, because there is no actual
>    driver for it. It just use the syscon driver.
> 
>  arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> index 8b28fda2ca20..7825550b7cef 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> @@ -88,7 +88,7 @@
> 
>  	reboot {
>  		compatible ="syscon-reboot";
> -		regmap = <&dcfg>;
> +		regmap = <&rst>;
>  		offset = <0xb0>;
>  		mask = <0x02>;
>  	};
> @@ -178,6 +178,12 @@
>  			little-endian;
>  		};
> 
> +		rst: syscon@1e60000 {
> +			compatible = "syscon";
> +			reg = <0x0 0x1e60000 0x0 0x10000>;
> +			little-endian;
> +		};
> +
>  		scfg: syscon@1fc0000 {
>  			compatible = "fsl,ls1028a-scfg", "syscon";
>  			reg = <0x0 0x1fc0000 0x0 0x10000>;
> --
> 2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
