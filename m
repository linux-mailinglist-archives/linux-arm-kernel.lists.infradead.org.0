Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FFC71A644F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 10:50:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SIrzos5D4gRRBkhHH9wuE5k2u74VxZYwFjbUF8RQRS8=; b=pzOwMFEssjmg0Q
	WgRQZ2btpT6I/RVYIq4qtAOQoirtFOEYMMG3OYWUhGwRxHcXtnLuLAFk1GkQNwNyp70VKZE44tZU0
	vxx+jFZPR/qs5mDKcPOVT/WvXJSPc/WiwKLnGYxfj3/0ffQt4LMWaj6YcPTolLHs0ciJwKLa97AZG
	qDg89tgL7LPG240WLWtRkz2W3GqBHUFpqf4rqWcjotWWFNC1YsLBPESjFPBzhQ/aTD69QpL1Xk9vP
	LxZqeYwslgouhGIRyyCvsctPVzuiAoabEU4Sd+Zoy720V2mtd6hwF9qzH6SVMg35FE4iT2JXMhdRy
	ESOCZgdvulludnH2F/uA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNunJ-000062-HS; Mon, 13 Apr 2020 08:50:17 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNunA-0007Ic-Ve
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 08:50:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1586767808; x=1618303808;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=g+BoujTaXmL7RzkQF/U6ORkv3elN4x17pBJHtsOnGzU=;
 b=l59t5zRA64GTlR2ViaJhDBCkS/nzX/YicJPtKvV/v143LleKukfDBsCd
 vjvfPGfvYfMvx7+3SGO7ClZ+gRKm1ada6EaP+DvUbhHvQsWbuPiPyToCG
 WQ3eh2dQYjEmkJ/ksFFUg6wtfwYcaytA1RKC1jgjez9hZg3CDJpWzVT/m
 BB6RJKLIwFTCl/AgpDkbCsITuqYxr1SxxverxotNbu1EnspUrZfXyo7/c
 ZZm4PpFFjTqaGqY0KaZejPAMF3gImBJPTodAW5gIS/HxQVUGrRX7sk9MV
 gpY4UwEd8j7ehVGQD/a5c78sNebuiEd4rgDGhw9xIo3lmqBbzmBFiMZuC A==;
IronPort-SDR: P41cqiYl6gAUK91I29g2Wc0yXqRMrzS1+7Qot+C9rKXm0JtGr0RzjOHyHqMdPMnp7w8EvEB6GH
 A1Pd/VpvzcgPbLPWWDG6OxfQQWP8CRUM/yovCT781hBOw3bLGEkc1dgwtaFAwEau9SBcbdTvvk
 riNMMnr7+rdqy+1tknbXkun1z+ynPQXDwUE2Y6a/K/YviirCGpeybrUDH4nurAyLGq9gaIAPh7
 Z1n2veH9YyBFh5L8ssX0CbBajjPzx7UWeVLzBleP/gG9vqi/uZyStZ5I0QwAHUlNYj+CWVSk6i
 feg=
X-IronPort-AV: E=Sophos;i="5.72,378,1580799600"; d="scan'208";a="72004610"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Apr 2020 01:50:04 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 13 Apr 2020 01:49:53 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Mon, 13 Apr 2020 01:49:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cf+/UBwgcK32A9OjeUN/QBKAPt0s0s4CnzEZ2wD9IPGWF/64D1pb84qRIaOKBrrl9Vi16WGjbP7rJFlCwlJiuAqWE7Jet2oQUjFsNHA4EDpFW7j924HyHNVjS+9uzfdwjdjb6bLDnO4pE1TViNuY0MFEBiO6qN9yP83pjcxZ2WhHS6HFzMYHD4IVPDELN04nXSn3AEsoNdwfpFA0S+p4SJBp2Byygpf+ahxHsAAdXim3qe2yEkFjRzeh4InipvIhW+IZJtlcGQSuf2C4yh+FKbB0CYTRhtBomNhxtk8UBFvMrcWBsDv4sg1BCatUbEfjjXc5hO44HA7wdn0v4UYwEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=g+BoujTaXmL7RzkQF/U6ORkv3elN4x17pBJHtsOnGzU=;
 b=ADIglFXf3K6+X1nxUTWR6gLEZNpG3+POCsACDdF3qqXG6FdR8jYfmudrUFX9JfXOQ4JTsZfwn/B1i9quIP3SlwDsdgPMGvlKbMKBoO+CXdnCSYnw0qsCVLwSSOKGVQn/Kaf4Iyd8gM43AxNAxXmvNaDIiANbNErBadRhyExe3A6p/qdpLNEhOl/xZW/nZozYMFugFtk4FDMOfoaDEMUmAv/+FlkhS3S9YSL3GLPEDBeB9tzzYgItnW4SBTmiR5XWUWcAhpB1brpyUWm2tB83UEy+QvuJUy/ml+ztXtwXqOJp3wSLo/UPQu3svMag9KMQTjiZ+dOYKIo+qUns220pkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=g+BoujTaXmL7RzkQF/U6ORkv3elN4x17pBJHtsOnGzU=;
 b=vewzA0YKLw9dmCANYdvTeieUgfh9J94A4tfEBFUVB1a00tEI+KMn5tUGDncqtLMIH8Po0qK/ey/d2d3HE6dnD4iFuY7DYJmuyFvxratbc4Y3DSjf+DBNsQfLt1C17YqLCTgY+FADeu/FNSAhXBmbrWaQ32HNuLDJohNjlhfsQbY=
