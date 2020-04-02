Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38C8A19BF51
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 12:28:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xlbYNso+tM+m6BnmhgJPukJCKK7LHiUlTFyMqwj2QX8=; b=cbfRL/5/BxlDvN
	4UpgWbBgSF6mP44RwDtQZyUhSdVHqKqwyIolrdzu1Shatsl1B/rjYIDFejIAR4w2Xmw/m7KioqM/J
	bS6POlyHB74SVd6FZpAg1zLd7nXTfq8/7z99fO2OoJGNP4GF/8/RjrkCsEchUx8+ao7RA9vk2KBr6
	kGr8ZTqO9NEyPMUP7ODoMqzcbBus9mz3vQMpWbx/EdF5O+JbitywZ+Y9nmPnkifVTMdppyk2ph4TR
	tLwWAmP6GGTFzPIWnrEBut+lLujEOPvoFVjpJoUFkfKGd8RLNqSITTOfMzYAygPaHsdC1kex6sCWM
	xo3zgKm/ei1A6fvnyzjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJx4v-0004gB-B2; Thu, 02 Apr 2020 10:28:05 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJx4n-0004fP-M5
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 10:27:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1585823278; x=1617359278;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=ndhSa4x9PpFHoaUU3O7E6t0UEEy1BOQvQPSKWiyPvW0=;
 b=vmHtDHJIW6nn++2oEJXihND0o/X5+FgkXfNi6MDP6aWQ4diXLcfAp/Zw
 2XR3fygAvsFugcU2pTlG9zBSpX6TqbKSJtFKwFOom9BtDytOpGYYc/Evx
 MttvRSry2lS71n0fpN06g/8g4ef+yg7claRv6ID5Tg3rJJ2/46zE2+r8M
 FT2spihKbGmrXf9i3BlHSnbtXBBTpm1/kN7FD19yXotr2Us4ef+MdHgO2
 UfMXuX+ERE8wRJg8IkhNcnZ89YVOqIJ3k4Sp60Tikyuj9VBFk9ynpUj1N
 hMhi1PsLMME1zd2r8daXbMV8uL3BvHj1bdr2FHg7oXu/6ZhSRowfVsu5j Q==;
IronPort-SDR: anqNssSy6CjzTHTjzZEQx2slPSZk112NoICjk1SLgJIy/EEXIJuWevUdhkQ/Q2dGty7SqtzViW
 CW6ytT5VMKYv/xMYy/s8evZTku2ocUhlbCEtO+9d7c+dlzBK4UB6dWEqX0Ch5F87LxquTv12pf
 u9DZnx4aX6lvwtVMGCyFQqodBfWWFwFE1sujE4YWhva95ZSInWfwBX5qNmY3wLRjOew3KsXAiy
 h2JaIVvLXAyOWqPUBKQdioEvhhtNQ/Hmv5MTUOT0vtlfJyj4v8kNfj5VGlKL8voAGUH6G0Zgh/
 rBs=
