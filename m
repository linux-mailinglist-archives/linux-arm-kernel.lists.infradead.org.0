Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04DBB11AA77
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 13:07:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CJSBy7xYqv6/B9YTSR1qk9Y38QWBPAKlqesbxwgizaM=; b=MeGu31mDENia92
	IsmhGv7bJISaZRVjc/YJpURp3hvDE81b5qI35VMPcTaPSm8XCKFZGSlv1MLjqHdj0Q5OoJltDVcHS
	R4tEDJKLjSKi7iaDiuecsbK/3r7Kpi1wyV1eQV6O8VD2kk8dSALLZUrNzAzPjRDLjB9BKVstkjub9
	PbRa5WuxcMWvWPw2Gm9e+E1yWm5nXvJv6kXjz4ht4btze+BbGnze+Qi1qg7P+iUW3ulHKo/rE9r2v
	V2w1DbBwDzBLky98YLJvHUigI38hpalW2KQqvA8LrBXDNwKA92CIhjCS/F0Vf8W73KGck2qUfcKBz
	qhnO3m4WVmzavu7IlbMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if0mG-00086U-0s; Wed, 11 Dec 2019 12:07:36 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if0m7-00085u-7T
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 12:07:28 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: tDegTIlqnBaqIrKux3j6hOyK/molOMSxyaI9XcPNoRh4YJN3HkvFDp1Q6QpDchojkDkwAS2juE
 jJmtW16Idvgc21qjnfE09qMJLQ2o6zlHDfdTp1QHc/tfZfbDQOq8rv6yNcSGWFcWw9cskFOM8y
 7CIy9fzLdk/zBDXgOryLvN4iUiFSVMLh3CTsYhirJT7g0gTJE6I6pUpepoBF3t2Y25Y7Bt+O8c
 98NhnOG2kKHoRFn9dn648SYzDJpZJ/Q7ztldWidvF/Rkh00djMwVVG6w2Kc0hdZ3h+UXMlgy+T
 X5Y=
X-IronPort-AV: E=Sophos;i="5.69,301,1571727600"; d="scan'208";a="57351278"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 11 Dec 2019 05:07:24 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 11 Dec 2019 05:07:30 -0700
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 11 Dec 2019 05:07:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WYeR3YjmNjwtrOwW2vJSCt7EobsISI2cZnmws28UMoBx/rAGzpnDTHR9rOPE7aDkfFPyc2a+id/afd/orxMlmehL3tbKV51M4s0ByEEj3Wuy/QA6DHUG3QpM/QJZ+Ido0yy7GkbonN3TbR6MR8YoHyfszg2VAyb/WbwwBim+EgyX03P6mnyjCyyCYU1st4WfKmmvSGwT6s8iy+PYg8TXRdqGsAqsToUB7csLH/3PlnWeTutHLX/q1RkgoMj1HvC6GW9BoEsoDWk7rUtzgqGk7/cxKEclofjFdbnVR9X+bBRoagotS6BSsctoNsWxKvD4qBDPZFz5DAt2xPO9oeHXcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7Z2NdoZaZ9/uYx9re3ADms1h0r7WpMlgy2iv26bUc/Y=;
 b=XZyccruARxxd/+m6MzKjS8CvELkb0wzT6P/9Kefy6Yek9S9lJf/qB9uFB6wekrjiC9ihOcX5xe/WDPsgYyQ65itTNK4b8LcDZvTGTbhv0lxtlDLDnMyQeWDpeZjRV7cvTlcKJKcTWlQFWVxp3crGB20mncWLyCMsZ4V9mWxCWeGRtSEBXBtxw7f8k/nVliq4o4q1fMmlEj8d12cIV1YVBKc7Oc1oCNZLdUmaUDeex+tgKW4WKqZ8iQAvtCKLskCj28DWiafkAALqaWDolXl9h7x6H0PCwhGsfednbR+CRT0ha5A6BI+NH26+QmANQjTAhm0V5EGUaHq3tVVj/ifLiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7Z2NdoZaZ9/uYx9re3ADms1h0r7WpMlgy2iv26bUc/Y=;
 b=CiZQEuabrxVd4tOGsijWBvjgTXpeJdaTbq7AzoauHxFU754DKAsR7ywimgReXA5MRApxxW3qtgRddwZ0OFqyD4MiKZZbuvQnC90qMgCxftvaNL9+Zyz/RIaZaXLlEzOSaecBMwPhzmpOAI7+pOVyJRvkjXG17zScmtsjMkZ70sM=
Received: from DM6PR11MB3225.namprd11.prod.outlook.com (20.176.120.224) by
 DM6PR11MB2538.namprd11.prod.outlook.com (20.176.95.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.18; Wed, 11 Dec 2019 12:07:18 +0000
Received: from DM6PR11MB3225.namprd11.prod.outlook.com
 ([fe80::ed7d:d06f:7d55:cbe2]) by DM6PR11MB3225.namprd11.prod.outlook.com
 ([fe80::ed7d:d06f:7d55:cbe2%6]) with mapi id 15.20.2538.012; Wed, 11 Dec 2019
 12:07:18 +0000
From: <Claudiu.Beznea@microchip.com>
To: <sam@ravnborg.org>
Subject: Re: [PATCH 3/5] mfd: atmel-hlcdc: return in case of error
Thread-Topic: [PATCH 3/5] mfd: atmel-hlcdc: return in case of error
Thread-Index: AQHVsBuEbmezCvtdS02ZCsl69qCn1w==
Date: Wed, 11 Dec 2019 12:07:18 +0000
Message-ID: <99b559e2-4621-dec3-8c6c-b7a36f9ef07e@microchip.com>
References: <1575984287-26787-1-git-send-email-claudiu.beznea@microchip.com>
 <1575984287-26787-4-git-send-email-claudiu.beznea@microchip.com>
 <20191210203716.GC24756@ravnborg.org>
In-Reply-To: <20191210203716.GC24756@ravnborg.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: FR2P281CA0018.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a::28) To DM6PR11MB3225.namprd11.prod.outlook.com
 (2603:10b6:5:5b::32)
