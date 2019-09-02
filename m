Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D27F9A58F4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 16:15:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2P1EXPMkvI21WjTujwLMUkfbtka4nNapvt7OqvhHuQU=; b=ryVHA5hK/d5Cqo
	xaAxIoAZsf5Aw416TeSEqwLM6x7Wx87qie5Ylt0fosbsYzzQeky223ovgVt+Eg22unThxwJD9y610
	6dQ8vYO/c8zr3rTlQPgxYfzqur+vidb8qAI7Q2qfJNBk+oqEJVkJkMMkT1yEOnTlDEsIE2qZ8UdsC
	U+2+Nyd5ZvDq7Q/5vnG/SanUKjTQt8Fi7WfW5pN0I9U0xeNtDhu6lgF+cStLM7fmcH9+pFYCZXh2n
	plynxFPUz6YKsCCaq3fkhiSFBqVf5Q1V72/DRwLckPjphspeT7tTxXkz1eOfHbGKqOFkNdNqJAjok
	bu85V+n0WLz4uOeB85kA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4n7C-0004I9-2h; Mon, 02 Sep 2019 14:15:30 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4n71-0004HC-W0
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 14:15:21 +0000
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Eugen.Hristev@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: wBMextQzhoTXQaj4j8sKJYMIkISTNixH4QYgsYgoUkQsfVyyC6X+fi2dc4o5QCTnquAjeXAXiW
 qCGIVAfR0HJ1bpr9pnxpf2wLXNOOlbBQh0iZYUbvdWDipr+X5UEXVk+/klWGKJ5cZkaSHWh40b
 1QRHMh9K+jrEKGpRHc99yCztJRyxDR5W+RsP7hMkzonN8eeQT8iM4xk65QTDAVFVyYgMQmfwWH
 vAdgrnNLpbcY5e6PnJ0ofMmLRK8W3O5dN3ixfCYsQydrVyz4CejmTtKYdLeDZ2LjqizbamKBVx
 5vI=
X-IronPort-AV: E=Sophos;i="5.64,459,1559545200"; d="scan'208";a="47496630"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 02 Sep 2019 07:15:16 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 2 Sep 2019 07:15:15 -0700
Received: from NAM03-DM3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Mon, 2 Sep 2019 07:15:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I9fpHh+WgAlmQmSFWx9nkeBjxPYDe0CLuC7xxJ2bkBRAEpdzgwHAPiaF0WlL8qPZw4ngVge1OMKQRcsFebhxOQzmx8kUOamDKVjd0SztVTLN3HZmInypo3yAeQfV8d/0BIqmR+ueyyTHwcB89wI1W/aG1caRIGZ9lwi8zuzipkr7ROg5XWzHNeGe6owzhcNw6Na/skU8sqhD4N2bZfuvcPw5+9jI6jI7qT+8cKA3tRHDot3LQh1h4mZVbTWAhswmRb7gWeglcwMae2DoK1D64Mjpiqk2LirKQ+QvR8cMHuXNoQ+o+HKQVutQ+C1cPz4xemQtwytoq6w/HDA6gfY3zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gJk+ykZQp1g9XN8+ufvhyyihfLA51y34YLzRHtS918g=;
 b=DbaWicZc3M5FGBcTffVOhXMrreuJ/YbRCf85a1me4PyryqoN/9RmnC3sOdcIAxOGopHfuQNaW4AEQtHdQdcB0r/GA1Bo8PO3M73d8wGesEhMbEq36RBukz/nQI8ldLFqvFN4X8QvwiHk9oCNMdasJXy40UVWrgnjCv0l7XQrDkwz73WxmMilab9kNk+tVMqlSCDszvabh1J7yxHSqByQBm+ZRUhxPjIt+i9sPOCySqQfPAhyjNTyzxYtyKBV1t/zkPA7T2HrGA9VvQY5xK9P7hWNVPDPx7lF3b9BTVkhrs5YEgbi8wg0egfuTjehB1TjBqTCrUGljj+66SkMYtNcsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gJk+ykZQp1g9XN8+ufvhyyihfLA51y34YLzRHtS918g=;
 b=q0o8R0o1RpHI5V060ytVKJkWt6FUTWyce3N0gLgkUeaA6BTijffWn068kY6rcmODZkzvIJ78NHMHF+sf986YOoXoNu6J1y70wC9+/eJjFkOBM5soTX4NQ29juJgP2xZS5aAQMpJgI3i4l+BfJuzyzfzn1AhN36Kr0UKkNDUjeKU=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1644.namprd11.prod.outlook.com (10.172.38.15) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.20; Mon, 2 Sep 2019 14:15:14 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::c457:dc57:6e6f:f4f3]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::c457:dc57:6e6f:f4f3%10]) with mapi id 15.20.2220.022; Mon, 2 Sep 2019
 14:15:14 +0000
From: <Eugen.Hristev@microchip.com>
To: <peda@axentia.se>, <wsa@the-dreams.de>, <mark.rutland@arm.com>,
 <Ludovic.Desroches@microchip.com>, <linux-i2c@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, <pierre-yves.mordret@st.com>,
 <alexandre.belloni@bootlin.com>, <robh+dt@kernel.org>
Subject: Re: [PATCH v4 2/9] dt-bindings: i2c: add bindings for i2c analog and
 digital filter
Thread-Topic: [PATCH v4 2/9] dt-bindings: i2c: add bindings for i2c analog and
 digital filter
