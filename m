Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4512CA523A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 10:54:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kjlOH5DZ8ZCBMFSze4EZFofSAOebkZUJewB9rX6abLA=; b=FzFbJvZ+V0gvvq
	EkcXw+0BY10mm9zAJTT+qHiniQXM6x7qf+v6eexcBiHsZfWVJACMpUenlSlSeVNUcvcJ9zJo7sIM9
	Qhr5TcklQM2tJPBoWKpRrJ4XbafaTgJb4W3HMTtzz4IxLZGkIc6jGsYqzcucPzTzzg9PKhtH6ymBs
	Znde4omyYIJ76nGJXmzT4ZahbPlsl6ycprNqeB8l5CWoxkdMAFvnd2O7OCnBmEow5sdKuKZd7t8wW
	0qfFyUelEWHmP5F5CwtSA8le7X27l9RmHLOc3JqsuklSr7LTVfgnUNizTq8EMPIsW0+4+X+1AyNLt
	P4eBRCXW19EQNHXwLPZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4i6X-0001sy-Jx; Mon, 02 Sep 2019 08:54:29 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4i6K-0001sD-31
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 08:54:19 +0000
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
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
IronPort-SDR: yPTd4nFNtCbQrkRPlEaLQRzDVDetN/j1uINpTJcr7CP5ISmZDtYnSJbUUyRDgCahRxUN+uSWeO
 4Jj47QPFfHCgrqsjq/k/b04Mr6nt4eSjoWPrWrY8MLHzQm0nRN8HjGaqad6WhZYv1KBN5vbMx3
 4+YMZuyEZPMLfPN831a9o3CwYC8a8HFbgUQ5iRbGllT8/nIM21k2QOIjkxl84LExNBcvO0dm5v
 FJaM7LvamlLX+3Ne8l5HJ/oXVJZXkvxNiWZGCvkMXBnOQCPZv2GCnMGc8Mfdm4NMl6pX5E92f5
 Jik=
X-IronPort-AV: E=Sophos;i="5.64,457,1559545200"; d="scan'208";a="45874833"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 02 Sep 2019 01:54:08 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 2 Sep 2019 01:54:07 -0700
Received: from NAM05-DM3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5 via Frontend
 Transport; Mon, 2 Sep 2019 01:54:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W+a31x4xuLlr+0bGywJ5x9zL8oAsTiNlTo7fbV7ZEONb71lFu1BwZtxpG54uprBc1sx3bBkLz6fr/zgHGQXkiyrS7RJPZlb9HL3gkdGogw2JNis4pX3BwMowDsQDz4rvHM8wk5ubprLiFAShh4y82Pn9b5whfLbyW9gCJi72mYCsSw4g1xUYbnnz31Q+hSglOdytmrD25aZxIZdceUV/yOT7DHhJYFiMues9I53F5+TgkVJTtVhDm2mMJPvZ8M0dNWDUhJ/hssuiLdwxJP61InwDMuAdREmvmITbACppctDIAhAAWwMfZxdwY//hSXEHTPOU65Q1R9pmrEldW2I98g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4plhd8t7AnmzJIX55wPihgt9ctRDcx8RRXh9KKZo4ao=;
 b=WXqe07a1Mpsa+0dyzGowZ5osRoACl1m5h4o0x24RaLs8FlWQQ+MXQPYwZot8Uz2b3BqVgpFwVDDk1AodGuhfOW5sgFZccGqruDlh3wRSEnqxP6jaxUETrWaU4FEFPB/UFWfmA7PbDQzILCTjak3x9jdhXn1F5839fWb3FvphWySduU3fZPc04Ktx5I11Aer/ARMuE1HaP6dU7OAQzNDsyB7b6lqCah1k6oyzF79j86k/sHJ35QvL+qHwnyADVyHJSy4gJZvesNYSGA7To2bDmqXJcq7caVqSSzjtc9UYw5K5pFFefd99j3V+Zhfh06yikv2b37vtCFQUEdx4FDiu1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4plhd8t7AnmzJIX55wPihgt9ctRDcx8RRXh9KKZo4ao=;
 b=P7hn6PuDO9Vnv/VOzuKqXQXIEiFmienQF92yAaFEf9jdFquQETJD4RyODbOjckxKeNGsNLSThiolb3Ndbd/pAFB64+lVEuuRMFn5fZPvdkm9UI9aR86iVgknQ5LqAFU5saa+6f8OeDPp6ASF/SKQeMJmUa05YxYfxrknbmVPfMk=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1930.namprd11.prod.outlook.com (10.175.85.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.20; Mon, 2 Sep 2019 08:54:06 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::c457:dc57:6e6f:f4f3]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::c457:dc57:6e6f:f4f3%10]) with mapi id 15.20.2220.022; Mon, 2 Sep 2019
 08:54:06 +0000
