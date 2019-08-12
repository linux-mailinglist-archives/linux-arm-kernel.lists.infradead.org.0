Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F19468A26C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 17:38:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2rVq0zQ3/vSlE2rORF015VrQtLrk0i2n9qsw4UvoxLA=; b=hfkhtVs3I4EjP/
	3urtIstFTPU+jt45T/v2OF+sfDlcdhZHsjHSCIJAvd0U0unK8HOSIQfljJxhrEY4XOzeim4gaPDnt
	Ry/tXEP2nXht4U5hnsq0zOFxmHFPJfJuVCO+AFsxDfkoCFZy2XEYBhJfPvxOh01ORDxYqoqvLpLoQ
	bMLSqb69qnRTA+3fcORXSkM72smEgeiNO9VFT4nyqBPoIuwXLcs7jLqBeuH5SRd03X866trnqBfZE
	cZu711CE0Slq9PMZsqvUEKsPNabKW+Wai9RtBBEzqYyjjKBYAJYJqLg5qGNrPk8faSxkcNF5Cc4OC
	+TT+9qcf/e+Ib+tsq8Dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxCPK-0001mf-E2; Mon, 12 Aug 2019 15:38:50 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxCP9-0001le-AM
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 15:38:40 +0000
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
IronPort-SDR: HVM3Ypcbb0kWK83dM3HZJNGEUcROICj9HAvliyFvddmtdhq0O4P3epGeCOqYCmTQL4tLunYNvh
 lgjXYKqoC0fIRRBVbfa2EwYhrgbU/NTfUTUZicjDVzpQmexqzc0ZmsEaVnatwOjjsKOltjkw4v
 y/s4UTjXyJjr3jgSl432MMDUSASbFQFg0As968HbRCPQ0REZYsoVGMkDeVHEIQIpzRNgcByH+h
 nVnAl3ooZufeigdPplWdRIlx2MQrfPaobZUQWFh6V6ehcigTyv4u0DmS5D3O0Yru2it/7owuy9
 Yo0=
X-IronPort-AV: E=Sophos;i="5.64,377,1559545200"; d="scan'208";a="44000997"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 12 Aug 2019 08:38:35 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 12 Aug 2019 08:38:34 -0700
Received: from NAM05-BY2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5 via Frontend
 Transport; Mon, 12 Aug 2019 08:38:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QDovpHfHa/eV+0caKiPB3G2/wfhYc0GKsshUxZ7rCbIqcuCKHN43mwvVB/lfa6DL1wIwXEHlegrcpdoOTQxGqDZ0cmgiIs0ENJiLSPx77YqwZahesE1j+QEjZUVEk/b7S62+cN2fhAoA4r+gFR4K8Fo9GoAIgpdzFjAMuRraO83zVgZ/C2PmX6OGC5YR8XIuJwD2dxVVEuXv1rDK2I3agjgg3C9ye6gdWoAKwdBZmQX2XewhcDtc7/yazkwzEJNo/xH7OSy8l5BsQ0Blt0xQuZSPp535hDWHDnxRoZDVz1bbkxfrYGds2bTRGH/ttYo7wEbyWcbGtOcx5EMAy+XccQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=r76JbPtMf2px6tRkAqyMgwErJRKaGzYabwivHe7HpoE=;
 b=g3V+fPD2huko2N0/dQCrzMyjNuHAACj1zePN5ENQwT7RmBNdfruHzupJzEksMBlGTDlvczH4yunAHvIuwhoaFu+pyi5My/0erSw1dH+jOZS0GJsJlEiok+8Cnxt5ypDIDvmlCPf5SAA6RSPnjyFfrBeD8aSXhQmvm99VswVmx39ODl/9O7NwaLGPI92kcAhTadRzTcFSVWDiWi5hLTXVl/apNW1YkZOSjGkoEMRdsCm/miWU07u1XgAhNrgG6ya3ewp5bFVUCiA6Z/KXLahL3F2XrxPVEHh9GhtKQCUSUB7Iwcb6hEXfHASFdh2NIPU9Wfca036FeeGM3Da6C7yPyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=r76JbPtMf2px6tRkAqyMgwErJRKaGzYabwivHe7HpoE=;
 b=NbkFVVmON7Q00Z+et9+xsFu2QzC+sHn3ADM+94mjKESVEmpjx5LD/xG2n20wOXSEz4wphMrna/w7hBP64gLQDmlNstIgW3VWXl25h4PEZ+7LhqVqMHw1CMkgBlMPwEqPZ913sarNfJpA7zIaUdnx7BHYUYp4FnaMUraUwvn01ss=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB2009.namprd11.prod.outlook.com (10.168.108.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.16; Mon, 12 Aug 2019 15:38:34 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::c457:dc57:6e6f:f4f3]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::c457:dc57:6e6f:f4f3%10]) with mapi id 15.20.2157.022; Mon, 12 Aug
 2019 15:38:34 +0000
