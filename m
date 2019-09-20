Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3D6DB8DDA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 11:35:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VGodtaFbEZEnlNekxEz/it66ZRKCvdy/izfHuP5IWQY=; b=HLSC+VI1JRmGKt
	NjlidE1KN/pzO11j7VMw9JirD5k1wIeJbrr95Tdg+v/MfzSDwF+nNm3KqO9rgdS78AVuAA9uv04/E
	mnSTE7kqiqPVt5L3kJDpRnQzcKdKU2mFI/ekgCilw7DYa5lChayK+OFXMsusCBuNYHRherCqCL4gs
	Ip5OLHHPkNpyl2q8FQetASYxVZhIhlxA+C/0qj+HC621F34CyaFPtK+fILq8o/N6qZqAC6aqrDq1h
	QSavsDJgsMBqb2l3GNsHhQaBEc9IgSyz51rd/fyuqeXjZt84vXUiV9sArclYczkvEOy4MOV3OD7xe
	zE9pKg/TgaD58iOAZqSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBFJs-0004Eu-9g; Fri, 20 Sep 2019 09:35:16 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBFJd-00038C-Eb
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 09:35:05 +0000
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa4.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa4.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Eugen.Hristev@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: 8rKy29Luol9Db2QIBNUPT86VKe6bJcSGz+Dm6/jNb/igjePqxTUyXIFLYuk1yQ/aAYcGimnoWD
 e1J8KVg4qnUsdizo/AgkVdPYepBOX4ovPI8UpWsfUjp/L+qE3tM5mZIcbL4CCcG2v6cT6eCbGm
 tJgjvGXKFyrs8tgWMweRdRPu5rl4K1carfy7FPRSmeHYNGU2LB3SSrBJCtkHQmE165ngGht5Ng
 o7AV3/IESUUiYYbUpM1+M3tqTsmuAGnYNLItwLKR9aBWv4bOPfChM+br3Ae9gcQJhmijdplygf
 6AM=
X-IronPort-AV: E=Sophos;i="5.64,528,1559545200"; d="scan'208";a="48670032"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 20 Sep 2019 02:34:53 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 20 Sep 2019 02:34:52 -0700
Received: from NAM01-BN3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 20 Sep 2019 02:34:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UWQijmq/GimP5zHigV6KvN6Q4ZtYqOlpN08MD7KHSJSrQowR2lKQzi3k+IaUVgnFN8pXH+fgjiZZGDE5ZJ0eAfZfFnMhoaaq08huDupii3+t8vi/1vSJWVJm1yNGTTC1V2txewrg72O7XyVHGIYdrCkELvosTV9Bev2iYTBCG01h3HA0689RTEvAogdYux8fA9ODP8H0DXIEH0HU/TcDe2UgPstJYVlUtYToF0+nfUJca3D5rZrX4+TVXRDMQrhr0JJXpsEjAAV8thsALwiX3azH9PNBmcXrJVv8Iytv6JbUdmmK/gAjaSFXlNFw6bfrweDG8mW2JGG9PiPhWTKHVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QOsDadzVwBuNq3ZciyQUtXnpwsy05qImM9u+utkYVWc=;
 b=Dg4Yiifm0Gv9cYEv4WB4yv96kijvoTrtybWCWMGtMQT3S7HvsvSgYLZQVeIOmLroJDn81kS80spgs00Two1eU3nkdgV4WC3LDosfQ6rbJROISMRCnOhsuhH55EnLMQE7WixcnfUaCkSYY29MykJORSPO1SJEX+bM337r1gZVJJyE/4TsIIuRzZllQZ7gRw92X1tIyN61qKrNjW6Xtk5WuXU01dazBLMiCUSo6g4RTJ6Zl2VHfZ21Eb8mlxL1b+idCVKbZO67hGqRBBrwGtFZzyPIKtb7u55SCfZCxgBf/2KIyV6LBRX2TcSTLVvC95GZ3mRPkhRc4z5tD2aH2NpwKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QOsDadzVwBuNq3ZciyQUtXnpwsy05qImM9u+utkYVWc=;
 b=j5dqSdaYJP29gi9XAbGV2x+OsIQbu26B3okxAKxPZwVBQTNd/UEqfH9vz1pvDGJTK2llYC1ihBAwfCUT+5P9UJlKcsmUoazaokjW/TUS9VVnynwyMmtYXsSGxDZXmgWm+J/DiNn9e85yqEfsC1nN16Y+wEarfbxBUSLwrTssBOI=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1626.namprd11.prod.outlook.com (10.172.36.144) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.20; Fri, 20 Sep 2019 09:34:50 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::a141:1974:9668:fbe2]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::a141:1974:9668:fbe2%12]) with mapi id 15.20.2284.009; Fri, 20 Sep
 2019 09:34:50 +0000