From: <Eugen.Hristev@microchip.com>
To: <wsa@the-dreams.de>
Subject: Re: [PATCH v3 5/9] i2c: at91: add support for digital filtering
Thread-Topic: [PATCH v3 5/9] i2c: at91: add support for digital filtering
Thread-Index: AQHVNlj4SZXsGDZbFke7Py4QXQ+nT6cVfjQAgAABUYCAAuouAA==
Date: Mon, 2 Sep 2019 08:54:06 +0000
Message-ID: <d461426b-50ac-bf6c-79e0-71e17a63400e@microchip.com>
References: <1562678049-17581-1-git-send-email-eugen.hristev@microchip.com>
 <1562678049-17581-6-git-send-email-eugen.hristev@microchip.com>
 <20190831121308.GB1032@ninjato> <20190831121751.GC1032@ninjato>
In-Reply-To: <20190831121751.GC1032@ninjato>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1P189CA0036.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:802:2a::49) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-ms-exchange-messagesentrepresentingtype: 1
x-tagtoolbar-keys: D20190902114832939
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: daf65498-9809-45ba-d170-08d72f831c77
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DM5PR11MB1930; 
x-ms-traffictypediagnostic: DM5PR11MB1930:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB19309F9F45FF2F21FC18A730E8BE0@DM5PR11MB1930.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 01480965DA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(396003)(346002)(366004)(39860400002)(376002)(199004)(189003)(86362001)(14454004)(31686004)(478600001)(99286004)(66476007)(66556008)(64756008)(66446008)(476003)(53936002)(52116002)(102836004)(81156014)(81166006)(6486002)(966005)(31696002)(6306002)(25786009)(66946007)(76176011)(6916009)(7416002)(2906002)(8676002)(53546011)(6512007)(486006)(6436002)(446003)(305945005)(7736002)(386003)(4326008)(8936002)(2616005)(11346002)(6506007)(229853002)(256004)(6246003)(54906003)(316002)(66066001)(5660300002)(186003)(36756003)(6116002)(71190400001)(71200400001)(3846002)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1930;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: MrfrATZwObVjzjVRwgPkkOObfOPDyrLMNVptsA8ejW3NksHDGi9LFhgheFMsy9RG3tDK0iVrK4dqMHfPdSrovBMAz150jJt5eTmbIRqhAvMLdYA6O3gc9OdIHbwLdEOK5P/6ncu7OKjFK/3WPhs2B0jWU5CiHvzM2YolLjxx/oNlERJFS5VUyDBsFTnNZ8NNi7I9bG3BoECaby+6FrbxHUyjvLo2JpyD2EHx/iFcfuNS2m89+O7yXO7m1ivQTSORjzkN5Y9OQB5JmpqZd1DQ0DLRdL+UsaAkmwm3i6tRgircBIOfrzoDRMyeTehtrQuv+sONU0f0jxsnLZSfOIRIk3zNqF7HWYV/pjOi+7fP+wUT5hXwttxMF8CC39L7EIljPVUltDr+ZVxNtr9SOe0/YSULY3kzHOD7nmE0xNShRQc=
Content-ID: <6F1F9E0097244B4784028B912D065ADD@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: daf65498-9809-45ba-d170-08d72f831c77
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Sep 2019 08:54:06.3559 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eN90fKVx81vqltFaisoCbiMue76A4Xq4yaVnG/165Pn4/h6bwZqWuUTQKomfKO/sk+bYo27Owgcac19gMwp8gctl/xE0ENzRMnKH0FQROGs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1930
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_015416_412817_FBED7800 
X-CRM114-Status: UNSURE (   8.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 alexandre.belloni@bootlin.com, linux-kernel@vger.kernel.org,
 pierre-yves.mordret@st.com, Ludovic.Desroches@microchip.com,
 robh+dt@kernel.org, linux-i2c@vger.kernel.org, peda@axentia.se,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 31.08.2019 15:17, Wolfram Sang wrote:
> 
>>> +	dev->enable_dig_filt = of_property_read_bool(pdev->dev.of_node,
>>> +						     "i2c-dig-filter");
>>> +
>>
>> What do you think of the idea to introduce 'flags' to struct i2c_timings
>> and parse the bindings in the core, too? Then you'd have sth like:
>>
>> 	if (t->flags & I2C_TIMINGS_ANALOG_FILTER)
>>
>> Would that be useful for you?
> 
> Forgot to say, we can also implement this incrementally to make sure
> your patches land in 5.4 in case you are currently busy with sth else.
> 

Hi Wolfram,

Your idea looks good but I would prefer to have it as a separate 
enhancement patch, after this series gets in.
As things are now, this series/patches do just the filtering part. We 
can then move all the optional 'flags' as another change.
So yes, we can do this incrementally.

Thanks !
Eugen

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
