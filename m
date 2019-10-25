Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE328E46AA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 11:07:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ku/HmmwQMCXjYSMv2IOF2DYXt/mFGpsH9HXlY5R53YM=; b=eG7cDqjOCJRl0D
	r6pZWjxsiSVnXmI2CH9BJbCWrdY+KMIku7kM9iXFAEy/NCw9AbTmX1c49t0bkHiL2wwVjxguD/QPl
	ZWFlmNrtugdd2l7VlU/frixI+uWrdDGZnWCLN8qVvdlCv8hAiESBOeJyUGv5S2z/AjnU7f3Go9eZr
	m2PIbzK5XoE3v/Pg6mJHQvPZhZpfb00fGqngsNx/1caDGkgV0SRUDi8VBhRgvNfWA1hNOYUeFbzo5
	2gKJ+G9PNRL0WBi+6fQGdAGQmTEEtBwJR/Wgsiwvz1JGuK3VLezhj3QZ4i+vBDdf41EX4RdOlaDAr
	T/A5zE3LQx90zB+bIogQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNvZZ-0008Ms-7Q; Fri, 25 Oct 2019 09:07:53 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNvZP-0008ML-Mh
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 09:07:45 +0000
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: IexAyWthAuiLEYdXymJH5wRWhzQHNSXelgGrFn+a8xzkkNhJU+aU+VsO+0ydluBz0iiVMDP0fj
 eLJTcOQodps2cr4GMVlWh+Q+vX1pkyn//tkuO4OL9dzdA6WatJoZBFKGA/IIm/021J3MKtvYNh
 NXXBvUEcCbLVhEZOze4DHRHjWlc5mitzXvcjJShF+FRDBvP7xPLL5JyxymnZsx9p2PxsKzksbF
 q2ZNX0bHe1hCy8SgEkpFaR2rE7aJCkSBGT6U7GpLpaMoN7QLd2rEqUL0QeKzCGNH5YiPWCxz3s
 dZY=
X-IronPort-AV: E=Sophos;i="5.68,228,1569308400"; d="scan'208";a="52906644"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 25 Oct 2019 02:07:43 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 25 Oct 2019 02:07:34 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 25 Oct 2019 02:07:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RmUrAIVSI4/mPZbmXVtqHNbOQ3LHiBGIJ4hxtzsxGNd47+NBVgMqio88aZzOCvOiZDVDgQgeqg+sdrcFZNZMtSv4sEFFOCMIRIBR/v4nMx8ZLH8txD3f7SLSRlV8uIqEsEmjBWinNEdkvE/B4LejNnuQemx28RlXtBDEPNkPDN3HIc08Ue6Tud/ciUGLAp2NydIcvDBqUegieqQd+IKO+90CpeXZbRBCN1BHLCyzN1tGE0HcyQicztcTWO1+HerhDW6C9f4exH+EC+bq7Wm9Tda/EALrV4osDO32m9gOBln7d6RHHefC7wR9uj9cmHwGVfJ3TdlWOb//FqWfGxsaNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CQbfEhqlNKf6UbNoH49tqM0zOAmq92qItby+ITKgtu8=;
 b=WuiHFxxdx+zSZFVrU/SY9ZNSsWzc9+WD0DDLW76GYuEcMyEf0Qo0Ahphw6li8m3//DdgtHs8W0RKqBiWrTRzDUTHmZ+VYqs/NhQ+qRs9zTlNN0OUN0Ig5kCCjK6ClejvQaN8ASwqSiwYK+awJliyY01V4id16UE7IW1Rvy41Vqs5b3PVn4S25/YVrJEk8xQkkYZPEgQoIAsVPenCZOLoRkoMCVgnt2NmryjSWxhQ0cSnDVHUMqTuOvQKIHBfiP+8SSA5V/uC90lpzy46S3z5yz8V1qoA4u2Kv2xfTB1Kwgl6mgg1sgNetmoVebYNfNmqaGO00/h/PgK4ZVtAo2qIRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CQbfEhqlNKf6UbNoH49tqM0zOAmq92qItby+ITKgtu8=;
 b=npb34cvgLh20pod/fzJ6IYFeqRwPP+XzwMMK6Tm98npnufcqXRIx/4/7ZZaUfBNC3XpEUsgh+ifKL+Uf+IxxvxhcRj6se4NrsuOUb0VD4jMauBGhoOGIT+Z9h6l3IHt2x+Dn+v0zhUxWsOdezaAiq53IX9bidxfCYnYH2Upjutk=