Received: from DM6PR11MB3420.namprd11.prod.outlook.com (2603:10b6:5:69::31) by
 DM6PR11MB4010.namprd11.prod.outlook.com (2603:10b6:5:194::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2900.26; Mon, 13 Apr 2020 08:50:02 +0000
Received: from DM6PR11MB3420.namprd11.prod.outlook.com
 ([fe80::91cb:6555:db9b:53fa]) by DM6PR11MB3420.namprd11.prod.outlook.com
 ([fe80::91cb:6555:db9b:53fa%7]) with mapi id 15.20.2900.026; Mon, 13 Apr 2020
 08:50:02 +0000
From: <Claudiu.Beznea@microchip.com>
To: <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH 5/5] rtc: at91sam9: add microchip,sam9x60-rtt
Thread-Topic: [PATCH 5/5] rtc: at91sam9: add microchip,sam9x60-rtt
Thread-Index: AQHWEXCCLb5+HJo6A0Cdc6S18/omnA==
Date: Mon, 13 Apr 2020 08:50:02 +0000
Message-ID: <fa6366a0-e1a7-a7b3-e743-2517437b2b3d@microchip.com>
References: <1586536019-12348-1-git-send-email-claudiu.beznea@microchip.com>
 <1586536019-12348-6-git-send-email-claudiu.beznea@microchip.com>
 <20200410174113.GZ3628@piout.net>
