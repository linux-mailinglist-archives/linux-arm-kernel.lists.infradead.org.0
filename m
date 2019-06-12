Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E16B5425D3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 14:30:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UcAR/GgUheO8vRvsJp87M4G44MjKHW35iNZiBj6mmCE=; b=LOOubwj7brJAZz
	tuKQ6CWK4sn/PcuKGs/wMVCgYdtSiFRRntJeyVFLRpyMOy8M/p2CU7b2kUvlsLZFYLvZBKg+a/GBR
	w6nlvNyMMi3fDrO+PrlaTKkUwHm3MxC4PFOPeh+nXEjj5rigQlJM02xMw67LjGCVlYUI01jB8bFFH
	B9en5zbRJvoXW/EIi2Fmpgq38it/d+bPBDbE6nBIDTmncki17Hwxmr0hfn3ljxjcZrNqcubVuVOR8
	pVIdD4X2/LiRufydO2RxnOLUJ+pcgEavPKRI8rKB632HfgqjMmDge4+WbmaYnrFYUUe4rmYVCC1B/
	4l3UMSL3KkZkFxBm1JMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb2Oz-0002XF-5X; Wed, 12 Jun 2019 12:30:53 +0000
Received: from mail-eopbgr140052.outbound.protection.outlook.com
 ([40.107.14.52] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb2Oq-0002WF-KL
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 12:30:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JzsvQupAN+gcQeJKOQ2o7kyCHqxsW5uqpl6ZC5jXWRk=;
 b=lyyV+knAeziQlFW3VAseHnfQhMeAPOBow4sOExqkD8yABODe6h2ys+HaOKmmRD7k0RGvgQFtdmUr94ZzBTLNwpUr8yUWvXC4eDca9cYEcy4Wv9u2GhxYaD28QvlVs1Z2FPXYNvyTf5L5+PGLYMR+e6AVV0HQdQBoCWncF+7qt3U=
Received: from VE1PR08MB4637.eurprd08.prod.outlook.com (10.255.27.14) by
 VE1PR08MB4735.eurprd08.prod.outlook.com (10.255.112.74) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.13; Wed, 12 Jun 2019 12:30:36 +0000
Received: from VE1PR08MB4637.eurprd08.prod.outlook.com
 ([fe80::6574:1efb:6972:2b37]) by VE1PR08MB4637.eurprd08.prod.outlook.com
 ([fe80::6574:1efb:6972:2b37%6]) with mapi id 15.20.1965.017; Wed, 12 Jun 2019
 12:30:36 +0000
From: Szabolcs Nagy <Szabolcs.Nagy@arm.com>
To: Andrey Konovalov <andreyknvl@google.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-mm@kvack.org"
 <linux-mm@kvack.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "amd-gfx@lists.freedesktop.org"
 <amd-gfx@lists.freedesktop.org>, "dri-devel@lists.freedesktop.org"
 <dri-devel@lists.freedesktop.org>, "linux-rdma@vger.kernel.org"
 <linux-rdma@vger.kernel.org>, "linux-media@vger.kernel.org"
 <linux-media@vger.kernel.org>, "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>
Subject: Re: [PATCH v17 15/15] selftests, arm64: add a selftest for passing
 tagged pointers to kernel
Thread-Topic: [PATCH v17 15/15] selftests, arm64: add a selftest for passing
 tagged pointers to kernel
Thread-Index: AQHVIRQxA9mqrEC18UGUWJeO7iZYdKaX8xmA
Date: Wed, 12 Jun 2019 12:30:36 +0000
Message-ID: <7cd942c0-d4c1-0cf4-623a-bce6ef14d992@arm.com>
References: <cover.1560339705.git.andreyknvl@google.com>
 <e024234e652f23be4d76d63227de114e7def5dff.1560339705.git.andreyknvl@google.com>
In-Reply-To: <e024234e652f23be4d76d63227de114e7def5dff.1560339705.git.andreyknvl@google.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
x-originating-ip: [217.140.106.51]
x-clientproxiedby: LO2P265CA0242.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:8a::14) To VE1PR08MB4637.eurprd08.prod.outlook.com
 (2603:10a6:802:b1::14)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Szabolcs.Nagy@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 99aee353-e532-4d6e-08cc-08d6ef31c543
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VE1PR08MB4735; 
x-ms-traffictypediagnostic: VE1PR08MB4735:
nodisclaimer: True
x-microsoft-antispam-prvs: <VE1PR08MB47350D33F85267298368A6C2EDEC0@VE1PR08MB4735.eurprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0066D63CE6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(39860400002)(136003)(376002)(366004)(346002)(189003)(199004)(316002)(4326008)(31696002)(86362001)(7416002)(2201001)(6436002)(2501003)(36756003)(58126008)(65826007)(2906002)(6116002)(8936002)(6246003)(5660300002)(6486002)(3846002)(64126003)(81166006)(52116002)(72206003)(6506007)(54906003)(478600001)(7736002)(68736007)(81156014)(8676002)(99286004)(14454004)(53546011)(102836004)(446003)(66446008)(25786009)(229853002)(11346002)(110136005)(64756008)(65956001)(6512007)(44832011)(66946007)(71200400001)(65806001)(73956011)(53936002)(66556008)(486006)(66066001)(76176011)(256004)(2616005)(31686004)(71190400001)(66476007)(186003)(476003)(386003)(305945005)(26005)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR08MB4735;
 H:VE1PR08MB4637.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: rJ7Myflk/nypTg5f/73dOS7TRRDm+ghZMw88lkc6ZS3BTX3mf2YWXxdJzopWcQoL+pAtHst4LESGB/sFDMU+kDQCtDQ+N+Upw9oABmGwY3Jy1gBzj7BSNJp1sURm642fb5Pkq7vtCJgFYckY+lBpldYk8jnSQbto+SdV3gcndh4C0LoM49y2iwNfmuoKloc2y92N8CyhF511nLoJpEz/xiIcVGmKuwLZyB7L25ujm5gBnome5V0sIaDqhG0ksFSH0LDlVbPwP6o+x3QrNzJQNOKIyCDmikUF4ih2Nhjycxg4HponMHE7rOEo8kqCuaen/dv/NTUk+5qsdMeZHR3GpdeK0+GyDmLONCcLE3PYhZiy5U2URnQY+8ThUrKJeBBHOfWlb6Hbv3WyXRxWifzYMdF3ZI9EvU+z8dvP99lbyvY=
