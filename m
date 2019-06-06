Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1281536FA6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 11:16:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hyz342qcW/BAS9cLPjfiKX/umaJ1G0hVKP/7qwRv0Bc=; b=HXRUjfiqqDGDnq
	TWO9H1hMqiHVza3XAQoGbe+5PmSiHrqMhkAlrPQuu9P5e0lKlUYgrwQDXqBSm2uyhPY82zDRxdju+
	doPXT5EHVNGvPtbk67bEcImMSX4Qis/brrxLsypxhomnwvYwNJHoQyhaxCur5zOPx07YeHz/P4CKi
	zavphwm+RZFKT4k4mDRi9IODY17qysMcUMdzlTQKvcRVN5mEzj67o2xtnKrLZwcZict0BmoULsTaO
	gN/ozCE+dgybfMvvEBLETSGSp/S+UrcPMS/p7QYnt0kFMtOOib9KInlZODn3T8sZ0Kc9q3FwRsTBL
	H+1tJInB4CkG3qoTwIFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYoVi-0001HO-Hh; Thu, 06 Jun 2019 09:16:38 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYoVZ-0001GS-7t
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 09:16:30 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Nicolas.Ferre@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Nicolas.Ferre@microchip.com";
 x-sender="Nicolas.Ferre@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Nicolas.Ferre@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Nicolas.Ferre@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
X-IronPort-AV: E=Sophos;i="5.63,558,1557212400"; d="scan'208";a="33338295"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 06 Jun 2019 02:16:25 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex03.mchp-main.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 6 Jun 2019 02:16:10 -0700
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Thu, 6 Jun 2019 02:16:10 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bceBaSHhJMb3EgK19IHCXoZ4gyVaVTLvxxmaZJIMaH4=;
 b=x6Lg9EPzsFazBp8bZx4GrMJZxRHB8/4G/LlRvQMZenq4FTZnTQGQXndQh8xTuzXQqVq2mAs4RN04McOjW1nL/kqoKCDXTSwwaNhhsq7KTMFMCy2DneVQELChCVP83qwPH+NUF29cjolfjDQC52+1sdkbYRtCzwfptYlAxjogG+I=