Received: from DM6PR11MB3225.namprd11.prod.outlook.com (20.176.120.85) by
 DM6PR11MB2572.namprd11.prod.outlook.com (20.176.100.31) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2367.24; Fri, 25 Oct 2019 09:07:29 +0000
Received: from DM6PR11MB3225.namprd11.prod.outlook.com
 ([fe80::3874:9f3c:5325:d22]) by DM6PR11MB3225.namprd11.prod.outlook.com
 ([fe80::3874:9f3c:5325:d22%6]) with mapi id 15.20.2387.023; Fri, 25 Oct 2019
 09:07:29 +0000
From: <Claudiu.Beznea@microchip.com>
To: <Codrin.Ciubotariu@microchip.com>, <linux-crypto@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 2/2] hwrng: atmel: add new platform support for sam9x60
Thread-Topic: [PATCH 2/2] hwrng: atmel: add new platform support for sam9x60
Thread-Index: AQHVixOa0hr3oqzTbEKwBZhiv5PNKg==
Date: Fri, 25 Oct 2019 09:07:28 +0000
Message-ID: <d5274a26-ae1b-f1c2-136c-3e3b6a9a69e7@microchip.com>
References: <20191024170452.2145-1-codrin.ciubotariu@microchip.com>
 <20191024170452.2145-2-codrin.ciubotariu@microchip.com>
In-Reply-To: <20191024170452.2145-2-codrin.ciubotariu@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: PR0P264CA0163.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:1b::31) To DM6PR11MB3225.namprd11.prod.outlook.com
 (2603:10b6:5:59::21)
