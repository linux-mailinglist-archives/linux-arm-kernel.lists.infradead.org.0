Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F381A8FB4A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 08:45:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IF/feJzkRlTdcIQKWpiUGPHjdHW0JXiyF36lbnVy6/U=; b=V0i7BxNGvXkWxV
	XwO1nD91NyjYzHj3aNzMwQVvta3c5fSX3QJ2OLp2r7qbIMMe48aVvrI6DXJ78oaOZ4yzgLbj7KON8
	dwE6A16iDclZCpwFUYdlcuLmg4L31fV22CcWcPnIJvZHohT/CrAXDdqGcQR+y6q0a9c/3WE5HizS3
	xeCSCuCjdAHCdWebtE4ifp9gS5AZRrzTVlgNv3b4OVFuksSc5wlgZ9DoPXVmZxK3SlCnyHmlflHlf
	qGmdnw8WmstUBlnRJryN6QHQOyFM88F47up4PH3YbQvTg2p3hcUT5amRQkmBVlabGiVuDoKKQDlsl
	l/vn6/yjBPvVVbdydGtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyVzI-0004Je-CK; Fri, 16 Aug 2019 06:45:24 +0000
Received: from mail-eopbgr130135.outbound.protection.outlook.com
 ([40.107.13.135] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyVys-0003a6-UV
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 06:45:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FSJOyKXW8W/0LxHTuJy1X25mMr0nH0nSwCU1qI2KflrJNIg5n8L1GYAhYAII1UA71p7L/L8Mb3QlsGjvrZhviviagE5fm9mF7mnDttZPdwHR/55C+y5HhaAO75F1iqnfQxTg7E/lwg/2k9+knGKz/+tASVgAn55dJT8m3K/oL9XQZxz2br2r0p8JVpItYx96D6COZCFzIF2VvrqRAO2d/NR8bfDozAkbLQqhK7iLLMYTStjThSgMP2lHbj34/+WBLWXPdR5/TvKP1i6MZnDDzw4x1QRf8C4l2rI/CHoIcB73eXHG3G/4nUdZ+q3X89CxJymxcxJPCpt8/oWPq8KqMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=x/ndeGuK7k85sPRcBHpcAyIusszWqt3Y/uJib4XAaDM=;
 b=MvmoQ8WFNuiyVcltEwckFqT9RQf9sqNtbqqSGTTMw0m43Qke6V0UaGs/bWqgRXRzS1sBWoL96la2WSmJaPjPG7TBMRvus6h2bNefc018Pk6E0Em2Riy95XnM4Nps6QLkc1N+MvT4viTTl5pcQPmAXk0PDxeK+XUMBdAmsu3XY0LlYdza1cs6yDdB2O24KMgP9dfZRyfbiquBFfGLq9Jtjz3zfLI0vrSdG/Y4uVKyWym+JEap5gc/tDdlXrCfHqCTp3F3eSZdxIncfG2rcsOPLzCNh/3hzYzEFvY0Hb5sQ76wbfEn0PkEbI3jnj5UONIMEINuhzqyiDq/zqJ5ZOcBWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=x/ndeGuK7k85sPRcBHpcAyIusszWqt3Y/uJib4XAaDM=;
 b=i6JVWC6DfD8Og8UDlhIOeL+xuolerLJO6Fcil12XvJ6dmNG8PxqITFKjdYvWoKUNGXCJdzeeLJiFol995bVHUaDeLLYxunsrJaF2cFlru+60CaI7c6xi7yABlnu1JqmlsLgiLTlJAYeEfciCe+V0ktqY8O8sxhDQK4MPiDCyhms=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB3695.eurprd05.prod.outlook.com (52.134.8.23) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Fri, 16 Aug 2019 06:44:56 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2%6]) with mapi id 15.20.2157.022; Fri, 16 Aug 2019
 06:44:56 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: "stefan@agner.ch" <stefan@agner.ch>, Marcel Ziswiler
 <marcel.ziswiler@toradex.com>, Max Krummenacher
 <max.krummenacher@toradex.com>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "michal.vokac@ysoft.com"
 <michal.vokac@ysoft.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>
