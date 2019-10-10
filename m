Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5BE6D33F8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 00:31:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z8uxHsxT67eVhefyM34qFGfa26yKNecQ/2p4DB7W5/0=; b=Fhh2BDvTdJfCh4
	Nky2Y81PKUxrKdYFKpFhT4YYdqshTCy3f6e5ktiXtbOML6Vsj61sMjS42AfwhU0MpZVp0dyewj5mm
	OZzx1VSvpGm8oCvEZxfycgF4n2nWWCAWA4J8YdemNcq5mFikgjmNwGmDQwG7VAaW1BwuNKjgLRCz+
	nFqUVONAb3X1dxup2cA88tajFfDTHsBOJRGhKVLiOSky9cx2LsTfBiiOYmLT/Bg4BVxAdLdRdJMc8
	jPpbC0qXjdagKOSMJ3CZCDsZFAYYJXwylVTvEPKZb5wKlGhhdd9XV6q1tR5ULTwMQ0uP5pHlDyRNB
	QZAus4fKrVenvzeljXWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIgy4-0000Sz-B1; Thu, 10 Oct 2019 22:31:32 +0000
Received: from mail-eopbgr70072.outbound.protection.outlook.com ([40.107.7.72]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIgxu-0000Rk-Ah
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 22:31:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AewdmOUQ0tSDNLZYYFm4STu1CbIVIAHhlfQH+R8V5S4UxK7FbhweS3LOZqdlRA30bA6kOUvzmXfTr2nw88CjmiiXzVEGJpoH4X2Bxn1krhg5fLotshaEfnqsFMJvqPeRRCGEl1ob2PiQRejdf+bbMTZ3Rd4zhRhPZkoTAFqtECd9/Xctrm+nXN05GI7lEOc38efGmicgp8e/xujfb+ZJ5lYCK6189SfetijJd6XdAcPSbu+mA2rXjADezCafdQuqw8/YkKjWLoAXCxaLGNIgjEzshYh9ffdWMPZds0gCexBk7xC4sEtkJJ3p2MYQYcpgHlTGjDR4PtXqcc1hTAdztA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JnN/7CJrC76VnTCk66pmfUbRG8pLOyVhaJQYFwMrhNE=;
 b=KrtkhNoLP0NJBDtKDwKy7XfNtq2nOVkd/wEgJPw65x0lPx0CVwwLWWVhqmV70Im17lYnaDec9GIZ+FA37tbiHPuxtchlZ1Lic62jxkRYvstK5FKm5c7PC9hgU7cxZfaSTr5sLmuB+KMb+9Sq9OjQfdyF4h479LfudlrRbSGoTX2PLgO8L/iyUeM5Sdmo58uwDptWvTlOMWzXikpFwmtR0lyooF80WBeu6Zv5Zb98SnvuGO/DrvHQPm0aosAB94ehuB9OLmjH9AuW0p5ZKFAAmRUbm6Zf9guWL+o+sUTl6XtImRz+isGdsBR/pYpsqhxITl+zU5YnSYIrAZuV2CK6YQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JnN/7CJrC76VnTCk66pmfUbRG8pLOyVhaJQYFwMrhNE=;
 b=MRUNDfqm1vDpKcpAj8DLJo77YCEDGFkn8OkIphgg9Q9JqP7yIFGpMDvT4r/jDmYvS3tSUbNSyBM0FOD1ubPNmJ1p3qmf+N90G3om1keQi9p4nuzrEvxrWz3X50h27JLH90fxjpO6MQQTxyT47X3O06ZKtfrRCCmchPIDAIly8uY=
Received: from VE1PR04MB6687.eurprd04.prod.outlook.com (20.179.234.30) by
 VE1PR04MB6639.eurprd04.prod.outlook.com (10.255.118.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.21; Thu, 10 Oct 2019 22:31:16 +0000
Received: from VE1PR04MB6687.eurprd04.prod.outlook.com
 ([fe80::c93:c279:545b:b6b6]) by VE1PR04MB6687.eurprd04.prod.outlook.com
 ([fe80::c93:c279:545b:b6b6%3]) with mapi id 15.20.2347.016; Thu, 10 Oct 2019
 22:31:16 +0000
From: Leo Li <leoyang.li@nxp.com>
To: Andy Tang <andy.tang@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>
Subject: RE: [PATCH v2] arm64: dts: ls1028a: fix a compatible issue
Thread-Topic: [PATCH v2] arm64: dts: ls1028a: fix a compatible issue
Thread-Index: AQHVf0brHYC8TgXW1EGDttx7++luRKdUdjcw
Date: Thu, 10 Oct 2019 22:31:16 +0000
Message-ID: <VE1PR04MB6687C0E8739C82D1DAFC71D58F940@VE1PR04MB6687.eurprd04.prod.outlook.com>
References: <20191010083334.7037-1-andy.tang@nxp.com>
In-Reply-To: <20191010083334.7037-1-andy.tang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leoyang.li@nxp.com; 
x-originating-ip: [64.157.242.222]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b802e09c-64b9-48ed-a286-08d74dd190c3
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: VE1PR04MB6639:|VE1PR04MB6639:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VE1PR04MB6639E67272C69A7001D208DC8F940@VE1PR04MB6639.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1284;
x-forefront-prvs: 018632C080
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(396003)(346002)(376002)(39860400002)(13464003)(189003)(199004)(55016002)(8936002)(8676002)(9686003)(6436002)(7736002)(6116002)(11346002)(25786009)(446003)(486006)(476003)(66066001)(6246003)(81156014)(4326008)(86362001)(26005)(14444005)(66446008)(3846002)(71190400001)(71200400001)(81166006)(256004)(14454004)(66946007)(186003)(76116006)(5660300002)(102836004)(64756008)(66556008)(66476007)(2906002)(6506007)(53546011)(2501003)(110136005)(54906003)(74316002)(52536014)(99286004)(229853002)(305945005)(478600001)(33656002)(316002)(76176011)(7696005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6639;
 H:VE1PR04MB6687.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4ZqcARqLaMF5Hte8a3gstWR7f33ki+MMV+X4Gn4zqP7u1bZOXYRYgxHV8I4Cam9yozZFK8ADs8rZHPYQFY8cw4suQpLb3kuIfwBDvv5089U7MdO6MN7gGM7bqXYcYHyIAr2ANrlN6dmj3xBF7kby6MizVI3MR+Rlf+Q+vtD4d/h+Rq/gBkZ6VmAP5EVK62svka01nTL8utftZGMEg0hNCg6EW/+oGA/iMleG9ORIaDstR9kwEEHPrifPLWK1DMGIGK6ciWXkyp/TWRZ0ZxqSHt/xg88O6p59YtO+xjln5oNHm28zdlQ3SPcMTpdMUYeK9vvFJ+I3BpJWY/zDUAQ9W3n+gt434zBOGcwe8Be28nW8fQ883a6kr0isZS0A4dReUShyJkLYb4X84nLqiKzdujcf5J/cevvDKozo26mGvtQ=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b802e09c-64b9-48ed-a286-08d74dd190c3
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Oct 2019 22:31:16.6489 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bu858TigHGrFGhBTyL6okp9rIxeQQxBVTnapFT0u1TV5A72uWD1b0HpDS82BLHIy0is2Y6c5nsafkgRk7Q/hew==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6639
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_153122_525293_979846E6 
X-CRM114-Status: GOOD (  14.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.72 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Andy Tang <andy.tang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Yuantian Tang <andy.tang@nxp.com>
> Sent: Thursday, October 10, 2019 3:34 AM
> To: shawnguo@kernel.org
> Cc: Leo Li <leoyang.li@nxp.com>; robh+dt@kernel.org;
> mark.rutland@arm.com; linux-arm-kernel@lists.infradead.org;
> devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; Andy Tang
> <andy.tang@nxp.com>
> Subject: [PATCH v2] arm64: dts: ls1028a: fix a compatible issue
> 
> The I2C multiplexer used on ls1028aqds is PCA9547, not PCA9847.
> If the wrong compatible was used, this chip will not be able to be probed
> correctly and hence fail to work.
> 
> Signed-off-by: Yuantian Tang <andy.tang@nxp.com>

Acked-by: Li Yang <leoyang.li@nxp.com>

> ---
> v2:
> 	- refine the description
>  arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts
> b/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts
> index 5e14e5a19744..f5da9e8b0d9d 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts
> @@ -107,7 +107,7 @@
>  	status = "okay";
> 
>  	i2c-mux@77 {
> -		compatible = "nxp,pca9847";
> +		compatible = "nxp,pca9547";
>  		reg = <0x77>;
>  		#address-cells = <1>;
>  		#size-cells = <0>;
> --
> 2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
