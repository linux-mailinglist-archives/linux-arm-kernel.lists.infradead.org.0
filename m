Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 677C2124E64
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 17:52:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J1IHrWPFtmUkyzj13Xcu9049hY89Ko1G8CK4Xj7r3FQ=; b=I9GujkAtZRwfnF
	H6r/1Zba/kqoblOGWfhgHkHSefHYLbWSrJQTo8ZxEDIT0KED+PPdG9Cm0kuB5Nnmav6lgqny4QmAm
	7s7j824XSUruwYIcxO0tbTe2vse3NNdxKKAy8c0n6ASpJINATQ9s3j7MV0+HS+lJtNt0Uq99XcN5H
	UHypn2a9tmCHLSMvZ1bgnf1rRMMSwtpgWY95bBbTQMlXqPEzyfuokTyq0Tjvu3dDVnZeLfZp3l9EF
	mm6LNwkrhO4MJamh6C8EG6VNOFOnzYAhGwALLJYoZCa9ktP4pkXq8kJ3FkYKMUCFydQg8qu1GdI9z
	u7M6n2S6ZtW/xbBk5MWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihcYx-0002ap-AM; Wed, 18 Dec 2019 16:52:39 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihcYk-0002a6-M7
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 16:52:28 +0000
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Eugen.Hristev@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: B3hJCgvXUuiOmBQJrZj+OXsB6UjUQJJulMiWAQ9kwRMs77edPNRfiJVy6LpoQKHnXT+0Cmy1xj
 uMzvexOaIL4rmWlrDa2BW8FuG4bZmhb4QV7rE/ZMFsKPZLNUl52g5Y+fqoPlecwWoPIdjkE64E
 sD6QVX7LnlJqjc/SBXUvApTcN25IZSP0opzebUQsjke0rQzNyUsSUKDBWpkiuJBaXV+TBIvg8O
 mfC8he5gLBOU4UP1emyGMiO43DQTo+qXMVEdpJABuPYfBgIzIU2R2kx8PZcpVa+n/RGgm0gqZ3
 Foc=
X-IronPort-AV: E=Sophos;i="5.69,330,1571727600"; d="scan'208";a="59432211"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 18 Dec 2019 09:52:26 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 18 Dec 2019 09:52:25 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 18 Dec 2019 09:52:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j9mBOSR1ONboEKsvP8ln/CghaNIC/4l+Wz44ELNbRQlGRuGfBWBc8bEmJFScemhOAKPR0PneRlyU8c1dhJh39bmmFVw87d8FXiZ40vcB06FWjN5pJQipDj/5B2q8K6K1ZaMrP2jcHXSFCQK4XKLJb5HZeb/5uBq6kJav9XILXPys//jD/QkAbZFDw+k1roCDu5fNnN0g1v8Ln2E4B5TjWe+XL0qyDIQCV7OrXiT5MuAXMyEyh6DoJq24sjSOVOTxJb9mKPK+XPdzkQKqJelzSvnuQHCmeNcoUbxER9aUy79XxSIK973+JXqkGhbP+KfNqP+9TTWz/b1FE0b2TPNd+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kJR29hcIIYXyopRtRiHRTLOXdfLQWFtEqrG+/1MU+6I=;
 b=drAK7sj6mi3j5yu41J+Z3b+ZSY/wS0lAe3gwQ5zvt4IYTX1MiLg6AmHGK0q2hRN0076QuvuWoGFM7Qgd5WBtqyysBOZgKHiTM6nF8qM3npAm7XnQxQt/aRdoxUtrZZOaUMz2i8+loOplrF5wgRSA9VYwAKShp/5mSAiHazp1YA62ypOBX0TL5uBQbU1/dEREKbomt0mdRjwcetzwv34ptsJ1Oshl/ZutNJc9VE8SppB3DgskOWhFgXnMIRxWzqTMVZTlb+Q3tZOsjNoqytF8W6E2l8VMz/grP+c1lBqNwLqpPCpErH7TgwPMVkAzHjQMQzgUyE0r2M6bI6G9095XQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kJR29hcIIYXyopRtRiHRTLOXdfLQWFtEqrG+/1MU+6I=;
 b=qAiTZ+McjCtEfYXtl8OY2tozQf5V6WoK8RmEAOLbO2TKSgJBlmNFEK4pKjaF7R7WQGYLTbrKVFEWSQ4BRAAMqcAvCyfFXrWErXjHrar7nKVjkqfkQUWCcGTxCtTe/cvFTVqHp+QGBlwB0m2iwwoA1xxm4Wx5ZkaGPn1EELxPOWM=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1643.namprd11.prod.outlook.com (10.172.37.144) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.15; Wed, 18 Dec 2019 16:52:22 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::9039:e0e8:9032:20c1]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::9039:e0e8:9032:20c1%12]) with mapi id 15.20.2559.012; Wed, 18 Dec
 2019 16:52:21 +0000
From: <Eugen.Hristev@microchip.com>
To: <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH 04/10] rtc: at91rm9200: use of_platform_populate as return
 value