Thread-Index: AQHVYXbctVkeTzhRG0edAs7kSbS9TqcYNSkAgAA4B4A=
Date: Mon, 2 Sep 2019 14:15:14 +0000
Message-ID: <b6528812-65d3-6561-38e7-c0545af900d8@microchip.com>
References: <1567418773-2427-1-git-send-email-eugen.hristev@microchip.com>
 <1567418773-2427-3-git-send-email-eugen.hristev@microchip.com>
 <9a9c209c-2fb8-0a4c-4e0a-b04fefda3360@axentia.se>
In-Reply-To: <9a9c209c-2fb8-0a4c-4e0a-b04fefda3360@axentia.se>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR0701CA0069.eurprd07.prod.outlook.com
 (2603:10a6:800:5f::31) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-ms-exchange-messagesentrepresentingtype: 1
x-tagtoolbar-keys: D20190902170939569
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e0817322-2242-4de2-6d74-08d72faff8f8
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DM5PR11MB1644; 
x-ms-traffictypediagnostic: DM5PR11MB1644:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB1644FF6E03968D0109FA8C0CE8BE0@DM5PR11MB1644.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 01480965DA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(396003)(376002)(39860400002)(136003)(366004)(189003)(199004)(8676002)(81166006)(81156014)(99286004)(36756003)(6512007)(316002)(53936002)(6116002)(186003)(26005)(3846002)(14454004)(386003)(2906002)(6246003)(31686004)(66066001)(6306002)(102836004)(966005)(478600001)(6436002)(110136005)(52116002)(6486002)(76176011)(256004)(66946007)(66476007)(71200400001)(2201001)(86362001)(6506007)(53546011)(305945005)(31696002)(229853002)(2501003)(2616005)(11346002)(64756008)(7416002)(5660300002)(486006)(476003)(66446008)(446003)(8936002)(66556008)(25786009)(7736002)(71190400001)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1644;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: OlNg78jJzGsG8fyFFTdgbdQ1NgsXya3eJRPCDQI9KKO5MLq2b9EtlwzPWOC6Yb52v7Wkrtd+OZ7NhFHEb/oXFYlYByc2Un4SpMUugZc3U2+oAiILXGtRKwDg8u+R9XJVALx3zfEaGyC+yI2+7LxnLLjFNd5DBvJR6N2ISkgN/QTn188gA/ruz/Lp9vx9hQFNnGf36YWO/KG0xkGuhYwE3tDe1U6TN5LpnzHCKpm1P4jHDQwC91ihs0lxvnq1V/uGZ8Xr6IUP/3y3bQ80G7NaX9ScMUpjV49Qg3ajR3s86yRxN9/vLQmIiMA5znCWh+t0W6BtpRfMkd3eM9qOwcivSyVszsJbZdBVoePzI1BZuhACYh7S094LqUqubiusD3d48Ydwq503SWAvyLTq/05RndWlJFbeoJ8NCrzLSMf9wU8=
Content-ID: <C58BCC47709F1E44BDF4A390A7880894@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: e0817322-2242-4de2-6d74-08d72faff8f8
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Sep 2019 14:15:14.1316 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wpZ19MZ1TBmbjN5A29U9bknJz2dE9hZDHivk0+3yseLWC0pDB5DlkJ1OLSogwD3DypEbqFZEaqixNcapb+EPhguuCiDP9IzFQc5lgEb6ToQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1644
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_071520_147483_F0D84804 
X-CRM114-Status: GOOD (  14.35  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 02.09.2019 13:49, Peter Rosin wrote:

> On 2019-09-02 12:12, Eugen.Hristev@microchip.com wrote:
>> From: Eugen Hristev <eugen.hristev@microchip.com>
>>
>> Some i2c controllers have a built-in digital or analog filter.
>> This is specifically required depending on the hardware PCB/board.
>> Some controllers also allow specifying the maximum width of the
>> spikes that can be filtered. The width length can be specified in nanoseconds.
>>
>> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
>> ---
>>   Documentation/devicetree/bindings/i2c/i2c.txt | 11 +++++++++++
>>   1 file changed, 11 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/i2c/i2c.txt b/Documentation/devicetree/bindings/i2c/i2c.txt
>> index 44efafd..8dbff67 100644
>> --- a/Documentation/devicetree/bindings/i2c/i2c.txt
>> +++ b/Documentation/devicetree/bindings/i2c/i2c.txt
>> @@ -55,6 +55,17 @@ wants to support one of the below features, it should adapt the bindings below.
>>   	Number of nanoseconds the SDA signal takes to fall; t(f) in the I2C
>>   	specification.
>>   
>> +- i2c-analog-filter
>> +	Enable analog filter for i2c lines.
>> +
>> +- i2c-digital-filter
>> +	Enable digital filter for i2c lines.
>> +
>> +- i2c-filter-width-ns
>> +	Width of spikes which can be filtered by either digital or analog
>> +	filters (i2c-analog-filtr or i2c-digital-filtr). This width is specified
> 
> filtr -> filter (two instances)
> 
> What if you want/need to have different bandwidth for the digital and analog
> filters? After all, this is a generic binding...

Hi Peter,

For our needs, this is enough: the purpose of the filters is to avoid 
noise on the lines, the noise is as big as it is for the digital and for 
the analog filters, since we use an absolute measurement for them. So I 
do not know how useful it would be to make a difference.

Wolfram, what do you think ?

Eugen


> 
> Cheers,
> Peter
> 
>> +	in nanoseconds.
>> +
>>   - interrupts
>>   	interrupts used by the device.
>>   
>>
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
