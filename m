Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12643345D1
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 13:47:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=He7QxSs9Pth4/xgIWUf2ClGKb3ryqBKoib64sqD+Es8=; b=IopSLUZvpUZN46
	zTr3DYN8J9Vfq2j3yr15VciXn243Cqw27OADeAMhFZr9a2kAnFCs7bm+KLAtwZpuD2MGEOsHKKc+9
	OGu2h9A+7Teyj4gYzEwJjlZOIiO28NjFlvZx+ZanXUwY6rfSSO/KifPW6f07L2wToae4CQPVdBTPT
	Shs907khD1EwD1CvqenzEA6RSrmv78RuErU0rRxfWfojOq9Q+p0zrSSmvvrhKST9HC5nNOLDlmYTb
	uw25NPwQLlruhKUAb1IGNjHadrghFXyIUQvwiKt75OSzArYF+AVkK2ydmIKwQAbCZ2kjoRpCPpsc6
	SxB8w42fZsGI1GLupItA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY7u5-0000qM-1F; Tue, 04 Jun 2019 11:46:57 +0000
Received: from mail-eopbgr710080.outbound.protection.outlook.com
 ([40.107.71.80] helo=NAM05-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY7tv-0000lX-QN
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 11:46:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amdcloud.onmicrosoft.com; s=selector1-amdcloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DqUjcMcbMs7i/otuz38agqtYdmvPCMOB96DAhTDcH7M=;
 b=ynNgfZ2/NknECAm/daCNfCH29Z1DxAsuwfFuBhdlp1+VB3OacXYoJ26WcvWqRM+bPN33FbGpNWdzgF+TDJydRUFhqWePfwJaUUL01/yI/w9fdPPebdgskMYB8omtC5fOo2fAlv4Hg0Z1OZL8yLLuUfO003hADVZfXaLXk34wF/U=
Received: from DM5PR12MB1546.namprd12.prod.outlook.com (10.172.36.23) by
 DM5PR12MB2454.namprd12.prod.outlook.com (52.132.141.35) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1943.22; Tue, 4 Jun 2019 11:46:39 +0000
Received: from DM5PR12MB1546.namprd12.prod.outlook.com
 ([fe80::e1b1:5b6f:b2df:afa5]) by DM5PR12MB1546.namprd12.prod.outlook.com
 ([fe80::e1b1:5b6f:b2df:afa5%7]) with mapi id 15.20.1943.018; Tue, 4 Jun 2019
 11:46:39 +0000
From: "Koenig, Christian" <Christian.Koenig@amd.com>
To: Andrey Konovalov <andreyknvl@google.com>, Linus Torvalds
 <torvalds@linux-foundation.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "sparclinux@vger.kernel.org"
 <sparclinux@vger.kernel.org>, "linux-mm@kvack.org" <linux-mm@kvack.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] uaccess: add noop untagged_addr definition