From: <Eugen.Hristev@microchip.com>
To: <adrian.hunter@intel.com>, <Nicolas.Ferre@microchip.com>,
 <alexandre.belloni@bootlin.com>, <ulf.hansson@linaro.org>,
 <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-mmc@vger.kernel.org>
Subject: Re: [PATCH 2/2] ARM: dts: at91: sama5d27_som1_ek: add mmc
 capabilities for SDMMC0
Thread-Topic: [PATCH 2/2] ARM: dts: at91: sama5d27_som1_ek: add mmc
 capabilities for SDMMC0
Thread-Index: AQHVTcREWHJkbws9ckOkZIu1sPO5NabxMeQAgAAEQACAASQ2AIAFUKOA
Date: Mon, 12 Aug 2019 15:38:34 +0000
Message-ID: <fa0debbb-b84c-1f74-f8b8-8fdd7812aaee@microchip.com>
References: <1565252928-28994-1-git-send-email-eugen.hristev@microchip.com>
 <1565252928-28994-2-git-send-email-eugen.hristev@microchip.com>
 <20190808124217.wrmcxohw5i6ju2qe@M43218.corp.atmel.com>
 <04fd74c3-a828-1064-b77b-f3de07a26190@intel.com>
 <20190809062322.syuieymdqjs4e7lh@M43218.corp.atmel.com>
In-Reply-To: <20190809062322.syuieymdqjs4e7lh@M43218.corp.atmel.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR08CA0266.eurprd08.prod.outlook.com
 (2603:10a6:803:dc::39) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-ms-exchange-messagesentrepresentingtype: 1
