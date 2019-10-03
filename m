Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA536C9C20
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 12:25:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fs4oA7JaSs4eyHM3+eNBrQ3KJU/6K6ckGqqWImxpazY=; b=IzRQOyEgdtLgHm
	A7Sh+2BiCgyZsLQuDuJJnYKug8fkbIOzNBDndynTscY67++DQPAHIMf8SwfmAhcCDJ/x2EDsqTZve
	I1Ol1yjy4HHAsrwE6Io9WLq2ZitxaDEbOsXrOU8TC5ZB+Pn4YBQVGGRr54Of1I9hah4btt7fVVn46
	adBFjUemoUOBPRe8Py23LLtTKc2nm84nZSh1kDhxlo3HJjUF6HZPJ8SiuvvYoYpXLmGDtT0QEW8DI
	TvlM9eZLP/1kF0mhML3MNdifAO3lAOh/pfeuPWLSdLnQSyM9OcWws68EczS5pUuy/DIRCnfrhLDqp
	PlXbuSulUEYnqS4FIWcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFyIL-0006Xm-Da; Thu, 03 Oct 2019 10:25:13 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFyI6-0006X4-AV
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 10:24:59 +0000
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Eugen.Hristev@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: QVgxug5U2oLQRpMM/8X9xjgpetOAHXjCwc6tDYi3M6Q7nSTsDjPOLJt33YTDUg+zEadAVkSvoY
 FNhFg0yLg/RpKnJ0K+Jb6359YMwrOYWnQCm0Ms7mR4LdPcmlvzoA0uDuq6ISIObBBvZjXINVh/
 o+NgNW4hhcPRkAeADN+BP44vSCkLa7Z8b/GDlA6F8DtJWllTeiajb21RRhfqYN0rEF5PYEeVTp
 zQA7YWRQm5LZaVP0SVhORvJEXIIPiFI+gHHGOMGrMAMECzyC0d2e/iryTqt0U7anMlJiPEa2QB
 iCs=
X-IronPort-AV: E=Sophos;i="5.67,251,1566889200"; d="scan'208";a="51334364"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 03 Oct 2019 03:24:55 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 3 Oct 2019 03:24:55 -0700
Received: from NAM01-BY2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 3 Oct 2019 03:24:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YuU8ba1rfyDorFqAP/JIGdH/cHKwoyuy075IO2zH9Rvg+ENIR+OvAuZgitYEjtFRbGLzeMp0ZYWLGibn4mAPdAkA7eeAq2GSP8vTQLzFCwzOaPJMNsg74Bx9JP3oNp4KeenbZH+O6/4DCF6vSKkBLMhrpUw34Et573VQXmKe67/uanz1vhDqmbFhLRN4F7n8NudU2zyJmgwbyQkdPNBBH8gP5JR5QyDlK2s/+G4cGvUrGKZVR3vXI++nWwA+0S1B/HQ3jeZS6It0HUind53KsTHkDyd/gS7yjzWgOyaX6seEOwhr90mAidRHemn1aDGU+WxTsqiRAhYp6t5ZzHBzyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6clNdNLS881tmBpceWlm/EMVNhYbfo7IwIxaQjHThdQ=;
 b=FbCTSWP+3d/jWTxlJFGlsLLD4YWde2R+TxcqSV5fJZfFJtDUQZySq6zkOT5tLeabNa0U2J+sMcEPFkPXKyQwvxQe1FbfZaDuvFl1LPa0lZEhIHuMdZim//VCviD/FwjjBbxqNQW9g33stBRBm1rBolihVH7D7QwXGLyI//FvH7pYNan20T643oS42v2I+66kGF5cfCcQXp2eKO74zDMSpb5dvASCUcMt/OMSnNdw5CniynUYwX05cTgtVaxHfuDEV9a/RV4CNzUTiBarf2/FtTjODAy2fYK++oO+ZP9Pp1AeH8HlM8aNxgNzJu4fqCcfVXZajQiMeRlH4klY/M1JQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6clNdNLS881tmBpceWlm/EMVNhYbfo7IwIxaQjHThdQ=;
 b=Bn/N3x0nq24wjfUBus1s4b092y29iPCpC7PfIE2dNvKltokF9bWDR7daveXfzMVlnr8wPXZybCIZrtPbzFNkoXzij2ivIf0IX0De1J9m1U2Fv18OlAsDnrgTqrmbxvvG5XWIwIS6uKkDU1OxCAxkGc0WNpee8+qbGq5LBbf6NEQ=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB2010.namprd11.prod.outlook.com (10.168.107.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.20; Thu, 3 Oct 2019 10:24:53 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::b125:76c1:c9b1:34f4]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::b125:76c1:c9b1:34f4%10]) with mapi id 15.20.2305.023; Thu, 3 Oct 2019
 10:24:53 +0000
