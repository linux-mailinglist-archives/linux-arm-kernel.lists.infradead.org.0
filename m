Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37E32276F1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 09:31:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gB7n1edzk3e0Ysfq3wbmEyxc1p35IO7XAkPuiabVG5Y=; b=RpkpBaYT2176w5
	FZJrQEOrqLchvuFxPSNzfwbCXe/yoo3gsY46tg6deGOBZ00J8VvEOuV4o96Izsq14LYWr0dyh/OHP
	ECXLiJuv75Md61tgiRp2OQipwEbV50XxPDoVjKmpuqtvdcp/6s+8GfRmyGP99n88RATvsUwZZpvvW
	AZzrmRHw8vE2MSD0T9JLrccL7x/A0QK2n2Dl8tUrCek5nwk1i2NhHq042h94MkObZLmeH1IdnpAd6
	MA8KQ1W5q79vht5iY8phKAozdDY65WQUSgHiSebSpxWzLpuSSjdaoJchSqvRvp7QXA/Kawutg+9iF
	vmH259lDaw9zDQi6he6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTiC6-0003bo-9G; Thu, 23 May 2019 07:31:18 +0000
Received: from mail-he1eur02on0627.outbound.protection.outlook.com
 ([2a01:111:f400:fe05::627]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTiBx-0003bI-41
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 07:31:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ieg1Ha1PmUqTmo4w7RqMV5Flajs1esFKs361Q5vnn+w=;
 b=xSFsrjlfCaYKVi4May4rzdJBOEheclvMb3p7oY/Y5fCCQlkDtHLuSg2WCIMiqQYTS77BACOXCi901fubAiPwf1UmHbKSUijZRA4BdBHOXUUIw1mUZYewEe1WOIQKLd2pb/BDRA5tbLHWIkCnbcCZk1pcmo+EOTI+j5C2dfMcdBY=
Received: from DB7PR08MB3865.eurprd08.prod.outlook.com (20.178.84.149) by
 DB7PR08MB3403.eurprd08.prod.outlook.com (20.176.238.96) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.16; Thu, 23 May 2019 07:31:04 +0000
Received: from DB7PR08MB3865.eurprd08.prod.outlook.com
 ([fe80::1c44:4e1b:c1e1:543e]) by DB7PR08MB3865.eurprd08.prod.outlook.com
 ([fe80::1c44:4e1b:c1e1:543e%7]) with mapi id 15.20.1922.016; Thu, 23 May 2019
 07:31:04 +0000
From: Raphael Gault <Raphael.Gault@arm.com>
To: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Subject: Re: [RFC V2 00/16] objtool: Add support for Arm64
Thread-Topic: [RFC V2 00/16] objtool: Add support for Arm64
Thread-Index: AQHVC9NuTdVCDaa9ZEK795yYRfBvDKZtz9WAgAfQ8QCAAi8HAIAAi3+A
Date: Thu, 23 May 2019 07:31:04 +0000
Message-ID: <9677c038-e137-c861-f2fb-6984beb99e8b@arm.com>
References: <20190516103655.5509-1-raphael.gault@arm.com>
 <20190516142917.nuhh6dmfiufxqzls@treble>
 <26692833-0e5b-cfe0-0ffd-c2c2f0815935@arm.com>
 <20190522231146.vw43gkah2npeouj3@treble>
In-Reply-To: <20190522231146.vw43gkah2npeouj3@treble>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LO2P123CA0003.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:a6::15) To DB7PR08MB3865.eurprd08.prod.outlook.com
 (2603:10a6:10:32::21)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Raphael.Gault@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [217.140.106.53]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b08f02e0-f869-41b7-000b-08d6df509cd4
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB7PR08MB3403; 
x-ms-traffictypediagnostic: DB7PR08MB3403:
x-microsoft-antispam-prvs: <DB7PR08MB34037749C5C7DA5258F4B409ED010@DB7PR08MB3403.eurprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 00462943DE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(136003)(396003)(39860400002)(346002)(376002)(40434004)(189003)(199004)(54014002)(81166006)(8676002)(25786009)(186003)(305945005)(31686004)(81156014)(99286004)(6916009)(6486002)(26005)(6436002)(8936002)(72206003)(66066001)(229853002)(66946007)(478600001)(66556008)(64756008)(66446008)(66476007)(73956011)(68736007)(316002)(7736002)(2616005)(11346002)(53936002)(446003)(2351001)(76176011)(52116002)(2906002)(6506007)(386003)(53546011)(5660300002)(3846002)(102836004)(44832011)(6116002)(71200400001)(71190400001)(486006)(256004)(36756003)(5024004)(14454004)(6246003)(31696002)(476003)(14444005)(2501003)(5640700003)(86362001)(6512007)(10944002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR08MB3403;
 H:DB7PR08MB3865.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 5AfP5X89sc7MFSwPNnsLl+oOC+HeqEghbLPMYL3A9oJ/L7j1PH9NHc+2ahocuaejk0/yHERwqIkXU3kN4BjfKdpGtI1mLFcIVsqjQyItpRIQBwt2ypQT360dZ0Q3rXTLtmOiY/4yJ0m4lzc/d6LszspVJJkijFM/ijjIC1lJseEPz37xerhTBjgLs1nLSIqg9YCd3oWEUu4OxVkSvnEGGuLMPv3gb0Ci969PSPqO+vM8RSSm1GNYvuotZ4slIx++GUFl+EMfxwCPixxata3i3EZ7v5JnXUw3U6KFO8lFonThduuuL4lCHBtbPA6DnBVPEca6O1Mc4W9YOolJG9lQHRVu1vFp5NJnBqzuuxvNGEY1ve7K0q/6GJhdA85mTpH6gK6n9V0D32zyCTiRaUB58Tv7QUaT7czozpaqjZq3uz4=
Content-ID: <EDE8B1315D482048966041D14E1775D9@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b08f02e0-f869-41b7-000b-08d6df509cd4
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 May 2019 07:31:04.3139 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Raphael.Gault@arm.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR08MB3403
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_003109_221457_6D312A1F 
X-CRM114-Status: GOOD (  22.48  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe05:0:0:0:627 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Josh,

On 5/23/19 12:11 AM, Josh Poimboeuf wrote:
> On Tue, May 21, 2019 at 12:50:57PM +0000, Raphael Gault wrote:
>> Hi Josh,
>>
>> Thanks for offering your help and sorry for the late answer.
>>
>> My understanding is that a table of offsets is built by GCC, those
>> offsets being scaled by 4 before adding them to the base label.
>> I believe the offsets are stored in the .rodata section. To find the
>> size of that table, it is needed to find a comparison, which can be
>> optimized out apprently. In that case the end of the array can be found
>> by locating labels pointing to data behind it (which is not 100% safe).
>>
>> On 5/16/19 3:29 PM, Josh Poimboeuf wrote:
>>> On Thu, May 16, 2019 at 11:36:39AM +0100, Raphael Gault wrote:
>>>> Noteworthy points:
>>>> * I still haven't figured out how to detect switch-tables on arm64. I
>>>> have a better understanding of them but still haven't implemented checks
>>>> as it doesn't look trivial at all.
>>>
>>> Switch tables were tricky to get right on x86.  If you share an example
>>> (or even just a .o file) I can take a look.  Hopefully they're somewhat
>>> similar to x86 switch tables.  Otherwise we may want to consider a
>>> different approach (for example maybe a GCC plugin could help annotate
>>> them).
>>>
>>
>> The case which made me realize the issue is the one of
>> arch/arm64/kernel/module.o:apply_relocate_add:
>>
>> ```
>> What seems to happen in the case of module.o is:
>>    334:   90000015        adrp    x21, 0 <do_reloc>
>> which retrieves the location of an offset in the rodata section, and a
>> bit later we do some extra computation with it in order to compute the
>> jump destination:
>>    3e0:   78625aa0        ldrh    w0, [x21, w2, uxtw #1]
>>    3e4:   10000061        adr     x1, 3f0 <apply_relocate_add+0xf8>
>>    3e8:   8b20a820        add     x0, x1, w0, sxth #2
>>    3ec:   d61f0000        br      x0
>> ```
>>
>> Please keep in mind that the actual offsets might vary.
>>
>> I'm happy to provide more details about what I have identified if you
>> want me to.
>
> Thanks.  I'll try to take a deeper look.
>
> Were these patches based on tip/master?  There were some minor conflicts
> in arch/arm64/Kconfig and arch/arm64/kernel/Makefile.
>

These patches were based on tip/core-objtool. I'll base the next version
on master. Sorry about that.

> I'm also getting a build failure on arm64:
>
>    make[4]: *** No rule to make target '/root/linux/tools/objtool/arch/arm64/arch_special.o', needed by '/root/linux/tools/objtool/arch/arm64/objtool-in.o'.  Stop
>
> It looks like arch/arm64/Build and arch/x86/Build are trying to build
> from arch_special.c which doesn't exist.
>

Indeed, I apologize deeply for this embarrassing mistake which will be
fixed very soon.

Thanks,

--
Raphael Gault
IMPORTANT NOTICE: The contents of this email and any attachments are confidential and may also be privileged. If you are not the intended recipient, please notify the sender immediately and do not disclose the contents to any other person, use it for any purpose, or store or copy the information in any medium. Thank you.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
