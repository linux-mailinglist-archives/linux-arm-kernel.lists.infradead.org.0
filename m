Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95C601357C9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 12:20:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HhEKcpdHJaODCLmcpeGVUhoB2uiQtr/F+bIE/HA9DqA=; b=YBoBFUhlJFcIP7
	VhNM9BEXjzj+hbElu1Xvl4rVkhje7bb3dA4hUXypCZ9FM/aTZcNiWpYIKaECKZfs9+cU3dEwrjXRM
	VNwg5XQm41ike+aJOZpwn7vA78Yas2nr8qDqW3prJrypyUcbf38p7kfhSNDTm4c2/Sws8K49rIvrf
	bhsFS8l2WqvcLbjlN5IqAV6edbkh/zgqiQgh1UTBkKafl0/x1bxG1doiQaYBryquC7HEqDLwptPxH
	rLV7OIpI2zRFMtExsOt4YqqXXz4xK2zy1pMAOGXySAOlTOEOpO073/A3PPeHjWKfPmMY4N/ZXKpzS
	2GiIRYz9Sof20H2ETxpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipVr4-000882-7R; Thu, 09 Jan 2020 11:19:58 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipVqu-00086z-8S
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 11:19:50 +0000
Received-SPF: Pass (esa1.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa1.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa1.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Eugen.Hristev@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: FYPRjnk6AvWJhUpp4jTtlyDGiIxA9rW2ZUdftnhRN0nIk6eEQm4w7lDatR/lTD6OFPN17SzjAo
 vXOnDNFfs8mehi1xrPiDkVQ9p245N/1+IQVMK+F8dSp4QAdNxDuwbzCeEArlH6I46wy6HsNctg
 TME8ZGbiSmEAlAP9W2vfO3Ebf1InybTltvVYyKlWBIC0KZ37EiDNJ+igv097AxwVuJmajJO/Iu
 XGl008MtAPVtQEb3in2nELQlYFA+uubVlg6PckStOX8cL5V2FbF86aHQZ0ytGCzLpfvbTQ/Gwn
 3qw=
X-IronPort-AV: E=Sophos;i="5.69,413,1571727600"; d="scan'208";a="64163359"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 09 Jan 2020 04:19:47 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 9 Jan 2020 04:19:47 -0700
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 9 Jan 2020 04:19:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nGEi8TQzBCK+tG8OJmbG4hmlEtduC7pahYbBI0qierpk9m+wY0peQ+Y/VhsDbtKdTbM39M5eJzUuIqaYKO+hFluOo4WHDdiVsis+YkrKfCempfhAZO72krtElBMfNIxMo0WqcMZABDAD4uiW2ADTZdmTIAjr5oO+W7KKrQYIN0jY415iT1i+akAnCeY384QhwswOP9R0IBsBwhmBJI1M2fzwvF9T9tKPgBVzU5LUJ1y1+R1ioZDon5TM1T3K+i92K+NwqU010/DFHRLtP5Xw+5IsbCPF09PNQsuYvgKR81HcgUjSPRZgF31YZuhvT1mjMKCYO9zufjVjm/DLY5WH/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V8/F4CbHyggNHtGCIVhx/HKA000KCrpYJbizrCDlCiE=;
 b=YVD/oOz8QH8Vil5+RmfriOQa43df1+k0nU7YhzRkRxW9IG3KIet2rRZ2+qxrAOqJ3InpUwAh+fvVxh3PGM8QFBav24DDPpx9/fRNDHBWN6+3F4HUtqWY8ByW8WEt9QhFwV0XVokYanzobdUFGe/4G0TVjYl6mmx77FgeDdGQ6tKaJEH8dgfTJwSZIz1a91LjYS6h3BCv+YhpD15K0mvpYbKek8f3TsAP+z2UbVkrjDM17m1GIXLEnBC/WSjOEThuI3QlcSATxhdt1sKgwxG0w39hEnk9pFSVxVoDeos5Q1nUXKuG0nRUajhyhnZfFntEtAWhOEp6lFmNiReDSFZ7CA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V8/F4CbHyggNHtGCIVhx/HKA000KCrpYJbizrCDlCiE=;
 b=kkWpGlBzHWJ75BOKbmU3ec895UY1uL4jWOfnabQDZOg5ZcQoOKTOjaeSwtQaa0V5AyGB0eiB/SHZ0aSri4If9AmH6lfj08ksROIhx2j6yzwmwNzl+uqGjkKB1JAbY5ldrXgTtfEhLU1mFc023DOzv/cZAdH3yM7vvBFevr/tizI=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1530.namprd11.prod.outlook.com (10.172.38.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.12; Thu, 9 Jan 2020 11:19:45 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::e5f6:d07d:d7de:ce79]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::e5f6:d07d:d7de:ce79%6]) with mapi id 15.20.2623.011; Thu, 9 Jan 2020
 11:19:45 +0000