x-tagtoolbar-keys: D20190812183317755
x-originating-ip: [94.177.32.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c052edc5-a8a9-4649-7123-08d71f3b2274
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DM5PR11MB2009; 
x-ms-traffictypediagnostic: DM5PR11MB2009:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB20099FA6D5D8E2608EAD259EE8D30@DM5PR11MB2009.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 012792EC17
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(136003)(366004)(39860400002)(376002)(346002)(199004)(189003)(31686004)(7736002)(5660300002)(6116002)(186003)(305945005)(229853002)(26005)(25786009)(3846002)(36756003)(71190400001)(71200400001)(66066001)(6246003)(99286004)(316002)(8676002)(6512007)(52116002)(53936002)(76176011)(2906002)(81156014)(110136005)(6486002)(102836004)(2201001)(386003)(31696002)(8936002)(86362001)(6506007)(53546011)(81166006)(6436002)(14454004)(486006)(446003)(11346002)(66446008)(476003)(2616005)(64756008)(66556008)(66476007)(66946007)(2501003)(478600001)(256004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB2009;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: XcgwdcFYRRMfeS3qmmj7blzXGADX5HaWZ2LbCGCyhqbZfcs9U9q3742QZNaleCdFRs7SYLrKeqHx65hqkij0oJaeEwow9cabszLYoq1mC8PetACaEvMmsId3If9zUpde8LpZCt/rVHDCE/mwVy4R8NLXRkjG5TYIOOjiy53/fxySEIUtf6rXm6QMuBUumnbIXzRm+6Z4ayWvGjbszXH4ETW/NS+1dgfC2OpmYPIShwc3tnwDqdB9yVnvkJQViyrtP91M/pj9dS6KCe25w7j0Nvf5z/l/sE+d8GT4GAiz7GUMLMOWSvjUZ6JWy1b+v/DcteJp+Or/SL487XU6skjPGok84DZod3SilX2dijjxdv0A1Ye6UqAe7vjdJri5qtPsJanlrQqDnlLq6P4V3r4JJLcnKs3SiY1UoKNsIy/YBBM=
Content-ID: <1A3BA531877C9C438F08D84BC3EDC250@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: c052edc5-a8a9-4649-7123-08d71f3b2274
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2019 15:38:34.2910 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KS5q9lG9iMvyEHChJiElEv8kRDVo1F5A8THFjqCQVnPIYm+6l+33c6Sh0320rxeG+YEF51EpPyaLB6QtgLN+g9qdKBwpzzbNb8NrHqJ7CUY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB2009
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_083839_462531_662CAB08 
X-CRM114-Status: GOOD (  16.84  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 09.08.2019 09:23, Ludovic Desroches wrote:
> On Thu, Aug 08, 2019 at 03:57:30PM +0300, Adrian Hunter wrote:
>> On 8/08/19 3:42 PM, Ludovic Desroches wrote:
>>> On Thu, Aug 08, 2019 at 10:35:43AM +0200, Eugen Hristev - M18282 wrote:
>>>> From: Eugen Hristev <eugen.hristev@microchip.com>
>>>>
>>>> Add mmc capabilities for SDMMC0 for this board.
>>>> With this enabled, eMMC connected card is detected as:
>>>>
>>>> mmc0: new DDR MMC card at address 0001
>>>>
>>>> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
>>> Acked-by: Ludovic Desroches <ludovic.desroches@microchip.com>
>>>
>>> I am interested to have the some insights about the use of sd-uhs-*
>>> properties.
>>>
>>> Our IP can't deal with 1V8 by itself. It has a 1V8SEL signal which can
>>> be used as the logic control input of a mux. So even if the IP claims
>>> to support UHS modes, it depends on the board.
>>>
>>> Are the sd-uhs-* properties a way to deal with this? I tend to think no
>>> as sdhci_setup_host() will set the caps depending on the content of the
>>> capabilities register. Do we have to use the SDHCI_QUIRK_MISSING_CAPS
>>> quirk or sdhci-caps/sdhci-caps-mask?
>>
>> There is "no-1-8-v" which it looks like sdhci-of-at91.c already supports:
>>
>>    sdhci_at91_probe() -> sdhci_get_of_property() -> sdhci_get_property()
>>
>>      	if (device_property_present(dev, "no-1-8-v"))
>> 		host->quirks2 |= SDHCI_QUIRK2_NO_1_8_V;
>>
> 
> Right, I forgot this property. Thanks.
> 
> Eugen, do you see cases we can't cover with this property?

Hi,

For current requirements and driver support, this should be enough.

I noticed one thing regarding SD-Cards, if I add property sd-uhs-sdr104 
the class 10 uhs1 cards are detected as SDR104 . Without this property 
they are detected as DDR50. Any idea why the difference ? The controller 
does not claim to have SDR104 support ?  We should add it ?

Eugen

> 
> Regards
> 
> Ludovic
> 
>>
>>>
>>> Regards
>>>
>>> Ludovic
>>>
>>>> ---
>>>>   arch/arm/boot/dts/at91-sama5d27_som1_ek.dts | 1 +
>>>>   1 file changed, 1 insertion(+)
>>>>
>>>> diff --git a/arch/arm/boot/dts/at91-sama5d27_som1_ek.dts b/arch/arm/boot/dts/at91-sama5d27_som1_ek.dts
>>>> index 149e539..194b3a3 100644
>>>> --- a/arch/arm/boot/dts/at91-sama5d27_som1_ek.dts
>>>> +++ b/arch/arm/boot/dts/at91-sama5d27_som1_ek.dts
>>>> @@ -54,6 +54,7 @@
>>>>   
>>>>   		sdmmc0: sdio-host@a0000000 {
>>>>   			bus-width = <8>;
>>>> +			mmc-ddr-3_3v;
>>>>   			pinctrl-names = "default";
>>>>   			pinctrl-0 = <&pinctrl_sdmmc0_default>;
>>>>   			status = "okay";
>>>> -- 
>>>> 2.7.4
>>>>
>>>
>>
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