Thread-Topic: [PATCH 04/10] rtc: at91rm9200: use of_platform_populate as
 return value
Thread-Index: AQHVtb+OEQqavda3i02bVS64GBIv7afAGSQAgAACToA=
Date: Wed, 18 Dec 2019 16:52:21 +0000
Message-ID: <04264cb0-61a9-aba3-82ad-e7d12fd8441e@microchip.com>
References: <1576686157-11939-1-git-send-email-eugen.hristev@microchip.com>
 <1576686157-11939-5-git-send-email-eugen.hristev@microchip.com>
 <20191218164348.GN695889@piout.net>
In-Reply-To: <20191218164348.GN695889@piout.net>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 888525af-e4a0-41ec-6dbd-08d783daa6b4
x-ms-traffictypediagnostic: DM5PR11MB1643:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB1643148E953C7401B75BB3A9E8530@DM5PR11MB1643.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0255DF69B9
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(39860400002)(396003)(366004)(136003)(199004)(189003)(2616005)(54906003)(478600001)(2906002)(966005)(86362001)(31686004)(81156014)(8676002)(6486002)(6916009)(36756003)(107886003)(316002)(186003)(5660300002)(26005)(53546011)(8936002)(6512007)(66476007)(66556008)(64756008)(66446008)(4326008)(66946007)(71200400001)(6506007)(31696002)(81166006)(76116006)(91956017);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1643;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bO40mwsv36liD/cUs1SJYB3J0JuoRwzcU2frq1edAgoqdMBLfA++roy/oyRs+dqv5XwNGE89YoO66dLc6pUprB2TZL+jWCCAaqR/apoE6nGv3DHZ6NB25EbcqVMbdMaVtaKsU23/68epjIiQUdOSPKm9YpZo27RPguzMShG+Y+vTj73DMrUGjJZd4509b3TfxdQJgROvIRkMvAowd2XKedeTAgHFU8xFwcPOtHwQ7tHG16LPFmrQfw95RJTV7/yB54KUsobY53jx9tbze+1sN4wjFDG+W3iIOzVBnLilseHw9SJ5meH0syTT8wYNB1sgg68uMgUU2DzbKSQMJ1yBFUgwKZ0bbvr1cK808EdP64kV+T6x+zNTp7eEhdXNWxPfQojSClIKfX6CfPIkWmggNM7jBmP8IkB3PAd09VQtZFVs8a8VRy+3wtxXlDCqKUzrmUi4//NNrMPhITMvYzAC0brgyeiL6cQ899Z+sX24oNI=
Content-ID: <7D8225504AE3BB4791663D834708AA64@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 888525af-e4a0-41ec-6dbd-08d783daa6b4
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2019 16:52:21.7666 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9ku1Qd/oNWsLDWEDVojwilQpchgHuOPj2Lzgpsyay9QmiwEL/oXZrSRdwU6I1BekKGsht0H7HjwaF/EYkZ7gB4RTmUIOQiAMJitH5C/fhfg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1643
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_085226_731984_30BA20D6 
X-CRM114-Status: GOOD (  16.03  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
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
 linux-arm-kernel@lists.infradead.org, jic23@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 18.12.2019 18:43, Alexandre Belloni wrote:

> Hi,
> 
> On 18/12/2019 16:24:00+0000, Eugen.Hristev@microchip.com wrote:
>> From: Eugen Hristev <eugen.hristev@microchip.com>
>>
>> This allows the RTC node to have child nodes in DT.
>> This allows subnodes to be probed.
>>
>> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
>> ---
>>   drivers/rtc/rtc-at91rm9200.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/rtc/rtc-at91rm9200.c b/drivers/rtc/rtc-at91rm9200.c
>> index 3b833e0..f1b5b3d 100644
>> --- a/drivers/rtc/rtc-at91rm9200.c
>> +++ b/drivers/rtc/rtc-at91rm9200.c
>> @@ -421,7 +421,7 @@ static int __init at91_rtc_probe(struct platform_device *pdev)
>>        at91_rtc_write_ier(AT91_RTC_SECEV);
>>
>>        dev_info(&pdev->dev, "AT91 Real Time Clock driver.\n");
>> -     return 0;
>> +     return of_platform_populate(pdev->dev.of_node, NULL, NULL, &pdev->dev);
>>
> 
> You can avoid the DT binding change and DT parsing by using
> platform_add_device here. I don't think there is any point describing
> the trigger as a child node (a watchdog functionality wouldn't be
> described for example).
> 

Hi,

It's needed because the ADC needs a link to the trigger device. This is 
a hardware link inside the SoC, so I thought the best way is to describe 
this hardware is in the Device Tree.
Otherwise the ADC node is unaware of the RTC triggering possibility.
If we just assign the RTC trigger device to the ADC through the sysfs, 
the ADC cannot distinguish between the RTC trigger and other various 
triggers which can be attached.

> --
> Alexandre Belloni, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
