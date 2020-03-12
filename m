Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 569AD1833DE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 15:55:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TFPUWiyVEMx+yAV2YwPHG665dqHH1i1+YyEdiuIO460=; b=KT4xMTAv7Iwhtt
	5A1IpRhBTmvTx2pUP3tk05z5BTBky51/QJfw839Bf93Ug9Ti+06u0fkU0GYrVja0gpref04GbrLXU
	/YM7KPSuKSlP/uM6fUkObDHciZgJ1s0TgEJzzRqH9TlI0gLLP5e345S2/cwmoz0E9TDMXzxlXlf7o
	NIpu1WUkxS0uhoxWPrwW68FWbV9g5Bd2T8HjDyR1tYiHRo07j6i5vSY5OM9wf0rSvTD/mjq86luNF
	20WPXSB2cJSH6ic1H5U/o1XYETNdaDl6I6VdW5ucvy+0Uh7G17tZqPGTHTs6b6U1//stSKdBw6BQR
	KQYXV5d7udje6UWY5uzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCPFN-0005vD-Bk; Thu, 12 Mar 2020 14:55:41 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCPFE-0005uH-NO
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 14:55:34 +0000
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Ludovic.Desroches@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="Ludovic.Desroches@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Ludovic.Desroches@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: /2LqKV2qybmAZOLZXIfMpa5QVhKA4AWQidxoERMzT6mzWPlt8DhF9kZIFMqgPwUW7aWnK430bu
 Geu0Oi368wPwPg0i1X/VHWAbI+j6nXHLmuQA/2yxGJRUt3xnBvc5TJEbcWplFYScLzWgDo7u42
 Wgzop+MvKg2OGgUw8GOLhQmErX1FiwhZEo7RVMfkzL8MuTyr3b56SK+1A+J0qQOJeV/jwb8WWJ
 6jsa3wy6XYLtTHUBBrE6Okvn++xWxmBlnBU5Hq68cGFUaqgJwpz2+RJF0EbMKc6Lk1122vWaor
 sh8=
X-IronPort-AV: E=Sophos;i="5.70,545,1574146800"; d="scan'208";a="68632617"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 12 Mar 2020 07:55:27 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 12 Mar 2020 07:55:20 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 12 Mar 2020 07:55:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mHB9W0m1Do8Bxz7kOp7FVI9xzltpEVZDrPEtEYSo1g9EW3UFA9Uorftxj4itHcwm0l76OoKjvUtqlAxkdryl7sDnol38nzQ7ySvxVBkNKKwgU1UMohpDqpkN+vpaFHaxr76eWgEaL0ubIKpFkhVNybSdYatahOfQfiweRLXMIXco0YdC6OcBqIBZXvVWgcmtqjzTGKjng3gIO1fSCjH58DYNqN0kTYyG47Ge9L1jH+ffe6JXa4A+CAWnizht958NNXMzp7gUi+8gZuuea5O10zcXS93bTtzBkAotrOT2GMfugitUorpc1tDryz6pn6i97ctiVQjKaVd7CqJ1U3qXyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=z+TobI91BvPcgD1zQGyl/Gwy9oZPqN9/Dah756QRSWo=;
 b=EqB5umjmHxBnsnX+ICmGQbGqdlKHOCnjs/HzfFkwtQBFrpooHZEJki5s9v6m+FoOLVXOp9ZJRYABWcbB2TKfUwxgzb6B8u5rpf8KwK5rglEx4qUOxZQe7ZFINP3LmIRTsFzt7dDNfN5a93zdwafTQYQawP34Yw4zezQle9wH9gYxSzwp93svU77Ocg/D8KghVv3YuPKsiixnt/QYhoVjcbOgBANF7lxC9DHhxkqqZRFah+IdrJIxXM9tkAto2NmxRy66zFqAgTSjGuXgYBwOUL5Q+BTOBAFxUbg+eBL2OJgPqdy/AGJXl4TqYpLNhe/1FbKSFoakrYHsqye+uq4NXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=z+TobI91BvPcgD1zQGyl/Gwy9oZPqN9/Dah756QRSWo=;
 b=ZeUfR5IUljyCC61KREJe4DiYvvBexfbJx2kqTRX3VKkxjoiHI+0LSppXTIGB1yUSerROTuRWNeIWUS7HmJmjdnPEXk+LET5GB4aDDJJPuNhS8LZeNojQJuu5gwvBKNhSSISiYv0BSVgWcn3fXZYaaFcrAqQdRafjs4mIGTHaECM=
