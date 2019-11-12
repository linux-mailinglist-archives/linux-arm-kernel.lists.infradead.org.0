Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A335F8CF1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 11:38:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nKZWY1xIw8RntiusfJ7H+ibgvmm3jpqo0163kBUcSlc=; b=K2C8PBGL+YvTi5
	OxjLeEPamAjHMHLlnr48MygRlFgoJ3H7cyXs36T3ivb31InZfX5WrSj1ONHKEiBlelZoPWRZo93I3
	sVh6jLvFLuxif+egLpEVc2DAdc+0NnTAVcPqdzj5tbcryJyzt8lGQ+9OzZuXguVP4pInBMmeUTk36
	8+uzq2hZ9bzXy9RVjcYCaA4oi1o/lmU5++LMqxyK2eMeCBbapzhOKowtS66GWqX2FwPJdipjQr/4l
	1JCCm3aLmmM6o6mvzPQNMzMbfMjlfl0e7w/BYiVJ81v7WTsmtjMp3PVYnS9zhUy2D6w1Wy08zgkPk
	3TzU9zoshPR3IOWB4iVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUTZT-0004NI-JM; Tue, 12 Nov 2019 10:38:51 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUTZJ-0004Me-Kc
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 10:38:45 +0000
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Nicolas.Ferre@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Nicolas.Ferre@microchip.com";
 x-sender="Nicolas.Ferre@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Nicolas.Ferre@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Nicolas.Ferre@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: IqvHGZCNQKbz8oD5R7IlY+qpbGh8EZQF6I92vjarC0dajycIcE9y8gCNWxeC3+ribYrY5+Nb3b
 VJmrWuhAi8P7T3NxaEgh1gxpv2ACYnwyDRb0tiC/sAQuKQ5fhbOFiFGiydb+fpFWhPVvlGbHcz
 cDTQaVIDk3nGgnmKy8TMSeddkKqbbzUhHWsNEUlxq8OZvCoJ14qMMdvnIQEmezTMnL75QlFhOM
 UHwX8TDtufuNHgMYky9KUPMrk3hO+WZ0euWsW6al/9WLJVUxgBX6qmhHcOu5QyC2qYAENXrLVD
 I/U=
X-IronPort-AV: E=Sophos;i="5.68,296,1569308400"; d="scan'208";a="56200532"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 12 Nov 2019 03:38:37 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 12 Nov 2019 03:38:37 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 12 Nov 2019 03:38:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P42S+s1T8krwYRB1JwnyTx33Vj7jGv7wG2v1+rMJXzz9fs2zHdsQaq2ePFHTfLuz/hDNDcIfMBDlg9DA7cuEj+HTf3hZK+A7ilTVia9IZXFUzMqH+o54NZewAVNLWbfLtQtHW6euHV0afpgzNZQOfnlb5XEuj1GREtKaniv0/5u2eVpx6ghBFXZBG9XLsKjrYoAUTw9+hkLKAkyZERWcqoS8lah+8C1A17f8GpT3jMUx/WszXgxFYAFFEvDr/bElLKFJLVwaYw1zz/HtJSNd8q9I/7sbYWSkFkx4NNdi+6R3sb1Qlv74LsoO5EfIBlG1A+3Ae1/IJx5J6V8bpFhSlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=e3lr2XAScR9iq+EeeRqTGXeyYOg1GAd/JaIVh+dYOU0=;
 b=NAY84Nzp4mgeJhx/F7KdOj4Hw97tWzFp9T1VvVhnyeuf20/B+ZCjA4JTNyerTCtjgy2FHiEtDa1rkkkm6h8mz7FrUHQENAu8In0r9gKmOh/v9A57wJJ29uXXcMy0o7CDuwUqKOS5UIKMyO/vIsO4/785sxepCMY9WmBir+4fF1jdHSu0mdRDHautz13Z0szParCqBo6ekxkWhwMVEqcpYUARi2AWBW7gX2jK9xCPtPDscAe7QIViUyG+cDVyj9tBo9HCgYpQfPBoRMCQIbW+iSiY/bhBnLugDi/cB4VSpTkoGIVRUoXKqVHJZXqBrOGMDiSqtJNlNH/hNT8V8b/r2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=e3lr2XAScR9iq+EeeRqTGXeyYOg1GAd/JaIVh+dYOU0=;
 b=QsGl+gUjnhr0+W2Zh0apiGXRuaA8XFObPMk1hUljIGO+jbi9MzGgJi1CI3cavqFLbUz1YiMOi6o9R88r5A7rhA6D077sOJgaTMtFPqauE03DYlWysFmtiaON8GaKbzdpJjfXGzEShPCAlaiZlS9lzsyGUExy2y/xpUpctiNLT8o=
Received: from SN6PR11MB2830.namprd11.prod.outlook.com (52.135.93.21) by
 SN6PR11MB2655.namprd11.prod.outlook.com (52.135.91.154) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.20; Tue, 12 Nov 2019 10:38:35 +0000
Received: from SN6PR11MB2830.namprd11.prod.outlook.com
 ([fe80::6460:e571:9440:bd83]) by SN6PR11MB2830.namprd11.prod.outlook.com
 ([fe80::6460:e571:9440:bd83%6]) with mapi id 15.20.2430.027; Tue, 12 Nov 2019
 10:38:35 +0000
From: <Nicolas.Ferre@microchip.com>
To: <Eugen.Hristev@microchip.com>, <mturquette@baylibre.com>,
 <sboyd@kernel.org>, <alexandre.belloni@bootlin.com>,
 <linux-clk@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] clk: at91: sam9x60-pll: adapt PMC_PLL_ACR default value
