Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DECFC4CBE9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 12:31:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=45+Fw8/2clq1UJD73BhYu8TmhrNV7Bk0TPxyFAxD/28=; b=kLrVj+/BeJuEBp
	fC5qoxSCQ8biZh6uKUK65LR0vPo0hR+lRLeITLwEMAEi8EjEr9FxM7H2NbE4OMV1EGca9ebbokqFI
	7/A3kpC/+7Qfg0mZ/s1PPiHjG/tRLBASHKIsZ1oxOxFXVNX4KHvLIhxJHE2sFcAWsyEeg/nlTS2Fx
	q9IdZmItIxCZluHW2UU6c5L6uQAMYRmdKB/vMWfeAF64Kfp+hGy151lX/zs4K4ORN2Tx5jVh9y1uy
	2oa6l4DRU6l1FnlSpeHl++GTFvyqsc6brpagFnoIEDOGLqPYPD72kgSZwvOsyq5Gzke/RrIR8lWZY
	trAZ/ERLkUNR+7I5uJIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hduLQ-0007ZH-Ml; Thu, 20 Jun 2019 10:31:04 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hduLC-0007YL-6c
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 10:30:53 +0000
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
X-IronPort-AV: E=Sophos;i="5.63,396,1557212400"; d="scan'208";a="38184400"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 20 Jun 2019 03:30:47 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.87.71) by
 chn-vm-ex03.mchp-main.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 20 Jun 2019 03:30:46 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5 via Frontend
 Transport; Thu, 20 Jun 2019 03:30:46 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4qvRuc1G5hShiYb2Oqdiz9ZXVwODihz91oKkv2BfHxE=;
 b=Txo1THbTvYmlu388Wv21+6+KGuFADaZ8CF3XiMcWEnihcaV972GEUC/aA5K8pwouN8YqgWOlre8q+zGtXHj+3hTVttPOQSMBhCr0ILKpkUOtZtbgc/hjvhd918S4s3tCEd1n92hT2pjDAXMj0uNcSX8Vsuh3dX35Q/L2xvB6JlI=
Received: from MWHPR11MB1549.namprd11.prod.outlook.com (10.172.54.17) by
 MWHPR11MB1661.namprd11.prod.outlook.com (10.172.53.144) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.11; Thu, 20 Jun 2019 10:30:43 +0000
Received: from MWHPR11MB1549.namprd11.prod.outlook.com
 ([fe80::316b:7774:8db6:30ec]) by MWHPR11MB1549.namprd11.prod.outlook.com
 ([fe80::316b:7774:8db6:30ec%7]) with mapi id 15.20.1987.014; Thu, 20 Jun 2019
 10:30:43 +0000
From: <Claudiu.Beznea@microchip.com>
To: <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH 0/7] clk: at91: sckc: improve error path
Thread-Topic: [PATCH 0/7] clk: at91: sckc: improve error path
Thread-Index: AQHVIf3bUSmswP0Le0qxy3Tkv6UCZA==
Date: Thu, 20 Jun 2019 10:30:42 +0000
Message-ID: <929ac20b-db1d-3f7a-b37c-0dfb253156d5@microchip.com>
References: <1560440205-4604-1-git-send-email-claudiu.beznea@microchip.com>
 <20190618095521.GE23549@piout.net>
In-Reply-To: <20190618095521.GE23549@piout.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR0501CA0005.eurprd05.prod.outlook.com
 (2603:10a6:800:92::15) To MWHPR11MB1549.namprd11.prod.outlook.com
 (2603:10b6:301:c::17)