x-ms-exchange-messagesentrepresentingtype: 1
x-tagtoolbar-keys: D20191025120719921
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d1f602ac-96c9-4f47-8ea5-08d7592ac2bf
x-ms-traffictypediagnostic: DM6PR11MB2572:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB257239FF7F7269B2E1BDB74E87650@DM6PR11MB2572.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:242;
x-forefront-prvs: 02015246A9
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(396003)(39860400002)(346002)(136003)(376002)(199004)(189003)(256004)(7416002)(52116002)(14454004)(476003)(11346002)(2616005)(186003)(2906002)(66066001)(26005)(6506007)(31686004)(316002)(102836004)(486006)(110136005)(76176011)(71190400001)(478600001)(54906003)(71200400001)(53546011)(386003)(81166006)(305945005)(6486002)(446003)(7736002)(2201001)(8676002)(31696002)(229853002)(64756008)(25786009)(81156014)(4326008)(8936002)(99286004)(6246003)(5660300002)(6116002)(66476007)(66556008)(66446008)(3846002)(36756003)(66946007)(6512007)(86362001)(6436002)(2501003)(138113003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR11MB2572;
 H:DM6PR11MB3225.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WiTZTuJSHC+uq0YuseIV/QgWNeBJtCtfnMqKmKpktCwtHbDfy86ChIWf1Zgo9hDUuzEanVzRgUC4ZXzlBnW0msACqkha/sbe7IffNJeW3OLtLKU+qCXDMG+d9vJJnyOWSmNdauyNklGaPPzC6ieeTrMgj51uRhgVCQDlpV5ftdPx6aEY/nQmQ9CZLcjqzLIqhYkPQYYxbQZBgvxnr8nqHdJOWW9NlWWhTZo6jaTtzs6fQ4gx9B/nk+dFyslkp71cN4dOTfg6K2m+SL4YPhxo+jYOK8+FVi5XpUEwt0lue0G5vaG0MG9lArDJiex6/TOwmREhn4H1LoqPCRO4cLrq8kN523rCGvMz1hGv45VKNFhIK5wS0LL+DlHcLH+aPw5oL9yuCfSWjG8Js0Ub6yJujmV2MMX+NlU+iDqlX6Gno8zy18IvemwzYco79wuhUtZC
Content-ID: <B23E54D3BB3A5C4285E1997EB4B53632@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: d1f602ac-96c9-4f47-8ea5-08d7592ac2bf
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Oct 2019 09:07:28.8386 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HJZP/Sa1KqebVL5POBstR+KAJsu9aHgq2PPjzXsjShprazqXkasVA0ZKeH5D+idPQVQbz4g/rYwATPlWStNwYlge3COlT0o0c8kZnOWveiI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2572
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_020743_803108_C6971153 
X-CRM114-Status: GOOD (  18.09  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, alexandre.belloni@bootlin.com,
 herbert@gondor.apana.org.au, arnd@arndb.de, Tudor.Ambarus@microchip.com,
 Ludovic.Desroches@microchip.com, robh+dt@kernel.org, mpm@selenic.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Codrin,

On 24.10.2019 20:04, Codrin Ciubotariu wrote:
> Add platform support for the new IP found on sam9x60 SoC. For this
> version, if the peripheral clk is above 100MHz, the HALFR bit must be
> set. This bit is available only if the IP can generate a random number
> every 168 cycles (instead of 84).
> 
> Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
> ---
>  drivers/char/hw_random/atmel-rng.c | 39 ++++++++++++++++++++++++++++--
>  1 file changed, 37 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/char/hw_random/atmel-rng.c b/drivers/char/hw_random/atmel-rng.c
> index e55705745d5e..0aa9425e6c3e 100644
> --- a/drivers/char/hw_random/atmel-rng.c
> +++ b/drivers/char/hw_random/atmel-rng.c
> @@ -14,14 +14,22 @@
>  #include <linux/clk.h>
>  #include <linux/io.h>
>  #include <linux/hw_random.h>
> +#include <linux/of_device.h>
>  #include <linux/platform_device.h>
>  
>  #define TRNG_CR		0x00
> +#define TRNG_MR		0x04
>  #define TRNG_ISR	0x1c
>  #define TRNG_ODATA	0x50
>  
>  #define TRNG_KEY	0x524e4700 /* RNG */
>  
> +#define TRNG_HALFR	BIT(0) /* generate RN every 168 cycles */
> +
> +struct atmel_trng_pdata {
> +	bool has_half_rate;
> +};
> +
>  struct atmel_trng {
>  	struct clk *clk;
>  	void __iomem *base;
> @@ -63,6 +71,7 @@ static int atmel_trng_probe(struct platform_device *pdev)
>  {
>  	struct atmel_trng *trng;
>  	struct resource *res;
> +	const struct atmel_trng_pdata *pdata;
>  	int ret;
>  
>  	trng = devm_kzalloc(&pdev->dev, sizeof(*trng), GFP_KERNEL);
> @@ -77,6 +86,17 @@ static int atmel_trng_probe(struct platform_device *pdev)
>  	trng->clk = devm_clk_get(&pdev->dev, NULL);
>  	if (IS_ERR(trng->clk))
>  		return PTR_ERR(trng->clk);
> +	pdata = of_device_get_match_data(&pdev->dev);
> +	if (!pdata)
> +		return -ENODEV;
> +
> +	if (pdata->has_half_rate) {
> +		unsigned long rate = clk_get_rate(trng->clk);
> +
> +		/* if peripheral clk is above 100MHz, set HALFR */
> +		if (rate > 100000000)
> +			writel(TRNG_HALFR, trng->base + TRNG_MR);
> +	}>
>  	ret = clk_prepare_enable(trng->clk);
>  	if (ret)
> @@ -141,9 +161,24 @@ static const struct dev_pm_ops atmel_trng_pm_ops = {
>  };
>  #endif /* CONFIG_PM */
>  
> +static struct atmel_trng_pdata at91sam9g45_config = {
> +	.has_half_rate = false,
> +};

You can use const for this.

> +
> +static struct atmel_trng_pdata sam9x60_config = {
> +	.has_half_rate = true,
> +};
> +

Same here.

>  static const struct of_device_id atmel_trng_dt_ids[] = {
> -	{ .compatible = "atmel,at91sam9g45-trng" },
> -	{ /* sentinel */ }
> +	{
> +		.compatible = "atmel,at91sam9g45-trng",
> +		.data = &at91sam9g45_config,
> +	}, {
> +		.compatible = "microchip,sam9x60-trng",
> +		.data = &sam9x60_config,
> +	}, {
> +		/* sentinel */
> +	}
>  };
>  MODULE_DEVICE_TABLE(of, atmel_trng_dt_ids);
>  
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
