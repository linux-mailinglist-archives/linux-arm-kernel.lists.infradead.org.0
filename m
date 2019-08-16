Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 184078FB49
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 08:45:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cLRM58uzOGknQJCBKtTc1uzzq52hQbRluwRCwGVT1Tk=; b=cMxP1XLtdpa+28
	t2MjgwVnbso+pWK8juojnMgrw4yFeVSrb4wEZSYF/0APZ6HZYSQir8oXCjxS5z/GVmbMaNHWw8ztb
	6G960/VmzB/Iygp9ETXkN0mz/2XboIrzzWi0oeBk3fh0eGHQCCEKoCwkpzQysdhNE/hsHFBQ1e7wd
	NuTKhDVM7qc97az5avaAq21ZtvnOsK/9kN4r5FPHSD2+7SrxKSVTiK4XBrrRNWEk7RgxvqeoT5aI4
	JJdWBrSBdkKUFsGS1pJh8T+dfSnbAb0vVU4wzkwEwDdaaZOEKAHDlekyshoev+DE7qMVj6QOumorD
	jyKhth8zE/91ztEtpXbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyVyw-0003VN-F3; Fri, 16 Aug 2019 06:45:02 +0000
Received: from mail-eopbgr130128.outbound.protection.outlook.com
 ([40.107.13.128] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyVyi-0003UD-JV
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 06:44:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EWV5DzU13A8QVw+92UpfoQZ3yAAKXcKl1VtTpsj7w10lh2ECdYRWdhjHsja0SdxcgKNXDOKl3FCpaaKmbpyzfHU9hdzLKsaRwBA0HMxtrjeLJWFKcFp+yCWWsufBghB115dZK52YgJBuPAaTBahNlbRxHzbTsWzmIMR4/iXSxMrwJ1PKNDV9Ad7+FH/4doCZx0DY7Vw3XLqJxjTmqW0a9FgRO2PA/M5YXeKxZ20bFiQq/Kt1F6cPhHKI4yEaSZA2rUmQeKNN220G0mf6/A1oPzvJZgCrCKJD0FDVtsmf66KxNEbfJxz8t/7gyfcDOoryTxQynocb+8WUIRYk3zz5nA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2JZbsLPVjmsVZG3xXfbbHlNI0UcjX61p4f+tlVzKlrM=;
 b=R4tztcqLEHjcoEBKliuLydatyO1eSJgOc1HPrmfyCXqZYV9TZn6+zvx0K4/W5IenYUxG11V90ADr8aP+hezahvpcN1+N3vtdQ/669ONWExFZ1HlHbhnXv0UKsCT5f9NIzAUeJC96lwgEFlb0S/686nAJBgpM965vplQqu5SvuGovBpS5KLMsK2sE/Ehjcf+v7ajXaf3mkwkfKGpabFzoaocbERjgIc8BY6qyh30KQ7MHEWKXIF01Nu/SD87KFtFqCXcTecrZSL5vKM+eCY2q/GVfXbN9haIY7Vuw29u0NaMBTYU6NxsEdjOhTQOxBQ0jt6ZMzPLAGQ7xassXa7Vs1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2JZbsLPVjmsVZG3xXfbbHlNI0UcjX61p4f+tlVzKlrM=;
 b=pWqpcoiajZgjnYNUj+xUsTNZyUL1Zi3tlDOzUSyt813MbU5ulvH3bXkz9aUtZWmneBDq0DRj5wNUZXGrcx4+qiOXZv69+Ff60WOr6PVyETGheGQzmuROF4dJdF8GEPYK/qXerd0bUzMYp3IsgyUsWL1LSX02U2x8mzbuTVnmXTg=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB3695.eurprd05.prod.outlook.com (52.134.8.23) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Fri, 16 Aug 2019 06:44:35 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2%6]) with mapi id 15.20.2157.022; Fri, 16 Aug 2019
 06:44:35 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: "stefan@agner.ch" <stefan@agner.ch>, Marcel Ziswiler
 <marcel.ziswiler@toradex.com>, Max Krummenacher
 <max.krummenacher@toradex.com>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "michal.vokac@ysoft.com"
 <michal.vokac@ysoft.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>
Subject: Re: [PATCH v4 20/21] ARM: dts: imx7-colibri: Add UHS support to eval
 board
Thread-Topic: [PATCH v4 20/21] ARM: dts: imx7-colibri: Add UHS support to eval
 board
