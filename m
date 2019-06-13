Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D68143BF8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 17:33:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fSZyvLf/BobiXvvHMIA1onumERLbWDXPQCFS7aypJpI=; b=KMc8KJqKDbXOl6
	wdjPPr3Q8pt6Ssdi9/MOfQd7qEU09jNQ59S5cqRcapsdOvDlrVtOPzX33/TGOkIeaU8VhZNA8cxst
	cGj9mZOtQt2NE/ocwJH7HwA9x96h6hFQTz7PdjBPbOHUQB5lBKgJouFFBiIz1aacoOSxT6GBEwhhS
	pykj+mfLmDNwVmTZLMvtrM/NwptnyXrqfUaLzCDdbFrM37mSWP0wtQPaNq2tBZYGmxZLvSAmf5MBb
	Z9+9Ay3JdoPYO7ElCVG1AHHjos+17JRrSLHymxDySRiLMyvpJLiIaNbEcCoTuhU33KeH7P1riB/S8
	HLXYW0X98xHO5lM5zhKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbRio-00052j-3W; Thu, 13 Jun 2019 15:33:02 +0000
Received: from mail-ve1eur03on0601.outbound.protection.outlook.com
 ([2a01:111:f400:fe09::601]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbRib-00050m-2h
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 15:32:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uQIiHoxFuhWL5xQCcL23HsooGu/TPVjlJNUJdPXXg28=;
 b=a2KwrV1STRGRMuKvQcvB8oZuK+gqOCVAhfntNm0qjCm4TVPxrSwVhjdWn521LPdm3zlfTxGwef5AeXsv/UsvAHzzB76h75h2RA+Dz36F0Uv92I/+DsvlX02kPxLHWozhACUEQbt48ToiV49QP4jYyWS/uU7y34lunta754lq95k=
Received: from VE1PR08MB4637.eurprd08.prod.outlook.com (10.255.27.14) by
 VE1PR08MB5247.eurprd08.prod.outlook.com (20.179.31.144) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.15; Thu, 13 Jun 2019 15:32:42 +0000
Received: from VE1PR08MB4637.eurprd08.prod.outlook.com
 ([fe80::6574:1efb:6972:2b37]) by VE1PR08MB4637.eurprd08.prod.outlook.com
 ([fe80::6574:1efb:6972:2b37%6]) with mapi id 15.20.1965.017; Thu, 13 Jun 2019
 15:32:42 +0000
From: Szabolcs Nagy <Szabolcs.Nagy@arm.com>
To: Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Catalin Marinas
 <Catalin.Marinas@arm.com>
Subject: Re: [PATCH v4 1/2] arm64: Define
 Documentation/arm64/tagged-address-abi.txt
Thread-Topic: [PATCH v4 1/2] arm64: Define
 Documentation/arm64/tagged-address-abi.txt
Thread-Index: AQHVIS/jNTMPiNHftkW5Mto9lMl3oKaYRrOAgAEJjYCAAA78gIAAEUMAgAAkzACAAAnOAIAAGP8A
Date: Thu, 13 Jun 2019 15:32:42 +0000
Message-ID: <ba822b33-a822-02ef-9b85-725f4353596a@arm.com>
References: <cover.1560339705.git.andreyknvl@google.com>
 <20190612142111.28161-1-vincenzo.frascino@arm.com>
 <20190612142111.28161-2-vincenzo.frascino@arm.com>
 <a90da586-8ff6-4bed-d940-9306d517a18c@arm.com>
 <20190613092054.GO28951@C02TF0J2HF1T.local>
 <dee7f192-d0f0-558e-3007-eba805c6f2da@arm.com>
 <6ebbda37-5dd9-d0d5-d9cb-286c7a5b7f8e@arm.com>
 <8e3c9537-de10-0d0d-f5bb-c33bde92443f@arm.com>
 <5963d144-be9b-78d8-9130-ef92bc66b1fd@arm.com>
In-Reply-To: <5963d144-be9b-78d8-9130-ef92bc66b1fd@arm.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
x-originating-ip: [217.140.106.51]
x-clientproxiedby: LNXP265CA0018.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:5e::30) To VE1PR08MB4637.eurprd08.prod.outlook.com
 (2603:10a6:802:b1::14)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Szabolcs.Nagy@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8ec55c83-d349-48b3-152c-08d6f014601e
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VE1PR08MB5247; 
x-ms-traffictypediagnostic: VE1PR08MB5247:
nodisclaimer: True
x-microsoft-antispam-prvs: <VE1PR08MB5247C1B5EF80C97DB7F49188EDEF0@VE1PR08MB5247.eurprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0067A8BA2A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(39860400002)(396003)(376002)(136003)(346002)(189003)(199004)(476003)(26005)(66946007)(2616005)(65826007)(6246003)(25786009)(53936002)(65956001)(65806001)(66066001)(31686004)(8936002)(11346002)(66446008)(66476007)(64756008)(6506007)(73956011)(486006)(81156014)(186003)(53546011)(229853002)(478600001)(5660300002)(66556008)(2906002)(72206003)(86362001)(6636002)(386003)(31696002)(52116002)(8676002)(446003)(44832011)(4326008)(99286004)(102836004)(68736007)(256004)(71200400001)(64126003)(316002)(58126008)(7736002)(54906003)(71190400001)(3846002)(305945005)(6512007)(110136005)(36756003)(76176011)(14454004)(14444005)(6436002)(6486002)(81166006)(6116002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR08MB5247;
 H:VE1PR08MB4637.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 9ZUd4le6lIhT2Zk8V//g6Vd6uo9Z23/KavAhSwjbuDtv9G5m+9zOrCH1HP/nXdSTQJlODuTWPmQlu6ToAJ42fluyO9UyHZ5E3qp2temFJVDJ4IjqqsIWD5e4IseNvc0JoIjHxtsb+0b5+80WDkrX/W5kn5WUPppYFaK2GVNVykhBhpbS/h2+fLOBe3dc81EOz8zZyEUV0Rq0L8wi/gU5/7+fZDMrosVGxC9YwDe0EIgU24HSAK/QViTuQI5uoTOxT4WjbIinYAbeeeg4IrIGh8KoZxdnkc2ewQOWujLjGXqJ+wOwtrtHvDixz6XQAFSBDXSgAclvJ7hRgYk8NwFapGApuG3SiOuCQVieoLqXaNIWj6w12Tz1IHKN+lHDqixs5KPPSLMiWj9w6IHLoRW9cpyvlpypk8X6+ApqADpCcc4=
Content-ID: <F7B0C8D67B5DD5449F2A217A59B054BE@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ec55c83-d349-48b3-152c-08d6f014601e
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jun 2019 15:32:42.6357 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Szabolcs.Nagy@arm.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR08MB5247
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_083249_126204_395A8BDB 
X-CRM114-Status: GOOD (  16.96  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe09:0:0:0:601 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 Andrey Konovalov <andreyknvl@google.com>, Will Deacon <Will.Deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 nd <nd@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 13/06/2019 15:03, Vincenzo Frascino wrote:
> On 13/06/2019 13:28, Szabolcs Nagy wrote:
>> On 13/06/2019 12:16, Vincenzo Frascino wrote:
>>> On 13/06/2019 11:14, Szabolcs Nagy wrote:
>>>> On 13/06/2019 10:20, Catalin Marinas wrote:
>>>>> On Wed, Jun 12, 2019 at 05:30:34PM +0100, Szabolcs Nagy wrote:
>>>>>> On 12/06/2019 15:21, Vincenzo Frascino wrote:
>>>>>>> +  - a mapping below sbrk(0) done by the process itself
>>>>>>
>>>>>> doesn't the mmap rule cover this?
>>>>>
>>>>> IIUC it doesn't cover it as that's memory mapped by the kernel
>>>>> automatically on access vs a pointer returned by mmap(). The statement
>>>>> above talks about how the address is obtained by the user.
>>>>
>>>> ok i read 'mapping below sbrk' as an mmap (possibly MAP_FIXED)
>>>> that happens to be below the heap area.
>>>>
>>>> i think "below sbrk(0)" is not the best term to use: there
>>>> may be address range below the heap area that can be mmapped
>>>> and thus below sbrk(0) and sbrk is a posix api not a linux
>>>> syscall, the libc can implement it with mmap or whatever.
>>>>
>>>> i'm not sure what the right term for 'heap area' is
>>>> (the address range between syscall(__NR_brk,0) at
>>>> program startup and its current value?)
>>>>
>>>
>>> I used sbrk(0) with the meaning of "end of the process's data segment" not
>>> implying that this is a syscall, but just as a useful way to identify the mapping.
>>> I agree that it is a posix function implemented by libc but when it is used with
>>> 0 finds the current location of the program break, which can be changed by brk()
>>> and depending on the new address passed to this syscall can have the effect of
>>> allocating or deallocating memory.
>>>
>>> Will changing sbrk(0) with "end of the process's data segment" make it more clear?
>>
>> i don't understand what's the relevance of the *end*
>> of the data segment.
>>
>> i'd expect the text to say something about the address
>> range of the data segment.
>>
>> i can do
>>
>> mmap((void*)65536, 65536, PROT_READ|PROT_WRITE, MAP_FIXED|MAP_SHARED|MAP_ANON, -1, 0);
>>
>> and it will be below the end of the data segment.
>>
> 
> As far as I understand the data segment "lives" below the program break, hence
> it is a way of describing the range from which the user can obtain a valid
> tagged pointer.>
> Said that, I am not really sure on how do you want me to document this (my aim
> is for this to be clear to the userspace developers). Could you please propose
> something?

[...], it is in the memory ranges privately owned by a
userspace process and it is obtained in one of the
following ways:

- mmap done by the process itself, [...]

- brk syscall done by the process itself.
  (i.e. the heap area between the initial location
  of the program break at process creation and its
  current location.)

- any memory mapped by the kernel [...]

the data segment that's part of the process image is
already covered by the last point.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