Subject: Re: [PATCH v4 21/21] ARM: dts: imx6qdl-colibri.dtsi: UHS-I support
 for v1.1a hw
Thread-Topic: [PATCH v4 21/21] ARM: dts: imx6qdl-colibri.dtsi: UHS-I support
 for v1.1a hw
Thread-Index: AQHVURlGJmcIK6KxnkK60xS6fTE6Vab9WgYA
Date: Fri, 16 Aug 2019 06:44:56 +0000
Message-ID: <dd03b626b6d13a10f6e6c644d446c3a51e6b7875.camel@toradex.com>
References: <20190812142105.1995-1-philippe.schenker@toradex.com>
 <20190812142105.1995-22-philippe.schenker@toradex.com>
In-Reply-To: <20190812142105.1995-22-philippe.schenker@toradex.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
x-originating-ip: [46.140.72.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8f6e8fcb-f194-4801-cc10-08d722154027
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0502MB3695; 
x-ms-traffictypediagnostic: VI1PR0502MB3695:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0502MB36950D9767FDAFA6707EC945F4AF0@VI1PR0502MB3695.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0131D22242
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(39840400004)(376002)(346002)(136003)(396003)(189003)(199004)(86362001)(2201001)(2501003)(36756003)(66066001)(118296001)(53936002)(81156014)(476003)(8936002)(8676002)(6246003)(44832011)(14444005)(256004)(14454004)(4326008)(11346002)(486006)(2616005)(5660300002)(2906002)(7736002)(66556008)(66446008)(91956017)(76116006)(66946007)(305945005)(66476007)(7416002)(64756008)(25786009)(446003)(3846002)(6116002)(54906003)(110136005)(81166006)(316002)(76176011)(99286004)(6486002)(6436002)(186003)(229853002)(478600001)(26005)(71200400001)(71190400001)(6512007)(6506007)(102836004)(32563001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB3695;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: AnapPyQA7CWO7jaUyJ4JGmJK7s39AheUkBSCatLVdM7F6UE3PKx8BMLuYQC/60sJizFRYhSL9S+uTXKQBlE0vmfQPY9sIwbJ2q2+gDtlGPQwFPIPMD5lVGQnDo0ZBvCTIiWMHJMOtOZb0BGNwSJdyhX1wK94weHWhTGAsYZiCGv1sMCG1BmMwlf43hODUISfiyLoecv3njHcd+9c52pHnoXkIWl7Zu60o6bURyXaDnoWwdyt3fpxF7o5mpIToiGuKAYpiQ5gnk3LcIeRRcgIVvPJ446pibAibn3q88miVIZElioTkLhXnYQhAKhcEwzTaYbqK6mqreSXDtN53EaCzHf9g4N8U9GWD/jDMkgpSC2BV4bxjbVE4KCbssUKxvAaHgX4iaWmv2R/7CAwMew6Xr5xySs9ugzXfwr8tYT9csc=
Content-ID: <0D5BD576719C47468937C3ECEB1A4888@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f6e8fcb-f194-4801-cc10-08d722154027
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Aug 2019 06:44:56.0423 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2L+f7WVhrhf01B5FrfRNuM5AO62QqWLNJS7Kpi49wekiAfjsbpBtGRu8y8cQ+XvJNeFoumdVWKAXMwUXrn+wB3Cmo7h6ER63HkOqKUPNmiw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB3695
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_234459_046560_954CD7B5 
X-CRM114-Status: GOOD (  18.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.135 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Igor Opaniuk <igor.opaniuk@toradex.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2019-08-12 at 14:21 +0000, Philippe Schenker wrote:
> From: Igor Opaniuk <igor.opaniuk@toradex.com>
> 
> Provide proper configuration for VGEN3, to make sure it's is always
> powered
> which allows that rail to be automatically switched to 1.8 volts
> for proper UHS-I operation. By default it's disabled.
> 
> With UHS-I enabled:
> [  104.153898] mmc1: new ultra high speed SDR104 SDHC card at address
> 59b4
> [  104.166202] mmcblk1: mmc1:59b4 USD00 15.0 GiB
> [  104.173923]  mmcblk1: p1
> 
> root@colibri-imx6:~# hdparm -t /dev/mmcblk1
> /dev/mmcblk1:
> Timing buffered disk reads: 226 MB in  3.01 seconds =  75.01 MB/sec
> 
> Signed-off-by: Igor Opaniuk <igor.opaniuk@toradex.com>
> Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>

Please ignore this patch. There was a misunderstanding and this one
shouldn't go into mainline. Sorry for that!
> 
> ---
> 
> Changes in v4:
> - New patch as of the recommendation from Marcel on ML
> 
> Changes in v3: None
> Changes in v2: None
> 
>  arch/arm/boot/dts/imx6qdl-colibri.dtsi | 43 +++++++++++++++++++++++
> ---
>  1 file changed, 39 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/imx6qdl-colibri.dtsi
> b/arch/arm/boot/dts/imx6qdl-colibri.dtsi
> index 9a63debab0b5..0241613b5e2b 100644
> --- a/arch/arm/boot/dts/imx6qdl-colibri.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-colibri.dtsi
> @@ -226,7 +226,12 @@
>  				regulator-always-on;
>  			};
>  
> -			/* vgen3: unused */
> +			vgen3_reg: vgen3 {
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
>  
>  			vgen4_reg: vgen4 {
>  				regulator-min-microvolt = <1800000>;
> @@ -394,13 +399,21 @@
>  
>  /* Colibri MMC */
>  &usdhc1 {
> -	pinctrl-names = "default";
> +	pinctrl-names = "default", "state_100mhz", "state_200mhz";
>  	pinctrl-0 = <&pinctrl_usdhc1 &pinctrl_mmc_cd>;
> +	pinctrl-1 = <&pinctrl_usdhc1_100mhz &pinctrl_mmc_cd>;
> +	pinctrl-2 = <&pinctrl_usdhc1_200mhz &pinctrl_mmc_cd>;
> +	vqmmc-supply = <&vgen3_reg>;
> +	sd-uhs-sdr12;
> +	sd-uhs-sdr25;
> +	sd-uhs-sdr50;
> +	sd-uhs-sdr104;
> +	label = "MMC1";
>  	cd-gpios = <&gpio2 5 GPIO_ACTIVE_LOW>; /* MMCD */
>  	disable-wp;
> -	vqmmc-supply = <&reg_module_3v3>;
> +	enable-sdio-wakeup;
> +	keep-power-in-suspend;
>  	bus-width = <4>;
> -	no-1-8-v;
>  	status = "disabled";
>  };
>  
> @@ -706,6 +719,28 @@
>  		>;
>  	};
>  
> +	pinctrl_usdhc1_100mhz: usdhc1grp100mhz {
> +		fsl,pins = <
> +			MX6QDL_PAD_SD1_CMD__SD1_CMD    0x170b1
> +			MX6QDL_PAD_SD1_CLK__SD1_CLK    0x100b1
> +			MX6QDL_PAD_SD1_DAT0__SD1_DATA0 0x170b1
> +			MX6QDL_PAD_SD1_DAT1__SD1_DATA1 0x170b1
> +			MX6QDL_PAD_SD1_DAT2__SD1_DATA2 0x170b1
> +			MX6QDL_PAD_SD1_DAT3__SD1_DATA3 0x170b1
> +		>;
> +	};
> +
> +	pinctrl_usdhc1_200mhz: usdhc1grp200mhz {
> +		fsl,pins = <
> +			MX6QDL_PAD_SD1_CMD__SD1_CMD    0x170f1
> +			MX6QDL_PAD_SD1_CLK__SD1_CLK    0x100f1
> +			MX6QDL_PAD_SD1_DAT0__SD1_DATA0 0x170f1
> +			MX6QDL_PAD_SD1_DAT1__SD1_DATA1 0x170f1
> +			MX6QDL_PAD_SD1_DAT2__SD1_DATA2 0x170f1
> +			MX6QDL_PAD_SD1_DAT3__SD1_DATA3 0x170f1
> +		>;
> +	};
> +
>  	pinctrl_usdhc3: usdhc3grp {
>  		fsl,pins = <
>  			MX6QDL_PAD_SD3_CMD__SD3_CMD	0x17059
> -- 
> 2.22.0
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
