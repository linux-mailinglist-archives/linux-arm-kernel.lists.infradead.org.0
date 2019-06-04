Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEA61345E8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 13:50:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/M1UnjVXKhWRAFrR1jDf/P5YSlpeXmyRvlg+sFNmY7I=; b=qjDwjM3EagxMcl
	rHMvax7kNntiRzm8AQUUF8yW6DPggzL3SXQecPrXGVugE/W8mhl3POp6v9B6e7EgA6tLvz3z4sRO5
	0G+1E8IX6f25UVRyR4/38r4njlIjLIoFFu9fM1O0nkG6l5UM3oNfo0BsbFQutnYgIm0WpRwoSy5EF
	R1r4qfvgspxLkc4EyzCB+LWuGKyjJdPwXhhY0sszZPphhaH5Yx1+O1F+5sdszFGohT5mEBuw4pA+G
	I+ad1qv7FDTPSmNNr4i0iEryUhNwq469P1UGOn5TYVSwbmcYwP8KCZotv0gKr9HgjakAkIwMEdNvV
	DwTUw4+vVZamz6+d7anw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY7xA-0001cK-7j; Tue, 04 Jun 2019 11:50:08 +0000
Received: from mail-bn3nam04on0618.outbound.protection.outlook.com
 ([2a01:111:f400:fe4e::618]
 helo=NAM04-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY7wy-0001ZM-UX
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 11:49:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amdcloud.onmicrosoft.com; s=selector1-amdcloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AuvUjLTuUv06KHwWBNifnh3rfmmJqB0eNoQmoWoPShM=;
 b=08LvuO6nLT19eMwPqCH/JHlwPE3DwNgnlsl2k7pTfzleHgzS2iJAnFtTvYg3BL7PVRXdi+G3MFLUWXitq6BDoqKMIYUj58W24YWtmo6PTEAHWvmKrWjA8+rle3r8zIYtKe2W6ZMG8sj2+31r+4jsWGa+vvrpuj69i86DQhZs070=
Received: from DM5PR12MB1546.namprd12.prod.outlook.com (10.172.36.23) by
 DM5PR12MB1865.namprd12.prod.outlook.com (10.175.87.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1943.22; Tue, 4 Jun 2019 11:49:52 +0000
Received: from DM5PR12MB1546.namprd12.prod.outlook.com
 ([fe80::e1b1:5b6f:b2df:afa5]) by DM5PR12MB1546.namprd12.prod.outlook.com
 ([fe80::e1b1:5b6f:b2df:afa5%7]) with mapi id 15.20.1943.018; Tue, 4 Jun 2019
 11:49:52 +0000
From: "Koenig, Christian" <Christian.Koenig@amd.com>
To: Andrey Konovalov <andreyknvl@google.com>
Subject: Re: [PATCH] uaccess: add noop untagged_addr definition
Thread-Topic: [PATCH] uaccess: add noop untagged_addr definition
Thread-Index: AQHVGsrrPMdhu+tmg0GkOarNrJ33baaLYLQAgAAAcYCAAAB0AA==
Date: Tue, 4 Jun 2019 11:49:52 +0000
Message-ID: <ff73058a-f57b-526b-af53-c0e30b7b1bc1@amd.com>
References: <8ab5cd1813b0890f8780018e9784838456ace49e.1559648669.git.andreyknvl@google.com>
 <d74b1621-70a2-94a0-e24b-dae32adc457d@amd.com>
 <CAAeHK+w0_9QdxCJXEf=6nMgZpsb8NyrAaMO010Hh86TW75jJvw@mail.gmail.com>
In-Reply-To: <CAAeHK+w0_9QdxCJXEf=6nMgZpsb8NyrAaMO010Hh86TW75jJvw@mail.gmail.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
x-originating-ip: [2a02:908:1252:fb60:be8a:bd56:1f94:86e7]
x-clientproxiedby: AM6P195CA0004.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:209:81::17) To DM5PR12MB1546.namprd12.prod.outlook.com
 (2603:10b6:4:8::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Christian.Koenig@amd.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b797c529-0a71-4368-46eb-08d6e8e2c115
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:DM5PR12MB1865; 
x-ms-traffictypediagnostic: DM5PR12MB1865:
x-microsoft-antispam-prvs: <DM5PR12MB1865BD38A6AC9E0DE3677D0283150@DM5PR12MB1865.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0058ABBBC7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(346002)(376002)(136003)(396003)(39860400002)(189003)(199004)(6486002)(65806001)(46003)(66446008)(8936002)(65956001)(2616005)(7736002)(476003)(66556008)(71200400001)(71190400001)(52116002)(81166006)(6436002)(7406005)(64756008)(229853002)(6512007)(81156014)(31696002)(14454004)(72206003)(316002)(66476007)(86362001)(4326008)(53936002)(8676002)(478600001)(36756003)(65826007)(99286004)(6506007)(256004)(6116002)(5660300002)(7416002)(54906003)(76176011)(305945005)(186003)(66946007)(73956011)(58126008)(11346002)(64126003)(68736007)(53546011)(31686004)(486006)(386003)(6916009)(102836004)(6246003)(2906002)(25786009)(446003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR12MB1865;
 H:DM5PR12MB1546.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 14omzt9GIzLZUiQb3h6pGr9c5vOsiSoeWiuS9rOVo2NJXEndL9vpilTVBtxnECz0dUf7+DLZcPeXxb58B9jDZb7k5raKDR769KHtEr67sq19O8mDLmNc27LQkKTPWgXH8b76BGLA/XKceBqIJzN0rmhZJKLfj6iiHNNwdZN6ws697P0AfrH+XnOlPo1wSsf0EjJShvO1EiT1x5dkcfQmKZygt+Ug5RqmyrHD0LEH2VxwLynFlKTxnSUPhdvgL5kiztR7R9lCdJZiDYCn190kDIuPUVMcvmOdWG7mnPNxlRvVZkt8aZB54rsMOcUhqxEY9UL/k0NVKLMpTTtwpsyilZf/TMp8FK6wJxSa+DeoPs8FV1QAKVQwmZFyP55LnD3MMr4YmiUF+qyj9IlXhD/6s4xLnUIAX95bW8ZbeQ1/fv8=
Content-ID: <18F83B8CBEA40C4E8B90F01B157267FB@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b797c529-0a71-4368-46eb-08d6e8e2c115
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2019 11:49:52.4528 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ckoenig@amd.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR12MB1865
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_044956_988147_10DAF4D4 
X-CRM114-Status: GOOD (  16.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Szabolcs Nagy <Szabolcs.Nagy@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 Khalid Aziz <khalid.aziz@oracle.com>,
 "sparclinux@vger.kernel.org" <sparclinux@vger.kernel.org>, "Kuehling, 
 Felix" <Felix.Kuehling@amd.com>, Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 Dmitry Vyukov <dvyukov@google.com>, Dave Martin <Dave.Martin@arm.com>,
 Evgeniy Stepanov <eugenis@google.com>, Kevin Brodsky <kevin.brodsky@arm.com>,
 Kees Cook <keescook@chromium.org>, Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Kostya Serebryany <kcc@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yishai Hadas <yishaih@mellanox.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Lee Smith <Lee.Smith@arm.com>, "Deucher,
 Alexander" <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, enh <enh@google.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Jens Wiklander <jens.wiklander@linaro.org>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am 04.06.19 um 13:48 schrieb Andrey Konovalov:
> On Tue, Jun 4, 2019 at 1:46 PM Koenig, Christian
> <Christian.Koenig@amd.com> wrote:
>> Am 04.06.19 um 13:44 schrieb Andrey Konovalov:
>>> Architectures that support memory tagging have a need to perform untagging
>>> (stripping the tag) in various parts of the kernel. This patch adds an
>>> untagged_addr() macro, which is defined as noop for architectures that do
>>> not support memory tagging. The oncoming patch series will define it at
>>> least for sparc64 and arm64.
>>>
>>> Acked-by: Catalin Marinas <catalin.marinas@arm.com>
>>> Reviewed-by: Khalid Aziz <khalid.aziz@oracle.com>
>>> Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
>>> ---
>>>    include/linux/mm.h | 4 ++++
>>>    1 file changed, 4 insertions(+)
>>>
>>> diff --git a/include/linux/mm.h b/include/linux/mm.h
>>> index 0e8834ac32b7..949d43e9c0b6 100644
>>> --- a/include/linux/mm.h
>>> +++ b/include/linux/mm.h
>>> @@ -99,6 +99,10 @@ extern int mmap_rnd_compat_bits __read_mostly;
>>>    #include <asm/pgtable.h>
>>>    #include <asm/processor.h>
>>>
>>> +#ifndef untagged_addr
>>> +#define untagged_addr(addr) (addr)
>>> +#endif
>>> +
>> Maybe add a comment what tagging actually is? Cause that is not really
>> obvious from the context.
> Hi,
>
> Do you mean a comment in the code or an explanation in the patch description?

The code, the patch description actually sounds good to me.

Christian.

>
> Thanks!
>
>> Christian.
>>
>>>    #ifndef __pa_symbol
>>>    #define __pa_symbol(x)  __pa(RELOC_HIDE((unsigned long)(x), 0))
>>>    #endif

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
