Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 587D943526
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 12:14:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wt9lGEqIgRhmSpd+loj/G/LiYvS473d4ouHnxb6hNnk=; b=aL4vVPSkxkAf+L
	XuLujLhwlXTtQRobIbC14n7bOW9/sqjviqVl+nFXR0i+0xZPDZxI77NxIYkOti/Koiq1SPvNfoZqm
	epIPphIEXyWuM/61Zcsc/Ep0F12CeGjl6DjH6ZM1iirc7P9y14SXIM4EQKubPUKAeip/m+t8YFYHI
	RZdSMTM6SAveiAn06HhJ3a1jub3VlZxdQ+as2Ca0h87xMH1ICUlWvm/GQwnt5Ow6/Wj1/xoKEWlue
	vs6gyjTnzz0kc3HHJ2ptQPz1Hl/RXwnnv9KzWDFzEKbTTNaBoxrMCfiWTtEQPcVllXQYzsEjXG6rG
	XBoO9anJLc42kQqfSOdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbMkx-0000bM-O7; Thu, 13 Jun 2019 10:14:55 +0000
Received: from mail-eopbgr60063.outbound.protection.outlook.com ([40.107.6.63]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbMkl-0000Jp-JG
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 10:14:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JsnuP9uN7znKdLcsYUNs05zri06zOnYXJFfiQuCxCzo=;
 b=6fP79K0Zd+t5ZKKUDbW1RQE05uDoAkqMGosfl0o7LTUl5dqQdvo+vV2jcn0IogKP8q1p1OAf2ccZ2nHoHSIicjO64jDyv6obG9SEEYWue70MC7l+EQNzmeSEoNekcrqBs1wT4qH1ZRM87GjnW3oTYj8u6YgLJHuitK58LSQxK20=
Received: from VE1PR08MB4637.eurprd08.prod.outlook.com (10.255.27.14) by
 VE1PR08MB4880.eurprd08.prod.outlook.com (10.255.113.150) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.15; Thu, 13 Jun 2019 10:14:39 +0000
Received: from VE1PR08MB4637.eurprd08.prod.outlook.com
 ([fe80::6574:1efb:6972:2b37]) by VE1PR08MB4637.eurprd08.prod.outlook.com
 ([fe80::6574:1efb:6972:2b37%6]) with mapi id 15.20.1965.017; Thu, 13 Jun 2019
 10:14:39 +0000
From: Szabolcs Nagy <Szabolcs.Nagy@arm.com>
To: Catalin Marinas <Catalin.Marinas@arm.com>
Subject: Re: [PATCH v4 1/2] arm64: Define
 Documentation/arm64/tagged-address-abi.txt
Thread-Topic: [PATCH v4 1/2] arm64: Define
 Documentation/arm64/tagged-address-abi.txt
Thread-Index: AQHVIS/jNTMPiNHftkW5Mto9lMl3oKaYRrOAgAEJjYCAAA78gA==
Date: Thu, 13 Jun 2019 10:14:39 +0000
Message-ID: <dee7f192-d0f0-558e-3007-eba805c6f2da@arm.com>
References: <cover.1560339705.git.andreyknvl@google.com>
 <20190612142111.28161-1-vincenzo.frascino@arm.com>
 <20190612142111.28161-2-vincenzo.frascino@arm.com>
 <a90da586-8ff6-4bed-d940-9306d517a18c@arm.com>
 <20190613092054.GO28951@C02TF0J2HF1T.local>
In-Reply-To: <20190613092054.GO28951@C02TF0J2HF1T.local>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
x-originating-ip: [217.140.106.51]
x-clientproxiedby: LNXP265CA0031.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:5c::19) To VE1PR08MB4637.eurprd08.prod.outlook.com
 (2603:10a6:802:b1::14)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Szabolcs.Nagy@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8fe878f3-90c3-40d7-96ad-08d6efe7f18d
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VE1PR08MB4880; 
x-ms-traffictypediagnostic: VE1PR08MB4880:
nodisclaimer: True
x-microsoft-antispam-prvs: <VE1PR08MB4880FE3C5989AB8E22672E57EDEF0@VE1PR08MB4880.eurprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0067A8BA2A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(366004)(396003)(346002)(136003)(376002)(189003)(199004)(37006003)(99286004)(316002)(44832011)(81166006)(65826007)(478600001)(6512007)(26005)(2906002)(486006)(6436002)(31696002)(14454004)(71190400001)(7736002)(58126008)(72206003)(64126003)(54906003)(81156014)(229853002)(86362001)(53936002)(8936002)(8676002)(66476007)(66446008)(65956001)(305945005)(6246003)(186003)(5660300002)(36756003)(66066001)(66556008)(65806001)(64756008)(66946007)(76176011)(6486002)(68736007)(2616005)(14444005)(25786009)(386003)(3846002)(52116002)(71200400001)(6116002)(6506007)(31686004)(53546011)(73956011)(446003)(11346002)(6636002)(256004)(6862004)(102836004)(4326008)(476003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR08MB4880;
 H:VE1PR08MB4637.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: n1uLWJnaW6tml/Jq1ihcLP5qMpaj60lgri3jTuf0WS1WvifIOe04A/mowWrlwipNbODswYGcpWlTUrD5s5DFzmNbvkT8BhDUBoM8B7I+gQQAlpaN05GaWQVZXtLV0dKbjwb+ItE5iJFcgoGTW+9lYboILJi7/IiW43XE51v1nNQjCDHkvrtIZeGj/Ihpjgv0ZR5UTrGn1WT1Zj5kgqsInPeZZggpKQ+baQOpa8d3dtzfE/4zy6/lVoKULtmbCU5l4E6TMQ4K1eDVs9YZ843FlL4FRmVtXrglr7wopao4oujhlhEr6H/vsdJ1sjxq4Rch0acPTdhrgeuiBpppkNjYj6CAfd/2mR2jOMlZxPzHP+a5ueMuIdbcs/3wrZidsvmJiZAPnNZ6z1hYrBpkQ3dHxIbAzcayZsyaP4Vix0DX0/o=
Content-ID: <50012C68520D6547A2B2174AAC3FFA16@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8fe878f3-90c3-40d7-96ad-08d6efe7f18d
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jun 2019 10:14:39.1554 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Szabolcs.Nagy@arm.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR08MB4880
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_031443_712893_1AD2F5CA 
X-CRM114-Status: GOOD (  25.59  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.63 listed in list.dnswl.org]
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
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
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

On 13/06/2019 10:20, Catalin Marinas wrote:
> Hi Szabolcs,
> 
> On Wed, Jun 12, 2019 at 05:30:34PM +0100, Szabolcs Nagy wrote:
>> On 12/06/2019 15:21, Vincenzo Frascino wrote:
>>> +2. ARM64 Tagged Address ABI
>>> +---------------------------
>>> +
>>> +From the kernel syscall interface prospective, we define, for the purposes
>>                                      ^^^^^^^^^^^
>> perspective
>>
>>> +of this document, a "valid tagged pointer" as a pointer that either it has
>>> +a zero value set in the top byte or it has a non-zero value, it is in memory
>>> +ranges privately owned by a userspace process and it is obtained in one of
>>> +the following ways:
>>> +  - mmap() done by the process itself, where either:
>>> +    * flags = MAP_PRIVATE | MAP_ANONYMOUS
>>> +    * flags = MAP_PRIVATE and the file descriptor refers to a regular
>>> +      file or "/dev/zero"
>>
>> this does not make it clear if MAP_FIXED or other flags are valid
>> (there are many map flags i don't know, but at least fixed should work
>> and stack/growsdown. i'd expect anything that's not incompatible with
>> private|anon to work).
> 
> Just to clarify, this document tries to define the memory ranges from
> where tagged addresses can be passed into the kernel in the context
> of TBI only (not MTE); that is for hwasan support. FIXED or GROWSDOWN
> should not affect this.

yes, so either the text should list MAP_* flags that don't affect
the pointer tagging semantics or specify private|anon mapping
with different wording.

>>> +  - a mapping below sbrk(0) done by the process itself
>>
>> doesn't the mmap rule cover this?
> 
> IIUC it doesn't cover it as that's memory mapped by the kernel
> automatically on access vs a pointer returned by mmap(). The statement
> above talks about how the address is obtained by the user.

ok i read 'mapping below sbrk' as an mmap (possibly MAP_FIXED)
that happens to be below the heap area.

i think "below sbrk(0)" is not the best term to use: there
may be address range below the heap area that can be mmapped
and thus below sbrk(0) and sbrk is a posix api not a linux
syscall, the libc can implement it with mmap or whatever.

i'm not sure what the right term for 'heap area' is
(the address range between syscall(__NR_brk,0) at
program startup and its current value?)

>>> +  - any memory mapped by the kernel in the process's address space during
>>> +    creation and following the restrictions presented above (i.e. data, bss,
>>> +    stack).
>>
>> OK.
>>
>> Can a null pointer have a tag?
>> (in case NULL is valid to pass to a syscall)
> 
> Good point. I don't think it can. We may change this for MTE where we
> give a hint tag but no hint address, however, this document only covers
> TBI for now.

OK.

>>> +The ARM64 Tagged Address ABI is an opt-in feature, and an application can
>>> +control it using the following prctl()s:
>>> +  - PR_SET_TAGGED_ADDR_CTRL: can be used to enable the Tagged Address ABI.
>>> +  - PR_GET_TAGGED_ADDR_CTRL: can be used to check the status of the Tagged
>>> +                             Address ABI.
>>> +
>>> +As a consequence of invoking PR_SET_TAGGED_ADDR_CTRL prctl() by an applications,
>>> +the ABI guarantees the following behaviours:
>>> +
>>> +  - Every current or newly introduced syscall can accept any valid tagged
>>> +    pointers.
>>> +
>>> +  - If a non valid tagged pointer is passed to a syscall then the behaviour
>>> +    is undefined.
>>> +
>>> +  - Every valid tagged pointer is expected to work as an untagged one.
>>> +
>>> +  - The kernel preserves any valid tagged pointers and returns them to the
>>> +    userspace unchanged in all the cases except the ones documented in the
>>> +    "Preserving tags" paragraph of tagged-pointers.txt.
>>
>> OK.
>>
>> i guess pointers of another process are not "valid tagged pointers"
>> for the current one, so e.g. in ptrace the ptracer has to clear the
>> tags before PEEK etc.
> 
> Another good point. Are there any pros/cons here or use-cases? When we
> add MTE support, should we handle this differently?

i'm not sure what gdb does currently, but it has
an 'address_significant' hook used at a few places
that drops the tag on aarch64, so it probably
avoids passing tagged pointer to ptrace.

i was worried about strace which tries to print
structs passed to syscalls and follow pointers in
them which currently would work, but if we allow
tags in syscalls then it needs some update.
(i haven't checked the strace code though)

>>> +A definition of the meaning of tagged pointers on arm64 can be found in:
>>> +Documentation/arm64/tagged-pointers.txt.
>>> +
>>> +3. ARM64 Tagged Address ABI Exceptions
>>> +--------------------------------------
>>> +
>>> +The behaviours described in paragraph 2, with particular reference to the
>>> +acceptance by the syscalls of any valid tagged pointer are not applicable
>>> +to the following cases:
>>> +  - mmap() addr parameter.
>>> +  - mremap() new_address parameter.
>>> +  - prctl_set_mm() struct prctl_map fields.
>>> +  - prctl_set_mm_map() struct prctl_map fields.
>>
>> i don't understand the exception: does it mean that passing a tagged
>> address to these syscalls is undefined?
> 
> I'd say it's as undefined as it is right now without these patches. We
> may be able to explain this better in the document.
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
