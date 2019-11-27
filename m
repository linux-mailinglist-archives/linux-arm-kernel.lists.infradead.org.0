Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E891A10AB68
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 09:07:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/5Kuh0cq7Dh3bzM4b4/VFI98YpyfAZtw6khGKaMzM6c=; b=ZvarcLXXhHvO0/
	s7N3ab859HdGIdtuYfv80O4pCPNYQgodGo+bmFTo20QTbIHluvxfynWoA97dQD0GOHu41WsWnAi+G
	1ioi5Y2p5an345wgYycZozB4g2OncxtVDnx47yCqyKuZfK9X1d2mE3QVYtY1HmQPyGWm11/C4NBMA
	d9FCX3WPYOyvumi6stiev639YibYblgFnbcAIUK3cqITU2vTLGwrGHlRXqyUUCBhNDMw52nUaSEeg
	nVaL6iI7oXjMBJGF9oHqhja57xAQrcRGbZGBSzb2dbk4K8UJe5Fsj5sQXgpptKjFSdyc/Wu8ATzMj
	MsR9bEEL7MSQNli0ViHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZsLm-0006vU-Mg; Wed, 27 Nov 2019 08:07:02 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZsLa-0006ua-Kc
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 08:06:54 +0000
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
IronPort-SDR: cEn3BCW7Uuj0AkbwTggZTqMcHGbEeOQxN1mAcz+spnMpYex10ZqcW9JQlnSfNcdIlm062fnn+u
 jwQuf1klLt+TcTLdJgxYPaGOuBkCNoBbBdsDfOK3vOW8ps1mgEynd3imxNZnIUleYaYcNorbRH
 WQNXSaUzRLp0mZT7A+IaRUnzdNh5cY1N7vePX5yWIbHq7ve6CvMtK5jrlWS2rJy0QRudhk8fP/
 etBLFhc+VoT2SMiuKAp5SPOLpY+9x5BgxMgE6Z8goAonr84zDPi2ksj8Q59lcU7uZN53E4H6sU
 /Yo=
X-IronPort-AV: E=Sophos;i="5.69,248,1571727600"; d="scan'208";a="59896014"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 27 Nov 2019 01:06:49 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 27 Nov 2019 01:06:49 -0700
Received: from NAM05-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 27 Nov 2019 01:06:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DgwFyAUGae+i7FaqqWETWc5iyT2qknNy9gr7pSZH/PNb6JgqApF106MgwCXF8TcBjfemOdyv4vURW6/fLNVuGC9S0ElgZYbvCp/Lr8SmtCKwCZrLJMbohLszgjjK4vePlAXfxtAKG18UsuD1qkbG8xbIGkxAbeF28cyEeEpMtn1xmjKU4rREcwgdFIB5cDkhL9gx2rmqYLGVS10c1C2KJ9GBuq+GF9KLG9ABVTliXqTEwjWCdEB/XWXwUPuZWvhSvBJkJtp4P8G2XsfOREVlByiOZPeDnB3iac70T2oBUlVA3KS3kCVFLkOYyLe5l3gV0tq8HblzSryXuPK1lYN+kA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZFoNGerMwswENxEytknQZ4rMUdnBluCgi09EJXd8PaY=;
 b=A272i20iIWCi2KdgqB5yc2BS6MVVpRk8BoStZP+peiwTAaCgcuKDc8gTKG2XvuYWukUgpW/OdJpfW+DM7td4I3ONElUgWGNDtgJoBFiqhkWzARRkF66l//AQyEBaDS26tC2aNNyJPPgkm7/OoL4CDbcoFVknGxtM1AmX/ru/p1pn9teUXW51osyKlPeGHvWtvvtwTU3Dbt2njPfdr9OECcI/fbBev2PYVZBhc9UQguxifnrFCZmFj+74wFpTSo34a14Kmp+BYi2G1eAMOxBmOn5GJoSiAH4TSgoZbY/j/HSNI1uAwVHNd1ns9Mpi1lLfsdbhyQ/J2q+wblpQBdFbAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZFoNGerMwswENxEytknQZ4rMUdnBluCgi09EJXd8PaY=;
 b=oqmssPLH1njjr/n997Q8w8L2aBZVQl3R2+3z9xF4/pF8hv+VOoQ2yIJdiIfTEx3pKA9HvUGrOmegrf95Q/7AOAOgGAtlT7GdUWOwU9D7i5zHCGynU0uILrcrfE/iCfiM8pj8BP6xJ5EQoxNxDoc8TgfiP/Td6RAVQ0uDa6d96cs=
Received: from DM6PR11MB3225.namprd11.prod.outlook.com (20.176.120.224) by
 DM6PR11MB4396.namprd11.prod.outlook.com (52.132.251.161) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.21; Wed, 27 Nov 2019 08:06:48 +0000
