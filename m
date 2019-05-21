Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D175C24F38
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 14:51:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Z3JbENh4NELvBHI1B2AoJ8xNdvld2yzNdBS73aSiP0=; b=QZ2t4T/TQ4TW37
	DeB5RWLXVcfJ945WP0NKCE5OUCJvVVpVjLvLZytlCiVlSTPKspVgFldyfA5pwOWPuI/yhVus6KEaP
	TZzBlk9NETsWo63uB6X3P7cQu6twFyoL5qkD10lhqKp/qRGFpK5zi6m+3psTP5DABICbyyqSBsbCG
	OmZ8U2p332gapwqofozELrRhv68fu4tTReJAv2D7vTrBY0hIkQgrIzehk/lW8TQ/W8WUpF+56u8eL
	TGE9gel3fa1XyOVlwkDrMBN21lWq40oZKn5HZfUJ1slJFEQAGVAn3NgdPHreb2CH0xw+Ydk4qRLoG
	KyRPbQeElquAXyeDYqjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT4Ea-0007Pw-4E; Tue, 21 May 2019 12:51:12 +0000
Received: from mail-eopbgr30067.outbound.protection.outlook.com ([40.107.3.67]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT4EQ-0007Hw-QB
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 12:51:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WX+B1XPU8Uj+Estbi0WpXCgbgJrpyoC40UivxMNAfQ0=;
 b=ezqOs1QNw9RhhewhAdF+kZS+OF1GFuI6AoGEUqYErsHSmfwLMPD8QO1NAu0rs9RD/8asj4u76n1UjHYSJIsMjz4ECAz/iByOczZGVF2u0k4RCXMHludG2r7hkgr1JD4EaBoieU5rgt13LbOgL+81dmvI0sLJXnWAXB5oKRL2k2s=
Received: from DB7PR08MB3865.eurprd08.prod.outlook.com (20.178.84.149) by
 DB7PR08MB3468.eurprd08.prod.outlook.com (20.176.238.153) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.18; Tue, 21 May 2019 12:50:58 +0000
Received: from DB7PR08MB3865.eurprd08.prod.outlook.com
 ([fe80::1c44:4e1b:c1e1:543e]) by DB7PR08MB3865.eurprd08.prod.outlook.com
 ([fe80::1c44:4e1b:c1e1:543e%7]) with mapi id 15.20.1900.020; Tue, 21 May 2019
 12:50:58 +0000
From: Raphael Gault <Raphael.Gault@arm.com>
To: Josh Poimboeuf <jpoimboe@redhat.com>
Subject: Re: [RFC V2 00/16] objtool: Add support for Arm64
Thread-Topic: [RFC V2 00/16] objtool: Add support for Arm64
Thread-Index: AQHVC9NuTdVCDaa9ZEK795yYRfBvDKZtz9WAgAfALQA=
Date: Tue, 21 May 2019 12:50:57 +0000
Message-ID: <26692833-0e5b-cfe0-0ffd-c2c2f0815935@arm.com>
References: <20190516103655.5509-1-raphael.gault@arm.com>
 <20190516142917.nuhh6dmfiufxqzls@treble>
In-Reply-To: <20190516142917.nuhh6dmfiufxqzls@treble>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LO2P265CA0010.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:62::22) To DB7PR08MB3865.eurprd08.prod.outlook.com
 (2603:10a6:10:32::21)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Raphael.Gault@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [217.140.106.53]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2bac8ef6-c30a-479c-dfad-08d6ddeaf82f
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB7PR08MB3468; 
x-ms-traffictypediagnostic: DB7PR08MB3468:
x-microsoft-antispam-prvs: <DB7PR08MB3468758FA32DA72D354D550BED070@DB7PR08MB3468.eurprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0044C17179
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(396003)(346002)(136003)(366004)(376002)(40434004)(199004)(189003)(54014002)(478600001)(305945005)(8676002)(81166006)(81156014)(14454004)(72206003)(6512007)(316002)(8936002)(66066001)(7736002)(66946007)(66446008)(66476007)(73956011)(71200400001)(71190400001)(6436002)(64756008)(66556008)(6916009)(36756003)(99286004)(102836004)(6116002)(54906003)(2906002)(3846002)(486006)(86362001)(2616005)(446003)(26005)(14444005)(5024004)(11346002)(31696002)(44832011)(476003)(256004)(186003)(31686004)(53936002)(6486002)(25786009)(5660300002)(229853002)(52116002)(53546011)(76176011)(6506007)(386003)(4326008)(6246003)(68736007)(10944002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR08MB3468;
 H:DB7PR08MB3865.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 5yUjSRvVTsHz2zohfBstl5qD4AjV0iAvAGz5daTDDi71Yhjtm5+9thFdTAc8EdWJuoD0XtQd9yDGheI/Lyvm/37+Sssa4HQvGvpmyHUao3I1zA4HyPLZw/7us4VHnypGZ9t6+aqR80voTjDZQNZ9votFnpnGgOz807f1CxD4vUc/x2s1SN4SF7IxaIOVq62XPRnJUKEGUiRMoQfdDkWLj8a8na1H9Wj84X4MJm2CjpKvBbhX6Xu3emd4r63Su2pxB1zZqJdBSPOnb1eqmIw+Ka6tM8g9KWSGRtreJB7LVRxJfbkySgOSDIrHcGioJRh3Lm6UXyrItcGQ1/8EQzvWGllclbyXQmefDr9Z9HfgtqDWutHJEWH/hVYLDmApdxFIos7KctLcxwPbody3xi6lB2OEoiyCKof8GrVSFqY8zXQ=
Content-ID: <3B927C8926921641BAA5042413FC236B@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2bac8ef6-c30a-479c-dfad-08d6ddeaf82f
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2019 12:50:57.9154 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR08MB3468
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_055104_922605_461BC82C 
X-CRM114-Status: GOOD (  17.39  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.67 listed in list.dnswl.org]
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

Thanks for offering your help and sorry for the late answer.

My understanding is that a table of offsets is built by GCC, those
offsets being scaled by 4 before adding them to the base label.
I believe the offsets are stored in the .rodata section. To find the
size of that table, it is needed to find a comparison, which can be
optimized out apprently. In that case the end of the array can be found
by locating labels pointing to data behind it (which is not 100% safe).

On 5/16/19 3:29 PM, Josh Poimboeuf wrote:
> On Thu, May 16, 2019 at 11:36:39AM +0100, Raphael Gault wrote:
>> Noteworthy points:
>> * I still haven't figured out how to detect switch-tables on arm64. I
>> have a better understanding of them but still haven't implemented checks
>> as it doesn't look trivial at all.
>
> Switch tables were tricky to get right on x86.  If you share an example
> (or even just a .o file) I can take a look.  Hopefully they're somewhat
> similar to x86 switch tables.  Otherwise we may want to consider a
> different approach (for example maybe a GCC plugin could help annotate
> them).
>

The case which made me realize the issue is the one of
arch/arm64/kernel/module.o:apply_relocate_add:

```
What seems to happen in the case of module.o is:
  334:   90000015        adrp    x21, 0 <do_reloc>
which retrieves the location of an offset in the rodata section, and a
bit later we do some extra computation with it in order to compute the
jump destination:
  3e0:   78625aa0        ldrh    w0, [x21, w2, uxtw #1]
  3e4:   10000061        adr     x1, 3f0 <apply_relocate_add+0xf8>
  3e8:   8b20a820        add     x0, x1, w0, sxth #2
  3ec:   d61f0000        br      x0
```

Please keep in mind that the actual offsets might vary.

I'm happy to provide more details about what I have identified if you
want me to.

Thanks,

--
Raphael Gault
IMPORTANT NOTICE: The contents of this email and any attachments are confidential and may also be privileged. If you are not the intended recipient, please notify the sender immediately and do not disclose the contents to any other person, use it for any purpose, or store or copy the information in any medium. Thank you.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
