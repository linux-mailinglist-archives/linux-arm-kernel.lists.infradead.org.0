Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 686871EB27B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 02:03:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HXAsTnHzYEl/ZiAmUppgu5GQQBZLb3mJpC3br5twiJM=; b=ajlExaDiq1we6k
	YpWXmoJgqQ0KlIwED6Q0tYDapbUuz4t44Q7morIkp40nUgzzUnZlLO4cXHtWe4Ax3HsCOqn7vO+wB
	Y5Bp5PTEqB4A2jmOc1Z2yM7nemab77WqdUCwm0JtK/qabUJIZ+UR3VuRgjfOWgferic7a/kdTbFKQ
	qtT8TSMnztUpMKizOGpKrmfKppthPYsi0UZ5QqyC5CvKJGg5JUBvbnDW0oAjqrYNdPijf9YhLGPcd
	V5gWR48XS7Cr2kDsWrO/f99eg+raO3LQHkZZ4ry7EVY6DXm2Pbe90Jgq37T5jj3I3skPJl21ZGY56
	Ehih0W0HrNk2igxb1V1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfuOb-00017v-Vj; Tue, 02 Jun 2020 00:03:09 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfuOT-00015x-VZ
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 00:03:03 +0000
IronPort-SDR: 6kNnJmkXGeu5rULjBgzewg/jGXJHIuL5sGnGoXvEdtc0sxkr2KT/8/HCFxOn/4Ve7W5yQJVTGe
 17qqoyAP6Q7w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2020 17:03:01 -0700
IronPort-SDR: kMJ8HfHiybXRw+wB603vAZFzSUhgTJcrY7SX6r1wHG+aFebvM4sjQkk82vUW4LwBY72Ro0oLxZ
 MTD8TyT0VDdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,462,1583222400"; d="scan'208";a="415977918"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by orsmga004.jf.intel.com with ESMTP; 01 Jun 2020 17:03:00 -0700
Received: from fmsmsx113.amr.corp.intel.com (10.18.116.7) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 1 Jun 2020 17:02:59 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 FMSMSX113.amr.corp.intel.com (10.18.116.7) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 1 Jun 2020 17:02:59 -0700
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (104.47.44.55) by
 edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Mon, 1 Jun 2020 17:02:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MB8aWAMKnr4I8/noP790VGAEX4brFXSrwm4NtSJlbjv5Nk1tSEn3eBuDvEJMWvyyhAEdu48gKU41IR0x74U/S6zxOvNVYTWE2rvuX2AkpcHZNbP62OeauNus7t0o4eBz7gF7DMyhE8bijQhBC5Sk0rG0nD+hIq6jTiTGfTWtkPsyHule154/8kn9o095L4v6tyswzZYTsHRHX/WtcrZHexDGTjGl4MDr4KQsGTbqgovQ5ZhtD9COmcuyE725Je/UMln8IOvJKo5h3BNkWfPBcgWd8qShbYTwKTnTEn6lzTR4K1DUpjxNNm7Mhp+UqU/losNajZNnvrEZv4cZeMEAYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=i5vRugMpDMTGoy0NIlVHMgLtH2AWqcBSeCZbHE7LgiU=;
 b=hooL0OoLiuSVDo5bbIdzE9Yg2ivs8N15JEC4QBRN4UFqwJ0tpnTUGq8SUm1lEkS33FAIAlq399X3fmtTuIfxPb9xekndEV89ZLKM15A5Xn0ewMaUU2GXj8004Q0lZB4pgvHaYeFkBMPf9RxcxmmTGCzCCciLENe+z72xe6kCLiYkOrjRYEBmeDZT+uSNSBL0bj4LQ48oaQknHy+qhfdN1Je1ci2zEn3Z2IZ0xG1j7AhD7GKORbPhocYW7Glvq+GwJrNNbL1avyj4beV/PD11Wg0WG7LxVo/iZrpgcWRWlKyQQO6TWe9ZXVgIGaqsdrGZHRkmA4p8yCf5uIZxkMRDPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=i5vRugMpDMTGoy0NIlVHMgLtH2AWqcBSeCZbHE7LgiU=;
 b=PbqBSY5rG+7DDdvn45ftP/M2ywSm7ql6pczj4+c2cjlAwFKMvERPYkE1Plyda6RT8cXh3Qdib3jgR3ExT/R/k/gRAG8rcoZeqIQhn7CtKBVe4ylOvY3CjZHez/3ci51Sbj/iPr9VgCj2pmmLXnfd2UHxfKEyID29Ux27fODCd0w=
