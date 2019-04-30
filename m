Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DD23F8AB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 14:21:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bYSYDbM8IO/2r/vEGyAgCVLR1asIqIgqXX0k7W3llbI=; b=XExGMmLEs7X1Q1
	/lA5swXoBQ4V5ZWapm+JrgfcMfPnFsCeH25CT2mYhoauu+PdyogbiNIBVxtjONwaEo+Vi0CshW2LP
	/lyC3QPkGzkf81cQgJPSiEpb1tkNyP6vuUkowlhMiJUHxV57HLLJcr1JDp1o8m/yYHFqsnK3UqTWj
	4eDurHRqVGcYJHoAyd62nlS6QZCDjxGjP2f/iNZQp8aUy238hPCKE3HwTm+e+5XIbElA5cHwYN2y9
	Ug6wscltxTh+hUN4aGG7QzEl3SG9DE8EaqgAps3sOt0a385JRkUKX3ifKkhNjmq2sSXSfB4qqjT8g
	pGRiAC2NcEKBmB8H9C0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLRkz-0002t2-L6; Tue, 30 Apr 2019 12:21:09 +0000
Received: from mail-db3eur04on062d.outbound.protection.outlook.com
 ([2a01:111:f400:fe0c::62d]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLRkr-0002sU-Mo
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 12:21:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector1-arm-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RnU8mPjPRDGNOr2LOTik8qUjgbRZruDoV4SexXvsrdY=;
 b=qbCNnBsN+wfbsjSSg7ADCiXm0fWcnyaWMOHi4MBJy/EyLa+KCWAtA7sx5/rUYedaK6BMXO5Qg6kPvrEfNUIe9Ucsyai+qi0km/dRBb5e3HTvSKIA9Ke1DktKQCXNS+SDXa9YuFlo+2nsaAYkXwrv1Tp2OwpC9IEoQKKRKUIyIrc=
Received: from DB7PR08MB3865.eurprd08.prod.outlook.com (20.178.84.149) by
 DB7PR08MB3642.eurprd08.prod.outlook.com (20.177.120.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.12; Tue, 30 Apr 2019 12:20:56 +0000
Received: from DB7PR08MB3865.eurprd08.prod.outlook.com
 ([fe80::fdd5:e065:ed96:45da]) by DB7PR08MB3865.eurprd08.prod.outlook.com
 ([fe80::fdd5:e065:ed96:45da%3]) with mapi id 15.20.1835.018; Tue, 30 Apr 2019
 12:20:56 +0000
From: Raphael Gault <Raphael.Gault@arm.com>
To: Josh Poimboeuf <jpoimboe@redhat.com>
Subject: Re: [RFC 3/6] objtool: arm64: Adapt the stack frame checks and the
 section analysis for the arm architecture
Thread-Topic: [RFC 3/6] objtool: arm64: Adapt the stack frame checks and the
 section analysis for the arm architecture
Thread-Index: AQHU7tulYY+OqZKg/k6QJwe1WY2Za6ZKSruAgAFe/4D///XuAIABEJyAgAB5AQCAB5dVgA==
Date: Tue, 30 Apr 2019 12:20:56 +0000
Message-ID: <9a5f48e4-4846-7a47-48c6-52d937bf01e1@arm.com>
References: <20190409135243.12424-1-raphael.gault@arm.com>
 <20190409135243.12424-4-raphael.gault@arm.com>
 <20190423203627.mwnaknit7cvr3l5l@treble>
 <cd86ce1a-7c6a-9ebf-4c84-6cb6ffd88017@arm.com>
 <20190424165640.5yeg2yicl7ej7g3i@treble>
 <c90f402e-6494-73bc-1df8-516c3113019a@arm.com>
 <20190425162528.mnmmierxxvixyoul@treble>
In-Reply-To: <20190425162528.mnmmierxxvixyoul@treble>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LO2P123CA0007.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:a6::19) To DB7PR08MB3865.eurprd08.prod.outlook.com
 (2603:10a6:10:32::21)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Raphael.Gault@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [217.140.106.53]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2db8e813-df1d-4226-6511-08d6cd664c15
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB7PR08MB3642; 
x-ms-traffictypediagnostic: DB7PR08MB3642:
x-microsoft-antispam-prvs: <DB7PR08MB364215302D6FAAB8481841EFED3A0@DB7PR08MB3642.eurprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 00235A1EEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(136003)(366004)(376002)(396003)(346002)(54094003)(189003)(199004)(40434004)(256004)(81166006)(25786009)(81156014)(8676002)(66476007)(53936002)(6916009)(66946007)(64756008)(66556008)(2906002)(446003)(476003)(2616005)(14454004)(6486002)(6246003)(71200400001)(72206003)(66446008)(4326008)(71190400001)(478600001)(6116002)(486006)(11346002)(8936002)(68736007)(3846002)(6512007)(5660300002)(73956011)(6436002)(44832011)(36756003)(14444005)(54906003)(99286004)(31696002)(7736002)(86362001)(229853002)(52116002)(31686004)(76176011)(26005)(93886005)(102836004)(6506007)(53546011)(97736004)(186003)(386003)(5024004)(316002)(305945005)(66066001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR08MB3642;
 H:DB7PR08MB3865.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: tgduFhRO+GfbIOvYpx3gnOag9OvsjpNAoje0pgt7HF5db6G9xIAw0tMzvff5SuaPzhbx6zViEvcFXOTW28lz8bgMYsAcMkvLQanaAqklc181id7J3tR2zjQ3UFWTni1cfoBLUpr2m/OoYwN8DX5J0aJevj2Ok0vSo7mTWJvwtbnrPHwT4bt2s+oQY9j/d5olKXCeCOZjQU8gasn9JVGyvU4gVSW3/Z5a1nFWpoP+p6wmdqgk04jBbk43zcCQWN0XDPu+1ijtOBiWpY+dPl6I+AI0Dulf0w7uSB01EpTFD+Z0Mg723gixQhn2JXTmUpqVwY2xSsMZ5ub5eIwpwK6A+zXeidfq7Woo9Nq6hwBAOLdilQLOlmc+vtxGzI7Ci5kvZgW9dW6VlAHBN34lyASIuXIOvcKDVt9MIEaEcFqiQLk=
Content-ID: <6DDC5356332FFC4DA7F0DAF2AD215C28@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2db8e813-df1d-4226-6511-08d6cd664c15
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2019 12:20:56.8784 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR08MB3642
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_052101_790765_48A81D6C 
X-CRM114-Status: GOOD (  34.82  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0c:0:0:0:62d listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Julien Thierry <Julien.Thierry@arm.com>,
 "peterz@infradead.org" <peterz@infradead.org>,
 Catalin Marinas <Catalin.Marinas@arm.com>, Will Deacon <Will.Deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Josh,

On 4/25/19 5:25 PM, Josh Poimboeuf wrote:
> On Thu, Apr 25, 2019 at 08:12:24AM +0000, Raphael Gault wrote:
>> Hi Josh,
>>
>> On 4/24/19 5:56 PM, Josh Poimboeuf wrote:
>>> On Wed, Apr 24, 2019 at 04:32:44PM +0000, Raphael Gault wrote:
>>>>>> diff --git a/tools/objtool/arch/arm64/decode.c b/tools/objtool/arch/arm64/decode.c
>>>>>> index 0feb3ae3af5d..8b293eae2b38 100644
>>>>>> --- a/tools/objtool/arch/arm64/decode.c
>>>>>> +++ b/tools/objtool/arch/arm64/decode.c
>>>>>> @@ -105,6 +105,33 @@ unsigned long arch_compute_rela_sym_offset(int addend)
>>>>>>     return addend;
>>>>>>     }
>>>>>>
>>>>>> +/*
>>>>>> + * In order to know if we are in presence of a sibling
>>>>>> + * call and not in presence of a switch table we look
>>>>>> + * back at the previous instructions and see if we are
>>>>>> + * jumping inside the same function that we are already
>>>>>> + * in.
>>>>>> + */
>>>>>> +bool arch_is_insn_sibling_call(struct instruction *insn)
>>>>>> +{
>>>>>> +struct instruction *prev;
>>>>>> +struct list_head *l;
>>>>>> +struct symbol *sym;
>>>>>> +list_for_each_prev(l, &insn->list) {
>>>>>> +prev = (void *)l;
>>>>>> +if (!prev->func
>>>>>> +|| prev->func->pfunc != insn->func->pfunc)
>>>>>> +return false;
>>>>>> +if (prev->stack_op.src.reg != ADR_SOURCE)
>>>>>> +continue;
>>>>>> +sym = find_symbol_containing(insn->sec, insn->immediate);
>>>>>> +if (!sym || sym->type != STT_FUNC
>>>>>> +|| sym->pfunc != insn->func->pfunc)
>>>>>> +return true;
>>>>>> +break;
>>>>>> +}
>>>>>> +return true;
>>>>>> +}
>>>>>
>>>>> I get the feeling there might be a better way to do this, but I can't
>>>>> figure out what this function is actually doing.  It looks like it
>>>>> searches backwards in the function for an instruction which has
>>>>> stack_op.src.reg != ADR_SOURCE -- what does that mean?  And why doesn't
>>>>> it do anything with the instruction after it finds it?
>>>>>
>>>>
>>>> I will indeed try to make it better.
>>>
>>> I still don't quite get what it's trying to accomplish, but I wonder if
>>> there's some kind of tracking you can add in validate_branch() to keep
>>> track of whatever you're looking for, leading up to the indirect jump.
>>>
>>
>> The motivation behind this is that the `br <Xn>` instruction is a
>> dynamic jump (jump to the address contained in the provided register).
>> This instruction is used for sibling calls but can also be used for
>> switch table. I use this to differentiate these two cases from one another:
>>
>> Generally the `adr/adrp` instruction is used prior to `br` in order to
>> load the address into the register. What I do here is go back throught
>> the instructions and try to identify if the address loaded.
>>
>> I also thought of implementing some sort of tracking in validate branch
>> because it could be useful for identifying the switch tables as well.
>> But it seemed to me like a major change in the sementic of this tool:
>> indeed, from my perspective I would have to track the state of the
>> registers and I don't know if we want to do that.
>
> I don't have much time to look at this today (and I'll be out next
> week), but we had a similar problem in x86.  See the comments above
> find_switch_table(), particularly #3.  Does that function not work for
> the arm64 case?
>

Honestly, I don't have a full understanding of how the switch tables are
handled on arm64. All I know is that I've identified a case in which it
doesn't work (and I get an unreachable instruction warning).
When trying to figure out how the switch tables work on arm64 and how
objtool is retrieving them (on x86 at least) I realised that you look
for 2 relocations :
- One from (.rela).text which refers to the .rodata section
- One from (.rela).rodata which refers somewhere else.
On the case I identified the second relocation doesn't exist thus the
function doesn't find the switch table.

Again since I do not have a good understanding about this I am not able
to say if it is a corner case or not.

>>>>>> -hash_add(file->insn_hash, &insn->hash, insn->offset);
>>>>>> +/*
>>>>>> + * For arm64 architecture, we sometime split instructions so that
>>>>>> + * we can track the state evolution (i.e. load/store of pairs of registers).
>>>>>> + * We thus need to take both into account and not erase the previous ones.
>>>>>> + */
>>>>>
>>>>> Ew...  Is this an architectural thing, or just a quirk of the arm64
>>>>> decoder?
>>>>>
>>>>
>>>> The motivation for this is to simulate the two consecutive operations
>>>> that would be executed on x86 but are done in one on arm64. This is
>>>> strictly a decoder related quirk. I don't know if there is a better way
>>>> to do it without modifying the struct op_src and struct instruction.
>>>
>>> Ah.  Which ops are those?  Hopefully we can find a better way to
>>> represent that with a single instruction.  Adding fake instructions is
>>> fragile.
>>>
>>
>> Those are the load/store of pairs of registers, mainly stp/ldp. Those
>> are often use in the function prologues/epilogues to save/restore the
>> stack pointers and frame pointers however it can be used with any
>> register pair.
>>
>> The idea to add a new instruction could work but I would need to extend
>> the `struct op_src` as well I think.
>
> Again I don't have much time to look at it, but I do think that changing
> op_src/dest to allow for the stp/ldp instructions would work better than
> inserting a fake instruction to emulate x86.
>
> Or another idea would be to associate multiple stack_ops with a single
> instruction.
>

I haven't looked at it in depth yet but I will try to figure out a good
way to represent those instructions on a more proper manner.

Thanks,

--
Raphael Gault
IMPORTANT NOTICE: The contents of this email and any attachments are confidential and may also be privileged. If you are not the intended recipient, please notify the sender immediately and do not disclose the contents to any other person, use it for any purpose, or store or copy the information in any medium. Thank you.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