From: <Eugen.Hristev@microchip.com>
To: <alexandre.belloni@bootlin.com>, <linux-arm-kernel@lists.infradead.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-mmc@vger.kernel.org>
Subject: Re: [PATCH 2/2] ARM: dts: at91: sama5d27_som1_ek: add mmc
 capabilities for SDMMC0
Thread-Topic: [PATCH 2/2] ARM: dts: at91: sama5d27_som1_ek: add mmc
 capabilities for SDMMC0
Thread-Index: AQHVTcREWHJkbws9ckOkZIu1sPO5NabxMeQAgAAEQACAASQ2AIAFUKOAgAEA/wCAUGBlgA==
Date: Thu, 3 Oct 2019 10:24:52 +0000
Message-ID: <c2c355cd-b798-02de-0606-0f6442f6fdca@microchip.com>
References: <1565252928-28994-1-git-send-email-eugen.hristev@microchip.com>
 <1565252928-28994-2-git-send-email-eugen.hristev@microchip.com>
 <20190808124217.wrmcxohw5i6ju2qe@M43218.corp.atmel.com>
 <04fd74c3-a828-1064-b77b-f3de07a26190@intel.com>
 <20190809062322.syuieymdqjs4e7lh@M43218.corp.atmel.com>
 <fa0debbb-b84c-1f74-f8b8-8fdd7812aaee@microchip.com>
 <20190813065306.tqz57hqeiofofbnz@M43218.corp.atmel.com>
In-Reply-To: <20190813065306.tqz57hqeiofofbnz@M43218.corp.atmel.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR07CA0198.eurprd07.prod.outlook.com
 (2603:10a6:802:3f::22) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-ms-exchange-messagesentrepresentingtype: 1
