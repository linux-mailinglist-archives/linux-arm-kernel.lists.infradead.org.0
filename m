Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2EC9A5996
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 16:41:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l9rbo+5YcGeKqRr5INg93fK5UmhHVV7BrKSAu5N/gHo=; b=py6kDS0rpTGvnI
	q/UV2sBI6RCjtDA5xyEV6SKIkZxBe5Vtcq6sqzKzOzcBGCbOZJzyUdWmYLeqch8b6RvfGjsJ3Zh3H
	miDAYuZtGHUj2ZaD+DiziOGK953w4svJ73o9V2erFk+AqNknsF4V1Gd7CP9UnMW1j5FunXKXrN4zh
	lFI5vgMdUcYhspwnhfrqHWmbwNrbDvUwDFEZjsztHIEZq20Ok1A8CMA5heC4SUoLJ+BtQuty4hfLa
	rabpGGeT1I+ykyDVS86zMOtHvAo5hnsa3/C0QAlWXHD/3O4a/2UWCBHZzG1L4uqV2vLwBZr/CEgX3
	GHfvgCrM/HsTo1643mgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4nW6-0006jD-52; Mon, 02 Sep 2019 14:41:14 +0000
Received: from mail-eopbgr40101.outbound.protection.outlook.com
 ([40.107.4.101] helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4nVq-0006ab-7W
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 14:41:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AuS+kpm1L+qu/JzAiMuGKCVMrH2FCYeE41RwEactnNrXnKmyMrB8QikgdAQfQl+U7bY7Diq5sIRAdEQ9Dp3kqtN55MstbuRo7tq3auNE07kh/VoZEaCfFvbq+gb+3v/BpIoKbpctTRaoZGFJedHTqlpUfeqApP0S7y98EV8zwEcESk2PVCT8+lFtrv4AdSTvGRgvolUJ8txlhizF1FhytVOSSj/IsrdLRXcJGp20SS1tKp3WPUT9W+gl/Jd1rWG0+RftV99ZGpXpKLYSaaq17hrU4MzffkhqaOpkYBbseUm52bU2b+X+BfXwFzRVzpUgn33+GU+vt1SnOxTgblma1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8c/2G9MHpAm7T2Pb58R0JSpaIbGhllX7hE/0eYehlFs=;
 b=CGvNYqtvhbMGx/T0+TMp/3sZ0AZuyPN9pm91KaCsoawlmyVLzbKzJdM75P0fuu7e945Xydwft8vGk5RZ0Eong3rC4robmhE7Mf5RM2C96gL/w170+5WZoc8bYw957ejcBQIDEncg4x8vBtfqYn/Q0OlBnXxg45EAvE51WaTvTLvMlSglzK5PCI+8vzWY8FZrXuJ43lk4+kLNF+UCPbKKnY3rkyX6b23bWetAfqHt6Y5XCmLzm1tvj7GKwTwUVes74a/8uAkHP/0UdJNCfEMKt2P+mu4B0giy7lqzkE2xzyp1tnhr1lPRoVe4/QVNRoNcUZ6yaUDVNJ5cmFQeNGFDuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=axentia.se; dmarc=pass action=none header.from=axentia.se;
 dkim=pass header.d=axentia.se; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axentia.se;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8c/2G9MHpAm7T2Pb58R0JSpaIbGhllX7hE/0eYehlFs=;
 b=CYuqhy+IV9pbnzjqgFo+XGShXgFs/WID6ztltpCEz1CbEKXxqiL4YqFS/uT0ryGwta4ZcmL7JH4LonV/H2elhiUaT+MP+HRz9YcQsVAizimBz8lyClnX6j35mNDJCIVYCDP4czgTS0f2zruAgNOlbmKreZ9GEwML9AdThWp3zY4=
Received: from DB3PR0202MB3434.eurprd02.prod.outlook.com (52.134.66.158) by
 DB3PR0202MB3385.eurprd02.prod.outlook.com (52.134.73.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.20; Mon, 2 Sep 2019 14:40:55 +0000
Received: from DB3PR0202MB3434.eurprd02.prod.outlook.com
 ([fe80::e12b:afcb:73e1:5d09]) by DB3PR0202MB3434.eurprd02.prod.outlook.com
 ([fe80::e12b:afcb:73e1:5d09%7]) with mapi id 15.20.2220.022; Mon, 2 Sep 2019
 14:40:55 +0000
From: Peter Rosin <peda@axentia.se>
To: "Eugen.Hristev@microchip.com" <Eugen.Hristev@microchip.com>,
 "wsa@the-dreams.de" <wsa@the-dreams.de>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "Ludovic.Desroches@microchip.com"
 <Ludovic.Desroches@microchip.com>, "linux-i2c@vger.kernel.org"
 <linux-i2c@vger.kernel.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "pierre-yves.mordret@st.com"
 <pierre-yves.mordret@st.com>, "alexandre.belloni@bootlin.com"
 <alexandre.belloni@bootlin.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>
Subject: Re: [PATCH v4 2/9] dt-bindings: i2c: add bindings for i2c analog and
 digital filter
Thread-Topic: [PATCH v4 2/9] dt-bindings: i2c: add bindings for i2c analog and
 digital filter
Thread-Index: AQHVYXbiXZEVScDXYk6rEHjvPF2S2qcYVqwAgAAYEwCAAAcpAA==
Date: Mon, 2 Sep 2019 14:40:55 +0000
Message-ID: <52038b5a-5940-2ac0-b7b4-5677c2fc5fbf@axentia.se>
References: <1567418773-2427-1-git-send-email-eugen.hristev@microchip.com>
 <1567418773-2427-3-git-send-email-eugen.hristev@microchip.com>
 <9a9c209c-2fb8-0a4c-4e0a-b04fefda3360@axentia.se>
 <b6528812-65d3-6561-38e7-c0545af900d8@microchip.com>
In-Reply-To: <b6528812-65d3-6561-38e7-c0545af900d8@microchip.com>
Accept-Language: en-US, sv-SE
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
x-originating-ip: [213.112.138.100]
x-clientproxiedby: HE1PR09CA0083.eurprd09.prod.outlook.com
 (2603:10a6:7:3d::27) To DB3PR0202MB3434.eurprd02.prod.outlook.com
 (2603:10a6:8:5::30)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peda@axentia.se; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4b9515e6-d602-491c-9cdf-08d72fb38fa3
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DB3PR0202MB3385; 
x-ms-traffictypediagnostic: DB3PR0202MB3385:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <DB3PR0202MB3385F314881B8D50F80013D7BCBE0@DB3PR0202MB3385.eurprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 01480965DA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(366004)(346002)(136003)(396003)(39830400003)(199004)(189003)(6512007)(6306002)(66066001)(65956001)(65806001)(2501003)(52116002)(99286004)(31696002)(6246003)(5660300002)(7416002)(6436002)(256004)(305945005)(110136005)(7736002)(11346002)(446003)(58126008)(6506007)(386003)(186003)(31686004)(76176011)(6116002)(3846002)(8936002)(26005)(14454004)(66446008)(966005)(66946007)(66556008)(66476007)(2906002)(64756008)(53936002)(508600001)(2201001)(476003)(316002)(2616005)(81166006)(8676002)(81156014)(86362001)(36756003)(486006)(6486002)(71200400001)(71190400001)(25786009)(229853002)(53546011)(102836004)(921003)(1121003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DB3PR0202MB3385;
 H:DB3PR0202MB3434.eurprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: axentia.se does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: nJ02A/dseY8Js8g0N9Cj1iV3jgS3ivLldgBNDK3zFkV/MvVzlltO0tWXsmhHxs/BWdN7Yse/7x8uHKKjK8bbvZlRsnX7kTeKi7aqoSmEnRl8Y4KJ43NFyg4xKlAOlS5jJ0MXqHFMAxyIoF2rADPH9BoURroJEzvQgSOwznQflH/+t8S0ErcnP4pPsTuULNMa4OL7XCuX3pvbVVqfZRrOzGYoa1XoMNZLXPQzwZKw0ZRZDf+XrRF0yaRLjjVgPSMycBQ10jPQXBZqm1Cfyh7Cj5rfCFXJYfOrwt/rC6I++/MRTtyZewxtxdqnr2LU1SEoIlHg5X7wF31OAVR04CbFoNg+7CkiuUwEZ/nD0qcCzWql41YkVRjF21b8VIu792PfZyNcEdall5gLsZVTuxpnInBZhnmBIsKosEotSvZ6V1A=
x-ms-exchange-transport-forked: True
Content-ID: <8C56B3A8B13F234BBB6A1FFC3502C322@eurprd02.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: axentia.se
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b9515e6-d602-491c-9cdf-08d72fb38fa3
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Sep 2019 14:40:55.2989 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4ee68585-03e1-4785-942a-df9c1871a234
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5F74rHEh49NKEI4XAcKiyV43avaDNZo8/hO25GnOT1c2pw74w/MkA0wXEPOZWxuf
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0202MB3385
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_074058_506150_C251AB49 
X-CRM114-Status: GOOD (  19.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.101 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On 2019-09-02 16:15, Eugen.Hristev@microchip.com wrote:
> 
> 
> On 02.09.2019 13:49, Peter Rosin wrote:
> 
>> On 2019-09-02 12:12, Eugen.Hristev@microchip.com wrote:
>>> From: Eugen Hristev <eugen.hristev@microchip.com>
>>>
>>> Some i2c controllers have a built-in digital or analog filter.
>>> This is specifically required depending on the hardware PCB/board.
>>> Some controllers also allow specifying the maximum width of the
>>> spikes that can be filtered. The width length can be specified in nanoseconds.
>>>
>>> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
>>> ---
>>>   Documentation/devicetree/bindings/i2c/i2c.txt | 11 +++++++++++
>>>   1 file changed, 11 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/i2c/i2c.txt b/Documentation/devicetree/bindings/i2c/i2c.txt
>>> index 44efafd..8dbff67 100644
>>> --- a/Documentation/devicetree/bindings/i2c/i2c.txt
>>> +++ b/Documentation/devicetree/bindings/i2c/i2c.txt
>>> @@ -55,6 +55,17 @@ wants to support one of the below features, it should adapt the bindings below.
>>>   	Number of nanoseconds the SDA signal takes to fall; t(f) in the I2C
>>>   	specification.
>>>   
>>> +- i2c-analog-filter
>>> +	Enable analog filter for i2c lines.
>>> +
>>> +- i2c-digital-filter
>>> +	Enable digital filter for i2c lines.
>>> +
>>> +- i2c-filter-width-ns
>>> +	Width of spikes which can be filtered by either digital or analog
>>> +	filters (i2c-analog-filtr or i2c-digital-filtr). This width is specified
>>
>> filtr -> filter (two instances)
>>
>> What if you want/need to have different bandwidth for the digital and analog
>> filters? After all, this is a generic binding...
> 
> Hi Peter,
> 
> For our needs, this is enough: the purpose of the filters is to avoid 
> noise on the lines, the noise is as big as it is for the digital and for 
> the analog filters, since we use an absolute measurement for them. So I 
> do not know how useful it would be to make a difference.
I think my gripe is that the description also seems non-generic. Analog
filters never (ok, usually, but I have a hard time seeing how a simple
analog filter can) work in terms of some "width of spikes". That phrasing
seems like something inherent to trivial digital filters. For analog
filters, specifying the bandwidth or cut-off frequency seems much more
appropriate. And bandwidth would work equally well for digital filters,
methinks.

I also think it should be mentioned explicitly that this binding is for
LP filters. I don't think anything else would be useful, but better safe
than sorry...

Hmm, would it be good or bad to specify the bandwidth relative to the
current maximum bus speed?

Cheers,
Peter

> Wolfram, what do you think ?
> 
> Eugen
> 
> 
>>
>> Cheers,
>> Peter
>>
>>> +	in nanoseconds.
>>> +
>>>   - interrupts
>>>   	interrupts used by the device.
>>>   
>>>
>>
>> _______________________________________________
>> linux-arm-kernel mailing list
>> linux-arm-kernel@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
>>
>>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
