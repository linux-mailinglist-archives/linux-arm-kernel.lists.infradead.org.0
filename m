Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 441B61FECAE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 09:44:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UIaNGdoqb53FnPhudBSUSSwUT/aEyMUulZWxHAS3Mnc=; b=hEAmZ5yIm6jh5f
	Gbm/e8jEkpENkFd4CNAAiTzGF/0hPY2rq/7cfPdUPvwECZ9S4MmSXUgDNLoIBDYCC6x10WiR1eecm
	FXsF/xavsgNM6XDDkTD/ZUiqFqNXCqNUTkliTPH38TgoPZuJWQ9Dj/qDi/GEPSeHNbVVxDnx2iAn6
	XVuPcrb5M/pvQtasVkYkQucRSB14FHEeW+NOv/iUhSI3MSoPUaLkHFRcRuoGpTT0WmcBJUwuKyFv/
	4JKLHZFab9/+iWKOSaGzz/9zZ4m22PQd800OBSHdRfV/cY/1h0FoQQ75AtwtpG8jmulNinZz4u3FS
	JJNMucW3lyBnzAfTn+SA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlpDQ-0007AW-IF; Thu, 18 Jun 2020 07:44:04 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlpDB-00079b-WA
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 07:43:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1592466229; x=1624002229;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=6zBcD/OMQsQAIqopT8RwD1CDsifKqFwdPPPlulh9Q98=;
 b=Dq3byPh0bY3L6ZSWAnW1C+uHhYx9mYVyc2vX87R+mV1J8hl2yFJYAHGf
 DWZ1j6uAUroTGKrbPg7alBcXJihj7/HrsvCqqCl3dqPxMaL+SlvVThxlL
 O910Bdxjn9RIV7WerjXeUQc3ZuiWn5+1NPlAEBWmFY0l8f3Kd5k0Kl9Sb
 l5MuLyj5mwTuFJOGaDLjcYA7bXHegPVNoBwC7uyQZmjJtNPpB3Qk+Whcx
 mMYV4Cqoi2hTCYe8ddCeHm+POGe7yA6wHxMeHUuVmQlgvuPH/A2Oo6FNe
 XmXNoF1UMUT+aSLIqoUTegzljizWuaGpa8Liudkd99JBRbO0niZEQuVZY g==;
IronPort-SDR: vr3tecl/zb4toRvmLA8fHEgrgi+0cxVUSA9nAMtaY2ht9Y1h730OQ1dT7LmADJTBJpQO23Bb47
 2PptiQOVFEHPgZuuSxVZTe14WrVeIJCmqTLTZkdlsdBPxBHKm40bjlp1ZFbgcF4PhuONG8uZH/
 yLA1OJpmddakYUjJbj2BeitpBQXrpxUxQcZFiTX2sBkWuR6LB3M47v6nvVAcn4sHvnDA4vMQZe
 TOocZ6PQxp1znBtGfWJJJe2+AkhfIePEukcXtekK2l/SjM8pLFbyAz0n/xEnVc4gxsxZn+53YI
 CIo=
X-IronPort-AV: E=Sophos;i="5.73,525,1583218800"; d="scan'208";a="80592316"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 18 Jun 2020 00:43:45 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Thu, 18 Jun 2020 00:43:44 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1979.3
 via Frontend Transport; Thu, 18 Jun 2020 00:43:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GKaW0MklgpRKKCws6UA4ZrNxfpaoawKQwaSEhvvVU1XZ/sToWN4MJDX4b7TZwbihrTyEKQaGwJdQOya9SLXLOPhDVQOawreaWOp5+cdnifZlPenVG7A9DjBbuHvd/opuqP5h+UA/k4E6qavGd+SBaHhNBiu+A2RZM2SI+0g9crvMFlFJ7kioGxxbpG5u0mbd99Sko1UGBXqoa9f6jF5y5KOu4zOQHmpSdCtpGv8U5AGQQl/ldFb/TiiPcJtkKVLXCehk4adkf5/6GtvTREs3tFjrpAj69BBSZTqTtUHW7fwkxp9j8rnepEnajDRNVZKVw5jdQObg48X0UCmD1fFDYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6zBcD/OMQsQAIqopT8RwD1CDsifKqFwdPPPlulh9Q98=;
 b=a/HD9o8dAgk4bSvjeAETiygH88wNDuEmoeNLFdfMgiiKJja0kqfy//Ho+qZgay6z/NRj7IbOX2fwPS3HGpKW+q6CAlDLCsYsloPl8ldAMncJ+t6DqrHMN4woqmLYa6BFWvxRJuZqK+9dD08ptwVyWoXMIA62D7v6/I5/rc/jH29BUQ3S0SyYrlnhTWuWB8nWgQ+Dn6m+JotGEmI8fK9AOts0DSyO73U6EhYDm/0W1j8q6L/wXQI83ncOkUcIKp4UbsQEOeAEy5dfVg9nWp7yz6/HnAbTxUcc26QDVKy+4tX3bGOWfvgDTCbgaWSLuSmmV7YwWbJDPLQNAaHBhsj5UQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6zBcD/OMQsQAIqopT8RwD1CDsifKqFwdPPPlulh9Q98=;
 b=qVnMjZghl4OCPXnFiMj5/OFhvVW7IWfIQMCZkqvqSCK+pkbsyzGtwztM7DxWpqQIvpqQM9Tzd5zERSCyWXdXPGw4+8gjXx8DVLhhuHdX1ynxOQ7NBLyP79sBeX/aq4x/xzYCh5QOvDjQADIktc0AfD3zkkDoMQ5rCwdXMIWTKZA=