From: <Eugen.Hristev@microchip.com>
To: <Ludovic.Desroches@microchip.com>, <linux-arm-kernel@lists.infradead.org>, 
 <devicetree@vger.kernel.org>, <linux-mmc@vger.kernel.org>
Subject: Re: [PATCH 2/3] mmc: sdhci-of-at91: rework clocks management to
 support SAM9x60 device
Thread-Topic: [PATCH 2/3] mmc: sdhci-of-at91: rework clocks management to
 support SAM9x60 device
Thread-Index: AQHVaaZXS7Ycy6VklEyvhk9SRtfHHac0WHSA
Date: Fri, 20 Sep 2019 09:34:50 +0000
Message-ID: <fb87bb5d-2853-9fed-bf34-a354996636df@microchip.com>
References: <20190912200908.31318-1-ludovic.desroches@microchip.com>
 <20190912200908.31318-2-ludovic.desroches@microchip.com>
In-Reply-To: <20190912200908.31318-2-ludovic.desroches@microchip.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1P189CA0008.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:802:2a::21) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-ms-exchange-messagesentrepresentingtype: 1
x-tagtoolbar-keys: D20190920122919726
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 95f4bb53-7bd6-4ef3-fd1a-08d73dadc862
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:DM5PR11MB1626; 
x-ms-traffictypediagnostic: DM5PR11MB1626:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB1626C510B24E4C6858EEF4EFE8880@DM5PR11MB1626.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0166B75B74
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(136003)(376002)(396003)(346002)(366004)(189003)(199004)(71200400001)(6512007)(81156014)(66066001)(66446008)(5660300002)(8676002)(110136005)(81166006)(4326008)(6436002)(7736002)(54906003)(8936002)(6486002)(14454004)(305945005)(2501003)(478600001)(31686004)(102836004)(186003)(6506007)(386003)(11346002)(66946007)(26005)(64756008)(53546011)(256004)(2906002)(25786009)(52116002)(229853002)(316002)(446003)(6116002)(2201001)(66556008)(76176011)(6246003)(14444005)(3846002)(66476007)(2616005)(36756003)(71190400001)(107886003)(31696002)(476003)(99286004)(486006)(86362001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1626;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 39W34wGqFfDvnM7AWRGwGr+oQUZK3vLEAcPQygmtJpqx25zF/IHqaNQwk8FP3DBeJw5wiqhvyCjQ37nLvToJvPAk7TzBPwMe+YJ4x+c5TDqyF6khazRZyW2M/m3J4+5aHjewXg/IFpUiAY+cNmhoI4E0srIdMPB6wmQI0B2HkGA+/JreJ2+g0pV6DHm5XL4i0/1CvsuheytJ+Fvuh8DVNnpZkipEsOPNLZOm1sgZroOcgjfZQQw3jNmnz3vry1NznySNdPSofZy6mN+FcKwAycUGwJRDrFjmojz9a9SZdXVU1FrAfJ4JS7uxCPbrEKmXzXj2cBPJ3xNMzaW03zmM130feXFY4HoI0X4WG1efFChvAroic1C1+1swxqWetRMSgo1ovVZmr/UZLutr05pjcjaDiBElwgKG9w1YmA/bM3o=
Content-ID: <9497F3C1BA13734ABE531EDA73990DD3@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 95f4bb53-7bd6-4ef3-fd1a-08d73dadc862
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Sep 2019 09:34:50.0389 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aMZEIDZ4fcyBf9qbareQFmuqMOVnEMZPqh9uulgwUuGEopihLdExRjpn5EoxTNMKYR2zCGsSZfW7NQdSxjgdDtjqeKdEzpci8Qvq+A0pB8w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1626
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_023501_553376_43EC8976 
X-CRM114-Status: GOOD (  25.54  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, ulf.hansson@linaro.org, linux-kernel@vger.kernel.org,
 adrian.hunter@intel.com, robh+dt@kernel.org, Claudiu.Beznea@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 12.09.2019 23:09, Ludovic Desroches wrote:

> 
> In the SAM9x60 SoC, there are only two clocks instead of three for the
> SDHCI device. The base clk is no longer provided, it is generated
> internally from the mult clk.
> 
> The values of the base clk and mul in the capabilities registers may not
> reflect the reality as the mult clk is a programmable clock which can take
> several rates. As we can't trust those values, take them from the clock
> tree and update the capabilities according to.
> 
> As we can have the same pitfall, in some cases, with the SAMA5D2 Soc,
> stop relying on capabilities too.
> 
> Signed-off-by: Ludovic Desroches <ludovic.desroches@microchip.com>
> ---
>   drivers/mmc/host/sdhci-of-at91.c | 104 +++++++++++++++++--------------
>   1 file changed, 57 insertions(+), 47 deletions(-)
> 
> diff --git a/drivers/mmc/host/sdhci-of-at91.c b/drivers/mmc/host/sdhci-of-at91.c
> index e7d1920729fb..a9c126f14d85 100644
> --- a/drivers/mmc/host/sdhci-of-at91.c
> +++ b/drivers/mmc/host/sdhci-of-at91.c
> @@ -30,7 +30,14 @@
>   
>   #define SDHCI_AT91_PRESET_COMMON_CONF	0x400 /* drv type B, programmable clock mode */
>   
> +struct sdhci_at91_soc_data {
> +	const struct sdhci_pltfm_data *pdata;
> +	bool baseclk_is_generated_internally;
> +	unsigned int divider_for_baseclk;
> +};
> +
>   struct sdhci_at91_priv {
> +	const struct sdhci_at91_soc_data *soc_data;
>   	struct clk *hclock;
>   	struct clk *gck;
>   	struct clk *mainck;
> @@ -130,12 +137,24 @@ static const struct sdhci_ops sdhci_at91_sama5d2_ops = {
>   	.set_power		= sdhci_at91_set_power,
>   };
>   
> -static const struct sdhci_pltfm_data soc_data_sama5d2 = {
> +static const struct sdhci_pltfm_data sdhci_sama5d2_pdata = {
>   	.ops = &sdhci_at91_sama5d2_ops,
>   };
>   
> +static const struct sdhci_at91_soc_data soc_data_sama5d2 = {
> +	.pdata = &sdhci_sama5d2_pdata,
> +	.baseclk_is_generated_internally = false,
> +};
> +
> +static const struct sdhci_at91_soc_data soc_data_sam9x60 = {
> +	.pdata = &sdhci_sama5d2_pdata,
> +	.baseclk_is_generated_internally = true,
> +	.divider_for_baseclk = 2,
> +};
> +
>   static const struct of_device_id sdhci_at91_dt_match[] = {
>   	{ .compatible = "atmel,sama5d2-sdhci", .data = &soc_data_sama5d2 },
> +	{ .compatible = "microchip,sam9x60-sdhci", .data = &soc_data_sam9x60 },
>   	{}
>   };
>   MODULE_DEVICE_TABLE(of, sdhci_at91_dt_match);
> @@ -145,50 +164,36 @@ static int sdhci_at91_set_clks_presets(struct device *dev)
>   	struct sdhci_host *host = dev_get_drvdata(dev);
>   	struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
>   	struct sdhci_at91_priv *priv = sdhci_pltfm_priv(pltfm_host);
> -	int ret;
>   	unsigned int			caps0, caps1;
>   	unsigned int			clk_base, clk_mul;
> -	unsigned int			gck_rate, real_gck_rate;
> +	unsigned int			gck_rate, clk_base_rate;
>   	unsigned int			preset_div;
>   
> -	/*
> -	 * The mult clock is provided by as a generated clock by the PMC
> -	 * controller. In order to set the rate of gck, we have to get the
> -	 * base clock rate and the clock mult from capabilities.
> -	 */
>   	clk_prepare_enable(priv->hclock);
>   	caps0 = readl(host->ioaddr + SDHCI_CAPABILITIES);
>   	caps1 = readl(host->ioaddr + SDHCI_CAPABILITIES_1);
> -	clk_base = (caps0 & SDHCI_CLOCK_V3_BASE_MASK) >> SDHCI_CLOCK_BASE_SHIFT;
> -	clk_mul = (caps1 & SDHCI_CLOCK_MUL_MASK) >> SDHCI_CLOCK_MUL_SHIFT;
> -	gck_rate = clk_base * 1000000 * (clk_mul + 1);
> -	ret = clk_set_rate(priv->gck, gck_rate);
> -	if (ret < 0) {
> -		dev_err(dev, "failed to set gck");
> -		clk_disable_unprepare(priv->hclock);
> -		return ret;
> -	}
> -	/*
> -	 * We need to check if we have the requested rate for gck because in
> -	 * some cases this rate could be not supported. If it happens, the rate
> -	 * is the closest one gck can provide. We have to update the value
> -	 * of clk mul.
> -	 */
> -	real_gck_rate = clk_get_rate(priv->gck);
> -	if (real_gck_rate != gck_rate) {
> -		clk_mul = real_gck_rate / (clk_base * 1000000) - 1;
> -		caps1 &= (~SDHCI_CLOCK_MUL_MASK);
> -		caps1 |= ((clk_mul << SDHCI_CLOCK_MUL_SHIFT) &
> -			  SDHCI_CLOCK_MUL_MASK);
> -		/* Set capabilities in r/w mode. */
> -		writel(SDMMC_CACR_KEY | SDMMC_CACR_CAPWREN,
> -		       host->ioaddr + SDMMC_CACR);
> -		writel(caps1, host->ioaddr + SDHCI_CAPABILITIES_1);
> -		/* Set capabilities in ro mode. */
> -		writel(0, host->ioaddr + SDMMC_CACR);
> -		dev_info(dev, "update clk mul to %u as gck rate is %u Hz\n",
> -			 clk_mul, real_gck_rate);
> -	}
> +
> +	gck_rate = clk_get_rate(priv->gck);
> +	if (priv->soc_data->baseclk_is_generated_internally)
> +		clk_base_rate = gck_rate / priv->soc_data->divider_for_baseclk;
> +	else
> +		clk_base_rate = clk_get_rate(priv->mainck);
> +
> +	clk_base = clk_base_rate / 1000000;
> +	clk_mul = gck_rate / clk_base_rate - 1;
> +
> +	caps0 &= (~SDHCI_CLOCK_V3_BASE_MASK);
> +	caps0 |= ((clk_base << SDHCI_CLOCK_BASE_SHIFT) & SDHCI_CLOCK_V3_BASE_MASK);
> +	caps1 &= (~SDHCI_CLOCK_MUL_MASK);
> +	caps1 |= ((clk_mul << SDHCI_CLOCK_MUL_SHIFT) & SDHCI_CLOCK_MUL_MASK);
> +	/* Set capabilities in r/w mode. */
> +	writel(SDMMC_CACR_KEY | SDMMC_CACR_CAPWREN, host->ioaddr + SDMMC_CACR);

Hi Ludovic,

I have a feeling that here you may wish to also write the caps0 to the 
SDHC_CAPABILITIES:
writel(caps0, host->ioaddr + SDHCI_CAPABILITIES);

You are computing the caps0 but not writing them to register.

Eugen

> +	writel(caps1, host->ioaddr + SDHCI_CAPABILITIES_1);
> +	/* Set capabilities in ro mode. */
> +	writel(0, host->ioaddr + SDMMC_CACR);
> +
> +	dev_info(dev, "update clk mul to %u as gck rate is %u Hz and clk base is %u Hz\n",
> +		 clk_mul, gck_rate, clk_base_rate);
>   
>   	/*
>   	 * We have to set preset values because it depends on the clk_mul
> @@ -196,19 +201,19 @@ static int sdhci_at91_set_clks_presets(struct device *dev)
>   	 * maximum sd clock value is 120 MHz instead of 208 MHz. For that
>   	 * reason, we need to use presets to support SDR104.
>   	 */
> -	preset_div = DIV_ROUND_UP(real_gck_rate, 24000000) - 1;
> +	preset_div = DIV_ROUND_UP(gck_rate, 24000000) - 1;
>   	writew(SDHCI_AT91_PRESET_COMMON_CONF | preset_div,
>   	       host->ioaddr + SDHCI_PRESET_FOR_SDR12);
> -	preset_div = DIV_ROUND_UP(real_gck_rate, 50000000) - 1;
> +	preset_div = DIV_ROUND_UP(gck_rate, 50000000) - 1;
>   	writew(SDHCI_AT91_PRESET_COMMON_CONF | preset_div,
>   	       host->ioaddr + SDHCI_PRESET_FOR_SDR25);
> -	preset_div = DIV_ROUND_UP(real_gck_rate, 100000000) - 1;
> +	preset_div = DIV_ROUND_UP(gck_rate, 100000000) - 1;
>   	writew(SDHCI_AT91_PRESET_COMMON_CONF | preset_div,
>   	       host->ioaddr + SDHCI_PRESET_FOR_SDR50);
> -	preset_div = DIV_ROUND_UP(real_gck_rate, 120000000) - 1;
> +	preset_div = DIV_ROUND_UP(gck_rate, 120000000) - 1;
>   	writew(SDHCI_AT91_PRESET_COMMON_CONF | preset_div,
>   	       host->ioaddr + SDHCI_PRESET_FOR_SDR104);
> -	preset_div = DIV_ROUND_UP(real_gck_rate, 50000000) - 1;
> +	preset_div = DIV_ROUND_UP(gck_rate, 50000000) - 1;
>   	writew(SDHCI_AT91_PRESET_COMMON_CONF | preset_div,
>   	       host->ioaddr + SDHCI_PRESET_FOR_DDR50);
>   
> @@ -303,7 +308,7 @@ static const struct dev_pm_ops sdhci_at91_dev_pm_ops = {
>   static int sdhci_at91_probe(struct platform_device *pdev)
>   {
>   	const struct of_device_id	*match;
> -	const struct sdhci_pltfm_data	*soc_data;
> +	const struct sdhci_at91_soc_data	*soc_data;
>   	struct sdhci_host		*host;
>   	struct sdhci_pltfm_host		*pltfm_host;
>   	struct sdhci_at91_priv		*priv;
> @@ -314,17 +319,22 @@ static int sdhci_at91_probe(struct platform_device *pdev)
>   		return -EINVAL;
>   	soc_data = match->data;
>   
> -	host = sdhci_pltfm_init(pdev, soc_data, sizeof(*priv));
> +	host = sdhci_pltfm_init(pdev, soc_data->pdata, sizeof(*priv));
>   	if (IS_ERR(host))
>   		return PTR_ERR(host);
>   
>   	pltfm_host = sdhci_priv(host);
>   	priv = sdhci_pltfm_priv(pltfm_host);
> +	priv->soc_data = soc_data;
>   
>   	priv->mainck = devm_clk_get(&pdev->dev, "baseclk");
>   	if (IS_ERR(priv->mainck)) {
> -		dev_err(&pdev->dev, "failed to get baseclk\n");
> -		return PTR_ERR(priv->mainck);
> +		if (soc_data->baseclk_is_generated_internally) {
> +			priv->mainck = NULL;
> +		} else {
> +			dev_err(&pdev->dev, "failed to get baseclk\n");
> +			return PTR_ERR(priv->mainck);
> +		}
>   	}
>   
>   	priv->hclock = devm_clk_get(&pdev->dev, "hclock");
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