Received: from BYAPR11MB3096.namprd11.prod.outlook.com (2603:10b6:a03:8f::14)
 by BYAPR11MB3381.namprd11.prod.outlook.com (2603:10b6:a03:79::33)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.21; Tue, 2 Jun
 2020 00:02:57 +0000
Received: from BYAPR11MB3096.namprd11.prod.outlook.com
 ([fe80::ad0c:c6a9:6f39:eb92]) by BYAPR11MB3096.namprd11.prod.outlook.com
 ([fe80::ad0c:c6a9:6f39:eb92%5]) with mapi id 15.20.3045.022; Tue, 2 Jun 2020
 00:02:57 +0000
From: "Kaneda, Erik" <erik.kaneda@intel.com>
To: Nick Desaulniers <ndesaulniers@google.com>, "Moore, Robert"
 <robert.moore@intel.com>, "Wysocki, Rafael J" <rafael.j.wysocki@intel.com>,
 Len Brown <lenb@kernel.org>
Subject: RE: [PATCH] ACPICA: fix UBSAN warning using __builtin_offsetof
Thread-Topic: [PATCH] ACPICA: fix UBSAN warning using __builtin_offsetof
Thread-Index: AQHWOGr94BDOASQdIU6ZpTv243EHY6jEbrjQ
Date: Tue, 2 Jun 2020 00:02:57 +0000
Message-ID: <BYAPR11MB30969737340044437013BF44F08B0@BYAPR11MB3096.namprd11.prod.outlook.com>
References: <CAMj1kXErFuvOoG=DB6sz5HBvDuHDiKwWD8uOyLuxaX-u8-+dbA@mail.gmail.com>
 <20200601231805.207441-1-ndesaulniers@google.com>
In-Reply-To: <20200601231805.207441-1-ndesaulniers@google.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: google.com; dkim=none (message not signed)
 header.d=none;google.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.198]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3fba82de-efd4-4a16-9294-08d806884e6c