Content-ID: <2FA45C6A3FFA994DA2213028275DFA44@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 99aee353-e532-4d6e-08cc-08d6ef31c543
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jun 2019 12:30:36.6121 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Szabolcs.Nagy@arm.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR08MB4735
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_053044_671347_46A4F0AF 
X-CRM114-Status: GOOD (  15.91  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.52 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 Catalin Marinas <Catalin.Marinas@arm.com>, Will Deacon <Will.Deacon@arm.com>,
 Kostya Serebryany <kcc@google.com>, Khalid Aziz <khalid.aziz@oracle.com>,
 Felix Kuehling <Felix.Kuehling@amd.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, nd <nd@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 Dave P Martin <Dave.Martin@arm.com>, Evgeniy Stepanov <eugenis@google.com>,
 Kevin Brodsky <Kevin.Brodsky@arm.com>, Kees Cook <keescook@chromium.org>,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Dmitry Vyukov <dvyukov@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yishai Hadas <yishaih@mellanox.com>,
 Jens Wiklander <jens.wiklander@linaro.org>, Lee Smith <Lee.Smith@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, enh <enh@google.com>,
 Robin Murphy <Robin.Murphy@arm.com>,
 Christian Koenig <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/06/2019 12:43, Andrey Konovalov wrote:
> --- /dev/null
> +++ b/tools/testing/selftests/arm64/tags_lib.c
> @@ -0,0 +1,62 @@
> +// SPDX-License-Identifier: GPL-2.0
> +
> +#include <stdlib.h>
> +#include <sys/prctl.h>
> +
> +#define TAG_SHIFT	(56)
> +#define TAG_MASK	(0xffUL << TAG_SHIFT)
> +
> +#define PR_SET_TAGGED_ADDR_CTRL	55
> +#define PR_GET_TAGGED_ADDR_CTRL	56
> +#define PR_TAGGED_ADDR_ENABLE	(1UL << 0)
> +
> +void *__libc_malloc(size_t size);
> +void __libc_free(void *ptr);
> +void *__libc_realloc(void *ptr, size_t size);
> +void *__libc_calloc(size_t nmemb, size_t size);

this does not work on at least musl.

the most robust solution would be to implement
the malloc apis with mmap/munmap/mremap, if that's
too cumbersome then use dlsym RTLD_NEXT (although
that has the slight wart that in glibc it may call
calloc so wrapping calloc that way is tricky).

in simple linux tests i'd just use static or
stack allocations or mmap.

if a generic preloadable lib solution is needed
then do it properly with pthread_once to avoid
races etc.

> +
> +static void *tag_ptr(void *ptr)
> +{
> +	static int tagged_addr_err = 1;
> +	unsigned long tag = 0;
> +
> +	/*
> +	 * Note that this code is racy. We only use it as a part of a single
> +	 * threaded test application. Beware of using in multithreaded ones.
> +	 */
> +	if (tagged_addr_err == 1)
> +		tagged_addr_err = prctl(PR_SET_TAGGED_ADDR_CTRL,
> +				PR_TAGGED_ADDR_ENABLE, 0, 0, 0);
> +
> +	if (!ptr)
> +		return ptr;
> +	if (!tagged_addr_err)
> +		tag = rand() & 0xff;
> +
> +	return (void *)((unsigned long)ptr | (tag << TAG_SHIFT));
> +}
> +
> +static void *untag_ptr(void *ptr)
> +{
> +	return (void *)((unsigned long)ptr & ~TAG_MASK);
> +}
> +
> +void *malloc(size_t size)
> +{
> +	return tag_ptr(__libc_malloc(size));
> +}
...
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