In-Reply-To: <20200410174113.GZ3628@piout.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Claudiu.Beznea@microchip.com; 
x-originating-ip: [86.120.235.162]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d81bfa62-36bc-4013-8fc5-08d7df87a7ed
x-ms-traffictypediagnostic: DM6PR11MB4010:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB40105475D43A95333EC18FAA87DD0@DM6PR11MB4010.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 037291602B
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(396003)(376002)(346002)(136003)(39860400002)(366004)(7416002)(36756003)(66946007)(26005)(2906002)(66446008)(64756008)(66556008)(66476007)(76116006)(91956017)(6512007)(6506007)(478600001)(53546011)(54906003)(316002)(966005)(2616005)(8936002)(8676002)(6486002)(86362001)(31696002)(31686004)(6916009)(5660300002)(186003)(81156014)(4326008)(71200400001)(142933001);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vUr0lYDSLZykIq9gZ+MBtT921bpofV0CXnv3EA7LOYLnKvASu6spwMTBxWDNzXzPROijD2bGLplHXX3SdzJ1uf3xzz7ApbunBNfZRUDHf+B3ylpNkuHOEGg1u07ZtVjMFWGg4UOnpKELkGqoBLFDDdTJKvbJlgkMMPoZU075ZZxG5joT5XjuYmcG7sjz9vAyKEAPj8QTjgK2fZmIEGj9HdX4FsaGrFwbuUrkoSyDOi6gwtHSbqObCOUmN/DEcKqBguGTNnT/MmFJCM/br+oL952TrUJc5PF5T2YJ+ZXtBf+Qh3XufbU/KnsXXqumlcuWTk5C7UQ5/Aix9mv824cbjJ14deX42NPlUJOyPwBupeCG9il8WOtrUyc5JzKbu5tVfgvXiIOD7nPI3rFQv7JS/z5VKQQIOsij/AV+KfXqozDZzfZHlj/oaogT3sPaiuPTDByTVITSwc3kU+XLU1cH9n90CjVxlfjXPLASr0p5PYkKajKg8yYCnPLGOTbp0HNi88KFrlMma4Ib9Q38ZqpAcY3QhhFAmAkh/KIlUP7RIfet40ZZbDjL2pb8HKGQQrsh
x-ms-exchange-antispam-messagedata: b1leqvzIdNAeqYVDCtq3deH8G72YtkDNz+MyBD81ydV6rcCkg2SrIfVpgXw8+Czdd47Z2/PLqIOnjYIchVOWM8VKzAGcj50L1KvnXezBBHK86YkEY5II805qy+rhCDgkgeZmEMNvsLxECkyo6+Ue4A==
Content-ID: <C63CEFED00853941AA35BEDE6178E5F9@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: d81bfa62-36bc-4013-8fc5-08d7df87a7ed
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Apr 2020 08:50:02.6028 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Yut3OV/q9lD+Fea4eQS2FhEDnR4viRDud4gIhTZDKivZie13svHOjs/WP8t3gcDjqp27ZI96D6SUwXEooHj7xORKyvVdZiV5Nl5hsgUBFOQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4010
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_015009_180581_14FE51D1 
X-CRM114-Status: GOOD (  24.16  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, a.zummo@towertech.it, jason@lakedaemon.net,
 devicetree@vger.kernel.org, maz@kernel.org, linux-kernel@vger.kernel.org,
 Ludovic.Desroches@microchip.com, robh+dt@kernel.org, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 10.04.2020 20:41, Alexandre Belloni wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> Hi,
> 
> This patch must come first.

OK!

 Also, the correct prefix is
> dt-bindings: rtc:

OK! I used the prefix that was previously used.

> 
> On 10/04/2020 19:26:59+0300, Claudiu Beznea wrote:
>> Add microchip,sam9x60-rtt to compatible list.
>>
>> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
>> ---
>>  Documentation/devicetree/bindings/rtc/atmel,at91sam9-rtc.txt | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/Documentation/devicetree/bindings/rtc/atmel,at91sam9-rtc.txt b/Documentation/devicetree/bindings/rtc/atmel,at91sam9-rtc.txt
>> index 6ae79d1843f3..b2f913ff6c69 100644
>> --- a/Documentation/devicetree/bindings/rtc/atmel,at91sam9-rtc.txt
>> +++ b/Documentation/devicetree/bindings/rtc/atmel,at91sam9-rtc.txt
>> @@ -1,7 +1,7 @@
>>  Atmel AT91SAM9260 Real Time Timer
>>
>>  Required properties:
>> -- compatible: should be: "atmel,at91sam9260-rtt"
>> +- compatible: should be: "atmel,at91sam9260-rtt" or "microchip,sam9x60-rtt"
> 
> If you had a fallback on atmel,at91sam9260-rtt, this would make merging
> this series easier as this removes the need for 1/5 and 2/5.

The:

diff --git a/drivers/irqchip/irq-atmel-aic5.c
b/drivers/irqchip/irq-atmel-aic5.c
index 29333497ba10..74a66cd05553 100644
--- a/drivers/irqchip/irq-atmel-aic5.c
+++ b/drivers/irqchip/irq-atmel-aic5.c
@@ -310,10 +310,16 @@ static void __init sama5d3_aic_irq_fixup(void)
 	aic_common_rtc_irq_fixup();
 }

+static void __init sam9x60_aic_irq_fixup(void)
+{
+	aic_common_rtc_irq_fixup();
+	aic_common_rtt_irq_fixup();
+}
+
 static const struct of_device_id aic5_irq_fixups[] __initconst = {
 	{ .compatible = "atmel,sama5d3", .data = sama5d3_aic_irq_fixup },
 	{ .compatible = "atmel,sama5d4", .data = sama5d3_aic_irq_fixup },
-	{ .compatible = "microchip,sam9x60", .data = sama5d3_aic_irq_fixup },
+	{ .compatible = "microchip,sam9x60", .data = sam9x60_aic_irq_fixup },
 	{ /* sentinel */ },
 };

part of 1/5 is still necessary.

Regarding the fallback to "atmel,at91sam9260-rtt" I am aware of that. I
chose this approach because this IP is a bit different than the one with
"atmel,at91sam9260-rtt" compatible, meaning it has a features that the old
one has not. I'm talking about [1] which I cannot see on a SAM9G45 [2]
where RTT IP uses "atmel,at91sam9260-rtt" as compatible.

Is true it may be necessary in the future when new features may be
implemented. Taking this into account, would you like to get rid of the new
compatible in code and keep it only in device tree?

[1]
http://ww1.microchip.com/downloads/en/DeviceDoc/SAM9X60-Data-Sheet-DS60001579B.pdf#_OPENTOPIC_TOC_PROCESSING_d137e64502
[2]
http://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-6438-32-bit-ARM926-Embedded-Microprocessor-SAM9G45_Datasheet.pdf

> 
> I think 2/5 may be useful in the future but as far as the aic fixup
> is concerned, both IPs are identical.
> 
>>  - reg: should encode the memory region of the RTT controller
>>  - interrupts: rtt alarm/event interrupt
>>  - clocks: should contain the 32 KHz slow clk that will drive the RTT block.
>> --
>> 2.7.4
>>
> 
> --
> Alexandre Belloni, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