x-ms-exchange-messagesentrepresentingtype: 1
x-tagtoolbar-keys: D20190620133036236
x-originating-ip: [94.177.32.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d59898d6-adc2-4646-bd4a-08d6f56a58af
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:MWHPR11MB1661; 
x-ms-traffictypediagnostic: MWHPR11MB1661:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <MWHPR11MB166148147E11E57E279C155687E40@MWHPR11MB1661.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0074BBE012
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(396003)(136003)(39860400002)(366004)(346002)(189003)(199004)(52314003)(14454004)(6436002)(76176011)(6916009)(25786009)(53546011)(99286004)(31696002)(66066001)(52116002)(2616005)(6506007)(68736007)(229853002)(476003)(5660300002)(11346002)(8676002)(316002)(446003)(71190400001)(8936002)(26005)(386003)(6246003)(53936002)(66476007)(54906003)(66556008)(81166006)(2906002)(486006)(72206003)(81156014)(71200400001)(7736002)(186003)(86362001)(305945005)(4326008)(73956011)(66446008)(6486002)(102836004)(6116002)(256004)(36756003)(6306002)(6512007)(3846002)(966005)(478600001)(64756008)(31686004)(66946007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR11MB1661;
 H:MWHPR11MB1549.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: XN6NHzB3DN/76KMen2BxeJqTLMvuS9tyz9BkHL2Om70dKZkqDC5/XUexq1K4G0A9POIVg5n5Ajr7eBzFCU5haeooGkggApEtdUQBNgSdrqcWxgYQoSMihXmzII4LBQGpERHn9y96o2FrOgrJJBj/EkL4Z0AKOYa1QHGYgmjZSG8A9hlvLXXijHGtrX3u/c1UNgtcx9g1iL+FEElZua0phf4qEvSOOBur/LqVtpgGi6mNQDm3cBGohaDdaYEP0EWVV9Ys9HAAJqD5jBOhu3z8CH8Q0juBCf7wouikNda+h/yYxHsC2OKni4cWPAwwqQI7aDVOWPAILtzGYx+Sm/dYrKYzZWiR7GOzz+oEbP4nHo+cyaNdnZshW1s8clw1upJX9aag4PRkzFTMrUKHvsvvkdwcgwxBd+lALOErtA5QU9Q=
Content-ID: <B69A89804D6A0240AB1264BA6322EE17@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: d59898d6-adc2-4646-bd4a-08d6f56a58af
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jun 2019 10:30:42.5186 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: claudiu.beznea@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1661
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_033050_348587_E0B44F95 
X-CRM114-Status: GOOD (  13.62  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
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
Cc: sboyd@kernel.org, mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 claudiu.beznea@gmail.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 18.06.2019 12:55, Alexandre Belloni wrote:
> On 13/06/2019 15:37:06+0000, Claudiu.Beznea@microchip.com wrote:
>> From: Claudiu Beznea <claudiu.beznea@microchip.com>
>>
>> Hi,
>>
>> This series tries to improve error path for slow clock registrations
>> by adding functions to free resources and using them on failures.
>>
> 
> Does the platform even boot when the slow clock is not available? 
> 
> The TCB clocksource would fail at:
> 
>         tc.slow_clk = of_clk_get_by_name(node->parent, "slow_clk");
>         if (IS_ERR(tc.slow_clk))
>                 return PTR_ERR(tc.slow_clk);
> 

In case of using TC as clocksource, yes, the platform wouldn't boot if slow
clock is not available, because, anyway the TC needs it. PIT may work
without it (if slow clock is not used to drive the PIT).

For sure there are other IPs (which may be or are driven by slow clock)
which may not work if slow clock is driven them.

Anyway, please let me know if you feel this series has no meaning.

Thank you,
Claudiu Beznea

> 
>> It is created on top of patch series at [1].
>>
>> Thank you,
>> Claudiu Beznea
>>
>> [1] https://lore.kernel.org/lkml/1558433454-27971-1-git-send-email-claudiu.beznea@microchip.com/
>>
>> Claudiu Beznea (7):
>>   clk: at91: sckc: add support to free slow oscillator
>>   clk: at91: sckc: add support to free slow rc oscillator
>>   clk: at91: sckc: add support to free slow clock osclillator
>>   clk: at91: sckc: improve error path for sam9x5 sck register
>>   clk: at91: sckc: remove unnecessary line
>>   clk: at91: sckc: improve error path for sama5d4 sck registration
>>   clk: at91: sckc: use dedicated functions to unregister clock
>>
>>  drivers/clk/at91/sckc.c | 122 ++++++++++++++++++++++++++++++++++--------------
>>  1 file changed, 86 insertions(+), 36 deletions(-)
>>
>> -- 
>> 2.7.4
>>
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