Received: from BY5PR11MB3895.namprd11.prod.outlook.com (2603:10b6:a03:18e::21)
 by BY5PR11MB4193.namprd11.prod.outlook.com (2603:10b6:a03:1c8::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.17; Thu, 12 Mar
 2020 14:55:15 +0000
Received: from BY5PR11MB3895.namprd11.prod.outlook.com
 ([fe80::c09b:2e03:b941:13c5]) by BY5PR11MB3895.namprd11.prod.outlook.com
 ([fe80::c09b:2e03:b941:13c5%5]) with mapi id 15.20.2793.018; Thu, 12 Mar 2020
 14:55:15 +0000
From: <Ludovic.Desroches@microchip.com>
To: <Tudor.Ambarus@microchip.com>, <adrian.hunter@intel.com>,
 <ulf.hansson@linaro.org>
Subject: Re: [PATCH] mmc: sdhci-of-at91: Display clock changes for debug
 purpose only
Thread-Topic: [PATCH] mmc: sdhci-of-at91: Display clock changes for debug
 purpose only
Thread-Index: AQHV+HqhVonJfj9ooEG0j49qskyYOKhFC4MA
Date: Thu, 12 Mar 2020 14:55:15 +0000
Message-ID: <6291bd95-3d11-4b19-4346-9e1f06918993@microchip.com>
References: <20200312142904.232822-1-tudor.ambarus@microchip.com>
In-Reply-To: <20200312142904.232822-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
x-originating-ip: [213.41.198.74]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 33707f5e-78bb-450c-7771-08d7c6955fce
x-ms-traffictypediagnostic: BY5PR11MB4193:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB4193DC2D36B47C8AC2182FB4EFFD0@BY5PR11MB4193.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 0340850FCD
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(396003)(376002)(366004)(39860400002)(136003)(199004)(66446008)(8936002)(110136005)(54906003)(76116006)(316002)(66476007)(5660300002)(81156014)(91956017)(31696002)(81166006)(64756008)(2906002)(66556008)(66946007)(8676002)(53546011)(6506007)(478600001)(31686004)(4326008)(86362001)(107886003)(71200400001)(36756003)(6512007)(6486002)(2616005)(186003)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BY5PR11MB4193;
 H:BY5PR11MB3895.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0MG9TA6T9jwhJXpGdsuPOBqlilo0tbXoeMmLOVLbCk05jAu0pA79AkSNvy8bUQh7ZgPC56VHS5AEnoj8cZ9n2YTrvDDUi5yVE2pmH+h+4CEVcFejGEAhGzo+rU5gZcigl/dxa1z+ckziWla74J6fs8ssNFqfBknXA4zdOhr2HzYH3BSmbauslwUm5LUBZjwqBfRtsCZG4vYtthihk4liN/eXiL2sivNluGM21DwhFGr7UsyTM5lf9YeCRE+f/e8p6NOUG4YUp+6H/kOKNwN1crnGnE2QJ+tUv1BYW4W5SESfbSB+aK3FvXRch/4WwKMM5sgHvWlM3HxiDhl7KHjuiaKGwvA+VA5yIs3EaWKGJexpdZIO/ejTECMlS9kFZNG3Sw/eBNJi1+UgTW7wuoU2XqWqG7zUwG9BWVdrX5IU3nFJdPlhrRxi3hP2+pHFbyeY
x-ms-exchange-antispam-messagedata: 2PTHya+ZKnc9Wg3XL/6Hi1YDuVWDeKQnpCBhLDQGPsOPgDR17x/ZB1MuUCOho4BI9sF7OwS9no5F8m+99INXchlad2hbwdfp5W7N/HJzEbyZrx013DcpTih+Anml1Xk+XM9glg/rMxzL0CF4XodPkA==
Content-ID: <711D53F63E292640B160FC04CBDF5811@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 33707f5e-78bb-450c-7771-08d7c6955fce
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Mar 2020 14:55:15.4948 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tA3KDyl+j1PNmCiIc3zDT5T+ipmdF6xLySgGbR6orFcNJiHg8/s6BXPSGcw9NbDM+p7YpAgsdGSDhnBunpUwJWUaOayf3jt67abt2CvzeAI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4193
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_075532_773414_30D1E9B6 
X-CRM114-Status: GOOD (  14.66  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: alexandre.belloni@bootlin.com, Cristian.Birsan@microchip.com,
 linux-mmc@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 3/12/2020 3:29 PM, Tudor Ambarus - M18064 wrote:
> From: Cristian Birsan <cristian.birsan@microchip.com>
>
> The sdhci_at91_set_clks_presets() function is called multiple times
> at runtime and the messages are shown on the console. Display clk mul,
> gck rate and clk base for debug porpose only.

s/porpose/purpose

>
> Signed-off-by: Cristian Birsan <cristian.birsan@microchip.com>
> Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>

Acked-by: Ludovic Desroches <ludovic.desroches@microchip.com>

Thanks

> ---
>   drivers/mmc/host/sdhci-of-at91.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/mmc/host/sdhci-of-at91.c b/drivers/mmc/host/sdhci-of-at91.c
> index ab2bd314a390..88f17abb69a7 100644
> --- a/drivers/mmc/host/sdhci-of-at91.c
> +++ b/drivers/mmc/host/sdhci-of-at91.c
> @@ -204,8 +204,8 @@ static int sdhci_at91_set_clks_presets(struct device *dev)
>   	/* Set capabilities in ro mode. */
>   	writel(0, host->ioaddr + SDMMC_CACR);
>   
> -	dev_info(dev, "update clk mul to %u as gck rate is %u Hz and clk base is %u Hz\n",
> -		 clk_mul, gck_rate, clk_base_rate);
> +	dev_dbg(dev, "update clk mul to %u as gck rate is %u Hz and clk base is %u Hz\n",
> +		clk_mul, gck_rate, clk_base_rate);
>   
>   	/*
>   	 * We have to set preset values because it depends on the clk_mul


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