Thread-Topic: [PATCH] clk: at91: sam9x60-pll: adapt PMC_PLL_ACR default value
Thread-Index: AQHVmJP4gkFvDXEvgEe8yodmIU1IZqeHWXyA
Date: Tue, 12 Nov 2019 10:38:35 +0000
Message-ID: <67fc1d0b-5280-3bd6-10ba-0a303b4dc064@microchip.com>
References: <1573478913-19737-1-git-send-email-eugen.hristev@microchip.com>
In-Reply-To: <1573478913-19737-1-git-send-email-eugen.hristev@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: PR0P264CA0182.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:1c::26) To SN6PR11MB2830.namprd11.prod.outlook.com
 (2603:10b6:805:5b::21)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [213.41.198.74]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0db63444-2d7f-4d6b-a880-08d7675c7884
x-ms-traffictypediagnostic: SN6PR11MB2655:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB2655964375E73CC392D5DCB5E0770@SN6PR11MB2655.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 021975AE46
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(396003)(366004)(39860400002)(346002)(376002)(199004)(189003)(36756003)(107886003)(19627235002)(4326008)(5660300002)(256004)(2201001)(31696002)(66556008)(86362001)(229853002)(64756008)(66476007)(6512007)(66446008)(6306002)(31686004)(66066001)(6486002)(99286004)(6246003)(6436002)(66946007)(76176011)(305945005)(7736002)(8936002)(316002)(110136005)(966005)(14454004)(478600001)(186003)(2501003)(6506007)(102836004)(53546011)(386003)(476003)(2616005)(11346002)(446003)(26005)(486006)(25786009)(3846002)(81166006)(6116002)(81156014)(8676002)(2906002)(71190400001)(52116002)(71200400001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN6PR11MB2655;
 H:SN6PR11MB2830.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9aqfYbLxnw1L/oDJCnVkoTEc32BOSGubgYykyZK9MV3mKJs3P+xm5hBOIRu37/2bZNHvLyM4/1Cpsm1YZqhUKd4Q9FN5Z+RBPU7syhkgGMqhdnaaG2IFbg1bQlZkzxe2W6WkO/0rZyUbMjn7crBs3e8fWyUK3Ero6Gan2n52kofTtRV+A+johGcjlNOCaKYBC4wRJeE3eHOvSMmh2QALggE8wriYMg2aTVj0V6REvaD3oqAl5ZQYS/jXHbv7hfI/EuGmOyu6cM0L3TI9Yxu7y5kdI06mW7Zyl9SyGPV2YTqAzELZqFRNrgjejQSAmrNZFC7VyFcsr8M7IsefPOl593C9HakMfAbh9/fpfc8BntLVlAcUp+QZVMyhzoSWhw1ETsVbi1O3txAQikAs6guDg3zJWy4inpVJte5r87h0Ct3CumZm1WRC1OeMKxMNISDihkyMhqrLZvPYxOX7R9W5G5rmUfdjvFT1VCqV28O3dSE=
Content-ID: <37C28964F57BC048A57CA9A75B8F7EFE@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 0db63444-2d7f-4d6b-a880-08d7675c7884
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Nov 2019 10:38:35.5984 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Tg4DSTlgE1W3ez6VlW4u9vsjSqSt+h1wNnqWdlg5u9RMaW5lZ5VikdFewkWKzkr6GuKS169C+tx8RXpoEao/orVqpsLADLJpXLLPo2xjtQU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2655
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_023843_199161_DD3EB37B 
X-CRM114-Status: GOOD (  12.10  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
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
Cc: Ludovic.Desroches@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/11/2019 at 14:28, Eugen Hristev - M18282 wrote:
> From: Eugen Hristev <eugen.hristev@microchip.com>
> 
> Product datasheet recommends different values for UPLL and PLLA analog control
> register.
> Adapt accordingly.
> 
> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>

Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>

Best regards,
   Nicolas

> ---
> 
> datasheet link http://ww1.microchip.com/downloads/en/DeviceDoc/SAM9X60-Data-Sheet-DS60001579A.pdf
> chapter 57.7.10 optimal setting of the PLLA and PLLUTMI
> 
>   drivers/clk/at91/clk-sam9x60-pll.c | 8 ++++++--
>   1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/clk/at91/clk-sam9x60-pll.c b/drivers/clk/at91/clk-sam9x60-pll.c
> index 34b8178..dfb354a 100644
> --- a/drivers/clk/at91/clk-sam9x60-pll.c
> +++ b/drivers/clk/at91/clk-sam9x60-pll.c
> @@ -25,7 +25,8 @@
>   #define		PMC_PLL_CTRL1_MUL_MSK		GENMASK(30, 24)
>   
>   #define PMC_PLL_ACR	0x18
> -#define		PMC_PLL_ACR_DEFAULT		0x1b040010UL
> +#define		PMC_PLL_ACR_DEFAULT_UPLL	0x12020010UL
> +#define		PMC_PLL_ACR_DEFAULT_PLLA	0x00020010UL
>   #define		PMC_PLL_ACR_UTMIVR		BIT(12)
>   #define		PMC_PLL_ACR_UTMIBG		BIT(13)
>   #define		PMC_PLL_ACR_LOOP_FILTER_MSK	GENMASK(31, 24)
> @@ -88,7 +89,10 @@ static int sam9x60_pll_prepare(struct clk_hw *hw)
>   	}
>   
>   	/* Recommended value for PMC_PLL_ACR */
> -	val = PMC_PLL_ACR_DEFAULT;
> +	if (pll->characteristics->upll)
> +		val = PMC_PLL_ACR_DEFAULT_UPLL;
> +	else
> +		val = PMC_PLL_ACR_DEFAULT_PLLA;
>   	regmap_write(regmap, PMC_PLL_ACR, val);
>   
>   	regmap_write(regmap, PMC_PLL_CTRL1,
> 


-- 
Nicolas Ferre

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
