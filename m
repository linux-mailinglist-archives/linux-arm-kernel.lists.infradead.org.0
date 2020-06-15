Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCBDD1F9B3C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 17:00:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uwzVmNjdP9KA6VUJYPkZ7YcNVkGAasClfDtWrayhxjY=; b=qj12iiaSrQ5Un7
	ie8OsNIaTSX9LWt6GEcm4AAHT8YX8cOuwVaQWiSTez0JkgliP9GgKUwYCdfd0g6uCCsQ3IhsxYvJu
	SqMU6VlixjHSoKVZGbzkV0zOe3UtADSsA0hDcscOhFL7XNypl4GiaHDQk/ZGAl/Lh0K4GLIYOMlHL
	9Pi5VNG+non6rKNVz7VcqMEMTV8JcfAHFbXplpQhV1qqYtIBcgMdDink8lZrtYyt2L/jKIbz4f9Yn
	v+YpQEwhxrp1KPXKTE3xfShFw5yAZB7+H3uSDC4bgzIIMp2C+xUPqck+FycENFE1nstFzUnhbcjKE
	agBXYn3V0Sy5dmDyJ7Zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkqbT-0008H5-F2; Mon, 15 Jun 2020 15:00:51 +0000
Received: from mail-he1eur04on0631.outbound.protection.outlook.com
 ([2a01:111:f400:fe0d::631]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkqbJ-0008GK-PD
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 15:00:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=72LskwnUbYB+OVdjsKMSyU4UD5j3+WarH14O09FLoOY=;
 b=ICPIlJNPIq5VmMpN1LmSFZ/SWkzi9vagHdlwL6Sgp0GBcsrCRS+PFURJ+oadmR03WkHCPOHPyqFLwCp+iU8ir3L2Idsej7+n8Xz0el27CEWZ2WPd9Wd5DFH0gtZkjBnKr/HF2BJSovmiub05p3LOF/r2cynhW3MZPRNtcT+1bOM=
Received: from DB7PR05CA0056.eurprd05.prod.outlook.com (2603:10a6:10:2e::33)
 by AM6PR08MB2950.eurprd08.prod.outlook.com (2603:10a6:209:44::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.26; Mon, 15 Jun
 2020 15:00:34 +0000
Received: from DB5EUR03FT024.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:10:2e:cafe::5) by DB7PR05CA0056.outlook.office365.com
 (2603:10a6:10:2e::33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.21 via Frontend
 Transport; Mon, 15 Jun 2020 15:00:33 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT024.mail.protection.outlook.com (10.152.20.67) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3088.18 via Frontend Transport; Mon, 15 Jun 2020 15:00:33 +0000
Received: ("Tessian outbound 39cdd740f5cb:v59");
 Mon, 15 Jun 2020 15:00:33 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 35c3e05e0983c248
X-CR-MTA-TID: 64aa7808
Received: from 42079ba97a4d.2
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 5AE22106-D6E3-4AE9-BE24-07A40F26941F.1; 
 Mon, 15 Jun 2020 15:00:28 +0000
Received: from EUR03-AM5-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 42079ba97a4d.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Mon, 15 Jun 2020 15:00:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dv0HTFySQrDbZkhv9S6in05VtEtyp9awGeLtlCpRKtU3GfWAIJKm547Yi9karTvinOFl7ORziZKSZK/3krsL4ljWzjzYMW+zg/tlLitXuMuy7t8qu4IJpz99v82O0hgVVLehjT8HfRa/NJQ4C2x/p7IqeG34IvckoE1lI8zKHYA8KxOaxsZhZGJCsUsH2S9ShBVN5OJ6F2qxASesMfZIH4egqjwyufFH3wbGnDOPRm+3vaC80nfokNpTzXwsn5E858w7NGAawWztwD4DjFayeaVVsySXZMXIf6ohXGjeO2xyUEMUCQLPahyb/qXHFUfNFP3RXub9OTTTCq2IRKqwig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=72LskwnUbYB+OVdjsKMSyU4UD5j3+WarH14O09FLoOY=;
 b=PCYYDqDv/0PtamVX0FIi3Yg1ue7aAk29nTn1sxgL4Sikbqbrm5J7Lf0N3LLhYrFhpzFCchvW8rACkTlViNiuBIdkdiMnrIncqvePCKCwJuYbhNMBrcqxG7BWXMrGkACMYNzQTPQagBWwhfMv3FlngZL2AYgUAHn6w8+RH0OENtSRmyHQrvTXlxOuiD07BUB0n6z6QM9GsAae5LOVeEY8cX4KT+TykYXw75DlyxeDr2C5llZFbf2QGTqVSLiG8VzOJBtA602DaQM0quvyuw15Al4DyrGitfAX1ehcrY+uRPioPxnnVeIAYZsZ/m1VGVTLQf2qnZOEuXxfYQWTHv9crA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=72LskwnUbYB+OVdjsKMSyU4UD5j3+WarH14O09FLoOY=;
 b=ICPIlJNPIq5VmMpN1LmSFZ/SWkzi9vagHdlwL6Sgp0GBcsrCRS+PFURJ+oadmR03WkHCPOHPyqFLwCp+iU8ir3L2Idsej7+n8Xz0el27CEWZ2WPd9Wd5DFH0gtZkjBnKr/HF2BJSovmiub05p3LOF/r2cynhW3MZPRNtcT+1bOM=
Received: from AM6PR08MB5256.eurprd08.prod.outlook.com (2603:10a6:20b:e7::32)
 by AM6PR08MB3861.eurprd08.prod.outlook.com (2603:10a6:20b:80::30)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.24; Mon, 15 Jun
 2020 15:00:26 +0000
Received: from AM6PR08MB5256.eurprd08.prod.outlook.com
 ([fe80::8520:b5eb:3f43:2859]) by AM6PR08MB5256.eurprd08.prod.outlook.com
 ([fe80::8520:b5eb:3f43:2859%7]) with mapi id 15.20.3088.028; Mon, 15 Jun 2020
 15:00:26 +0000
From: Daniel Kiss <Daniel.Kiss@arm.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Subject: Re: Clang miscompiling arm64 kernel with BTI and PAC?
Thread-Topic: Clang miscompiling arm64 kernel with BTI and PAC?
Thread-Index: AQHWQwvIwUPc6Qlv+0K2LxDL7OeqQKjZk5CAgAApjICAAAgygA==
Date: Mon, 15 Jun 2020 15:00:26 +0000
Message-ID: <2AA789CA-8391-450F-899E-0F372328136A@arm.com>
References: <20200615105524.GA2694@willie-the-truck>
 <20200615115337.GG4447@sirena.org.uk>
 <20200615120223.GC2694@willie-the-truck>
 <20200615143105.GA2283265@ubuntu-n2-xlarge-x86>
In-Reply-To: <20200615143105.GA2283265@ubuntu-n2-xlarge-x86>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3608.80.23.2.2)
Authentication-Results-Original: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=arm.com;
x-originating-ip: [2001:4c4c:1b20:6f00:59bf:6b5:7923:43a0]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 5f054114-23d9-49dc-38d9-08d8113cdabc
x-ms-traffictypediagnostic: AM6PR08MB3861:|AM6PR08MB2950:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <AM6PR08MB2950389BBE84E097CF7EC8EAEC9C0@AM6PR08MB2950.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: true
x-ms-oob-tlc-oobclassifiers: OLM:8882;OLM:8882;
x-forefront-prvs: 04359FAD81
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: jr89kK8NzXIehPfX10V0CGOHl3jFL4VOeDXZaGH14tNJUe/PsZl7GhqnA1hMBnWYtVDRGC2kdzvDqIzdnwTp3tv9FYbs5GULeCYcDEcVtPYG5KblQ2Z/k6beC6VVcl6cvwxijxuv0P+VBl58RCF8c+JdJ1Gc9EzLpSNm65AUu1QlNvYtuSKrXTG0RCKiGdyy99UboJ2ykgs5bhXIeALrdPiQYOe5wB1OWjtlGRm66HJGotxi/TzKFWziyU/v5uTeLbeMrdTNoieyYHtB0v77xswKCH2+Yf2eGYbeZ36P6cagr2HN6DYPxWHJuiiXmcS6B+iIkBJNi3quJb0fU+mFYQQM72OMOakpHuqvsRgXXhrV+ekYhZCkj0NgN0XRjTNeQGBlL0hYOkt/+8Jlyfukzg==
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:AM6PR08MB5256.eurprd08.prod.outlook.com;
 PTR:; CAT:NONE; SFTY:;
 SFS:(4636009)(136003)(39860400002)(366004)(346002)(376002)(396003)(6916009)(36756003)(5660300002)(76116006)(53546011)(71200400001)(66556008)(186003)(91956017)(66476007)(66946007)(86362001)(6486002)(64756008)(66446008)(6506007)(8936002)(6512007)(2906002)(966005)(478600001)(4326008)(8676002)(2616005)(33656002)(83380400001)(316002)(54906003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: MJzAtGHk1rYkFmjGFlU/pkmXpnj+02kc1Ym78vkX+TlsQ1Nkk+x6YZiXyYXcrLmZnFRGEFSvOaE8Z3Bp7vCcBHhHYPZ/Jl/omWdF1XFxuH0QVbnk/9YUeojmCCAm7Ansv95I9srs1QIB6xx/oIqElOCBaFNx5PXhJQ9Mg03YBKhBmj+/l6cOOs3xV4zqmKUUo+Gqf4L9BIOZHY99ly9y0F7syM1xjT2SyypYbn4hgVLXkxkqFmfCrzXpNqQVg9spoHwZ8TklnbQCva6q4HKseWE9eqVlZwf1NaaC8s2xayMVjlsSjM4dts1vhyILDW9mQ2RZmSDf1bIv6FWyffJ19xfqMRS2tUxQD0qcOs9MrZ0ch58BT8q3LBQVSI5yLbmMapf2y3v+6xBVyb3FQ6EBzG0SQkWiCUQqEJtYpExZ1P2J5hNeIY3L2q8mGfuqoJkpeHlX31yUHbK6e52HIcD73k3NwZ63e8IXIqttWo1FaOJ3mLc/TCL9pI/z5v2s0sxOcttVkgXIdtNPSGyR9h735AwW8RlhXEz6Pv5w3/xvJhvghglHcYAS66BrIMZM9UtU
Content-ID: <BB8559931608374D8966EAEF8887F5CE@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB3861
Original-Authentication-Results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT024.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; CTRY:IE; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:64aa7808-outbound-1.mta.getcheckrecipient.com;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; CAT:NONE; SFTY:;
 SFS:(4636009)(39860400002)(346002)(376002)(136003)(396003)(46966005)(2616005)(6862004)(82310400002)(70206006)(478600001)(5660300002)(83380400001)(82740400003)(4326008)(8936002)(2906002)(336012)(26005)(107886003)(54906003)(316002)(6512007)(6486002)(36756003)(6506007)(53546011)(86362001)(186003)(47076004)(33656002)(70586007)(356005)(966005)(81166007)(8676002);
 DIR:OUT; SFP:1101; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: ce59abdd-88f0-4b7a-18be-08d8113cd666
X-Forefront-PRVS: 04359FAD81
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: I0GQZMmu63XvmWEH2MzwUTJPG6pxBPxAL4ssxjGesxm0+aV/wlfxtQvpW3laG/cCKvHxPAXnsEVww0dsc5GuR2bZNC/ptyyyqM6C+yHjs6NYlgBeWCsiw/8f4alrDisXWxkB131E2wuTEuhLOzKmrO2KdT4mUSSGxXo2JOZyNZraz7KNGIPeOu/9zeWWIzNLzeG843FvSloHxkPpLyEqOp6RQ1pAYg8sLK+iOXFL1OEbLA7AT3KABeqSlHFyc3v13uRFY0CzW3lZOZuQNSaO6Q50RDyGg50GjJu+kdhQIQlGRQwhwijRh7W+vRT7hOHM0oZxmwYhoJ4xkaxvaBiwcotI3QHs4BfiiHP3Qjv2CLnmft2gwCBgVLSGIPSnQEL1Xv8IpH1vT6LM8MMX2It0GBn9qy4Ibo5yc63TjuPb9QzjgieOrlmt0L+iYRk0KrNXNuVdOhZBSSy+gCEP9W6KJFZfjw+O530xbySD9mmKMRc=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jun 2020 15:00:33.8343 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f054114-23d9-49dc-38d9-08d8113cdabc
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB2950
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_080041_826598_B857FB66 
X-CRM114-Status: GOOD (  10.61  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0d:0:0:0:631 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
 "tstellar@redhat.com" <tstellar@redhat.com>,
 "android-kvm@google.com" <android-kvm@google.com>,
 Catalin Marinas <Catalin.Marinas@arm.com>,
 "ndesaulniers@google.com" <ndesaulniers@google.com>,
 "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
 Mark Brown <broonie@kernel.org>, Will Deacon <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Sorry, I just saw this mail, I have opened a ticket for it already.
https://bugs.llvm.org/show_bug.cgi?id=46327
I hope it will make it into the 10.0.1. 

Thanks,
Daniel

> On 15 Jun 2020, at 16:31, Nathan Chancellor <natechancellor@gmail.com> wrote:
> 
> [+ Tom, the clang 10 release manager]
> 
> On Mon, Jun 15, 2020 at 01:02:23PM +0100, Will Deacon wrote:
>> On Mon, Jun 15, 2020 at 12:53:37PM +0100, Mark Brown wrote:
>>> On Mon, Jun 15, 2020 at 11:55:24AM +0100, Will Deacon wrote:
>>> 
>>>> Here, the switch statement has been replaced by a jump table which we *tail
>>>> call* into. The register dump shows we're going to 0xffffd68929392e14:
>>> 
>>>> ffff800010032e14:       d503233f        paciasp
>>>> ffff800010032e18:       a9bf7bfd        stp     x29, x30, [sp, #-16]!
>>>> ffff800010032e1c:       910003fd        mov     x29, sp
>>>> ffff800010032e20:       aa0803e0        mov     x0, x8
>>>> ffff800010032e24:       940017c0        bl      ffff800010038d24 <kvm_vm_ioctl_check_extension>
>>>> ffff800010032e28:       93407c00        sxtw    x0, w0
>>>> ffff800010032e2c:       a8c17bfd        ldp     x29, x30, [sp], #16
>>>> ffff800010032e30:       d50323bf        autiasp
>>>> ffff800010032e34:       d65f03c0        ret
>>> 
>>>> The problem is that the paciasp instruction is not BTYPE-compatible with BR;
>>>> it expects to be called with a branch-and-link, and so we panic. I think you
>>>> need to emit a 'bti j' here prior to the paciasp.
>>> 
>>> I checked with our internal teams and they actually ran into this
>>> recently with some other code, the patch:
>>> 
>>>   https://reviews.llvm.org/D81746
>>> 
>>> ([AArch64] Fix BTI instruction emission) should fix this, it's been
>>> reviewed so should be merged shortly.
>> 
>> Cheers, that's good to hear. Shall we have a guess at the clang release
>> that will get the fix, or just disable in-kernel BTI with clang for now?
>> 
>> Will
>> 
> 
> This will be in clang 11 for sure. Tom, would it be too late to get this
> in to clang 10.0.1? If it is not, I can open a PR.
> 
> Cheers,
> Nathan


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