Received: from DM6PR11MB3225.namprd11.prod.outlook.com
 ([fe80::ed7d:d06f:7d55:cbe2]) by DM6PR11MB3225.namprd11.prod.outlook.com
 ([fe80::ed7d:d06f:7d55:cbe2%6]) with mapi id 15.20.2474.023; Wed, 27 Nov 2019
 08:06:47 +0000
From: <Claudiu.Beznea@microchip.com>
To: <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH v2 02/17] ARM: at91: pm: move SAM9X60's PM under its own
 SoC config flag
Thread-Topic: [PATCH v2 02/17] ARM: at91: pm: move SAM9X60's PM under its own
 SoC config flag
Thread-Index: AQHVpKCFd9tGDLZ9XESHiYu6fIDZcaeeqfCA
Date: Wed, 27 Nov 2019 08:06:47 +0000
Message-ID: <10705ea9-7a0f-5af4-e383-293fabed6b89@microchip.com>
References: <1574773941-20649-1-git-send-email-claudiu.beznea@microchip.com>
 <1574773941-20649-3-git-send-email-claudiu.beznea@microchip.com>
 <20191126212841.GR299836@piout.net>
In-Reply-To: <20191126212841.GR299836@piout.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1P189CA0025.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:802:2a::38) To DM6PR11MB3225.namprd11.prod.outlook.com
 (2603:10b6:5:5b::32)
