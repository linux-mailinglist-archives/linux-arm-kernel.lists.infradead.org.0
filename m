Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE9FB130CA
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 16:57:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bn1wSyOxhfKgJX68Cj51BNAYNFVQnj6lDeXr5BnJQHs=; b=ZOgeS6xxF9Hw8y
	iLWsz/u3vPg4rnpwdsMb6t+no+9qWhAUtHPo23ysitamMYJ4XFZXWmg/CGhwEV0HsP3IsUVIKBSKi
	pQnHsuMbPSNrmuDNr5yihgZ8z+zoxaRZhAbfiCrxeg5EfpC6lW39X2H9AttdxOP/EHOCoJkezKKT5
	J2yGAclNu/6j4FB80URfQpVMuhd2mZYgDJ8U78yVEYGGBQU11gwuLJ0bnBopqd51CVyRRpfcNjPt/
	uW2zJhgnt6X9cZNuYC1OuDTVKGHOCdPcvruGHOWL+KU1PmylaV8C3WMjJr81o/MSm3rz7Q82ui8Zw
	/Gz/+759qBi9vy74Pw7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMZd9-0006Dd-6q; Fri, 03 May 2019 14:57:43 +0000
Received: from mail-eopbgr50040.outbound.protection.outlook.com ([40.107.5.40]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMZd1-0006D3-1n
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 14:57:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector1-arm-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ziwY1jlZDSIqgSGYxJeLQfU+2EP2V8+rAWpRkBQ4WwI=;
 b=kp93iJi5S0Cw1OxC7GntSV8TXYzcEuxARF7HZpp1z5AGNknfM7WEhWafanp7BICLSbONGlBxhrhn+YOlHTJlUwv7oMRRl5OuaxWO4GDu59ade3C4elLVXTS4UrW8F8N+yI7KHX9qGfqnuToke9ipi7ufpLEfGNB2lfkhYxQDfik=
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com (20.179.12.12) by
 DB8PR08MB4010.eurprd08.prod.outlook.com (20.179.10.207) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.12; Fri, 3 May 2019 14:57:27 +0000
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::15cc:26e:2c0a:1eca]) by DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::15cc:26e:2c0a:1eca%4]) with mapi id 15.20.1856.012; Fri, 3 May 2019
 14:57:27 +0000
From: Steve Capper <Steve.Capper@arm.com>
To: Bhupesh Sharma <bhsharma@redhat.com>
Subject: Re: [PATCH 0/9] 52-bit kernel + user VAs
Thread-Topic: [PATCH 0/9] 52-bit kernel + user VAs
Thread-Index: AQHUx6w1oMh6myss70WSkOxz9gCxzKYqWc8AgC+X1wA=
Date: Fri, 3 May 2019 14:57:27 +0000
Message-ID: <20190503145716.GA21265@capper-debian.cambridge.arm.com>
References: <20190218170245.14915-1-steve.capper@arm.com>
 <0b20407f-71ab-165b-2fce-ae8c43fc3316@redhat.com>
