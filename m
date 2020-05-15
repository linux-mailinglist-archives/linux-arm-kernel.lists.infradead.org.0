Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A75E11D54C1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 17:33:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jP7Ttu24UkyR0+ztyfN4Oe+1+R5lbT5h4o2UZPVNvVg=; b=hTN28ieMyNFiNv
	SxPesmeL2z7kOe7mdWxLeGoBfB6Pco3JaeezBblUMclU7lgGoj3SAqUGMetCSBobOLjrUBYX50j0M
	iMhaWrX/iijm5W8NRm7AjkYKEC9ogjwtKbPKpq5jHua9muPdsxXVArfdIW0Gv+loCdVFIl0fhQgfP
	mKCYZ/OZE/ntISBLcDbeqpTibKGm0Lv5ZzMt3dSpQKWZi1bmBa1caIIrb0h78gB9HJFQlkW8S/jMy
	7Z/IyscBwKPN53AMQ5Ffz+rXB0WAtraLeDlu6spfHkpyebxsRMqeuitOwA80RtVrrNzxlviz9CBSF
	r+vkIb71nut7HlCiCsig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZcKR-0003Fw-DL; Fri, 15 May 2020 15:32:51 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZcKF-0003Eo-9S
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 15:32:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589556758; x=1621092758;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=3UGkU9INCpCs4uQqebf9qz73OWfkApNrjOXNQedkGro=;
 b=hsXzhE1Op5GzRc6kMgZ+2nNjbGSiFeRftO83Zmeiou3iWumbKgUDNeRz
 jGJuYYnkA3e2FYWcKbqPwsf3rlFRzeyzuYkrOMdX6Bmo7J6Y+mpvHsl3W
 XXWqBLrjviaggpFy9XmZfzPL2g38hv8pHGZ/DeC7tBUgMynq39G8iTvXv
 nErZUK/0SxreKysClmQLHAXjbBibnRwftC7zD1E2EW93vpJufptqcQrXi
 DgRWuhWEPCwhIn7AEmebmRSOfYPumkS7oljSPZSA8uy+osADRa76GGHOc
 3r23JoOdOq8kM3a1BS4aBxKK9haf5t8jqfFa87YEumtaTy8Z5YVoQaw32 w==;
IronPort-SDR: 6OABlxZLjQvp90cmdYovqmAjXm+KhmVTaZY8cwEO01ojzylrJXp9wKYklwm4x5xb6LO3pgFGBW
 HWqyZI/wfycrWGpSyCSL/CkFF4AuNjx+1Dt+kU1xdCBGnd/xp0B9e+Bc0peFEtEJorhgDL5IKJ
 BVXfqzMYKNZwednIMGouVzl0HXgf75avFdbNgPXe6GmTCM0M5ja17G8i7OuKGS96d9yKcs0s9y
 xAGH5KkHkmZ5mwdK5I/KiVzwc5WRj2wKaczxK2gKy4N+IhEaFQCkGnS1PEJB+5kizbAa51aYKY
 dbA=
X-IronPort-AV: E=Sophos;i="5.73,395,1583218800"; d="scan'208";a="79796117"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 15 May 2020 08:32:36 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 15 May 2020 08:32:36 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 15 May 2020 08:32:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fxbYqqXbdOMNiu0eWWRgJtTBTLdk1b89MIELycwrEOw6zbEhfvZc+etBOIdTSN+Cm+qCOsmvVjLIXQtFwFb2tzm81Ojq7H0a8yN+g3lpNGiGb/z7s5XDOU+YUX0rgvFvriDVTWy7EeQB7r/7cm5TNpjHz4e1q0gHGuP/7Eh+ZaOSLWlDiBAV3eo2ZGhUPT//+JcrXL1tIffAYn0onGenAuUokR6tnplaOJKIbLMKr5OgLHEUjtDTNoDjOOA/HsG0ccbWiABKRcpL7yqKjqRNOMTyoLIiQ41Xh099i+PbdJFemf11Yl7wnaYCYMVlUNruDeWtOdvoCEaYPhbFzuQMdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3UGkU9INCpCs4uQqebf9qz73OWfkApNrjOXNQedkGro=;
 b=W4IDyjkxflUOfW1rppssJuBrYeemlH7PGaKUV2VlYZP0wGxvi4Psv+xweNM6Yfb061JAKtCjgSplq9EMdax4n16chjJvyOcTctP5wqeB4GR5Oq7KBFVs13kemWet6x7pLmw+J1168rlVp8HhIvdfPRFfJJZbrZHVeyAfPOpjgrIK3t+hyO19QI6JaKTlhK0SQQ1iZWGLfw9U2rbdi9otp3Pr4FJYVlG6TQXxsQyscJbHWzIAYD5/SddXNQudQfTLpLgHg1szqqgxnv5wVzpmCrCA2oY7MMPmRf6mr0Avannh+R4+Vi112BNGjZpXctWnLgJEqXIvT7DW18Em+Tw0Ug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3UGkU9INCpCs4uQqebf9qz73OWfkApNrjOXNQedkGro=;
 b=s/M64/S2YXNmDZKCjNJu2xw7pB0FVEXkLCLCrVbaugkHxSjVUHYeenBXIwJoVdphyd6R3yS25F8x9zMMtPboqOYvREaEKEoTnsbowvDYm1ZMo2Th86MY7e1ZeO/PiqJZPmByA9g3P1Dqm8l078xBc7b9gtK2wZVaRiTzIk69tRE=