x-ms-exchange-messagesentrepresentingtype: 1
x-tagtoolbar-keys: D20191127100639338
x-originating-ip: [86.120.233.88]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2581c52f-e0c1-4f18-542a-08d77310c01f
x-ms-traffictypediagnostic: DM6PR11MB4396:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB43969BFA91147413F91288D187440@DM6PR11MB4396.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 023495660C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(366004)(136003)(39860400002)(346002)(376002)(199004)(189003)(52116002)(71200400001)(3846002)(6116002)(31696002)(256004)(76176011)(102836004)(2906002)(54906003)(53546011)(86362001)(316002)(36756003)(966005)(478600001)(6506007)(26005)(6512007)(64756008)(66066001)(66556008)(66476007)(66446008)(66946007)(386003)(99286004)(6916009)(229853002)(14454004)(5660300002)(6436002)(6306002)(5024004)(8936002)(6246003)(446003)(186003)(11346002)(6486002)(25786009)(2616005)(305945005)(8676002)(71190400001)(81166006)(81156014)(4326008)(7736002)(31686004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR11MB4396;
 H:DM6PR11MB3225.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Gf+P8JU4oh/Aq808K5PkVnNblvnx6wbu6L32Wrs0AVBOWi0v8qrjhBNeXt96+E7u+7ONnQZPJeDMw135WVdUx4N79cAI4LJCSnljDlhTxLuHPaaJc9bcwoXaaFdBSfNwRMP8WxtgcU9TdnQzdVf3iRvE5uxHy7tU3kupzotBrfxYCXHYA8QE0HNX2oT61LLBxu8GmXyEFPm65HI/zbwTkvU/RzBR9N924a5IO1wJZYrnur567EiWFjUu25o+N7VMRPzn4IKUZh+Eb3w3myJMZ1B343MPCcwYyrvS8dlW0zNxgW9gVjmkI4FI5bO8UOERzTVwNk+SidiW+Z6HEM0HtLSFtn6C2n1JmSsLLZfBFpCNaUC2Hwn9jw/RLPhSyiLY8wt4JbMK6EsonvByVdDlFxHiLz9Ifgxu0OMMQJqr7sUyOM3dh7ZWvd9HX0+tvonhVACQ3z9FAlhPDLRtez8/tNlGe73Xsvul6otUremuY/E=
Content-ID: <76575997DE6394499B36B0C039107732@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 2581c52f-e0c1-4f18-542a-08d77310c01f
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Nov 2019 08:06:47.8682 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2WYMyb/Lw9mlYev8BaXaFh8KIsOvulEFfZpEXqBL8whak+b4rsJYN5bJUkq6XMaBYxCIC0TkzJ6drytaGFapfkqvLlNeu+CywBs6unisCbQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4396
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_000650_743588_B03124DF 
X-CRM114-Status: GOOD (  15.19  )
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



On 26.11.2019 23:28, Alexandre Belloni wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> On 26/11/2019 15:12:06+0200, Claudiu Beznea wrote:
>> Move SAM9X60's PM part under SoC config flag. This allows the building
>> of SAM9X60 platform withouth depending on CONFIG_SOC_AT91SAM9 flag,
>> allowing us to select only necessary config flags for SAM9X60.
>>
> 
> I'm really wondering, how much space does that really save?
> 
> The net benefit seems to be very small...

Not that much, indeed. We want to be independent of SOC_AT91SAM9.

> 
>> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
>> ---
>>  arch/arm/mach-at91/Makefile   |  1 +
>>  arch/arm/mach-at91/at91sam9.c | 18 ------------------
>>  arch/arm/mach-at91/pm.c       |  2 +-
>>  arch/arm/mach-at91/sam9x60.c  | 34 ++++++++++++++++++++++++++++++++++
>>  4 files changed, 36 insertions(+), 19 deletions(-)
>>  create mode 100644 arch/arm/mach-at91/sam9x60.c
>>
>> diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
>> index de64301dcff2..f565490f1b70 100644
>> --- a/arch/arm/mach-at91/Makefile
>> +++ b/arch/arm/mach-at91/Makefile
>> @@ -6,6 +6,7 @@
>>  # CPU-specific support
>>  obj-$(CONFIG_SOC_AT91RM9200) += at91rm9200.o
>>  obj-$(CONFIG_SOC_AT91SAM9)   += at91sam9.o
>> +obj-$(CONFIG_SOC_SAM9X60)    += sam9x60.o
>>  obj-$(CONFIG_SOC_SAMA5)              += sama5.o
>>  obj-$(CONFIG_SOC_SAMV7)              += samv7.o
>>
>> diff --git a/arch/arm/mach-at91/at91sam9.c b/arch/arm/mach-at91/at91sam9.c
>> index bf629c90c758..7e572189a5eb 100644
>> --- a/arch/arm/mach-at91/at91sam9.c
>> +++ b/arch/arm/mach-at91/at91sam9.c
>> @@ -31,21 +31,3 @@ DT_MACHINE_START(at91sam_dt, "Atmel AT91SAM9")
>>       .init_machine   = at91sam9_init,
>>       .dt_compat      = at91_dt_board_compat,
>>  MACHINE_END
>> -
>> -static void __init sam9x60_init(void)
>> -{
>> -     of_platform_default_populate(NULL, NULL, NULL);
>> -
>> -     sam9x60_pm_init();
>> -}
>> -
>> -static const char *const sam9x60_dt_board_compat[] __initconst = {
>> -     "microchip,sam9x60",
>> -     NULL
>> -};
>> -
>> -DT_MACHINE_START(sam9x60_dt, "Microchip SAM9X60")
>> -     /* Maintainer: Microchip */
>> -     .init_machine   = sam9x60_init,
>> -     .dt_compat      = sam9x60_dt_board_compat,
>> -MACHINE_END
>> diff --git a/arch/arm/mach-at91/pm.c b/arch/arm/mach-at91/pm.c
>> index d5af6aedc02c..56a6a49b19e2 100644
>> --- a/arch/arm/mach-at91/pm.c
>> +++ b/arch/arm/mach-at91/pm.c
>> @@ -805,7 +805,7 @@ void __init at91rm9200_pm_init(void)
>>
>>  void __init sam9x60_pm_init(void)
>>  {
>> -     if (!IS_ENABLED(CONFIG_SOC_AT91SAM9))
>> +     if (!IS_ENABLED(CONFIG_SOC_SAM9X60))
>>               return;
>>
>>       at91_pm_modes_init();
>> diff --git a/arch/arm/mach-at91/sam9x60.c b/arch/arm/mach-at91/sam9x60.c
>> new file mode 100644
>> index 000000000000..d8c739d25458
>> --- /dev/null
>> +++ b/arch/arm/mach-at91/sam9x60.c
>> @@ -0,0 +1,34 @@
>> +// SPDX-License-Identifier: GPL-2.0+
>> +/*
>> + * Setup code for SAM9X60.
>> + *
>> + * Copyright (C) 2019 Microchip Technology Inc. and its subsidiaries
>> + *
>> + * Author: Claudiu Beznea <claudiu.beznea@microchip.com>
>> + */
>> +
>> +#include <linux/of.h>
>> +#include <linux/of_platform.h>
>> +
>> +#include <asm/mach/arch.h>
>> +#include <asm/system_misc.h>
>> +
>> +#include "generic.h"
>> +
>> +static void __init sam9x60_init(void)
>> +{
>> +     of_platform_default_populate(NULL, NULL, NULL);
>> +
>> +     sam9x60_pm_init();
>> +}
>> +
>> +static const char *const sam9x60_dt_board_compat[] __initconst = {
>> +     "microchip,sam9x60",
>> +     NULL
>> +};
>> +
>> +DT_MACHINE_START(sam9x60_dt, "Microchip SAM9X60")
>> +     /* Maintainer: Microchip */
>> +     .init_machine   = sam9x60_init,
>> +     .dt_compat      = sam9x60_dt_board_compat,
>> +MACHINE_END
>> --
>> 2.7.4
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