Thread-Topic: [PATCH] uaccess: add noop untagged_addr definition
Thread-Index: AQHVGsrrPMdhu+tmg0GkOarNrJ33baaLYLQA
Date: Tue, 4 Jun 2019 11:46:39 +0000
Message-ID: <d74b1621-70a2-94a0-e24b-dae32adc457d@amd.com>
References: <8ab5cd1813b0890f8780018e9784838456ace49e.1559648669.git.andreyknvl@google.com>
In-Reply-To: <8ab5cd1813b0890f8780018e9784838456ace49e.1559648669.git.andreyknvl@google.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
x-originating-ip: [2a02:908:1252:fb60:be8a:bd56:1f94:86e7]
x-clientproxiedby: AM0PR02CA0063.eurprd02.prod.outlook.com
 (2603:10a6:208:d2::40) To DM5PR12MB1546.namprd12.prod.outlook.com
 (2603:10b6:4:8::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Christian.Koenig@amd.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b5afe70f-bd4c-4ef0-b2cd-08d6e8e24e58
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DM5PR12MB2454; 
x-ms-traffictypediagnostic: DM5PR12MB2454:
x-microsoft-antispam-prvs: <DM5PR12MB24547D2498D24083A63E19D283150@DM5PR12MB2454.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0058ABBBC7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(396003)(376002)(39860400002)(346002)(366004)(189003)(199004)(102836004)(5660300002)(2501003)(64126003)(8676002)(81156014)(6116002)(186003)(4326008)(76176011)(8936002)(6246003)(81166006)(71200400001)(71190400001)(110136005)(54906003)(31696002)(2201001)(2906002)(86362001)(316002)(58126008)(53936002)(256004)(478600001)(65806001)(46003)(72206003)(52116002)(6506007)(386003)(2616005)(11346002)(7406005)(36756003)(99286004)(66446008)(476003)(66946007)(6512007)(6436002)(66476007)(446003)(66556008)(64756008)(6486002)(25786009)(31686004)(305945005)(14454004)(68736007)(65826007)(65956001)(7416002)(7736002)(73956011)(229853002)(486006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR12MB2454;
 H:DM5PR12MB1546.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: BTUYgxf6LVWOUaiXhcDIXPqKTGV8JQlWKUiPF7BHdbvpw2EvuLfEKVhud6WGOw6XmPZVynz+zFRdlpYHRE+F115S+IxcRZYuBeIszGrpu7pC+Mi3Ag3+SBFn3MMIDq6u1vKLEWfXeseTdLxby6CeBXAVKtxYbNkKrIIB7V9aVaK8l8wAfEPyVezvSDCjDWmnwomXsU5xfFG5P8PaLwINRy3oGBUDJZpLI1NUyE2GNqzPywtHVYVZMAeYxK0vjd6mWOG5cJax0LwhWWa/LNNXowMjWOfP1+QGM5GIHhT34T11+CzGzg2QOSyJUHRWAbLMrgwWYBL6yToCAnpGvRtevQxUkyvCv3ibiDQogv5Xmh6DezwDp6vDKQStVUSjqpID+69S03umWcSxh5dt31HX3NwqHJJagQ6m5NyGv2bCVFc=
Content-ID: <71D9DBF4A3B16B4F887771F2B480FC3F@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b5afe70f-bd4c-4ef0-b2cd-08d6e8e24e58
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2019 11:46:39.8145 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ckoenig@amd.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR12MB2454
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_044647_867932_0CCDC077 
X-CRM114-Status: GOOD (  18.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.71.80 listed in list.dnswl.org]
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
 Kostya Serebryany <kcc@google.com>, Khalid Aziz <khalid.aziz@oracle.com>,
 "Kuehling, 
 Felix" <Felix.Kuehling@amd.com>, Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 Dave Martin <Dave.Martin@arm.com>, Evgeniy Stepanov <eugenis@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Kees Cook <keescook@chromium.org>,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Dmitry Vyukov <dvyukov@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yishai Hadas <yishaih@mellanox.com>, Lee Smith <Lee.Smith@arm.com>, "Deucher,
 Alexander" <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, enh <enh@google.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Jens Wiklander <jens.wiklander@linaro.org>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am 04.06.19 um 13:44 schrieb Andrey Konovalov:
> Architectures that support memory tagging have a need to perform untagging
> (stripping the tag) in various parts of the kernel. This patch adds an
> untagged_addr() macro, which is defined as noop for architectures that do
> not support memory tagging. The oncoming patch series will define it at
> least for sparc64 and arm64.
>
> Acked-by: Catalin Marinas <catalin.marinas@arm.com>
> Reviewed-by: Khalid Aziz <khalid.aziz@oracle.com>
> Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
> ---
>   include/linux/mm.h | 4 ++++
>   1 file changed, 4 insertions(+)
>
> diff --git a/include/linux/mm.h b/include/linux/mm.h
> index 0e8834ac32b7..949d43e9c0b6 100644
> --- a/include/linux/mm.h
> +++ b/include/linux/mm.h
> @@ -99,6 +99,10 @@ extern int mmap_rnd_compat_bits __read_mostly;
>   #include <asm/pgtable.h>
>   #include <asm/processor.h>
>   
> +#ifndef untagged_addr
> +#define untagged_addr(addr) (addr)
> +#endif
> +

Maybe add a comment what tagging actually is? Cause that is not really 
obvious from the context.

Christian.

>   #ifndef __pa_symbol
>   #define __pa_symbol(x)  __pa(RELOC_HIDE((unsigned long)(x), 0))
>   #endif

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
