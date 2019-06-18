Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E597D49EE4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 13:03:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ewXbs3u/MDgMJNdHy0zCkClrBHVFrnlvZgu0keo0BWU=; b=KG0RRIQy592rDh
	EYYYZScDMH5i3WFnIFU+MzkrTJ5ug4lsT4ru7FX6L11aaGpou9Xa2pAy9WzDvoDHubIHWux9xmZpj
	VEW+8B2x0zbZFg1jVxCa8syKoB2EcABxNRJhg2UJOem+XCDRr7pdGWzz2OzAx/SelzdRz2oJOmd4O
	nTd6puLCuzLouA51I3gRZnBA1+OrUjmrrvZW1VN1o2KQr2AbReNC9V7kwaz5KLUdzLT6dRD4k5eJx
	ZCDml/vx2Wr6+movHVEm9jS0QAzrHDMyV2tqkOYf/dRk41nnhaz09eUYNVpEVGaQlb2y+IsNpmwHx
	tQJ6SZjAiVRiUWMoocbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdBtW-0008Ps-Gj; Tue, 18 Jun 2019 11:03:18 +0000
Received: from mail-eopbgr140083.outbound.protection.outlook.com
 ([40.107.14.83] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdBt6-0008H4-Gc
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 11:02:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IW/hBqkNFFXTJDBiCVNfBU3Jrfa8uXWKit8npAvY+5E=;
 b=U8UNpGAJONO3/qtwOdS5pYGNsqrf7tNShycQMjhQMuZHakwu/XRjx0iEuDR6bulx5jMErrQaaYbSFw/GGT30xCPaf06Bpu/jkJK2ggJX0ZnLOgnCvQnjOsiAna1USeE2x/0pPdc085XXBuJD1HaRI1wcgLcrFyj7dKzO1Cj9nfI=
Received: from AM5PR0801MB1763.eurprd08.prod.outlook.com (10.169.247.17) by
 AM5PR0801MB1921.eurprd08.prod.outlook.com (10.168.154.142) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.10; Tue, 18 Jun 2019 11:02:48 +0000
Received: from AM5PR0801MB1763.eurprd08.prod.outlook.com
 ([fe80::9987:96a6:6dd9:f4a2]) by AM5PR0801MB1763.eurprd08.prod.outlook.com
 ([fe80::9987:96a6:6dd9:f4a2%4]) with mapi id 15.20.1987.014; Tue, 18 Jun 2019
 11:02:48 +0000
From: Szabolcs Nagy <Szabolcs.Nagy@arm.com>
To: Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-doc@vger.kernel.org"
 <linux-doc@vger.kernel.org>, "linux-mm@kvack.org" <linux-mm@kvack.org>,
 "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v5 1/2] arm64: Define
 Documentation/arm64/tagged-address-abi.txt
Thread-Topic: [PATCH v5 1/2] arm64: Define
 Documentation/arm64/tagged-address-abi.txt
Thread-Index: AQHVIgFS0u0DCr9uG0KMva1a4RDbs6ahRrUA
Date: Tue, 18 Jun 2019 11:02:48 +0000
Message-ID: <397f0460-9ecf-f8f9-a8ea-42959be580ae@arm.com>
References: <cover.1560339705.git.andreyknvl@google.com>
 <20190613155137.47675-1-vincenzo.frascino@arm.com>
 <20190613155137.47675-2-vincenzo.frascino@arm.com>
In-Reply-To: <20190613155137.47675-2-vincenzo.frascino@arm.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
x-originating-ip: [217.140.106.49]
x-clientproxiedby: LO2P265CA0333.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a4::33) To AM5PR0801MB1763.eurprd08.prod.outlook.com
 (2603:10a6:203:3b::17)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Szabolcs.Nagy@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d27c8fd1-1fbf-44f1-b7fa-08d6f3dc7fa8
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:AM5PR0801MB1921; 
x-ms-traffictypediagnostic: AM5PR0801MB1921:
nodisclaimer: True
x-microsoft-antispam-prvs: <AM5PR0801MB1921F1F814B4B375FFBE950EEDEA0@AM5PR0801MB1921.eurprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 007271867D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(366004)(376002)(346002)(136003)(39860400002)(189003)(199004)(71200400001)(25786009)(53546011)(81166006)(66066001)(14454004)(31696002)(6506007)(478600001)(65806001)(81156014)(65956001)(66476007)(2616005)(66556008)(386003)(66446008)(66946007)(73956011)(6512007)(8936002)(44832011)(476003)(36756003)(486006)(446003)(6116002)(2501003)(110136005)(186003)(102836004)(68736007)(65826007)(58126008)(72206003)(64756008)(86362001)(5660300002)(8676002)(6486002)(76176011)(2201001)(3846002)(6246003)(11346002)(64126003)(53936002)(7736002)(229853002)(6436002)(316002)(31686004)(256004)(52116002)(305945005)(4326008)(2906002)(14444005)(99286004)(26005)(54906003)(71190400001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM5PR0801MB1921;
 H:AM5PR0801MB1763.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: mHLRPAHRCg++ux05SV7CY/o/UJTVt74r8g9OxgVMRAi6GM/+kLXS+kU47HmLfpUHnjSKrOx4YIEq8FzrIoq8eet+qBj0K+gJWkSujOoM62cV5/eenatmfSHTbIRWWfMYGnjqvTXKuYfeLeuI1Y4p8+XzBB3jBTFsYYHHy1qv5CgR7zggJUEMiJybLJG1rtWjOw26yilNUcVoUsrSdutmBnB4eSmaLhG1eOEpcPhyFFvJxNOdvofRMcJud6T/9LJpdhvRdHwtkcjBhiV83kUvl4erpsA6doo2GLolKVpF1CMvezrfcXocZTeSBm5Ip9ekxjFS81cPyqOUE+oSmK5fuEmkxtTPvP0EXZQw7LrgwWXRqN3vVYygKYIT5xzJ2WsWkQjnK1vmzfHtGafZq5p6Lz1Vrm0WkzzKptJYzyR4mRk=
Content-ID: <003D0C41A93AA241BE8BCFC79F9E2FB8@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d27c8fd1-1fbf-44f1-b7fa-08d6f3dc7fa8
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jun 2019 11:02:48.5146 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Szabolcs.Nagy@arm.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR0801MB1921
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_040252_784254_FC8F89F1 
X-CRM114-Status: GOOD (  36.88  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.83 listed in list.dnswl.org]
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

On 13/06/2019 16:51, Vincenzo Frascino wrote:
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

Acked-by: Szabolcs Nagy <szabolcs.nagy@arm.com>

> ---
>  Documentation/arm64/tagged-address-abi.txt | 134 +++++++++++++++++++++
>  1 file changed, 134 insertions(+)
>  create mode 100644 Documentation/arm64/tagged-address-abi.txt
> 
> diff --git a/Documentation/arm64/tagged-address-abi.txt b/Documentation/arm64/tagged-address-abi.txt
> new file mode 100644
> index 000000000000..0ae900d4bb2d
> --- /dev/null
> +++ b/Documentation/arm64/tagged-address-abi.txt
> @@ -0,0 +1,134 @@
> +ARM64 TAGGED ADDRESS ABI
> +========================
> +
> +This document describes the usage and semantics of the Tagged Address
> +ABI on arm64.
> +
> +1. Introduction
> +---------------
> +
> +On arm64 the TCR_EL1.TBI0 bit has been always enabled on the kernel, hence
> +the userspace (EL0) is entitled to perform a user memory access through a
> +64-bit pointer with a non-zero top byte but the resulting pointers are not
> +allowed at the user-kernel syscall ABI boundary.
> +
> +This document describes a relaxation of the ABI that makes it possible to
> +to pass tagged pointers to the syscalls, when these pointers are in memory
> +ranges obtained as described in section 2.
> +
> +Since it is not desirable to relax the ABI to allow tagged user addresses
> +into the kernel indiscriminately, arm64 provides a new sysctl interface
> +(/proc/sys/abi/tagged_addr) that is used to prevent the applications from
> +enabling the relaxed ABI and a new prctl() interface that can be used to
> +enable or disable the relaxed ABI.
> +A detailed description of the newly introduced mechanisms will be provided
> +in section 2.
> +
> +2. ARM64 Tagged Address ABI
> +---------------------------
> +
> +From the kernel syscall interface perspective, we define, for the purposes
> +of this document, a "valid tagged pointer" as a pointer that either has a
> +zero value set in the top byte or has a non-zero value, it is in memory
> +ranges privately owned by a userspace process and it is obtained in one of
> +the following ways:
> +  - mmap() done by the process itself, where either:
> +    * flags have MAP_PRIVATE and MAP_ANONYMOUS
> +    * flags have MAP_PRIVATE and the file descriptor refers to a regular
> +      file or "/dev/zero"
> +  - brk() system call done by the process itself (i.e. the heap area between
> +    the initial location of the program break at process creation and its
> +    current location).
> +  - any memory mapped by the kernel in the process's address space during
> +    creation and following the restrictions presented above (i.e. data, bss,
> +    stack).
> +
> +The ARM64 Tagged Address ABI is an opt-in feature, and an application can
> +control it using the following:
> + - /proc/sys/abi/tagged_addr: a new sysctl interface that can be used to
> +        prevent the applications from enabling the relaxed ABI.
> +        The sysctl is meant also for testing purposes in order to provide a
> +        simple way for the userspace to verify the return error checking of
> +        the prctl() commands without having to reconfigure the kernel.
> +        The sysctl supports the following configuration options:
> +         - 0: Disable ARM64 Tagged Address ABI for all the applications.
> +         - 1 (Default): Enable ARM64 Tagged Address ABI for all the
> +                        applications.
> +        If the ARM64 Tagged Address ABI is disabled at a certain point in
> +        time, all the applications that were using tagging before this event
> +        occurs, will continue to use tagging.
> +
> + - prctl()s:
> +  - PR_SET_TAGGED_ADDR_CTRL: can be used to enable or disable the Tagged
> +        Address ABI.
> +        The (unsigned int) arg2 argument is a bit mask describing the
> +        control mode used:
> +          - PR_TAGGED_ADDR_ENABLE: Enable ARM64 Tagged Address ABI.
> +        The arguments arg3, arg4, and arg5 are ignored.
> +
> +  - PR_GET_TAGGED_ADDR_CTRL: can be used to check the status of the Tagged
> +        Address ABI.
> +        The arguments arg2, arg3, arg4, and arg5 are ignored.
> +
> +The ABI properties set by the mechanisms described above are inherited by threads
> +of the same application and fork()'ed children but cleared by execve().
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
> +    userspace unchanged (i.e. on syscall return) in all the cases except the
> +    ones documented in the "Preserving tags" section of tagged-pointers.txt.
> +
> +A definition of the meaning of tagged pointers on arm64 can be found in:
> +Documentation/arm64/tagged-pointers.txt.
> +
> +3. ARM64 Tagged Address ABI Exceptions
> +--------------------------------------
> +
> +The behaviours described in section 2, with particular reference to the
> +acceptance by the syscalls of any valid tagged pointer are not applicable
> +to the following cases:
> +  - mmap() addr parameter.
> +  - mremap() new_address parameter.
> +  - prctl_set_mm() struct prctl_map fields.
> +  - prctl_set_mm_map() struct prctl_map fields.
> +
> +Any attempt to use non-zero tagged pointers will lead to undefined behaviour.
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
> +	if (ptr == (void *)-1) /* MAP_FAILED */
> +		return -1;
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
