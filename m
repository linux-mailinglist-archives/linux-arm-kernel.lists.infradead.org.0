Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 604BC87E6E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 17:48:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y6R32LtBrdR30IAgvwCSfZDM6a1O4yfLrEQy40RqCko=; b=ST+t7tIX4DMxY+
	7dC+g4Sv0vPLXm/XBYsc4vOzjnkyjZ4mHJpKQc2tUusBWDHf1zxwttLanuopevJpoc+qrFDk5lqHa
	ux7xf/gwE0uliAN7i07zO1e3n/F6nzExqahmJdWE+Bfd+9tRTCzzH8eyd+gGJnuca179iZ/AQBk4f
	jftMc2WGKMIRKdPBFKTDivfoTmaRu5C6LqXv/qMRmfqoCTR+AkgK2jtEUIOU6NA+zB+6J7rsRF0Be
	W+uZHkpSy7wRSyTb6DzDEwsMLVUlsiD7D3Rn4nW+zfQE/tJzrdSLeR4PTIwD6aCVT0FvnOQbTIYGm
	7c0St8fFKJH3c5JG/RPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw77h-0007R6-RR; Fri, 09 Aug 2019 15:48:09 +0000
Received: from mail-he1eur01on0711.outbound.protection.outlook.com
 ([2a01:111:f400:fe1e::711]
 helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw77U-0007Qg-HQ
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 15:47:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nMspTTwCntypRUgY555i1zeyCJBjAEGEaDrku1AMEanCPYmjAAeHh9xwWCEYSsq6Ymg/jHDf4ZBTCDOIyMBqwQyvIkR9Lft6S3mFJs3lCdKZvrqpUGag6YgZXxCclBDuhltnvaP6hk0aQi1982vLp8Fgvsldg2jtkeD12+HOls5Ql5cH5XNsXdeillQlf5BeWWmHzkZJcOTuSEyqeo/iwczknsRVVkFp0EbP/ZM+cFbU9XeM5qRfgvqjONh0/353w30EMuEgUeVTCNxechGA9G5Nbkh3CxDNYNkqHxqjzaFqBEq2qyFrC1tXIGsQRMUvx8Jc0NQ6rmsQYYGPSH6Xxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lW9+yXCFzCR66mEFBLiwp7Or3pHJpcd4a+kk0lhWeg4=;
 b=akE6N5H+wT0X1gH/bVvD7ZnfsCQCKQUFl1zIzIWdQK1GlcWir7pWWWXMxGHHPCz1qo9BsZiYp7S/4xHPZERRWm5Jwlj31MFYmRxxDlVgwgtMnwgzys6DBooirdvYHybYVq8OJjhu0/pN9rTwPa+JOa7byPWztUMPgao+bbZCUx8++uMJJEH5SYCIpwloiXbqeuJKTtS0FzqV28192Dbj+Z3vlWWRJUhr4cgo1Rq+YywNF+DkX4256ZKUG7FAO5ontPvPysdjGJujPdBDZ59yyFmtVyfXNX8OSCw8SqnS2OzLTqccf1GZZhXN3nx2TnVM9UEw+lXg7/MVobQGY/jsNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=toradex.com;dmarc=pass action=none
 header.from=toradex.com;dkim=pass header.d=toradex.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lW9+yXCFzCR66mEFBLiwp7Or3pHJpcd4a+kk0lhWeg4=;
 b=p9+JMbyTxZCiSgf2avABMcNACU6F8iBAzdsTDheeyK0U12TNmmfWhK00ePSrmCvnEY3sFtFZlWElXt4Nej4v5GBDkhthTPa/n5kaNht0z/RA9LKmOnxzRGFahtcSPFnrL9mF08tTSFeRXZv3jNHk6jxIUlnRF5dMzOCyE8wzKMM=
Received: from VI1PR05MB6415.eurprd05.prod.outlook.com (20.179.27.139) by
 VI1PR05MB6752.eurprd05.prod.outlook.com (10.186.160.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.16; Fri, 9 Aug 2019 15:47:51 +0000
Received: from VI1PR05MB6415.eurprd05.prod.outlook.com
 ([fe80::f1b2:353a:da9b:c19a]) by VI1PR05MB6415.eurprd05.prod.outlook.com
 ([fe80::f1b2:353a:da9b:c19a%4]) with mapi id 15.20.2157.020; Fri, 9 Aug 2019
 15:47:51 +0000
From: Marcel Ziswiler <marcel.ziswiler@toradex.com>
To: Max Krummenacher <max.krummenacher@toradex.com>, "stefan@agner.ch"
 <stefan@agner.ch>, Philippe Schenker <philippe.schenker@toradex.com>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "michal.vokac@ysoft.com"
 <michal.vokac@ysoft.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>
Subject: Re: [PATCH v3 17/21] ARM: dts: imx6ull: improve can templates
Thread-Topic: [PATCH v3 17/21] ARM: dts: imx6ull: improve can templates
Thread-Index: AQHVTPnXr0NFcJhs8k2cZd07S2mEX6by+aaA
Date: Fri, 9 Aug 2019 15:47:51 +0000
Message-ID: <8ae5742f29f17e61fd9fc39a8dbd1b7c3a2f45b0.camel@toradex.com>
References: <20190807082556.5013-1-philippe.schenker@toradex.com>
 <20190807082556.5013-18-philippe.schenker@toradex.com>
In-Reply-To: <20190807082556.5013-18-philippe.schenker@toradex.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=marcel.ziswiler@toradex.com; 
x-originating-ip: [2a01:2a8:8501:4d00:ca5b:76ff:fedf:3c49]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8df90cb6-eafb-4aae-36b5-08d71ce0efe6
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR05MB6752; 
x-ms-traffictypediagnostic: VI1PR05MB6752:
x-microsoft-antispam-prvs: <VI1PR05MB675261993567077AE31337B2FBD60@VI1PR05MB6752.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1824;
x-forefront-prvs: 01244308DF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(396003)(136003)(366004)(39850400004)(376002)(199004)(189003)(86362001)(4326008)(102836004)(186003)(76176011)(2501003)(6506007)(446003)(486006)(476003)(2616005)(11346002)(44832011)(7416002)(46003)(81156014)(8676002)(8936002)(81166006)(6116002)(25786009)(14454004)(6246003)(118296001)(54906003)(110136005)(7736002)(99286004)(316002)(478600001)(2906002)(2201001)(5660300002)(71190400001)(305945005)(71200400001)(14444005)(256004)(76116006)(91956017)(229853002)(6512007)(66556008)(66946007)(64756008)(66446008)(36756003)(6436002)(6486002)(66476007)(53936002)(32563001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR05MB6752;
 H:VI1PR05MB6415.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: plB94CfGL0tqmBXF4Dpmwlo44AiAWLf5pyJIzt9+Q4uuiouzdaFNeOBpXjnhsLR0qkJeQK5hm9ImWfwD9BWmPH9QkRWy2wLJlHr3rXzhqiG1zskfKQNg3DR7rGp1XXrZlluucpuD4g2pT1H0ShaCDU/nySS6O8/o6tK8Ob5MijMDg20DxiMurESZTH+TqgQkmhOP6ciSlSZJKGUf52DrPPyGRRs1IDe1Ebs9S/w3tcWL5COd4BH8vCkQC+y6YXTYBJ/kY9H0X1VKUjD55W/Y/eMalDd17Xo2smHuVIlhX6Eaay0kUTV2WFJkzJBoCmUgS2j0PqLkvF180XiWz7x/+Md7hGFJiRQvHYGG1Oib1ycA6ZofGavL00yeOZuEQw5ZlY/V5gAsb1iVOa3WB5pPP2nDGzGb7KThDl/f/Y2cnrM=
Content-ID: <50F337CA203C7E439414CCD76C8798DE@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8df90cb6-eafb-4aae-36b5-08d71ce0efe6
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Aug 2019 15:47:51.7809 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IQqLPVaJRldfJJY3yfbzcghMm0WSLr+VzkoOVA1me/8NT84YCBSURuFCBeln/oa1E1YgA3XEjRpVmqsxKMCYM6+kRKlStOaMGRIf22J6Uyo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB6752
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_084756_584460_000812A9 
X-CRM114-Status: GOOD (  17.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe1e:0:0:0:711 listed in]
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

Hi Philippe

On Wed, 2019-08-07 at 08:26 +0000, Philippe Schenker wrote:
> From: Max Krummenacher <max.krummenacher@toradex.com>
> 
> Add the pinmuxing and a inactive node for flexcan1 on SODIMM 55/63
> and move the inactive flexcan nodes to imx6ull-colibri-eval-v3.dtsi
> where they belong.
> 
> Note that this commit does not enable flexcan functionality, but
> rather
> eases the effort needed to do so.
> 
> Signed-off-by: Max Krummenacher <max.krummenacher@toradex.com>
> Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
> ---
> 
> Changes in v3: None
> Changes in v2: None
> 
>  arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi | 12 ++++++++++++
>  arch/arm/boot/dts/imx6ull-colibri-nonwifi.dtsi |  2 +-
>  arch/arm/boot/dts/imx6ull-colibri-wifi.dtsi    |  2 +-
>  arch/arm/boot/dts/imx6ull-colibri.dtsi         | 16 ++++++++++++++--
>  4 files changed, 28 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi
> b/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi
> index b6147c76d159..3bee37c75aa6 100644
> --- a/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi
> +++ b/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi
> @@ -83,6 +83,18 @@
>  	};
>  };
>  
> +&can1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_flexcan1>;
> +	status = "disabled";
> +};
> +
> +&can2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_flexcan2>;
> +	status = "disabled";
> +};

