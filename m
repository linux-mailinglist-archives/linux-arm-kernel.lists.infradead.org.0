Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD46F42C4F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 18:30:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cw4f+SisaO+QjqxbIEHtcIVzJGvtZdFP/aktouOWh9I=; b=ZttLRt+UHBCRJ0
	i+QIj8LkmCMSplDx/Z4ZiUjgi+Ayl4joOB9C7AhziAfcUoFEJck+vSVOCAaTxzCPVJRHOnQ/h/x5m
	fP9zjzl+R0GWBOwS6QplPPWRgZGjLFQtR0mT2j7wGRhpBfu0wQHJX481yd9NZHfgi/Bn2jhVXqRrG
	/qPsMpdPnFzTbWhV4sCGn5Pp1xmQog9CmzATfyR5q5xyWO9Vu3UaIM+AspuHvUNyz68+GARQd63B1
	O2xbCkZPyeFuZ5IA9IW+NP5f6SebTOzCz+lqyIucg3ybSbBzmthUUiuVnZjjOW/r0lzGEhLwrjuDM
	avGvhbwTZnIl2xLKSDHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb69H-0004h9-P4; Wed, 12 Jun 2019 16:30:55 +0000
Received: from mail-eopbgr50060.outbound.protection.outlook.com ([40.107.5.60]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb691-0004fQ-Ia
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 16:30:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ncffr8ucm/9RwM9/2pyUDUeJp+BVq2pphMnhUfpcM6Y=;
 b=pRLRf+XNxm3uE8xmMwk8Dg4e1gzmD6Gr8/88mloKrvMiadmeIySIsS3MZZuygzx9bKgCEAfpXsMyLl0aNSuGB2uDx8/RucAsdHNCq0h6NI/TU0gMpUiYXxRKfi000i52lpHb+JeEmTwocQISME98RmqD0cBvmXeJjg3nP7AY/Vc=
Received: from VE1PR08MB4637.eurprd08.prod.outlook.com (10.255.27.14) by
 VE1PR08MB4799.eurprd08.prod.outlook.com (10.255.112.203) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.15; Wed, 12 Jun 2019 16:30:35 +0000
Received: from VE1PR08MB4637.eurprd08.prod.outlook.com
 ([fe80::6574:1efb:6972:2b37]) by VE1PR08MB4637.eurprd08.prod.outlook.com
 ([fe80::6574:1efb:6972:2b37%6]) with mapi id 15.20.1965.017; Wed, 12 Jun 2019
 16:30:35 +0000
From: Szabolcs Nagy <Szabolcs.Nagy@arm.com>
To: Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-doc@vger.kernel.org"
 <linux-doc@vger.kernel.org>, "linux-mm@kvack.org" <linux-mm@kvack.org>,
 "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v4 1/2] arm64: Define
 Documentation/arm64/tagged-address-abi.txt
Thread-Topic: [PATCH v4 1/2] arm64: Define
 Documentation/arm64/tagged-address-abi.txt
Thread-Index: AQHVIS/jNTMPiNHftkW5Mto9lMl3oKaYNfCA
Date: Wed, 12 Jun 2019 16:30:34 +0000
Message-ID: <a90da586-8ff6-4bed-d940-9306d517a18c@arm.com>
References: <cover.1560339705.git.andreyknvl@google.com>
 <20190612142111.28161-1-vincenzo.frascino@arm.com>
 <20190612142111.28161-2-vincenzo.frascino@arm.com>
In-Reply-To: <20190612142111.28161-2-vincenzo.frascino@arm.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
x-originating-ip: [217.140.106.51]
x-clientproxiedby: LO2P265CA0447.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:e::27) To VE1PR08MB4637.eurprd08.prod.outlook.com
 (2603:10a6:802:b1::14)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Szabolcs.Nagy@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: dbf6d76f-efbe-4260-e688-08d6ef534b80
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VE1PR08MB4799; 
x-ms-traffictypediagnostic: VE1PR08MB4799:
nodisclaimer: True
x-microsoft-antispam-prvs: <VE1PR08MB47998090B67B43085F32CBD3EDEC0@VE1PR08MB4799.eurprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0066D63CE6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(39860400002)(396003)(366004)(346002)(376002)(199004)(189003)(386003)(64126003)(66066001)(229853002)(25786009)(65806001)(6512007)(66476007)(66446008)(81166006)(26005)(66946007)(58126008)(73956011)(64756008)(8936002)(256004)(3846002)(66556008)(6116002)(102836004)(31686004)(81156014)(4326008)(6246003)(99286004)(6486002)(2906002)(53936002)(71200400001)(71190400001)(36756003)(76176011)(6506007)(53546011)(52116002)(6436002)(14454004)(305945005)(486006)(8676002)(476003)(14444005)(478600001)(44832011)(68736007)(31696002)(316002)(110136005)(186003)(446003)(7736002)(54906003)(86362001)(2616005)(11346002)(72206003)(2201001)(65826007)(2501003)(5660300002)(65956001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR08MB4799;
 H:VE1PR08MB4637.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: qGopdaSsNzczqizDbqa+McsMu1mGevfKHFAMAie4WTruLkO+bO4oncXDpHeQ+sM+9Of9VZVu65MKii52lL4zgWYktkrPTIFAovR5S0PVSXVbAvSzpS3bZXZdbWR+4A1pRYno4fKM4aj1RsHUme6Tsyyf/W7SZQfioQthg9c5ZtgN1XoDHIx/p8EOAK8KaCWUAXTj2y4JbVpzKX7bn/iSMVrVoXMjL683NORtOGtmMNbOUizWQjbb+H8cUsgx8AC64CDMs1gqcyI8+v8x4AEjfA5YRqJxTcgrASdtRhlMTKKeBFa9Jyv7t4M9H1yBOwGBL7nAZb0b0H63SSGD+8wxJdbbc6nf8USdl/DnB/GkPKHAMN2HipUlPnZgs3rZxFGI3b60/f+NpF20Xp+f0hsFn5G9NjtWb4qWbPFUMzPb3Yk=
Content-ID: <17BB69DB38AF7C4FA55AEAE05410EF68@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dbf6d76f-efbe-4260-e688-08d6ef534b80
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jun 2019 16:30:35.0095 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Szabolcs.Nagy@arm.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR08MB4799
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_093039_627092_1E562C71 
X-CRM114-Status: GOOD (  34.33  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.60 listed in list.dnswl.org]
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
> With the relaxed ABI proposed through this document, it is now possible
> to pass tagged pointers to the syscalls, when these pointers are in
> memory ranges obtained by an anonymous (MAP_ANONYMOUS) mmap().
> 
> This change in the ABI requires a mechanism to requires the userspace
> to opt-in to such an option.
> 
> Specify and document the way in which sysctl and prctl() can be used
> in combination to allow the userspace to opt-in this feature.
> 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will.deacon@arm.com>
> CC: Andrey Konovalov <andreyknvl@google.com>
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> ---
>  Documentation/arm64/tagged-address-abi.txt | 111 +++++++++++++++++++++
>  1 file changed, 111 insertions(+)
>  create mode 100644 Documentation/arm64/tagged-address-abi.txt
> 
> diff --git a/Documentation/arm64/tagged-address-abi.txt b/Documentation/arm64/tagged-address-abi.txt
> new file mode 100644
> index 000000000000..96e149e2c55c
> --- /dev/null
> +++ b/Documentation/arm64/tagged-address-abi.txt
> @@ -0,0 +1,111 @@
> +ARM64 TAGGED ADDRESS ABI
> +========================
> +
> +This document describes the usage and semantics of the Tagged Address
> +ABI on arm64.
> +
> +1. Introduction
> +---------------
> +
> +On arm64 the TCR_EL1.TBI0 bit has been always enabled on the arm64 kernel,
> +hence the userspace (EL0) is allowed to set a non-zero value in the top
> +byte but the resulting pointers are not allowed at the user-kernel syscall
> +ABI boundary.
> +
> +This document describes a relaxation of the ABI with which it is possible
> +to pass tagged tagged pointers to the syscalls, when these pointers are in
           ^^^^^^^^^^^^^
typo.

> +memory ranges obtained as described in paragraph 2.
> +
> +Since it is not desirable to relax the ABI to allow tagged user addresses
> +into the kernel indiscriminately, arm64 provides a new sysctl interface
> +(/proc/sys/abi/tagged_addr) that is used to prevent the applications from
> +enabling the relaxed ABI and a new prctl() interface that can be used to
> +enable or disable the relaxed ABI.
> +
> +The sysctl is meant also for testing purposes in order to provide a simple
> +way for the userspace to verify the return error checking of the prctl()
> +command without having to reconfigure the kernel.
> +
> +The ABI properties are inherited by threads of the same application and
> +fork()'ed children but cleared when a new process is spawn (execve()).

OK.

> +
> +2. ARM64 Tagged Address ABI
> +---------------------------
> +
> +From the kernel syscall interface prospective, we define, for the purposes
                                     ^^^^^^^^^^^
perspective

> +of this document, a "valid tagged pointer" as a pointer that either it has
> +a zero value set in the top byte or it has a non-zero value, it is in memory
> +ranges privately owned by a userspace process and it is obtained in one of
> +the following ways:
> +  - mmap() done by the process itself, where either:
> +    * flags = MAP_PRIVATE | MAP_ANONYMOUS
> +    * flags = MAP_PRIVATE and the file descriptor refers to a regular
> +      file or "/dev/zero"

this does not make it clear if MAP_FIXED or other
flags are valid (there are many map flags i don't
know, but at least fixed should work and stack/growsdown.
i'd expect anything that's not incompatible with
private|anon to work).

> +  - a mapping below sbrk(0) done by the process itself

doesn't the mmap rule cover this?

> +  - any memory mapped by the kernel in the process's address space during
> +    creation and following the restrictions presented above (i.e. data, bss,
> +    stack).

OK.

Can a null pointer have a tag?
(in case NULL is valid to pass to a syscall)

> +
> +The ARM64 Tagged Address ABI is an opt-in feature, and an application can
> +control it using the following prctl()s:
> +  - PR_SET_TAGGED_ADDR_CTRL: can be used to enable the Tagged Address ABI.
> +  - PR_GET_TAGGED_ADDR_CTRL: can be used to check the status of the Tagged
> +                             Address ABI.
> +
> +As a consequence of invoking PR_SET_TAGGED_ADDR_CTRL prctl() by an applications,
> +the ABI guarantees the following behaviours:
> +
> +  - Every current or newly introduced syscall can accept any valid tagged
> +    pointers.
> +
> +  - If a non valid tagged pointer is passed to a syscall then the behaviour
> +    is undefined.
> +
> +  - Every valid tagged pointer is expected to work as an untagged one.
> +
> +  - The kernel preserves any valid tagged pointers and returns them to the
> +    userspace unchanged in all the cases except the ones documented in the
> +    "Preserving tags" paragraph of tagged-pointers.txt.

OK.

i guess pointers of another process are not "valid tagged
pointers" for the current one, so e.g. in ptrace the
ptracer has to clear the tags before PEEK etc.

> +
> +A definition of the meaning of tagged pointers on arm64 can be found in:
> +Documentation/arm64/tagged-pointers.txt.
> +
> +3. ARM64 Tagged Address ABI Exceptions
> +--------------------------------------
> +
> +The behaviours described in paragraph 2, with particular reference to the
> +acceptance by the syscalls of any valid tagged pointer are not applicable
> +to the following cases:
> +  - mmap() addr parameter.
> +  - mremap() new_address parameter.
> +  - prctl_set_mm() struct prctl_map fields.
> +  - prctl_set_mm_map() struct prctl_map fields.

i don't understand the exception: does it mean
that passing a tagged address to these syscalls
is undefined?

> +
> +4. Example of correct usage
> +---------------------------
> +
> +void main(void)
> +{
> +	static int tbi_enabled = 0;
> +	unsigned long tag = 0;
> +
> +	char *ptr = mmap(NULL, PAGE_SIZE, PROT_READ | PROT_WRITE,
> +			 MAP_ANONYMOUS, -1, 0);
> +
> +	if (prctl(PR_SET_TAGGED_ADDR_CTRL, PR_TAGGED_ADDR_ENABLE,
> +		  0, 0, 0) == 0)
> +		tbi_enabled = 1;
> +
> +	if (!ptr)
> +		return -1;

mmap returns MAP_FAILED on failure.

> +
> +	if (tbi_enabled)
> +		tag = rand() & 0xff;
> +
> +	ptr = (char *)((unsigned long)ptr | (tag << TAG_SHIFT));
> +
> +	*ptr = 'a';
> +
> +	...
> +}
> +
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
