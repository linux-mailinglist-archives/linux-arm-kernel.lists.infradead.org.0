Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCAFE87C44
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 16:05:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XBcxzfyV+V4iRKX4WQ6yZS8VjL9+PNLiv3RxYgp3CxQ=; b=U752PRLcG28E5H
	tjljMvEw2B2acbLhMZc27+ZuBSs1KO5Z/6pj2V76REMOTCRanQjc6lQcLacXVJR4whV+7bNR72jXi
	+maRTTuYnahm8CiE7WzBlp2chGYVhi0t1BKGl3k8NNM7/Ed1JCy8qcRypTCWVtDiVRODCmy6j3iAw
	oMwz9ZClka7QPhIMzD3+nNhAl4ufulNqDg1QxXd21hF3pEIwgZ2QdKeruBQaWDK1oTI5hXHSXLDw2
	3AvUylUfIs4KtX1H4YluXiGZmHRwcCdnwMRfAn2pYbzbfiV2L/zd1MvEb6sb7ugLMh0fYBthYfQ7G
	l+85vqPVycOmpbR30CLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw5WN-0007f8-25; Fri, 09 Aug 2019 14:05:31 +0000
Received: from mail-eopbgr130117.outbound.protection.outlook.com
 ([40.107.13.117] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw5WC-0007e7-Ux
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 14:05:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AxWac2UPM2CTFEP6O0lu4UfH8yuUQqfCfQqEbg2/D/SFyYOS423sOPWyu/dvOySfR8rVbl2sEe8ke70naYbhNTH32rK4Hz112sv+vXJ2XLEX6Q1p/4IHXnPx/l6p4E5IdrymR3COFet7aO+yVFcydh+4Bd4OJ11nllR8NKkeThGEsfjAdwscecPfzDKdxcBuJf5Zao7D+8wp+ybuoae2SUnOCNinzbnbmYrVRKZ3ZDGo43dLwMh9EQVWejvQuJZ64103ob5cmnjMZhooDzPLbWUM5L3AY8eXgIoLLYg8HiZLySv5kgE1WEjglApoNbyTllJN6kbJEMxaJuB1rMnAvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8qufY5/5BquD8wvMf4aMc/wTpvA00byo6dTKME0XDkw=;
 b=Vi0HgaBWS9eFRlVhXpV8wGOxZtLlzSo8yT4kx1SNoR8vtfm3gi3dgtZCr9Db6DLnirDK4SlD/RNPzzgoM3wuajf43qTTGBc6srJbRTKAufs/fu/COXnh0gmZ5KvPRdCBQvpTiKg8Hej2Np59iCsrZLHpJ4CLsbRrfop+1HF85YPZvbB45SIj8NRLrkU5Zt7i/evIRfval0a5/2PxzUwI7wyEyDVxMPUBaKkYHyuxSohADupQxl+52+0p0YRICVgw/z5TmaWoSyuo+3r/ytLNiGUsWLJb5cRezwM3Vpd9Ze+xkJ3+prLlKj3X2d18j5K1Qn6vJS+445GMlKfSq0nDHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8qufY5/5BquD8wvMf4aMc/wTpvA00byo6dTKME0XDkw=;
 b=rf2JqNtnj8EqXaXYXqo2dFWvzVU/Nii+tlqMC3oACgTxQVblMVZFeMkOxSxH50fRVjuMAc6WalSoI0Rnj07aLe4z7Pxg4t4K3vsyB64m3tSGXV2L1vlGlYNedzfZva1njfQvLYpmi0+vc1VgGw/YpqfKZa1AJG2tABqJWrGnXoo=
Received: from VI1PR05MB6415.eurprd05.prod.outlook.com (20.179.27.139) by
 VI1PR05MB6688.eurprd05.prod.outlook.com (10.141.128.71) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.16; Fri, 9 Aug 2019 14:05:12 +0000
Received: from VI1PR05MB6415.eurprd05.prod.outlook.com
 ([fe80::f1b2:353a:da9b:c19a]) by VI1PR05MB6415.eurprd05.prod.outlook.com
 ([fe80::f1b2:353a:da9b:c19a%4]) with mapi id 15.20.2157.020; Fri, 9 Aug 2019
 14:05:12 +0000
From: Marcel Ziswiler <marcel.ziswiler@toradex.com>
To: Max Krummenacher <max.krummenacher@toradex.com>, "stefan@agner.ch"
 <stefan@agner.ch>, Philippe Schenker <philippe.schenker@toradex.com>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "michal.vokac@ysoft.com"
 <michal.vokac@ysoft.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>
Subject: Re: [PATCH v3 02/21] ARM: dts: imx7-colibri: disable HS400
Thread-Topic: [PATCH v3 02/21] ARM: dts: imx7-colibri: disable HS400
Thread-Index: AQHVTPnFNNsmkDlhI0CXoPM6AWE0ZKby3PaA
Date: Fri, 9 Aug 2019 14:05:12 +0000
Message-ID: <2051fb5874440c47f9419396658aa478e421ce0b.camel@toradex.com>
References: <20190807082556.5013-1-philippe.schenker@toradex.com>
 <20190807082556.5013-3-philippe.schenker@toradex.com>
In-Reply-To: <20190807082556.5013-3-philippe.schenker@toradex.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=marcel.ziswiler@toradex.com; 
x-originating-ip: [2a01:2a8:8501:4d00:ca5b:76ff:fedf:3c49]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 30a68364-22f0-4846-c2fa-08d71cd29898
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR05MB6688; 
x-ms-traffictypediagnostic: VI1PR05MB6688:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR05MB6688657931E6DAA4156342ACFBD60@VI1PR05MB6688.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 01244308DF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(136003)(39850400004)(376002)(346002)(396003)(189003)(199004)(2501003)(71200400001)(2201001)(14454004)(46003)(6486002)(6436002)(71190400001)(229853002)(14444005)(256004)(5660300002)(7416002)(316002)(66476007)(66446008)(66556008)(64756008)(6506007)(76116006)(91956017)(66946007)(102836004)(86362001)(305945005)(6116002)(7736002)(81156014)(110136005)(8676002)(81166006)(4326008)(76176011)(99286004)(54906003)(36756003)(2906002)(8936002)(53936002)(186003)(446003)(476003)(118296001)(44832011)(486006)(6246003)(6512007)(25786009)(11346002)(2616005)(478600001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR05MB6688;
 H:VI1PR05MB6415.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: pBVAH4fq40VDI3284BdkbiU33nt8UFRUolvQVDQCvNn+HPhdn8GYwF4wwWUhHx5tZn38h1AjDsSW/nWQJmEvBbJx50AbU+OOL5vrByxkEzzkvioKomHGS+HCBVpK7yEpgwTX/kyH1Fd5jVZckA08z8xYKdF3xC0kNE9knlnOZbETZFNCd2ymJvDsuMP2EQ3q+k3o5W0QSMzCX3llCNMZ15bn4bJIO/5vF32Zt1xjQTxl3c3gByahQpPEbZEf2I6rwmYHbhcBKrhKRB8z/SLH40XCy3gwhPP1GawGiJoa2Z5xNA35EXO1PV2Vj9oGFI6wEz+A4nCDjY3c7N1kgrG2TkWVgQp7NjsyUUVUEH+DXchItPSzF7Gcijx8WyIDO9yu6iRMWUlemAzXlkEtK/BLbKr7SdeKDLIvJN6mkL1F8gs=
Content-ID: <0ADC73EC2A5A5348AE565250F25A52D8@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 30a68364-22f0-4846-c2fa-08d71cd29898
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Aug 2019 14:05:12.3853 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Fpixl3rNMR9DTrbALfEoehCDfVJVckWHIow3SaX0Exabp/+u83nHeAOI1vJaEIWlCGXHCK31wcvRSH4rgieQt9Zit2tzsAHlHQKRY3h0DEk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB6688
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_070521_030285_62C6FB0F 
X-CRM114-Status: GOOD (  16.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.117 listed in list.dnswl.org]
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
Cc: Stefan Agner <stefan.agner@toradex.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-08-07 at 08:26 +0000, Philippe Schenker wrote:
> From: Stefan Agner <stefan.agner@toradex.com>
> 
> Force HS200 by masking bit 63 of the SDHCI capability register.
> The i.MX ESDHC driver uses SDHCI_QUIRK2_CAPS_BIT63_FOR_HS400. With
> that the stack checks bit 63 to descide whether HS400 is available.
> Using sdhci-caps-mask allows to mask bit 63. The stack then selects
> HS200 as operating mode.
> 
> This prevents rare communication errors with minimal effect on
> performance:
> 	sdhci-esdhc-imx 30b60000.usdhc: warning! HS400 strobe DLL
> 		status REF not lock!
> 
> Signed-off-by: Stefan Agner <stefan.agner@toradex.com>
> Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>

Acked-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>

> ---
> 
> Changes in v3: None
> Changes in v2: None
> 
>  arch/arm/boot/dts/imx7-colibri.dtsi | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm/boot/dts/imx7-colibri.dtsi
> b/arch/arm/boot/dts/imx7-colibri.dtsi
> index f1c1971f2160..f7c9ce5bed47 100644
> --- a/arch/arm/boot/dts/imx7-colibri.dtsi
> +++ b/arch/arm/boot/dts/imx7-colibri.dtsi
> @@ -325,6 +325,7 @@
>  	vmmc-supply = <&reg_module_3v3>;
>  	vqmmc-supply = <&reg_DCDC3>;
>  	non-removable;
> +	sdhci-caps-mask = <0x80000000 0x0>;
>  };
>  
>  &iomuxc {
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