x-ms-traffictypediagnostic: BYAPR11MB3381:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB33813357708918C5A06FB5B5F08B0@BYAPR11MB3381.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0422860ED4
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: uO1EJd5Um2XyhnWCxxMWYR37XskB0N0MrnZZpB+XfkpXzqzt1z252hSbEGzo8HE20agxf9Hw9j0uWdHe7U+Y7JC8+k/HiYJOofDenYe4Pb9H70iiZRk0832jxU7e9kQ7oppFPrLhbDHy08LEgMdYJOIUL++MxTHaSKKeS3wHiiSH2pAKS1M3AAuRhk7ZrskTSZC9xq2QGwLAdwRDWlpgCriH/5yRytXHv6UYhGcHyEOtjAtAIZ1hnJPbF0GQFiQWBlbJYFnvJGhnMLEgMvj7DQ9c3SF3cPO5YpdJFu/jL+PCzr7UsC0em4ZVLVeg49GVjTCMPfPo+oKZoMrt0OlbwFBQm7ArBRsrtHeUpv/2dSyHuEB+ILwIS7/AWLwuQKlbByooXB94qAr/1kREqsUXsQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3096.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(396003)(346002)(136003)(366004)(39860400002)(376002)(186003)(54906003)(52536014)(86362001)(110136005)(966005)(478600001)(7696005)(2906002)(55016002)(33656002)(26005)(7416002)(5660300002)(83380400001)(8676002)(66556008)(4326008)(8936002)(71200400001)(6506007)(66946007)(76116006)(64756008)(53546011)(66446008)(9686003)(66476007)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 2JA2M9A7W0OAj0VlJ0VilGJOddfjq1MZThC/8CNQgYw0jKnxOohSHQ3XeW6YPD3dQf0Lj0KSKPbJ5p4VakhfxhXhepR34b55eHUWeeDpNgyCtnJHd2xFbIVaruE6/PKFoNYykQhz0MDdarW5NJmIHzruokH/A9b3UcmUV0kto/hfwNk4b769sz5B9Z8A1ntybfrZ55Jjww9rAzZXqie43mP8/je7HTrm5uqQ0HLOnu70tYDvRO0LhSLuG4kff2v8cNap7LL8PzTrmcYWR8++fkKUnlGi+kwuu9O9USEMliYXD0CG9//Jg8aHOwaagFT0rghs+PZHW2BZmugUfN7QeLU1ubruuf0pCS1FWv4o+BJdMr2/1Cj1/ATOzYCckR3g0badf/cjsfMD3vMUqr3jlS3JfPub5vFb5y+eLdqDwPhhsPpI6OIxeTQfAhky++DsUv3vrNvAMOxI+J0uAuZ8Pt0KgiRqIHk8tlyY9JUE99LqfL2d/vAs0PF2yeYsWx0v
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 3fba82de-efd4-4a16-9294-08d806884e6c
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jun 2020 00:02:57.1903 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JVfgzrLtx248ry6ls/AgwEY0LOY8SNLRxXSW6EuGVJKpxNrLqPn8fugYt6lkMeu4mt6XABWtU0vM7BtiN7UXkA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3381
X-OriginatorOrg: intel.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_170302_086710_89D43F52 
X-CRM114-Status: GOOD (  18.77  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 "will@kernel.org" <will@kernel.org>, "rjw@rjwysocki.net" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 "glider@google.com" <glider@google.com>,
 "dvyukov@google.com" <dvyukov@google.com>,
 "guohanjun@huawei.com" <guohanjun@huawei.com>,
 "pcc@google.com" <pcc@google.com>, Ard Biesheuvel <ardb@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "devel@acpica.org" <devel@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Nick Desaulniers <ndesaulniers@google.com>
> Sent: Monday, June 1, 2020 4:18 PM
> To: Moore, Robert <robert.moore@intel.com>; Kaneda, Erik
> <erik.kaneda@intel.com>; Wysocki, Rafael J <rafael.j.wysocki@intel.com>;
> Len Brown <lenb@kernel.org>
> Cc: Ard Biesheuvel <ardb@kernel.org>; dvyukov@google.com;
> glider@google.com; guohanjun@huawei.com; linux-arm-
> kernel@lists.infradead.org; linux-kernel@vger.kernel.org;
> lorenzo.pieralisi@arm.com; mark.rutland@arm.com;
> ndesaulniers@google.com; pcc@google.com; rjw@rjwysocki.net;
> will@kernel.org; stable@vger.kernel.org; linux-acpi@vger.kernel.org;
> devel@acpica.org
> Subject: [PATCH] ACPICA: fix UBSAN warning using __builtin_offsetof
>
Hi,
 
> Will reported UBSAN warnings:
> UBSAN: null-ptr-deref in drivers/acpi/acpica/tbfadt.c:459:37
> UBSAN: null-ptr-deref in arch/arm64/kernel/smp.c:596:6
> 
> Looks like the emulated offsetof macro ACPI_OFFSET is causing these. We
> can avoid this by using the compiler builtin, __builtin_offsetof.

I'll take a look at this tomorrow
> 
> The non-kernel runtime of UBSAN would print:
> runtime error: member access within null pointer of type for this macro.

actypes.h is owned by ACPICA so we typically do not allow compiler-specific
extensions because the code is intended to be compiled using the C99 standard
without compiler extensions. We could allow this sort of thing in a Linux-specific
header file like include/acpi/platform/aclinux.h but I'll take a look at the error as well..

Erik
> 
> Link: https://lore.kernel.org/lkml/20200521100952.GA5360@willie-the-truck/
> Cc: stable@vger.kernel.org
> Reported-by: Will Deacon <will@kernel.org>
> Suggested-by: Ard Biesheuvel <ardb@kernel.org>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  include/acpi/actypes.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/include/acpi/actypes.h b/include/acpi/actypes.h index
> 4defed58ea33..04359c70b198 100644
> --- a/include/acpi/actypes.h
> +++ b/include/acpi/actypes.h
> @@ -508,7 +508,7 @@ typedef u64 acpi_integer;
> 
>  #define ACPI_TO_POINTER(i)              ACPI_CAST_PTR (void, (acpi_size) (i))
>  #define ACPI_TO_INTEGER(p)              ACPI_PTR_DIFF (p, (void *) 0)
> -#define ACPI_OFFSET(d, f)               ACPI_PTR_DIFF (&(((d *) 0)->f), (void *)
> 0)
> +#define ACPI_OFFSET(d, f)               __builtin_offsetof(d, f)
>  #define ACPI_PHYSADDR_TO_PTR(i)         ACPI_TO_POINTER(i)
>  #define ACPI_PTR_TO_PHYSADDR(i)         ACPI_TO_INTEGER(i)
> 
> --
> 2.27.0.rc2.251.g90737beb825-goog

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
