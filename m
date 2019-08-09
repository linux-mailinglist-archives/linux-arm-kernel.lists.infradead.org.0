Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77B7C87D66
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 17:00:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CEPvV0SISLPX24J0aVa0ioEzHT9EKcD7IIXgHR6q4JI=; b=l23N8fhsMKfcUs
	Hupji4UyG67+Wc36uM8Wr5+CtXihRWFOIGUDGhQKfZPr4t7fHQbBL0wct1mVnonGDtoT6vERgBnv9
	2iaV5+n8IMLwZNqmNhQjfkqQT8tW81nvbwV+2Ueo7REt5RqrNFP1LuAtPFIJKy38PXjGRPp2LEy1/
	aSq3haWfoZweTWtVT3QoCG7HFpIHQYvRBaokhyrVYmjRsbcyMrfAL6nuZM4riMZ2TVsYMrHL2BDxM
	E4A9W6P7PovkNjizgLdcxa31FXJ91beJeJf4lalXRH9FYsL3y46mCRGAxPCCQMgCVvVuHCLtbXDoO
	ZqUEx5CALzx3EPKVKiPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw6NP-0005qs-Q3; Fri, 09 Aug 2019 15:00:19 +0000
Received: from mail-ve1eur02on0712.outbound.protection.outlook.com
 ([2a01:111:f400:fe06::712]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw6N5-0005pa-OZ
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 15:00:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QQcVRCkLSAuFQLbaHM6snOZegqWD+nddodcDdi6Pg5hX06e1QKm0cFXg2x5n0jFuhT/yK4vUc1IeTUgzARnsTiokV1mqzgCkPHX4HTgYdOL4K8WZjqvXX0uRZ+38o5FsTBj3zSpYzxynll+8EyZoDs3ZT91bK07Kg7Oz5cr9Wehr2pBqRPc80zYO5C0fYuxImkwjy28KKs37uXT2HdoqZ1fmn9KwbjHQvwyXgA6ZlJmpwiwvfq8Box8czP35cnL5gmW9sq5Cuzbu44EYJC3qwAnJYc8p2kAYBUc/4duaT03v67Ph6JkYgDPhHV6MaQyX8suWuPU2YPSyUD8F58In0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y+b6PMlKnRVisR1vKPa8SKNWw0FeTK/r7KD9A+V2r1k=;
 b=En6LMLzr78IalpQw07bCBf4TQaMWjGTZ7SfPsKDtAmmPer4YvJrnCVMrXQOeTso9dQxKhw60liL6GUK8x5tgGyRgFODd3fYYyLpiiy9r1FMK9yPjHNrT9zzXzkY7o99/DaTiKHauE/FDUpBx5ewlvAEMBYtLHSBJRklGcx6RE1v6qED82gvJzVpuiqXP7monkNQjVhAlgBHfIoFvcok4PEBI1HTMHcOOqHZJB0Psaah1Fl/N2R+6EDgy9ckViK2Ob/oAjMVoBT4v99N2o2AvzyVotuIJmILYRPaiWQOpOqC8ae4Dks6MKUVQRi7hUeRkHR93p4wzDlN6YLwQ2MjhOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y+b6PMlKnRVisR1vKPa8SKNWw0FeTK/r7KD9A+V2r1k=;
 b=EI7MkdMe6X9ZHtoDFM9V3jcYQS8LtrjGL0tXWi1sqq090pg59ytelCea3TgAIvJsI8GI5R1mie3Y6gyiXfls8+apGS/PfxGhG98JyA7Nrda1pM529kWEj3nWuea7ZrajmwXYoEri7dg8LIhZvICAH0bw/hRy8fT9RbG2af5xOwk=
Received: from VI1PR05MB6415.eurprd05.prod.outlook.com (20.179.27.139) by
 VI1PR05MB5647.eurprd05.prod.outlook.com (20.178.120.153) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.18; Fri, 9 Aug 2019 14:59:55 +0000
Received: from VI1PR05MB6415.eurprd05.prod.outlook.com
 ([fe80::f1b2:353a:da9b:c19a]) by VI1PR05MB6415.eurprd05.prod.outlook.com
 ([fe80::f1b2:353a:da9b:c19a%4]) with mapi id 15.20.2157.020; Fri, 9 Aug 2019
 14:59:55 +0000
From: Marcel Ziswiler <marcel.ziswiler@toradex.com>
To: Max Krummenacher <max.krummenacher@toradex.com>, "stefan@agner.ch"
 <stefan@agner.ch>, Philippe Schenker <philippe.schenker@toradex.com>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "michal.vokac@ysoft.com"
 <michal.vokac@ysoft.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>
Subject: Re: [PATCH v3 09/21] ARM: dts: imx6qdl-colibri: add phy to fec
Thread-Topic: [PATCH v3 09/21] ARM: dts: imx6qdl-colibri: add phy to fec
Thread-Index: AQHVTPnNvl5o8iwvx0yd87LjaXSUiqby7EAA
Date: Fri, 9 Aug 2019 14:59:55 +0000
Message-ID: <061b910d01704f736654d8521be431c8aeb946e4.camel@toradex.com>
References: <20190807082556.5013-1-philippe.schenker@toradex.com>
 <20190807082556.5013-10-philippe.schenker@toradex.com>
In-Reply-To: <20190807082556.5013-10-philippe.schenker@toradex.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=marcel.ziswiler@toradex.com; 
x-originating-ip: [2a01:2a8:8501:4d00:ca5b:76ff:fedf:3c49]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f829bf70-c4fd-492e-f0e1-08d71cda3d67
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR05MB5647; 
x-ms-traffictypediagnostic: VI1PR05MB5647:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR05MB5647B4B5BB7E615394D1881BFBD60@VI1PR05MB5647.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1002;
x-forefront-prvs: 01244308DF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(39850400004)(396003)(136003)(346002)(376002)(189003)(199004)(53936002)(316002)(66946007)(6246003)(6436002)(86362001)(81166006)(81156014)(8676002)(4326008)(71190400001)(66446008)(229853002)(64756008)(7736002)(66476007)(305945005)(2201001)(91956017)(76116006)(36756003)(66556008)(6506007)(6486002)(102836004)(186003)(118296001)(110136005)(8936002)(76176011)(2616005)(71200400001)(11346002)(446003)(486006)(44832011)(476003)(14454004)(46003)(2501003)(54906003)(5660300002)(7416002)(6512007)(256004)(25786009)(2906002)(99286004)(478600001)(6116002)(32563001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR05MB5647;
 H:VI1PR05MB6415.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: TxEKHtCJ1QTyWqWXsZ7SnPq2EakKc/gmDeTgMhEeS2Hft5SInOOk//suqR3Aasjpv1dg9UuPqHasON0Syb2k2hVYKdwLz3D6vyvd2wzkc1wmY5GrFscIISRUGD2NjH/FvhXJEdqN4MN9aUOUKFC3p/2wvU4OcRrxPWojMqNYh1CkjHyWRGGlzxFL/zgLmHJoY1MgmSTWw9vwDmCoICyz5YzZzjqXXYxIi+ryj00mZ2vfpdpENzqmwuFZtzmKjWhAF4Y7CvgT66ZRSbu3syaFk/Bxye1/nAMJW/9QsuT+dyVm7foIhLX3x+mBQtbkQsVBRQ4eBOT5vYQHFZUaC/fvIUgVu30tZs0gaoKbdRjLz7QvvmcSW8GmczGJdRgUB+CsFtZs6TvUjTQBpE7mG0uHKhIANhT7M+ZYKBWHGq2iV3M=
Content-ID: <540785E97C23C84BA88E39C16542BC91@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f829bf70-c4fd-492e-f0e1-08d71cda3d67
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Aug 2019 14:59:55.3395 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cIOVn8BGUt3GXeTR7+JcXS7wsZaLztd3rnzBYK+vYW4QmQFuiwbGSnhLCc/VCIwO80WLkydISTdD0+hZ+ERfcDBCnLeOWehR6lQlAhOnds0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB5647
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_075959_803619_6FB3353A 
X-CRM114-Status: GOOD (  16.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe06:0:0:0:712 listed in]
 [list.dnswl.org]
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
> Add the phy-node and mdio bus to the fec-node, represented as is on
> hardware.
> This commit includes micrel,led-mode that is set to the default
> value, prepared for someone who wants to change this.
> 
> Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>

Acked-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>

> ---
> 
> Changes in v3: None
> Changes in v2: None
> 
>  arch/arm/boot/dts/imx6qdl-colibri.dtsi | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/imx6qdl-colibri.dtsi
> b/arch/arm/boot/dts/imx6qdl-colibri.dtsi
> index 1beac22266ed..019dda6b88ad 100644
> --- a/arch/arm/boot/dts/imx6qdl-colibri.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-colibri.dtsi
> @@ -140,7 +140,18 @@
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_enet>;
>  	phy-mode = "rmii";
> +	phy-handle = <&ethphy>;
>  	status = "okay";
> +
> +	mdio {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		ethphy: ethernet-phy@0 {
> +			reg = <0>;
> +			micrel,led-mode = <0>;
> +		};
> +	};
>  };
>  
>  &hdmi {
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
