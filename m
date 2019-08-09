Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1A7387D26
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 16:48:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c3aJXZMBLGQSJv1fIAOL8jQi0aW4rbRJFbv/1QQvwpw=; b=pEh00ZvZUiIrY+
	FrO84p0VjyjfEcGZdjWZaTyiYNySTCjnVw8gutMHiSgkYSoEyjlRFUVa+Hnzyda7HofzkzBsa4XeG
	ybWr/Ei63FWill676uFRq8XyLRrWfE1xhlpx7LsiLo6ZffO+YEshIpI3sCRfLFdTeDsYRmQ2PXGS9
	YKMdBKGI5EmFUQ1ciZ0ckFEpiHZRvqRtyYzwPRjgv6ZS7MJjbbedXEU8yEF+3wKZpVYPUy8BgEGkV
	obaezaV6vSdHWgXKcLwTw7Y1W8SXr89MKPPBamu+SyzjwRj9xX1/O2uGFy5GzK1Oe7BOqehle6PPr
	uDz9RiMT830zYXuD0cTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw6CD-0001B3-31; Fri, 09 Aug 2019 14:48:45 +0000
Received: from mail-eopbgr50116.outbound.protection.outlook.com
 ([40.107.5.116] helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw6C2-0001Ab-AR
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 14:48:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kCibxWQhuloydEW3K43vw301mt2zgIoe85/9N/HWbV1zh6cBFvX8xqXSA7sYWZuR8Llx2sQIn8bqUKQLn/znuo5hUs5V7Os1vdZcHJj/12TEtM1SqRWxu3X/wGHIDd04R1Y2iFoxMR1kk0TElr9NrhnWp5gVt5p304KN0ww7sCbDtmCo0YQFUJPwK4pBrRSVzEr4VROujlGfp9yM+R2Cdj7hsFC6pIXOsTNCwQAwmGZ+eczQsucWv63WwZwFLBybh7YgpsQQGsC9RVWMIpv5G2bhkgBzxZyVTT3PwM3fdlzk2src8pvIeDe9GQiV6IWeYAMowAFkbyiIq6PQo9z+sQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+fEu4TrVetBR4Aku4P4GNY01STF5i6Wm/Pgzu8ndS4o=;
 b=WDgGaYp9knV7MnGfRtT2DHPMDfMW8Ks3tKsB/8gGLkgBqjkXvAsMUdCOvJsHwanuI2hFiXgEN6Bl8FswIrLOZka+MtxgTLbXFPeTTuk3Hn9OdFDnMXJHe+ykUURWfvVN0/rhfr3SeIGHnPsJ9RvFkZ41HMpa7eTmrUFJ4wRF0zqJfrPtv5cDxlYWzVqgMaA8Uh9QEYI/aF+R4G8HoE/vLYBIQdcKA+vf7P18kurUvnSfYZD2M0k2hVQA5Jg+jsDGdJJlbh4WMYgjxqoFskDMI4aGYpOf/3SUIxUIEUwEKVtb03lwGD4spDBx/EKcEyOGTZCLFin5ng4c5HUwlFwRcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+fEu4TrVetBR4Aku4P4GNY01STF5i6Wm/Pgzu8ndS4o=;
 b=Ielp269IzjyOsR9ZzwsJ1Zb4eGOKwkusyi4ZEbP8aFjK5BQMIAC1VRzFSiOp6OcNkZjVaI4UJyCLagqUg+kbU5yYEWrgqrgwjsFHBSBPjuAeniwLX56KASRNQfXm40/kvDlkIZ7HzLHEO0dKAdWFqD0JQFgw5kj5Ew6OqzEs6F0=
Received: from VI1PR05MB6415.eurprd05.prod.outlook.com (20.179.27.139) by
 VI1PR05MB4399.eurprd05.prod.outlook.com (52.133.13.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.16; Fri, 9 Aug 2019 14:48:31 +0000
Received: from VI1PR05MB6415.eurprd05.prod.outlook.com
 ([fe80::f1b2:353a:da9b:c19a]) by VI1PR05MB6415.eurprd05.prod.outlook.com
 ([fe80::f1b2:353a:da9b:c19a%4]) with mapi id 15.20.2157.020; Fri, 9 Aug 2019
 14:48:31 +0000
From: Marcel Ziswiler <marcel.ziswiler@toradex.com>
To: Max Krummenacher <max.krummenacher@toradex.com>, "stefan@agner.ch"
 <stefan@agner.ch>, Philippe Schenker <philippe.schenker@toradex.com>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "michal.vokac@ysoft.com"
 <michal.vokac@ysoft.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>
Subject: Re: [PATCH v3 07/21] ARM: dts: imx7-colibri: fix 1.8V/UHS support
Thread-Topic: [PATCH v3 07/21] ARM: dts: imx7-colibri: fix 1.8V/UHS support
Thread-Index: AQHVTPnK4ID+C8bQBUi3/2iU3N+GM6by6REA
Date: Fri, 9 Aug 2019 14:48:31 +0000
Message-ID: <56f8b3c5be728af014388bb04cb372619dd8d440.camel@toradex.com>
References: <20190807082556.5013-1-philippe.schenker@toradex.com>
 <20190807082556.5013-8-philippe.schenker@toradex.com>
In-Reply-To: <20190807082556.5013-8-philippe.schenker@toradex.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=marcel.ziswiler@toradex.com; 
x-originating-ip: [2a01:2a8:8501:4d00:ca5b:76ff:fedf:3c49]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2840345e-26bc-47c7-b470-08d71cd8a5ad
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:VI1PR05MB4399; 
x-ms-traffictypediagnostic: VI1PR05MB4399:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR05MB4399A08BA090A61F46D666CBFBD60@VI1PR05MB4399.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1227;
x-forefront-prvs: 01244308DF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(979002)(4636009)(346002)(136003)(376002)(396003)(39850400004)(366004)(199004)(189003)(99286004)(71200400001)(86362001)(316002)(11346002)(2616005)(102836004)(8936002)(476003)(71190400001)(486006)(561944003)(6486002)(186003)(5660300002)(44832011)(76176011)(446003)(46003)(2501003)(2201001)(256004)(14444005)(2906002)(6246003)(6506007)(229853002)(478600001)(66556008)(6116002)(6436002)(7736002)(4326008)(53936002)(76116006)(66476007)(110136005)(66946007)(8676002)(91956017)(66446008)(81166006)(54906003)(64756008)(81156014)(118296001)(36756003)(7416002)(25786009)(305945005)(6512007)(14454004)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR05MB4399;
 H:VI1PR05MB6415.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 8w8YmeCWbjyRkecalqzkyNLREvOTwUcf2twd87ohgpFhh8W3kmkMP25skL2UlTNmoiuQHkRl6jWDBwBPDc1TwnT7bTPXea6rxW4XQO6uvaWPrm8w1o6pRjZJ7FdWX2zALxAB7hagBnI51gV0Mait3sO8vku35Mp29Nn4Fn5lKjH0osio8+hy+FO7woTr6QOsN3lDoRQ7Q6jWuxofW+SQ6BMhGKyh5xDuTJZFf1R/APeIZPn/QWH9URbwoGlYByQIQyYBhyTy0BETbV0rfOHxu9B6ZWfnPbdzLD+rFFO5cgc8CWSFHPsZ+FoioCoUIJmATUs9DZuRHMwF228jWZ3ThI+UPkVwArCZSAjUoqJE5ovn+p7GP5BXwH1j3WvMuaJ9J/MWW4u67uz6cqFf8tu//+xVj0Os9daqOOuFzivpkuU=
Content-ID: <6FE5F5AF4B177649BE50971E59338C67@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2840345e-26bc-47c7-b470-08d71cd8a5ad
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Aug 2019 14:48:31.2593 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pk0bm/le2sYmgeJUzcFP0GU2vlYkyppLyRZF2U2RY2yL7GqOSEb37HemSP/xiAKSVW2yI+vLjxgJ3sredFg14LqpXgBB+bCC3M92JTopXfg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB4399
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_074834_364210_DFD68E9C 
X-CRM114-Status: GOOD (  16.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.116 listed in list.dnswl.org]
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
> Add pinmuxing and do not specify voltage restrictions for the usdhc
> instance available on the modules edge connector. This allows to use
> SD-cards with higher transfer modes if supported by the carrier
> board.
> 
> Signed-off-by: Stefan Agner <stefan.agner@toradex.com>
> Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>

Acked-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>

> ---
> 
> Changes in v3:
> - Add new commit message from Stefan's proposal on ML
> 
> Changes in v2: None
> 
>  arch/arm/boot/dts/imx7-colibri.dtsi | 23 ++++++++++++++++++++++-
>  1 file changed, 22 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/imx7-colibri.dtsi
> b/arch/arm/boot/dts/imx7-colibri.dtsi
> index 16d1a1ed1aff..67f5e0c87fdc 100644
> --- a/arch/arm/boot/dts/imx7-colibri.dtsi
> +++ b/arch/arm/boot/dts/imx7-colibri.dtsi
> @@ -326,7 +326,6 @@
>  &usdhc1 {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_usdhc1 &pinctrl_cd_usdhc1>;
> -	no-1-8-v;
>  	cd-gpios = <&gpio1 0 GPIO_ACTIVE_LOW>;
>  	disable-wp;
>  	vqmmc-supply = <&reg_LDO2>;
> @@ -671,6 +670,28 @@
>  		>;
>  	};
>  
> +	pinctrl_usdhc1_100mhz: usdhc1grp_100mhz {
> +		fsl,pins = <
> +			MX7D_PAD_SD1_CMD__SD1_CMD	0x5a
> +			MX7D_PAD_SD1_CLK__SD1_CLK	0x1a
> +			MX7D_PAD_SD1_DATA0__SD1_DATA0	0x5a
> +			MX7D_PAD_SD1_DATA1__SD1_DATA1	0x5a
> +			MX7D_PAD_SD1_DATA2__SD1_DATA2	0x5a
> +			MX7D_PAD_SD1_DATA3__SD1_DATA3	0x5a
> +		>;
> +	};
> +
> +	pinctrl_usdhc1_200mhz: usdhc1grp_200mhz {
> +		fsl,pins = <
> +			MX7D_PAD_SD1_CMD__SD1_CMD	0x5b
> +			MX7D_PAD_SD1_CLK__SD1_CLK	0x1b
> +			MX7D_PAD_SD1_DATA0__SD1_DATA0	0x5b
> +			MX7D_PAD_SD1_DATA1__SD1_DATA1	0x5b
> +			MX7D_PAD_SD1_DATA2__SD1_DATA2	0x5b
> +			MX7D_PAD_SD1_DATA3__SD1_DATA3	0x5b
> +		>;
> +	};
> +
>  	pinctrl_usdhc3: usdhc3grp {
>  		fsl,pins = <
>  			MX7D_PAD_SD3_CMD__SD3_CMD		0x59
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