From: <Eugen.Hristev@microchip.com>
To: <jic23@kernel.org>, <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH 04/10] rtc: at91rm9200: use of_platform_populate as return
 value
Thread-Topic: [PATCH 04/10] rtc: at91rm9200: use of_platform_populate as
 return value
Thread-Index: AQHVtb+OEQqavda3i02bVS64GBIv7afAGSQAgAACToCAAAHPgIABEL4AgAATLoCABlg0AIAauF2A
Date: Thu, 9 Jan 2020 11:19:45 +0000
Message-ID: <7e67d601-e17e-f82c-edeb-824fc3dd89db@microchip.com>
References: <1576686157-11939-1-git-send-email-eugen.hristev@microchip.com>
 <1576686157-11939-5-git-send-email-eugen.hristev@microchip.com>
 <20191218164348.GN695889@piout.net>
 <04264cb0-61a9-aba3-82ad-e7d12fd8441e@microchip.com>
 <20191218165831.GO695889@piout.net>
 <91cc67e1-7e14-f7b9-da77-b16d9e158f20@microchip.com>
 <20191219102321.GR695889@piout.net> <20191223111636.4698123b@archlinux>
In-Reply-To: <20191223111636.4698123b@archlinux>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 372891a8-b400-4cf8-458a-08d794f5d4c9
x-ms-traffictypediagnostic: DM5PR11MB1530:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB1530548676A4041243581A03E8390@DM5PR11MB1530.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 02778BF158
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(136003)(396003)(376002)(346002)(366004)(199004)(189003)(36756003)(110136005)(31686004)(86362001)(478600001)(4326008)(54906003)(31696002)(53546011)(66446008)(66556008)(66476007)(316002)(66946007)(8936002)(64756008)(81166006)(8676002)(81156014)(26005)(2616005)(6512007)(6506007)(91956017)(76116006)(6486002)(107886003)(2906002)(186003)(71200400001)(5660300002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1530;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yVwtaxaLPkgF3RhEYl33UStsg9hbrOCPP7hPnilW1KprV/9hxDkmSwYTVNOPi6qZq8XTMc/eK0b5sjaqa6H+xu+UD+2VddZs3QOT/6wKxgSjpZ87PBI3dK7FibsZ9O5bLl8Q8/4IOhjtmMJO20/0/ZUdAc56Fpplq7IZ5FvUZxtEZujQqd1PXAZOvWCVCRtVdyD1kzJ6+QUc97yu3EyUkP2PPfxT6NpKWJlo3slEja3nrkvtdLx1F2luH78pbXi5kAAXYNXuOVBs8VR3ITpumh92wYUqWC5FkXk7usg/5kwSuXg7FtSZOV9F5eJyOzuDKs1S25rPiDs3QKVqaEFgeCydzziqagvLD7ZfJ9V3bFgCFpKf4Swd+3GSwXTfbNj0/4yTo2qddl4UMZFzQM26dqTvopG/lmJSjdobnl9twMg5HRgj/0QKz5jNvlyA+Vgo
Content-ID: <19ED096E953C30488046F741624ED967@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 372891a8-b400-4cf8-458a-08d794f5d4c9
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jan 2020 11:19:45.0204 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EjfVtK9iegYTaouMgqRWwB1FLMqxpjuSY+iC1NkQq7EhlfTf0KFzqlVEWHCa7oqOFwPCT8Y4LGLQYXPqHn3ZHwyzdM/PqabZL8bZMal2H+A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1530
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_031948_310098_C62DF80D 
X-CRM114-Status: GOOD (  20.85  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
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
Cc: linux-rtc@vger.kernel.org, devicetree@vger.kernel.org, a.zummo@towertech.it,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 Ludovic.Desroches@microchip.com, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 23.12.2019 13:16, Jonathan Cameron wrote:

> On Thu, 19 Dec 2019 11:23:21 +0100
> Alexandre Belloni <alexandre.belloni@bootlin.com> wrote:
> 
>> On 19/12/2019 09:15:02+0000, Eugen.Hristev@microchip.com wrote:
>>>
>>>
>>> On 18.12.2019 18:58, Alexandre Belloni wrote:
>>>> On 18/12/2019 16:52:21+0000, Eugen.Hristev@microchip.com wrote:
>>>>>
>>>>>
>>>>> On 18.12.2019 18:43, Alexandre Belloni wrote:
>>>>>
>>>>>> Hi,
>>>>>>
>>>>>> On 18/12/2019 16:24:00+0000, Eugen.Hristev@microchip.com wrote:
>>>>>>> From: Eugen Hristev <eugen.hristev@microchip.com>
>>>>>>>
>>>>>>> This allows the RTC node to have child nodes in DT.
>>>>>>> This allows subnodes to be probed.
>>>>>>>
>>>>>>> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
>>>>>>> ---
>>>>>>>     drivers/rtc/rtc-at91rm9200.c | 2 +-
>>>>>>>     1 file changed, 1 insertion(+), 1 deletion(-)
>>>>>>>
>>>>>>> diff --git a/drivers/rtc/rtc-at91rm9200.c b/drivers/rtc/rtc-at91rm9200.c
>>>>>>> index 3b833e0..f1b5b3d 100644
>>>>>>> --- a/drivers/rtc/rtc-at91rm9200.c
>>>>>>> +++ b/drivers/rtc/rtc-at91rm9200.c
>>>>>>> @@ -421,7 +421,7 @@ static int __init at91_rtc_probe(struct platform_device *pdev)
>>>>>>>          at91_rtc_write_ier(AT91_RTC_SECEV);
>>>>>>>
>>>>>>>          dev_info(&pdev->dev, "AT91 Real Time Clock driver.\n");
>>>>>>> -     return 0;
>>>>>>> +     return of_platform_populate(pdev->dev.of_node, NULL, NULL, &pdev->dev);
>>>>>>>
>>>>>>
>>>>>> You can avoid the DT binding change and DT parsing by using
>>>>>> platform_add_device here. I don't think there is any point describing
>>>>>> the trigger as a child node (a watchdog functionality wouldn't be
>>>>>> described for example).

Hi Alexandre,

I started to work on this, I am trying to add and probe the 
rtc_adc_trigger with platform_device_add.

However, some issues arise: this means that the rtc_adc_trigger will not 
be OF-compatible, so, how can I identify the driver to probe ?
Second, by adding a new platform device from the RTC driver, would mean 
that I would have to supply it's probe/remove functions, which I cannot 
have here. Those are in the rtc_adc_trigger iio driver.

In fact, the question is, which is the mechanism you suggested, to be 
able to probe the rtc_adc_trigger, from inside the rtc driver, without 
using a child node in DT, as you requested ?
The rtc_adc_trigger needs a MEM resource, and a parent, and it must 
reside inside the IIO subsystem.

Thanks,
Eugen


>>>>>>
>>>>>
>>>>> Hi,
>>>>>
>>>>> It's needed because the ADC needs a link to the trigger device. This is
>>>>> a hardware link inside the SoC, so I thought the best way is to describe
>>>>> this hardware is in the Device Tree.
>>>>> Otherwise the ADC node is unaware of the RTC triggering possibility.
>>>>> If we just assign the RTC trigger device to the ADC through the sysfs,
>>>>> the ADC cannot distinguish between the RTC trigger and other various
>>>>> triggers which can be attached.
>>>>>
>>>>
>>>> I'm not sure this links is required but I will let Jonathan review. Even
>>>> if it is needed, you can still use the rtc node to describe that link.
>>>
>>> Actually, the RTC node could potentially have two different ADC
>>> triggers. There is another OUT1 field that can do a second trigger for
>>> the ADC only for the last channel. Future development might add this
>>> trigger, so, with that in mind, I think it's best to link the exact
>>> trigger and not the RTC node.
>>
>> Nothing prevents you from using an index with the phandle (and I would
>> add a type in that case then). Having subnodes in the DT is not really a
>> good idea. The IP is the RTC, it just happens to have some outputs.
>> See what has been done for the PMC.
>>
>>
> 
> If it can be done either way, let's avoid adding to the rtc dt binding.
> 
> Jonathan
> 
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