X-IronPort-AV: E=Sophos;i="5.72,335,1580799600"; d="scan'208";a="71184908"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 02 Apr 2020 03:27:57 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 2 Apr 2020 03:28:02 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Thu, 2 Apr 2020 03:27:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zj+4w+M4cyTAVNx8Bn7oTg2Z4g8e4tBWIWgjG+48Ot/NM7Zqow88fFcFuSsWQBhdSH5/Exf8MMFa+N8ial7Jgtx4M3ZqMgoVHaXNFhhVnpDKPHcKjkaKjp+ze9EyBzeRxo+/Cz4ppOfRJLeFMK81qCm53TmuPmqFmNkzY5Kwr57J+xxufxqb8JWFSrhNs7TlK35gdG42d1DrDZv/8iBx6wZYSpnVM7W7JKFRxYVC7GwqzPoNsmmOD9UAO1bj+Vh0Z+1Vs3WEe2DJH+HwPSzG4geg3ZmITdCQN03SsdHqpHC26qZjtiZWVnT1NqhjhA8FArAAFS+ojxbUsR6fhwEklw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ndhSa4x9PpFHoaUU3O7E6t0UEEy1BOQvQPSKWiyPvW0=;
 b=QdQA2nuP3ZOAUWgS8K3LIgo0JSxpUwoXnASf41/dDJfzRVGpdXRVqCPlTMtmz3/H9AL5F64oUTysmmfcjMpIo5IaOh1Yp0tyVJmbobCprCQQU9EvhSiJqntQ9/duV9t07c5qytbXIhueCTro8ic05yxN2pubcwKFFgkhN7wDJowuPjP3mGLGPVAEzKkH3lKW32YLjCEE+0n4FeIQjnCaQttt9S+PbuGugoCQy3TXQEy/pI6P4rJd2jcKZmbgM2C8Ik7qbljbCC4Ca0ennMjEwVzXR4YjwHaCIidgqc9vlPXQozPNBORPvy9vgIfKO10KhhNpgvdlupvlNoD662c0cg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ndhSa4x9PpFHoaUU3O7E6t0UEEy1BOQvQPSKWiyPvW0=;
 b=sDcfnAZ85+Yfn/zH8aLXUizxP1MlP1fx23VWtTQf/zYXjFOGEk/nQ8rlnr35LjWfEN19FBhCzvQrdYGDDWPWcJ0Ftbt8X3pFzYF12M9TWreMB46HJZHJIgTsLME6ZbUNeviGPkNjfEAHcqWVdpo3YpecVqacitawb0Bk9pTSk0o=
