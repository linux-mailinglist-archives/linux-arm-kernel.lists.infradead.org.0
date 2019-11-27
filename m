Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D2D610AE64
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 12:00:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L9M1y6sH2Nn5cPqVqmbn6Slqnh64Ydi8VTLGzg0xSlQ=; b=lJHkSXfL/XcU5b
	uXqOfd/nqgiv5xNrpqIvsvqrVFweb7hTuzCik+KMX0dF/+kGoZMSyQeTeDcpwVdyoynxKs0sCd1X/
	PREZTii4OHsGC0g+6rmbAOTCO/L/IbamlDx+ZUK2J5ALLEjt8+vXxSxJzRgk11OFZawOHjH6CkuV1
	pJ2SNgEL+frJeuIp/i488B7Se76R4GURq2DB+nQDE2o/qGBj7wp/3c324alQXtXbFn8iAMIrVt9IZ
	m1hcRJgpHdIKy7AKiUrBargCzmdeOi3oVtXHuyGnQ3LRuZXSLtmcwUGYEVhJS1n7n41gL4/A2qr3o
	c+kvwl81dhq+fnWW0K0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZv3s-0006D6-E6; Wed, 27 Nov 2019 11:00:44 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZv3g-0006CG-KL
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 11:00:35 +0000
Received-SPF: Pass (esa1.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa1.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa1.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: BzSn+z6L3iDnUhacot7RWCvxo3MDxn+XZYt4n57ssvPqctJGOAfAUJkBzwtGO1+StmBpodNmDc
 neG9D5Vhh1XemuSZJGcHQVkBE3nedKksuIE8FWd5sdHEo5ttD79g/7Bvn7HSICRVPyow4QgZ5L
 IBlQb29T8yqyQ0ytl9TMfvQ9enLJ6CMyzYlur2LTzzpbFihzsF6b6UTrCs6lcVvhuF+mq8xjEG
 BnhnmdYxSayqfT53MZQbQvocD8RbpRxOaGnBhug7cA2RlmlprNzBf6kgLk8MrPvhy4xVyocaoa
 daQ=
X-IronPort-AV: E=Sophos;i="5.69,249,1571727600"; d="scan'208";a="59919477"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 27 Nov 2019 04:00:31 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 27 Nov 2019 04:00:30 -0700
Received: from NAM03-DM3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Wed, 27 Nov 2019 04:00:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eTsfJyEaaNBXPzxf97mGKu8a13cDTJbP8yN6XmiwhHvThtNC8QfjQD+9PUrE3eUjnkerYe8loT5F87y4CSM2GZYvj1DpkJiFkh22YlZixslS9i9+T7/09cEhcki+jjKsZmxAxtLfb+Jdp6g7fZs13twEukB8kFAH8uXHXr6HWD93xEibRfqsnEkOiTT1mnqT0udnADzALCVAyy2u4kr+wkK3nZFM1DSUEA092y49izz+zc0lAXWObC5/C/wIxOo4WukXaPTjp4TviYa1mgw9QN8Kbmm5u0Y7gzXbH9JDG4COHMoJ6yzg+M3Wn7QbrvRLpCAHmdUsgnpfYLPKWhLkcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XmhKquvNSYE+AUF6UEz8pUjhur0pNHVzdRDCK0gvU7Y=;
 b=gwr4BuCwCYPSrocowLMQ9YurD5Orb6+g6FySC3WE8xk3L9Z6BLWd/gN/fpYo9XaxXwTUJu/NZv4DnxkZUpXe65PnZzmfCytFkC0Yp0evfFM46j5UH1ruBIcZo4wXJ7ma3Wpf3v0P2O/a72kuBt4qjEJ3PgocKpf7yu9xaEd9tjxctupcn02Q7s7h7OYjuEKWECRrJDue0hc1u4DOjSiOVBxcKIPDcWJMmXBSOExNCeJ1Li0KZ/CXbA60gZQGz1Ormi+0OU654/f4plmpttf606gsb1sBRGq4kduClIorcG5ay2gQDHsNRLkiQHlATfVcoWTqoY6qpm0G//fmKvEHAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XmhKquvNSYE+AUF6UEz8pUjhur0pNHVzdRDCK0gvU7Y=;
 b=fTSjqPKHDzvaYej1xYSz3o2pWdg3ifCeBDqknQgxg3dDhXrtj1wFyMjsjxva9lVO66t4+VsgGPfQ6v5IMj4/bqbkcMNER7NMZf1jPhy2iPnibkcrLmZycOj4N7luVHZi58YnFkx1ro44OVCZ6zqG/oirGn9ppOShnXqtOuiLVww=
Received: from DM6PR11MB3225.namprd11.prod.outlook.com (20.176.120.224) by
 DM6PR11MB3418.namprd11.prod.outlook.com (20.177.219.152) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.18; Wed, 27 Nov 2019 11:00:27 +0000
Received: from DM6PR11MB3225.namprd11.prod.outlook.com
 ([fe80::ed7d:d06f:7d55:cbe2]) by DM6PR11MB3225.namprd11.prod.outlook.com
 ([fe80::ed7d:d06f:7d55:cbe2%6]) with mapi id 15.20.2474.023; Wed, 27 Nov 2019
 11:00:26 +0000
From: <Claudiu.Beznea@microchip.com>
To: <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH v2 02/17] ARM: at91: pm: move SAM9X60's PM under its own
 SoC config flag
