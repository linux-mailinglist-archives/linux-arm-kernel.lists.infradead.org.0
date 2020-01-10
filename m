Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43C50136F65
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 15:30:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N68L2FyJCE3Dxi5JBWHfP2ClKRp7A9jRBo+ag2QtfxM=; b=n8XsbpJU9P9Tg2
	F+e/f4II8VM/9Hq2acOAYMX/9lO8Boi/QAVmtVVOMpJVhyTnGSmE72FHqRd7y/Zb0ETOEoVdl6Vm1
	WEuETawhB9WpCTWiXqr4+RCYshVHT/fu3faPQZzuJG+s4Z3SCLsPOj4XgA2zPBcZK0xVjOYdTdEzM
	ZWC4POXUXRBOmlfPWux0Vod+iTVsyF9TT3MpfNau5zWcK8vdj3EEo1EPE967l3dXq4AjpHGXgKpq/
	cPWOzdeD68xZngB8qdXwyurdzMn4c3xbXm/2Wlcilv1gsq4jVDxhSQ0I+W6QFwJ0MfjPlCl0GBdct
	JtRASdSWhdqomozSeNyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipvIY-0007VA-9j; Fri, 10 Jan 2020 14:30:02 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipvI5-0007K8-PT; Fri, 10 Jan 2020 14:29:36 +0000
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: q5AiC3XkiauEHUQFQG17xILgSYBRgXKCrPTN1w/P5eSDbuM0CAQarGXVZ6eJN8ct5nAPWg7tza
 3ygMbof4X/nO89x/Eh43KeQh/Rrd8M+CpxFf8R3hBh2AxjhYJkahF5hgcGayTaoZnLo9lwNEmX
 MpjR/h93Xwa/gmoAwVfIhAhet6w6kSLnMop48QdZ1CCudHvii+urqRdBKdAFFwIQxoe89rokho
 j3K4B9eLZzMjTE9rKL9MSdPrjfnQTFHITdty0Uhx0hRGXHzw3eMc1uakez6+QRZeqnfx+9nk3B
 f/I=
X-IronPort-AV: E=Sophos;i="5.69,417,1571727600"; d="scan'208";a="62877025"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 10 Jan 2020 07:29:30 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 10 Jan 2020 07:29:30 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Fri, 10 Jan 2020 07:29:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JSqMLRReve8BV3ZaCM3KyNfU0/JusiiBOdUct00Em+P/DFuJAKeoNk6cvbLgO9d1fP46LiAw45ZKiq06qfO0JVJm2Tui8B29IXubQ5ffOS2VYG2+Cu93fwxw0dAqyuP+ANWuhVypzxMwzzdDd4wKd89kKUjgH+f0zmsW0ny9xTs8vxOffnyo3BXGsPDUKwaY9OZwJCSJHOQQgdOgOeCRkcO3TClA1XeHE58aksiodKKxTzpiz3fs80RHYAydeAmLLq+CxRh1jKzM9SzitVWRy7jPI8DdJ7BV7fITKx/btKNpAvhriV2pzV3w+WA8/YFKmEAFH7+TEJZ7tjIuJW6Dwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xxloPh4/jxlmr4sbf54DV4SK9CqW6sDObohYQUYoWZU=;
 b=EKsLa5ltL2feIg37GfyMr7OdwS2HU2E45kCNITiRONVlJTSngEIVijhw+qJPDemsRcsetWF/yym0Vi6m+ZPF19qU/vQ3mPH8a2w6mSzExMvsJJlCAW0ZI1WJ6aGSQSwcIMjNMBwwcDBDL7Fy7oAIHzOev0FgImoSCGSJv9aQokThCFLKBg+0bBPra4PgE8FdVOSh8HCvnJKq+m3wtR8OzFwmThQluiDMCaYrDbRT2/Rzo/+NOnl//n5fOhKbz/xbji1CMYSU2ffF1i/Qrcb2v0ALLli0UncYOW3ddaJnJ3VuSdvmFl/sWh4h//PZLJMYhZCESZx3khLZPJsKykZT0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xxloPh4/jxlmr4sbf54DV4SK9CqW6sDObohYQUYoWZU=;
 b=GasbKkqfqruBwca4atFPr/9Mq6DQxST94rMtnhNgOhG/2R3DFuuYreTDjjS8qwWSiISMBuQ3Sc2Lzy/WE4TmZqBcpWnOnNpw7XUuQajLeZGjgidnO2QbE9Winkqwtr+Jw8jAIj/+lu3UCMQUVM6gQMjYVahKmXmvBEIPgaA12Yk=
Received: from DM6PR11MB3225.namprd11.prod.outlook.com (20.176.120.224) by
 DM6PR11MB2619.namprd11.prod.outlook.com (20.176.99.25) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.11; Fri, 10 Jan 2020 14:29:27 +0000
Received: from DM6PR11MB3225.namprd11.prod.outlook.com
 ([fe80::106f:424f:ac54:1dbb]) by DM6PR11MB3225.namprd11.prod.outlook.com
 ([fe80::106f:424f:ac54:1dbb%7]) with mapi id 15.20.2623.008; Fri, 10 Jan 2020
 14:29:27 +0000
From: <Claudiu.Beznea@microchip.com>
To: <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH 03/16] dt-bindings: atmel-tcb: add microchip,<chip>-tcb
Thread-Topic: [PATCH 03/16] dt-bindings: atmel-tcb: add microchip,<chip>-tcb
Thread-Index: AQHVx8JdxpRYsxUulk+Au4WCpSrtFg==
Date: Fri, 10 Jan 2020 14:29:27 +0000
Message-ID: <da99fbce-8341-19d2-12c9-144564d70726@microchip.com>
References: <1578488123-26127-1-git-send-email-claudiu.beznea@microchip.com>
 <1578488123-26127-4-git-send-email-claudiu.beznea@microchip.com>
 <20200110134001.GD1027187@piout.net>