Received: from MWHPR11MB1662.namprd11.prod.outlook.com (10.172.55.15) by
 MWHPR11MB1901.namprd11.prod.outlook.com (10.175.54.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.12; Thu, 6 Jun 2019 09:16:06 +0000
Received: from MWHPR11MB1662.namprd11.prod.outlook.com
 ([fe80::7534:63dc:8504:c2b3]) by MWHPR11MB1662.namprd11.prod.outlook.com
 ([fe80::7534:63dc:8504:c2b3%6]) with mapi id 15.20.1965.011; Thu, 6 Jun 2019
 09:16:06 +0000
From: <Nicolas.Ferre@microchip.com>
To: <krzk@kernel.org>, <arm@kernel.org>, <arnd@arndb.de>, <olof@lixom.net>,
 <linux@armlinux.org.uk>, <joel@jms.id.au>, <andrew@aj.id.au>,
 <alexandre.belloni@bootlin.com>, <Ludovic.Desroches@microchip.com>,
 <shawnguo@kernel.org>, <s.hauer@pengutronix.de>, <kernel@pengutronix.de>,
 <festevam@gmail.com>, <linux-imx@nxp.com>, <vz@mleia.com>,
 <slemieux.tyco@gmail.com>, <jason@lakedaemon.net>, <andrew@lunn.ch>,
 <gregory.clement@bootlin.com>, <sebastian.hesselbarth@gmail.com>,
 <aaro.koskinen@iki.fi>, <tony@atomide.com>, <dinguyen@kernel.org>,
 <marc.w.gonzalez@free.fr>, <mans@mansr.com>, <liviu.dudau@arm.com>,
 <sudeep.holla@arm.com>, <lorenzo.pieralisi@arm.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <linux-aspeed@lists.ozlabs.org>, <linux-omap@vger.kernel.org>
Subject: Re: [PATCH v2] ARM: configs: Remove useless UEVENT_HELPER_PATH
Thread-Topic: [PATCH v2] ARM: configs: Remove useless UEVENT_HELPER_PATH
Thread-Index: AQHVHEh4SI32peV3o0KU04KHNcXAcQ==
Date: Thu, 6 Jun 2019 09:16:06 +0000
Message-ID: <58ffd0ff-42e8-1011-0329-65957717de72@microchip.com>
References: <1559636093-26005-1-git-send-email-krzk@kernel.org>
In-Reply-To: <1559636093-26005-1-git-send-email-krzk@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: PR0P264CA0015.FRAP264.PROD.OUTLOOK.COM (2603:10a6:100::27)
 To MWHPR11MB1662.namprd11.prod.outlook.com
 (2603:10b6:301:e::15)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [213.41.198.74]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 56a49eea-bdcb-4b81-d366-08d6ea5f9ace
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MWHPR11MB1901; 
x-ms-traffictypediagnostic: MWHPR11MB1901:
x-microsoft-antispam-prvs: <MWHPR11MB19011A9D7523C0FF4B3D9D76E0170@MWHPR11MB1901.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1284;
x-forefront-prvs: 00603B7EEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(376002)(346002)(39860400002)(366004)(396003)(189003)(199004)(2201001)(71190400001)(71200400001)(66066001)(68736007)(81166006)(186003)(229853002)(7736002)(66446008)(81156014)(31686004)(6246003)(110136005)(2501003)(8936002)(6436002)(316002)(256004)(31696002)(14444005)(6486002)(8676002)(99286004)(6116002)(478600001)(7406005)(86362001)(53936002)(36756003)(305945005)(76176011)(386003)(6512007)(486006)(6506007)(53546011)(4326008)(5660300002)(66556008)(25786009)(446003)(72206003)(11346002)(26005)(3846002)(66946007)(2616005)(66476007)(73956011)(476003)(102836004)(14454004)(52116002)(7416002)(2906002)(64756008)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR11MB1901;
 H:MWHPR11MB1662.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: aOPfPjcH62v5I+K00C/2ptOY3keWHUNavpa36Q0WSExy9NPWaxaHK2WOM2yUGFKW1V8RVmf/tgzhKAxCQGrmMd6xjzigiV+lndKGzXZ/UVmb02IHKQHtfyuBXrqgreNLZmhAA8pwiB+jNyiUlvrB0oqDWs0Q9dOMHMnAvJSEKU5spQNbhqDL1txjVYxqkEi1NhD19Ax/OEOFfeiUWdiI+aCh59vEDuhZMLgxMM6qRCtBWgNcrjawCOMJnpZ9MFgWsyfMm/5Sbo104ak7bBpS99IrjjqrtYMT83ySurIwRSD9d2Zd3ifsWmXQqkKFawwXj2DO8QGV80N6gzeiFBUKd2cAfCmSz8QLigI34PDPW8VKKZy30xAQqxNxpjV+ZpiKj6wc+OyXHx3S0Rm0BoPGLm76Uu+J8VyzkiO0xzNED94=
Content-ID: <F16069370D8F9048951C20B6228FFB3B@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 56a49eea-bdcb-4b81-d366-08d6ea5f9ace
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2019 09:16:06.2464 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nicolas.ferre@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1901
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_021629_320478_6A1558DC 
X-CRM114-Status: GOOD (  10.49  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: geert+renesas@glider.be
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04/06/2019 at 10:14, Krzysztof Kozlowski wrote:
> Remove the CONFIG_UEVENT_HELPER_PATH because:
> 1. It is disabled since commit 1be01d4a5714 ("driver: base: Disable
>     CONFIG_UEVENT_HELPER by default") as its dependency (UEVENT_HELPER) was
>     made default to 'n',
> 2. It is not recommended (help message: "This should not be used today
>     [...] creates a high system load") and was kept only for ancient
>     userland,
> 3. Certain userland specifically requests it to be disabled (systemd
>     README: "Legacy hotplug slows down the system and confuses udev").
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> Acked-by: Geert Uytterhoeven <geert+renesas@glider.be>
> 
> ---
> 
> Changes since v2:
> 1. Remove unrelated files.
> 2. Add Geert's ack.
> ---
>   arch/arm/configs/acs5k_defconfig          | 1 -
>   arch/arm/configs/acs5k_tiny_defconfig     | 1 -
>   arch/arm/configs/am200epdkit_defconfig    | 1 -
>   arch/arm/configs/aspeed_g4_defconfig      | 1 -
>   arch/arm/configs/aspeed_g5_defconfig      | 1 -
>   arch/arm/configs/at91_dt_defconfig        | 1 -

[..]

>   arch/arm/configs/sama5_defconfig          | 1 -

for at91 (at91_dt_defconfig & sama5_defconfig):
Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>

>   arch/arm/configs/socfpga_defconfig        | 1 -
>   arch/arm/configs/spear13xx_defconfig      | 1 -
>   arch/arm/configs/spear3xx_defconfig       | 1 -
>   arch/arm/configs/spear6xx_defconfig       | 1 -
>   arch/arm/configs/spitz_defconfig          | 1 -
>   arch/arm/configs/tango4_defconfig         | 1 -
>   arch/arm/configs/tct_hammer_defconfig     | 1 -
>   arch/arm/configs/u300_defconfig           | 1 -
>   arch/arm/configs/u8500_defconfig          | 1 -
>   arch/arm/configs/vexpress_defconfig       | 1 -
>   arch/arm/configs/viper_defconfig          | 1 -
>   arch/arm/configs/xcep_defconfig           | 1 -
>   arch/arm/configs/zeus_defconfig           | 1 -
>   arch/arm/configs/zx_defconfig             | 1 -
>   69 files changed, 69 deletions(-)
[..]
-- 
Nicolas Ferre
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