As those don't really have anything to do with the eval board directly,
wouldn't it make more sense to rather move them into the module's dtsi
just like the pin muxing further below?

>  &i2c1 {
>  	status = "okay";
>  
> diff --git a/arch/arm/boot/dts/imx6ull-colibri-nonwifi.dtsi
> b/arch/arm/boot/dts/imx6ull-colibri-nonwifi.dtsi
> index fb213bec4654..95a11b8bcbdb 100644
> --- a/arch/arm/boot/dts/imx6ull-colibri-nonwifi.dtsi
> +++ b/arch/arm/boot/dts/imx6ull-colibri-nonwifi.dtsi
> @@ -15,7 +15,7 @@
>  &iomuxc {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_gpio1 &pinctrl_gpio2 &pinctrl_gpio3
> -		&pinctrl_gpio4 &pinctrl_gpio5 &pinctrl_gpio6>;
> +		&pinctrl_gpio4 &pinctrl_gpio5 &pinctrl_gpio6
> &pinctrl_gpio7>;
>  };
>  
>  &iomuxc_snvs {
> diff --git a/arch/arm/boot/dts/imx6ull-colibri-wifi.dtsi
> b/arch/arm/boot/dts/imx6ull-colibri-wifi.dtsi
> index 038d8c90f6df..a0545431b3dc 100644
> --- a/arch/arm/boot/dts/imx6ull-colibri-wifi.dtsi
> +++ b/arch/arm/boot/dts/imx6ull-colibri-wifi.dtsi
> @@ -26,7 +26,7 @@
>  &iomuxc {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_gpio1 &pinctrl_gpio2 &pinctrl_gpio3
> -		&pinctrl_gpio4 &pinctrl_gpio5>;
> +		&pinctrl_gpio4 &pinctrl_gpio5 &pinctrl_gpio7>;
>  
>  };
>  
> diff --git a/arch/arm/boot/dts/imx6ull-colibri.dtsi
> b/arch/arm/boot/dts/imx6ull-colibri.dtsi
> index e3220298dd6f..553d4c1f80e9 100644
> --- a/arch/arm/boot/dts/imx6ull-colibri.dtsi
> +++ b/arch/arm/boot/dts/imx6ull-colibri.dtsi
> @@ -256,6 +256,13 @@
>  		>;
>  	};
>  
> +	pinctrl_flexcan1: flexcan1-grp {
> +		fsl,pins = <
> +			MX6UL_PAD_ENET1_RX_DATA0__FLEXCAN1_TX	0x1b0
> 20
> +			MX6UL_PAD_ENET1_RX_DATA1__FLEXCAN1_RX	0x1b0
> 20
> +		>;
> +	};
> +
>  	pinctrl_flexcan2: flexcan2-grp {
>  		fsl,pins = <
>  			MX6UL_PAD_ENET1_TX_DATA0__FLEXCAN2_RX	0x1b0
> 20
> @@ -271,8 +278,6 @@
>  
>  	pinctrl_gpio1: gpio1-grp {
>  		fsl,pins = <
> -			MX6UL_PAD_ENET1_RX_DATA0__GPIO2_IO00	0x74
> /* SODIMM 55 */
> -			MX6UL_PAD_ENET1_RX_DATA1__GPIO2_IO01	0x74
> /* SODIMM 63 */
>  			MX6UL_PAD_UART3_RX_DATA__GPIO1_IO25	0X14
> /* SODIMM 77 */
>  			MX6UL_PAD_JTAG_TCK__GPIO1_IO14		0x14
> /* SODIMM 99 */
>  			MX6UL_PAD_NAND_CE1_B__GPIO4_IO14	0x14 /*
> SODIMM 133 */
> @@ -325,6 +330,13 @@
>  		>;
>  	};
>  
> +	pinctrl_gpio7: gpio7-grp { /* CAN1 */
> +		fsl,pins = <
> +			MX6UL_PAD_ENET1_RX_DATA0__GPIO2_IO00	0x74
> /* SODIMM 55 */
> +			MX6UL_PAD_ENET1_RX_DATA1__GPIO2_IO01	0x74
> /* SODIMM 63 */
> +		>;
> +	};
> +
>  	pinctrl_gpmi_nand: gpmi-nand-grp {
>  		fsl,pins = <
>  			MX6UL_PAD_NAND_DATA00__RAWNAND_DATA00	0x100
> a9

Cheers

Marcel
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