Thread-Index: AQHVURlFnRbeofYGyEy6mLRVDRVbVKb9We4A
Date: Fri, 16 Aug 2019 06:44:35 +0000
Message-ID: <eda215fd7db7509ddfbe12d83e9ae70674ef1ba4.camel@toradex.com>
References: <20190812142105.1995-1-philippe.schenker@toradex.com>
 <20190812142105.1995-21-philippe.schenker@toradex.com>
In-Reply-To: <20190812142105.1995-21-philippe.schenker@toradex.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
x-originating-ip: [46.140.72.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0b856f5b-3077-4ce0-204a-08d7221533a1
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0502MB3695; 
x-ms-traffictypediagnostic: VI1PR0502MB3695:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0502MB36956974E0F2EE23C2F51312F4AF0@VI1PR0502MB3695.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:370;
x-forefront-prvs: 0131D22242
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(39840400004)(376002)(346002)(136003)(396003)(189003)(199004)(86362001)(2201001)(2501003)(36756003)(66066001)(118296001)(53936002)(81156014)(476003)(8936002)(8676002)(6246003)(44832011)(14444005)(256004)(14454004)(4326008)(11346002)(486006)(2616005)(5660300002)(2906002)(7736002)(66556008)(66446008)(91956017)(76116006)(66946007)(305945005)(66476007)(7416002)(64756008)(25786009)(446003)(3846002)(6116002)(54906003)(110136005)(81166006)(316002)(76176011)(99286004)(6486002)(6436002)(186003)(229853002)(478600001)(26005)(71200400001)(71190400001)(6512007)(6506007)(102836004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB3695;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 51p+/DylqLjFqzdDJugVWXkq4tKWxX/7JgsGd5IX148BX2ii+uVNQXGzaui0jeA4BkK4ggNhAbzW70VC9G7d3LZ7tteeQRxIHXLq1RnobMQSt926W32eLwkIUUDkpyv/Fk7uMWOTTg/1qZIgr19IzrCs1NKZVIOb2g6G7T0r1aa1m0aEKRCpy0zC9YiCVS3v5OMra0RYsBOamZgjl6IkDlhpFhRqYcFKPiaZX7EDkkb6y3z4h8fisC/DsWSDVKWqAudEiaJQ/CCq4InPEv4+gAz02AugDHOlqETWQLPsAxLVwbag7BluyVwtR0EursN682nFW4KCRZVDRMa04/Yr97s4L35CPzUEPD908YhjbJ7i1WC/MvpacLTvsqdMqBVMutd2oK7yZ1GxGt23vP9XHYUzaFpiPtvZ8shWAEQhPbU=
Content-ID: <F1BF490E43A2434C980DAF8C2479961D@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b856f5b-3077-4ce0-204a-08d7221533a1
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Aug 2019 06:44:35.0510 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TC7PLEITQDOAG2W5K3FAYWm45PPjdgWxB1tKxJJaK08/o8W5YVIS0Hbu/049b58EN5cw3baVHL+JBKdYGkBH+1tlFnu5MYNyiklBOrXWfRc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB3695
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_234448_648979_491A54AB 
X-CRM114-Status: GOOD (  15.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.128 listed in list.dnswl.org]
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
Cc: "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2019-08-12 at 14:21 +0000, Philippe Schenker wrote:
> This commit adds UHS capability to Toradex Eval Boards
> 
> Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>

Please ignore this patch. There was a misunderstanding and this one
shouldn't go into mainline. Sorry for that!
> 
> ---
> 
> Changes in v4: None
> Changes in v3:
> - New patch to make use of ARM: dts: imx7-colibri: fix 1.8V/UHS
> support
> 
> Changes in v2: None
> 
>  arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi | 11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi
> b/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi
> index 576dec9ff81c..90121fbe561f 100644
> --- a/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi
> +++ b/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi
> @@ -210,9 +210,16 @@
>  };
>  
>  &usdhc1 {
> -	keep-power-in-suspend;
> -	wakeup-source;
> +	pinctrl-names = "default", "state_100mhz", "state_200mhz";
> +	pinctrl-0 = <&pinctrl_usdhc1 &pinctrl_cd_usdhc1>;
> +	pinctrl-1 = <&pinctrl_usdhc1_100mhz &pinctrl_cd_usdhc1>;
> +	pinctrl-2 = <&pinctrl_usdhc1_200mhz &pinctrl_cd_usdhc1>;
>  	vmmc-supply = <&reg_3v3>;
> +	vqmmc-supply = <&reg_LDO2>;
> +	cd-gpios = <&gpio1 0 GPIO_ACTIVE_LOW>;
> +	disable-wp;
> +	enable-sdio-wakeup;
> +	keep-power-in-suspend;
>  	status = "okay";
>  };
>  
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