Received: from DM6PR11MB3082.namprd11.prod.outlook.com (20.177.218.211) by
 DM6PR11MB2937.namprd11.prod.outlook.com (20.177.216.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3000.20; Fri, 15 May 2020 15:32:34 +0000
Received: from DM6PR11MB3082.namprd11.prod.outlook.com
 ([fe80::b1e1:1148:5130:3e7]) by DM6PR11MB3082.namprd11.prod.outlook.com
 ([fe80::b1e1:1148:5130:3e7%7]) with mapi id 15.20.2979.033; Fri, 15 May 2020
 15:32:34 +0000
From: <Cristian.Birsan@microchip.com>
To: <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH v2 0/7] usb: gadget: udc: atmel: add usb device support
 for SAM9x60 SoC
Thread-Topic: [PATCH v2 0/7] usb: gadget: udc: atmel: add usb device support
 for SAM9x60 SoC
Thread-Index: AQHWKqpORdPADmPuukOtoWg9fqBzC6ipPl4AgAAIgwA=
Date: Fri, 15 May 2020 15:32:34 +0000
Message-ID: <81193747-fbdb-4cab-40ad-6cf8af039d75@microchip.com>
References: <20200515111631.31210-1-cristian.birsan@microchip.com>
 <20200515150228.GW34497@piout.net>
In-Reply-To: <20200515150228.GW34497@piout.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
authentication-results: bootlin.com; dkim=none (message not signed)
 header.d=none;bootlin.com; dmarc=none action=none header.from=microchip.com;