x-tagtoolbar-keys: D20191003131853387
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 945bafe7-2b32-4af0-0f84-08d747ebedc5
x-ms-traffictypediagnostic: DM5PR11MB2010:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB2010014407FD08DC22026717E89F0@DM5PR11MB2010.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 01792087B6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(366004)(136003)(376002)(346002)(39860400002)(199004)(189003)(6506007)(386003)(53546011)(256004)(71200400001)(71190400001)(66556008)(64756008)(66476007)(5660300002)(36756003)(66446008)(66946007)(31686004)(2501003)(66066001)(8936002)(6246003)(6512007)(2906002)(305945005)(14454004)(81156014)(81166006)(8676002)(7736002)(6116002)(6436002)(4326008)(31696002)(478600001)(476003)(25786009)(86362001)(2201001)(446003)(2616005)(11346002)(186003)(6486002)(486006)(54906003)(99286004)(110136005)(76176011)(52116002)(316002)(26005)(102836004)(229853002)(3846002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB2010;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Ai8MTev9t9hAgeGS6+EdtgO2EcEI93eGlBBByM2d0PN6HjIeBK4KkWC94QMC8FtUBpsOINtRjd2tMzWkhRPv47HsakhIMsv+OGxQl/U4pnbbchYK7dSAx6LgAYBAV1rTyACZnwNVNRPEogh+GOGDrtaDjioSiJPnqE1be5jR/Y0wejtkEb5OQ8Hps/yop8i49WIgA11nB57BYHzfkALC2SNDBjcovDlFqJ/iLOLgmFxNEZXxDWH+4/ZzhrP/mDEiSV7pLxYpMAsHaneFR6R+WdUtlKcxErs9A00JV+TV1hfCs4B2WDVCOn0ThqmIeJpxopUVTmVJKAE7yltS+IPRy/K4rSO6I4Az7RztMwpJxucvD4PfEXn3lwKm+L28skIxNGrL5fgkbh9wvuQnl5dEmsTqOUQSSaoVE5Vafjlf4Tc=
Content-ID: <B477413D9188AE4692F41B4A177C285D@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 945bafe7-2b32-4af0-0f84-08d747ebedc5
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Oct 2019 10:24:52.9885 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hc+qcfIsizXfEFv6hKwD9CJY3LpVtPSlzZ2ILaoleM/ShaUyFqRpapO1Wz+ZLAa8knEKwVNSx93Tzel3Wk4oTOVgVvyQdEcMMTsPNwiJGO4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB2010
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_032458_401244_B2BA2112 
X-CRM114-Status: GOOD (  14.58  )
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
Cc: ulf.hansson@linaro.org, adrian.hunter@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 13.08.2019 09:53, Ludovic Desroches wrote:
> On Mon, Aug 12, 2019 at 03:38:34PM +0000, Eugen.Hristev@microchip.com wrote:
>> On 09.08.2019 09:23, Ludovic Desroches wrote:
>>> On Thu, Aug 08, 2019 at 03:57:30PM +0300, Adrian Hunter wrote:
>>>> On 8/08/19 3:42 PM, Ludovic Desroches wrote:
>>>>> On Thu, Aug 08, 2019 at 10:35:43AM +0200, Eugen Hristev - M18282 wrote:
>>>>>> From: Eugen Hristev <eugen.hristev@microchip.com>
>>>>>>
>>>>>> Add mmc capabilities for SDMMC0 for this board.
>>>>>> With this enabled, eMMC connected card is detected as:
>>>>>>
>>>>>> mmc0: new DDR MMC card at address 0001
>>>>>>
>>>>>> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
>>>>> Acked-by: Ludovic Desroches <ludovic.desroches@microchip.com>
>>>>>
>>>>> I am interested to have the some insights about the use of sd-uhs-*
>>>>> properties.
>>>>>
>>>>> Our IP can't deal with 1V8 by itself. It has a 1V8SEL signal which can
>>>>> be used as the logic control input of a mux. So even if the IP claims
>>>>> to support UHS modes, it depends on the board.
>>>>>
>>>>> Are the sd-uhs-* properties a way to deal with this? I tend to think no
>>>>> as sdhci_setup_host() will set the caps depending on the content of the
>>>>> capabilities register. Do we have to use the SDHCI_QUIRK_MISSING_CAPS
>>>>> quirk or sdhci-caps/sdhci-caps-mask?
>>>>
>>>> There is "no-1-8-v" which it looks like sdhci-of-at91.c already supports:
>>>>
>>>>     sdhci_at91_probe() -> sdhci_get_of_property() -> sdhci_get_property()
>>>>
>>>>       	if (device_property_present(dev, "no-1-8-v"))
>>>> 		host->quirks2 |= SDHCI_QUIRK2_NO_1_8_V;
>>>>
>>>
>>> Right, I forgot this property. Thanks.
>>>
>>> Eugen, do you see cases we can't cover with this property?
>>
>> Hi,
>>
>> For current requirements and driver support, this should be enough.
>>
>> I noticed one thing regarding SD-Cards, if I add property sd-uhs-sdr104
>> the class 10 uhs1 cards are detected as SDR104 . Without this property
>> they are detected as DDR50. Any idea why the difference ? The controller
>> does not claim to have SDR104 support ?  We should add it ?
> 
> With the mainline, our tree or both? In our tree, SDR104 is removed from
> the capabilities.
> 
> Ludovic
> 


Hello Alexandre,

Anything more needed regarding this patch ?

Thanks,
Eugen
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
