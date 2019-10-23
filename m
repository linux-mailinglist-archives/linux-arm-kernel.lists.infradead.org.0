Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ACD7E250B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 23:17:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RP2dJIKz2VzgZ2uDLbfZHypINW1FxCsqJ6r/bRAomv8=; b=LQu8e7AVPGiWTh
	ogs79oQXIxPhA0hKpWjSwXUangXWgtWThvvd7hyxxLx51YgPY1P+Ir4oK8OgALIDyCQs8kkRgcMXk
	FV49prKgchUFIGsVYxc7xjTBpghU8qCoAXGsuEeSJ/yRRfwxTLuw+UiPktwEZMdAev7b9+qGeFB9X
	a6pLBkCpDNjwSaG2eG7nn5Y11kuHpiUBq1OJDSx1XB1ChPVofRm8ENmKZOsQfgoH2IqxlLEQJY+iX
	I1Hjx1sjJIFvccWnhltBpqIg/I++Tt2NGd9RJP380zV2DZU+lY947DIot+zzIlLpZg8R5usldp7jO
	eJHkaroNmwE7Bu/dKUfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNO0c-0005Ta-4k; Wed, 23 Oct 2019 21:17:34 +0000
Received: from mail-eopbgr30122.outbound.protection.outlook.com
 ([40.107.3.122] helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNO0S-0005Sq-D3
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 21:17:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DyhriQS6zOUnsUzUBVG83+wWJO4mp6g5PIEG/99ke0TRimjQ/UrXvSs7jN55AafDClK7IDNjtpdmIg4EsmmI9nWEIzccT59L70+AufSHPWRuoiuwBNI9jc5Dvh82kUNIbn2szqL7FN6lVlvToJ7rlxCGvToBWEvAXIyZ7c8+WKGJn7UWaQbVlk/8EIFd1YlpMjxfHLv6JEYFaY7ItcUy3JYU2HcnpSTWaMaZJd2uglNBhpwN6Gf+n6FyiL/p6H0eUXolTSETt3zgV6EGMfLu5/27Mrr3Mmz0ytu4iqoBWFa9rCB/Sd9l+0+koQawFwHo27O5pBjYXQht6L8iu4UrvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UERwcSG8wNnvtau2mk0R0dTTqBsoTfuBWL3z11zCDN4=;
 b=PPNFhL1tNrP+jtHdCcf8hsz6lDg+7HmaOT7tX3m7pT+gqXn9wrsI6q9Ktkyu14AEUTUO2Ky9gvGwV6AbdwQAyEJuWFMVj5AYQUBic1jK2+OTjSya2bIqeT9+BnhIFDNevH6g9jAI5NCXuJI6mYdVSicRXF4HLG3yNFCKWnhGVW/cFIUqkcsmisvA0wEFJcFEMi9VeDDXwUGhhqCjYTC7Djzmf89KyXBgvuEcyuK2L2fVBzgZ7T17lkAhPWMCyMbj0tkSu04aIAXV85aPNp+oozhFFCR/kJcWSMB/nN4Qo8dBT1zEqB5mDNcV6SBNGThjnsTyaVQ9/F7rHm8HzUuuqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=axentia.se; dmarc=pass action=none header.from=axentia.se;
 dkim=pass header.d=axentia.se; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axentia.se;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UERwcSG8wNnvtau2mk0R0dTTqBsoTfuBWL3z11zCDN4=;
 b=OjQltdX5CVgCntGD3ChBnwaaCBWqlbmcmMk9/WUlxuPFNFr9cFG2mVZt2ttNbuht3S4Oj0TvN+8j0kKx75WvXJa2nu80Z7UTTzu8nzeA5E51bM7WAbSIGVpf5P40Wz/U2RmcApyvV++NoM5m8oaV70eJOzeoWLzm2yQaz0OwO74=
Received: from DB3PR0202MB3434.eurprd02.prod.outlook.com (52.134.66.158) by
 DB3PR0202MB3563.eurprd02.prod.outlook.com (52.134.66.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.20; Wed, 23 Oct 2019 21:17:16 +0000
Received: from DB3PR0202MB3434.eurprd02.prod.outlook.com
 ([fe80::c5b8:6014:87a4:1afe]) by DB3PR0202MB3434.eurprd02.prod.outlook.com
 ([fe80::c5b8:6014:87a4:1afe%7]) with mapi id 15.20.2347.029; Wed, 23 Oct 2019
 21:17:16 +0000
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
Thread-Index: AQHViE2KU5aZojIjkUqCdR4ab3gQm6dlt3EA///tFICAANZwgIAAdUSAgAHNpAA=
Date: Wed, 23 Oct 2019 21:17:16 +0000
Message-ID: <6eba3e62-9215-0c39-258b-7abfb394bc48@axentia.se>
References: <20191021202414.17484-1-jae.hyun.yoo@linux.intel.com>
 <20191021202414.17484-2-jae.hyun.yoo@linux.intel.com>
 <0a629f7b-b829-c332-27d8-dc825205ff72@axentia.se>
 <7abf933b-cb18-10af-9c1b-163ec65ffae5@linux.intel.com>
 <b98827fa-462a-060b-efc7-27fe5d7742ff@axentia.se>
 <7806ece8-1d7c-7aa8-20af-6f5f964bec64@linux.intel.com>
In-Reply-To: <7806ece8-1d7c-7aa8-20af-6f5f964bec64@linux.intel.com>
Accept-Language: en-US, sv-SE
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
x-originating-ip: [213.112.138.100]
x-clientproxiedby: HE1P190CA0001.EURP190.PROD.OUTLOOK.COM (2603:10a6:3:bc::11)
 To DB3PR0202MB3434.eurprd02.prod.outlook.com
 (2603:10a6:8:5::30)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peda@axentia.se; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8fcbcdf4-cb7d-4f9b-f28b-08d757fe6122
x-ms-traffictypediagnostic: DB3PR0202MB3563:
x-microsoft-antispam-prvs: <DB3PR0202MB35630C74D714FD713F80B4FABC6B0@DB3PR0202MB3563.eurprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 019919A9E4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(39830400003)(366004)(346002)(376002)(396003)(52314003)(199004)(189003)(76176011)(71200400001)(11346002)(476003)(229853002)(52116002)(2616005)(8936002)(99286004)(4001150100001)(65806001)(66066001)(65956001)(6512007)(186003)(81156014)(2906002)(446003)(486006)(3846002)(7736002)(71190400001)(6116002)(58126008)(26005)(31686004)(5024004)(31696002)(256004)(6436002)(316002)(14444005)(25786009)(66476007)(66556008)(81166006)(386003)(66946007)(110136005)(86362001)(66446008)(64756008)(53546011)(6506007)(54906003)(6246003)(5660300002)(7416002)(14454004)(508600001)(8676002)(4326008)(36756003)(102836004)(6486002)(305945005)(921003)(1121003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DB3PR0202MB3563;
 H:DB3PR0202MB3434.eurprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: axentia.se does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: T/2sv/WbZQROfHYLsOzoMwKyaHN8Miu2nRJd2puxulsO0s+TYSD6tIyketk05Pdz0OuVZUN8neaQ/g+/5Ty+XMzg7zPkNgG94VCl2M/VkYrcopfdnfEPFGzDUZGf0zmBXzgNgCN0E6oku/VVFLQW90Tn8UVKacp9uDwWlV6p5glW4hudWqcY9MG6pUXlS140HDucsIEWDbssJMpKJh6opxDR7oyE+pp72W1kXchKyQzbjTbl4YvlCmWAaYuv+ATYPWINK582oGEPj18jeSeLNfH5Io0VzrfK+/p8Q+FRn9a2gudD0fLGMw07FRCQRvriC3APRDNwa44GZvcOsW+GdXMTDxcusxCCpxvNzEeUJ6fnU8QwyyO8FicddMQXsA02TgNgtaC+v1oZeJNrV+WcwLp0F8wjmn+KA8rd+v5XMXrVrTg0Gz2EKbFTztuUWQly
x-ms-exchange-transport-forked: True
Content-ID: <44CDB0B8FC357E42A488B1F579254AB4@eurprd02.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: axentia.se
X-MS-Exchange-CrossTenant-Network-Message-Id: 8fcbcdf4-cb7d-4f9b-f28b-08d757fe6122
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Oct 2019 21:17:16.1123 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4ee68585-03e1-4785-942a-df9c1871a234
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ey3rpRYjGQfu1vWkkbZ/APNGoIpqYWv541ZVuETMMIGRqIfTt09UjSARnsZic1dO
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0202MB3563
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_141724_819784_F200915A 
X-CRM114-Status: GOOD (  32.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.122 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On 2019-10-22 19:44, Jae Hyun Yoo wrote:
> On 10/22/2019 1:45 AM, Peter Rosin wrote:
>> On 2019-10-21 23:57, Jae Hyun Yoo wrote:
>>> Hi Peter,
>>>
>>> On 10/21/2019 2:05 PM, Peter Rosin wrote:
>>>> On 2019-10-21 22:24, Jae Hyun Yoo wrote:
>>>>> Append a binding to support hardware timeout feature.
>>>>>
>>>>> Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
>>>>> ---
>>>>>    Documentation/devicetree/bindings/i2c/i2c-aspeed.txt | 2 ++
>>>>>    1 file changed, 2 insertions(+)
>>>>>
>>>>> diff --git a/Documentation/devicetree/bindings/i2c/i2c-aspeed.txt b/Documentation/devicetree/bindings/i2c/i2c-aspeed.txt
>>>>> index b47f6ccb196a..133bfedf4cdd 100644
>>>>> --- a/Documentation/devicetree/bindings/i2c/i2c-aspeed.txt
>>>>> +++ b/Documentation/devicetree/bindings/i2c/i2c-aspeed.txt
>>>>> @@ -17,6 +17,8 @@ Optional Properties:
>>>>>    - bus-frequency	: frequency of the bus clock in Hz defaults to 100 kHz when not
>>>>>    		  specified
>>>>>    - multi-master	: states that there is another master active on this bus.
>>>>> +- aspeed,hw-timeout-ms	: Hardware timeout in milliseconds. If it's not
>>>>> +			  specified, the H/W timeout feature will be disabled.
>>>>>    
>>>>>    Example:
>>>>>    
>>>>>
>>>>
>>>> Some SMBus clients support a smbus-timeout-disable binding for disabling
>>>> timeouts like this, for cases where the I2C adapter in question on occasion
>>>> is unable to keep the pace. Adding that property thus avoids undesired
>>>> timeouts when the client is SMBus conformant without it. Your new binding
>>>> is the reverse situation, where you want to add a timeout where one is
>>>> otherwise missing.
>>>>
>>>> Anyway, since I2C does not have a specified lowest possible frequency, this
>>>> feels like something that is more in the SMBus arena. Should the property
>>>> perhaps be a generic property named smbus-timeout-ms, or something like
>>>> that?
>>>
>>> Well, I tried upstreaming of the generic timeout property a year ago but
>>> I agreed that the generic bus timeout property can be set by an ioctl
>>> command so it didn't need to be added into device tree at that time. Not
>>> sure if any need has come recently but I haven't heard that. This driver
>>> still uses the generic timeout property which is provided by i2c core
>>> for handling command timeouts, and it's out of scope from this patch
>>> series.
>>>
>>>> If the above is not wanted or appropriate, then I would personally prefer
>>>> aspeed,bus-timeout-ms over aspeed,hw-timeout-ms. To me, hw-timeout-ms sounds
>>>> like a (more serious) timeout between the CPU and the I2C peripheral unit
>>>> or something like that. But I don't care deeply...
>>>
>>> Changes I submitted in this patch set is for a different purpose which
>>> is very Aspeed H/W specific, and actually it's a more serious timeout
>>> setting indeed. If this H/W is used in multi-master environment, it
>>> could meet a H/W hang that freezes itself in slave mode and it can't
>>> escape from the state. To resolve the specific case, this H/W provides
>>> self-recovery feature which monitors abnormal state of SDA, SCL and its
>>> H/W state machine using the timeout setting to determine the escape
>>> condition.
>>
>> Are you saying that the aspeed HW is buggy and that this abnormal state
>> is self inflicted by the aspeed HW even if other masters on the bus
>> behave sanely? Because I didn't quite read it that way at all...
> 
> I don't think it's an Aspeed HW bug. Actually, this HW can be exposed to
> very severe environments if it is used as a Baseboard Management
> Controller which needs two or more multi-masters on a bus depends on
> HW design. Also, it should expect unknown or buggy device attachment
> on a bus through add-on card slots. Aspeed HW provides HW timeout
> feature to support exceptional cases handling which comes from the
> severe use cases.
> 
>> To me, it sounded *exactly* like the state I2C clients end up in when an
>> I2C master "dies" and stops communicating in the middle of a transaction.
>> I.e. the thing that the SMBus timeout is designed to prevent (and the
>> state the I2C nine-clk-recovery sequence addresses). The only twist (that
>> I saw) was that the aspeed HW is also a master and that the aspeed master
>> driver is completely locked out from the bus while some obnoxious master
>> fails to complete its transaction (or whatever it was up to).
> 
> If this HW runs on a single-master bus, any master dying issue will be
> cured by recovery logic which this driver already has and the logic uses
> the bus timeout setting you are saying.
> 
> This patch set is mainly focusing on a 'slave mode hang' issue on a
> 'multi-master' bus which can't be covered by the recovery logic.
> 
>> If this can only be triggered when the HW is acting as a slave, and by
>> aborted or otherwise funky master activity on the bus, then I wouldn't
>> call it an HW issue. Then it would be a bus issue. I.e. something needing
>> a bus-timeout instead of a hw-timeout.
> 
> Here is an example. In a multi-node BMC system, a peer master can be
> shutdown in the middle of transaction, then this Aspeed HW keeps waiting
> for a next event from the peer master but it can't happen because the
> peer master was already shutdown. If we enable the 'slave inactive
> timeout feature' using the HW timeout setting, the this HW can escape
> from the waiting state. If we don't, this HW hangs forever in the
> waiting state and it's the reason why I implemented this patch set.
> 
> The hw-timeout setting needs fine tuning depends on HW environment so
> it should be different from the bus-timeout.

Yeah, ok, so you're basically confirming everything I said. I do
sense some confusion though, as you come across as a bit
defensive and seem to think that I am against the whole notion of
the patches. And that's not the case at all! My only issue is
with the naming. And I happen to think hw-timeout-ms is a really
bad name. It's way too broad and can mean just about anything.
When I read that, I think of some workaround for broken hardware,
not normal things like the other masters on the bus doing
confusing things. Funky bus activity from remote masters is
simply not an HW issue in my book, at least not an HW issue on
the local side of the bus. It's just something you *must expect*.

Let me list some scenarios, so that I can describe why I came up
with my suggested alternate naming:

Suppose you have a simple setup with a bus featuring a single
aspeed master and a single slave. If the slave is, say, a jc42
temperature sensor, then it by default will follow the SMBus spec
and implement a bus timeout. Meaning that if the master is
stalling for too long, then the jc42 slave will timeout the
transaction and make itself available to any potential other
masters on the bus. The jc42 chip does not know that it is on a
single master bus. But this is only the default, you can tell the
jc42 driver to disable this timeout, which is sometimes crucial
for reliable behavior, e.g. if the master is not always able to
keep the deadlines for whatever reason.

Next scenario. Suppose you have a simple setup with a bus
featuring a single remote master of some sort and the aspeed
acting as slave only. Since there is only a single master, and
there are no other slaves on the bus, there's no point for the
aspeed to act as master. The aspeed without your patches behave
as the jc42 chip above, when it has been instructed to /remove
the timeout/. And that's fine in this scenario since there is
only one master and the aspeed, as slave, can defer recovering
the bus to that master. So, when aspeed is operating as
slave-only, these patches enable the addition of the same timeout
that was there by default in the first scenario.

Final scenario, some as last but with some other slave(s) on the
bus. Now, it becomes interesting for the aspeed to act as master,
and it becomes interesting indeed to have a timeout that "breaks
out" when some remote master hogs the aspeed in slave mode.

I claim that the timeouts mentioned in all these scenarios are
related. In the first scenario, you disable the timeout by adding
smbus-timeout-disable to the relevant device tree node. I was
merely suggesting that, since the timeouts are basically doing
the same thing in all scenarios, the naming should perhaps be
consistent and be something more specific than hw-timeout-ms. What
popped up was bus-timeout-ms or smbus-timeout-ms. I suppose
remote-timeout-ms, or something, would also work...

Note that the timeouts I'm talking about has nothing to do with
the adapter timeout in the linux I2C core. This is all about
timeouts when acting as I2C slave and the remote master fails to
complete (or otherwise messes up) transfers.

I hope that clarifies my position!

Cheers,
Peter
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