In-Reply-To: <0b20407f-71ab-165b-2fce-ae8c43fc3316@redhat.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mutt/1.10.1 (2018-07-13)
x-originating-ip: [217.140.96.140]
x-clientproxiedby: DM5PR18CA0061.namprd18.prod.outlook.com
 (2603:10b6:3:22::23) To DB8PR08MB4105.eurprd08.prod.outlook.com
 (2603:10a6:10:b0::12)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Steve.Capper@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8506be3c-7932-408d-b6d8-08d6cfd7a889
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB8PR08MB4010; 
x-ms-traffictypediagnostic: DB8PR08MB4010:
x-ms-exchange-purlcount: 2
nodisclaimer: True
x-microsoft-antispam-prvs: <DB8PR08MB4010A6584392C321BC3AF41D81350@DB8PR08MB4010.eurprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 0026334A56
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(396003)(366004)(39860400002)(136003)(189003)(51914003)(199004)(6512007)(6306002)(66066001)(6246003)(5660300002)(256004)(68736007)(3846002)(53936002)(6116002)(25786009)(7736002)(33656002)(14444005)(4326008)(2906002)(305945005)(508600001)(1076003)(8676002)(71190400001)(386003)(6506007)(53546011)(64756008)(66446008)(66476007)(66556008)(6916009)(316002)(14454004)(476003)(44832011)(486006)(99286004)(71200400001)(81166006)(229853002)(8936002)(73956011)(66946007)(102836004)(6486002)(26005)(76176011)(52116002)(6436002)(446003)(11346002)(72206003)(81156014)(966005)(186003)(54906003)(58126008)(86362001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR08MB4010;
 H:DB8PR08MB4105.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 59SRFov2N2duGuV0voyNZu4d97CxwdKCoyP21+QJ2Sw+VxMIeu2FUcMRz1gIZqcq0XhjRBoRkBgwhroRKT1jdrtKEgJHb6Ium8rdIRwSp6GAlWV+6LQ5eR3X7Cd1z98zK6WWH9X3kFJQKLOB0WKVWyDDyksdtmBdRRwJhhyKMo6hq1t6u3N+4qfwpsBILCom5tE+TClT4pcm+wNybLW6cL/l/kR/GuKTdKaFY4m5dX/gVh1xA74OQDizJJcMkUmKaQLqiL1+z/bt3mwEIq6tDmPZA6ImuYQDdYWN6ZBbyQ8D5LCKagBVqarmQfhSsBK0LsW/6LFcu8f3KQPhGhV82F6LT5vdu5hf0I57gT+JCrKe8qmNDYCKQN0UG8Z84i+FOdmYklVKgkwXdTSiSSLEobuS/f7urpBuA/Ho46DfV5Q=
Content-ID: <0A627826B6E73346B12B56582BAAD8F3@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8506be3c-7932-408d-b6d8-08d6cfd7a889
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 May 2019 14:57:27.6592 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB4010
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_075735_146999_43D681D9 
X-CRM114-Status: GOOD (  22.16  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.40 listed in list.dnswl.org]
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
Cc: nd <nd@arm.com>, "crecklin@redhat.com" <crecklin@redhat.com>,
 "ard.biesheuvel@linaro.org" <ard.biesheuvel@linaro.org>,
 Marc Zyngier <Marc.Zyngier@arm.com>, Catalin Marinas <Catalin.Marinas@arm.com>,
 Suzuki Poulose <Suzuki.Poulose@arm.com>, Will Deacon <Will.Deacon@arm.com>,
 Dave Anderson <anderson@redhat.com>, James Morse <James.Morse@arm.com>,
 Bhupesh SHARMA <bhupesh.linux@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 03, 2019 at 01:39:36PM +0530, Bhupesh Sharma wrote:
> Hi Steve,
> 
> On 02/18/2019 10:32 PM, Steve Capper wrote:
> > This patch series adds support for 52-bit kernel VAs using some of the
> > machinery already introduced by the 52-bit userspace VA code in 5.0.
> > 
> > As 52-bit virtual address support is an optional hardware feature,
> > software support for 52-bit kernel VAs needs to be deduced at early boot
> > time. If HW support is not available, the kernel falls back to 48-bit.
> > 
> > A significant proportion of this series focuses on "de-constifying"
> > VA_BITS related constants.
> > 
> > In order to allow for a KASAN shadow that changes size at boot time, one
> > must fix the KASAN_SHADOW_END for both 48 & 52-bit VAs and "grow" the
> > start address. Also, it is highly desirable to maintain the same
> > function addresses in the kernel .text between VA sizes. Both of these
> > requirements necessitate us to flip the kernel address space halves s.t.
> > the direct linear map occupies the lower addresses.
> > 
> > One obvious omission is 52-bit kernel VA + 48-bit userspace VA which I
> > can add with some more #ifdef'ery if needed.
> 
> Thanks for the patchset.
> 
> I did some work on the user-space side to see how user-space tools like
> makedumpfile and kexec-tools are affected by these changes. I see that Dave
> Anderson (in Cc) also did some work on crash-utility side [0] to have the
> basic framework in place to have the user-space tools work with the inverted
> memory map.
> 
> I have a couple of concerns regarding:
> 
> 1. VA_BITS_ACTUAL, and how user-space gets to know its value.
> 
> 2. Overall bits that we need to be aware in user-space now to address the
> following combinations of address space (phew ..):
> 
> a) 48-bit Kernel VA + 48-bit User-space VA + 48-bit PA
> b) 48-bit Kernel VA + 48-bit User-space VA + 52-bit PA
> c) 48-bit Kernel VA + 52-bit User-space VA + 52-bit PA
> d) 52-bit Kernel VA + 52-bit User-space VA + 52-bit PA
> e) 52-bit Kernel VA + 48-bit User-space VA + 52-bit PA (is this even
> used-somewhere? Not sure but James [in Cc] had some queries on this [1].
> Personally, I am not aware of any users of this combination).
> 
> I have added detailed comments/concerns in individual patches in mails to
> follow regarding the above points.
> 
> [0]. https://github.com/crash-utility/crash/commit/b0b3ef2eda543413762b32710b8a63dd9ed55de5
> [1]. http://lists.infradead.org/pipermail/kexec/2019-April/022729.html
> 
>

Thanks Bhupesh, Ard,
As an update to this series, I have got the constant PAGE_OFFSET working
(basically got back to it after a while away and also caught a silly typo
that I made) and am tidying things up. And figuring out whether or not I
can just keep the vmemmap in the same place and just expand it.

I don't think we'll see a 52-bit kernel VA and 48-bit user VA unless
anyone wants it?

Cheers,
-- 
Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