Received: from SN6PR11MB3504.namprd11.prod.outlook.com (2603:10b6:805:d0::17)
 by SN6PR11MB2766.namprd11.prod.outlook.com (2603:10b6:805:53::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.24; Thu, 18 Jun
 2020 07:43:41 +0000
Received: from SN6PR11MB3504.namprd11.prod.outlook.com
 ([fe80::40f4:d52a:5ca3:d94a]) by SN6PR11MB3504.namprd11.prod.outlook.com
 ([fe80::40f4:d52a:5ca3:d94a%2]) with mapi id 15.20.3109.021; Thu, 18 Jun 2020
 07:43:41 +0000
From: <Codrin.Ciubotariu@microchip.com>
To: <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH 3/3] Revert "ARM: at91/dt: sama5d2 Xplained: add pdmic
 node"
Thread-Topic: [PATCH 3/3] Revert "ARM: at91/dt: sama5d2 Xplained: add pdmic
 node"
Thread-Index: AQHWQvsltRwqmvwlWECdTj/YRpFtOKjdWD0AgACqK4A=
Date: Thu, 18 Jun 2020 07:43:41 +0000
Message-ID: <92a22b2e-f710-c8fd-04a7-68a09d71e570@microchip.com>
References: <20200615095525.43414-1-codrin.ciubotariu@microchip.com>
 <20200615095525.43414-3-codrin.ciubotariu@microchip.com>
 <20200617213438.GF3675@piout.net>
In-Reply-To: <20200617213438.GF3675@piout.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
authentication-results: bootlin.com; dkim=none (message not signed)
 header.d=none;bootlin.com; dmarc=none action=none header.from=microchip.com;