x-ms-exchange-messagesentrepresentingtype: 1
x-tagtoolbar-keys: D20191211140711496
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: adfa8810-18cf-4764-361e-08d77e32ab78
x-ms-traffictypediagnostic: DM6PR11MB2538:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB2538CA980E9F767FECED8DF4875A0@DM6PR11MB2538.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 024847EE92
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(39860400002)(366004)(376002)(396003)(136003)(189003)(199004)(86362001)(52116002)(66946007)(2616005)(478600001)(8676002)(36756003)(26005)(66556008)(81156014)(8936002)(81166006)(66476007)(186003)(6916009)(6486002)(64756008)(6512007)(5660300002)(71200400001)(54906003)(31696002)(31686004)(66446008)(4326008)(316002)(966005)(6506007)(2906002)(53546011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR11MB2538;
 H:DM6PR11MB3225.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: b6mt6xgDkthwJBuL/3o2pii5letnQTr6Yfngqs8A43CWL7sR33+fvxgoJr7SINITyuamrbrJ2uKL0DKkPwQP+8LuJJAY78S1tjRXxQXuauO40O3sPGX7wEau+9Ts/QRpFCq8MT9GQmrF6pJRTBZhSIQiW++OMsRfkvxdc6VEosgrDNfiw17JtGKAkX1t1ksmlJEJZNJ68GKpoFBg7ADzKyNJ+PnF7k0zjZaLHxZxQGqaNiX9DO4tTFPovE6S68W0IYNvcb6LWWHiayl/opFUw1eoFZ3ni3bjfKDqSrRYz7P+NlLky5epY+xtBz5JVk7Pj35u/2W1nmm6Y2HmfepLn6q2tSKREj/tLmwhxuvHnisF8TBga8+n9Up/E+YgyVxwOvug5xxZGn4gR/OWqu3E15WSh0u4Wl6Amj8dNaGOI3ZvppkZMdMSgZ/eRdB2yuVDvTPKvcs7+HcvXR0N/uwI8SvW3DEaiV1cQaj0SdFFm4M=
Content-ID: <3F858CEA95E15745A056EA7BAC76D287@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: adfa8810-18cf-4764-361e-08d77e32ab78
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Dec 2019 12:07:18.7680 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OajKFdksAQEww7OoP9rRYHZ5IpWqM7SrUUEuCN2L2Gpm6XPkHFe0X2LuDwBIfbGPk8bMNMARHIj9LUKSrJXUxh6TU17hWRfwm+x/rc+tQFw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2538
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_040727_386468_9C7024C7 
X-CRM114-Status: GOOD (  15.89  )
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
Cc: alexandre.belloni@bootlin.com, bbrezillon@kernel.org, airlied@linux.ie,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Ludovic.Desroches@microchip.com, daniel@ffwll.ch, lee.jones@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sam,

On 10.12.2019 22:37, Sam Ravnborg wrote:
> Hi Claudiu.
> 
> On Tue, Dec 10, 2019 at 03:24:45PM +0200, Claudiu Beznea wrote:
>> For HLCDC timing engine configurations bit ATMEL_HLCDC_SIP of
>> ATMEL_HLCDC_SR needs to checked if it is equal with zero before applying
>> new configuration to timing engine. In case of timeout there is no
>> indicator about this, so, return with error in case of timeout in
>> regmap_atmel_hlcdc_reg_write() and also print a message about this.
>>
>> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
>> ---
>>  drivers/mfd/atmel-hlcdc.c | 14 ++++++++++----
>>  1 file changed, 10 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/mfd/atmel-hlcdc.c b/drivers/mfd/atmel-hlcdc.c
>> index 64013c57a920..19f1dbeb8bcd 100644
>> --- a/drivers/mfd/atmel-hlcdc.c
>> +++ b/drivers/mfd/atmel-hlcdc.c
>> @@ -39,10 +39,16 @@ static int regmap_atmel_hlcdc_reg_write(void *context, unsigned int reg,
>>
>>       if (reg <= ATMEL_HLCDC_DIS) {
>>               u32 status;
>> -
>> -             readl_poll_timeout_atomic(hregmap->regs + ATMEL_HLCDC_SR,
>> -                                       status, !(status & ATMEL_HLCDC_SIP),
>> -                                       1, 100);
>> +             int ret;
>> +
>> +             ret = readl_poll_timeout_atomic(hregmap->regs + ATMEL_HLCDC_SR,
>> +                                             status,
>> +                                             !(status & ATMEL_HLCDC_SIP),
>> +                                             1, 100);
>> +             if (ret) {
>> +                     pr_err("Timeout waiting for ATMEL_HLCDC_SIP\n");
>> +                     return ret;
> Consider adding device * to atmel_hlcdc_regmap - so you can use
> dev_err() here. This makes it obvious what device this comes from.

OK! I'll do it in v2.

> 
>         Sam
> 
>> +             }
>>       }
>>
>>       writel(val, hregmap->regs + reg);
>> --
>> 2.7.4
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