In-Reply-To: <20200110134001.GD1027187@piout.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f2b8e2ee-3f51-4d33-5aaf-08d795d97fae
x-ms-traffictypediagnostic: DM6PR11MB2619:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB261914089414C7B81ADA900387380@DM6PR11MB2619.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 02788FF38E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(136003)(396003)(346002)(39860400002)(366004)(199004)(189003)(966005)(6486002)(71200400001)(26005)(6506007)(53546011)(6916009)(31696002)(478600001)(2616005)(8676002)(81166006)(186003)(81156014)(86362001)(64756008)(66446008)(7406005)(66556008)(66476007)(36756003)(2906002)(54906003)(31686004)(5660300002)(6512007)(66946007)(91956017)(76116006)(4326008)(8936002)(316002)(7416002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR11MB2619;
 H:DM6PR11MB3225.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: A30B1H1ZE17H9I1fgVDH+S8ZJ4VzWdgVlD/1s+7fYFSAW6V/IGfnMPOb+Hf4BGGxU8Yt5KMuuQ5+PcRy4449kUgZal5vhyireB9TFxUzxTlnaHFZUecYNPrj+rGiGTlr9VjHwuOOqhOGN7w56k4vROS0O1MWHVOtQUcE9mtKdrxnO/BRWHbx5rX8BTvh+o+DMp9fWaAhkLPTAcBaE1erSh2cKFheVd4Ve+Fg3/GhrLICcJcsbRcmdjUhfKXSW70UrQWJnunn5mYMHvIK4jbs4Cojh2/39O1BIv1lrEgUQ+bRILYl9+LmrRPMUGuzqcuK1j8LH7Ffl23YMG1HcwI1OLxernXxIfHLhv6xF3zu0EO8P65K6XVf/3Wl7b2ShXH8iZhJpICOzlvAlbgyVvYiN3EFJDzqIuroIyAgi6lkqscQlSpA4lvoRIZo69FJXg8GP/B66m4hIXpi300Htiju5JOoxyNnB5Yxr/I06kg2dXc=
Content-ID: <88CA889BDD9DA749BF1403CE9B9231D5@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: f2b8e2ee-3f51-4d33-5aaf-08d795d97fae
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jan 2020 14:29:27.8009 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YeoEhpAe0UmE9ZEWjX/ksEr3eX2Yr5486S2WyfyiCLJXASfPHqr13AslEXQcfiqn6/FquOLYZD7dm87Z26xXBDeZdfiSupFXW/z11lsvwUw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2619
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_062933_897035_D24FBA92 
X-CRM114-Status: GOOD (  13.22  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, vigneshr@ti.com, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mtd@lists.infradead.org, pmeerw@pmeerw.net,
 miquel.raynal@bootlin.com, lee.jones@linaro.org, linux-rtc@vger.kernel.org,
 lars@metafoo.de, richard@nod.at, Ludovic.Desroches@microchip.com,
 wg@grandegger.com, linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 Tudor.Ambarus@microchip.com, radu_nicolae.pirea@upb.ro,
 linux-can@vger.kernel.org, robh+dt@kernel.org, mkl@pengutronix.de,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org, a.zummo@towertech.it,
 richard.genoud@gmail.com, netdev@vger.kernel.org, linux-spi@vger.kernel.org,
 vkoul@kernel.org, broonie@kernel.org, knaack.h@gmx.de,
 dmaengine@vger.kernel.org, Eugen.Hristev@microchip.com, jic23@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 10.01.2020 15:40, Alexandre Belloni wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> On 08/01/2020 14:55:10+0200, Claudiu Beznea wrote:
>> Add microchip,<chip>-tcb to DT bindings documentation. This is for
>> microchip,sam9x60-tcb.
>>
>> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
>> ---
>>  Documentation/devicetree/bindings/mfd/atmel-tcb.txt | 5 +++--
>>  1 file changed, 3 insertions(+), 2 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/mfd/atmel-tcb.txt b/Documentation/devicetree/bindings/mfd/atmel-tcb.txt
>> index c4a83e364cb6..e1713e41f6e0 100644
>> --- a/Documentation/devicetree/bindings/mfd/atmel-tcb.txt
>> +++ b/Documentation/devicetree/bindings/mfd/atmel-tcb.txt
>> @@ -1,6 +1,7 @@
>>  * Device tree bindings for Atmel Timer Counter Blocks
>> -- compatible: Should be "atmel,<chip>-tcb", "simple-mfd", "syscon".
>> -  <chip> can be "at91rm9200" or "at91sam9x5"
>> +- compatible: Should be "atmel,<chip>-tcb", "microchip,<chip>-tcb",
>> +  "simple-mfd", "syscon".
>> +  <chip> can be "at91rm9200", "at91sam9x5" or "sam9x60"
> 
> atmel,sam9x60-tcb, microchip,at91rm9200-tcb and microchip,at91sam9x5-tcb
> are not allowed and the documentation should reflect that.

OK! I'll double check it.

> 
> It would probably be easier to do that on top of the yaml conversion
> here:
> https://lore.kernel.org/lkml/20191009224006.5021-2-alexandre.belloni@bootlin.com/

I don't see this integrated in next-20200110. Am I looking at the wrong branch?

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
