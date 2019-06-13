Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07867435E4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 14:28:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hKixJG96QHcDCNddbykH8LuHBT8T6/ztx8iRPUDRQfI=; b=gmj4A6qTcHeD5X
	rDjxDEg5N/nUu8kg+5YeIQDtxU+9CUeu5quyOGK8Ym9jqeXUNJo5BpMCo9DkYcxr3ZEItHEK/hnME
	+BrBV1padI9GIdrbIV3kkUOa7lh/4NlbXMSpOtfPWNbB3Vot/Y7tzt6rzGllmjUF+WzaiTL53mAyj
	tmf/MKeDgOrCzloVzx604fgxBLBp/XeFR6yB6oJb9sLfaiPVyjl8x+PZWdeDHQOFmioGJHMWh0nTm
	K/xh9TvC9nQZLuwnp/Xp98cFbqmCNMO9Dl/saXAZen/SHTg1Vc2biEypaUsAJ/Lc1TCY60gdcOr0a
	MeD1qArftcZASAIxbdGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbOqB-0001rE-Pe; Thu, 13 Jun 2019 12:28:27 +0000
Received: from mail-eopbgr50045.outbound.protection.outlook.com ([40.107.5.45]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbOpw-0001qS-8C
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 12:28:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=edX6WZIwfCoMixU8vLHwERAxZnEN4T1K5/0Q6vpMK6Y=;
 b=mmRYnm9ZpnhsS5gLDPpvZSU9GNGrBSl5EEkFkycmZeo40XR3GpHqA55KFAmtDsa0ZJq4t4ccfyqkQ9xc/odqdaqR+y+bZ1cwCJoHTqTB9p5uV8d4oUrFL5ARan4A4jtmE/f3gqOjH9xzaCc+4iX+m2yjsBYph9WWch2Tc1w9gQ8=
Received: from VE1PR08MB4637.eurprd08.prod.outlook.com (10.255.27.14) by
 VE1PR08MB4720.eurprd08.prod.outlook.com (10.255.115.87) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.11; Thu, 13 Jun 2019 12:28:08 +0000
Received: from VE1PR08MB4637.eurprd08.prod.outlook.com
 ([fe80::6574:1efb:6972:2b37]) by VE1PR08MB4637.eurprd08.prod.outlook.com
 ([fe80::6574:1efb:6972:2b37%6]) with mapi id 15.20.1965.017; Thu, 13 Jun 2019
 12:28:08 +0000
From: Szabolcs Nagy <Szabolcs.Nagy@arm.com>
To: Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Catalin Marinas
 <Catalin.Marinas@arm.com>
Subject: Re: [PATCH v4 1/2] arm64: Define
 Documentation/arm64/tagged-address-abi.txt
Thread-Topic: [PATCH v4 1/2] arm64: Define
 Documentation/arm64/tagged-address-abi.txt
Thread-Index: AQHVIS/jNTMPiNHftkW5Mto9lMl3oKaYRrOAgAEJjYCAAA78gIAAEUMAgAAUCAA=
Date: Thu, 13 Jun 2019 12:28:08 +0000
Message-ID: <8e3c9537-de10-0d0d-f5bb-c33bde92443f@arm.com>
References: <cover.1560339705.git.andreyknvl@google.com>
 <20190612142111.28161-1-vincenzo.frascino@arm.com>
 <20190612142111.28161-2-vincenzo.frascino@arm.com>
 <a90da586-8ff6-4bed-d940-9306d517a18c@arm.com>
 <20190613092054.GO28951@C02TF0J2HF1T.local>
 <dee7f192-d0f0-558e-3007-eba805c6f2da@arm.com>
 <6ebbda37-5dd9-d0d5-d9cb-286c7a5b7f8e@arm.com>
In-Reply-To: <6ebbda37-5dd9-d0d5-d9cb-286c7a5b7f8e@arm.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
x-originating-ip: [217.140.106.51]
x-clientproxiedby: LNXP123CA0009.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:d2::21) To VE1PR08MB4637.eurprd08.prod.outlook.com
 (2603:10a6:802:b1::14)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Szabolcs.Nagy@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: df5cd2c2-5d23-4b73-7988-08d6effa9767
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VE1PR08MB4720; 
x-ms-traffictypediagnostic: VE1PR08MB4720:
nodisclaimer: True
x-microsoft-antispam-prvs: <VE1PR08MB4720AE4EEA4831A8B50D84F4EDEF0@VE1PR08MB4720.eurprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0067A8BA2A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(136003)(39860400002)(396003)(376002)(346002)(199004)(189003)(305945005)(6486002)(25786009)(36756003)(229853002)(44832011)(486006)(6512007)(31696002)(6436002)(256004)(11346002)(58126008)(476003)(2616005)(54906003)(66476007)(14454004)(86362001)(71200400001)(71190400001)(68736007)(3846002)(6116002)(5660300002)(446003)(66556008)(73956011)(64756008)(66446008)(66946007)(110136005)(186003)(7736002)(76176011)(53546011)(386003)(316002)(64126003)(53936002)(6506007)(102836004)(6246003)(14444005)(2906002)(8676002)(6636002)(26005)(72206003)(65826007)(66066001)(478600001)(8936002)(52116002)(65956001)(31686004)(81166006)(81156014)(65806001)(4326008)(99286004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR08MB4720;
 H:VE1PR08MB4637.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: F1BF2ilopA/pFZ8tgYbyo6ZZHZ9HTbQH7QqEVn+pCqpsdA8IYhQmHUax8L4vRoie3zJ+wOSf/9RTOWWy/u7TleLdPCku26Adx94r8w95jp+rJvRB2fu00RVlAR7lr4WaiHoms/AhJpaXj3PQ3cN5qdTR6F4T8AOrEeyfE/OzgvJcmKHjAfJO8FQWlGB7cYPzyBHk0RYZw5ZT7FVKQ42wxJWPFxXIueyLj8hGIFAErgpQ9yImMYj3LFsPePLngPGgNohBq+dr9m4xwjIlcTki3JPRJ8UY95fgROwzjLc2eniPP8hUBdSP41R5WKz8dC2csxP5nsJrypNRaVuvottxgauz8sQfYkRTAElD2Mvn/qU7Pq7G9hRroHkS4KWRTM3JvlpeWsAhhq0D8ZesuC9CZBAhgkNYzp2uQ5AhTCsJ9SY=
Content-ID: <E2C0B65BEF78924CA305C7B3274335E1@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-Network-Message-Id: df5cd2c2-5d23-4b73-7988-08d6effa9767
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jun 2019 12:28:08.3985 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Szabolcs.Nagy@arm.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR08MB4720
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_052812_342825_648F809F 
X-CRM114-Status: GOOD (  23.68  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.45 listed in list.dnswl.org]
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

On 13/06/2019 12:16, Vincenzo Frascino wrote:
> Hi Szabolcs,
> 
> thank you for your review.
> 
> On 13/06/2019 11:14, Szabolcs Nagy wrote:
>> On 13/06/2019 10:20, Catalin Marinas wrote:
>>> Hi Szabolcs,
>>>
>>> On Wed, Jun 12, 2019 at 05:30:34PM +0100, Szabolcs Nagy wrote:
>>>> On 12/06/2019 15:21, Vincenzo Frascino wrote:
>>>>> +2. ARM64 Tagged Address ABI
>>>>> +---------------------------
>>>>> +
>>>>> +From the kernel syscall interface prospective, we define, for the purposes
>>>>                                      ^^^^^^^^^^^
>>>> perspective
>>>>
>>>>> +of this document, a "valid tagged pointer" as a pointer that either it has
>>>>> +a zero value set in the top byte or it has a non-zero value, it is in memory
>>>>> +ranges privately owned by a userspace process and it is obtained in one of
>>>>> +the following ways:
>>>>> +  - mmap() done by the process itself, where either:
>>>>> +    * flags = MAP_PRIVATE | MAP_ANONYMOUS
>>>>> +    * flags = MAP_PRIVATE and the file descriptor refers to a regular
>>>>> +      file or "/dev/zero"
>>>>
>>>> this does not make it clear if MAP_FIXED or other flags are valid
>>>> (there are many map flags i don't know, but at least fixed should work
>>>> and stack/growsdown. i'd expect anything that's not incompatible with
>>>> private|anon to work).
>>>
>>> Just to clarify, this document tries to define the memory ranges from
>>> where tagged addresses can be passed into the kernel in the context
>>> of TBI only (not MTE); that is for hwasan support. FIXED or GROWSDOWN
>>> should not affect this.
>>
>> yes, so either the text should list MAP_* flags that don't affect
>> the pointer tagging semantics or specify private|anon mapping
>> with different wording.
>>
> 
> Good point. Could you please propose a wording that would be suitable for this case?

i don't know all the MAP_ magic, but i think it's enough to change
the "flags =" to

* flags have MAP_PRIVATE and MAP_ANONYMOUS set or
* flags have MAP_PRIVATE set and the file descriptor refers to...


>>>>> +  - a mapping below sbrk(0) done by the process itself
>>>>
>>>> doesn't the mmap rule cover this?
>>>
>>> IIUC it doesn't cover it as that's memory mapped by the kernel
>>> automatically on access vs a pointer returned by mmap(). The statement
>>> above talks about how the address is obtained by the user.
>>
>> ok i read 'mapping below sbrk' as an mmap (possibly MAP_FIXED)
>> that happens to be below the heap area.
>>
>> i think "below sbrk(0)" is not the best term to use: there
>> may be address range below the heap area that can be mmapped
>> and thus below sbrk(0) and sbrk is a posix api not a linux
>> syscall, the libc can implement it with mmap or whatever.
>>
>> i'm not sure what the right term for 'heap area' is
>> (the address range between syscall(__NR_brk,0) at
>> program startup and its current value?)
>>
> 
> I used sbrk(0) with the meaning of "end of the process's data segment" not
> implying that this is a syscall, but just as a useful way to identify the mapping.
> I agree that it is a posix function implemented by libc but when it is used with
> 0 finds the current location of the program break, which can be changed by brk()
> and depending on the new address passed to this syscall can have the effect of
> allocating or deallocating memory.
> 
> Will changing sbrk(0) with "end of the process's data segment" make it more clear?

i don't understand what's the relevance of the *end*
of the data segment.

i'd expect the text to say something about the address
range of the data segment.

i can do

mmap((void*)65536, 65536, PROT_READ|PROT_WRITE, MAP_FIXED|MAP_SHARED|MAP_ANON, -1, 0);

and it will be below the end of the data segment.

> 
> I will add what you are suggesting about the heap area.
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