Thread-Topic: [PATCH v2 02/17] ARM: at91: pm: move SAM9X60's PM under its own
 SoC config flag
Thread-Index: AQHVpKCFd9tGDLZ9XESHiYu6fIDZcaeeqfCAgAAhugCAAA7LgA==
Date: Wed, 27 Nov 2019 11:00:26 +0000
Message-ID: <dea74fd0-de8b-96b5-b71c-a77a98d72c3f@microchip.com>
References: <1574773941-20649-1-git-send-email-claudiu.beznea@microchip.com>
 <1574773941-20649-3-git-send-email-claudiu.beznea@microchip.com>
 <20191126212841.GR299836@piout.net>
 <10705ea9-7a0f-5af4-e383-293fabed6b89@microchip.com>
 <20191127100722.GI299836@piout.net>
In-Reply-To: <20191127100722.GI299836@piout.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR0102CA0005.eurprd01.prod.exchangelabs.com
 (2603:10a6:208:14::18) To DM6PR11MB3225.namprd11.prod.outlook.com
 (2603:10b6:5:5b::32)
x-ms-exchange-messagesentrepresentingtype: 1
x-tagtoolbar-keys: D20191127130019556
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 54b027fe-0472-4e47-54c3-08d773290226
x-ms-traffictypediagnostic: DM6PR11MB3418:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB3418FA2A9BE3A6422567E8CF87440@DM6PR11MB3418.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 023495660C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(39860400002)(136003)(396003)(366004)(346002)(199004)(189003)(966005)(66946007)(4326008)(66446008)(6916009)(66476007)(64756008)(66556008)(478600001)(71190400001)(2906002)(71200400001)(6116002)(256004)(3846002)(76176011)(25786009)(7736002)(52116002)(5024004)(102836004)(14444005)(8936002)(81156014)(81166006)(31686004)(305945005)(8676002)(229853002)(86362001)(66066001)(6512007)(6306002)(5660300002)(6436002)(386003)(6506007)(11346002)(2616005)(31696002)(36756003)(53546011)(6246003)(14454004)(26005)(446003)(54906003)(186003)(6486002)(99286004)(316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR11MB3418;
 H:DM6PR11MB3225.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EW+m6/JenC0FM+DwBY3abChwqJhzh9qCOyuD7G5D+6RPlrNSAGHu/jcmABFBdJ8yFBgBUswsN3P5A2bEcNAs+UtOjWJEmj6wXfUa98nyfhes+bm9qzfiUkavSe5e/0fRz2tr8bu4ihNwFJb7t4eDBgUMxQ3PabSm9TZ57vQdYKDff6R+0/Y0LHyqiDzB5HdDit2+xHOooSc/6n+cqDdOJ43DWExxqqI6poNxbGMDrrC2EZEJid3bhxgxFbMIVqicwaHLGLG2FjJ5YetWEQKUpYFkjk/utdrzXod6HRNow+K7DTlf92Gbnl+E3Lr1SBT4CXWeEdt7E/AdML1dRkQE1mqgxjuK/PQAg5fkb25/4nYiMplB2csQCDP0pUQd+sYIRcipsiwnNWpz/FTRGT4nPyKcJqhO4GkwLWdJiaMFRgucYyEih+YkoRd9yVS/D/AxcPQrGdN73+JVaI+fMCPM4V50/mbpl/ZckYIA7iF6PBY=
Content-ID: <DF2927522DE2994A9E0308BBC3711455@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 54b027fe-0472-4e47-54c3-08d773290226
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Nov 2019 11:00:26.5133 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: njRJwm6/BmUC/f+l+wgedlmBLNKNHJ3AjEiKYkozt/aO+gx2ryaZV52C+2xcDdw5z0a9/NrWQAvkQ+ETL5OMc2CvgaLGTQWI7y178rTPkdY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3418
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_030033_340148_6E3AE05F 
X-CRM114-Status: GOOD (  15.68  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
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
Cc: linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux@armlinux.org.uk, Ludovic.Desroches@microchip.com, sre@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 27.11.2019 12:07, Alexandre Belloni wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> On 27/11/2019 08:06:47+0000, Claudiu.Beznea@microchip.com wrote:
>>
>>
>> On 26.11.2019 23:28, Alexandre Belloni wrote:
>>> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
>>>
>>> On 26/11/2019 15:12:06+0200, Claudiu Beznea wrote:
>>>> Move SAM9X60's PM part under SoC config flag. This allows the building
>>>> of SAM9X60 platform withouth depending on CONFIG_SOC_AT91SAM9 flag,
>>>> allowing us to select only necessary config flags for SAM9X60.
>>>>
>>>
>>> I'm really wondering, how much space does that really save?
>>>
>>> The net benefit seems to be very small...
>>
>> Not that much, indeed. We want to be independent of SOC_AT91SAM9.
>>
> 
> The question is why? I don't see the technical benefit but I
> definitively see the maintenance burden of having two separate configs
> doing almost the same thing.

As I said above: to be able to build SAM9X60 without depending on
SOC_AT91SAM9 and to limit the legacy (in term of drivers) coming with
SOC_AT91SAM9.

Would you prefer the other way around like I had in the 1st version:

+config SOC_SAM9X60
+	bool "SAM9X60"
+	depends on SOC_AT91SAM9
+	select ATMEL_AIC5_IRQ
+	select HAVE_AT91_GENERATED_CLK
+	select HAVE_AT91_SAM9X60_PLL
+	help
+	  Select this if you are using Microchip's SAM9X60 SoC



> 
>>>
>>>> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
>>>> ---
>>>>  arch/arm/mach-at91/Makefile   |  1 +
>>>>  arch/arm/mach-at91/at91sam9.c | 18 ------------------
>>>>  arch/arm/mach-at91/pm.c       |  2 +-
>>>>  arch/arm/mach-at91/sam9x60.c  | 34 ++++++++++++++++++++++++++++++++++
>>>>  4 files changed, 36 insertions(+), 19 deletions(-)
>>>>  create mode 100644 arch/arm/mach-at91/sam9x60.c
>>>>
>>>> diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
>>>> index de64301dcff2..f565490f1b70 100644
>>>> --- a/arch/arm/mach-at91/Makefile
>>>> +++ b/arch/arm/mach-at91/Makefile
>>>> @@ -6,6 +6,7 @@
>>>>  # CPU-specific support
>>>>  obj-$(CONFIG_SOC_AT91RM9200) += at91rm9200.o
>>>>  obj-$(CONFIG_SOC_AT91SAM9)   += at91sam9.o
>>>> +obj-$(CONFIG_SOC_SAM9X60)    += sam9x60.o
>>>>  obj-$(CONFIG_SOC_SAMA5)              += sama5.o
>>>>  obj-$(CONFIG_SOC_SAMV7)              += samv7.o
>>>>
>>>> diff --git a/arch/arm/mach-at91/at91sam9.c b/arch/arm/mach-at91/at91sam9.c
>>>> index bf629c90c758..7e572189a5eb 100644
>>>> --- a/arch/arm/mach-at91/at91sam9.c
>>>> +++ b/arch/arm/mach-at91/at91sam9.c
>>>> @@ -31,21 +31,3 @@ DT_MACHINE_START(at91sam_dt, "Atmel AT91SAM9")
>>>>       .init_machine   = at91sam9_init,
>>>>       .dt_compat      = at91_dt_board_compat,
>>>>  MACHINE_END
>>>> -
>>>> -static void __init sam9x60_init(void)
>>>> -{
>>>> -     of_platform_default_populate(NULL, NULL, NULL);
>>>> -
>>>> -     sam9x60_pm_init();
>>>> -}
>>>> -
>>>> -static const char *const sam9x60_dt_board_compat[] __initconst = {
>>>> -     "microchip,sam9x60",
>>>> -     NULL
>>>> -};
>>>> -
>>>> -DT_MACHINE_START(sam9x60_dt, "Microchip SAM9X60")
>>>> -     /* Maintainer: Microchip */
>>>> -     .init_machine   = sam9x60_init,
>>>> -     .dt_compat      = sam9x60_dt_board_compat,
>>>> -MACHINE_END
>>>> diff --git a/arch/arm/mach-at91/pm.c b/arch/arm/mach-at91/pm.c
>>>> index d5af6aedc02c..56a6a49b19e2 100644
>>>> --- a/arch/arm/mach-at91/pm.c
>>>> +++ b/arch/arm/mach-at91/pm.c
>>>> @@ -805,7 +805,7 @@ void __init at91rm9200_pm_init(void)
>>>>
>>>>  void __init sam9x60_pm_init(void)
>>>>  {
>>>> -     if (!IS_ENABLED(CONFIG_SOC_AT91SAM9))
>>>> +     if (!IS_ENABLED(CONFIG_SOC_SAM9X60))
>>>>               return;
>>>>
>>>>       at91_pm_modes_init();
>>>> diff --git a/arch/arm/mach-at91/sam9x60.c b/arch/arm/mach-at91/sam9x60.c
>>>> new file mode 100644
>>>> index 000000000000..d8c739d25458
>>>> --- /dev/null
>>>> +++ b/arch/arm/mach-at91/sam9x60.c
>>>> @@ -0,0 +1,34 @@
>>>> +// SPDX-License-Identifier: GPL-2.0+
>>>> +/*
>>>> + * Setup code for SAM9X60.
>>>> + *
>>>> + * Copyright (C) 2019 Microchip Technology Inc. and its subsidiaries
>>>> + *
>>>> + * Author: Claudiu Beznea <claudiu.beznea@microchip.com>
>>>> + */
>>>> +
>>>> +#include <linux/of.h>
>>>> +#include <linux/of_platform.h>
>>>> +
>>>> +#include <asm/mach/arch.h>
>>>> +#include <asm/system_misc.h>
>>>> +
>>>> +#include "generic.h"
>>>> +
>>>> +static void __init sam9x60_init(void)
>>>> +{
>>>> +     of_platform_default_populate(NULL, NULL, NULL);
>>>> +
>>>> +     sam9x60_pm_init();
>>>> +}
>>>> +
>>>> +static const char *const sam9x60_dt_board_compat[] __initconst = {
>>>> +     "microchip,sam9x60",
>>>> +     NULL
>>>> +};
>>>> +
>>>> +DT_MACHINE_START(sam9x60_dt, "Microchip SAM9X60")
>>>> +     /* Maintainer: Microchip */
>>>> +     .init_machine   = sam9x60_init,
>>>> +     .dt_compat      = sam9x60_dt_board_compat,
>>>> +MACHINE_END
>>>> --
>>>> 2.7.4
>>>>
>>>
>>> --
>>> Alexandre Belloni, Bootlin
>>> Embedded Linux and Kernel engineering
>>> https://bootlin.com
>>>
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
