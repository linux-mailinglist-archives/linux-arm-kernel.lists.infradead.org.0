Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0C0142C73
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 18:37:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XpxxGKwBk0vtlniqSFQmFaijdOkH2exLmPehrqJy2rM=; b=qxq636W0RdZE1q
	5SHupndhg0Z/y+rZMGbt/j2lbt4OsZE9hqtHol1ZkiOv9BY0sn/aqJs0WlGl5lJZsOExvEEOmCNZ8
	gsjDFw4uzNoXb2BrMC55JQqCxDA2w/BLAHX8p+5NMEQ1bNToVGYbMilcKt7Ch4+EzA3qIDTkrn7Fq
	A8WEtpyKLvJ1xHre3cKroBt81mk56PnAs2ywLxQiYqWJ3cK0/YhqRzqI8sf3/habV1Wznq4vfjEUJ
	T972YN14pm8Ujp5adVuZtsEorMWY4tg4boxdsd3TKdQMBB681x1G7e2KL4yCsmMZym7GgDMfUKjju
	t4bxZlSFb9nj3GetMlNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb6Fm-00005n-C6; Wed, 12 Jun 2019 16:37:38 +0000
Received: from mail-eopbgr70071.outbound.protection.outlook.com ([40.107.7.71]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb6FZ-0008WB-96
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 16:37:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VQbqrJiISLa4uI+tR3Az4GTEGy3aPlGznHpcP/BLjOw=;
 b=jpcYyBpRvXHXGJW+ds2BHG3uEO6ViklqATgjygElrZZQVfNMmzW5f33jWollfbLypTF2YbxuH3pQ4gqTMoYCFSKKMDwOlNSvtYgdJo/tbbmqXalCT7NmQelg6T6M6qlpFQJ6RKYNwvh0Sk8e6mzQbzgvgYmGWeTAvXXwRR3FOAE=
Received: from VE1PR08MB4637.eurprd08.prod.outlook.com (10.255.27.14) by
 VE1PR08MB4895.eurprd08.prod.outlook.com (10.255.113.212) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.15; Wed, 12 Jun 2019 16:37:20 +0000
Received: from VE1PR08MB4637.eurprd08.prod.outlook.com
 ([fe80::6574:1efb:6972:2b37]) by VE1PR08MB4637.eurprd08.prod.outlook.com
 ([fe80::6574:1efb:6972:2b37%6]) with mapi id 15.20.1965.017; Wed, 12 Jun 2019
 16:37:20 +0000
From: Szabolcs Nagy <Szabolcs.Nagy@arm.com>
To: Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-doc@vger.kernel.org"
 <linux-doc@vger.kernel.org>, "linux-mm@kvack.org" <linux-mm@kvack.org>,
 "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v4 2/2] arm64: Relax
 Documentation/arm64/tagged-pointers.txt
Thread-Topic: [PATCH v4 2/2] arm64: Relax
 Documentation/arm64/tagged-pointers.txt
Thread-Index: AQHVIS/qgxSPAZqYS0apbOMTIFAdLaaYN9IA
Date: Wed, 12 Jun 2019 16:37:20 +0000
Message-ID: <ebe4fffd-c8a5-35d4-9370-a6573b2a7c87@arm.com>
References: <cover.1560339705.git.andreyknvl@google.com>
 <20190612142111.28161-1-vincenzo.frascino@arm.com>
 <20190612142111.28161-3-vincenzo.frascino@arm.com>
In-Reply-To: <20190612142111.28161-3-vincenzo.frascino@arm.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
x-originating-ip: [217.140.106.51]
x-clientproxiedby: LO2P265CA0101.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:c::17) To VE1PR08MB4637.eurprd08.prod.outlook.com
 (2603:10a6:802:b1::14)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Szabolcs.Nagy@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3fbc98d2-bb72-4fbf-3bbe-08d6ef543d41
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VE1PR08MB4895; 
x-ms-traffictypediagnostic: VE1PR08MB4895:
nodisclaimer: True
x-microsoft-antispam-prvs: <VE1PR08MB4895AD6CA6AB833ECD306246EDEC0@VE1PR08MB4895.eurprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0066D63CE6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(39860400002)(396003)(346002)(376002)(136003)(189003)(199004)(99286004)(64126003)(6486002)(81166006)(65826007)(7736002)(53936002)(2906002)(66446008)(14444005)(6512007)(256004)(8676002)(66946007)(2201001)(64756008)(229853002)(478600001)(66556008)(14454004)(66476007)(6436002)(305945005)(8936002)(2501003)(5660300002)(72206003)(81156014)(71190400001)(6506007)(58126008)(186003)(11346002)(316002)(2616005)(102836004)(386003)(110136005)(44832011)(54906003)(73956011)(52116002)(4326008)(486006)(71200400001)(65956001)(25786009)(446003)(476003)(53546011)(31696002)(36756003)(6246003)(66066001)(68736007)(31686004)(65806001)(26005)(6116002)(3846002)(86362001)(76176011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR08MB4895;
 H:VE1PR08MB4637.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ArZcTyYDkh4Z7xUs60YEzHWJP6LZxH/M83BeKyobfcMkD0rM0j0OXX38PHpnekSqaNpVHu1m0FnQTPiHp83NqC7kqJyimE1E3LerE5teGYkqeCW6d6q/EhbG11Ugfu+fobIML+DQKY+2ETWI2x36APPL6dI91zs3D1o7GZCtAWI+BXupLe6cLLNbC8v8ZMgYt3E5HYzoGSxdHGgAFRlo02PZaJOPH8UT7Lf7eG5oQQOHV/NHdGyb9l64oGqYqjqEX9nQ7al00lDw0cm0aRvGr4kNr7HToGH/HwA1X1RHtRMFVfA1spzf2jV+Oq8z73p6wndUHbXsm4ZAYyxU65Kmb7ch9J8Eld5eALaR+i/1foPVNnp+MWJedToB/ixFM7nI5QQt4qc8uOn/l+1y5mnVa7TZChVe8r8zZdbNSrvHajo=
Content-ID: <BA99E85AC8B5C34B87124BD326392332@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3fbc98d2-bb72-4fbf-3bbe-08d6ef543d41
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jun 2019 16:37:20.6828 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Szabolcs.Nagy@arm.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR08MB4895
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_093725_323089_1E3261E9 
X-CRM114-Status: GOOD (  21.10  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.71 listed in list.dnswl.org]
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
Cc: Catalin Marinas <Catalin.Marinas@arm.com>, nd <nd@arm.com>,
 Will Deacon <Will.Deacon@arm.com>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Andrey Konovalov <andreyknvl@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/06/2019 15:21, Vincenzo Frascino wrote:
> On arm64 the TCR_EL1.TBI0 bit has been always enabled hence
> the userspace (EL0) is allowed to set a non-zero value in the
> top byte but the resulting pointers are not allowed at the
> user-kernel syscall ABI boundary.
> 
> With the relaxed ABI proposed in this set, it is now possible to pass
> tagged pointers to the syscalls, when these pointers are in memory
> ranges obtained by an anonymous (MAP_ANONYMOUS) mmap().
> 
> Relax the requirements described in tagged-pointers.txt to be compliant
> with the behaviours guaranteed by the ARM64 Tagged Address ABI.
> 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will.deacon@arm.com>
> CC: Andrey Konovalov <andreyknvl@google.com>
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> ---
>  Documentation/arm64/tagged-pointers.txt | 23 ++++++++++++++++-------
>  1 file changed, 16 insertions(+), 7 deletions(-)
> 
> diff --git a/Documentation/arm64/tagged-pointers.txt b/Documentation/arm64/tagged-pointers.txt
> index a25a99e82bb1..db58a7e95805 100644
> --- a/Documentation/arm64/tagged-pointers.txt
> +++ b/Documentation/arm64/tagged-pointers.txt
> @@ -18,7 +18,8 @@ Passing tagged addresses to the kernel
>  --------------------------------------
>  
>  All interpretation of userspace memory addresses by the kernel assumes
> -an address tag of 0x00.
> +an address tag of 0x00, unless the userspace opts-in the ARM64 Tagged
> +Address ABI via the PR_SET_TAGGED_ADDR_CTRL prctl().
>  
>  This includes, but is not limited to, addresses found in:
>  
> @@ -31,18 +32,23 @@ This includes, but is not limited to, addresses found in:
>   - the frame pointer (x29) and frame records, e.g. when interpreting
>     them to generate a backtrace or call graph.
>  
> -Using non-zero address tags in any of these locations may result in an
> -error code being returned, a (fatal) signal being raised, or other modes
> -of failure.
> +Using non-zero address tags in any of these locations when the
> +userspace application did not opt-in to the ARM64 Tagged Address ABI,
> +may result in an error code being returned, a (fatal) signal being raised,
> +or other modes of failure.
>  
> -For these reasons, passing non-zero address tags to the kernel via
> -system calls is forbidden, and using a non-zero address tag for sp is
> -strongly discouraged.
> +For these reasons, when the userspace application did not opt-in, passing
> +non-zero address tags to the kernel via system calls is forbidden, and using
> +a non-zero address tag for sp is strongly discouraged.
>  
>  Programs maintaining a frame pointer and frame records that use non-zero
>  address tags may suffer impaired or inaccurate debug and profiling
>  visibility.
>  
> +A definition of the meaning of ARM64 Tagged Address ABI and of the
> +guarantees that the ABI provides when the userspace opts-in via prctl()
> +can be found in: Documentation/arm64/tagged-address-abi.txt.
> +

OK.

>  
>  Preserving tags
>  ---------------
> @@ -57,6 +63,9 @@ be preserved.
>  The architecture prevents the use of a tagged PC, so the upper byte will
>  be set to a sign-extension of bit 55 on exception return.
>  
> +This behaviours are preserved even when the the userspace opts-in the ARM64

these behaviours.

> +Tagged Address ABI via the PR_SET_TAGGED_ADDR_CTRL prctl().
> +
>  
>  Other considerations
>  --------------------
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