x-originating-ip: [2a02:2f01:5104:1a00:68a2:db0:4185:6bd8]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bf5ba87d-44f7-4731-fe70-08d7f8e530da
x-ms-traffictypediagnostic: DM6PR11MB2937:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB2937139FED33CC42E44831CCEFBD0@DM6PR11MB2937.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 04041A2886
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sjCcD5wDm8B3LOfylKtzGpOlUSQ2ppwOi8w6ePOe/Ok2WrDxrXIxwBj7nvlL2Nh5mA3IWBdoC+T0KeCWmTiKEuqyD0d24eDfNXU7+1rj7HecI23JwC8KWTrob2RRxxwgZVqgTYUVqBuxp0Gs/Rw33q4F1mqsO0XUezO/h1eimS/yV+bwvUbXbbSNGquUuVYrVjMN8yH4MkpU2dwEatS0w5KOGd+0qoemPHbdOn6SmrdsBFnSDtLshf6lCRUd2Dg9A7b2LIuf6fdRpNgL2msKVNHNIIZUKBp410JJX5xz0W6Y18ascPS4EA7jFidIuhO9l2we5HqPimDKbY4hYEItJh9Q+u7OZ7Qx5YNkjHRIbiZ8S7ba1UIOLSN2RZTCyFVK2X049Kn/BkjHK4Eljjc8wbezsE83GWZcio16i15VW6eZsroICk9OgzS01OLYstRM3TwAjLd2qPQguUyIXqcv6ERc7zaWasqiUOvLcTF7X5IcZ2zVpjnsYY0lEZFUW/MwrjP7wL9WFzW6UYthhSfFl0LgZh5PTcKAZOY4/AAyGSe7ECEq2t8CONX272cwj4bq
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3082.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(346002)(376002)(366004)(136003)(39860400002)(396003)(6506007)(53546011)(316002)(186003)(5660300002)(6486002)(54906003)(6916009)(2616005)(71200400001)(36756003)(66476007)(8936002)(6512007)(478600001)(966005)(2906002)(66446008)(4326008)(64756008)(86362001)(91956017)(31696002)(8676002)(31686004)(66946007)(66556008)(76116006)(43740500002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: MTdXHAYCg9WXm8sDXp4wuYRo1bRcqUCVkq1jnNtViHCxLVsJDXBxPohmT82lEU4RsNQHK3/9MlybUhLDDQRoIbbZSGpEe4sPRmAGE8VSViSrMypju5vzg8vu3G0e7PBbx8ZmCCg0yjIkUHB7zcEdgN/v4lzTOQQje+Nq72ECQVYAs9alNJGz39puJ+J794R9ML/1cNB2kViI9RyueeNIgYEukPtqInAj1mwXpmtpHo6/5BkUQZSNTsAPY+jq0qjIFBOxJe+rqVN08+Dcw+aAKJaInluSJlF6bYdAoTonynZmKMwbGJCeKSFCBeXWInB3MQ76pAV3r7IMABiXFWYM6wDu8BvVEvASoAN5F3RDumFvAghRqI5OlwjMA2b/8+s08tzx8Vf2nrkro5A1TaJ6nAuBPtjlv3vWUXbXpL+DUW99FyMGvr1VdQBa8sC3Oluwl9Te1fg4yW9YciGHFVOJ61FHn1gvRPcj2WdcjZTX/CJVVmRwBV2gNcX/zPPoTu7j7QHlg1wU6sMwVolYhhnJ1uDMRPY4FnZ157g1jF+njX51dMWV4xqXevIcFyYGcX5R
Content-ID: <6C5EB83A57026C47B77A41B8570FA37E@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: bf5ba87d-44f7-4731-fe70-08d7f8e530da
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 May 2020 15:32:34.6162 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TFilvHvAIAKbkgL2/pXGFrjvRAwruHKajJjFLWzyltzeR/bucCBzO3JQITFCIXbyNUgaiQPoOwru5q5PSEafg3A64NnqRM90axP8k3AI4N0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2937
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_083239_530838_31E4B5B9 
X-CRM114-Status: GOOD (  17.11  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, balbi@kernel.org, devicetree@vger.kernel.org,
 gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Ludovic.Desroches@microchip.com,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 5/15/20 6:02 PM, Alexandre Belloni wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> Hi,
> 
> On 15/05/2020 14:16:24+0300, cristian.birsan@microchip.com wrote:
>> From: Cristian Birsan <cristian.birsan@microchip.com>
>>
>> This patch set adds usb device support for SAM9x60 SoC.
>> The DPRAM memory for the USB High Speed Device Port (UDPHS) hardware
>> block was increased and the allocation method is changed. This patch
>> series simplifies the endpoint allocation scheme to acomodate this SoC
>> and the old ones.
>>
>> Changes in v2:
>> - drop the patch that adds reference to pmc for sam9x60
>> - use dt-bindings: usb prefix
>> - enable usb device in device tree
>>
>> Claudiu Beznea (1):
>>   usb: gadget: udc: atmel: use of_find_matching_node_and_match
>>
>> Cristian Birsan (6):
>>   dt-bindings: usb: atmel: Update DT bindings documentation for sam9x60
>>   usb: gadget: udc: atmel: simplify endpoint allocation
>>   usb: gadget: udc: atmel: use 1 bank endpoints for control transfers
>>   usb: gadget: udc: atmel: rename errata into caps
>>   usb: gadget: udc: atmel: update endpoint allocation for sam9x60
>>   ARM: dts: at91: sam9x60ek: enable usb device
> 
> This should probably be rebased on top of
> https://lore.kernel.org/linux-arm-kernel/20200507155651.1094142-1-gregory.clement@bootlin.com/
> so we avoid having to define the endpoints in the device tree in the
> first place.

I know the patch series and I Ack-ed it some time ago. On the other hand, it was not applied yet,
so to be consistent I created this series based on what is already available on usb-next.
Depending on which one gets applied first, the other will need to rebase. I have no problem with that.
The end goal is to have both of them.

Cristian

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