Received: from DM6PR11MB4123.namprd11.prod.outlook.com (2603:10b6:5:196::12)
 by DM6PR11MB3563.namprd11.prod.outlook.com (2603:10b6:5:13e::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.20; Thu, 2 Apr
 2020 10:27:54 +0000
Received: from DM6PR11MB4123.namprd11.prod.outlook.com
 ([fe80::f42c:82b3:ecda:5ff4]) by DM6PR11MB4123.namprd11.prod.outlook.com
 ([fe80::f42c:82b3:ecda:5ff4%6]) with mapi id 15.20.2878.017; Thu, 2 Apr 2020
 10:27:54 +0000
From: <Eugen.Hristev@microchip.com>
To: <Ludovic.Desroches@microchip.com>, <Nicolas.Ferre@microchip.com>,
 <alexandre.belloni@bootlin.com>, <robh+dt@kernel.org>
Subject: Re: [PATCH 1/5] ARM: dts: at91: sama5d2_ptc_ek: fix sdmmc0 node
 description
Thread-Topic: [PATCH 1/5] ARM: dts: at91: sama5d2_ptc_ek: fix sdmmc0 node
 description
Thread-Index: AQHWCHMUVzqU8dzz1022okz8VD+yc6hljvCAgAANQ4CAAAWggA==
Date: Thu, 2 Apr 2020 10:27:54 +0000
Message-ID: <8f7194a7-ad9e-5d27-7db1-d41a88d909de@microchip.com>
References: <20200401221504.41196-1-ludovic.desroches@microchip.com>
 <b4fe14af-a812-8798-187e-704541a6a75f@microchip.com>
 <5f762bdc-fe07-adbc-af8d-7670b5b4b286@microchip.com>
In-Reply-To: <5f762bdc-fe07-adbc-af8d-7670b5b4b286@microchip.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Eugen.Hristev@microchip.com; 
x-originating-ip: [86.120.188.33]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bb655fed-4239-42c8-d482-08d7d6f0812f
x-ms-traffictypediagnostic: DM6PR11MB3563:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB3563085B8950BB31DF5FA401E8C60@DM6PR11MB3563.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0361212EA8
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4123.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(366004)(136003)(396003)(39860400002)(376002)(346002)(86362001)(66446008)(316002)(53546011)(6506007)(91956017)(66476007)(76116006)(6486002)(64756008)(6512007)(107886003)(66946007)(31696002)(4326008)(2616005)(66556008)(478600001)(8676002)(36756003)(81156014)(2906002)(186003)(54906003)(5660300002)(81166006)(110136005)(8936002)(26005)(31686004)(71200400001);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HiGmLWTpRmbhlUOVvrI6aSAF52lnpfUCHe1r5I8kHQV7KFraY5uHMd57uU2Ly9BAkWi7SAMrdCs0IhuOSFBgjEoR6jxFmSTkHbzFXFPvgmj3eD6TNq81Kvjr+7j1oPYl75JwDNVlZzGYsncpbXF33OVaAU6HeumY+OwlJY37rzDg2FBZnj9T3W9dZ+D9Y/dlttZB5GRTjpbtOYigG/GBkUWr8ipTI9K3qvdqNorqdSqHcHgKWQnPOinsZuZ7KBMElOBXJ48szVUMKKpySeWkTcsOhjPK0IlsQQW82O8C/SC4HNXkKkhREzBWhKvNbWKmIYimiPIAwUPA/ae8Rj3h55434vZsQ7jMZiDStyZHR2jKHxIazyqx6TXNbPWmfhLGN1k1deG0eWebljN7maisX8ZnwJ/A0FfcsQTJ+2CWvpoX6p3GXLpsXg9CYNPOHqB6
x-ms-exchange-antispam-messagedata: naprie2a2C9mfdXykOh4E3eEgTki9ZWbaA4bRgWDgqb2jve/pWJXbfPQnquMNfyIF/Tn9ynV3otkIjvspX6QuqQYJrSClbiIHL9vIAoiU/lncSfG+n4mA66Qmpy8vQxoc9ZxIDZtjplOGZYPI6VOag==
Content-ID: <ECB0E1658EBC484598C5826C7D7C9C41@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: bb655fed-4239-42c8-d482-08d7d6f0812f
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Apr 2020 10:27:54.2745 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oHIRzvScbYAGkMW+SxutsXErCjxMhzxwfvQHsvcQJSjNrCV2YP/sD4UQ9evJO4UuSl+J+1UCsxGr86jGb5u80GeZ/WvnW0Q/fJ+z9tUbuXo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3563
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_032757_805472_9C06F2C7 
X-CRM114-Status: GOOD (  18.10  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Tudor.Ambarus@microchip.com,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Cristian.Birsan@microchip.com, Codrin.Ciubotariu@microchip.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 02.04.2020 13:07, Ludovic Desroches - M43218 wrote:
> On 4/2/2020 11:20 AM, Eugen Hristev - M18282 wrote:
>> On 02.04.2020 01:15, Ludovic Desroches wrote:
>>> Remove non-removable and mmc-ddr-1_8v properties from the sdmmc0
>>> node which come probably from an unchecked copy/paste.
>>>
>>> Signed-off-by: Ludovic Desroches <ludovic.desroches@microchip.com>
>>> Fixes:42ed535595ec "ARM: dts: at91: introduce the sama5d2 ptc ek board"
>>> Cc: stable@vger.kernel.org # 4.19 and later
>>> ---
>>>     arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts | 2 --
>>>     1 file changed, 2 deletions(-)
>>>
>>> diff --git a/arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts b/arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts
>>> index 1c24ac8019ba7..772809c54c1f3 100644
>>> --- a/arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts
>>> +++ b/arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts
>>> @@ -125,8 +125,6 @@ sdmmc0: sdio-host@a0000000 {
>>>     			bus-width = <8>;
>>>     			pinctrl-names = "default";
>>>     			pinctrl-0 = <&pinctrl_sdmmc0_default>;
>>> -			non-removable;
>>> -			mmc-ddr-1_8v;
>>
>> Hi Ludovic,
>>
>> I am not sure about the removal of mmc-ddr-1_8v; this means eMMCs
>> connected on this slot won't work in high speed mode, some people use
>> eMMC to SD-Card adapters and stick them into SD-Card slots.
>> Would it be a problem to keep this property here ?
> 
> Hi Eugen,
> 
> It's not a problem to keep it, but I don't think it makes sense. In this
> case mmc-ddr-3_3v should be added too.
> 
> Will it work 'out of the box' with any eMMC to SD-Card adapters and
> eMMCs? I remember discussions where we said HW changes were needed to be
> able to select the voltage for the IOs other than using the VDDSEL
> signal of the controller.

Yes indeed , ddr-3_3v would be needed for those. I can follow up later 
with a patch to add that if required.

Thanks !

> 
> Regards
> 
> Ludovic
> 
> 
>>
>> Thanks,
>> Eugen
>>
>>>     			status = "okay";
>>>     		};
>>>     
>>>
>>
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