x-originating-ip: [84.232.220.208]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 368296ec-ac2f-4b13-c72f-08d8135b525d
x-ms-traffictypediagnostic: SN6PR11MB2766:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB276686267C4C6038B650DD5BE79B0@SN6PR11MB2766.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:404;
x-forefront-prvs: 0438F90F17
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ArqDseejJ3Tak1g5A8PsBdbXmXdYXveYc4lahoAkTeFEC6+IW1f+8BTGbUG+Qbmosl/x3yJlcEGmgxhIqeKUwNayWE4cWbHiNcj1J0BXM1RCFXCesfcDKsU9aKDaKukBEcuKbUFShYFKSAdlyF+MaKlZr7Uke/vfaNbLO+6ftUMlx3O3nWcnCmtqcDQ314t/38tlcYeyn4xHmSPklQHL6+ULZrHOrzZgx0HuLchz5x2QOHqGK7e2gv8XR643vJBhJ9MGOFhuLq4Y5t9Ukv2+BL1MZ5FPp61xxr7/grICX1aW0PKzaMhP3c0gkOEuZxXaHpHOpr7CqKGYDR9DwGIS77M0XWmAXkR07hBP5U0rPIdF4noJt2lCrJF7tpPlcKbXlEjNmfAm81TSjlJuaQVPDSQuB92/1UokEMmKjnXOQIv4mpP4njhNYJqfLuF0bi9fCUYM7L57dSGZ3hyqhfc83w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3504.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(136003)(396003)(376002)(39860400002)(346002)(66446008)(6506007)(53546011)(6916009)(6486002)(107886003)(31686004)(83380400001)(66946007)(76116006)(2906002)(8676002)(8936002)(66476007)(966005)(71200400001)(26005)(5660300002)(66556008)(31696002)(64756008)(6512007)(186003)(86362001)(316002)(478600001)(2616005)(4326008)(91956017)(36756003)(54906003)(43740500002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: fyp0v9Dq62Ui/3FuNamqn9NmaKW7kMEYZM5RHQCNZ4wF+nI8Qmr7tY+jiHRxfkJUjugwGSqXSiZB218NHyQ6GGDLHQnxWFpfEbsJNEt/NMPr7oCkQrxmzMAAP1DEzreNsa+aoTutUzr1YATCLFLtYd9Kn76F8OR9c7YOHjE423vd/GcgTNWI1aTNAwhujjDwkwc23Fgo8Scb79Dir5YlIe/ijnWEDJhUVofV4/wxnQhheZvI5b6p/lAQ2O/6sZKtAT98dbngIbCWcZAAqLnLW7hZkTL8bd3RZpun7yNvVE2ehjqhkTOd8OUl7ugvUtR1iT7JNSW3mIEmYR54MWJCnBUTaXPDz8r2YiNocyIoBdO6cvgwTGKs7ZRjoeaHBNv70ZuIt74d36iM90a0HNzJABANWHikKOuZsuJIG184/oXRgzA9R/ZjrWbR7e4cUFl2RftpoSwrwfzRHy03p7V/COz/sLFgCuIgzv2UIRmItvvc7iIrKdSeUvegbbRytYj1
Content-ID: <2A1B5FC81242C346B047C581D02D9457@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 368296ec-ac2f-4b13-c72f-08d8135b525d
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jun 2020 07:43:41.6357 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jNMnjIYVzkjtdWS8zZ4gYbtKKoLwIFN7JorZoXzan0SoX8ZN+12jMa1k7ZDtPVcvWq7nltto1Tc1/PshBSkCz2CdHR+Cwqt8zGzZlkTwdnw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2766
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_004350_113014_7298EA48 
X-CRM114-Status: GOOD (  17.61  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [68.232.153.233 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Ludovic.Desroches@microchip.com, robh+dt@kernel.org,
 Claudiu.Beznea@microchip.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 18.06.2020 00:34, Alexandre Belloni wrote:
> Hi,
> 
> The correct subject line prefix is "ARM: dts: at91:"

I just reverted the original patch. I can make it a normal commit if you 
want.

> 
> On 15/06/2020 12:55:25+0300, Codrin Ciubotariu wrote:
>> There are no PDM microphones on SAMA5D2 Xplained, to exercize the
>> PDMIC.
>>
>> This reverts commit ca6349a8c51f2e3d6f2acdb36431e7d7328261f7.
>>
>> Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
>> ---
>>   arch/arm/boot/dts/at91-sama5d2_xplained.dts | 16 ----------------
>>   1 file changed, 16 deletions(-)
>>
> 
> This patch doesn't apply and I think you'll have to motivate the removal
> a bit more because this seems like a change of policy to me.

The PDMIC needs PDM microphones to work. sama5d2 xplained doesn't have 
such microphones, so there is no reason to enable PDMIC and take some 
pins since there is no-one using them. Isn't it the policy to enable 
only what is present on a board?

> 
>> diff --git a/arch/arm/boot/dts/at91-sama5d2_xplained.dts b/arch/arm/boot/dts/at91-sama5d2_xplained.dts
>> index 54d96649da77..c0a255bda477 100644
>> --- a/arch/arm/boot/dts/at91-sama5d2_xplained.dts
>> +++ b/arch/arm/boot/dts/at91-sama5d2_xplained.dts
>> @@ -109,16 +109,6 @@ timer1: timer@1 {
>>                                };
>>                        };
>>
>> -                     pdmic@f8018000 {
>> -                             pinctrl-names = "default";
>> -                             pinctrl-0 = <&pinctrl_pdmic_default>;
>> -                             atmel,model = "PDMIC @ sama5d2_xplained";
>> -                             atmel,mic-min-freq = <1000000>;
>> -                             atmel,mic-max-freq = <3246000>;
>> -                             atmel,mic-offset = <0x0>;
>> -                             status = "okay";
>> -                     };
>> -
>>                        uart1: serial@f8020000 {
>>                                pinctrl-names = "default";
>>                                pinctrl-0 = <&pinctrl_uart1_default>;
>> @@ -533,12 +523,6 @@ pinctrl_macb0_phy_irq: macb0_phy_irq {
>>                                        bias-disable;
>>                                };
>>
>> -                             pinctrl_pdmic_default: pdmic_default {
>> -                                     pinmux = <PIN_PB26__PDMIC_DAT>,
>> -                                             <PIN_PB27__PDMIC_CLK>;
>> -                                     bias-disable;
>> -                             };
>> -
>>                                pinctrl_sdmmc0_default: sdmmc0_default {
>>                                        cmd_data {
>>                                                pinmux = <PIN_PA1__SDMMC0_CMD>,
>> --
>> 2.25.1
>>
> 
> --
> Alexandre Belloni, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
