Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A14A1DFFEA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 10:45:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TZxrkzo0IOeA6KRC1svtu44scloep7TrzWA3uTho7rQ=; b=pPQvwNk2MRxFMZ
	ht6qzq5q9wCKZe3ScKI050Aphwt3yWSioyCL9rseXfFFZheeikwvv3ugr/GC/v2fiSlbiaHb4/cfP
	Lg0ZLjEULcJOvuyby39B42ZvS0UfAJqhfUXCsjTE8PBAfMLJCbqSFI/47jIesWC3tDTQVp9M9juKJ
	WW9kLT591AE0BRAYdsJlWhn9Z4tewKRUwGd1OrNCtn8FFjPZARPmdIuJebyTrpNieo39htWj7nIf6
	4NHjPjWMI1iA2t/rLys3ticXC6jXeHtxdX276PyfB2N82QsLozawe4lJogsFLl6Y/Nu9Ytv0qGuOx
	43xiMjD9viWjj45IS/Jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMpnJ-00062a-QO; Tue, 22 Oct 2019 08:45:33 +0000
Received: from mail-eopbgr150139.outbound.protection.outlook.com
 ([40.107.15.139] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMpn9-00061L-7X
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 08:45:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NH6ICw/aGJGLXiBO1oiObwDqLU8GftqOiP767cGnR6reQmnHQbqaylRVOjUs3ra76WMR/MFiD9KnzY6YoGyMVHEypYoa5msaAvgSSG7XIG6oJGqsl5lzSF97t/6dvCUL3VKV0OJMqOBzScXdAU6GLzkwd4haGWxp52j8Kc3IhYc4gkgaC6wgaMi3k6cVR5tmjR2g3E7IOrLIJ2xFndjCYvk6I3map847qZe9+HAJc7dxLsIurSjyq8Z5BIjoAY2q42yTVzvHH6QW7UAFh0c3VQ73QYnxTnF0PT7Y4El4OuUM5H/kWEpf1nSanZScQuaYrRtYI3eFZRwc95O3uaiDhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9RDd6uHjnaIl18b9/q1LJ/A6qy5517LdOU+CAcC+MiA=;
 b=TxUdCh5SdODfPQD99jlSdzEnyonsC3uFG8BBHuS6QBU7bZsVMrI5XqbCuWrA9YzpXrJFO4MwkRjt8o4RNERUo4BroFjIkYvbiQ2Y3KG17fG8QFQSvSsDo6R7OUSjY6Q4iNezPhLZ3+n29KL0a3vJMQksRjLZo5S+bqVYkEUyB/JjsY7gJCzch/e6JOC3YFAVpCogEYOhPk0kHuo8xKJ41fkM+kA6jWzcm8NAXmhEYsmpdb9DUyp5PIK8/hKXu0xk8Cs3TP+95WJwjoAZJdWwzEC16uuckWdz6Miqlw47s32jaQX1RGtH/pazmvM7S9YeG6orbU82gLhPOYuG/z5q4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=axentia.se; dmarc=pass action=none header.from=axentia.se;
 dkim=pass header.d=axentia.se; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axentia.se;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9RDd6uHjnaIl18b9/q1LJ/A6qy5517LdOU+CAcC+MiA=;
 b=JyGeA52ffsz9qpXXEdEFFSALP+9cfSZIWSCbTjEQYDTKNRLN3yCTggqufdCYkiKHlwRInQhR5iL8Pqv+zqs5gZn4m5VQgEhX0KrpdXAzCASaJN7RE5wWnTDQEdGjuG/b8t8R0HJXfgNjgEAXiEVnbDYRABoCiR1kJaUuEXs6xTA=
Received: from DB3PR0202MB3434.eurprd02.prod.outlook.com (52.134.66.158) by
 DB3PR0202MB3340.eurprd02.prod.outlook.com (52.134.67.15) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2367.24; Tue, 22 Oct 2019 08:45:18 +0000
Received: from DB3PR0202MB3434.eurprd02.prod.outlook.com
 ([fe80::c5b8:6014:87a4:1afe]) by DB3PR0202MB3434.eurprd02.prod.outlook.com
 ([fe80::c5b8:6014:87a4:1afe%7]) with mapi id 15.20.2347.029; Tue, 22 Oct 2019
 08:45:17 +0000
From: Peter Rosin <peda@axentia.se>
To: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>, Brendan Higgins
 <brendanhiggins@google.com>, Wolfram Sang <wsa@the-dreams.de>, Benjamin
 Herrenschmidt <benh@kernel.crashing.org>, Joel Stanley <joel@jms.id.au>, Rob
 Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Andrew
 Jeffery <andrew@aj.id.au>, Tao Ren <taoren@fb.com>, Cedric Le Goater
 <clg@kaod.org>
Subject: Re: [PATCH i2c-next 1/2] dt-bindings: i2c: aspeed: add hardware
 timeout support
Thread-Topic: [PATCH i2c-next 1/2] dt-bindings: i2c: aspeed: add hardware
 timeout support
Thread-Index: AQHViE2KU5aZojIjkUqCdR4ab3gQm6dlt3EA///tFICAALTpgA==
Date: Tue, 22 Oct 2019 08:45:17 +0000
Message-ID: <b98827fa-462a-060b-efc7-27fe5d7742ff@axentia.se>
References: <20191021202414.17484-1-jae.hyun.yoo@linux.intel.com>
 <20191021202414.17484-2-jae.hyun.yoo@linux.intel.com>
 <0a629f7b-b829-c332-27d8-dc825205ff72@axentia.se>
 <7abf933b-cb18-10af-9c1b-163ec65ffae5@linux.intel.com>
In-Reply-To: <7abf933b-cb18-10af-9c1b-163ec65ffae5@linux.intel.com>
Accept-Language: en-US, sv-SE
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
x-originating-ip: [213.112.138.100]
x-clientproxiedby: HE1PR0102CA0053.eurprd01.prod.exchangelabs.com
 (2603:10a6:7:7d::30) To DB3PR0202MB3434.eurprd02.prod.outlook.com
 (2603:10a6:8:5::30)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peda@axentia.se; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9c73b2ee-2f98-46ee-46ee-08d756cc29f3
x-ms-traffictypediagnostic: DB3PR0202MB3340:
x-microsoft-antispam-prvs: <DB3PR0202MB3340855FD970AFD95B1783C4BC680@DB3PR0202MB3340.eurprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 01986AE76B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(136003)(346002)(366004)(396003)(39830400003)(199004)(52314003)(189003)(6512007)(54906003)(6436002)(99286004)(6506007)(386003)(53546011)(6246003)(229853002)(110136005)(58126008)(6486002)(25786009)(66066001)(65806001)(65956001)(102836004)(8936002)(4326008)(26005)(52116002)(76176011)(81156014)(81166006)(8676002)(316002)(5660300002)(186003)(7416002)(71200400001)(256004)(14444005)(66946007)(305945005)(6116002)(3846002)(86362001)(31696002)(66446008)(64756008)(66556008)(66476007)(4001150100001)(2906002)(11346002)(476003)(486006)(36756003)(508600001)(14454004)(31686004)(446003)(71190400001)(7736002)(2616005)(921003)(1121003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DB3PR0202MB3340;
 H:DB3PR0202MB3434.eurprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: axentia.se does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fn4FipVxJlznXQexa6vcgCYlFcElZLKNZhs5iuxQcsBnm/aFtkVR7sY6nYcq96lVeMoS02TKUIRn0vT7GYzk7fbPwwAHcbs05kU/5e1JYkJQQ+/eRT6cmbCsE99AJOP7CXhpSz2sAf1KRxTdo6G4y/fh18aNXmRGBUmbZc4yDWP5doupqeXgd5vBLhzr0f7WUMq/i1u8lv03V9jpuN6XoNWvwQkSu1klbawffZ+rhWqhwQP/jgdpnK5k9eKiM+cufKCcCQCA0WEe3tLtPLQZmid7jlXzviqmyqkrjLBwMprFQ/DTDUsT7vD10z3NAtiVcYkBD0DjnM0SRAYxhHO0Aoe8ilUQ+6KbaOfj5AqO9Fspfn2Q6jX2HRdX5rr78DIljv3Fq+NLdR+jZ3wOsi33SxOBqe9JqIZu5TSfPwkOMxkkzKYJHOnxnTErmSfhqTWG
x-ms-exchange-transport-forked: True
Content-ID: <7084A791E746C8458A822A468C1DDC13@eurprd02.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: axentia.se
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c73b2ee-2f98-46ee-46ee-08d756cc29f3
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Oct 2019 08:45:17.8657 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4ee68585-03e1-4785-942a-df9c1871a234
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: s/uZAiNNWtS+LEk6fQyPy4opUMAHDU6rylu/WPazBum4gEOjYR6VHXTGI8UWBELj
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0202MB3340
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_014523_479226_251A092B 
X-CRM114-Status: GOOD (  26.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.139 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "openbmc@lists.ozlabs.org" <openbmc@lists.ozlabs.org>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-10-21 23:57, Jae Hyun Yoo wrote:
> Hi Peter,
> 
> On 10/21/2019 2:05 PM, Peter Rosin wrote:
>> On 2019-10-21 22:24, Jae Hyun Yoo wrote:
>>> Append a binding to support hardware timeout feature.
>>>
>>> Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
>>> ---
>>>   Documentation/devicetree/bindings/i2c/i2c-aspeed.txt | 2 ++
>>>   1 file changed, 2 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/i2c/i2c-aspeed.txt b/Documentation/devicetree/bindings/i2c/i2c-aspeed.txt
>>> index b47f6ccb196a..133bfedf4cdd 100644
>>> --- a/Documentation/devicetree/bindings/i2c/i2c-aspeed.txt
>>> +++ b/Documentation/devicetree/bindings/i2c/i2c-aspeed.txt
>>> @@ -17,6 +17,8 @@ Optional Properties:
>>>   - bus-frequency	: frequency of the bus clock in Hz defaults to 100 kHz when not
>>>   		  specified
>>>   - multi-master	: states that there is another master active on this bus.
>>> +- aspeed,hw-timeout-ms	: Hardware timeout in milliseconds. If it's not
>>> +			  specified, the H/W timeout feature will be disabled.
>>>   
>>>   Example:
>>>   
>>>
>>
>> Some SMBus clients support a smbus-timeout-disable binding for disabling
>> timeouts like this, for cases where the I2C adapter in question on occasion
>> is unable to keep the pace. Adding that property thus avoids undesired
>> timeouts when the client is SMBus conformant without it. Your new binding
>> is the reverse situation, where you want to add a timeout where one is
>> otherwise missing.
>>
>> Anyway, since I2C does not have a specified lowest possible frequency, this
>> feels like something that is more in the SMBus arena. Should the property
>> perhaps be a generic property named smbus-timeout-ms, or something like
>> that?
> 
> Well, I tried upstreaming of the generic timeout property a year ago but
> I agreed that the generic bus timeout property can be set by an ioctl
> command so it didn't need to be added into device tree at that time. Not
> sure if any need has come recently but I haven't heard that. This driver
> still uses the generic timeout property which is provided by i2c core
> for handling command timeouts, and it's out of scope from this patch
> series.
> 
>> If the above is not wanted or appropriate, then I would personally prefer
>> aspeed,bus-timeout-ms over aspeed,hw-timeout-ms. To me, hw-timeout-ms sounds
>> like a (more serious) timeout between the CPU and the I2C peripheral unit
>> or something like that. But I don't care deeply...
> 
> Changes I submitted in this patch set is for a different purpose which
> is very Aspeed H/W specific, and actually it's a more serious timeout
> setting indeed. If this H/W is used in multi-master environment, it
> could meet a H/W hang that freezes itself in slave mode and it can't
> escape from the state. To resolve the specific case, this H/W provides
> self-recovery feature which monitors abnormal state of SDA, SCL and its
> H/W state machine using the timeout setting to determine the escape
> condition.

Are you saying that the aspeed HW is buggy and that this abnormal state
is self inflicted by the aspeed HW even if other masters on the bus
behave sanely? Because I didn't quite read it that way at all...

To me, it sounded *exactly* like the state I2C clients end up in when an
I2C master "dies" and stops communicating in the middle of a transaction.
I.e. the thing that the SMBus timeout is designed to prevent (and the
state the I2C nine-clk-recovery sequence addresses). The only twist (that
I saw) was that the aspeed HW is also a master and that the aspeed master
driver is completely locked out from the bus while some obnoxious master
fails to complete its transaction (or whatever it was up to).

If this can only be triggered when the HW is acting as a slave, and by
aborted or otherwise funky master activity on the bus, then I wouldn't
call it an HW issue. Then it would be a bus issue. I.e. something needing
a bus-timeout instead of a hw-timeout.

I don't have the specifics, so I can't tell which way it is. I'm just
reacting to the presented information.

Cheers,
Peter

> Generally, this H/W timeout value is smaller than the generic bus
> timeout value (I'm using 300ms for the H/W timeout while I'm using 1
> second for the generic bus timeout) so I think it should be
> distinguished from the generic bus timeout.
> 
> Thanks,
> 
> Jae
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
